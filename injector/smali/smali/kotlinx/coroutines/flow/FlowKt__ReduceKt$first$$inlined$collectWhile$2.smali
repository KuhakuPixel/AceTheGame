.class public final Lkotlinx/coroutines/flow/FlowKt__ReduceKt$first$$inlined$collectWhile$2;
.super Ljava/lang/Object;
.source "Limit.kt"

# interfaces
.implements Lkotlinx/coroutines/flow/FlowCollector;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlinx/coroutines/flow/FlowKt__ReduceKt;->first(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlinx/coroutines/flow/FlowCollector<",
        "TT;>;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nLimit.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Limit.kt\nkotlinx/coroutines/flow/FlowKt__LimitKt$collectWhile$collector$1\n+ 2 Reduce.kt\nkotlinx/coroutines/flow/FlowKt__ReduceKt\n*L\n1#1,142:1\n107#2,5:143\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0013\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003*\u0001\u0000\u0008\n\u0018\u00002\u0008\u0012\u0004\u0012\u00028\u00000\u0001J\u0019\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00028\u0000H\u0096@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u0005\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006\u0006\u00b8\u0006\u0000"
    }
    d2 = {
        "kotlinx/coroutines/flow/FlowKt__LimitKt$collectWhile$collector$1",
        "Lkotlinx/coroutines/flow/FlowCollector;",
        "emit",
        "",
        "value",
        "(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
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

.field final synthetic $result$inlined:Lkotlin/jvm/internal/Ref$ObjectRef;


# direct methods
.method public constructor <init>(Lkotlin/jvm/functions/Function2;Lkotlin/jvm/internal/Ref$ObjectRef;)V
    .locals 0

    iput-object p1, p0, Lkotlinx/coroutines/flow/FlowKt__ReduceKt$first$$inlined$collectWhile$2;->$predicate$inlined:Lkotlin/jvm/functions/Function2;

    iput-object p2, p0, Lkotlinx/coroutines/flow/FlowKt__ReduceKt$first$$inlined$collectWhile$2;->$result$inlined:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Lkotlinx/coroutines/flow/FlowKt__ReduceKt$first$$inlined$collectWhile$2$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lkotlinx/coroutines/flow/FlowKt__ReduceKt$first$$inlined$collectWhile$2$1;

    iget v1, v0, Lkotlinx/coroutines/flow/FlowKt__ReduceKt$first$$inlined$collectWhile$2$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p2, v0, Lkotlinx/coroutines/flow/FlowKt__ReduceKt$first$$inlined$collectWhile$2$1;->label:I

    sub-int/2addr p2, v2

    iput p2, v0, Lkotlinx/coroutines/flow/FlowKt__ReduceKt$first$$inlined$collectWhile$2$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lkotlinx/coroutines/flow/FlowKt__ReduceKt$first$$inlined$collectWhile$2$1;

    invoke-direct {v0, p0, p2}, Lkotlinx/coroutines/flow/FlowKt__ReduceKt$first$$inlined$collectWhile$2$1;-><init>(Lkotlinx/coroutines/flow/FlowKt__ReduceKt$first$$inlined$collectWhile$2;Lkotlin/coroutines/Continuation;)V

    :goto_0
    move-object p2, v0

    .local p2, "$continuation":Lkotlin/coroutines/Continuation;
    iget-object v0, p2, Lkotlinx/coroutines/flow/FlowKt__ReduceKt$first$$inlined$collectWhile$2$1;->result:Ljava/lang/Object;

    .local v0, "$result":Ljava/lang/Object;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    iget v2, p2, Lkotlinx/coroutines/flow/FlowKt__ReduceKt$first$$inlined$collectWhile$2$1;->label:I

    const/4 v3, 0x1

    packed-switch v2, :pswitch_data_0

    .line 134
    .end local v0    # "$result":Ljava/lang/Object;
    .end local p2    # "$continuation":Lkotlin/coroutines/Continuation;
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 143
    .restart local v0    # "$result":Ljava/lang/Object;
    .restart local p2    # "$continuation":Lkotlin/coroutines/Continuation;
    :pswitch_0
    const/4 p1, 0x0

    .local p1, "$i$a$-collectWhile-FlowKt__ReduceKt$first$4":I
    iget-object v1, p2, Lkotlinx/coroutines/flow/FlowKt__ReduceKt$first$$inlined$collectWhile$2$1;->L$1:Ljava/lang/Object;

    .local v1, "it":Ljava/lang/Object;
    iget-object v2, p2, Lkotlinx/coroutines/flow/FlowKt__ReduceKt$first$$inlined$collectWhile$2$1;->L$0:Ljava/lang/Object;

    check-cast v2, Lkotlinx/coroutines/flow/FlowKt__ReduceKt$first$$inlined$collectWhile$2;

    .local v2, "this":Lkotlinx/coroutines/flow/FlowKt__ReduceKt$first$$inlined$collectWhile$2;
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v5, v0

    goto :goto_1

    .line 0
    .end local v1    # "it":Ljava/lang/Object;
    .end local v2    # "this":Lkotlinx/coroutines/flow/FlowKt__ReduceKt$first$$inlined$collectWhile$2;
    .end local p1    # "$i$a$-collectWhile-FlowKt__ReduceKt$first$4":I
    :pswitch_1
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v2, p0

    .line 131
    .restart local v2    # "this":Lkotlinx/coroutines/flow/FlowKt__ReduceKt$first$$inlined$collectWhile$2;
    .local p1, "value":Ljava/lang/Object;
    move-object v4, p2

    check-cast v4, Lkotlin/coroutines/Continuation;

    .local p1, "it":Ljava/lang/Object;
    const/4 v4, 0x0

    .line 143
    .local v4, "$i$a$-collectWhile-FlowKt__ReduceKt$first$4":I
    iget-object v5, v2, Lkotlinx/coroutines/flow/FlowKt__ReduceKt$first$$inlined$collectWhile$2;->$predicate$inlined:Lkotlin/jvm/functions/Function2;

    iput-object v2, p2, Lkotlinx/coroutines/flow/FlowKt__ReduceKt$first$$inlined$collectWhile$2$1;->L$0:Ljava/lang/Object;

    iput-object p1, p2, Lkotlinx/coroutines/flow/FlowKt__ReduceKt$first$$inlined$collectWhile$2$1;->L$1:Ljava/lang/Object;

    iput v3, p2, Lkotlinx/coroutines/flow/FlowKt__ReduceKt$first$$inlined$collectWhile$2$1;->label:I

    const/4 v6, 0x6

    invoke-static {v6}, Lkotlin/jvm/internal/InlineMarker;->mark(I)V

    invoke-interface {v5, p1, p2}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    const/4 v6, 0x7

    invoke-static {v6}, Lkotlin/jvm/internal/InlineMarker;->mark(I)V

    if-ne v5, v1, :cond_1

    return-object v1

    :cond_1
    move-object v1, p1

    move p1, v4

    .end local v4    # "$i$a$-collectWhile-FlowKt__ReduceKt$first$4":I
    .restart local v1    # "it":Ljava/lang/Object;
    .local p1, "$i$a$-collectWhile-FlowKt__ReduceKt$first$4":I
    :goto_1
    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 144
    iget-object v3, v2, Lkotlinx/coroutines/flow/FlowKt__ReduceKt$first$$inlined$collectWhile$2;->$result$inlined:Lkotlin/jvm/internal/Ref$ObjectRef;

    iput-object v1, v3, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 145
    const/4 v3, 0x0

    goto :goto_2

    .line 147
    :cond_2
    nop

    .line 143
    :goto_2
    nop

    .end local v1    # "it":Ljava/lang/Object;
    .end local p1    # "$i$a$-collectWhile-FlowKt__ReduceKt$first$4":I
    if-eqz v3, :cond_3

    .line 134
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 132
    :cond_3
    new-instance p1, Lkotlinx/coroutines/flow/internal/AbortFlowException;

    move-object v1, v2

    check-cast v1, Lkotlinx/coroutines/flow/FlowCollector;

    invoke-direct {p1, v1}, Lkotlinx/coroutines/flow/internal/AbortFlowException;-><init>(Lkotlinx/coroutines/flow/FlowCollector;)V

    throw p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
