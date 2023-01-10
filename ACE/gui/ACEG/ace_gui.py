#!../venv/bin/python
import sys
import random
from PySide6 import QtCore, QtWidgets, QtGui
from PySide6.QtGui import QColor
from PySide6.QtWidgets import QTableWidget, QTableWidgetItem, QMainWindow, QMessageBox
from PySide6.QtCore import Qt
import pexpect
from ACEG.dialog.proc_list import ProcessListDialog
import os
from ACEG.engine_comm.engine import AceEngine, FilterType, EngineErrno_str
from ACEG.config.engine_build_path import ABS_BUILT_ENGINE_PATH
from ACEG.main_menu import Ui_MainWindow
from ACEG.dialog.device_android import DeviceAndroidDialog

# check for roots
if os.geteuid() != 0:
    sys.exit("I NEED SUDO, PLEASE ROOT ME")

# check if engine exist
print("finding engine in %s" %(ABS_BUILT_ENGINE_PATH))
if not os.path.isfile(ABS_BUILT_ENGINE_PATH):
    sys.exit("can't find engine")

# run engine
ace_engine = AceEngine("sudo %s" % (ABS_BUILT_ENGINE_PATH))

# check if engine has gui protocol
if not ace_engine.has_gui_protocol():
    sys.exit("enigne doesn't have a gui protocol")



class MainWidget(QtWidgets.QMainWindow):
    NO_ATTACHED_WIN_TITLE = "Not attached to any process"
    MATCH_COUNT_STR_FMT = "matches count: %d showing: %d"
    scan_type_default_val = FilterType.equal
    scan_against_a_val_default_val = True

    def __init__(self, engine: AceEngine):
        super().__init__()
        self.engine = engine
        #
        # setup ui
        self.ui = Ui_MainWindow()
        self.ui.setupUi(self)
        self.setWindowTitle(self.NO_ATTACHED_WIN_TITLE)
        # ============================ process listing =======================
        self.proc_list = ProcessListDialog(self.engine)
        self.device_android = DeviceAndroidDialog()
        # =========================== on attach to process =====================
        self.ui.actionAttach_to_process.triggered.connect(self.on_attach_to_proc)
        # =========================== device menu ==============================
        # ======================= android
        self.ui.actionDeviceAndroid.triggered.connect(self.on_device_android)
        # ======================= linux desktop
        # =========================== against a value checkbox ==================
        self.ui.AgainstAValue_checkBox.stateChanged.connect(
            self.on_AgainstAValue_checkBox
        )
        self.ui.AgainstAValue_checkBox.setChecked(self.scan_against_a_val_default_val)
        # update state according to checkbox  value
        self.on_AgainstAValue_checkBox_changed()
        # ============================= next scan button =========================
        self.ui.NextScan_pushButton.clicked.connect(self.on_NextScan_pushButton)
        # ============================= reset scan button =========================
        self.ui.ResetScan_pushButton.clicked.connect(self.on_reset_scan_push_button)
        # ============================= matches tables =========================
        self.ui.tableWidget.cellChanged.connect(self.on_current_val_in_table_changed)
        # ================ match count display string
        self.ui.match_count_label.setText(self.MATCH_COUNT_STR_FMT % (0, 0))
        # =============================== progress bar ========================
        # callback for progress of engine
        self.engine.set_on_progress_update(self.on_progress_update)
        # ==============================================================

        # =============================== scan type combo box ===================
        # add items to combobox/dropdown
        self.ui.scanType_ComboBox.addItems(FilterType.list())
        self.ui.scanType_ComboBox.setCurrentIndex(self.scan_type_default_val.value)


    def on_device_android(self):
        print("switching to android device")
        self.device_android.exec()

    def on_attach_to_proc(self):
        self.proc_list.process_table.refresh()
        # use exec so that parent window is disabled
        # https://stackoverflow.com/questions/37903842/how-to-disable-parent-window-on-open-child-in-qt
        self.proc_list.exec()

        attached_proc_name = self.proc_list.get_attached_proc_name()
        if attached_proc_name == "":
            self.setWindowTitle(self.NO_ATTACHED_WIN_TITLE)
        else:
            self.setWindowTitle("attached to %s" % (self.proc_list._attached_proc_name))

        print("attached status %s" % (self.engine.is_attached()))
    def on_progress_update(self, current_val: int, max_val: int):
        self.ui.scan_progressBar.setMinimum(0)
        self.ui.scan_progressBar.setValue(current_val)
        self.ui.scan_progressBar.setMaximum(max_val)

    def add_matches_to_table(self, address: str, val: str):
        # make sure no signal for
        # table is emitted when we add item
        # example: [cellChanged] signal is called even
        # when adding item by a function, the signal [cellChanged]
        # is intended for users only
        # so we need to block signal from being emitted
        # when we add an item, then it can be reenabled 
        # after that,
        # https://stackoverflow.com/a/2500472/14073678
        self.ui.tableWidget.blockSignals(True)
        # ======== create column items =========
        address_item = QTableWidgetItem(address)
        prev_val_item = QTableWidgetItem(val)

        # disable edit for address and previous value
        address_item.setFlags(QtCore.Qt.ItemIsEnabled)
        prev_val_item.setFlags(QtCore.Qt.ItemIsEnabled)
        #
        current_val_item = QTableWidgetItem(val)

        # ======================================

        # make new row for new item
        self.ui.tableWidget.insertRow(self.ui.tableWidget.rowCount())
        new_row_idx = self.ui.tableWidget.rowCount() - 1
        # put data to row
        self.ui.tableWidget.setItem(new_row_idx, 0, address_item)
        self.ui.tableWidget.setItem(new_row_idx, 1, prev_val_item)
        self.ui.tableWidget.setItem(new_row_idx, 2, current_val_item)
        # unblock after done
        self.ui.tableWidget.blockSignals(False)

    def matches_table_update(self):
        """
            update the matches table ui from list of matches
            that the engine currently has
        """
        # clear matches table before adding new item
        self.ui.tableWidget.setRowCount(0)
        # get list of matches
        matches_list = self.engine.list_matches()
        for i in range(0, len(matches_list)):
            splitted_str = matches_list[i].split(" ")
            assert len(splitted_str) == 2
            current_match_addr = splitted_str[0]
            current_match_val = splitted_str[1]
            # add to table
            self.add_matches_to_table(current_match_addr, current_match_val)

        # get how many matches we have
        matches_count = self.engine.get_match_count()
        matches_shown_count = min(matches_count, self.engine.MAX_ADDRESS_LIST_COUNT)

        # show matches count to label
        self.ui.match_count_label.setText(
            self.MATCH_COUNT_STR_FMT % (matches_count, matches_shown_count)
        )

    def on_current_val_in_table_changed(self, row: int, column: int):
        """
        called when users want to change the value
        of an address in the matches table
        """
        # retrieve address and the value to write
        addr = self.ui.tableWidget.item(row, 0).text()
        new_val = self.ui.tableWidget.item(row, 2).text()
        # write to that address
        self.engine.write_at_address(address=addr, val=new_val)

    def on_AgainstAValue_checkBox_changed(self):
        # TODO: this is ugly, make it better
        # enable / disable value input
        against_a_val = self.ui.AgainstAValue_checkBox.isChecked()
        self.ui.ValueInput_LineEdit.setEnabled(against_a_val)

    def on_AgainstAValue_checkBox(self, state):
        self.on_AgainstAValue_checkBox_changed()

    def on_NextScan_pushButton(self):

        # ====================== get input =============
        scan_type_str = self.ui.scanType_ComboBox.currentText()
        scan_type = FilterType[scan_type_str]
        val_to_scan = self.ui.ValueInput_LineEdit.text()
        against_a_val = self.ui.AgainstAValue_checkBox.isChecked()

        # ====================== begin scanning =============
        # reset errno
        self.engine.errno = 0
        if against_a_val:
            self.engine.scan(scan_type, val_to_scan)
        else:
            self.engine.filter(scan_type)
        # something is wrong when scanninng
        # show the error message and quit from function
        if self.engine.errno != 0:
            err_msg = EngineErrno_str(self.engine.errno)
            msg_box = QMessageBox()
            msg_box.setIcon(QMessageBox.Warning)
            msg_box.setWindowTitle("Operation error")
            msg_box.setText("%s" % (err_msg))
            msg_box.exec()
            return


        self.matches_table_update()

    def on_reset_scan_push_button(self):
        msg_box = QMessageBox()
        msg_box.setIcon(QMessageBox.Question)
        msg_box.setWindowTitle("Reset Scan")
        msg_box.setText("Resetting scan, U sure?")
        msg_box.setStandardButtons(QMessageBox.Yes | QMessageBox.Cancel)
        # show dialog
        ret_val = msg_box.exec()

        # handle users input
        if ret_val == QMessageBox.Yes:
            # reset errno
            self.engine.errno = 0
            self.engine.reset_scan_results()
            # error
            if self.engine.errno != 0:
                err_msg = EngineErrno_str(self.engine.errno)
                msg_box = QMessageBox()
                msg_box.setIcon(QMessageBox.Warning)
                msg_box.setWindowTitle("Operation error")
                msg_box.setText("%s" % (err_msg))
                msg_box.exec()
                return

        self.matches_table_update()



if __name__ == "__main__":
    app = QtWidgets.QApplication([])

    widget = MainWidget(ace_engine)
    widget.setFixedSize(800, 600)
    widget.show()

    sys.exit(app.exec())
