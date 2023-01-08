.class public final Lkotlinx/coroutines/flow/FlowKt__LimitKt$takeWhile$$inlined$unsafeFlow$1;
.super Ljava/lang/Object;
.source "SafeCollector.common.kt"

# interfaces
.implements Lkotlinx/coroutines/flow/Flow;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlinx/coroutines/flow/FlowKt__LimitKt;->takeWhile(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/flow/Flow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlinx/coroutines/flow/Flow<",
        "TT;>;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSafeCollector.common.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SafeCollector.common.kt\nkotlinx/coroutines/flow/internal/SafeCollector_commonKt$unsafeFlow$1\n+ 2 Limit.kt\nkotlinx/coroutines/flow/FlowKt__LimitKt\n*L\n1#1,112:1\n85#2:113\n127#2,15:114\n*S KotlinDebug\n*F\n+ 1 Limit.kt\nkotlinx/coroutines/flow/FlowKt__LimitKt\n*L\n85#1:114,15\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0019\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u0008\u0012\u0004\u0012\u00028\u00000\u0001J\u001f\u0010\u0002\u001a\u00020\u00032\u000c\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0005H\u0096@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u0006\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006\u0007\u00b8\u0006\u0000"
    }
    d2 = {
        "kotlinx/coroutines/flow/internal/SafeCollector_commonKt$unsafeFlow$1",
        "Lkotlinx/coroutines/flow/Flow;",
        "collect",
        "",
        "collector",
        "Lkotlinx/coroutines/flow/FlowCollector;",
        "(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
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
.field final synthetic $predicate$inlined:Lkotlin/jvm/functions/Function2;

.field final synthetic $this_takeWhile$inlined:Lkotlinx/coroutines/flow/Flow;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function2;)V
    .locals 0

    iput-object p1, p0, Lkotlinx/coroutines/flow/FlowKt__LimitKt$takeWhile$$inlined$unsafeFlow$1;->$this_takeWhile$inlined:Lkotlinx/coroutines/flow/Flow;

    iput-object p2, p0, Lkotlinx/coroutines/flow/FlowKt__LimitKt$takeWhile$$inlined$unsafeFlow$1;->$predicate$inlined:Lkotlin/jvm/functions/Function2;

    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public collect(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/flow/FlowCollector<",
            "-TT;>;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Lkotlinx/coroutines/flow/FlowKt__LimitKt$takeWhile$$inlined$unsafeFlow$1$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lkotlinx/coroutines/flow/FlowKt__LimitKt$takeWhile$$inlined$unsafeFlow$1$1;

    iget v1, v0, Lkotlinx/coroutines/flow/FlowKt__LimitKt$takeWhile$$inlined$unsafeFlow$1$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p2, v0, Lkotlinx/coroutines/flow/FlowKt__LimitKt$takeWhile$$inlined$unsafeFlow$1$1;->label:I

    sub-int/2addr p2, v2

    iput p2, v0, Lkotlinx/coroutines/flow/FlowKt__LimitKt$takeWhile$$inlined$unsafeFlow$1$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lkotlinx/coroutines/flow/FlowKt__LimitKt$takeWhile$$inlined$unsafeFlow$1$1;

    invoke-direct {v0, p0, p2}, Lkotlinx/coroutines/flow/FlowKt__LimitKt$takeWhile$$inlined$unsafeFlow$1$1;-><init>(Lkotlinx/coroutines/flow/FlowKt__LimitKt$takeWhile$$inlined$unsafeFlow$1;Lkotlin/coroutines/Continuation;)V

    :goto_0
    move-object p2, v0

    .local p2, "$continuation":Lkotlin/coroutines/Continuation;
    iget-object v0, p2, Lkotlinx/coroutines/flow/FlowKt__LimitKt$takeWhile$$inlined$unsafeFlow$1$1;->result:Ljava/lang/Object;

    .local v0, "$result":Ljava/lang/Object;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 105
    iget v2, p2, Lkotlinx/coroutines/flow/FlowKt__LimitKt$takeWhile$$inlined$unsafeFlow$1$1;->label:I

    packed-switch v2, :pswitch_data_0

    .line 109
    .end local v0    # "$result":Ljava/lang/Object;
    .end local p2    # "$continuation":Lkotlin/coroutines/Continuation;
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 105
    .restart local v0    # "$result":Ljava/lang/Object;
    .restart local p2    # "$continuation":Lkotlin/coroutines/Continuation;
    :pswitch_0
    const/4 p1, 0x0

    .local p1, "$i$a$-unsafeFlow-FlowKt__LimitKt$takeWhile$1":I
    const/4 v1, 0x0

    .local v1, "$i$f$collectWhile":I
    iget-object v2, p2, Lkotlinx/coroutines/flow/FlowKt__LimitKt$takeWhile$$inlined$unsafeFlow$1$1;->L$0:Ljava/lang/Object;

    check-cast v2, Lkotlinx/coroutines/flow/FlowKt__LimitKt$takeWhile$lambda-6$$inlined$collectWhile$1;

    .local v2, "collector$iv":Lkotlinx/coroutines/flow/FlowKt__LimitKt$takeWhile$lambda-6$$inlined$collectWhile$1;
    :try_start_0
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catch Lkotlinx/coroutines/flow/internal/AbortFlowException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 125
    :catch_0
    move-exception v3

    goto :goto_2

    .line 105
    .end local v1    # "$i$f$collectWhile":I
    .end local v2    # "collector$iv":Lkotlinx/coroutines/flow/FlowKt__LimitKt$takeWhile$lambda-6$$inlined$collectWhile$1;
    .end local p1    # "$i$a$-unsafeFlow-FlowKt__LimitKt$takeWhile$1":I
    :pswitch_1
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v2, p0

    .line 108
    .local v2, "this":Lkotlinx/coroutines/flow/FlowKt__LimitKt$takeWhile$$inlined$unsafeFlow$1;
    .local p1, "collector":Lkotlinx/coroutines/flow/FlowCollector;
    move-object v3, p2

    check-cast v3, Lkotlin/coroutines/Continuation;

    .local p1, "$this$takeWhile_u24lambda_u2d6":Lkotlinx/coroutines/flow/FlowCollector;
    const/4 v3, 0x0

    .line 113
    .local v3, "$i$a$-unsafeFlow-FlowKt__LimitKt$takeWhile$1":I
    iget-object v4, v2, Lkotlinx/coroutines/flow/FlowKt__LimitKt$takeWhile$$inlined$unsafeFlow$1;->$this_takeWhile$inlined:Lkotlinx/coroutines/flow/Flow;

    .local v4, "$this$collectWhile$iv":Lkotlinx/coroutines/flow/Flow;
    move-object v5, p2

    .local v5, "$completion$iv":Lkotlin/coroutines/Continuation;
    const/4 v6, 0x0

    .line 114
    .local v6, "$i$f$collectWhile":I
    new-instance v7, Lkotlinx/coroutines/flow/FlowKt__LimitKt$takeWhile$lambda-6$$inlined$collectWhile$1;

    iget-object v8, v2, Lkotlinx/coroutines/flow/FlowKt__LimitKt$takeWhile$$inlined$unsafeFlow$1;->$predicate$inlined:Lkotlin/jvm/functions/Function2;

    invoke-direct {v7, v8, p1}, Lkotlinx/coroutines/flow/FlowKt__LimitKt$takeWhile$lambda-6$$inlined$collectWhile$1;-><init>(Lkotlin/jvm/functions/Function2;Lkotlinx/coroutines/flow/FlowCollector;)V

    .line 123
    .end local v2    # "this":Lkotlinx/coroutines/flow/FlowKt__LimitKt$takeWhile$$inlined$unsafeFlow$1;
    .end local p1    # "$this$takeWhile_u24lambda_u2d6":Lkotlinx/coroutines/flow/FlowCollector;
    .local v7, "collector$iv":Lkotlinx/coroutines/flow/FlowKt__LimitKt$takeWhile$lambda-6$$inlined$collectWhile$1;
    nop

    .line 124
    :try_start_1
    move-object p1, v7

    check-cast p1, Lkotlinx/coroutines/flow/FlowCollector;

    iput-object v7, p2, Lkotlinx/coroutines/flow/FlowKt__LimitKt$takeWhile$$inlined$unsafeFlow$1$1;->L$0:Ljava/lang/Object;

    const/4 v2, 0x1

    iput v2, p2, Lkotlinx/coroutines/flow/FlowKt__LimitKt$takeWhile$$inlined$unsafeFlow$1$1;->label:I

    invoke-interface {v4, p1, v5}, Lkotlinx/coroutines/flow/Flow;->collect(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1
    :try_end_1
    .catch Lkotlinx/coroutines/flow/internal/AbortFlowException; {:try_start_1 .. :try_end_1} :catch_1

    .end local v4    # "$this$collectWhile$iv":Lkotlinx/coroutines/flow/Flow;
    .end local v5    # "$completion$iv":Lkotlin/coroutines/Continuation;
    if-ne p1, v1, :cond_1

    .line 105
    return-object v1

    .line 124
    :cond_1
    move p1, v3

    move v1, v6

    move-object v2, v7

    .end local v3    # "$i$a$-unsafeFlow-FlowKt__LimitKt$takeWhile$1":I
    .end local v6    # "$i$f$collectWhile":I
    .end local v7    # "collector$iv":Lkotlinx/coroutines/flow/FlowKt__LimitKt$takeWhile$lambda-6$$inlined$collectWhile$1;
    .restart local v1    # "$i$f$collectWhile":I
    .local v2, "collector$iv":Lkotlinx/coroutines/flow/FlowKt__LimitKt$takeWhile$lambda-6$$inlined$collectWhile$1;
    .local p1, "$i$a$-unsafeFlow-FlowKt__LimitKt$takeWhile$1":I
    :goto_1
    goto :goto_3

    .line 125
    .end local v1    # "$i$f$collectWhile":I
    .end local v2    # "collector$iv":Lkotlinx/coroutines/flow/FlowKt__LimitKt$takeWhile$lambda-6$$inlined$collectWhile$1;
    .end local p1    # "$i$a$-unsafeFlow-FlowKt__LimitKt$takeWhile$1":I
    .restart local v3    # "$i$a$-unsafeFlow-FlowKt__LimitKt$takeWhile$1":I
    .restart local v6    # "$i$f$collectWhile":I
    .restart local v7    # "collector$iv":Lkotlinx/coroutines/flow/FlowKt__LimitKt$takeWhile$lambda-6$$inlined$collectWhile$1;
    :catch_1
    move-exception p1

    move v1, v6

    move-object v2, v7

    move v9, v3

    move-object v3, p1

    move p1, v9

    .line 126
    .end local v6    # "$i$f$collectWhile":I
    .end local v7    # "collector$iv":Lkotlinx/coroutines/flow/FlowKt__LimitKt$takeWhile$lambda-6$$inlined$collectWhile$1;
    .restart local v1    # "$i$f$collectWhile":I
    .restart local v2    # "collector$iv":Lkotlinx/coroutines/flow/FlowKt__LimitKt$takeWhile$lambda-6$$inlined$collectWhile$1;
    .local v3, "e$iv":Lkotlinx/coroutines/flow/internal/AbortFlowException;
    .restart local p1    # "$i$a$-unsafeFlow-FlowKt__LimitKt$takeWhile$1":I
    :goto_2
    move-object v4, v2

    check-cast v4, Lkotlinx/coroutines/flow/FlowCollector;

    invoke-static {v3, v4}, Lkotlinx/coroutines/flow/internal/FlowExceptions_commonKt;->checkOwnership(Lkotlinx/coroutines/flow/internal/AbortFlowException;Lkotlinx/coroutines/flow/FlowCollector;)V

    .line 128
    .end local v3    # "e$iv":Lkotlinx/coroutines/flow/internal/AbortFlowException;
    :goto_3
    nop

    .line 113
    .end local v1    # "$i$f$collectWhile":I
    .end local v2    # "collector$iv":Lkotlinx/coroutines/flow/FlowKt__LimitKt$takeWhile$lambda-6$$inlined$collectWhile$1;
    nop

    .end local p1    # "$i$a$-unsafeFlow-FlowKt__LimitKt$takeWhile$1":I
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 109
    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
