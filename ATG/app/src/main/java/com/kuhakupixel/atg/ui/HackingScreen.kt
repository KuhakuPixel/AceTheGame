package com.kuhakupixel.atg.ui

import androidx.compose.foundation.layout.Arrangement
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.Row
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.foundation.layout.fillMaxWidth
import androidx.compose.foundation.layout.padding
import androidx.compose.material3.*
import androidx.compose.runtime.Composable
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
import com.kuhakupixel.libuberalles.overlay.OverlayContext
import com.kuhakupixel.libuberalles.overlay.OverlayViewHolder
import com.kuhakupixel.libuberalles.overlay.service.OverlayInterface
import com.kuhakupixel.libuberalles.ui.overlay.service.OverlayViewController

@OptIn(ExperimentalMaterial3Api::class)
@Composable
fun HackingScreen(overlayContext: OverlayContext) {
    val navController = rememberNavController()
    var globalConf: GlobalConf = GlobalConf(LocalContext.current)


    // ============================ each menu in bottom nav ===================
    val menus = listOf(
        BottomBarMenu(
            route = "Process",
            title = "Process",
            iconId = R.drawable.ic_process,
            content = { ProcessMenu(globalConf, overlayContext = overlayContext) },
        ),

        BottomBarMenu(
            route = "Memory",
            title = "Memory",
            iconId = R.drawable.ic_memory,
            content = { MemoryMenu(globalConf, overlayContext = overlayContext) },

            ),

        BottomBarMenu(
            route = "Address Table",
            title = "Address Table",
            iconId = R.drawable.ic_table,
            content = { AddressTableMenu(globalConf, overlayContext = overlayContext) },
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

class OverlayHackingScreenController(val overlayContext: OverlayContext, val onClosed: () -> Unit) :
    OverlayInterface {
    private fun createOverlay(): OverlayViewHolder {

        val hackingScreen = OverlayViewHolder(
            windowManager = overlayContext.windowManager,
            alpha = 0.9f,
            service = overlayContext.service,
        ) {
            // Text("hello world")
            overlayContext.applyTheme?.invoke {
                Column(modifier = Modifier.fillMaxSize()) {

                    Row(
                        modifier = Modifier.fillMaxWidth(),
                        horizontalArrangement = Arrangement.Center,
                    ) {
                        Button(onClick = onClosed) {
                            Text("Close")
                        }

                    }
                    HackingScreen(overlayContext = overlayContext)
                }
            }
        }
        return hackingScreen
    }

    private val hackingScreenController = OverlayViewController(
        createOverlayViewHolder = this::createOverlay,
        windowManager = overlayContext.windowManager,
        name = "Hacking Screen",
    )

    override fun disableView() {
        hackingScreenController.disableView()
    }

    override fun enableView() {
        hackingScreenController.enableView()
    }
}

