.class final Landroidx/lifecycle/SavedStateHandleController;
.super Ljava/lang/Object;
.source "SavedStateHandleController.java"

# interfaces
.implements Landroidx/lifecycle/LifecycleEventObserver;


# instance fields
.field private final mHandle:Landroidx/lifecycle/SavedStateHandle;

.field private mIsAttached:Z

.field private final mKey:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Landroidx/lifecycle/SavedStateHandle;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "handle"    # Landroidx/lifecycle/SavedStateHandle;

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/lifecycle/SavedStateHandleController;->mIsAttached:Z

    .line 28
    iput-object p1, p0, Landroidx/lifecycle/SavedStateHandleController;->mKey:Ljava/lang/String;

    .line 29
    iput-object p2, p0, Landroidx/lifecycle/SavedStateHandleController;->mHandle:Landroidx/lifecycle/SavedStateHandle;

    .line 30
    return-void
.end method


# virtual methods
.method attachToLifecycle(Landroidx/savedstate/SavedStateRegistry;Landroidx/lifecycle/Lifecycle;)V
    .locals 2
    .param p1, "registry"    # Landroidx/savedstate/SavedStateRegistry;
    .param p2, "lifecycle"    # Landroidx/lifecycle/Lifecycle;

    .line 37
    iget-boolean v0, p0, Landroidx/lifecycle/SavedStateHandleController;->mIsAttached:Z

    if-nez v0, :cond_0

    .line 40
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/lifecycle/SavedStateHandleController;->mIsAttached:Z

    .line 41
    invoke-virtual {p2, p0}, Landroidx/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    .line 42
    iget-object v0, p0, Landroidx/lifecycle/SavedStateHandleController;->mKey:Ljava/lang/String;

    iget-object v1, p0, Landroidx/lifecycle/SavedStateHandleController;->mHandle:Landroidx/lifecycle/SavedStateHandle;

    invoke-virtual {v1}, Landroidx/lifecycle/SavedStateHandle;->savedStateProvider()Landroidx/savedstate/SavedStateRegistry$SavedStateProvider;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroidx/savedstate/SavedStateRegistry;->registerSavedStateProvider(Ljava/lang/String;Landroidx/savedstate/SavedStateRegistry$SavedStateProvider;)V

    .line 43
    return-void

    .line 38
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already attached to lifecycleOwner"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method getHandle()Landroidx/lifecycle/SavedStateHandle;
    .locals 1

    .line 54
    iget-object v0, p0, Landroidx/lifecycle/SavedStateHandleController;->mHandle:Landroidx/lifecycle/SavedStateHandle;

    return-object v0
.end method

.method isAttached()Z
    .locals 1

    .line 33
    iget-boolean v0, p0, Landroidx/lifecycle/SavedStateHandleController;->mIsAttached:Z

    return v0
.end method

.method public onStateChanged(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Lifecycle$Event;)V
    .locals 1
    .param p1, "source"    # Landroidx/lifecycle/LifecycleOwner;
    .param p2, "event"    # Landroidx/lifecycle/Lifecycle$Event;

    .line 47
    sget-object v0, Landroidx/lifecycle/Lifecycle$Event;->ON_DESTROY:Landroidx/lifecycle/Lifecycle$Event;

    if-ne p2, v0, :cond_0

    .line 48
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/lifecycle/SavedStateHandleController;->mIsAttached:Z

    .line 49
    invoke-interface {p1}, Landroidx/lifecycle/LifecycleOwner;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroidx/lifecycle/Lifecycle;->removeObserver(Landroidx/lifecycle/LifecycleObserver;)V

    .line 51
    :cond_0
    return-void
.end method
