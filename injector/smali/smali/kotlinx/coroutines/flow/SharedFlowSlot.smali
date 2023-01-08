.class public final Lkotlinx/coroutines/flow/SharedFlowSlot;
.super Lkotlinx/coroutines/flow/internal/AbstractSharedFlowSlot;
.source "SharedFlow.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlinx/coroutines/flow/internal/AbstractSharedFlowSlot<",
        "Lkotlinx/coroutines/flow/SharedFlowImpl<",
        "*>;>;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSharedFlow.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SharedFlow.kt\nkotlinx/coroutines/flow/SharedFlowSlot\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,733:1\n1#2:734\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0011\n\u0002\u0008\u0002\u0008\u0000\u0018\u00002\u000c\u0012\u0008\u0012\u0006\u0012\u0002\u0008\u00030\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0014\u0010\t\u001a\u00020\n2\n\u0010\u000b\u001a\u0006\u0012\u0002\u0008\u00030\u0002H\u0016J\'\u0010\u000c\u001a\u0010\u0012\u000c\u0012\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u00050\r2\n\u0010\u000b\u001a\u0006\u0012\u0002\u0008\u00030\u0002H\u0016\u00a2\u0006\u0002\u0010\u000eR\u001a\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0007\u001a\u00020\u00088\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000f"
    }
    d2 = {
        "Lkotlinx/coroutines/flow/SharedFlowSlot;",
        "Lkotlinx/coroutines/flow/internal/AbstractSharedFlowSlot;",
        "Lkotlinx/coroutines/flow/SharedFlowImpl;",
        "()V",
        "cont",
        "Lkotlin/coroutines/Continuation;",
        "",
        "index",
        "",
        "allocateLocked",
        "",
        "flow",
        "freeLocked",
        "",
        "(Lkotlinx/coroutines/flow/SharedFlowImpl;)[Lkotlin/coroutines/Continuation;",
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
.field public cont:Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field public index:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 281
    invoke-direct {p0}, Lkotlinx/coroutines/flow/internal/AbstractSharedFlowSlot;-><init>()V

    .line 283
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lkotlinx/coroutines/flow/SharedFlowSlot;->index:J

    .line 281
    return-void
.end method


# virtual methods
.method public bridge synthetic allocateLocked(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "flow"    # Ljava/lang/Object;

    .line 281
    move-object v0, p1

    check-cast v0, Lkotlinx/coroutines/flow/SharedFlowImpl;

    invoke-virtual {p0, v0}, Lkotlinx/coroutines/flow/SharedFlowSlot;->allocateLocked(Lkotlinx/coroutines/flow/SharedFlowImpl;)Z

    move-result v0

    return v0
.end method

.method public allocateLocked(Lkotlinx/coroutines/flow/SharedFlowImpl;)Z
    .locals 5
    .param p1, "flow"    # Lkotlinx/coroutines/flow/SharedFlowImpl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/flow/SharedFlowImpl<",
            "*>;)Z"
        }
    .end annotation

    .line 289
    iget-wide v0, p0, Lkotlinx/coroutines/flow/SharedFlowSlot;->index:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-ltz v4, :cond_0

    const/4 v0, 0x0

    return v0

    .line 290
    :cond_0
    invoke-virtual {p1}, Lkotlinx/coroutines/flow/SharedFlowImpl;->updateNewCollectorIndexLocked$kotlinx_coroutines_core()J

    move-result-wide v0

    iput-wide v0, p0, Lkotlinx/coroutines/flow/SharedFlowSlot;->index:J

    .line 291
    const/4 v0, 0x1

    return v0
.end method

.method public bridge synthetic freeLocked(Ljava/lang/Object;)[Lkotlin/coroutines/Continuation;
    .locals 1
    .param p1, "flow"    # Ljava/lang/Object;

    .line 281
    move-object v0, p1

    check-cast v0, Lkotlinx/coroutines/flow/SharedFlowImpl;

    invoke-virtual {p0, v0}, Lkotlinx/coroutines/flow/SharedFlowSlot;->freeLocked(Lkotlinx/coroutines/flow/SharedFlowImpl;)[Lkotlin/coroutines/Continuation;

    move-result-object v0

    return-object v0
.end method

.method public freeLocked(Lkotlinx/coroutines/flow/SharedFlowImpl;)[Lkotlin/coroutines/Continuation;
    .locals 6
    .param p1, "flow"    # Lkotlinx/coroutines/flow/SharedFlowImpl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/flow/SharedFlowImpl<",
            "*>;)[",
            "Lkotlin/coroutines/Continuation<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 295
    invoke-static {}, Lkotlinx/coroutines/DebugKt;->getASSERTIONS_ENABLED()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 734
    const/4 v0, 0x0

    .line 295
    .local v0, "$i$a$-assert-SharedFlowSlot$freeLocked$1":I
    iget-wide v1, p0, Lkotlinx/coroutines/flow/SharedFlowSlot;->index:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-ltz v5, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .end local v0    # "$i$a$-assert-SharedFlowSlot$freeLocked$1":I
    :goto_0
    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 296
    :cond_2
    :goto_1
    iget-wide v0, p0, Lkotlinx/coroutines/flow/SharedFlowSlot;->index:J

    .line 297
    .local v0, "oldIndex":J
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lkotlinx/coroutines/flow/SharedFlowSlot;->index:J

    .line 298
    const/4 v2, 0x0

    iput-object v2, p0, Lkotlinx/coroutines/flow/SharedFlowSlot;->cont:Lkotlin/coroutines/Continuation;

    .line 299
    invoke-virtual {p1, v0, v1}, Lkotlinx/coroutines/flow/SharedFlowImpl;->updateCollectorIndexLocked$kotlinx_coroutines_core(J)[Lkotlin/coroutines/Continuation;

    move-result-object v2

    return-object v2
.end method
