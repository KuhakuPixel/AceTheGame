.class public final Lkotlinx/coroutines/ParentJob$DefaultImpls;
.super Ljava/lang/Object;
.source "Job.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlinx/coroutines/ParentJob;
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
.method public static synthetic cancel(Lkotlinx/coroutines/ParentJob;)V
    .locals 1
    .param p0, "this"    # Lkotlinx/coroutines/ParentJob;
    .annotation runtime Lkotlin/Deprecated;
        level = .enum Lkotlin/DeprecationLevel;->HIDDEN:Lkotlin/DeprecationLevel;
        message = "Since 1.2.0, binary compatibility with versions <= 1.1.x"
    .end annotation

    .line 426
    move-object v0, p0

    check-cast v0, Lkotlinx/coroutines/Job;

    invoke-static {v0}, Lkotlinx/coroutines/Job$DefaultImpls;->cancel(Lkotlinx/coroutines/Job;)V

    .line 438
    return-void
.end method

.method public static fold(Lkotlinx/coroutines/ParentJob;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)Ljava/lang/Object;
    .locals 1
    .param p0, "this"    # Lkotlinx/coroutines/ParentJob;
    .param p1, "initial"    # Ljava/lang/Object;
    .param p2, "operation"    # Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlinx/coroutines/ParentJob;",
            "TR;",
            "Lkotlin/jvm/functions/Function2<",
            "-TR;-",
            "Lkotlin/coroutines/CoroutineContext$Element;",
            "+TR;>;)TR;"
        }
    .end annotation

    .line 426
    move-object v0, p0

    check-cast v0, Lkotlinx/coroutines/Job;

    invoke-static {v0, p1, p2}, Lkotlinx/coroutines/Job$DefaultImpls;->fold(Lkotlinx/coroutines/Job;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)Ljava/lang/Object;

    move-result-object v0

    .line 438
    return-object v0
.end method

.method public static get(Lkotlinx/coroutines/ParentJob;Lkotlin/coroutines/CoroutineContext$Key;)Lkotlin/coroutines/CoroutineContext$Element;
    .locals 1
    .param p0, "this"    # Lkotlinx/coroutines/ParentJob;
    .param p1, "key"    # Lkotlin/coroutines/CoroutineContext$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Lkotlin/coroutines/CoroutineContext$Element;",
            ">(",
            "Lkotlinx/coroutines/ParentJob;",
            "Lkotlin/coroutines/CoroutineContext$Key<",
            "TE;>;)TE;"
        }
    .end annotation

    .line 426
    move-object v0, p0

    check-cast v0, Lkotlinx/coroutines/Job;

    invoke-static {v0, p1}, Lkotlinx/coroutines/Job$DefaultImpls;->get(Lkotlinx/coroutines/Job;Lkotlin/coroutines/CoroutineContext$Key;)Lkotlin/coroutines/CoroutineContext$Element;

    move-result-object v0

    .line 438
    return-object v0
.end method

.method public static minusKey(Lkotlinx/coroutines/ParentJob;Lkotlin/coroutines/CoroutineContext$Key;)Lkotlin/coroutines/CoroutineContext;
    .locals 1
    .param p0, "this"    # Lkotlinx/coroutines/ParentJob;
    .param p1, "key"    # Lkotlin/coroutines/CoroutineContext$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/ParentJob;",
            "Lkotlin/coroutines/CoroutineContext$Key<",
            "*>;)",
            "Lkotlin/coroutines/CoroutineContext;"
        }
    .end annotation

    .line 426
    move-object v0, p0

    check-cast v0, Lkotlinx/coroutines/Job;

    invoke-static {v0, p1}, Lkotlinx/coroutines/Job$DefaultImpls;->minusKey(Lkotlinx/coroutines/Job;Lkotlin/coroutines/CoroutineContext$Key;)Lkotlin/coroutines/CoroutineContext;

    move-result-object v0

    .line 438
    return-object v0
.end method

.method public static plus(Lkotlinx/coroutines/ParentJob;Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;
    .locals 1
    .param p0, "this"    # Lkotlinx/coroutines/ParentJob;
    .param p1, "context"    # Lkotlin/coroutines/CoroutineContext;

    .line 426
    move-object v0, p0

    check-cast v0, Lkotlinx/coroutines/Job;

    invoke-static {v0, p1}, Lkotlinx/coroutines/Job$DefaultImpls;->plus(Lkotlinx/coroutines/Job;Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    move-result-object v0

    .line 438
    return-object v0
.end method

.method public static plus(Lkotlinx/coroutines/ParentJob;Lkotlinx/coroutines/Job;)Lkotlinx/coroutines/Job;
    .locals 1
    .param p0, "this"    # Lkotlinx/coroutines/ParentJob;
    .param p1, "other"    # Lkotlinx/coroutines/Job;
    .annotation runtime Lkotlin/Deprecated;
        level = .enum Lkotlin/DeprecationLevel;->ERROR:Lkotlin/DeprecationLevel;
        message = "Operator \'+\' on two Job objects is meaningless. Job is a coroutine context element and `+` is a set-sum operator for coroutine contexts. The job to the right of `+` just replaces the job the left of `+`."
    .end annotation

    .line 426
    move-object v0, p0

    check-cast v0, Lkotlinx/coroutines/Job;

    invoke-static {v0, p1}, Lkotlinx/coroutines/Job$DefaultImpls;->plus(Lkotlinx/coroutines/Job;Lkotlinx/coroutines/Job;)Lkotlinx/coroutines/Job;

    move-result-object v0

    .line 438
    return-object v0
.end method
