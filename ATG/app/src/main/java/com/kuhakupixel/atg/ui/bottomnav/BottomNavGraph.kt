package com.kuhakupixel.atg.ui.bottomnav

import androidx.compose.runtime.Composable
import androidx.navigation.NavHostController
import androidx.navigation.compose.NavHost
import androidx.navigation.compose.composable

@Composable
fun BottomNavGraph(
    navController: NavHostController,
    menus: List<BottomBarMenu>,
    startDestinationIndex: Int,
) {

    NavHost(
        navController = navController,
        startDestination = menus[startDestinationIndex].route
    ) {
        for (menu: BottomBarMenu in menus) {
            this.composable(route = menu.route) {
                menu.content()
            }
        }
    }
}