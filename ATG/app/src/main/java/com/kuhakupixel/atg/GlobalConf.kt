package com.kuhakupixel.atg

import android.content.Context
import com.kuhakupixel.atg.backend.ACE

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