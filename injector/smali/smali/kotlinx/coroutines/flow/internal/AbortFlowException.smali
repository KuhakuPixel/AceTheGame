.class public final Lkotlinx/coroutines/flow/internal/AbortFlowException;
.super Ljava/util/concurrent/CancellationException;
.source "FlowExceptions.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nFlowExceptions.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FlowExceptions.kt\nkotlinx/coroutines/flow/internal/AbortFlowException\n+ 2 ArrayIntrinsics.kt\nkotlin/ArrayIntrinsicsKt\n*L\n1#1,30:1\n26#2:31\n*S KotlinDebug\n*F\n+ 1 FlowExceptions.kt\nkotlinx/coroutines/flow/internal/AbortFlowException\n*L\n17#1:31\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0003\n\u0000\u0008\u0000\u0018\u00002\u00060\u0001j\u0002`\u0002B\u0011\u0012\n\u0010\u0003\u001a\u0006\u0012\u0002\u0008\u00030\u0004\u00a2\u0006\u0002\u0010\u0005J\u0008\u0010\u0008\u001a\u00020\tH\u0016R\u0015\u0010\u0003\u001a\u0006\u0012\u0002\u0008\u00030\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007\u00a8\u0006\n"
    }
    d2 = {
        "Lkotlinx/coroutines/flow/internal/AbortFlowException;",
        "Ljava/util/concurrent/CancellationException;",
        "Lkotlinx/coroutines/CancellationException;",
        "owner",
        "Lkotlinx/coroutines/flow/FlowCollector;",
        "(Lkotlinx/coroutines/flow/FlowCollector;)V",
        "getOwner",
        "()Lkotlinx/coroutines/flow/FlowCollector;",
        "fillInStackTrace",
        "",
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
.field private final owner:Lkotlinx/coroutines/flow/FlowCollector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/FlowCollector<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/flow/FlowCollector;)V
    .locals 1
    .param p1, "owner"    # Lkotlinx/coroutines/flow/FlowCollector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/flow/FlowCollector<",
            "*>;)V"
        }
    .end annotation

    .line 12
    const-string v0, "Flow was aborted, no more elements needed"

    invoke-direct {p0, v0}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    .line 11
    iput-object p1, p0, Lkotlinx/coroutines/flow/internal/AbortFlowException;->owner:Lkotlinx/coroutines/flow/FlowCollector;

    .line 10
    return-void
.end method


# virtual methods
.method public fillInStackTrace()Ljava/lang/Throwable;
    .locals 2

    .line 15
    invoke-static {}, Lkotlinx/coroutines/DebugKt;->getDEBUG()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0}, Ljava/util/concurrent/CancellationException;->fillInStackTrace()Ljava/lang/Throwable;

    move-result-object v0

    return-object v0

    .line 17
    :cond_0
    const/4 v0, 0x0

    .line 31
    .local v0, "$i$f$emptyArray":I
    const/4 v1, 0x0

    new-array v0, v1, [Ljava/lang/StackTraceElement;

    .line 17
    .end local v0    # "$i$f$emptyArray":I
    invoke-virtual {p0, v0}, Lkotlinx/coroutines/flow/internal/AbortFlowException;->setStackTrace([Ljava/lang/StackTraceElement;)V

    .line 18
    move-object v0, p0

    check-cast v0, Ljava/lang/Throwable;

    return-object v0
.end method

.method public final getOwner()Lkotlinx/coroutines/flow/FlowCollector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/flow/FlowCollector<",
            "*>;"
        }
    .end annotation

    .line 11
    iget-object v0, p0, Lkotlinx/coroutines/flow/internal/AbortFlowException;->owner:Lkotlinx/coroutines/flow/FlowCollector;

    return-object v0
.end method
