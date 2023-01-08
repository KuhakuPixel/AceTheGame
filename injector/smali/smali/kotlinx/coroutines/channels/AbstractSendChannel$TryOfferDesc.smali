.class public final Lkotlinx/coroutines/channels/AbstractSendChannel$TryOfferDesc;
.super Lkotlinx/coroutines/internal/LockFreeLinkedListNode$RemoveFirstDesc;
.source "AbstractChannel.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlinx/coroutines/channels/AbstractSendChannel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1c
    name = "TryOfferDesc"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lkotlinx/coroutines/internal/LockFreeLinkedListNode$RemoveFirstDesc<",
        "Lkotlinx/coroutines/channels/ReceiveOrClosed<",
        "-TE;>;>;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAbstractChannel.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AbstractChannel.kt\nkotlinx/coroutines/channels/AbstractSendChannel$TryOfferDesc\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,1132:1\n1#2:1133\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u0008\u0004\u0018\u0000*\u0004\u0008\u0001\u0010\u00012\u001e\u0012\n\u0012\u0008\u0012\u0004\u0012\u0002H\u00010\u00030\u0002j\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u0002H\u00010\u0003`\u0004B\u0015\u0012\u0006\u0010\u0005\u001a\u00028\u0001\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0002\u0010\u0008J\u0012\u0010\n\u001a\u0004\u0018\u00010\u000b2\u0006\u0010\u000c\u001a\u00020\rH\u0014J\u0016\u0010\u000e\u001a\u0004\u0018\u00010\u000b2\n\u0010\u000f\u001a\u00060\u0010j\u0002`\u0011H\u0016R\u0012\u0010\u0005\u001a\u00028\u00018\u0006X\u0087\u0004\u00a2\u0006\u0004\n\u0002\u0010\t\u00a8\u0006\u0012"
    }
    d2 = {
        "Lkotlinx/coroutines/channels/AbstractSendChannel$TryOfferDesc;",
        "E",
        "Lkotlinx/coroutines/internal/LockFreeLinkedListNode$RemoveFirstDesc;",
        "Lkotlinx/coroutines/channels/ReceiveOrClosed;",
        "Lkotlinx/coroutines/internal/RemoveFirstDesc;",
        "element",
        "queue",
        "Lkotlinx/coroutines/internal/LockFreeLinkedListHead;",
        "(Ljava/lang/Object;Lkotlinx/coroutines/internal/LockFreeLinkedListHead;)V",
        "Ljava/lang/Object;",
        "failure",
        "",
        "affected",
        "Lkotlinx/coroutines/internal/LockFreeLinkedListNode;",
        "onPrepare",
        "prepareOp",
        "Lkotlinx/coroutines/internal/LockFreeLinkedListNode$PrepareOp;",
        "Lkotlinx/coroutines/internal/PrepareOp;",
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
.field public final element:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TE;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;Lkotlinx/coroutines/internal/LockFreeLinkedListHead;)V
    .locals 1
    .param p1, "element"    # Ljava/lang/Object;
    .param p2, "queue"    # Lkotlinx/coroutines/internal/LockFreeLinkedListHead;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;",
            "Lkotlinx/coroutines/internal/LockFreeLinkedListHead;",
            ")V"
        }
    .end annotation

    .line 373
    move-object v0, p2

    check-cast v0, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;

    invoke-direct {p0, v0}, Lkotlinx/coroutines/internal/LockFreeLinkedListNode$RemoveFirstDesc;-><init>(Lkotlinx/coroutines/internal/LockFreeLinkedListNode;)V

    .line 371
    iput-object p1, p0, Lkotlinx/coroutines/channels/AbstractSendChannel$TryOfferDesc;->element:Ljava/lang/Object;

    .line 370
    return-void
.end method


# virtual methods
.method protected failure(Lkotlinx/coroutines/internal/LockFreeLinkedListNode;)Ljava/lang/Object;
    .locals 1
    .param p1, "affected"    # Lkotlinx/coroutines/internal/LockFreeLinkedListNode;

    .line 374
    nop

    .line 375
    instance-of v0, p1, Lkotlinx/coroutines/channels/Closed;

    if-eqz v0, :cond_0

    move-object v0, p1

    goto :goto_0

    .line 376
    :cond_0
    instance-of v0, p1, Lkotlinx/coroutines/channels/ReceiveOrClosed;

    if-nez v0, :cond_1

    sget-object v0, Lkotlinx/coroutines/channels/AbstractChannelKt;->OFFER_FAILED:Lkotlinx/coroutines/internal/Symbol;

    goto :goto_0

    .line 377
    :cond_1
    const/4 v0, 0x0

    .line 378
    :goto_0
    return-object v0
.end method

.method public onPrepare(Lkotlinx/coroutines/internal/LockFreeLinkedListNode$PrepareOp;)Ljava/lang/Object;
    .locals 4
    .param p1, "prepareOp"    # Lkotlinx/coroutines/internal/LockFreeLinkedListNode$PrepareOp;

    .line 382
    iget-object v0, p1, Lkotlinx/coroutines/internal/LockFreeLinkedListNode$PrepareOp;->affected:Lkotlinx/coroutines/internal/LockFreeLinkedListNode;

    check-cast v0, Lkotlinx/coroutines/channels/ReceiveOrClosed;

    .line 383
    .local v0, "affected":Lkotlinx/coroutines/channels/ReceiveOrClosed;
    iget-object v1, p0, Lkotlinx/coroutines/channels/AbstractSendChannel$TryOfferDesc;->element:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Lkotlinx/coroutines/channels/ReceiveOrClosed;->tryResumeReceive(Ljava/lang/Object;Lkotlinx/coroutines/internal/LockFreeLinkedListNode$PrepareOp;)Lkotlinx/coroutines/internal/Symbol;

    move-result-object v1

    if-nez v1, :cond_0

    sget-object v1, Lkotlinx/coroutines/internal/LockFreeLinkedList_commonKt;->REMOVE_PREPARED:Ljava/lang/Object;

    return-object v1

    .line 384
    .local v1, "token":Lkotlinx/coroutines/internal/Symbol;
    :cond_0
    sget-object v2, Lkotlinx/coroutines/internal/AtomicKt;->RETRY_ATOMIC:Ljava/lang/Object;

    if-ne v1, v2, :cond_1

    sget-object v2, Lkotlinx/coroutines/internal/AtomicKt;->RETRY_ATOMIC:Ljava/lang/Object;

    return-object v2

    .line 385
    :cond_1
    invoke-static {}, Lkotlinx/coroutines/DebugKt;->getASSERTIONS_ENABLED()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1133
    const/4 v2, 0x0

    .line 385
    .local v2, "$i$a$-assert-AbstractSendChannel$TryOfferDesc$onPrepare$1":I
    sget-object v3, Lkotlinx/coroutines/CancellableContinuationImplKt;->RESUME_TOKEN:Lkotlinx/coroutines/internal/Symbol;

    if-ne v1, v3, :cond_2

    const/4 v3, 0x1

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    .end local v2    # "$i$a$-assert-AbstractSendChannel$TryOfferDesc$onPrepare$1":I
    :goto_0
    if-eqz v3, :cond_3

    goto :goto_1

    :cond_3
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 386
    :cond_4
    :goto_1
    const/4 v2, 0x0

    return-object v2
.end method
