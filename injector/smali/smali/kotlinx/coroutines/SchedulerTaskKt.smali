.class public final Lkotlinx/coroutines/SchedulerTaskKt;
.super Ljava/lang/Object;
.source "SchedulerTask.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0002\u0008\u0003\u001a\u0011\u0010\t\u001a\u00020\n*\u00060\u0001j\u0002`\u0002H\u0080\u0008\"&\u0010\u0000\u001a\u00060\u0001j\u0002`\u0002*\u00060\u0003j\u0002`\u00048@X\u0080\u0004\u00a2\u0006\u000c\u0012\u0004\u0008\u0005\u0010\u0006\u001a\u0004\u0008\u0007\u0010\u0008*\u000c\u0008\u0000\u0010\u000b\"\u00020\u00032\u00020\u0003*\u000c\u0008\u0000\u0010\u000c\"\u00020\u00012\u00020\u0001\u00a8\u0006\r"
    }
    d2 = {
        "taskContext",
        "Lkotlinx/coroutines/scheduling/TaskContext;",
        "Lkotlinx/coroutines/SchedulerTaskContext;",
        "Lkotlinx/coroutines/scheduling/Task;",
        "Lkotlinx/coroutines/SchedulerTask;",
        "getTaskContext$annotations",
        "(Lkotlinx/coroutines/scheduling/Task;)V",
        "getTaskContext",
        "(Lkotlinx/coroutines/scheduling/Task;)Lkotlinx/coroutines/scheduling/TaskContext;",
        "afterTask",
        "",
        "SchedulerTask",
        "SchedulerTaskContext",
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
.method public static final afterTask(Lkotlinx/coroutines/scheduling/TaskContext;)V
    .locals 1
    .param p0, "$this$afterTask"    # Lkotlinx/coroutines/scheduling/TaskContext;

    const/4 v0, 0x0

    .line 18
    .local v0, "$i$f$afterTask":I
    invoke-interface {p0}, Lkotlinx/coroutines/scheduling/TaskContext;->afterTask()V

    return-void
.end method

.method public static final getTaskContext(Lkotlinx/coroutines/scheduling/Task;)Lkotlinx/coroutines/scheduling/TaskContext;
    .locals 1
    .param p0, "$this$taskContext"    # Lkotlinx/coroutines/scheduling/Task;

    .line 14
    iget-object v0, p0, Lkotlinx/coroutines/scheduling/Task;->taskContext:Lkotlinx/coroutines/scheduling/TaskContext;

    return-object v0
.end method

.method public static synthetic getTaskContext$annotations(Lkotlinx/coroutines/scheduling/Task;)V
    .locals 0

    return-void
.end method
