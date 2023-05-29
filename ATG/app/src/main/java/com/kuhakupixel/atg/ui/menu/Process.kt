package com.kuhakupixel.atg.ui.menu

import androidx.compose.foundation.layout.Box
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.Spacer
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.foundation.layout.height
import androidx.compose.foundation.layout.padding
import androidx.compose.material3.Button
import androidx.compose.material3.Icon
import androidx.compose.material3.Text
import androidx.compose.runtime.Composable
import androidx.compose.runtime.MutableState
import androidx.compose.runtime.mutableStateListOf
import androidx.compose.runtime.mutableStateOf
import androidx.compose.runtime.remember
import androidx.compose.runtime.snapshots.SnapshotStateList
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.res.painterResource
import androidx.compose.ui.tooling.preview.Preview
import androidx.compose.ui.unit.dp
import com.kuhakupixel.atg.R
import com.kuhakupixel.atg.backend.ACE
import com.kuhakupixel.atg.backend.ProcInfo
import com.kuhakupixel.atg.ui.GlobalConf
import com.kuhakupixel.atg.ui.overlay.service.OverlayManager
import com.kuhakupixel.atg.ui.util.ConfirmDialog
import com.kuhakupixel.atg.ui.util.CreateTable
import com.kuhakupixel.atg.ui.util.ErrorDialog
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
    onAttachFailure: @Composable (msg: String) -> Unit,
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
    // attach
    ace.Attach(pid)
    var attachedPid: Long = -1
    try {
        attachedPid = ace.GetAttachedPid()
    } catch (e: Exception) {
        onAttachFailure("Unable to attach to process:  ${e.stackTraceToString()}")
        return
    }
    // final check to see if we are attached
    // to the correct process
    if (attachedPid == pid) {
        onAttachSuccess()
    } else {
        onAttachFailure("Unexpected Error, cannot attach to $pid")
    }

}

@Composable
fun ProcessTable(
    processList: SnapshotStateList<ProcInfo>,
    onProcessSelected: (pid: Long, procName: String) -> Unit,
) {


    CreateTable(
        modifier = Modifier.padding(16.dp),
        colNames = listOf("Pid", "Name"),
        colWeights = listOf(0.3f, 0.7f),
        itemCount = processList.size,
        minEmptyItemCount = 50,
        onRowClicked = { rowIndex: Int ->
            onProcessSelected(
                processList[rowIndex]
                    .GetPidStr()
                    .toLong(),
                processList[rowIndex].GetName(),
            )

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
}

@Composable
private fun _ProcessMenu(
    runningProcState: SnapshotStateList<ProcInfo>,
    onRefreshClicked: () -> Unit,
    onAttach: (pid: Long, procName: String) -> Unit,


    ) {

    Box(
        modifier = Modifier
            .fillMaxSize(),
        contentAlignment = Alignment.Center,
    ) {
        Column() {
            Spacer(modifier = Modifier.height(10.dp))
            Text("Selected process: ${attachedStatusString.value}")
            Spacer(modifier = Modifier.height(10.dp))
            Button(onClick = onRefreshClicked, modifier = Modifier.padding(start = 10.dp)) {
                Icon(
                    painter = painterResource(id = R.drawable.ic_refresh),
                    contentDescription = "Refresh",
                )
            }

            ProcessTable(
                processList = runningProcState,
                onProcessSelected = onAttach,
            )
        }
    }
}


fun refreshProcList(ace: ACE?, processList: SnapshotStateList<ProcInfo>) {

    // remove old elements
    processList.clear()
    // grab new one and add to the list
    val runningProcs: List<ProcInfo>? = ace!!.ListRunningProc()
    if (runningProcs != null) {
        for (proc in runningProcs)
            processList.add(proc)
    }
}

@Composable
fun ProcessMenu(globalConf: GlobalConf?, overlayManager: OverlayManager?) {
    val ace: ACE? = globalConf?.getAce()
    // list of processes that are gonna be shown
    val currentProcList = remember { SnapshotStateList<ProcInfo>() }
    //
    // initialize the list first
    refreshProcList(ace, currentProcList)
    // params
    val shouldAttach: MutableState<Boolean> = remember { mutableStateOf(false) }
    val pidToAttach: MutableState<Long> = remember { mutableStateOf(0) }
    val procNameToAttach: MutableState<String> = remember { mutableStateOf("") }
    _ProcessMenu(
        currentProcList,
        onAttach = { pid: Long, procName: String ->
            overlayManager!!.Dialog(
                title = "Attach to ${pid} - ${procName} ? ", text = "",
                onConfirm = {

                    shouldAttach.value = true
                    pidToAttach.value = pid
                    procNameToAttach.value = procName
                },
            )
        },
        onRefreshClicked = { refreshProcList(ace, currentProcList) }
    )
    if (shouldAttach.value) {
        AttachToProcess(
            ace = ace, pid = pidToAttach.value,
            onAttachSuccess = {
                overlayManager!!.Dialog(
                    title = "Attaching to ${procNameToAttach.value} is successful",
                    onConfirm = {},
                    text = "",
                )
                attachedStatusString.value = "${pidToAttach.value} - ${procNameToAttach.value}"
            },
            onProcessNoExistAnymore = {
                overlayManager!!.Dialog(
                    title = "Process ${procNameToAttach.value} is not running anymore, Can't attach",
                    onConfirm = {},
                    text = "",
                )
            },
            onAttachFailure = { msg: String ->
                overlayManager!!.Dialog(
                    title = msg,
                    onConfirm = {},
                    text = "",
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
    ProcessMenu(null, null)
}