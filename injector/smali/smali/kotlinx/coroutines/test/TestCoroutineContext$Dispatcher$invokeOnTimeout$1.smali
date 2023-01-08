.class public final Lkotlinx/coroutines/test/TestCoroutineContext$Dispatcher$invokeOnTimeout$1;
.super Ljava/lang/Object;
.source "TestCoroutineContext.kt"

# interfaces
.implements Lkotlinx/coroutines/DisposableHandle;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlinx/coroutines/test/TestCoroutineContext$Dispatcher;->invokeOnTimeout(JLjava/lang/Runnable;Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/DisposableHandle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0011\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0008\u0010\u0002\u001a\u00020\u0003H\u0016\u00a8\u0006\u0004"
    }
    d2 = {
        "kotlinx/coroutines/test/TestCoroutineContext$Dispatcher$invokeOnTimeout$1",
        "Lkotlinx/coroutines/DisposableHandle;",
        "dispose",
        "",
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
.field final synthetic $node:Lkotlinx/coroutines/test/TimedRunnableObsolete;

.field final synthetic this$0:Lkotlinx/coroutines/test/TestCoroutineContext;


# direct methods
.method constructor <init>(Lkotlinx/coroutines/test/TestCoroutineContext;Lkotlinx/coroutines/test/TimedRunnableObsolete;)V
    .locals 0
    .param p1, "$receiver"    # Lkotlinx/coroutines/test/TestCoroutineContext;
    .param p2, "$node"    # Lkotlinx/coroutines/test/TimedRunnableObsolete;

    iput-object p1, p0, Lkotlinx/coroutines/test/TestCoroutineContext$Dispatcher$invokeOnTimeout$1;->this$0:Lkotlinx/coroutines/test/TestCoroutineContext;

    iput-object p2, p0, Lkotlinx/coroutines/test/TestCoroutineContext$Dispatcher$invokeOnTimeout$1;->$node:Lkotlinx/coroutines/test/TimedRunnableObsolete;

    .line 216
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 2

    .line 218
    iget-object v0, p0, Lkotlinx/coroutines/test/TestCoroutineContext$Dispatcher$invokeOnTimeout$1;->this$0:Lkotlinx/coroutines/test/TestCoroutineContext;

    invoke-static {v0}, Lkotlinx/coroutines/test/TestCoroutineContext;->access$getQueue$p(Lkotlinx/coroutines/test/TestCoroutineContext;)Lkotlinx/coroutines/internal/ThreadSafeHeap;

    move-result-object v0

    iget-object v1, p0, Lkotlinx/coroutines/test/TestCoroutineContext$Dispatcher$invokeOnTimeout$1;->$node:Lkotlinx/coroutines/test/TimedRunnableObsolete;

    check-cast v1, Lkotlinx/coroutines/internal/ThreadSafeHeapNode;

    invoke-virtual {v0, v1}, Lkotlinx/coroutines/internal/ThreadSafeHeap;->remove(Lkotlinx/coroutines/internal/ThreadSafeHeapNode;)Z

    .line 219
    return-void
.end method
