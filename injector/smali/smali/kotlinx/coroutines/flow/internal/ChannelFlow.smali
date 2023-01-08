.class public abstract Lkotlinx/coroutines/flow/internal/ChannelFlow;
.super Ljava/lang/Object;
.source "ChannelFlow.kt"

# interfaces
.implements Lkotlinx/coroutines/flow/internal/FusibleFlow;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lkotlinx/coroutines/flow/internal/FusibleFlow<",
        "TT;>;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nChannelFlow.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ChannelFlow.kt\nkotlinx/coroutines/flow/internal/ChannelFlow\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,245:1\n1#2:246\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\\\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0006\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\'\u0018\u0000*\u0004\u0008\u0000\u0010\u00012\u0008\u0012\u0004\u0012\u0002H\u00010\u0002B\u001d\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\u0008\u00a2\u0006\u0002\u0010\tJ\n\u0010\u0015\u001a\u0004\u0018\u00010\u0016H\u0014J\u001f\u0010\u0017\u001a\u00020\u000e2\u000c\u0010\u0018\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0019H\u0096@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u001aJ\u001f\u0010\u001b\u001a\u00020\u000e2\u000c\u0010\u001c\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u000cH\u00a4@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u001dJ&\u0010\u001e\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u00002\u0006\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0008H$J\u0010\u0010\u001f\u001a\n\u0012\u0004\u0012\u00028\u0000\u0018\u00010 H\u0016J&\u0010!\u001a\u0008\u0012\u0004\u0012\u00028\u00000 2\u0006\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0008H\u0016J\u0016\u0010\"\u001a\u0008\u0012\u0004\u0012\u00028\u00000#2\u0006\u0010\u001c\u001a\u00020$H\u0016J\u0008\u0010%\u001a\u00020\u0016H\u0016R\u0010\u0010\u0005\u001a\u00020\u00068\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R9\u0010\n\u001a$\u0008\u0001\u0012\n\u0012\u0008\u0012\u0004\u0012\u00028\u00000\u000c\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u000e0\r\u0012\u0006\u0012\u0004\u0018\u00010\u000f0\u000b8@X\u0080\u0004\u00f8\u0001\u0000\u00a2\u0006\u0006\u001a\u0004\u0008\u0010\u0010\u0011R\u0010\u0010\u0003\u001a\u00020\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0007\u001a\u00020\u00088\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0012\u001a\u00020\u00068@X\u0080\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0013\u0010\u0014\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006&"
    }
    d2 = {
        "Lkotlinx/coroutines/flow/internal/ChannelFlow;",
        "T",
        "Lkotlinx/coroutines/flow/internal/FusibleFlow;",
        "context",
        "Lkotlin/coroutines/CoroutineContext;",
        "capacity",
        "",
        "onBufferOverflow",
        "Lkotlinx/coroutines/channels/BufferOverflow;",
        "(Lkotlin/coroutines/CoroutineContext;ILkotlinx/coroutines/channels/BufferOverflow;)V",
        "collectToFun",
        "Lkotlin/Function2;",
        "Lkotlinx/coroutines/channels/ProducerScope;",
        "Lkotlin/coroutines/Continuation;",
        "",
        "",
        "getCollectToFun$kotlinx_coroutines_core",
        "()Lkotlin/jvm/functions/Function2;",
        "produceCapacity",
        "getProduceCapacity$kotlinx_coroutines_core",
        "()I",
        "additionalToStringProps",
        "",
        "collect",
        "collector",
        "Lkotlinx/coroutines/flow/FlowCollector;",
        "(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "collectTo",
        "scope",
        "(Lkotlinx/coroutines/channels/ProducerScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "create",
        "dropChannelOperators",
        "Lkotlinx/coroutines/flow/Flow;",
        "fuse",
        "produceImpl",
        "Lkotlinx/coroutines/channels/ReceiveChannel;",
        "Lkotlinx/coroutines/CoroutineScope;",
        "toString",
        "kotlinx-coroutines-core"
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
.field public final capacity:I

.field public final context:Lkotlin/coroutines/CoroutineContext;

.field public final onBufferOverflow:Lkotlinx/coroutines/channels/BufferOverflow;


# direct methods
.method public constructor <init>(Lkotlin/coroutines/CoroutineContext;ILkotlinx/coroutines/channels/BufferOverflow;)V
    .locals 2
    .param p1, "context"    # Lkotlin/coroutines/CoroutineContext;
    .param p2, "capacity"    # I
    .param p3, "onBufferOverflow"    # Lkotlinx/coroutines/channels/BufferOverflow;

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Lkotlinx/coroutines/flow/internal/ChannelFlow;->context:Lkotlin/coroutines/CoroutineContext;

    .line 50
    iput p2, p0, Lkotlinx/coroutines/flow/internal/ChannelFlow;->capacity:I

    .line 52
    iput-object p3, p0, Lkotlinx/coroutines/flow/internal/ChannelFlow;->onBufferOverflow:Lkotlinx/coroutines/channels/BufferOverflow;

    .line 54
    nop

    .line 55
    invoke-static {}, Lkotlinx/coroutines/DebugKt;->getASSERTIONS_ENABLED()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 246
    const/4 v0, 0x0

    .line 55
    .local v0, "$i$a$-assert-ChannelFlow$1":I
    const/4 v1, -0x1

    if-eq p2, v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .end local v0    # "$i$a$-assert-ChannelFlow$1":I
    :goto_0
    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 56
    :cond_2
    :goto_1
    nop

    .line 46
    return-void
.end method

.method static synthetic collect$suspendImpl(Lkotlinx/coroutines/flow/internal/ChannelFlow;Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2
    .param p0, "this"    # Lkotlinx/coroutines/flow/internal/ChannelFlow;
    .param p1, "collector"    # Lkotlinx/coroutines/flow/FlowCollector;
    .param p2, "$completion"    # Lkotlin/coroutines/Continuation;

    .line 122
    new-instance v0, Lkotlinx/coroutines/flow/internal/ChannelFlow$collect$2;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p0, v1}, Lkotlinx/coroutines/flow/internal/ChannelFlow$collect$2;-><init>(Lkotlinx/coroutines/flow/FlowCollector;Lkotlinx/coroutines/flow/internal/ChannelFlow;Lkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/jvm/functions/Function2;

    invoke-static {v0, p2}, Lkotlinx/coroutines/CoroutineScopeKt;->coroutineScope(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    if-ne v0, v1, :cond_0

    return-object v0

    :cond_0
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 124
    return-object v0
.end method


# virtual methods
.method protected additionalToStringProps()Ljava/lang/String;
    .locals 1

    .line 126
    const/4 v0, 0x0

    return-object v0
.end method

.method public collect(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/flow/FlowCollector<",
            "-TT;>;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-static {p0, p1, p2}, Lkotlinx/coroutines/flow/internal/ChannelFlow;->collect$suspendImpl(Lkotlinx/coroutines/flow/internal/ChannelFlow;Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected abstract collectTo(Lkotlinx/coroutines/channels/ProducerScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/channels/ProducerScope<",
            "-TT;>;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation
.end method

.method protected abstract create(Lkotlin/coroutines/CoroutineContext;ILkotlinx/coroutines/channels/BufferOverflow;)Lkotlinx/coroutines/flow/internal/ChannelFlow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/CoroutineContext;",
            "I",
            "Lkotlinx/coroutines/channels/BufferOverflow;",
            ")",
            "Lkotlinx/coroutines/flow/internal/ChannelFlow<",
            "TT;>;"
        }
    .end annotation
.end method

.method public dropChannelOperators()Lkotlinx/coroutines/flow/Flow;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/flow/Flow<",
            "TT;>;"
        }
    .end annotation

    .line 71
    const/4 v0, 0x0

    return-object v0
.end method

.method public fuse(Lkotlin/coroutines/CoroutineContext;ILkotlinx/coroutines/channels/BufferOverflow;)Lkotlinx/coroutines/flow/Flow;
    .locals 7
    .param p1, "context"    # Lkotlin/coroutines/CoroutineContext;
    .param p2, "capacity"    # I
    .param p3, "onBufferOverflow"    # Lkotlinx/coroutines/channels/BufferOverflow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/CoroutineContext;",
            "I",
            "Lkotlinx/coroutines/channels/BufferOverflow;",
            ")",
            "Lkotlinx/coroutines/flow/Flow<",
            "TT;>;"
        }
    .end annotation

    .line 74
    invoke-static {}, Lkotlinx/coroutines/DebugKt;->getASSERTIONS_ENABLED()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 246
    const/4 v0, 0x0

    .line 74
    .local v0, "$i$a$-assert-ChannelFlow$fuse$1":I
    const/4 v3, -0x1

    if-eq p2, v3, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .end local v0    # "$i$a$-assert-ChannelFlow$fuse$1":I
    :goto_0
    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 76
    :cond_2
    :goto_1
    iget-object v0, p0, Lkotlinx/coroutines/flow/internal/ChannelFlow;->context:Lkotlin/coroutines/CoroutineContext;

    invoke-interface {p1, v0}, Lkotlin/coroutines/CoroutineContext;->plus(Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    move-result-object v0

    .local v0, "newContext":Lkotlin/coroutines/CoroutineContext;
    const/4 v3, 0x0

    .local v3, "newCapacity":I
    const/4 v4, 0x0

    .line 79
    .local v4, "newOverflow":Lkotlinx/coroutines/channels/BufferOverflow;
    sget-object v5, Lkotlinx/coroutines/channels/BufferOverflow;->SUSPEND:Lkotlinx/coroutines/channels/BufferOverflow;

    if-eq p3, v5, :cond_3

    .line 81
    move v1, p2

    .line 82
    .end local v3    # "newCapacity":I
    .local v1, "newCapacity":I
    move-object v2, p3

    .end local v4    # "newOverflow":Lkotlinx/coroutines/channels/BufferOverflow;
    .local v2, "newOverflow":Lkotlinx/coroutines/channels/BufferOverflow;
    goto :goto_8

    .line 85
    .end local v1    # "newCapacity":I
    .end local v2    # "newOverflow":Lkotlinx/coroutines/channels/BufferOverflow;
    .restart local v3    # "newCapacity":I
    .restart local v4    # "newOverflow":Lkotlinx/coroutines/channels/BufferOverflow;
    :cond_3
    nop

    .line 86
    iget v5, p0, Lkotlinx/coroutines/flow/internal/ChannelFlow;->capacity:I

    const/4 v6, -0x3

    if-ne v5, v6, :cond_4

    goto :goto_2

    .line 87
    :cond_4
    if-ne p2, v6, :cond_5

    goto :goto_7

    .line 88
    :cond_5
    const/4 v6, -0x2

    if-ne v5, v6, :cond_6

    .line 85
    :goto_2
    move v5, p2

    goto :goto_7

    .line 89
    :cond_6
    if-ne p2, v6, :cond_7

    goto :goto_7

    .line 92
    :cond_7
    invoke-static {}, Lkotlinx/coroutines/DebugKt;->getASSERTIONS_ENABLED()Z

    move-result v5

    if-eqz v5, :cond_a

    .line 246
    const/4 v5, 0x0

    .line 92
    .local v5, "$i$a$-assert-ChannelFlow$fuse$2":I
    iget v6, p0, Lkotlinx/coroutines/flow/internal/ChannelFlow;->capacity:I

    if-ltz v6, :cond_8

    const/4 v5, 0x1

    goto :goto_3

    :cond_8
    const/4 v5, 0x0

    .end local v5    # "$i$a$-assert-ChannelFlow$fuse$2":I
    :goto_3
    if-eqz v5, :cond_9

    goto :goto_4

    :cond_9
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 93
    :cond_a
    :goto_4
    invoke-static {}, Lkotlinx/coroutines/DebugKt;->getASSERTIONS_ENABLED()Z

    move-result v5

    if-eqz v5, :cond_d

    .line 246
    const/4 v5, 0x0

    .line 93
    .local v5, "$i$a$-assert-ChannelFlow$fuse$3":I
    if-ltz p2, :cond_b

    goto :goto_5

    :cond_b
    const/4 v1, 0x0

    .end local v5    # "$i$a$-assert-ChannelFlow$fuse$3":I
    :goto_5
    if-eqz v1, :cond_c

    goto :goto_6

    :cond_c
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 95
    :cond_d
    :goto_6
    iget v1, p0, Lkotlinx/coroutines/flow/internal/ChannelFlow;->capacity:I

    add-int v5, v1, p2

    .line 96
    .local v5, "sum":I
    if-ltz v5, :cond_e

    goto :goto_7

    :cond_e
    const v1, 0x7fffffff

    const v5, 0x7fffffff

    .line 85
    .end local v5    # "sum":I
    :goto_7
    move v1, v5

    .line 99
    .end local v3    # "newCapacity":I
    .restart local v1    # "newCapacity":I
    iget-object v2, p0, Lkotlinx/coroutines/flow/internal/ChannelFlow;->onBufferOverflow:Lkotlinx/coroutines/channels/BufferOverflow;

    .line 101
    .end local v4    # "newOverflow":Lkotlinx/coroutines/channels/BufferOverflow;
    .restart local v2    # "newOverflow":Lkotlinx/coroutines/channels/BufferOverflow;
    :goto_8
    iget-object v3, p0, Lkotlinx/coroutines/flow/internal/ChannelFlow;->context:Lkotlin/coroutines/CoroutineContext;

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f

    iget v3, p0, Lkotlinx/coroutines/flow/internal/ChannelFlow;->capacity:I

    if-ne v1, v3, :cond_f

    iget-object v3, p0, Lkotlinx/coroutines/flow/internal/ChannelFlow;->onBufferOverflow:Lkotlinx/coroutines/channels/BufferOverflow;

    if-ne v2, v3, :cond_f

    .line 102
    move-object v3, p0

    check-cast v3, Lkotlinx/coroutines/flow/Flow;

    return-object v3

    .line 103
    :cond_f
    invoke-virtual {p0, v0, v1, v2}, Lkotlinx/coroutines/flow/internal/ChannelFlow;->create(Lkotlin/coroutines/CoroutineContext;ILkotlinx/coroutines/channels/BufferOverflow;)Lkotlinx/coroutines/flow/internal/ChannelFlow;

    move-result-object v3

    check-cast v3, Lkotlinx/coroutines/flow/Flow;

    return-object v3
.end method

.method public final getCollectToFun$kotlinx_coroutines_core()Lkotlin/jvm/functions/Function2;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function2<",
            "Lkotlinx/coroutines/channels/ProducerScope<",
            "-TT;>;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 60
    new-instance v0, Lkotlinx/coroutines/flow/internal/ChannelFlow$collectToFun$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lkotlinx/coroutines/flow/internal/ChannelFlow$collectToFun$1;-><init>(Lkotlinx/coroutines/flow/internal/ChannelFlow;Lkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/jvm/functions/Function2;

    return-object v0
.end method

.method public final getProduceCapacity$kotlinx_coroutines_core()I
    .locals 2

    .line 63
    iget v0, p0, Lkotlinx/coroutines/flow/internal/ChannelFlow;->capacity:I

    const/4 v1, -0x3

    if-ne v0, v1, :cond_0

    const/4 v0, -0x2

    :cond_0
    return v0
.end method

.method public produceImpl(Lkotlinx/coroutines/CoroutineScope;)Lkotlinx/coroutines/channels/ReceiveChannel;
    .locals 9
    .param p1, "scope"    # Lkotlinx/coroutines/CoroutineScope;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/CoroutineScope;",
            ")",
            "Lkotlinx/coroutines/channels/ReceiveChannel<",
            "TT;>;"
        }
    .end annotation

    .line 119
    iget-object v1, p0, Lkotlinx/coroutines/flow/internal/ChannelFlow;->context:Lkotlin/coroutines/CoroutineContext;

    invoke-virtual {p0}, Lkotlinx/coroutines/flow/internal/ChannelFlow;->getProduceCapacity$kotlinx_coroutines_core()I

    move-result v2

    iget-object v3, p0, Lkotlinx/coroutines/flow/internal/ChannelFlow;->onBufferOverflow:Lkotlinx/coroutines/channels/BufferOverflow;

    sget-object v4, Lkotlinx/coroutines/CoroutineStart;->ATOMIC:Lkotlinx/coroutines/CoroutineStart;

    invoke-virtual {p0}, Lkotlinx/coroutines/flow/internal/ChannelFlow;->getCollectToFun$kotlinx_coroutines_core()Lkotlin/jvm/functions/Function2;

    move-result-object v6

    const/4 v5, 0x0

    const/16 v7, 0x10

    const/4 v8, 0x0

    move-object v0, p1

    invoke-static/range {v0 .. v8}, Lkotlinx/coroutines/channels/ProduceKt;->produce$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;ILkotlinx/coroutines/channels/BufferOverflow;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/channels/ReceiveChannel;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 11

    .line 130
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 131
    .local v0, "props":Ljava/util/ArrayList;
    invoke-virtual {p0}, Lkotlinx/coroutines/flow/internal/ChannelFlow;->additionalToStringProps()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 246
    .local v1, "it":Ljava/lang/String;
    :cond_0
    const/4 v2, 0x0

    .line 131
    .local v2, "$i$a$-let-ChannelFlow$toString$1":I
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 132
    .end local v1    # "it":Ljava/lang/String;
    .end local v2    # "$i$a$-let-ChannelFlow$toString$1":I
    :goto_0
    iget-object v1, p0, Lkotlinx/coroutines/flow/internal/ChannelFlow;->context:Lkotlin/coroutines/CoroutineContext;

    sget-object v2, Lkotlin/coroutines/EmptyCoroutineContext;->INSTANCE:Lkotlin/coroutines/EmptyCoroutineContext;

    if-eq v1, v2, :cond_1

    iget-object v1, p0, Lkotlinx/coroutines/flow/internal/ChannelFlow;->context:Lkotlin/coroutines/CoroutineContext;

    const-string v2, "context="

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 133
    :cond_1
    iget v1, p0, Lkotlinx/coroutines/flow/internal/ChannelFlow;->capacity:I

    const/4 v2, -0x3

    if-eq v1, v2, :cond_2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "capacity="

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 134
    :cond_2
    iget-object v1, p0, Lkotlinx/coroutines/flow/internal/ChannelFlow;->onBufferOverflow:Lkotlinx/coroutines/channels/BufferOverflow;

    sget-object v2, Lkotlinx/coroutines/channels/BufferOverflow;->SUSPEND:Lkotlinx/coroutines/channels/BufferOverflow;

    if-eq v1, v2, :cond_3

    iget-object v1, p0, Lkotlinx/coroutines/flow/internal/ChannelFlow;->onBufferOverflow:Lkotlinx/coroutines/channels/BufferOverflow;

    const-string v2, "onBufferOverflow="

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 135
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lkotlinx/coroutines/DebugStringsKt;->getClassSimpleName(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x5b

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    check-cast v2, Ljava/lang/Iterable;

    const-string v3, ", "

    check-cast v3, Ljava/lang/CharSequence;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0x3e

    const/4 v10, 0x0

    invoke-static/range {v2 .. v10}, Lkotlin/collections/CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x5d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
