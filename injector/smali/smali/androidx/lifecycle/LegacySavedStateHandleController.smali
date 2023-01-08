.class Landroidx/lifecycle/LegacySavedStateHandleController;
.super Ljava/lang/Object;
.source "LegacySavedStateHandleController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/lifecycle/LegacySavedStateHandleController$OnRecreation;
    }
.end annotation


# static fields
.field static final TAG_SAVED_STATE_HANDLE_CONTROLLER:Ljava/lang/String; = "androidx.lifecycle.savedstate.vm.tag"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static attachHandleIfNeeded(Landroidx/lifecycle/ViewModel;Landroidx/savedstate/SavedStateRegistry;Landroidx/lifecycle/Lifecycle;)V
    .locals 2
    .param p0, "viewModel"    # Landroidx/lifecycle/ViewModel;
    .param p1, "registry"    # Landroidx/savedstate/SavedStateRegistry;
    .param p2, "lifecycle"    # Landroidx/lifecycle/Lifecycle;

    .line 67
    const-string v0, "androidx.lifecycle.savedstate.vm.tag"

    invoke-virtual {p0, v0}, Landroidx/lifecycle/ViewModel;->getTag(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/lifecycle/SavedStateHandleController;

    .line 69
    .local v0, "controller":Landroidx/lifecycle/SavedStateHandleController;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/lifecycle/SavedStateHandleController;->isAttached()Z

    move-result v1

    if-nez v1, :cond_0

    .line 70
    invoke-virtual {v0, p1, p2}, Landroidx/lifecycle/SavedStateHandleController;->attachToLifecycle(Landroidx/savedstate/SavedStateRegistry;Landroidx/lifecycle/Lifecycle;)V

    .line 71
    invoke-static {p1, p2}, Landroidx/lifecycle/LegacySavedStateHandleController;->tryToAddRecreator(Landroidx/savedstate/SavedStateRegistry;Landroidx/lifecycle/Lifecycle;)V

    .line 73
    :cond_0
    return-void
.end method

.method static create(Landroidx/savedstate/SavedStateRegistry;Landroidx/lifecycle/Lifecycle;Ljava/lang/String;Landroid/os/Bundle;)Landroidx/lifecycle/SavedStateHandleController;
    .locals 3
    .param p0, "registry"    # Landroidx/savedstate/SavedStateRegistry;
    .param p1, "lifecycle"    # Landroidx/lifecycle/Lifecycle;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "defaultArgs"    # Landroid/os/Bundle;

    .line 36
    invoke-virtual {p0, p2}, Landroidx/savedstate/SavedStateRegistry;->consumeRestoredStateForKey(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 37
    .local v0, "restoredState":Landroid/os/Bundle;
    invoke-static {v0, p3}, Landroidx/lifecycle/SavedStateHandle;->createHandle(Landroid/os/Bundle;Landroid/os/Bundle;)Landroidx/lifecycle/SavedStateHandle;

    move-result-object v1

    .line 38
    .local v1, "handle":Landroidx/lifecycle/SavedStateHandle;
    new-instance v2, Landroidx/lifecycle/SavedStateHandleController;

    invoke-direct {v2, p2, v1}, Landroidx/lifecycle/SavedStateHandleController;-><init>(Ljava/lang/String;Landroidx/lifecycle/SavedStateHandle;)V

    .line 39
    .local v2, "controller":Landroidx/lifecycle/SavedStateHandleController;
    invoke-virtual {v2, p0, p1}, Landroidx/lifecycle/SavedStateHandleController;->attachToLifecycle(Landroidx/savedstate/SavedStateRegistry;Landroidx/lifecycle/Lifecycle;)V

    .line 40
    invoke-static {p0, p1}, Landroidx/lifecycle/LegacySavedStateHandleController;->tryToAddRecreator(Landroidx/savedstate/SavedStateRegistry;Landroidx/lifecycle/Lifecycle;)V

    .line 41
    return-object v2
.end method

.method private static tryToAddRecreator(Landroidx/savedstate/SavedStateRegistry;Landroidx/lifecycle/Lifecycle;)V
    .locals 2
    .param p0, "registry"    # Landroidx/savedstate/SavedStateRegistry;
    .param p1, "lifecycle"    # Landroidx/lifecycle/Lifecycle;

    .line 76
    invoke-virtual {p1}, Landroidx/lifecycle/Lifecycle;->getCurrentState()Landroidx/lifecycle/Lifecycle$State;

    move-result-object v0

    .line 77
    .local v0, "currentState":Landroidx/lifecycle/Lifecycle$State;
    sget-object v1, Landroidx/lifecycle/Lifecycle$State;->INITIALIZED:Landroidx/lifecycle/Lifecycle$State;

    if-eq v0, v1, :cond_1

    sget-object v1, Landroidx/lifecycle/Lifecycle$State;->STARTED:Landroidx/lifecycle/Lifecycle$State;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/Lifecycle$State;->isAtLeast(Landroidx/lifecycle/Lifecycle$State;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 80
    :cond_0
    new-instance v1, Landroidx/lifecycle/LegacySavedStateHandleController$1;

    invoke-direct {v1, p1, p0}, Landroidx/lifecycle/LegacySavedStateHandleController$1;-><init>(Landroidx/lifecycle/Lifecycle;Landroidx/savedstate/SavedStateRegistry;)V

    invoke-virtual {p1, v1}, Landroidx/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    goto :goto_1

    .line 78
    :cond_1
    :goto_0
    const-class v1, Landroidx/lifecycle/LegacySavedStateHandleController$OnRecreation;

    invoke-virtual {p0, v1}, Landroidx/savedstate/SavedStateRegistry;->runOnNextRecreation(Ljava/lang/Class;)V

    .line 91
    :goto_1
    return-void
.end method
