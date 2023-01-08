.class public final Landroidx/lifecycle/SavedStateHandlesProvider;
.super Ljava/lang/Object;
.source "SavedStateHandleSupport.kt"

# interfaces
.implements Landroidx/savedstate/SavedStateRegistry$SavedStateProvider;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSavedStateHandleSupport.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SavedStateHandleSupport.kt\nandroidx/lifecycle/SavedStateHandlesProvider\n+ 2 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n*L\n1#1,221:1\n211#2,2:222\n*S KotlinDebug\n*F\n+ 1 SavedStateHandleSupport.kt\nandroidx/lifecycle/SavedStateHandlesProvider\n*L\n146#1:222,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0008\u0000\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\u0010\u0010\u0011\u001a\u0004\u0018\u00010\n2\u0006\u0010\u0012\u001a\u00020\u0013J\u0006\u0010\u0014\u001a\u00020\u0015J\u0008\u0010\u0016\u001a\u00020\nH\u0016R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\t\u001a\u0004\u0018\u00010\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001b\u0010\u000b\u001a\u00020\u000c8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u000f\u0010\u0010\u001a\u0004\u0008\r\u0010\u000e\u00a8\u0006\u0017"
    }
    d2 = {
        "Landroidx/lifecycle/SavedStateHandlesProvider;",
        "Landroidx/savedstate/SavedStateRegistry$SavedStateProvider;",
        "savedStateRegistry",
        "Landroidx/savedstate/SavedStateRegistry;",
        "viewModelStoreOwner",
        "Landroidx/lifecycle/ViewModelStoreOwner;",
        "(Landroidx/savedstate/SavedStateRegistry;Landroidx/lifecycle/ViewModelStoreOwner;)V",
        "restored",
        "",
        "restoredState",
        "Landroid/os/Bundle;",
        "viewModel",
        "Landroidx/lifecycle/SavedStateHandlesVM;",
        "getViewModel",
        "()Landroidx/lifecycle/SavedStateHandlesVM;",
        "viewModel$delegate",
        "Lkotlin/Lazy;",
        "consumeRestoredStateForKey",
        "key",
        "",
        "performRestore",
        "",
        "saveState",
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
.field private restored:Z

.field private restoredState:Landroid/os/Bundle;

.field private final savedStateRegistry:Landroidx/savedstate/SavedStateRegistry;

.field private final viewModel$delegate:Lkotlin/Lazy;


# direct methods
.method public constructor <init>(Landroidx/savedstate/SavedStateRegistry;Landroidx/lifecycle/ViewModelStoreOwner;)V
    .locals 1
    .param p1, "savedStateRegistry"    # Landroidx/savedstate/SavedStateRegistry;
    .param p2, "viewModelStoreOwner"    # Landroidx/lifecycle/ViewModelStoreOwner;

    const-string v0, "savedStateRegistry"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "viewModelStoreOwner"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 127
    iput-object p1, p0, Landroidx/lifecycle/SavedStateHandlesProvider;->savedStateRegistry:Landroidx/savedstate/SavedStateRegistry;

    .line 133
    new-instance v0, Landroidx/lifecycle/SavedStateHandlesProvider$viewModel$2;

    invoke-direct {v0, p2}, Landroidx/lifecycle/SavedStateHandlesProvider$viewModel$2;-><init>(Landroidx/lifecycle/ViewModelStoreOwner;)V

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Landroidx/lifecycle/SavedStateHandlesProvider;->viewModel$delegate:Lkotlin/Lazy;

    .line 126
    return-void
.end method

.method private final getViewModel()Landroidx/lifecycle/SavedStateHandlesVM;
    .locals 1

    .line 133
    iget-object v0, p0, Landroidx/lifecycle/SavedStateHandlesProvider;->viewModel$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/lifecycle/SavedStateHandlesVM;

    return-object v0
.end method


# virtual methods
.method public final consumeRestoredStateForKey(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 7
    .param p1, "key"    # Ljava/lang/String;

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 176
    invoke-virtual {p0}, Landroidx/lifecycle/SavedStateHandlesProvider;->performRestore()V

    .line 177
    iget-object v0, p0, Landroidx/lifecycle/SavedStateHandlesProvider;->restoredState:Landroid/os/Bundle;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    move-object v2, v0

    .local v2, "it":Landroid/os/Bundle;
    const/4 v3, 0x0

    .line 178
    .local v3, "$i$a$-also-SavedStateHandlesProvider$consumeRestoredStateForKey$1":I
    iget-object v4, p0, Landroidx/lifecycle/SavedStateHandlesProvider;->restoredState:Landroid/os/Bundle;

    if-eqz v4, :cond_1

    invoke-virtual {v4, p1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 179
    :cond_1
    iget-object v4, p0, Landroidx/lifecycle/SavedStateHandlesProvider;->restoredState:Landroid/os/Bundle;

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v4, :cond_2

    invoke-virtual {v4}, Landroid/os/Bundle;->isEmpty()Z

    move-result v4

    if-ne v4, v5, :cond_2

    goto :goto_1

    :cond_2
    const/4 v5, 0x0

    :goto_1
    if-eqz v5, :cond_3

    .line 180
    iput-object v1, p0, Landroidx/lifecycle/SavedStateHandlesProvider;->restoredState:Landroid/os/Bundle;

    .line 182
    :cond_3
    nop

    .line 177
    .end local v2    # "it":Landroid/os/Bundle;
    .end local v3    # "$i$a$-also-SavedStateHandlesProvider$consumeRestoredStateForKey$1":I
    return-object v0
.end method

.method public final performRestore()V
    .locals 2

    .line 162
    iget-boolean v0, p0, Landroidx/lifecycle/SavedStateHandlesProvider;->restored:Z

    if-nez v0, :cond_0

    .line 163
    iget-object v0, p0, Landroidx/lifecycle/SavedStateHandlesProvider;->savedStateRegistry:Landroidx/savedstate/SavedStateRegistry;

    const-string v1, "androidx.lifecycle.internal.SavedStateHandlesProvider"

    invoke-virtual {v0, v1}, Landroidx/savedstate/SavedStateRegistry;->consumeRestoredStateForKey(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Landroidx/lifecycle/SavedStateHandlesProvider;->restoredState:Landroid/os/Bundle;

    .line 164
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/lifecycle/SavedStateHandlesProvider;->restored:Z

    .line 168
    invoke-direct {p0}, Landroidx/lifecycle/SavedStateHandlesProvider;->getViewModel()Landroidx/lifecycle/SavedStateHandlesVM;

    .line 170
    :cond_0
    return-void
.end method

.method public saveState()Landroid/os/Bundle;
    .locals 12

    .line 138
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    move-object v1, v0

    .local v1, "$this$saveState_u24lambda_u2d1":Landroid/os/Bundle;
    const/4 v2, 0x0

    .line 141
    .local v2, "$i$a$-apply-SavedStateHandlesProvider$saveState$1":I
    iget-object v3, p0, Landroidx/lifecycle/SavedStateHandlesProvider;->restoredState:Landroid/os/Bundle;

    if-eqz v3, :cond_0

    .line 142
    invoke-virtual {v1, v3}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 146
    :cond_0
    invoke-direct {p0}, Landroidx/lifecycle/SavedStateHandlesProvider;->getViewModel()Landroidx/lifecycle/SavedStateHandlesVM;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/lifecycle/SavedStateHandlesVM;->getHandles()Ljava/util/Map;

    move-result-object v3

    .local v3, "$this$forEach$iv":Ljava/util/Map;
    const/4 v4, 0x0

    .line 222
    .local v4, "$i$f$forEach":I
    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .local v6, "element$iv":Ljava/util/Map$Entry;
    const/4 v7, 0x0

    .line 146
    .local v7, "$i$a$-forEach-SavedStateHandlesProvider$saveState$1$1":I
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .local v8, "key":Ljava/lang/String;
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroidx/lifecycle/SavedStateHandle;

    .line 147
    .local v9, "handle":Landroidx/lifecycle/SavedStateHandle;
    invoke-virtual {v9}, Landroidx/lifecycle/SavedStateHandle;->savedStateProvider()Landroidx/savedstate/SavedStateRegistry$SavedStateProvider;

    move-result-object v10

    invoke-interface {v10}, Landroidx/savedstate/SavedStateRegistry$SavedStateProvider;->saveState()Landroid/os/Bundle;

    move-result-object v10

    .line 148
    .local v10, "savedState":Landroid/os/Bundle;
    sget-object v11, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    invoke-static {v10, v11}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_1

    .line 149
    invoke-virtual {v1, v8, v10}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 151
    :cond_1
    nop

    .end local v6    # "element$iv":Ljava/util/Map$Entry;
    .end local v7    # "$i$a$-forEach-SavedStateHandlesProvider$saveState$1$1":I
    .end local v8    # "key":Ljava/lang/String;
    .end local v9    # "handle":Landroidx/lifecycle/SavedStateHandle;
    .end local v10    # "savedState":Landroid/os/Bundle;
    goto :goto_0

    .line 223
    :cond_2
    nop

    .line 152
    .end local v3    # "$this$forEach$iv":Ljava/util/Map;
    .end local v4    # "$i$f$forEach":I
    nop

    .line 138
    .end local v1    # "$this$saveState_u24lambda_u2d1":Landroid/os/Bundle;
    .end local v2    # "$i$a$-apply-SavedStateHandlesProvider$saveState$1":I
    nop

    .line 152
    move-object v1, v0

    .local v1, "it":Landroid/os/Bundle;
    const/4 v2, 0x0

    .line 154
    .local v2, "$i$a$-also-SavedStateHandlesProvider$saveState$2":I
    const/4 v3, 0x0

    iput-boolean v3, p0, Landroidx/lifecycle/SavedStateHandlesProvider;->restored:Z

    .line 155
    nop

    .line 152
    .end local v1    # "it":Landroid/os/Bundle;
    .end local v2    # "$i$a$-also-SavedStateHandlesProvider$saveState$2":I
    nop

    .line 138
    return-object v0
.end method
