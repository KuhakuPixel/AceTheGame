package com.kuhakupixel.atg

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

    object Settings : BottomBarMenu(
        route = "settings",
        title = "Settings",
        iconId = R.drawable.ic_setting
    )
}

