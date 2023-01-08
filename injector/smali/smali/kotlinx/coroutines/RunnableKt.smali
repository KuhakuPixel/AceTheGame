.class public final Lkotlinx/coroutines/RunnableKt;
.super Ljava/lang/Object;
.source "Runnable.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0016\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\u001a\u001d\u0010\u0000\u001a\u00060\u0001j\u0002`\u00022\u000e\u0008\u0004\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0004H\u0086\u0008*\n\u0010\u0000\"\u00020\u00012\u00020\u0001\u00a8\u0006\u0006"
    }
    d2 = {
        "Runnable",
        "Ljava/lang/Runnable;",
        "Lkotlinx/coroutines/Runnable;",
        "block",
        "Lkotlin/Function0;",
        "",
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
.method public static final Runnable(Lkotlin/jvm/functions/Function0;)Ljava/lang/Runnable;
    .locals 2
    .param p0, "block"    # Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Runnable;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 17
    .local v0, "$i$f$Runnable":I
    new-instance v1, Lkotlinx/coroutines/RunnableKt$Runnable$1;

    invoke-direct {v1, p0}, Lkotlinx/coroutines/RunnableKt$Runnable$1;-><init>(Lkotlin/jvm/functions/Function0;)V

    check-cast v1, Ljava/lang/Runnable;

    return-object v1
.end method
