.class public final Landroidx/lifecycle/SavedStateHandle$Companion;
.super Ljava/lang/Object;
.source "SavedStateHandle.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/lifecycle/SavedStateHandle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0002\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u001c\u0010\n\u001a\u00020\u000b2\u0008\u0010\u000c\u001a\u0004\u0018\u00010\r2\u0008\u0010\u000e\u001a\u0004\u0018\u00010\rH\u0007J\u0012\u0010\u000f\u001a\u00020\u00102\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u0001H\u0007R \u0010\u0003\u001a\u0012\u0012\u000e\u0012\u000c\u0012\u0006\u0008\u0001\u0012\u00020\u0001\u0018\u00010\u00050\u0004X\u0082\u0004\u00a2\u0006\u0004\n\u0002\u0010\u0006R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0008X\u0082T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0012"
    }
    d2 = {
        "Landroidx/lifecycle/SavedStateHandle$Companion;",
        "",
        "()V",
        "ACCEPTABLE_CLASSES",
        "",
        "Ljava/lang/Class;",
        "[Ljava/lang/Class;",
        "KEYS",
        "",
        "VALUES",
        "createHandle",
        "Landroidx/lifecycle/SavedStateHandle;",
        "restoredState",
        "Landroid/os/Bundle;",
        "defaultState",
        "validateValue",
        "",
        "value",
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


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 350
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Landroidx/lifecycle/SavedStateHandle$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final createHandle(Landroid/os/Bundle;Landroid/os/Bundle;)Landroidx/lifecycle/SavedStateHandle;
    .locals 7
    .param p1, "restoredState"    # Landroid/os/Bundle;
    .param p2, "defaultState"    # Landroid/os/Bundle;
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 357
    if-nez p1, :cond_2

    .line 358
    if-nez p2, :cond_0

    .line 360
    new-instance v0, Landroidx/lifecycle/SavedStateHandle;

    invoke-direct {v0}, Landroidx/lifecycle/SavedStateHandle;-><init>()V

    goto :goto_1

    .line 362
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    check-cast v0, Ljava/util/Map;

    .line 363
    .local v0, "state":Ljava/util/Map;
    invoke-virtual {p2}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 364
    .local v2, "key":Ljava/lang/String;
    const-string v3, "key"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 366
    .end local v2    # "key":Ljava/lang/String;
    :cond_1
    new-instance v1, Landroidx/lifecycle/SavedStateHandle;

    invoke-direct {v1, v0}, Landroidx/lifecycle/SavedStateHandle;-><init>(Ljava/util/Map;)V

    move-object v0, v1

    .line 358
    .end local v0    # "state":Ljava/util/Map;
    :goto_1
    return-object v0

    .line 373
    :cond_2
    const-string v0, "keys"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 374
    .local v0, "keys":Ljava/util/ArrayList;
    const-string v1, "values"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 375
    .local v1, "values":Ljava/util/ArrayList;
    if-eqz v0, :cond_3

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ne v2, v3, :cond_3

    const/4 v2, 0x1

    goto :goto_2

    :cond_3
    const/4 v2, 0x0

    :goto_2
    if-eqz v2, :cond_6

    .line 378
    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast v2, Ljava/util/Map;

    .line 379
    .local v2, "state":Ljava/util/Map;
    const/4 v3, 0x0

    .local v3, "i":I
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    :goto_3
    if-ge v3, v4, :cond_5

    .line 380
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_4

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v2, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 379
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 380
    :cond_4
    new-instance v4, Ljava/lang/NullPointerException;

    const-string v5, "null cannot be cast to non-null type kotlin.String"

    invoke-direct {v4, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 382
    .end local v3    # "i":I
    :cond_5
    new-instance v3, Landroidx/lifecycle/SavedStateHandle;

    invoke-direct {v3, v2}, Landroidx/lifecycle/SavedStateHandle;-><init>(Ljava/util/Map;)V

    return-object v3

    .line 375
    .end local v2    # "state":Ljava/util/Map;
    :cond_6
    const/4 v2, 0x0

    .line 376
    .local v2, "$i$a$-check-SavedStateHandle$Companion$createHandle$1":I
    nop

    .line 375
    .end local v2    # "$i$a$-check-SavedStateHandle$Companion$createHandle$1":I
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Invalid bundle passed as restored state"

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto :goto_5

    :goto_4
    throw v2

    :goto_5
    goto :goto_4
.end method

.method public final validateValue(Ljava/lang/Object;)Z
    .locals 7
    .param p1, "value"    # Ljava/lang/Object;

    .line 390
    const/4 v0, 0x1

    if-nez p1, :cond_0

    .line 391
    return v0

    .line 393
    :cond_0
    invoke-static {}, Landroidx/lifecycle/SavedStateHandle;->access$getACCEPTABLE_CLASSES$cp()[Ljava/lang/Class;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_2

    aget-object v5, v1, v4

    .line 394
    .local v5, "cl":Ljava/lang/Class;
    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v5, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 395
    return v0

    .line 393
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 398
    .end local v5    # "cl":Ljava/lang/Class;
    :cond_2
    return v3
.end method
