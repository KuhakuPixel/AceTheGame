package com.kuhakupixel.atg.ui.bottomnav

import androidx.compose.foundation.layout.RowScope
import androidx.compose.foundation.layout.size
import androidx.compose.material.BottomNavigation
import androidx.compose.material.BottomNavigationItem
import androidx.compose.material.ContentAlpha
import androidx.compose.material3.Icon
import androidx.compose.material3.LocalContentColor
import androidx.compose.material3.MaterialTheme
import androidx.compose.material3.Text
import androidx.compose.runtime.Composable
import androidx.compose.runtime.getValue
import androidx.compose.ui.Modifier
import androidx.compose.ui.graphics.vector.ImageVector
import androidx.compose.ui.res.vectorResource
import androidx.compose.ui.unit.dp
import androidx.compose.ui.unit.sp
import androidx.navigation.NavDestination
import androidx.navigation.NavDestination.Companion.hierarchy
import androidx.navigation.NavGraph.Companion.findStartDestination
import androidx.navigation.NavHostController
import androidx.navigation.compose.currentBackStackEntryAsState

@Composable
fun BottomBar(
    navController: NavHostController,
    menus: List<BottomBarMenu>
) {
    val navBackStackEntry by navController.currentBackStackEntryAsState()
    val currentDestination = navBackStackEntry?.destination

    BottomNavigation(backgroundColor = MaterialTheme.colorScheme.primaryContainer) {
        menus.forEach { menu: BottomBarMenu ->
            AddBottomNavItem(
                rowScope = this,
                screen = menu,
                currentDestination = currentDestination,
                navController = navController
            )
        }
    }
}

@Composable
private fun AddBottomNavItem(
    rowScope: RowScope,
    screen: BottomBarMenu,
    currentDestination: NavDestination?,
    navController: NavHostController
) {
    rowScope.BottomNavigationItem(
        label = {
            Text(text = screen.title, fontSize = 10.sp)
        },
        icon = {
            Icon(
                imageVector = ImageVector.vectorResource(id = screen.iconId),
                contentDescription = "Navigation Icon",
                modifier = Modifier.size(20.dp),
            )

        },

        selected = currentDestination?.hierarchy?.any { navDest: NavDestination ->
            navDest.route == screen.route
        } == true,
        unselectedContentColor = LocalContentColor.current.copy(alpha = ContentAlpha.disabled),
        onClick = {
            navController.navigate(screen.route) {
                // pop every destination up to the starter destination from backstack
                // before we navigate
                // https://developer.android.com/jetpack/compose/navigation#nav-to-composable
                this.popUpTo(navController.graph.findStartDestination().id) {
                    this.inclusive = true
                }
                // Navigate to the destination only if we’re not already on
                // the destination to avoid multiple copies in backstack
                this.launchSingleTop = true
            }
        },
    )
}













