package com.kuhakupixel.atg.ui

import android.util.Log
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.material3.MaterialTheme
import androidx.compose.material3.Surface
import androidx.compose.ui.Modifier
import com.kuhakupixel.atg.ui.theme.AtgTheme
import com.kuhakupixel.libuberalles.overlay.OverlayContext
import com.kuhakupixel.libuberalles.overlay.service.OverlayDraggableButtonController
import com.kuhakupixel.libuberalles.ui.overlay.service.OverlayServiceEntry

class ATGOverlayServiceEntry : OverlayServiceEntry() {
    private val TRASH_SIZE_DP = 90
    private val OVERLAY_BUTTON_DEFAULT_SIZE_DP = 85

    // todo make private
    lateinit var overlayDraggableButtonController: OverlayDraggableButtonController

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
            OverlayDraggableButtonController(
                windowManager = windowManager,
                service = this,
                onClick = {
                    // make sure to not allow double click
                    // to avoid crash
                    if (enableOverlayButton) {
                        onOverlayButtonClick()
                        enableOverlayButton = false
                    }
                },
                onDestroyed = {
                    Log.d("ATG", "Button Destroyed")
                    this.stopSelf()
                },
                buttonRadiusDp = OVERLAY_BUTTON_DEFAULT_SIZE_DP,
                trashSizeDp = TRASH_SIZE_DP

            ) {

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

    override fun onWindowShown() {
        super.onWindowShown()
        overlayDraggableButtonController.enableView()
    }

}