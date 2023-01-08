.class final Lkotlinx/coroutines/LazyStandaloneCoroutine;
.super Lkotlinx/coroutines/StandaloneCoroutine;
.source "Builders.common.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0002\u0018\u00002\u00020\u0001B9\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\'\u0010\u0004\u001a#\u0008\u0001\u0012\u0004\u0012\u00020\u0006\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00080\u0007\u0012\u0006\u0012\u0004\u0018\u00010\t0\u0005\u00a2\u0006\u0002\u0008\n\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u000bJ\u0008\u0010\r\u001a\u00020\u0008H\u0014R\u0014\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006\u000e"
    }
    d2 = {
        "Lkotlinx/coroutines/LazyStandaloneCoroutine;",
        "Lkotlinx/coroutines/StandaloneCoroutine;",
        "parentContext",
        "Lkotlin/coroutines/CoroutineContext;",
        "block",
        "Lkotlin/Function2;",
        "Lkotlinx/coroutines/CoroutineScope;",
        "Lkotlin/coroutines/Continuation;",
        "",
        "",
        "Lkotlin/ExtensionFunctionType;",
        "(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;)V",
        "continuation",
        "onStart",
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
.field private final continuation:Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/coroutines/Continuation<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;)V
    .locals 1
    .param p1, "parentContext"    # Lkotlin/coroutines/CoroutineContext;
    .param p2, "block"    # Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/CoroutineContext;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lkotlinx/coroutines/CoroutineScope;",
            "-",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 201
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lkotlinx/coroutines/StandaloneCoroutine;-><init>(Lkotlin/coroutines/CoroutineContext;Z)V

    .line 202
    move-object v0, p0

    check-cast v0, Lkotlin/coroutines/Continuation;

    invoke-static {p2, p0, v0}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->createCoroutineUnintercepted(Lkotlin/jvm/functions/Function2;Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v0

    iput-object v0, p0, Lkotlinx/coroutines/LazyStandaloneCoroutine;->continuation:Lkotlin/coroutines/Continuation;

    .line 198
    return-void
.end method


# virtual methods
.method protected onStart()V
    .locals 2

    .line 205
    iget-object v0, p0, Lkotlinx/coroutines/LazyStandaloneCoroutine;->continuation:Lkotlin/coroutines/Continuation;

    move-object v1, p0

    check-cast v1, Lkotlin/coroutines/Continuation;

    invoke-static {v0, v1}, Lkotlinx/coroutines/intrinsics/CancellableKt;->startCoroutineCancellable(Lkotlin/coroutines/Continuation;Lkotlin/coroutines/Continuation;)V

    .line 206
    return-void
.end method
