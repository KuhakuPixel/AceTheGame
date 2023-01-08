.class public final Lkotlinx/coroutines/CoroutineExceptionHandler$DefaultImpls;
.super Ljava/lang/Object;
.source "CoroutineExceptionHandler.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlinx/coroutines/CoroutineExceptionHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DefaultImpls"
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x1,
        0x6,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static fold(Lkotlinx/coroutines/CoroutineExceptionHandler;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)Ljava/lang/Object;
    .locals 1
    .param p0, "this"    # Lkotlinx/coroutines/CoroutineExceptionHandler;
    .param p1, "initial"    # Ljava/lang/Object;
    .param p2, "operation"    # Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlinx/coroutines/CoroutineExceptionHandler;",
            "TR;",
            "Lkotlin/jvm/functions/Function2<",
            "-TR;-",
            "Lkotlin/coroutines/CoroutineContext$Element;",
            "+TR;>;)TR;"
        }
    .end annotation

    .line 98
    move-object v0, p0

    check-cast v0, Lkotlin/coroutines/CoroutineContext$Element;

    invoke-static {v0, p1, p2}, Lkotlin/coroutines/CoroutineContext$Element$DefaultImpls;->fold(Lkotlin/coroutines/CoroutineContext$Element;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)Ljava/lang/Object;

    move-result-object v0

    .line 109
    return-object v0
.end method

.method public static get(Lkotlinx/coroutines/CoroutineExceptionHandler;Lkotlin/coroutines/CoroutineContext$Key;)Lkotlin/coroutines/CoroutineContext$Element;
    .locals 1
    .param p0, "this"    # Lkotlinx/coroutines/CoroutineExceptionHandler;
    .param p1, "key"    # Lkotlin/coroutines/CoroutineContext$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Lkotlin/coroutines/CoroutineContext$Element;",
            ">(",
            "Lkotlinx/coroutines/CoroutineExceptionHandler;",
            "Lkotlin/coroutines/CoroutineContext$Key<",
            "TE;>;)TE;"
        }
    .end annotation

    .line 98
    move-object v0, p0

    check-cast v0, Lkotlin/coroutines/CoroutineContext$Element;

    invoke-static {v0, p1}, Lkotlin/coroutines/CoroutineContext$Element$DefaultImpls;->get(Lkotlin/coroutines/CoroutineContext$Element;Lkotlin/coroutines/CoroutineContext$Key;)Lkotlin/coroutines/CoroutineContext$Element;

    move-result-object v0

    .line 109
    return-object v0
.end method

.method public static minusKey(Lkotlinx/coroutines/CoroutineExceptionHandler;Lkotlin/coroutines/CoroutineContext$Key;)Lkotlin/coroutines/CoroutineContext;
    .locals 1
    .param p0, "this"    # Lkotlinx/coroutines/CoroutineExceptionHandler;
    .param p1, "key"    # Lkotlin/coroutines/CoroutineContext$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/CoroutineExceptionHandler;",
            "Lkotlin/coroutines/CoroutineContext$Key<",
            "*>;)",
            "Lkotlin/coroutines/CoroutineContext;"
        }
    .end annotation

    .line 98
    move-object v0, p0

    check-cast v0, Lkotlin/coroutines/CoroutineContext$Element;

    invoke-static {v0, p1}, Lkotlin/coroutines/CoroutineContext$Element$DefaultImpls;->minusKey(Lkotlin/coroutines/CoroutineContext$Element;Lkotlin/coroutines/CoroutineContext$Key;)Lkotlin/coroutines/CoroutineContext;

    move-result-object v0

    .line 109
    return-object v0
.end method

.method public static plus(Lkotlinx/coroutines/CoroutineExceptionHandler;Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;
    .locals 1
    .param p0, "this"    # Lkotlinx/coroutines/CoroutineExceptionHandler;
    .param p1, "context"    # Lkotlin/coroutines/CoroutineContext;

    .line 98
    move-object v0, p0

    check-cast v0, Lkotlin/coroutines/CoroutineContext$Element;

    invoke-static {v0, p1}, Lkotlin/coroutines/CoroutineContext$Element$DefaultImpls;->plus(Lkotlin/coroutines/CoroutineContext$Element;Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    move-result-object v0

    .line 109
    return-object v0
.end method
