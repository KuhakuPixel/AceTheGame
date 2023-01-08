.class public final Lkotlinx/coroutines/YieldKt;
.super Ljava/lang/Object;
.source "Yield.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u001a\u0011\u0010\u0000\u001a\u00020\u0001H\u0086@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u0002\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006\u0003"
    }
    d2 = {
        "yield",
        "",
        "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
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


# direct methods
.method public static final yield(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 7
    .param p0, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 31
    move-object v0, p0

    .local v0, "uCont":Lkotlin/coroutines/Continuation;
    const/4 v1, 0x0

    .line 32
    .local v1, "$i$a$-suspendCoroutineUninterceptedOrReturn-YieldKt$yield$2":I
    invoke-interface {v0}, Lkotlin/coroutines/Continuation;->getContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object v2

    .line 33
    .local v2, "context":Lkotlin/coroutines/CoroutineContext;
    invoke-static {v2}, Lkotlinx/coroutines/JobKt;->ensureActive(Lkotlin/coroutines/CoroutineContext;)V

    .line 34
    invoke-static {v0}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->intercepted(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v3

    instance-of v4, v3, Lkotlinx/coroutines/internal/DispatchedContinuation;

    if-eqz v4, :cond_0

    check-cast v3, Lkotlinx/coroutines/internal/DispatchedContinuation;

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    if-nez v3, :cond_1

    sget-object v3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto :goto_3

    .line 35
    .local v3, "cont":Lkotlinx/coroutines/internal/DispatchedContinuation;
    :cond_1
    iget-object v4, v3, Lkotlinx/coroutines/internal/DispatchedContinuation;->dispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    invoke-virtual {v4, v2}, Lkotlinx/coroutines/CoroutineDispatcher;->isDispatchNeeded(Lkotlin/coroutines/CoroutineContext;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 37
    sget-object v4, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v3, v2, v4}, Lkotlinx/coroutines/internal/DispatchedContinuation;->dispatchYield$kotlinx_coroutines_core(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Object;)V

    goto :goto_2

    .line 41
    :cond_2
    new-instance v4, Lkotlinx/coroutines/YieldContext;

    invoke-direct {v4}, Lkotlinx/coroutines/YieldContext;-><init>()V

    .line 42
    .local v4, "yieldContext":Lkotlinx/coroutines/YieldContext;
    move-object v5, v4

    check-cast v5, Lkotlin/coroutines/CoroutineContext;

    invoke-interface {v2, v5}, Lkotlin/coroutines/CoroutineContext;->plus(Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    move-result-object v5

    sget-object v6, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v3, v5, v6}, Lkotlinx/coroutines/internal/DispatchedContinuation;->dispatchYield$kotlinx_coroutines_core(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Object;)V

    .line 44
    iget-boolean v5, v4, Lkotlinx/coroutines/YieldContext;->dispatcherWasUnconfined:Z

    if-eqz v5, :cond_4

    .line 47
    invoke-static {v3}, Lkotlinx/coroutines/internal/DispatchedContinuationKt;->yieldUndispatched(Lkotlinx/coroutines/internal/DispatchedContinuation;)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v5

    goto :goto_1

    :cond_3
    sget-object v5, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    :goto_1
    move-object v3, v5

    goto :goto_3

    .line 51
    .end local v4    # "yieldContext":Lkotlinx/coroutines/YieldContext;
    :cond_4
    :goto_2
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v4

    move-object v3, v4

    .line 31
    .end local v0    # "uCont":Lkotlin/coroutines/Continuation;
    .end local v1    # "$i$a$-suspendCoroutineUninterceptedOrReturn-YieldKt$yield$2":I
    .end local v2    # "context":Lkotlin/coroutines/CoroutineContext;
    .end local v3    # "cont":Lkotlinx/coroutines/internal/DispatchedContinuation;
    :goto_3
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    if-ne v3, v0, :cond_5

    invoke-static {p0}, Lkotlin/coroutines/jvm/internal/DebugProbesKt;->probeCoroutineSuspended(Lkotlin/coroutines/Continuation;)V

    :cond_5
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    if-ne v3, v0, :cond_6

    return-object v3

    :cond_6
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 52
    return-object v0
.end method
