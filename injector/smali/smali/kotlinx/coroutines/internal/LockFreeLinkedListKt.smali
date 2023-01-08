.class public final Lkotlinx/coroutines/internal/LockFreeLinkedListKt;
.super Ljava/lang/Object;
.source "LockFreeLinkedList.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00008\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\u0005\n\u0002\u0010\u0008\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u001a\u0010\u0010\u0010\u001a\u00060\u0011j\u0002`\u0012*\u00020\u0001H\u0001\"\u001c\u0010\u0000\u001a\u00020\u00018\u0000X\u0081\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008\u0002\u0010\u0003\u001a\u0004\u0008\u0004\u0010\u0005\"\u0016\u0010\u0006\u001a\u00020\u00078\u0000X\u0081T\u00a2\u0006\u0008\n\u0000\u0012\u0004\u0008\u0008\u0010\u0003\"\u001c\u0010\t\u001a\u00020\u00018\u0000X\u0081\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008\n\u0010\u0003\u001a\u0004\u0008\u000b\u0010\u0005\"\u0016\u0010\u000c\u001a\u00020\u00078\u0000X\u0081T\u00a2\u0006\u0008\n\u0000\u0012\u0004\u0008\r\u0010\u0003\"\u0016\u0010\u000e\u001a\u00020\u00078\u0000X\u0081T\u00a2\u0006\u0008\n\u0000\u0012\u0004\u0008\u000f\u0010\u0003*\n\u0010\u0013\"\u00020\u00142\u00020\u0014*\u001c\u0010\u0015\u001a\u0004\u0008\u0000\u0010\u0016\"\u0008\u0012\u0004\u0012\u0002H\u00160\u00172\u0008\u0012\u0004\u0012\u0002H\u00160\u0017*\u000c\u0008\u0002\u0010\u0018\"\u00020\u00112\u00020\u0011*\n\u0010\u0019\"\u00020\u001a2\u00020\u001a*\u001c\u0010\u001b\u001a\u0004\u0008\u0000\u0010\u0016\"\u0008\u0012\u0004\u0012\u0002H\u00160\u001c2\u0008\u0012\u0004\u0012\u0002H\u00160\u001c\u00a8\u0006\u001d"
    }
    d2 = {
        "CONDITION_FALSE",
        "",
        "getCONDITION_FALSE$annotations",
        "()V",
        "getCONDITION_FALSE",
        "()Ljava/lang/Object;",
        "FAILURE",
        "",
        "getFAILURE$annotations",
        "LIST_EMPTY",
        "getLIST_EMPTY$annotations",
        "getLIST_EMPTY",
        "SUCCESS",
        "getSUCCESS$annotations",
        "UNDECIDED",
        "getUNDECIDED$annotations",
        "unwrap",
        "Lkotlinx/coroutines/internal/LockFreeLinkedListNode;",
        "Lkotlinx/coroutines/internal/Node;",
        "AbstractAtomicDesc",
        "Lkotlinx/coroutines/internal/LockFreeLinkedListNode$AbstractAtomicDesc;",
        "AddLastDesc",
        "T",
        "Lkotlinx/coroutines/internal/LockFreeLinkedListNode$AddLastDesc;",
        "Node",
        "PrepareOp",
        "Lkotlinx/coroutines/internal/LockFreeLinkedListNode$PrepareOp;",
        "RemoveFirstDesc",
        "Lkotlinx/coroutines/internal/LockFreeLinkedListNode$RemoveFirstDesc;",
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
.field private static final CONDITION_FALSE:Ljava/lang/Object;

.field public static final FAILURE:I = 0x2

.field private static final LIST_EMPTY:Ljava/lang/Object;

.field public static final SUCCESS:I = 0x1

.field public static final UNDECIDED:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 26
    new-instance v0, Lkotlinx/coroutines/internal/Symbol;

    const-string v1, "CONDITION_FALSE"

    invoke-direct {v0, v1}, Lkotlinx/coroutines/internal/Symbol;-><init>(Ljava/lang/String;)V

    sput-object v0, Lkotlinx/coroutines/internal/LockFreeLinkedListKt;->CONDITION_FALSE:Ljava/lang/Object;

    .line 30
    new-instance v0, Lkotlinx/coroutines/internal/Symbol;

    const-string v1, "LIST_EMPTY"

    invoke-direct {v0, v1}, Lkotlinx/coroutines/internal/Symbol;-><init>(Ljava/lang/String;)V

    sput-object v0, Lkotlinx/coroutines/internal/LockFreeLinkedListKt;->LIST_EMPTY:Ljava/lang/Object;

    return-void
.end method

.method public static final getCONDITION_FALSE()Ljava/lang/Object;
    .locals 1

    .line 26
    sget-object v0, Lkotlinx/coroutines/internal/LockFreeLinkedListKt;->CONDITION_FALSE:Ljava/lang/Object;

    return-object v0
.end method

.method public static synthetic getCONDITION_FALSE$annotations()V
    .locals 0

    return-void
.end method

.method public static synthetic getFAILURE$annotations()V
    .locals 0

    return-void
.end method

.method public static final getLIST_EMPTY()Ljava/lang/Object;
    .locals 1

    .line 30
    sget-object v0, Lkotlinx/coroutines/internal/LockFreeLinkedListKt;->LIST_EMPTY:Ljava/lang/Object;

    return-object v0
.end method

.method public static synthetic getLIST_EMPTY$annotations()V
    .locals 0

    return-void
.end method

.method public static synthetic getSUCCESS$annotations()V
    .locals 0

    return-void
.end method

.method public static synthetic getUNDECIDED$annotations()V
    .locals 0

    return-void
.end method

.method public static final unwrap(Ljava/lang/Object;)Lkotlinx/coroutines/internal/LockFreeLinkedListNode;
    .locals 2
    .param p0, "$this$unwrap"    # Ljava/lang/Object;

    .line 631
    instance-of v0, p0, Lkotlinx/coroutines/internal/Removed;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Lkotlinx/coroutines/internal/Removed;

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    iget-object v1, v0, Lkotlinx/coroutines/internal/Removed;->ref:Lkotlinx/coroutines/internal/LockFreeLinkedListNode;

    :goto_1
    if-nez v1, :cond_2

    move-object v1, p0

    check-cast v1, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;

    :cond_2
    return-object v1
.end method
