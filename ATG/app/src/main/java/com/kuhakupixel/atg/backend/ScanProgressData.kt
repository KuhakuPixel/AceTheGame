package com.kuhakupixel.atg.backend

import kotlin.Throws
import Shell.Result
import kotlin.jvm.Synchronized

class ScanProgressData(current: Int, max: Int, is_finished: Boolean) {
    var current: Int
    var max: Int
    var is_finished: Boolean

    init {
        this.current = current
        this.max = max
        this.is_finished = is_finished
    }
}