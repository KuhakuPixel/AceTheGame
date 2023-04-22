package com.kuhakupixel.atg.ui

import androidx.compose.runtime.Composable
import androidx.navigation.NavHostController
import androidx.navigation.compose.NavHost
import androidx.navigation.compose.composable
import com.kuhakupixel.atg.ui.menu.ProcessMenu
import com.kuhakupixel.atg.ui.menu.MemoryMenu
import com.kuhakupixel.atg.ui.menu.SettingsMenu

@Composable
fun BottomNavGraph(navController: NavHostController,globalConf: GlobalConf) {
    NavHost(
        navController = navController,
        startDestination = BottomBarMenu.Process.route
    ) {
        composable(route = BottomBarMenu.Process.route) {
            ProcessMenu(globalConf)
        }
        composable(route = BottomBarMenu.Memory.route) {
            MemoryMenu(globalConf)
        }
        composable(route = BottomBarMenu.Settings.route) {
            SettingsMenu(globalConf)
        }
    }
}