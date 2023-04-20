package com.java.atg

import android.content.Context
import androidx.compose.runtime.MutableState
import androidx.compose.runtime.mutableStateOf
import com.java.atg.backend.ACE

/**
 *
 * */
class GlobalConf(context: Context) {
    private var ace: ACE

    init {
        ace = ACE(context)
    }

    public fun getAce(): ACE {
        return ace
    }
}