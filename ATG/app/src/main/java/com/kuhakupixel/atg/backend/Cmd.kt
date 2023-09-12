package com.kuhakupixel.atg.backend

import java.io.BufferedReader
import java.io.InputStreamReader

object Cmd {
    fun RunCommand(cmds: List<String>):List<String> {

        val res: MutableList<String> = mutableListOf()
        val su: Process = Runtime.getRuntime().exec(cmds.toTypedArray())
        val stdInput = BufferedReader(InputStreamReader(su.getInputStream()))
        val stdError = BufferedReader(InputStreamReader(su.getErrorStream()))

        stdInput.use { buffedReader: BufferedReader ->
            buffedReader.lineSequence().forEach { s: String ->
                res.add(s)
            }

        }

        stdError.use { buffedReader: BufferedReader ->
            buffedReader.lineSequence().forEach { s: String ->
                res.add(s)
            }
        }
        return res
    }

}