package com.kuhakupixel.atg.backend

import android.content.Context

class ACEUtilClient(context: Context) : ACEBaseClient() {
    val utilClientBinPath: String

    init {
        utilClientBinPath = Binary.GetBinPath(context, Binary.Type.utilClient)
    }

    @Override
    override fun SendCommand(requestCmd: Array<String?>?): List<String> {
        val cmdArr: Array<String?> = ArrayUtils.addAll(arrayOf<String>(utilClientBinPath), requestCmd)
        // run command
        return Root.sudo(cmdArr)
    }
}