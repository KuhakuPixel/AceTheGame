from PySide6 import QtCore, QtWidgets, QtGui
from PySide6.QtWidgets import QPlainTextEdit

class LogMsgWidget(QPlainTextEdit):
    """
        extended QPlainTextEdit which can't be edited
        for logging

        creds: https://stackoverflow.com/a/14161360/14073678
    """

    logs = []
    def __init__(self):
        # set to read only, well because this is a log
        # not a damn editor
        super().__init__()
        self.setReadOnly(True)

    def append_message(self, msg: str):
        self.appendPlainText("LOG: " + msg)
        # scroll to bottom
        max_scroll_y = self.verticalScrollBar().maximum()
        self.verticalScrollBar().setValue(max_scroll_y)
        # log message
        self.logs.append(msg)
        # referesh so effects are seen immediatelly
        # after self.appendPlainText()
        QtCore.QCoreApplication.processEvents()
