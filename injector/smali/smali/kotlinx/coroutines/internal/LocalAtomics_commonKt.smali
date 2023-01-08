.class public final Lkotlinx/coroutines/internal/LocalAtomics_commonKt;
.super Ljava/lang/Object;
.source "LocalAtomics.common.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0000\n\u0002\u0010\u0008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\".\u0010\u0000\u001a\u00020\u0001*\u00060\u0002j\u0002`\u00032\u0006\u0010\u0000\u001a\u00020\u00018\u00c0\u0002@\u00c0\u0002X\u0080\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\u0004\u0010\u0005\"\u0004\u0008\u0006\u0010\u0007\u00a8\u0006\u0008"
    }
    d2 = {
        "value",
        "",
        "Ljava/util/concurrent/atomic/AtomicInteger;",
        "Lkotlinx/coroutines/internal/LocalAtomicInt;",
        "getValue",
        "(Ljava/util/concurrent/atomic/AtomicInteger;)I",
        "setValue",
        "(Ljava/util/concurrent/atomic/AtomicInteger;I)V",
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


# direct methods
.method public static final getValue(Ljava/util/concurrent/atomic/AtomicInteger;)I
    .locals 2
    .param p0, "$this$value"    # Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v0, 0x0

    .line 20
    .local v0, "$i$f$getValue":I
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    return v1
.end method

.method public static final setValue(Ljava/util/concurrent/atomic/AtomicInteger;I)V
    .locals 1
    .param p0, "$this$value"    # Ljava/util/concurrent/atomic/AtomicInteger;
    .param p1, "value"    # I

    const/4 v0, 0x0

    .line 21
    .local v0, "$i$f$setValue":I
    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    return-void
.end method
