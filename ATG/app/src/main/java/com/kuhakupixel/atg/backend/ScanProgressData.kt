package com.kuhakupixel.atg.backend

import kotlin.Throws
import Shell.Result
import kotlin.jvm.Synchronized

class ScanProgressData(current: Integer, max: Integer, is_finished: Boolean) {
    var current: Integer
    var max: Integer
    var is_finished: Boolean

    init {
        this.current = current
        this.max = max
        this.is_finished = is_finished
    }
}