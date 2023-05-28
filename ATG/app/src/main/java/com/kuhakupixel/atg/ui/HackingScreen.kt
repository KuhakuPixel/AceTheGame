package com.kuhakupixel.atg.ui

import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.padding
import androidx.compose.material3.*
import androidx.compose.runtime.Composable
import androidx.compose.runtime.MutableState
import androidx.compose.runtime.mutableStateOf
import androidx.compose.runtime.remember
import androidx.compose.ui.Modifier
import androidx.compose.ui.platform.LocalContext
import androidx.navigation.compose.rememberNavController
import com.kuhakupixel.atg.R
import com.kuhakupixel.atg.ui.bottomnav.BottomBar
import com.kuhakupixel.atg.ui.bottomnav.BottomBarMenu
import com.kuhakupixel.atg.ui.bottomnav.BottomNavGraph
import com.kuhakupixel.atg.ui.menu.AddressTableMenu
import com.kuhakupixel.atg.ui.menu.MemoryMenu
import com.kuhakupixel.atg.ui.menu.ProcessMenu
import com.kuhakupixel.atg.ui.menu.SettingsMenu
import com.kuhakupixel.atg.ui.overlay.service.OverlayManager
import com.kuhakupixel.atg.ui.util.WarningDialog
import com.topjohnwu.superuser.Shell


@OptIn(ExperimentalMaterial3Api::class)
@Composable
fun HackingScreen(overlayManager: OverlayManager) {
    val navController = rememberNavController()
    var globalConf: GlobalConf = GlobalConf(LocalContext.current)
    overlayManager.InfoDialog(msg = "Hello world") {

    }
    // ============================ each menu in bottom nav ===================
    val menus = listOf(
        BottomBarMenu(
            route = "Process",
            title = "Process",
            iconId = R.drawable.ic_process,
            content = { ProcessMenu(globalConf) },
        ),

        BottomBarMenu(
            route = "Memory",
            title = "Memory",
            iconId = R.drawable.ic_memory,
            content = { MemoryMenu(globalConf) },
        ),

        BottomBarMenu(
            route = "Address Table",
            title = "Address Table",
            iconId = R.drawable.ic_table,
            content = { AddressTableMenu(globalConf) },
        ),

        BottomBarMenu(
            route = "settings",
            title = "Settings",
            iconId = R.drawable.ic_setting,
            content = { SettingsMenu(globalConf) },
        ),
    )
    // =====================================================
    Scaffold(
        bottomBar = {
            BottomBar(
                navController = navController,
                menus = menus
            )
        },
    ) { padding ->
        Column(modifier = Modifier.padding(padding)) {
            BottomNavGraph(navController = navController, menus = menus, startDestinationIndex = 0)
        }
    }
}
