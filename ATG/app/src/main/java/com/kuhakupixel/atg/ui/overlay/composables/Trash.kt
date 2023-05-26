package com.kuhakupixel.atg.ui.overlay.composables

import androidx.compose.foundation.background
import androidx.compose.foundation.layout.Box
import androidx.compose.foundation.layout.size
import androidx.compose.foundation.shape.CircleShape
import androidx.compose.material.icons.Icons
import androidx.compose.material.icons.filled.Delete
import androidx.compose.material3.Icon
import androidx.compose.runtime.Composable
import androidx.compose.runtime.LaunchedEffect
import androidx.compose.runtime.derivedStateOf
import androidx.compose.runtime.getValue
import androidx.compose.runtime.mutableStateOf
import androidx.compose.runtime.remember
import androidx.compose.runtime.setValue
import androidx.compose.runtime.snapshotFlow
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.draw.clip
import androidx.compose.ui.geometry.Rect
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.layout.boundsInRoot
import androidx.compose.ui.layout.onGloballyPositioned
import androidx.compose.ui.platform.LocalContext
import androidx.compose.ui.unit.dp
import com.kuhakupixel.atg.ui.overlay.OVERLAY_BUTTON_SIZE_DP
import com.kuhakupixel.atg.ui.overlay.TRASH_SIZE_DP
import com.kuhakupixel.atg.ui.overlay.logd
import com.kuhakupixel.atg.ui.overlay.service.OverlayState

@Composable
fun Trash(overlayState: OverlayState) {
  val context = LocalContext.current
  val overlayButtonSizePx = remember {
    val density = context.resources.displayMetrics.density
    OVERLAY_BUTTON_SIZE_DP * density
  }
  var trashRect by remember { mutableStateOf(Rect.Zero) }
  val isTimerDragHoveringTrash = remember {
    derivedStateOf {
      calcTimerIsHoverTrash(overlayState, overlayButtonSizePx, trashRect)
    }
  }
  val iconTint by remember {
    derivedStateOf {
      if (isTimerDragHoveringTrash.value) {
        Color.Red
      } else {
        Color.Black
      }
    }
  }

  Box(
    Modifier
      .size(TRASH_SIZE_DP.dp)
      .clip(CircleShape)
      .background(Color.White.copy(alpha = .5f))
      .onGloballyPositioned {
        trashRect = it.boundsInRoot()
        logd("trashRect, $trashRect")
      },
    contentAlignment = Alignment.Center
  ) {
    Icon(
      Icons.Filled.Delete, "trash", modifier = Modifier
        .size(50.dp), tint = iconTint
    )
  }

// this is wack, but if it works...
  LaunchedEffect(isTimerDragHoveringTrash) {
    snapshotFlow {
      isTimerDragHoveringTrash.value
    }.collect {
      overlayState.isTimerHoverTrash = it
    }
  }
}

fun calcTimerIsHoverTrash(
  overlayState: OverlayState,
  timerSizePx: Float,
  trashRect: Rect
): Boolean {
  val timerCenterX = overlayState.timerOffset.x + (timerSizePx / 2)
  val timerCenterY = overlayState.timerOffset.y + (timerSizePx / 2)
  if (
    timerCenterX < trashRect.left ||
    timerCenterX > trashRect.right ||
    timerCenterY < trashRect.top ||
    timerCenterY > trashRect.bottom
  ) {
    return false
  }
  return true
}