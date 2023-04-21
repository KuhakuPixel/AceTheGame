package com.kuhakupixel.atg.ui.menu

import androidx.compose.foundation.background
import androidx.compose.foundation.border
import androidx.compose.foundation.clickable
import androidx.compose.foundation.horizontalScroll
import androidx.compose.foundation.layout.Box
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.Row
import androidx.compose.foundation.layout.RowScope
import androidx.compose.foundation.layout.Spacer
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.foundation.layout.fillMaxWidth
import androidx.compose.foundation.layout.height
import androidx.compose.foundation.layout.padding
import androidx.compose.foundation.lazy.LazyColumn
import androidx.compose.foundation.rememberScrollState
import androidx.compose.material3.MaterialTheme
import androidx.compose.material3.Text
import androidx.compose.runtime.Composable
import androidx.compose.runtime.MutableState
import androidx.compose.runtime.mutableStateListOf
import androidx.compose.runtime.mutableStateOf
import androidx.compose.runtime.remember
import androidx.compose.runtime.snapshots.SnapshotStateList
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.tooling.preview.Preview
import androidx.compose.ui.unit.dp
import com.kuhakupixel.atg.ui.GlobalConf
import com.kuhakupixel.atg.backend.ACE
import com.kuhakupixel.atg.backend.ProcInfo
import com.kuhakupixel.atg.ui.util.ConfirmDialog
import com.kuhakupixel.atg.ui.util.CreateTable
import com.kuhakupixel.atg.ui.util.InfoDialog
import com.kuhakupixel.atg.ui.util.WarningDialog

/**
 * which process we are currently attached to?
 * */
private var attachedStatusString: MutableState<String> = mutableStateOf("None")

@Composable
private fun AttachToProcess(
    ace: ACE?,
    pid: Long,
    onProcessNoExistAnymore: @Composable () -> Unit,
    onAttachSuccess: @Composable () -> Unit,
) {

    // check if its still alive
    if (!ace!!.IsPidRunning(pid)) {
        onProcessNoExistAnymore()
        return
    }
    // DeAttach first if we have been attached previously
    if (ace.IsAttached()) {
        ace.DeAttach()
    }
    ace.Attach(pid)
    // final check to see if we are attached
    // to the correct process
    if (pid == ace.GetAttachedPid()) {
        onAttachSuccess()
    }

}

@Composable
fun ProcessTable(
    processList: SnapshotStateList<ProcInfo>,
    onProcessSelected: (pid: Long, procName: String) -> Unit,
) {

    var openConfirmDialog: MutableState<Boolean> = remember { mutableStateOf(false) }
    // the selected Process to Attach
    var selectedPid: MutableState<Long> = remember { mutableStateOf(-1) }
    var selectedProcNameStr: MutableState<String> = remember { mutableStateOf("") }

    CreateTable(
        colNames = listOf("Pid", "Name"),
        colWeights = listOf(0.3f, 0.7f),
        rowCount = processList.size,
        onRowClicked = { rowIndex: Int ->
            // when row is clicked
            openConfirmDialog.value = true
            // set params
            selectedPid.value = processList[rowIndex]
                .GetPidStr()
                .toLong()
            selectedProcNameStr.value = processList[rowIndex].GetName()

        },
        drawCell = { rowIndex: Int, colIndex: Int, cellModifier: Modifier ->
            if (colIndex == 0) {
                Text(text = processList[rowIndex].GetPidStr(), modifier = cellModifier)
            }
            if (colIndex == 1) {
                Text(text = processList[rowIndex].GetName(), modifier = cellModifier)
            }
        }
    )
    // only show dialog if asked to
    if (openConfirmDialog.value) {
        ConfirmDialog(
            msg = "Attach to ${selectedPid.value} - ${selectedProcNameStr.value} ?",
            onClick = { onProcessSelected(selectedPid.value, selectedProcNameStr.value) },
            onClose = { openConfirmDialog.value = false }
        )
    }
}

@Composable
private fun _ProcessMenu(
    runningProcState: SnapshotStateList<ProcInfo>,
    onAttach: (pid: Long, procName: String) -> Unit
) {

    Box(
        modifier = Modifier
            .fillMaxSize(),
        contentAlignment = Alignment.Center,
    ) {
        Column() {
            Spacer(modifier = Modifier.height(10.dp))
            Text("Selected process: ${attachedStatusString.value}")
            ProcessTable(
                processList = runningProcState,
                onProcessSelected = onAttach,
            )
        }
    }
}


@Composable
fun ProcessMenu(globalConf: GlobalConf?) {
    val ace: ACE? = globalConf?.getAce()
    // copy to list first
    val runningProcs: List<ProcInfo>? = ace?.ListRunningProc()
    val runningProcState = remember { SnapshotStateList<ProcInfo>() }
    if (runningProcs != null) {
        for (proc in runningProcs)
            runningProcState.add(proc)
    }
    // params
    val shouldAttach: MutableState<Boolean> = remember { mutableStateOf(false) }
    val pidToAttach: MutableState<Long> = remember { mutableStateOf(0) }
    val procNameToAttach: MutableState<String> = remember { mutableStateOf("") }
    _ProcessMenu(
        runningProcState,
        onAttach = { pid: Long, procName: String ->
            shouldAttach.value = true
            pidToAttach.value = pid
            procNameToAttach.value = procName
        },
    )
    if (shouldAttach.value) {
        // this should be called to close all the window
        val onAttachDialogClose: () -> Unit = { shouldAttach.value = false }
        //
        AttachToProcess(
            ace = ace, pid = pidToAttach.value,
            onAttachSuccess = {
                InfoDialog(
                    msg = "Attaching to ${procNameToAttach.value} is successful",
                    onClick = {},
                    onClose = onAttachDialogClose,
                )
                attachedStatusString.value = "${pidToAttach.value} - ${procNameToAttach.value}"
            },
            onProcessNoExistAnymore = {
                WarningDialog(
                    msg = "Process ${procNameToAttach.value} is not running anymore, Can't attach",
                    onClick = {},
                    onClose = onAttachDialogClose,
                )
            },
        )
    }

}

@Preview(showBackground = true)
@Composable
fun PreviewTable() {
    val myList: SnapshotStateList<ProcInfo> = remember {

        mutableStateListOf(
            ProcInfo("1 init"),
            ProcInfo("2 systemd"),
            ProcInfo("3 daemonSomething"),
        )

    }
    ProcessTable(
        myList,
        { pid: Long, procName: String ->

            // do nothing

        },
    )
}

@Composable
@Preview
fun ProcessMenuPreview() {
    ProcessMenu(null)
}