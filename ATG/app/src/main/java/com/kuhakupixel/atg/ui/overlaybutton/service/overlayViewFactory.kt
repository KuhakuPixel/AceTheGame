package com.kuhakupixel.atg.ui.overlaybutton.service

import android.app.Service
import android.os.Bundle
import android.view.View
import androidx.compose.runtime.Composable
import androidx.compose.runtime.Recomposer
import androidx.compose.ui.platform.AndroidUiDispatcher
import androidx.compose.ui.platform.ComposeView
import androidx.compose.ui.platform.ViewCompositionStrategy
import androidx.compose.ui.platform.compositionContext
import androidx.lifecycle.Lifecycle
import androidx.lifecycle.LifecycleRegistry
import androidx.lifecycle.ViewModelStore
import androidx.lifecycle.ViewModelStoreOwner
import androidx.lifecycle.setViewTreeLifecycleOwner
import androidx.lifecycle.setViewTreeViewModelStoreOwner
import androidx.savedstate.SavedStateRegistry
import androidx.savedstate.SavedStateRegistryController
import androidx.savedstate.SavedStateRegistryOwner
import androidx.savedstate.setViewTreeSavedStateRegistryOwner
import kotlinx.coroutines.CoroutineScope
import kotlinx.coroutines.launch

// https://gist.github.com/handstandsam/6ecff2f39da72c0b38c07aa80bbb5a2f
fun overlayViewFactory(
    service: Service,
    content: @Composable (composeView: ComposeView) -> Unit = {}
): ComposeView {
    /**
     * https://gist.github.com/handstandsam/6ecff2f39da72c0b38c07aa80bbb5a2f#file-mylifecycleowner-kt
     * https://stackoverflow.com/questions/72379865/jetpack-compose-recomposition-wont-trigger-when-using-custom-lifecycle-viewmod
     */

    // create composable content
    val composeView = ComposeView(context = service)
    composeView.id = View.generateViewId()
    composeView.setContent(content = { content(composeView) })
    // Trick The ComposeView into thinking we are tracking lifecycle
    val viewModelStore = ViewModelStore()
    val lifecycleOwner = MyLifecycleOwner()
    lifecycleOwner.performRestore(null)
    lifecycleOwner.handleLifecycleEvent(Lifecycle.Event.ON_CREATE)
    // =============== need to register ON_START so recomposition will trigger ========
    // https://stackoverflow.com/a/73663798/14073678
    lifecycleOwner.handleLifecycleEvent(Lifecycle.Event.ON_START)
    // =============================================================
    val viewModelStoreOwner = object : ViewModelStoreOwner {
        override val viewModelStore: ViewModelStore
            get() = viewModelStore
    }
    composeView.setViewTreeViewModelStoreOwner(viewModelStoreOwner)
    //
    composeView.setViewTreeLifecycleOwner(lifecycleOwner)
    composeView.setViewTreeSavedStateRegistryOwner(lifecycleOwner)
    return composeView

}

// https://stackoverflow.com/questions/64585547/jetpack-compose-crash-when-adding-view-to-window-manager
private class MyLifecycleOwner : SavedStateRegistryOwner {
    private var mLifecycleRegistry: LifecycleRegistry = LifecycleRegistry(this)
    private var mSavedStateRegistryController: SavedStateRegistryController =
        SavedStateRegistryController.create(this)
    override val lifecycle: Lifecycle
        get() = mLifecycleRegistry
    override val savedStateRegistry: SavedStateRegistry
        get() = mSavedStateRegistryController.savedStateRegistry

    fun handleLifecycleEvent(event: Lifecycle.Event) {
        mLifecycleRegistry.handleLifecycleEvent(event)
    }

    fun performRestore(savedState: Bundle?) {
        mSavedStateRegistryController.performRestore(savedState)
    }
}