package com.java.atg

import androidx.compose.runtime.Composable
import androidx.navigation.NavHostController
import androidx.navigation.compose.NavHost
import androidx.navigation.compose.composable
import com.java.atg.menu.ProcessMenu
import com.java.atg.menu.MemoryMenu
import com.java.atg.menu.SettingsMenu

@Composable
fun BottomNavGraph(navController: NavHostController,globalConf:GlobalConf) {
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