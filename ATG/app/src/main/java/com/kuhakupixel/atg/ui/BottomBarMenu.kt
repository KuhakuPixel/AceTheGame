package com.kuhakupixel.atg.ui

import com.kuhakupixel.atg.R

sealed class BottomBarMenu(
    val route: String,
    val title: String,
    val iconId: Int
) {
    object Process : BottomBarMenu(
        route = "Process",
        title = "Process",
        iconId = R.drawable.ic_process
    )


    object Memory : BottomBarMenu(
        route = "Memory",
        title = "Memory",
        iconId = R.drawable.ic_memory
    )

    object AddressTable : BottomBarMenu(
        route = "Address Table",
        title = "Address Table",
        iconId = R.drawable.ic_table
    )

    object Settings : BottomBarMenu(
        route = "settings",
        title = "Settings",
        iconId = R.drawable.ic_setting
    )
}

