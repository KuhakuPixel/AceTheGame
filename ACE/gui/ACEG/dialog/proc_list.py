from PySide6 import QtCore, QtWidgets, QtGui
from PySide6.QtWidgets import QTableWidget, QTableWidgetItem, QMessageBox
from PySide6.QtCore import Qt
from typing import List, Tuple
import os

from ACEG.engine_comm.engine import AceEngine
from ACEG.config.engine_build_path import ABS_BUILT_ENGINE_PATH
from ACEG.widget.process_table import ProcessTableWidget

"""
"""

class ProcessListDialog(QtWidgets.QDialog):
    _attached_proc_pid = -1
    _attached_proc_name = ""

    def __init__(self, engine: AceEngine):
        super().__init__()
        self.resize(300, 450)
        # ============= create widgets ================
        # process table
        # create separate engine for listing processes
        # so we don't have to deattach when we want to view
        # processes list, because listing process requires
        # the engine to not be attached to any processes
        engine_for_listing_procs = AceEngine(ABS_BUILT_ENGINE_PATH)
        self.process_table = ProcessTableWidget(engine_for_listing_procs)
        # main engine used for attaching
        self.engine = engine
        # running processes list
        # referesh buttons
        self.refresh_button = QtWidgets.QPushButton("Refresh")
        self.refresh_button.clicked.connect(self.process_table.refresh)

        self.attach_button = QtWidgets.QPushButton("Attach")
        self.attach_button.clicked.connect(self.on_attach_button_click)

        # =============================================

        self.desc = QtWidgets.QLabel(
            "Select a process and click attach", alignment=Qt.AlignLeft
        )
        # add to layout
        self.v_layout = QtWidgets.QVBoxLayout(self)
        self.v_layout.addWidget(self.desc)
        self.v_layout.addWidget(self.process_table)
        self.v_layout.addWidget(self.attach_button)
        self.v_layout.addWidget(self.refresh_button)

    def get_attached_pid(self) -> int:
        return self._attached_proc_pid

    def get_attached_proc_name(self) -> str:
        return self._attached_proc_name

    def on_attached(self, pid: int, proc_name: str):
        # make sure to deattach if
        # previously attached
        if self.engine.is_attached():
            self.engine.deattach_from_proc()
        # attach
        ret_code = self.engine.attach_to_proc(pid)
        if ret_code == 0:
            self._attached_proc_pid = pid
            self._attached_proc_name = proc_name
            # close current process listing
            # when a process has been selected
            self.close()
        else:
            print("attach fails, error code: %d" % (ret_code))

    # attach buttons
    def on_attach_button_click(self):

        proc_pid, proc_name = self.process_table.get_selected_proc_pid_and_name()

        # if a process has been selected
        if proc_pid != "" and proc_name != "":
            msg_box = QMessageBox()
            msg_box.setIcon(QMessageBox.Question)
            msg_box.setText("Attach to %s %s?" % (proc_pid, proc_name))
            msg_box.setWindowTitle("Attaching to process...")
            msg_box.setStandardButtons(QMessageBox.Ok | QMessageBox.Cancel)
            # show dialog
            ret_val = msg_box.exec()
            if ret_val == QMessageBox.Ok:
                self.on_attached(int(proc_pid), proc_name)
                print("attaching")
            else:
                print("Cancelled")
        else:
            msg_box = QMessageBox()
            msg_box.setIcon(QMessageBox.Warning)
            msg_box.setText("No process is selected")
            msg_box.setWindowTitle("Attaching to process...")
            msg_box.exec()
