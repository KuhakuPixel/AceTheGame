.class final Lkotlinx/coroutines/flow/internal/SubscriptionCountStateFlow;
.super Lkotlinx/coroutines/flow/SharedFlowImpl;
.source "AbstractSharedFlow.kt"

# interfaces
.implements Lkotlinx/coroutines/flow/StateFlow;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlinx/coroutines/flow/SharedFlowImpl<",
        "Ljava/lang/Integer;",
        ">;",
        "Lkotlinx/coroutines/flow/StateFlow<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAbstractSharedFlow.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AbstractSharedFlow.kt\nkotlinx/coroutines/flow/internal/SubscriptionCountStateFlow\n+ 2 Synchronized.kt\nkotlinx/coroutines/internal/SynchronizedKt\n*L\n1#1,135:1\n20#2:136\n20#2:137\n*S KotlinDebug\n*F\n+ 1 AbstractSharedFlow.kt\nkotlinx/coroutines/flow/internal/SubscriptionCountStateFlow\n*L\n129#1:136\n131#1:137\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u000b\n\u0002\u0008\u0002\u0008\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u00012\u0008\u0012\u0004\u0012\u00020\u00020\u0003B\r\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u00a2\u0006\u0002\u0010\u0005J\u000e\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u0002R\u0014\u0010\u0006\u001a\u00020\u00028VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0007\u0010\u0008\u00a8\u0006\u000c"
    }
    d2 = {
        "Lkotlinx/coroutines/flow/internal/SubscriptionCountStateFlow;",
        "Lkotlinx/coroutines/flow/StateFlow;",
        "",
        "Lkotlinx/coroutines/flow/SharedFlowImpl;",
        "initialValue",
        "(I)V",
        "value",
        "getValue",
        "()Ljava/lang/Integer;",
        "increment",
        "",
        "delta",
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


# direct methods
.method public constructor <init>(I)V
    .locals 3
    .param p1, "initialValue"    # I

    .line 124
    sget-object v0, Lkotlinx/coroutines/channels/BufferOverflow;->DROP_OLDEST:Lkotlinx/coroutines/channels/BufferOverflow;

    const/4 v1, 0x1

    const v2, 0x7fffffff

    invoke-direct {p0, v1, v2, v0}, Lkotlinx/coroutines/flow/SharedFlowImpl;-><init>(IILkotlinx/coroutines/channels/BufferOverflow;)V

    .line 126
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lkotlinx/coroutines/flow/internal/SubscriptionCountStateFlow;->tryEmit(Ljava/lang/Object;)Z

    .line 123
    return-void
.end method


# virtual methods
.method public getValue()Ljava/lang/Integer;
    .locals 3

    .line 129
    const/4 v0, 0x0

    .line 136
    .local v0, "$i$f$synchronized":I
    monitor-enter p0

    const/4 v1, 0x0

    .line 129
    .local v1, "$i$a$-synchronized-SubscriptionCountStateFlow$value$1":I
    :try_start_0
    invoke-virtual {p0}, Lkotlinx/coroutines/flow/internal/SubscriptionCountStateFlow;->getLastReplayedLocked()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    .end local v1    # "$i$a$-synchronized-SubscriptionCountStateFlow$value$1":I
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 136
    nop

    .line 129
    .end local v0    # "$i$f$synchronized":I
    return-object v1

    .restart local v0    # "$i$f$synchronized":I
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public bridge synthetic getValue()Ljava/lang/Object;
    .locals 1

    .line 123
    invoke-virtual {p0}, Lkotlinx/coroutines/flow/internal/SubscriptionCountStateFlow;->getValue()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public final increment(I)Z
    .locals 3
    .param p1, "delta"    # I

    .line 131
    const/4 v0, 0x0

    .line 137
    .local v0, "$i$f$synchronized":I
    monitor-enter p0

    const/4 v1, 0x0

    .line 132
    .local v1, "$i$a$-synchronized-SubscriptionCountStateFlow$increment$1":I
    :try_start_0
    invoke-virtual {p0}, Lkotlinx/coroutines/flow/internal/SubscriptionCountStateFlow;->getLastReplayedLocked()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    add-int/2addr v2, p1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, v2}, Lkotlinx/coroutines/flow/internal/SubscriptionCountStateFlow;->tryEmit(Ljava/lang/Object;)Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v1    # "$i$a$-synchronized-SubscriptionCountStateFlow$increment$1":I
    monitor-exit p0

    .line 137
    nop

    .line 133
    .end local v0    # "$i$f$synchronized":I
    return v2

    .line 132
    .restart local v0    # "$i$f$synchronized":I
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method
