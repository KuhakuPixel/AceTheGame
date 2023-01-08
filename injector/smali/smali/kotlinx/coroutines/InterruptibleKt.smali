.class public final Lkotlinx/coroutines/InterruptibleKt;
.super Ljava/lang/Object;
.source "Interruptible.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u001a/\u0010\u0005\u001a\u0002H\u0006\"\u0004\u0008\u0000\u0010\u00062\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u00082\u000c\u0010\t\u001a\u0008\u0012\u0004\u0012\u0002H\u00060\nH\u0086@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u000b\u001a)\u0010\u000c\u001a\u0002H\u0006\"\u0004\u0008\u0000\u0010\u00062\u0006\u0010\r\u001a\u00020\u00082\u000c\u0010\t\u001a\u0008\u0012\u0004\u0012\u0002H\u00060\nH\u0002\u00a2\u0006\u0002\u0010\u000e\"\u000e\u0010\u0000\u001a\u00020\u0001X\u0082T\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\u0002\u001a\u00020\u0001X\u0082T\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\u0003\u001a\u00020\u0001X\u0082T\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\u0004\u001a\u00020\u0001X\u0082T\u00a2\u0006\u0002\n\u0000\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006\u000f"
    }
    d2 = {
        "FINISHED",
        "",
        "INTERRUPTED",
        "INTERRUPTING",
        "WORKING",
        "runInterruptible",
        "T",
        "context",
        "Lkotlin/coroutines/CoroutineContext;",
        "block",
        "Lkotlin/Function0;",
        "(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "runInterruptibleInExpectedContext",
        "coroutineContext",
        "(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;",
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
.field private static final FINISHED:I = 0x1

.field private static final INTERRUPTED:I = 0x3

.field private static final INTERRUPTING:I = 0x2

.field private static final WORKING:I


# direct methods
.method public static final synthetic access$runInterruptibleInExpectedContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;
    .locals 1
    .param p0, "coroutineContext"    # Lkotlin/coroutines/CoroutineContext;
    .param p1, "block"    # Lkotlin/jvm/functions/Function0;

    .line 1
    invoke-static {p0, p1}, Lkotlinx/coroutines/InterruptibleKt;->runInterruptibleInExpectedContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static final runInterruptible(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2
    .param p0, "context"    # Lkotlin/coroutines/CoroutineContext;
    .param p1, "block"    # Lkotlin/jvm/functions/Function0;
    .param p2, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/coroutines/CoroutineContext;",
            "Lkotlin/jvm/functions/Function0<",
            "+TT;>;",
            "Lkotlin/coroutines/Continuation<",
            "-TT;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 42
    new-instance v0, Lkotlinx/coroutines/InterruptibleKt$runInterruptible$2;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lkotlinx/coroutines/InterruptibleKt$runInterruptible$2;-><init>(Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/jvm/functions/Function2;

    invoke-static {p0, v0, p2}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    .line 44
    return-object v0
.end method

.method public static synthetic runInterruptible$default(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 39
    and-int/lit8 p3, p3, 0x1

    if-eqz p3, :cond_0

    .line 40
    sget-object p0, Lkotlin/coroutines/EmptyCoroutineContext;->INSTANCE:Lkotlin/coroutines/EmptyCoroutineContext;

    check-cast p0, Lkotlin/coroutines/CoroutineContext;

    .line 39
    :cond_0
    invoke-static {p0, p1, p2}, Lkotlinx/coroutines/InterruptibleKt;->runInterruptible(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private static final runInterruptibleInExpectedContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;
    .locals 3
    .param p0, "coroutineContext"    # Lkotlin/coroutines/CoroutineContext;
    .param p1, "block"    # Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/coroutines/CoroutineContext;",
            "Lkotlin/jvm/functions/Function0<",
            "+TT;>;)TT;"
        }
    .end annotation

    .line 47
    nop

    .line 48
    :try_start_0
    new-instance v0, Lkotlinx/coroutines/ThreadState;

    invoke-static {p0}, Lkotlinx/coroutines/JobKt;->getJob(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/Job;

    move-result-object v1

    invoke-direct {v0, v1}, Lkotlinx/coroutines/ThreadState;-><init>(Lkotlinx/coroutines/Job;)V

    .line 49
    .local v0, "threadState":Lkotlinx/coroutines/ThreadState;
    invoke-virtual {v0}, Lkotlinx/coroutines/ThreadState;->setup()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 50
    nop

    .line 51
    :try_start_1
    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 53
    :try_start_2
    invoke-virtual {v0}, Lkotlinx/coroutines/ThreadState;->clearInterrupt()V

    .line 51
    return-object v1

    .line 52
    :catchall_0
    move-exception v1

    .line 53
    invoke-virtual {v0}, Lkotlinx/coroutines/ThreadState;->clearInterrupt()V

    .end local p0    # "coroutineContext":Lkotlin/coroutines/CoroutineContext;
    .end local p1    # "block":Lkotlin/jvm/functions/Function0;
    throw v1
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    .line 55
    .end local v0    # "threadState":Lkotlinx/coroutines/ThreadState;
    .restart local p0    # "coroutineContext":Lkotlin/coroutines/CoroutineContext;
    .restart local p1    # "block":Lkotlin/jvm/functions/Function0;
    :catch_0
    move-exception v0

    .line 56
    .local v0, "e":Ljava/lang/InterruptedException;
    new-instance v1, Ljava/util/concurrent/CancellationException;

    const-string v2, "Blocking call was interrupted due to parent cancellation"

    invoke-direct {v1, v2}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    move-object v2, v0

    check-cast v2, Ljava/lang/Throwable;

    invoke-virtual {v1, v2}, Ljava/util/concurrent/CancellationException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v1

    throw v1
.end method
