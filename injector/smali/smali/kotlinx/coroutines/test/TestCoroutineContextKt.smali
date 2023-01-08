.class public final Lkotlinx/coroutines/test/TestCoroutineContextKt;
.super Ljava/lang/Object;
.source "TestCoroutineContext.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTestCoroutineContext.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TestCoroutineContext.kt\nkotlinx/coroutines/test/TestCoroutineContextKt\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,261:1\n1720#2,3:262\n*S KotlinDebug\n*F\n+ 1 TestCoroutineContext.kt\nkotlinx/coroutines/test/TestCoroutineContextKt\n*L\n256#1:262,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u001a+\u0010\u0000\u001a\u00020\u00012\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0017\u0010\u0004\u001a\u0013\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00010\u0005\u00a2\u0006\u0002\u0008\u0006H\u0007\u00a8\u0006\u0007"
    }
    d2 = {
        "withTestContext",
        "",
        "testContext",
        "Lkotlinx/coroutines/test/TestCoroutineContext;",
        "testBody",
        "Lkotlin/Function1;",
        "Lkotlin/ExtensionFunctionType;",
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
.method public static final withTestContext(Lkotlinx/coroutines/test/TestCoroutineContext;Lkotlin/jvm/functions/Function1;)V
    .locals 9
    .param p0, "testContext"    # Lkotlinx/coroutines/test/TestCoroutineContext;
    .param p1, "testBody"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/test/TestCoroutineContext;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lkotlinx/coroutines/test/TestCoroutineContext;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Lkotlin/Deprecated;
        level = .enum Lkotlin/DeprecationLevel;->ERROR:Lkotlin/DeprecationLevel;
        message = "This API has been deprecated to integrate with Structured Concurrency."
        replaceWith = .subannotation Lkotlin/ReplaceWith;
            expression = "testContext.runBlockingTest(testBody)"
            imports = {
                "kotlin.coroutines.test"
            }
        .end subannotation
    .end annotation

    .line 254
    move-object v0, p0

    .local v0, "$this$withTestContext_u24lambda_u2d1":Lkotlinx/coroutines/test/TestCoroutineContext;
    const/4 v1, 0x0

    .line 255
    .local v1, "$i$a$-with-TestCoroutineContextKt$withTestContext$1":I
    invoke-interface {p1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 256
    invoke-virtual {v0}, Lkotlinx/coroutines/test/TestCoroutineContext;->getExceptions()Ljava/util/List;

    move-result-object v2

    check-cast v2, Ljava/lang/Iterable;

    .local v2, "$this$all$iv":Ljava/lang/Iterable;
    const/4 v3, 0x0

    .line 262
    .local v3, "$i$f$all":I
    instance-of v4, v2, Ljava/util/Collection;

    const/4 v5, 0x1

    if-eqz v4, :cond_0

    move-object v4, v2

    check-cast v4, Ljava/util/Collection;

    invoke-interface {v4}, Ljava/util/Collection;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_0

    .line 263
    :cond_0
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    .local v6, "element$iv":Ljava/lang/Object;
    move-object v7, v6

    check-cast v7, Ljava/lang/Throwable;

    .local v7, "it":Ljava/lang/Throwable;
    const/4 v8, 0x0

    .line 256
    .local v8, "$i$a$-all-TestCoroutineContextKt$withTestContext$1$1":I
    instance-of v7, v7, Ljava/util/concurrent/CancellationException;

    .end local v7    # "it":Ljava/lang/Throwable;
    .end local v8    # "$i$a$-all-TestCoroutineContextKt$withTestContext$1$1":I
    if-nez v7, :cond_1

    const/4 v5, 0x0

    goto :goto_0

    .line 264
    .end local v6    # "element$iv":Ljava/lang/Object;
    :cond_2
    nop

    .line 256
    .end local v2    # "$this$all$iv":Ljava/lang/Iterable;
    .end local v3    # "$i$f$all":I
    :goto_0
    if-eqz v5, :cond_3

    .line 259
    nop

    .line 254
    .end local v0    # "$this$withTestContext_u24lambda_u2d1":Lkotlinx/coroutines/test/TestCoroutineContext;
    .end local v1    # "$i$a$-with-TestCoroutineContextKt$withTestContext$1":I
    nop

    .line 260
    return-void

    .line 257
    .restart local v0    # "$this$withTestContext_u24lambda_u2d1":Lkotlinx/coroutines/test/TestCoroutineContext;
    .restart local v1    # "$i$a$-with-TestCoroutineContextKt$withTestContext$1":I
    :cond_3
    new-instance v2, Ljava/lang/AssertionError;

    invoke-virtual {v0}, Lkotlinx/coroutines/test/TestCoroutineContext;->getExceptions()Ljava/util/List;

    move-result-object v3

    const-string v4, "Coroutine encountered unhandled exceptions:\n"

    invoke-static {v4, v3}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    goto :goto_2

    :goto_1
    throw v2

    :goto_2
    goto :goto_1
.end method

.method public static synthetic withTestContext$default(Lkotlinx/coroutines/test/TestCoroutineContext;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)V
    .locals 0

    .line 253
    const/4 p3, 0x1

    and-int/2addr p2, p3

    if-eqz p2, :cond_0

    new-instance p0, Lkotlinx/coroutines/test/TestCoroutineContext;

    const/4 p2, 0x0

    invoke-direct {p0, p2, p3, p2}, Lkotlinx/coroutines/test/TestCoroutineContext;-><init>(Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    :cond_0
    invoke-static {p0, p1}, Lkotlinx/coroutines/test/TestCoroutineContextKt;->withTestContext(Lkotlinx/coroutines/test/TestCoroutineContext;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method
