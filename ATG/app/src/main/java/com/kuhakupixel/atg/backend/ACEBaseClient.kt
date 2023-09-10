package com.kuhakupixel.atg.backend

import android.util.Log

abstract class ACEBaseClient {
    class InvalidCommandException(msg: String) : RuntimeException(msg)

    /**
     * specify how to send the command and get the output
     */
    abstract fun SendCommand(requestCmd: Array<String>): List<String>

    @Throws(InvalidCommandException::class)
    fun RequestAsList(requestCmd: Array<String>): List<String> {
        Log.i(
            "ATG",
            "Command to Engine: \"${requestCmd.joinToString(separator = " ")}\""
        )
        // run command
        val out = SendCommand(requestCmd)
        AssertValidCommand(out)
        Log.i(
            "ATG",
            "Output received from engine command: \"${requestCmd.joinToString(separator = " ")}\"",
        )
        return out
    }

    @Throws(InvalidCommandException::class)
    fun Request(requestCmd: Array<String>): String {
        return RequestAsList(requestCmd).joinToString(separator = "\n")
    }

    companion object {
        @Throws(InvalidCommandException::class)
        fun AssertValidCommand(out: List<String>) {
            if (out.size > 0) {
                if (out[0].equals("INVALID_COMMAND")) {
                    throw InvalidCommandException(
                        "Invalid Command: ${out.joinToString(separator = "\n")}"
                    )
                }
            }
        }
    }
}