.class public final Landroidx/lifecycle/SavedStateViewModelFactory;
.super Landroidx/lifecycle/ViewModelProvider$OnRequeryFactory;
.source "SavedStateViewModelFactory.kt"

# interfaces
.implements Landroidx/lifecycle/ViewModelProvider$Factory;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000Z\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0018\u00002\u00020\u00012\u00020\u0002B\u0007\u0008\u0016\u00a2\u0006\u0002\u0010\u0003B\u0019\u0008\u0016\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0002\u0010\u0008B#\u0008\u0017\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0008\u0010\t\u001a\u0004\u0018\u00010\n\u00a2\u0006\u0002\u0010\u000bJ%\u0010\u0011\u001a\u0002H\u0012\"\u0008\u0008\u0000\u0010\u0012*\u00020\u00132\u000c\u0010\u0014\u001a\u0008\u0012\u0004\u0012\u0002H\u00120\u0015H\u0016\u00a2\u0006\u0002\u0010\u0016J-\u0010\u0011\u001a\u0002H\u0012\"\u0008\u0008\u0000\u0010\u0012*\u00020\u00132\u000c\u0010\u0014\u001a\u0008\u0012\u0004\u0012\u0002H\u00120\u00152\u0006\u0010\u0017\u001a\u00020\u0018H\u0016\u00a2\u0006\u0002\u0010\u0019J+\u0010\u0011\u001a\u0002H\u0012\"\u0008\u0008\u0000\u0010\u0012*\u00020\u00132\u0006\u0010\u001a\u001a\u00020\u001b2\u000c\u0010\u0014\u001a\u0008\u0012\u0004\u0012\u0002H\u00120\u0015\u00a2\u0006\u0002\u0010\u001cJ\u0010\u0010\u001d\u001a\u00020\u001e2\u0006\u0010\u001f\u001a\u00020\u0013H\u0017R\u0010\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\t\u001a\u0004\u0018\u00010\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\u0002X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\r\u001a\u0004\u0018\u00010\u000eX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u000f\u001a\u0004\u0018\u00010\u0010X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006 "
    }
    d2 = {
        "Landroidx/lifecycle/SavedStateViewModelFactory;",
        "Landroidx/lifecycle/ViewModelProvider$OnRequeryFactory;",
        "Landroidx/lifecycle/ViewModelProvider$Factory;",
        "()V",
        "application",
        "Landroid/app/Application;",
        "owner",
        "Landroidx/savedstate/SavedStateRegistryOwner;",
        "(Landroid/app/Application;Landroidx/savedstate/SavedStateRegistryOwner;)V",
        "defaultArgs",
        "Landroid/os/Bundle;",
        "(Landroid/app/Application;Landroidx/savedstate/SavedStateRegistryOwner;Landroid/os/Bundle;)V",
        "factory",
        "lifecycle",
        "Landroidx/lifecycle/Lifecycle;",
        "savedStateRegistry",
        "Landroidx/savedstate/SavedStateRegistry;",
        "create",
        "T",
        "Landroidx/lifecycle/ViewModel;",
        "modelClass",
        "Ljava/lang/Class;",
        "(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;",
        "extras",
        "Landroidx/lifecycle/viewmodel/CreationExtras;",
        "(Ljava/lang/Class;Landroidx/lifecycle/viewmodel/CreationExtras;)Landroidx/lifecycle/ViewModel;",
        "key",
        "",
        "(Ljava/lang/String;Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;",
        "onRequery",
        "",
        "viewModel",
        "lifecycle-viewmodel-savedstate_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x6,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private application:Landroid/app/Application;

.field private defaultArgs:Landroid/os/Bundle;

.field private final factory:Landroidx/lifecycle/ViewModelProvider$Factory;

.field private lifecycle:Landroidx/lifecycle/Lifecycle;

.field private savedStateRegistry:Landroidx/savedstate/SavedStateRegistry;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 58
    invoke-direct {p0}, Landroidx/lifecycle/ViewModelProvider$OnRequeryFactory;-><init>()V

    .line 59
    new-instance v0, Landroidx/lifecycle/ViewModelProvider$AndroidViewModelFactory;

    invoke-direct {v0}, Landroidx/lifecycle/ViewModelProvider$AndroidViewModelFactory;-><init>()V

    check-cast v0, Landroidx/lifecycle/ViewModelProvider$Factory;

    iput-object v0, p0, Landroidx/lifecycle/SavedStateViewModelFactory;->factory:Landroidx/lifecycle/ViewModelProvider$Factory;

    .line 60
    return-void
.end method

.method public constructor <init>(Landroid/app/Application;Landroidx/savedstate/SavedStateRegistryOwner;)V
    .locals 1
    .param p1, "application"    # Landroid/app/Application;
    .param p2, "owner"    # Landroidx/savedstate/SavedStateRegistryOwner;

    const-string v0, "owner"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 76
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroidx/lifecycle/SavedStateViewModelFactory;-><init>(Landroid/app/Application;Landroidx/savedstate/SavedStateRegistryOwner;Landroid/os/Bundle;)V

    return-void
.end method

.method public constructor <init>(Landroid/app/Application;Landroidx/savedstate/SavedStateRegistryOwner;Landroid/os/Bundle;)V
    .locals 1
    .param p1, "application"    # Landroid/app/Application;
    .param p2, "owner"    # Landroidx/savedstate/SavedStateRegistryOwner;
    .param p3, "defaultArgs"    # Landroid/os/Bundle;

    const-string v0, "owner"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 96
    invoke-direct {p0}, Landroidx/lifecycle/ViewModelProvider$OnRequeryFactory;-><init>()V

    .line 97
    invoke-interface {p2}, Landroidx/savedstate/SavedStateRegistryOwner;->getSavedStateRegistry()Landroidx/savedstate/SavedStateRegistry;

    move-result-object v0

    iput-object v0, p0, Landroidx/lifecycle/SavedStateViewModelFactory;->savedStateRegistry:Landroidx/savedstate/SavedStateRegistry;

    .line 98
    invoke-interface {p2}, Landroidx/savedstate/SavedStateRegistryOwner;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object v0

    iput-object v0, p0, Landroidx/lifecycle/SavedStateViewModelFactory;->lifecycle:Landroidx/lifecycle/Lifecycle;

    .line 99
    iput-object p3, p0, Landroidx/lifecycle/SavedStateViewModelFactory;->defaultArgs:Landroid/os/Bundle;

    .line 100
    iput-object p1, p0, Landroidx/lifecycle/SavedStateViewModelFactory;->application:Landroid/app/Application;

    .line 101
    if-eqz p1, :cond_0

    sget-object v0, Landroidx/lifecycle/ViewModelProvider$AndroidViewModelFactory;->Companion:Landroidx/lifecycle/ViewModelProvider$AndroidViewModelFactory$Companion;

    invoke-virtual {v0, p1}, Landroidx/lifecycle/ViewModelProvider$AndroidViewModelFactory$Companion;->getInstance(Landroid/app/Application;)Landroidx/lifecycle/ViewModelProvider$AndroidViewModelFactory;

    move-result-object v0

    check-cast v0, Landroidx/lifecycle/ViewModelProvider$Factory;

    goto :goto_0

    .line 102
    :cond_0
    new-instance v0, Landroidx/lifecycle/ViewModelProvider$AndroidViewModelFactory;

    invoke-direct {v0}, Landroidx/lifecycle/ViewModelProvider$AndroidViewModelFactory;-><init>()V

    check-cast v0, Landroidx/lifecycle/ViewModelProvider$Factory;

    .line 101
    :goto_0
    iput-object v0, p0, Landroidx/lifecycle/SavedStateViewModelFactory;->factory:Landroidx/lifecycle/ViewModelProvider$Factory;

    .line 103
    return-void
.end method


# virtual methods
.method public create(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;
    .locals 2
    .param p1, "modelClass"    # Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroidx/lifecycle/ViewModel;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    const-string v0, "modelClass"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 201
    invoke-virtual {p1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 203
    .local v0, "canonicalName":Ljava/lang/String;
    invoke-virtual {p0, v0, p1}, Landroidx/lifecycle/SavedStateViewModelFactory;->create(Ljava/lang/String;Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object v1

    return-object v1

    .line 202
    .end local v0    # "canonicalName":Ljava/lang/String;
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Local and anonymous classes can not be ViewModels"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public create(Ljava/lang/Class;Landroidx/lifecycle/viewmodel/CreationExtras;)Landroidx/lifecycle/ViewModel;
    .locals 7
    .param p1, "modelClass"    # Ljava/lang/Class;
    .param p2, "extras"    # Landroidx/lifecycle/viewmodel/CreationExtras;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroidx/lifecycle/ViewModel;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Landroidx/lifecycle/viewmodel/CreationExtras;",
            ")TT;"
        }
    .end annotation

    const-string v0, "modelClass"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "extras"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 112
    sget-object v0, Landroidx/lifecycle/ViewModelProvider$NewInstanceFactory;->VIEW_MODEL_KEY:Landroidx/lifecycle/viewmodel/CreationExtras$Key;

    invoke-virtual {p2, v0}, Landroidx/lifecycle/viewmodel/CreationExtras;->get(Landroidx/lifecycle/viewmodel/CreationExtras$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_5

    .line 117
    .local v0, "key":Ljava/lang/String;
    sget-object v1, Landroidx/lifecycle/SavedStateHandleSupport;->SAVED_STATE_REGISTRY_OWNER_KEY:Landroidx/lifecycle/viewmodel/CreationExtras$Key;

    invoke-virtual {p2, v1}, Landroidx/lifecycle/viewmodel/CreationExtras;->get(Landroidx/lifecycle/viewmodel/CreationExtras$Key;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 118
    sget-object v1, Landroidx/lifecycle/SavedStateHandleSupport;->VIEW_MODEL_STORE_OWNER_KEY:Landroidx/lifecycle/viewmodel/CreationExtras$Key;

    invoke-virtual {p2, v1}, Landroidx/lifecycle/viewmodel/CreationExtras;->get(Landroidx/lifecycle/viewmodel/CreationExtras$Key;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 119
    sget-object v1, Landroidx/lifecycle/ViewModelProvider$AndroidViewModelFactory;->APPLICATION_KEY:Landroidx/lifecycle/viewmodel/CreationExtras$Key;

    invoke-virtual {p2, v1}, Landroidx/lifecycle/viewmodel/CreationExtras;->get(Landroidx/lifecycle/viewmodel/CreationExtras$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Application;

    .local v1, "application":Landroid/app/Application;
    const-class v2, Landroidx/lifecycle/AndroidViewModel;

    .line 120
    invoke-virtual {v2, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    .line 121
    .local v2, "isAndroidViewModel":Z
    if-eqz v2, :cond_0

    if-eqz v1, :cond_0

    .line 122
    invoke-static {}, Landroidx/lifecycle/SavedStateViewModelFactoryKt;->access$getANDROID_VIEWMODEL_SIGNATURE$p()Ljava/util/List;

    move-result-object v3

    invoke-static {p1, v3}, Landroidx/lifecycle/SavedStateViewModelFactoryKt;->findMatchingConstructor(Ljava/lang/Class;Ljava/util/List;)Ljava/lang/reflect/Constructor;

    move-result-object v3

    goto :goto_0

    .line 124
    :cond_0
    invoke-static {}, Landroidx/lifecycle/SavedStateViewModelFactoryKt;->access$getVIEWMODEL_SIGNATURE$p()Ljava/util/List;

    move-result-object v3

    invoke-static {p1, v3}, Landroidx/lifecycle/SavedStateViewModelFactoryKt;->findMatchingConstructor(Ljava/lang/Class;Ljava/util/List;)Ljava/lang/reflect/Constructor;

    move-result-object v3

    .line 121
    :goto_0
    nop

    .line 127
    .local v3, "constructor":Ljava/lang/reflect/Constructor;
    if-nez v3, :cond_1

    .line 128
    iget-object v4, p0, Landroidx/lifecycle/SavedStateViewModelFactory;->factory:Landroidx/lifecycle/ViewModelProvider$Factory;

    invoke-interface {v4, p1, p2}, Landroidx/lifecycle/ViewModelProvider$Factory;->create(Ljava/lang/Class;Landroidx/lifecycle/viewmodel/CreationExtras;)Landroidx/lifecycle/ViewModel;

    move-result-object v4

    return-object v4

    .line 130
    :cond_1
    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v2, :cond_2

    if-eqz v1, :cond_2

    .line 131
    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v1, v6, v4

    invoke-static {p2}, Landroidx/lifecycle/SavedStateHandleSupport;->createSavedStateHandle(Landroidx/lifecycle/viewmodel/CreationExtras;)Landroidx/lifecycle/SavedStateHandle;

    move-result-object v4

    aput-object v4, v6, v5

    invoke-static {p1, v3, v6}, Landroidx/lifecycle/SavedStateViewModelFactoryKt;->newInstance(Ljava/lang/Class;Ljava/lang/reflect/Constructor;[Ljava/lang/Object;)Landroidx/lifecycle/ViewModel;

    move-result-object v4

    goto :goto_1

    .line 133
    :cond_2
    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {p2}, Landroidx/lifecycle/SavedStateHandleSupport;->createSavedStateHandle(Landroidx/lifecycle/viewmodel/CreationExtras;)Landroidx/lifecycle/SavedStateHandle;

    move-result-object v6

    aput-object v6, v5, v4

    invoke-static {p1, v3, v5}, Landroidx/lifecycle/SavedStateViewModelFactoryKt;->newInstance(Ljava/lang/Class;Ljava/lang/reflect/Constructor;[Ljava/lang/Object;)Landroidx/lifecycle/ViewModel;

    move-result-object v4

    .line 130
    :goto_1
    nop

    .line 135
    .local v4, "viewModel":Landroidx/lifecycle/ViewModel;
    nop

    .end local v1    # "application":Landroid/app/Application;
    .end local v2    # "isAndroidViewModel":Z
    .end local v3    # "constructor":Ljava/lang/reflect/Constructor;
    .end local v4    # "viewModel":Landroidx/lifecycle/ViewModel;
    goto :goto_2

    .line 137
    :cond_3
    iget-object v1, p0, Landroidx/lifecycle/SavedStateViewModelFactory;->lifecycle:Landroidx/lifecycle/Lifecycle;

    if-eqz v1, :cond_4

    .line 138
    invoke-virtual {p0, v0, p1}, Landroidx/lifecycle/SavedStateViewModelFactory;->create(Ljava/lang/String;Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object v1

    .line 137
    move-object v4, v1

    .line 144
    .restart local v4    # "viewModel":Landroidx/lifecycle/ViewModel;
    nop

    .line 117
    .end local v4    # "viewModel":Landroidx/lifecycle/ViewModel;
    :goto_2
    return-object v4

    .line 140
    :cond_4
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "SAVED_STATE_REGISTRY_OWNER_KEY andVIEW_MODEL_STORE_OWNER_KEY must be provided in the creation extras tosuccessfully create a ViewModel."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 113
    .end local v0    # "key":Ljava/lang/String;
    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 114
    nop

    .line 113
    const-string v1, "VIEW_MODEL_KEY must always be provided by ViewModelProvider"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final create(Ljava/lang/String;Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;
    .locals 8
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "modelClass"    # Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroidx/lifecycle/ViewModel;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "modelClass"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 159
    iget-object v0, p0, Landroidx/lifecycle/SavedStateViewModelFactory;->lifecycle:Landroidx/lifecycle/Lifecycle;

    if-eqz v0, :cond_4

    .line 160
    const-class v0, Landroidx/lifecycle/AndroidViewModel;

    .line 165
    invoke-virtual {v0, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    .line 166
    .local v0, "isAndroidViewModel":Z
    if-eqz v0, :cond_0

    iget-object v1, p0, Landroidx/lifecycle/SavedStateViewModelFactory;->application:Landroid/app/Application;

    if-eqz v1, :cond_0

    .line 167
    invoke-static {}, Landroidx/lifecycle/SavedStateViewModelFactoryKt;->access$getANDROID_VIEWMODEL_SIGNATURE$p()Ljava/util/List;

    move-result-object v1

    invoke-static {p2, v1}, Landroidx/lifecycle/SavedStateViewModelFactoryKt;->findMatchingConstructor(Ljava/lang/Class;Ljava/util/List;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    goto :goto_0

    .line 169
    :cond_0
    invoke-static {}, Landroidx/lifecycle/SavedStateViewModelFactoryKt;->access$getVIEWMODEL_SIGNATURE$p()Ljava/util/List;

    move-result-object v1

    invoke-static {p2, v1}, Landroidx/lifecycle/SavedStateViewModelFactoryKt;->findMatchingConstructor(Ljava/lang/Class;Ljava/util/List;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    .line 166
    :goto_0
    nop

    .line 172
    .local v1, "constructor":Ljava/lang/reflect/Constructor;
    if-nez v1, :cond_2

    .line 175
    iget-object v2, p0, Landroidx/lifecycle/SavedStateViewModelFactory;->application:Landroid/app/Application;

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroidx/lifecycle/SavedStateViewModelFactory;->factory:Landroidx/lifecycle/ViewModelProvider$Factory;

    invoke-interface {v2, p2}, Landroidx/lifecycle/ViewModelProvider$Factory;->create(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object v2

    goto :goto_1

    .line 176
    :cond_1
    sget-object v2, Landroidx/lifecycle/ViewModelProvider$NewInstanceFactory;->Companion:Landroidx/lifecycle/ViewModelProvider$NewInstanceFactory$Companion;

    invoke-virtual {v2}, Landroidx/lifecycle/ViewModelProvider$NewInstanceFactory$Companion;->getInstance()Landroidx/lifecycle/ViewModelProvider$NewInstanceFactory;

    move-result-object v2

    invoke-virtual {v2, p2}, Landroidx/lifecycle/ViewModelProvider$NewInstanceFactory;->create(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object v2

    .line 175
    :goto_1
    return-object v2

    .line 179
    :cond_2
    iget-object v2, p0, Landroidx/lifecycle/SavedStateViewModelFactory;->savedStateRegistry:Landroidx/savedstate/SavedStateRegistry;

    iget-object v3, p0, Landroidx/lifecycle/SavedStateViewModelFactory;->lifecycle:Landroidx/lifecycle/Lifecycle;

    iget-object v4, p0, Landroidx/lifecycle/SavedStateViewModelFactory;->defaultArgs:Landroid/os/Bundle;

    .line 178
    invoke-static {v2, v3, p1, v4}, Landroidx/lifecycle/LegacySavedStateHandleController;->create(Landroidx/savedstate/SavedStateRegistry;Landroidx/lifecycle/Lifecycle;Ljava/lang/String;Landroid/os/Bundle;)Landroidx/lifecycle/SavedStateHandleController;

    move-result-object v2

    .line 181
    .local v2, "controller":Landroidx/lifecycle/SavedStateHandleController;
    const-string v3, "controller.handle"

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v0, :cond_3

    iget-object v6, p0, Landroidx/lifecycle/SavedStateViewModelFactory;->application:Landroid/app/Application;

    if-eqz v6, :cond_3

    .line 182
    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    aput-object v6, v7, v4

    invoke-virtual {v2}, Landroidx/lifecycle/SavedStateHandleController;->getHandle()Landroidx/lifecycle/SavedStateHandle;

    move-result-object v4

    invoke-static {v4, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    aput-object v4, v7, v5

    invoke-static {p2, v1, v7}, Landroidx/lifecycle/SavedStateViewModelFactoryKt;->newInstance(Ljava/lang/Class;Ljava/lang/reflect/Constructor;[Ljava/lang/Object;)Landroidx/lifecycle/ViewModel;

    move-result-object v3

    goto :goto_2

    .line 184
    :cond_3
    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v2}, Landroidx/lifecycle/SavedStateHandleController;->getHandle()Landroidx/lifecycle/SavedStateHandle;

    move-result-object v6

    invoke-static {v6, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    aput-object v6, v5, v4

    invoke-static {p2, v1, v5}, Landroidx/lifecycle/SavedStateViewModelFactoryKt;->newInstance(Ljava/lang/Class;Ljava/lang/reflect/Constructor;[Ljava/lang/Object;)Landroidx/lifecycle/ViewModel;

    move-result-object v3

    .line 181
    :goto_2
    nop

    .line 186
    .local v3, "viewModel":Landroidx/lifecycle/ViewModel;
    nop

    .line 187
    nop

    .line 186
    const-string v4, "androidx.lifecycle.savedstate.vm.tag"

    invoke-virtual {v3, v4, v2}, Landroidx/lifecycle/ViewModel;->setTagIfAbsent(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 189
    return-object v3

    .line 160
    .end local v0    # "isAndroidViewModel":Z
    .end local v1    # "constructor":Ljava/lang/reflect/Constructor;
    .end local v2    # "controller":Landroidx/lifecycle/SavedStateHandleController;
    .end local v3    # "viewModel":Landroidx/lifecycle/ViewModel;
    :cond_4
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    .line 161
    nop

    .line 160
    const-string v1, "SavedStateViewModelFactory constructed with empty constructor supports only calls to create(modelClass: Class<T>, extras: CreationExtras)."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onRequery(Landroidx/lifecycle/ViewModel;)V
    .locals 2
    .param p1, "viewModel"    # Landroidx/lifecycle/ViewModel;

    const-string v0, "viewModel"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 212
    iget-object v0, p0, Landroidx/lifecycle/SavedStateViewModelFactory;->lifecycle:Landroidx/lifecycle/Lifecycle;

    if-eqz v0, :cond_0

    .line 214
    nop

    .line 215
    iget-object v1, p0, Landroidx/lifecycle/SavedStateViewModelFactory;->savedStateRegistry:Landroidx/savedstate/SavedStateRegistry;

    .line 216
    nop

    .line 213
    invoke-static {p1, v1, v0}, Landroidx/lifecycle/LegacySavedStateHandleController;->attachHandleIfNeeded(Landroidx/lifecycle/ViewModel;Landroidx/savedstate/SavedStateRegistry;Landroidx/lifecycle/Lifecycle;)V

    .line 219
    :cond_0
    return-void
.end method
