.class public final Lkotlinx/coroutines/ExecutorCoroutineDispatcher$Key;
.super Lkotlin/coroutines/AbstractCoroutineContextKey;
.source "Executors.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlinx/coroutines/ExecutorCoroutineDispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Key"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/AbstractCoroutineContextKey<",
        "Lkotlinx/coroutines/CoroutineDispatcher;",
        "Lkotlinx/coroutines/ExecutorCoroutineDispatcher;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0087\u0003\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0004\u00a8\u0006\u0005"
    }
    d2 = {
        "Lkotlinx/coroutines/ExecutorCoroutineDispatcher$Key;",
        "Lkotlin/coroutines/AbstractCoroutineContextKey;",
        "Lkotlinx/coroutines/CoroutineDispatcher;",
        "Lkotlinx/coroutines/ExecutorCoroutineDispatcher;",
        "()V",
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


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 23
    nop

    .line 24
    sget-object v0, Lkotlinx/coroutines/CoroutineDispatcher;->Key:Lkotlinx/coroutines/CoroutineDispatcher$Key;

    check-cast v0, Lkotlin/coroutines/CoroutineContext$Key;

    .line 25
    sget-object v1, Lkotlinx/coroutines/ExecutorCoroutineDispatcher$Key$1;->INSTANCE:Lkotlinx/coroutines/ExecutorCoroutineDispatcher$Key$1;

    check-cast v1, Lkotlin/jvm/functions/Function1;

    .line 23
    invoke-direct {p0, v0, v1}, Lkotlin/coroutines/AbstractCoroutineContextKey;-><init>(Lkotlin/coroutines/CoroutineContext$Key;Lkotlin/jvm/functions/Function1;)V

    .line 22
    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lkotlinx/coroutines/ExecutorCoroutineDispatcher$Key;-><init>()V

    return-void
.end method
