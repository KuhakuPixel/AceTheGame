import pexpect
import time

from PySide6 import QtCore, QtWidgets, QtGui
from PySide6.QtWidgets import (
    QApplication,
    QTableWidget,
    QTableWidgetItem,
    QPlainTextEdit,
)
from ACEG.widget.log_msg import LogMsgWidget
from ACEG.utils.command import does_cmd_exist


class DeviceAndroidDialog(QtWidgets.QDialog):
    """
    windows that handles switching the engine
    to android

    """

    # TODO: have a file that stores confs like this
    TIMEOUT_CMD = 10
    ENGINE_DIR = "/data/android_build/"

    def __init__(self):
        super().__init__()

        # log windows
        self.log_win = LogMsgWidget()
        # buttons
        self.connect_device_button = QtWidgets.QPushButton("Connect Device")
        #

        self.text = QtWidgets.QLabel(
            "This is a simple log", alignment=QtCore.Qt.AlignCenter
        )

        self.layout = QtWidgets.QVBoxLayout(self)
        # registers method to button
        self.connect_device_button.clicked.connect(self.on_connect_device_button)
        #
        self.layout.addWidget(self.log_win)
        self.layout.addWidget(self.text)
        self.layout.addWidget(self.connect_device_button)
        #

    def connect_device(self):
        """
        check if connections to android via adb
        is valid and can connect with engine properly
        """
        # TODO: finish checking by checking if the engine
        # has a gui protocol
        self.log_win.append_message("checking if adb commands exist ...")

        # check if adb exist
        adb_exist = does_cmd_exist("adb")
        if not adb_exist:
            self.log_win.append_message("adb doesn't exist")
            return

        self.log_win.append_message("adb exist")

        shell = pexpect.spawn("adb shell")

        # ============= check if adb shell can be run ==================
        # expect root (#) or ($)
        # TODO: handles error when no root
        chosen_idx = shell.expect(
            [pexpect.TIMEOUT, "$", "#", "error: no devices/emulators found"],
            timeout=self.TIMEOUT_CMD,
        )
        if chosen_idx == 0:
            self.log_win.append_message(
                'Unexpectd output %s when running "adb shell"' % (shell.before)
            )
            return

        # handles when no root is found?
        if chosen_idx  == 1:
            self.log_win.append_message("WARNING, shell has no root")
        if chosen_idx == 3:
            self.log_win.append_message("no devices is running, start a new one pls")
            return

        self.log_win.append_message("device is online")
        # ===================== check for root ==========================
        # check if roots can be found using whoami
        self.log_win.append_message("checking for root")
        shell.sendline("whoami")
        chose_idx = shell.expect([pexpect.TIMEOUT, "root"], timeout=self.TIMEOUT_CMD)

        if chose_idx == 0:
            self.log_win.append_message("shell has no root, please use \"adb root\" command to root device")
            return

        #
        self.log_win.append_message("root okay")
        # =============== check if engine already installed ==============
        # =============== run engine ============================
        #
        shell.sendline("./" + self.ENGINE_DIR + "ACE")
        self.log_win.append_message("running engine")
        shell.expect("(ACE)")
        shell.sendline("ps ls")
        shell.expect("TASK_DONE")
        # print output
        output = shell.before.decode("utf-8").replace("\\r\\n", "\n")
        self.log_win.append_message(output)

        # check if engine is previously installed
        # if yes then push an android engine

    def on_connect_device_button(self):
        self.connect_device()

    def on_start(self):
        for i in range(0, 100):
            self.log_win.append_message("hello world %i" % (i))
            time.sleep(0.5)
