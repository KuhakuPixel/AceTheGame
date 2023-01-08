.class public final Lkotlinx/coroutines/CompletionHandlerKt;
.super Ljava/lang/Object;
.source "CompletionHandler.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u001a8\u0010\r\u001a\u00020\u0006*#\u0012\u0015\u0012\u0013\u0018\u00010\u0002\u00a2\u0006\u000c\u0008\u0003\u0012\u0008\u0008\u0004\u0012\u0004\u0008\u0008(\u0005\u0012\u0004\u0012\u00020\u00060\u0001j\u0002`\u00072\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0002H\u0080\u0008\":\u0010\u0000\u001a#\u0012\u0015\u0012\u0013\u0018\u00010\u0002\u00a2\u0006\u000c\u0008\u0003\u0012\u0008\u0008\u0004\u0012\u0004\u0008\u0008(\u0005\u0012\u0004\u0012\u00020\u00060\u0001j\u0002`\u0007*\u00020\u00088\u00c0\u0002X\u0080\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\t\u0010\n\":\u0010\u0000\u001a#\u0012\u0015\u0012\u0013\u0018\u00010\u0002\u00a2\u0006\u000c\u0008\u0003\u0012\u0008\u0008\u0004\u0012\u0004\u0008\u0008(\u0005\u0012\u0004\u0012\u00020\u00060\u0001j\u0002`\u0007*\u00020\u000b8\u00c0\u0002X\u0080\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\t\u0010\u000c\u00a8\u0006\u000e"
    }
    d2 = {
        "asHandler",
        "Lkotlin/Function1;",
        "",
        "Lkotlin/ParameterName;",
        "name",
        "cause",
        "",
        "Lkotlinx/coroutines/CompletionHandler;",
        "Lkotlinx/coroutines/CancelHandlerBase;",
        "getAsHandler",
        "(Lkotlinx/coroutines/CancelHandlerBase;)Lkotlin/jvm/functions/Function1;",
        "Lkotlinx/coroutines/CompletionHandlerBase;",
        "(Lkotlinx/coroutines/CompletionHandlerBase;)Lkotlin/jvm/functions/Function1;",
        "invokeIt",
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
.method public static final getAsHandler(Lkotlinx/coroutines/CancelHandlerBase;)Lkotlin/jvm/functions/Function1;
    .locals 2
    .param p0, "$this$asHandler"    # Lkotlinx/coroutines/CancelHandlerBase;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/CancelHandlerBase;",
            ")",
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/Throwable;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 19
    .local v0, "$i$f$getAsHandler":I
    move-object v1, p0

    check-cast v1, Lkotlin/jvm/functions/Function1;

    return-object v1
.end method

.method public static final getAsHandler(Lkotlinx/coroutines/CompletionHandlerBase;)Lkotlin/jvm/functions/Function1;
    .locals 2
    .param p0, "$this$asHandler"    # Lkotlinx/coroutines/CompletionHandlerBase;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/CompletionHandlerBase;",
            ")",
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/Throwable;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 13
    .local v0, "$i$f$getAsHandler":I
    move-object v1, p0

    check-cast v1, Lkotlin/jvm/functions/Function1;

    return-object v1
.end method

.method public static final invokeIt(Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)V
    .locals 1
    .param p0, "$this$invokeIt"    # Lkotlin/jvm/functions/Function1;
    .param p1, "cause"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Throwable;",
            "Lkotlin/Unit;",
            ">;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 22
    .local v0, "$i$f$invokeIt":I
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
