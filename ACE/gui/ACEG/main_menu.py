# -*- coding: utf-8 -*-

################################################################################
## Form generated from reading UI file 'main_menu.ui'
##
## Created by: Qt User Interface Compiler version 6.4.0
##
## WARNING! All changes made in this file will be lost when recompiling UI file!
################################################################################

from PySide6.QtCore import (QCoreApplication, QDate, QDateTime, QLocale,
    QMetaObject, QObject, QPoint, QRect,
    QSize, QTime, QUrl, Qt)
from PySide6.QtGui import (QAction, QBrush, QColor, QConicalGradient,
    QCursor, QFont, QFontDatabase, QGradient,
    QIcon, QImage, QKeySequence, QLinearGradient,
    QPainter, QPalette, QPixmap, QRadialGradient,
    QTransform)
from PySide6.QtWidgets import (QAbstractScrollArea, QApplication, QCheckBox, QComboBox,
    QHBoxLayout, QHeaderView, QLabel, QLayout,
    QLineEdit, QMainWindow, QMenu, QMenuBar,
    QProgressBar, QPushButton, QSizePolicy, QStatusBar,
    QTableWidget, QTableWidgetItem, QVBoxLayout, QWidget)

class Ui_MainWindow(object):
    def setupUi(self, MainWindow):
        if not MainWindow.objectName():
            MainWindow.setObjectName(u"MainWindow")
        MainWindow.resize(765, 609)
        sizePolicy = QSizePolicy(QSizePolicy.Preferred, QSizePolicy.Preferred)
        sizePolicy.setHorizontalStretch(1)
        sizePolicy.setVerticalStretch(1)
        sizePolicy.setHeightForWidth(MainWindow.sizePolicy().hasHeightForWidth())
        MainWindow.setSizePolicy(sizePolicy)
        self.actionNew = QAction(MainWindow)
        self.actionNew.setObjectName(u"actionNew")
        self.actionOpen = QAction(MainWindow)
        self.actionOpen.setObjectName(u"actionOpen")
        self.actionAttach_to_process = QAction(MainWindow)
        self.actionAttach_to_process.setObjectName(u"actionAttach_to_process")
        self.actionDeviceAndroid = QAction(MainWindow)
        self.actionDeviceAndroid.setObjectName(u"actionDeviceAndroid")
        self.actionDeviceLinuxDesktop = QAction(MainWindow)
        self.actionDeviceLinuxDesktop.setObjectName(u"actionDeviceLinuxDesktop")
        self.centralwidget = QWidget(MainWindow)
        self.centralwidget.setObjectName(u"centralwidget")
        self.horizontalLayoutWidget = QWidget(self.centralwidget)
        self.horizontalLayoutWidget.setObjectName(u"horizontalLayoutWidget")
        self.horizontalLayoutWidget.setGeometry(QRect(500, 110, 241, 71))
        self.ScanType = QHBoxLayout(self.horizontalLayoutWidget)
        self.ScanType.setObjectName(u"ScanType")
        self.ScanType.setContentsMargins(0, 0, 0, 0)
        self.ScanType_Label = QLabel(self.horizontalLayoutWidget)
        self.ScanType_Label.setObjectName(u"ScanType_Label")

        self.ScanType.addWidget(self.ScanType_Label)

        self.scanType_ComboBox = QComboBox(self.horizontalLayoutWidget)
        self.scanType_ComboBox.setObjectName(u"scanType_ComboBox")

        self.ScanType.addWidget(self.scanType_ComboBox)

        self.horizontalLayoutWidget_2 = QWidget(self.centralwidget)
        self.horizontalLayoutWidget_2.setObjectName(u"horizontalLayoutWidget_2")
        self.horizontalLayoutWidget_2.setGeometry(QRect(500, 270, 241, 71))
        self.ValueInput = QHBoxLayout(self.horizontalLayoutWidget_2)
        self.ValueInput.setObjectName(u"ValueInput")
        self.ValueInput.setContentsMargins(0, 0, 0, 0)
        self.ValueInput_Label = QLabel(self.horizontalLayoutWidget_2)
        self.ValueInput_Label.setObjectName(u"ValueInput_Label")

        self.ValueInput.addWidget(self.ValueInput_Label)

        self.ValueInput_LineEdit = QLineEdit(self.horizontalLayoutWidget_2)
        self.ValueInput_LineEdit.setObjectName(u"ValueInput_LineEdit")

        self.ValueInput.addWidget(self.ValueInput_LineEdit)

        self.ValueInput.setStretch(0, 1)
        self.verticalLayoutWidget = QWidget(self.centralwidget)
        self.verticalLayoutWidget.setObjectName(u"verticalLayoutWidget")
        self.verticalLayoutWidget.setGeometry(QRect(350, 250, 3, 2))
        self.verticalLayout_2 = QVBoxLayout(self.verticalLayoutWidget)
        self.verticalLayout_2.setObjectName(u"verticalLayout_2")
        self.verticalLayout_2.setSizeConstraint(QLayout.SetNoConstraint)
        self.verticalLayout_2.setContentsMargins(0, 0, 2, 0)
        self.horizontalLayoutWidget_3 = QWidget(self.centralwidget)
        self.horizontalLayoutWidget_3.setObjectName(u"horizontalLayoutWidget_3")
        self.horizontalLayoutWidget_3.setGeometry(QRect(500, 190, 241, 71))
        self.AgainstAValue = QHBoxLayout(self.horizontalLayoutWidget_3)
        self.AgainstAValue.setObjectName(u"AgainstAValue")
        self.AgainstAValue.setContentsMargins(0, 0, 0, 0)
        self.AgainstAValue_label = QLabel(self.horizontalLayoutWidget_3)
        self.AgainstAValue_label.setObjectName(u"AgainstAValue_label")

        self.AgainstAValue.addWidget(self.AgainstAValue_label)

        self.AgainstAValue_checkBox = QCheckBox(self.horizontalLayoutWidget_3)
        self.AgainstAValue_checkBox.setObjectName(u"AgainstAValue_checkBox")

        self.AgainstAValue.addWidget(self.AgainstAValue_checkBox)

        self.NextScan_pushButton = QPushButton(self.centralwidget)
        self.NextScan_pushButton.setObjectName(u"NextScan_pushButton")
        self.NextScan_pushButton.setGeometry(QRect(600, 350, 141, 31))
        self.ResetScan_pushButton = QPushButton(self.centralwidget)
        self.ResetScan_pushButton.setObjectName(u"ResetScan_pushButton")
        self.ResetScan_pushButton.setGeometry(QRect(600, 390, 141, 31))
        self.scan_progressBar = QProgressBar(self.centralwidget)
        self.scan_progressBar.setObjectName(u"scan_progressBar")
        self.scan_progressBar.setGeometry(QRect(10, 10, 751, 23))
        self.scan_progressBar.setValue(0)
        self.scan_progressBar.setTextVisible(True)
        self.scan_progressBar.setOrientation(Qt.Horizontal)
        self.verticalLayoutWidget_2 = QWidget(self.centralwidget)
        self.verticalLayoutWidget_2.setObjectName(u"verticalLayoutWidget_2")
        self.verticalLayoutWidget_2.setGeometry(QRect(20, 50, 401, 501))
        self.matchesTable = QVBoxLayout(self.verticalLayoutWidget_2)
        self.matchesTable.setObjectName(u"matchesTable")
        self.matchesTable.setContentsMargins(0, 0, 0, 0)
        self.match_count_label = QLabel(self.verticalLayoutWidget_2)
        self.match_count_label.setObjectName(u"match_count_label")

        self.matchesTable.addWidget(self.match_count_label)

        self.tableWidget = QTableWidget(self.verticalLayoutWidget_2)
        if (self.tableWidget.columnCount() < 3):
            self.tableWidget.setColumnCount(3)
        __qtablewidgetitem = QTableWidgetItem()
        self.tableWidget.setHorizontalHeaderItem(0, __qtablewidgetitem)
        __qtablewidgetitem1 = QTableWidgetItem()
        self.tableWidget.setHorizontalHeaderItem(1, __qtablewidgetitem1)
        __qtablewidgetitem2 = QTableWidgetItem()
        self.tableWidget.setHorizontalHeaderItem(2, __qtablewidgetitem2)
        self.tableWidget.setObjectName(u"tableWidget")
        self.tableWidget.setSizeAdjustPolicy(QAbstractScrollArea.AdjustToContents)

        self.matchesTable.addWidget(self.tableWidget)

        MainWindow.setCentralWidget(self.centralwidget)
        self.menubar = QMenuBar(MainWindow)
        self.menubar.setObjectName(u"menubar")
        self.menubar.setGeometry(QRect(0, 0, 765, 22))
        self.menuMain = QMenu(self.menubar)
        self.menuMain.setObjectName(u"menuMain")
        self.menuAttach = QMenu(self.menubar)
        self.menuAttach.setObjectName(u"menuAttach")
        self.menuDevices = QMenu(self.menubar)
        self.menuDevices.setObjectName(u"menuDevices")
        MainWindow.setMenuBar(self.menubar)
        self.statusbar = QStatusBar(MainWindow)
        self.statusbar.setObjectName(u"statusbar")
        MainWindow.setStatusBar(self.statusbar)

        self.menubar.addAction(self.menuMain.menuAction())
        self.menubar.addAction(self.menuAttach.menuAction())
        self.menubar.addAction(self.menuDevices.menuAction())
        self.menuMain.addAction(self.actionNew)
        self.menuMain.addAction(self.actionOpen)
        self.menuAttach.addAction(self.actionAttach_to_process)
        self.menuDevices.addSeparator()
        self.menuDevices.addAction(self.actionDeviceAndroid)
        self.menuDevices.addAction(self.actionDeviceLinuxDesktop)

        self.retranslateUi(MainWindow)

        QMetaObject.connectSlotsByName(MainWindow)
    # setupUi

    def retranslateUi(self, MainWindow):
        MainWindow.setWindowTitle(QCoreApplication.translate("MainWindow", u"MainWindow", None))
        self.actionNew.setText(QCoreApplication.translate("MainWindow", u"&New", None))
        self.actionOpen.setText(QCoreApplication.translate("MainWindow", u"Open", None))
        self.actionAttach_to_process.setText(QCoreApplication.translate("MainWindow", u"Attach to process", None))
        self.actionDeviceAndroid.setText(QCoreApplication.translate("MainWindow", u"Android", None))
        self.actionDeviceLinuxDesktop.setText(QCoreApplication.translate("MainWindow", u"LinuxDesktop", None))
        self.ScanType_Label.setText(QCoreApplication.translate("MainWindow", u"Scan Type", None))
        self.ValueInput_Label.setText(QCoreApplication.translate("MainWindow", u"Value", None))
        self.AgainstAValue_label.setText(QCoreApplication.translate("MainWindow", u"Against a value", None))
        self.AgainstAValue_checkBox.setText("")
        self.NextScan_pushButton.setText(QCoreApplication.translate("MainWindow", u"Next Scan", None))
        self.ResetScan_pushButton.setText(QCoreApplication.translate("MainWindow", u"Reset Scan", None))
        self.match_count_label.setText(QCoreApplication.translate("MainWindow", u"match count: 0 showing 0", None))
        ___qtablewidgetitem = self.tableWidget.horizontalHeaderItem(0)
        ___qtablewidgetitem.setText(QCoreApplication.translate("MainWindow", u"Address", None));
        ___qtablewidgetitem1 = self.tableWidget.horizontalHeaderItem(1)
        ___qtablewidgetitem1.setText(QCoreApplication.translate("MainWindow", u"Prev Value", None));
        ___qtablewidgetitem2 = self.tableWidget.horizontalHeaderItem(2)
        ___qtablewidgetitem2.setText(QCoreApplication.translate("MainWindow", u"Current Value", None));
        self.menuMain.setTitle(QCoreApplication.translate("MainWindow", u"&File", None))
        self.menuAttach.setTitle(QCoreApplication.translate("MainWindow", u"&Process", None))
        self.menuDevices.setTitle(QCoreApplication.translate("MainWindow", u"&Devices", None))
    # retranslateUi

