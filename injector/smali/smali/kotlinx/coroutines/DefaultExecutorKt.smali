.class public final Lkotlinx/coroutines/DefaultExecutorKt;
.super Ljava/lang/Object;
.source "DefaultExecutor.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0002\u001a\u0008\u0010\u0006\u001a\u00020\u0001H\u0002\"\u0014\u0010\u0000\u001a\u00020\u0001X\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0002\u0010\u0003\"\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0007"
    }
    d2 = {
        "DefaultDelay",
        "Lkotlinx/coroutines/Delay;",
        "getDefaultDelay",
        "()Lkotlinx/coroutines/Delay;",
        "defaultMainDelayOptIn",
        "",
        "initializeDefaultDelay",
        "kotlinx-coroutines-core"
    }
    k = 0x2
    mv = {
        0x1,
        0x6,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field private static final DefaultDelay:Lkotlinx/coroutines/Delay;

.field private static final defaultMainDelayOptIn:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 11
    const-string v0, "kotlinx.coroutines.main.delay"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lkotlinx/coroutines/internal/SystemPropsKt;->systemProp(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lkotlinx/coroutines/DefaultExecutorKt;->defaultMainDelayOptIn:Z

    .line 13
    invoke-static {}, Lkotlinx/coroutines/DefaultExecutorKt;->initializeDefaultDelay()Lkotlinx/coroutines/Delay;

    move-result-object v0

    sput-object v0, Lkotlinx/coroutines/DefaultExecutorKt;->DefaultDelay:Lkotlinx/coroutines/Delay;

    return-void
.end method

.method public static final getDefaultDelay()Lkotlinx/coroutines/Delay;
    .locals 1

    .line 13
    sget-object v0, Lkotlinx/coroutines/DefaultExecutorKt;->DefaultDelay:Lkotlinx/coroutines/Delay;

    return-object v0
.end method

.method private static final initializeDefaultDelay()Lkotlinx/coroutines/Delay;
    .locals 2

    .line 17
    sget-boolean v0, Lkotlinx/coroutines/DefaultExecutorKt;->defaultMainDelayOptIn:Z

    if-nez v0, :cond_0

    sget-object v0, Lkotlinx/coroutines/DefaultExecutor;->INSTANCE:Lkotlinx/coroutines/DefaultExecutor;

    check-cast v0, Lkotlinx/coroutines/Delay;

    return-object v0

    .line 18
    :cond_0
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getMain()Lkotlinx/coroutines/MainCoroutineDispatcher;

    move-result-object v0

    .line 24
    .local v0, "main":Lkotlinx/coroutines/MainCoroutineDispatcher;
    invoke-static {v0}, Lkotlinx/coroutines/internal/MainDispatchersKt;->isMissing(Lkotlinx/coroutines/MainCoroutineDispatcher;)Z

    move-result v1

    if-nez v1, :cond_2

    instance-of v1, v0, Lkotlinx/coroutines/Delay;

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    move-object v1, v0

    check-cast v1, Lkotlinx/coroutines/Delay;

    goto :goto_1

    :cond_2
    :goto_0
    sget-object v1, Lkotlinx/coroutines/DefaultExecutor;->INSTANCE:Lkotlinx/coroutines/DefaultExecutor;

    check-cast v1, Lkotlinx/coroutines/Delay;

    :goto_1
    return-object v1
.end method
