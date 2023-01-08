.class public final Lkotlinx/coroutines/internal/LockFreeLinkedList_commonKt;
.super Ljava/lang/Object;
.source "LockFreeLinkedList.common.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\u0003\"\u0016\u0010\u0000\u001a\u00020\u00018\u0000X\u0081\u0004\u00a2\u0006\u0008\n\u0000\u0012\u0004\u0008\u0002\u0010\u0003\u00a8\u0006\u0004"
    }
    d2 = {
        "REMOVE_PREPARED",
        "",
        "getREMOVE_PREPARED$annotations",
        "()V",
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
.field public static final REMOVE_PREPARED:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 90
    new-instance v0, Lkotlinx/coroutines/internal/Symbol;

    const-string v1, "REMOVE_PREPARED"

    invoke-direct {v0, v1}, Lkotlinx/coroutines/internal/Symbol;-><init>(Ljava/lang/String;)V

    sput-object v0, Lkotlinx/coroutines/internal/LockFreeLinkedList_commonKt;->REMOVE_PREPARED:Ljava/lang/Object;

    return-void
.end method

.method public static synthetic getREMOVE_PREPARED$annotations()V
    .locals 0

    return-void
.end method
