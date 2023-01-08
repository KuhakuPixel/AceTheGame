.class public final Lkotlinx/coroutines/EventLoopKt;
.super Ljava/lang/Object;
.source "EventLoop.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\u001a\u0008\u0010\u0000\u001a\u00020\u0001H\u0000\u001a\u0019\u0010\u0002\u001a\u00020\u00032\u000e\u0008\u0004\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u0005H\u0080\u0008\u001a\u0008\u0010\u0006\u001a\u00020\u0007H\u0007\u00a8\u0006\u0008"
    }
    d2 = {
        "createEventLoop",
        "Lkotlinx/coroutines/EventLoop;",
        "platformAutoreleasePool",
        "",
        "block",
        "Lkotlin/Function0;",
        "processNextEventInCurrentThread",
        "",
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
.method public static final createEventLoop()Lkotlinx/coroutines/EventLoop;
    .locals 2

    .line 25
    new-instance v0, Lkotlinx/coroutines/BlockingEventLoop;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-direct {v0, v1}, Lkotlinx/coroutines/BlockingEventLoop;-><init>(Ljava/lang/Thread;)V

    check-cast v0, Lkotlinx/coroutines/EventLoop;

    return-object v0
.end method

.method public static final platformAutoreleasePool(Lkotlin/jvm/functions/Function0;)V
    .locals 1
    .param p0, "block"    # Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 50
    .local v0, "$i$f$platformAutoreleasePool":I
    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    return-void
.end method

.method public static final processNextEventInCurrentThread()J
    .locals 2

    .line 48
    sget-object v0, Lkotlinx/coroutines/ThreadLocalEventLoop;->INSTANCE:Lkotlinx/coroutines/ThreadLocalEventLoop;

    invoke-virtual {v0}, Lkotlinx/coroutines/ThreadLocalEventLoop;->currentOrNull$kotlinx_coroutines_core()Lkotlinx/coroutines/EventLoop;

    move-result-object v0

    if-nez v0, :cond_0

    const-wide v0, 0x7fffffffffffffffL

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lkotlinx/coroutines/EventLoop;->processNextEvent()J

    move-result-wide v0

    :goto_0
    return-wide v0
.end method
