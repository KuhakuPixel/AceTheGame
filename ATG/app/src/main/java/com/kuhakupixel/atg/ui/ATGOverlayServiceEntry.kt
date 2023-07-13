package com.kuhakupixel.atg.ui

import android.util.Log
import androidx.compose.foundation.Image
import androidx.compose.foundation.clickable
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.material3.MaterialTheme
import androidx.compose.material3.Surface
import androidx.compose.material3.Text
import androidx.compose.ui.Modifier
import androidx.compose.ui.res.painterResource
import com.kuhakupixel.atg.R
import com.kuhakupixel.atg.ui.theme.AtgTheme
import com.kuhakupixel.libuberalles.overlay.OverlayContext
import com.kuhakupixel.libuberalles.overlay.service.OverlayDraggableViewController
import com.kuhakupixel.libuberalles.ui.overlay.service.OverlayServiceEntry

class ATGOverlayServiceEntry : OverlayServiceEntry() {
    private val TRASH_SIZE_DP = 90
    private val OVERLAY_BUTTON_DEFAULT_SIZE_DP = 85

    // todo make private
    lateinit var overlayDraggableButtonController: OverlayDraggableViewController

    lateinit var overlayHackingScreenController: OverlayHackingScreenController

    fun onOverlayButtonClick() {
        // close the overlay button and open hacking menu
        overlayDraggableButtonController.disableView()
        overlayHackingScreenController.enableView()

    }

    var enableOverlayButton = true
    override fun onCreate() {
        super.onCreate()
        // Initialize Overlay Context for drawing dialog and etc
        val overlayContext = OverlayContext(
            windowManager = this.windowManager, service = this,
            applyTheme = { content ->
                // applying theme to overlay view
                AtgTheme(darkTheme = true) {
                    // A surface container using the 'background' color from the theme
                    Surface(
                        modifier = Modifier.fillMaxSize(),
                        color = MaterialTheme.colorScheme.background,
                        content = content
                    )
                }
            },
        )
        overlayDraggableButtonController =
            OverlayDraggableViewController(
                windowManager = windowManager,
                service = this,
                onDestroyed = {
                    Log.d("ATG", "Button Destroyed")
                    this.stopSelf()
                },
                buttonRadiusDp = OVERLAY_BUTTON_DEFAULT_SIZE_DP,
                trashSizeDp = TRASH_SIZE_DP

            ) {
                Image(
                    painter = painterResource(R.drawable.icon),
                    contentDescription = null,
                    modifier = Modifier
                        .fillMaxSize()
                        .clickable {

                            onOverlayButtonClick()
                        },
                )
            }
        overlayHackingScreenController =
            OverlayHackingScreenController(
                overlayContext = overlayContext,
                onClosed = {
                    // open the overlay button and close hacking menu
                    overlayHackingScreenController.disableView()
                    overlayDraggableButtonController.enableView()
                    // reenable again
                    enableOverlayButton = true

                },
            )

    }

    override fun onOverlayServiceStarted() {
        overlayDraggableButtonController.enableView()
    }

}
