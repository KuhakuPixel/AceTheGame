from PySide6 import QtCore, QtWidgets, QtGui
from PySide6.QtWidgets import QTableWidget, QTableWidgetItem
from PySide6.QtCore import Qt
from typing import List, Tuple
from ACEG.engine_comm.engine import AceEngine
from ACEG.config.engine_build_path import ABS_BUILT_ENGINE_PATH

class ProcessTableWidget(QtWidgets.QWidget):
    # description
    proc_count_str_fmt = "Process Count: %s"
    # selected row and column
    _row_idx_selected = -1

    def _cell_clicked(self, row, column):
        """
        for this table's cellClicked callback
        """
        self._row_idx_selected = row
        pass

    def get_selected_proc_pid_and_name(self) -> Tuple[str, str]:
        """
        return (proc_pid,proc_name) of selected row
        if no selection return an empty tuple
        """

        if self._row_idx_selected == -1:
            return ("", "")
        #
        proc_pid = self.table.item(self._row_idx_selected, 0).text()
        proc_name = self.table.item(self._row_idx_selected, 1).text()
        return (proc_pid, proc_name)

    def __init__(self, engine: AceEngine):
        super().__init__()
        self.engine = engine

        # ============ make tables ===================
        self.table = QTableWidget()
        # register cell clicked callback
        # https://stackoverflow.com/a/14589213/14073678
        self.table.cellClicked.connect(self._cell_clicked)
        # disable numbering/indexing of table
        # self.table.verticalHeader().setVisible(False)
        self.table.setRowCount(0)
        # columns are pid and process name
        self.table.setColumnCount(2)
        self.table.setHorizontalHeaderLabels(["PID", "Process Name"])
        # ============================================
        self.proc_count_label = QtWidgets.QLabel(
            self.proc_count_str_fmt % (self.table.rowCount()), alignment=Qt.AlignCenter
        )
        # ============================================
        # make layout
        layout = QtWidgets.QVBoxLayout()
        layout.addWidget(self.table)
        layout.addWidget(self.proc_count_label)
        #
        self.setLayout(layout)

    def add_item(self, proc_pid: str, proc_name: str):

        # ======== create column items =========
        proc_pid_item = QTableWidgetItem(proc_pid)
        proc_pid_item.setFlags(QtCore.Qt.ItemIsEnabled)
        #
        proc_name_item = QTableWidgetItem(proc_name)
        proc_name_item.setFlags(QtCore.Qt.ItemIsEnabled)
        # ======================================

        # make new row for new item
        self.table.insertRow(self.table.rowCount())
        new_row_idx = self.table.rowCount() - 1
        # put data to row
        self.table.setItem(new_row_idx, 0, proc_pid_item)
        self.table.setItem(new_row_idx, 1, proc_name_item)
        pass

    def refresh(self):
        """
        refresh list of running processes
        """

        # =================== refresh processes table ===========
        # remove first
        self.table.setRowCount(0)
        # get running processes info

        proc_list = self.engine.get_running_procs()
        # add to table
        for i in range(0, len(proc_list)):
            proc_pid = proc_list[i][0]
            proc_name = proc_list[i][1]
            self.add_item(proc_pid, proc_name)

        # =================== refresh process count ==============
        self.proc_count_label.setText(self.proc_count_str_fmt % (self.table.rowCount()))

