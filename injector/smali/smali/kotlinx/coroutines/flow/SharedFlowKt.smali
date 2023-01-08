.class public final Lkotlinx/coroutines/flow/SharedFlowKt;
.super Ljava/lang/Object;
.source "SharedFlow.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSharedFlow.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SharedFlow.kt\nkotlinx/coroutines/flow/SharedFlowKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,733:1\n1#2:734\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000L\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u0011\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0003\u001a0\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u0002H\u00060\u0005\"\u0004\u0008\u0000\u0010\u00062\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u00082\u0008\u0008\u0002\u0010\t\u001a\u00020\u00082\u0008\u0008\u0002\u0010\n\u001a\u00020\u000b\u001a6\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u0002H\u00060\r\"\u0004\u0008\u0000\u0010\u0006*\u0008\u0012\u0004\u0012\u0002H\u00060\u000e2\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00082\u0006\u0010\n\u001a\u00020\u000bH\u0000\u001a#\u0010\u0012\u001a\u0004\u0018\u00010\u0013*\n\u0012\u0006\u0012\u0004\u0018\u00010\u00130\u00142\u0006\u0010\u0015\u001a\u00020\u0016H\u0002\u00a2\u0006\u0002\u0010\u0017\u001a+\u0010\u0018\u001a\u00020\u0019*\n\u0012\u0006\u0012\u0004\u0018\u00010\u00130\u00142\u0006\u0010\u0015\u001a\u00020\u00162\u0008\u0010\u001a\u001a\u0004\u0018\u00010\u0013H\u0002\u00a2\u0006\u0002\u0010\u001b\"\u0016\u0010\u0000\u001a\u00020\u00018\u0000X\u0081\u0004\u00a2\u0006\u0008\n\u0000\u0012\u0004\u0008\u0002\u0010\u0003\u00a8\u0006\u001c"
    }
    d2 = {
        "NO_VALUE",
        "Lkotlinx/coroutines/internal/Symbol;",
        "getNO_VALUE$annotations",
        "()V",
        "MutableSharedFlow",
        "Lkotlinx/coroutines/flow/MutableSharedFlow;",
        "T",
        "replay",
        "",
        "extraBufferCapacity",
        "onBufferOverflow",
        "Lkotlinx/coroutines/channels/BufferOverflow;",
        "fuseSharedFlow",
        "Lkotlinx/coroutines/flow/Flow;",
        "Lkotlinx/coroutines/flow/SharedFlow;",
        "context",
        "Lkotlin/coroutines/CoroutineContext;",
        "capacity",
        "getBufferAt",
        "",
        "",
        "index",
        "",
        "([Ljava/lang/Object;J)Ljava/lang/Object;",
        "setBufferAt",
        "",
        "item",
        "([Ljava/lang/Object;JLjava/lang/Object;)V",
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
.field public static final NO_VALUE:Lkotlinx/coroutines/internal/Symbol;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 715
    new-instance v0, Lkotlinx/coroutines/internal/Symbol;

    const-string v1, "NO_VALUE"

    invoke-direct {v0, v1}, Lkotlinx/coroutines/internal/Symbol;-><init>(Ljava/lang/String;)V

    sput-object v0, Lkotlinx/coroutines/flow/SharedFlowKt;->NO_VALUE:Lkotlinx/coroutines/internal/Symbol;

    return-void
.end method

.method public static final MutableSharedFlow(IILkotlinx/coroutines/channels/BufferOverflow;)Lkotlinx/coroutines/flow/MutableSharedFlow;
    .locals 3
    .param p0, "replay"    # I
    .param p1, "extraBufferCapacity"    # I
    .param p2, "onBufferOverflow"    # Lkotlinx/coroutines/channels/BufferOverflow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(II",
            "Lkotlinx/coroutines/channels/BufferOverflow;",
            ")",
            "Lkotlinx/coroutines/flow/MutableSharedFlow<",
            "TT;>;"
        }
    .end annotation

    .line 269
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ltz p0, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_7

    .line 270
    if-ltz p1, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    if-eqz v2, :cond_6

    .line 271
    if-gtz p0, :cond_3

    if-gtz p1, :cond_3

    sget-object v2, Lkotlinx/coroutines/channels/BufferOverflow;->SUSPEND:Lkotlinx/coroutines/channels/BufferOverflow;

    if-ne p2, v2, :cond_2

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    :cond_3
    :goto_2
    if-eqz v0, :cond_5

    .line 274
    add-int v0, p0, p1

    .line 275
    .local v0, "bufferCapacity0":I
    if-gez v0, :cond_4

    const v1, 0x7fffffff

    goto :goto_3

    :cond_4
    move v1, v0

    .line 276
    .local v1, "bufferCapacity":I
    :goto_3
    new-instance v2, Lkotlinx/coroutines/flow/SharedFlowImpl;

    invoke-direct {v2, p0, v1, p2}, Lkotlinx/coroutines/flow/SharedFlowImpl;-><init>(IILkotlinx/coroutines/channels/BufferOverflow;)V

    check-cast v2, Lkotlinx/coroutines/flow/MutableSharedFlow;

    return-object v2

    .line 271
    .end local v0    # "bufferCapacity0":I
    .end local v1    # "bufferCapacity":I
    :cond_5
    const/4 v0, 0x0

    .line 272
    .local v0, "$i$a$-require-SharedFlowKt$MutableSharedFlow$3":I
    const-string v1, "replay or extraBufferCapacity must be positive with non-default onBufferOverflow strategy "

    invoke-static {v1, p2}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 271
    .end local v0    # "$i$a$-require-SharedFlowKt$MutableSharedFlow$3":I
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 734
    :cond_6
    const/4 v0, 0x0

    .line 270
    .local v0, "$i$a$-require-SharedFlowKt$MutableSharedFlow$2":I
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "extraBufferCapacity cannot be negative, but was "

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .end local v0    # "$i$a$-require-SharedFlowKt$MutableSharedFlow$2":I
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 734
    :cond_7
    const/4 v0, 0x0

    .line 269
    .local v0, "$i$a$-require-SharedFlowKt$MutableSharedFlow$1":I
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "replay cannot be negative, but was "

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .end local v0    # "$i$a$-require-SharedFlowKt$MutableSharedFlow$1":I
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static synthetic MutableSharedFlow$default(IILkotlinx/coroutines/channels/BufferOverflow;ILjava/lang/Object;)Lkotlinx/coroutines/flow/MutableSharedFlow;
    .locals 1

    .line 264
    and-int/lit8 p4, p3, 0x1

    const/4 v0, 0x0

    if-eqz p4, :cond_0

    .line 265
    const/4 p0, 0x0

    .line 264
    :cond_0
    and-int/lit8 p4, p3, 0x2

    if-eqz p4, :cond_1

    .line 266
    const/4 p1, 0x0

    .line 264
    :cond_1
    and-int/lit8 p3, p3, 0x4

    if-eqz p3, :cond_2

    .line 267
    sget-object p2, Lkotlinx/coroutines/channels/BufferOverflow;->SUSPEND:Lkotlinx/coroutines/channels/BufferOverflow;

    .line 264
    :cond_2
    invoke-static {p0, p1, p2}, Lkotlinx/coroutines/flow/SharedFlowKt;->MutableSharedFlow(IILkotlinx/coroutines/channels/BufferOverflow;)Lkotlinx/coroutines/flow/MutableSharedFlow;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getBufferAt([Ljava/lang/Object;J)Ljava/lang/Object;
    .locals 1
    .param p0, "$receiver"    # [Ljava/lang/Object;
    .param p1, "index"    # J

    .line 1
    invoke-static {p0, p1, p2}, Lkotlinx/coroutines/flow/SharedFlowKt;->getBufferAt([Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic access$setBufferAt([Ljava/lang/Object;JLjava/lang/Object;)V
    .locals 0
    .param p0, "$receiver"    # [Ljava/lang/Object;
    .param p1, "index"    # J
    .param p3, "item"    # Ljava/lang/Object;

    .line 1
    invoke-static {p0, p1, p2, p3}, Lkotlinx/coroutines/flow/SharedFlowKt;->setBufferAt([Ljava/lang/Object;JLjava/lang/Object;)V

    return-void
.end method

.method public static final fuseSharedFlow(Lkotlinx/coroutines/flow/SharedFlow;Lkotlin/coroutines/CoroutineContext;ILkotlinx/coroutines/channels/BufferOverflow;)Lkotlinx/coroutines/flow/Flow;
    .locals 2
    .param p0, "$this$fuseSharedFlow"    # Lkotlinx/coroutines/flow/SharedFlow;
    .param p1, "context"    # Lkotlin/coroutines/CoroutineContext;
    .param p2, "capacity"    # I
    .param p3, "onBufferOverflow"    # Lkotlinx/coroutines/channels/BufferOverflow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlinx/coroutines/flow/SharedFlow<",
            "+TT;>;",
            "Lkotlin/coroutines/CoroutineContext;",
            "I",
            "Lkotlinx/coroutines/channels/BufferOverflow;",
            ")",
            "Lkotlinx/coroutines/flow/Flow<",
            "TT;>;"
        }
    .end annotation

    .line 727
    if-eqz p2, :cond_0

    const/4 v0, -0x3

    if-ne p2, v0, :cond_1

    :cond_0
    sget-object v0, Lkotlinx/coroutines/channels/BufferOverflow;->SUSPEND:Lkotlinx/coroutines/channels/BufferOverflow;

    if-ne p3, v0, :cond_1

    .line 728
    move-object v0, p0

    check-cast v0, Lkotlinx/coroutines/flow/Flow;

    return-object v0

    .line 731
    :cond_1
    new-instance v0, Lkotlinx/coroutines/flow/internal/ChannelFlowOperatorImpl;

    move-object v1, p0

    check-cast v1, Lkotlinx/coroutines/flow/Flow;

    invoke-direct {v0, v1, p1, p2, p3}, Lkotlinx/coroutines/flow/internal/ChannelFlowOperatorImpl;-><init>(Lkotlinx/coroutines/flow/Flow;Lkotlin/coroutines/CoroutineContext;ILkotlinx/coroutines/channels/BufferOverflow;)V

    check-cast v0, Lkotlinx/coroutines/flow/Flow;

    return-object v0
.end method

.method private static final getBufferAt([Ljava/lang/Object;J)Ljava/lang/Object;
    .locals 2
    .param p0, "$this$getBufferAt"    # [Ljava/lang/Object;
    .param p1, "index"    # J

    .line 717
    long-to-int v0, p1

    array-length v1, p0

    add-int/lit8 v1, v1, -0x1

    and-int/2addr v0, v1

    aget-object v0, p0, v0

    return-object v0
.end method

.method public static synthetic getNO_VALUE$annotations()V
    .locals 0

    return-void
.end method

.method private static final setBufferAt([Ljava/lang/Object;JLjava/lang/Object;)V
    .locals 2
    .param p0, "$this$setBufferAt"    # [Ljava/lang/Object;
    .param p1, "index"    # J
    .param p3, "item"    # Ljava/lang/Object;

    .line 718
    long-to-int v0, p1

    array-length v1, p0

    add-int/lit8 v1, v1, -0x1

    and-int/2addr v0, v1

    aput-object p3, p0, v0

    return-void
.end method
