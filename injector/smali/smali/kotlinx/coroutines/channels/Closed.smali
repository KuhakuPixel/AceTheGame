.class public final Lkotlinx/coroutines/channels/Closed;
.super Lkotlinx/coroutines/channels/Send;
.source "AbstractChannel.kt"

# interfaces
.implements Lkotlinx/coroutines/channels/ReceiveOrClosed;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lkotlinx/coroutines/channels/Send;",
        "Lkotlinx/coroutines/channels/ReceiveOrClosed<",
        "TE;>;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAbstractChannel.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AbstractChannel.kt\nkotlinx/coroutines/channels/Closed\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,1132:1\n1#2:1133\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0003\n\u0002\u0008\u000c\n\u0002\u0010\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0000\u0018\u0000*\u0006\u0008\u0000\u0010\u0001 \u00002\u00020\u00022\u0008\u0012\u0004\u0012\u0002H\u00010\u0003B\u000f\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0002\u0010\u0006J\u0015\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00028\u0000H\u0016\u00a2\u0006\u0002\u0010\u0014J\u0008\u0010\u0015\u001a\u00020\u0012H\u0016J\u0014\u0010\u0016\u001a\u00020\u00122\n\u0010\u0017\u001a\u0006\u0012\u0002\u0008\u00030\u0000H\u0016J\u0008\u0010\u0018\u001a\u00020\u0019H\u0016J\u001f\u0010\u001a\u001a\u00020\u001b2\u0006\u0010\u0013\u001a\u00028\u00002\u0008\u0010\u001c\u001a\u0004\u0018\u00010\u001dH\u0016\u00a2\u0006\u0002\u0010\u001eJ\u0012\u0010\u001f\u001a\u00020\u001b2\u0008\u0010\u001c\u001a\u0004\u0018\u00010\u001dH\u0016R\u0012\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u00008VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0008\u0010\tR\u001a\u0010\n\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u00008VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u000b\u0010\tR\u0011\u0010\u000c\u001a\u00020\u00058F\u00a2\u0006\u0006\u001a\u0004\u0008\r\u0010\u000eR\u0011\u0010\u000f\u001a\u00020\u00058F\u00a2\u0006\u0006\u001a\u0004\u0008\u0010\u0010\u000e\u00a8\u0006 "
    }
    d2 = {
        "Lkotlinx/coroutines/channels/Closed;",
        "E",
        "Lkotlinx/coroutines/channels/Send;",
        "Lkotlinx/coroutines/channels/ReceiveOrClosed;",
        "closeCause",
        "",
        "(Ljava/lang/Throwable;)V",
        "offerResult",
        "getOfferResult",
        "()Lkotlinx/coroutines/channels/Closed;",
        "pollResult",
        "getPollResult",
        "receiveException",
        "getReceiveException",
        "()Ljava/lang/Throwable;",
        "sendException",
        "getSendException",
        "completeResumeReceive",
        "",
        "value",
        "(Ljava/lang/Object;)V",
        "completeResumeSend",
        "resumeSendClosed",
        "closed",
        "toString",
        "",
        "tryResumeReceive",
        "Lkotlinx/coroutines/internal/Symbol;",
        "otherOp",
        "Lkotlinx/coroutines/internal/LockFreeLinkedListNode$PrepareOp;",
        "(Ljava/lang/Object;Lkotlinx/coroutines/internal/LockFreeLinkedListNode$PrepareOp;)Lkotlinx/coroutines/internal/Symbol;",
        "tryResumeSend",
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
.field public final closeCause:Ljava/lang/Throwable;


# direct methods
.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "closeCause"    # Ljava/lang/Throwable;

    .line 1106
    invoke-direct {p0}, Lkotlinx/coroutines/channels/Send;-><init>()V

    .line 1105
    iput-object p1, p0, Lkotlinx/coroutines/channels/Closed;->closeCause:Ljava/lang/Throwable;

    .line 1104
    return-void
.end method


# virtual methods
.method public completeResumeReceive(Ljava/lang/Object;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .line 1115
    return-void
.end method

.method public completeResumeSend()V
    .locals 0

    .line 1113
    return-void
.end method

.method public bridge synthetic getOfferResult()Ljava/lang/Object;
    .locals 1

    .line 1104
    invoke-virtual {p0}, Lkotlinx/coroutines/channels/Closed;->getOfferResult()Lkotlinx/coroutines/channels/Closed;

    move-result-object v0

    return-object v0
.end method

.method public getOfferResult()Lkotlinx/coroutines/channels/Closed;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/channels/Closed<",
            "TE;>;"
        }
    .end annotation

    .line 1110
    return-object p0
.end method

.method public bridge synthetic getPollResult()Ljava/lang/Object;
    .locals 1

    .line 1104
    invoke-virtual {p0}, Lkotlinx/coroutines/channels/Closed;->getPollResult()Lkotlinx/coroutines/channels/Closed;

    move-result-object v0

    return-object v0
.end method

.method public getPollResult()Lkotlinx/coroutines/channels/Closed;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/channels/Closed<",
            "TE;>;"
        }
    .end annotation

    .line 1111
    return-object p0
.end method

.method public final getReceiveException()Ljava/lang/Throwable;
    .locals 2

    .line 1108
    iget-object v0, p0, Lkotlinx/coroutines/channels/Closed;->closeCause:Ljava/lang/Throwable;

    if-nez v0, :cond_0

    new-instance v0, Lkotlinx/coroutines/channels/ClosedReceiveChannelException;

    const-string v1, "Channel was closed"

    invoke-direct {v0, v1}, Lkotlinx/coroutines/channels/ClosedReceiveChannelException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    :cond_0
    return-object v0
.end method

.method public final getSendException()Ljava/lang/Throwable;
    .locals 2

    .line 1107
    iget-object v0, p0, Lkotlinx/coroutines/channels/Closed;->closeCause:Ljava/lang/Throwable;

    if-nez v0, :cond_0

    new-instance v0, Lkotlinx/coroutines/channels/ClosedSendChannelException;

    const-string v1, "Channel was closed"

    invoke-direct {v0, v1}, Lkotlinx/coroutines/channels/ClosedSendChannelException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    :cond_0
    return-object v0
.end method

.method public resumeSendClosed(Lkotlinx/coroutines/channels/Closed;)V
    .locals 1
    .param p1, "closed"    # Lkotlinx/coroutines/channels/Closed;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/channels/Closed<",
            "*>;)V"
        }
    .end annotation

    .line 1116
    invoke-static {}, Lkotlinx/coroutines/DebugKt;->getASSERTIONS_ENABLED()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1133
    :cond_0
    const/4 v0, 0x0

    .line 1116
    .local v0, "$i$a$-assert-Closed$resumeSendClosed$1":I
    nop

    .end local v0    # "$i$a$-assert-Closed$resumeSendClosed$1":I
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1117
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Closed@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Lkotlinx/coroutines/DebugStringsKt;->getHexAddress(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x5b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lkotlinx/coroutines/channels/Closed;->closeCause:Ljava/lang/Throwable;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public tryResumeReceive(Ljava/lang/Object;Lkotlinx/coroutines/internal/LockFreeLinkedListNode$PrepareOp;)Lkotlinx/coroutines/internal/Symbol;
    .locals 3
    .param p1, "value"    # Ljava/lang/Object;
    .param p2, "otherOp"    # Lkotlinx/coroutines/internal/LockFreeLinkedListNode$PrepareOp;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;",
            "Lkotlinx/coroutines/internal/LockFreeLinkedListNode$PrepareOp;",
            ")",
            "Lkotlinx/coroutines/internal/Symbol;"
        }
    .end annotation

    .line 1114
    sget-object v0, Lkotlinx/coroutines/CancellableContinuationImplKt;->RESUME_TOKEN:Lkotlinx/coroutines/internal/Symbol;

    move-object v1, v0

    .line 1133
    .local v1, "it":Lkotlinx/coroutines/internal/Symbol;
    const/4 v2, 0x0

    .line 1114
    .local v2, "$i$a$-also-Closed$tryResumeReceive$1":I
    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Lkotlinx/coroutines/internal/LockFreeLinkedListNode$PrepareOp;->finishPrepare()V

    .end local v1    # "it":Lkotlinx/coroutines/internal/Symbol;
    .end local v2    # "$i$a$-also-Closed$tryResumeReceive$1":I
    :goto_0
    return-object v0
.end method

.method public tryResumeSend(Lkotlinx/coroutines/internal/LockFreeLinkedListNode$PrepareOp;)Lkotlinx/coroutines/internal/Symbol;
    .locals 3
    .param p1, "otherOp"    # Lkotlinx/coroutines/internal/LockFreeLinkedListNode$PrepareOp;

    .line 1112
    sget-object v0, Lkotlinx/coroutines/CancellableContinuationImplKt;->RESUME_TOKEN:Lkotlinx/coroutines/internal/Symbol;

    move-object v1, v0

    .line 1133
    .local v1, "it":Lkotlinx/coroutines/internal/Symbol;
    const/4 v2, 0x0

    .line 1112
    .local v2, "$i$a$-also-Closed$tryResumeSend$1":I
    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lkotlinx/coroutines/internal/LockFreeLinkedListNode$PrepareOp;->finishPrepare()V

    .end local v1    # "it":Lkotlinx/coroutines/internal/Symbol;
    .end local v2    # "$i$a$-also-Closed$tryResumeSend$1":I
    :goto_0
    return-object v0
.end method
