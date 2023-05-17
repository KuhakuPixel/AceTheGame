package com.kuhakupixel.atg.ui.bottomnav

import androidx.compose.runtime.Composable

class BottomBarMenu(
    val route: String,
    val title: String,
    val iconId: Int,
    val content: @Composable () -> Unit,

    ) {
}

