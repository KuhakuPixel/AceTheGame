.class public final Lkotlinx/coroutines/flow/FlowKt__TransformKt$filterNot$$inlined$unsafeTransform$1$2;
.super Ljava/lang/Object;
.source "Emitters.kt"

# interfaces
.implements Lkotlinx/coroutines/flow/FlowCollector;
.implements Lkotlin/coroutines/jvm/internal/SuspendFunction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlinx/coroutines/flow/FlowKt__TransformKt$filterNot$$inlined$unsafeTransform$1;->collect(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lkotlinx/coroutines/flow/FlowCollector;",
        "Lkotlin/coroutines/jvm/internal/SuspendFunction;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nEmitters.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Emitters.kt\nkotlinx/coroutines/flow/FlowKt__EmittersKt$unsafeTransform$1$1\n+ 2 Transform.kt\nkotlinx/coroutines/flow/FlowKt__TransformKt\n*L\n1#1,222:1\n28#2,2:223\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0006\u0010\u0000\u001a\u00020\u0001\"\u0004\u0008\u0000\u0010\u0002\"\u0004\u0008\u0001\u0010\u00032\u0006\u0010\u0004\u001a\u0002H\u0002H\u008a@\u00a2\u0006\u0004\u0008\u0005\u0010\u0006\u00a8\u0006\u0007"
    }
    d2 = {
        "<anonymous>",
        "",
        "T",
        "R",
        "value",
        "emit",
        "(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "kotlinx/coroutines/flow/FlowKt__EmittersKt$unsafeTransform$1$1"
    }
    k = 0x3
    mv = {
        0x1,
        0x6,
        0x0
    }
    xi = 0xb0
.end annotation


# instance fields
.field final synthetic $predicate$inlined:Lkotlin/jvm/functions/Function2;

.field final synthetic $this_unsafeFlow:Lkotlinx/coroutines/flow/FlowCollector;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/jvm/functions/Function2;)V
    .locals 0

    iput-object p1, p0, Lkotlinx/coroutines/flow/FlowKt__TransformKt$filterNot$$inlined$unsafeTransform$1$2;->$this_unsafeFlow:Lkotlinx/coroutines/flow/FlowCollector;

    iput-object p2, p0, Lkotlinx/coroutines/flow/FlowKt__TransformKt$filterNot$$inlined$unsafeTransform$1$2;->$predicate$inlined:Lkotlin/jvm/functions/Function2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 8
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

    instance-of v0, p2, Lkotlinx/coroutines/flow/FlowKt__TransformKt$filterNot$$inlined$unsafeTransform$1$2$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lkotlinx/coroutines/flow/FlowKt__TransformKt$filterNot$$inlined$unsafeTransform$1$2$1;

    iget v1, v0, Lkotlinx/coroutines/flow/FlowKt__TransformKt$filterNot$$inlined$unsafeTransform$1$2$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p2, v0, Lkotlinx/coroutines/flow/FlowKt__TransformKt$filterNot$$inlined$unsafeTransform$1$2$1;->label:I

    sub-int/2addr p2, v2

    iput p2, v0, Lkotlinx/coroutines/flow/FlowKt__TransformKt$filterNot$$inlined$unsafeTransform$1$2$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lkotlinx/coroutines/flow/FlowKt__TransformKt$filterNot$$inlined$unsafeTransform$1$2$1;

    invoke-direct {v0, p0, p2}, Lkotlinx/coroutines/flow/FlowKt__TransformKt$filterNot$$inlined$unsafeTransform$1$2$1;-><init>(Lkotlinx/coroutines/flow/FlowKt__TransformKt$filterNot$$inlined$unsafeTransform$1$2;Lkotlin/coroutines/Continuation;)V

    :goto_0
    move-object p2, v0

    .local p2, "$continuation":Lkotlin/coroutines/Continuation;
    iget-object v0, p2, Lkotlinx/coroutines/flow/FlowKt__TransformKt$filterNot$$inlined$unsafeTransform$1$2$1;->result:Ljava/lang/Object;

    .local v0, "$result":Ljava/lang/Object;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 48
    iget v2, p2, Lkotlinx/coroutines/flow/FlowKt__TransformKt$filterNot$$inlined$unsafeTransform$1$2$1;->label:I

    packed-switch v2, :pswitch_data_0

    .line 224
    .end local v0    # "$result":Ljava/lang/Object;
    .end local p2    # "$continuation":Lkotlin/coroutines/Continuation;
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 48
    .restart local v0    # "$result":Ljava/lang/Object;
    .restart local p2    # "$continuation":Lkotlin/coroutines/Continuation;
    :pswitch_0
    const/4 p1, 0x0

    .local p1, "$i$a$-unsafeTransform-FlowKt__TransformKt$filterNot$1":I
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_2

    .end local p1    # "$i$a$-unsafeTransform-FlowKt__TransformKt$filterNot$1":I
    :pswitch_1
    const/4 p1, 0x0

    .restart local p1    # "$i$a$-unsafeTransform-FlowKt__TransformKt$filterNot$1":I
    iget-object v2, p2, Lkotlinx/coroutines/flow/FlowKt__TransformKt$filterNot$$inlined$unsafeTransform$1$2$1;->L$1:Ljava/lang/Object;

    check-cast v2, Lkotlinx/coroutines/flow/FlowCollector;

    .local v2, "$this$filterNot_u24lambda_u2d1":Lkotlinx/coroutines/flow/FlowCollector;
    iget-object v3, p2, Lkotlinx/coroutines/flow/FlowKt__TransformKt$filterNot$$inlined$unsafeTransform$1$2$1;->L$0:Ljava/lang/Object;

    .local v3, "value":Ljava/lang/Object;
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v4, v3

    move-object v3, v2

    move-object v2, v0

    goto :goto_1

    .end local v2    # "$this$filterNot_u24lambda_u2d1":Lkotlinx/coroutines/flow/FlowCollector;
    .end local v3    # "value":Ljava/lang/Object;
    .end local p1    # "$i$a$-unsafeTransform-FlowKt__TransformKt$filterNot$1":I
    :pswitch_2
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v2, p0

    .line 53
    .local v2, "this":Lkotlinx/coroutines/flow/FlowKt__TransformKt$filterNot$$inlined$unsafeTransform$1$2;
    .local p1, "value":Ljava/lang/Object;
    iget-object v3, v2, Lkotlinx/coroutines/flow/FlowKt__TransformKt$filterNot$$inlined$unsafeTransform$1$2;->$this_unsafeFlow:Lkotlinx/coroutines/flow/FlowCollector;

    .local v3, "$this$filterNot_u24lambda_u2d1":Lkotlinx/coroutines/flow/FlowCollector;
    move-object v4, p2

    check-cast v4, Lkotlin/coroutines/Continuation;

    const/4 v4, 0x0

    .line 223
    .local v4, "$i$a$-unsafeTransform-FlowKt__TransformKt$filterNot$1":I
    iget-object v5, v2, Lkotlinx/coroutines/flow/FlowKt__TransformKt$filterNot$$inlined$unsafeTransform$1$2;->$predicate$inlined:Lkotlin/jvm/functions/Function2;

    iput-object p1, p2, Lkotlinx/coroutines/flow/FlowKt__TransformKt$filterNot$$inlined$unsafeTransform$1$2$1;->L$0:Ljava/lang/Object;

    iput-object v3, p2, Lkotlinx/coroutines/flow/FlowKt__TransformKt$filterNot$$inlined$unsafeTransform$1$2$1;->L$1:Ljava/lang/Object;

    const/4 v6, 0x1

    iput v6, p2, Lkotlinx/coroutines/flow/FlowKt__TransformKt$filterNot$$inlined$unsafeTransform$1$2$1;->label:I

    invoke-interface {v5, p1, p2}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "this":Lkotlinx/coroutines/flow/FlowKt__TransformKt$filterNot$$inlined$unsafeTransform$1$2;
    if-ne v2, v1, :cond_1

    .line 48
    return-object v1

    .line 223
    :cond_1
    move v7, v4

    move-object v4, p1

    move p1, v7

    .local v4, "value":Ljava/lang/Object;
    .local p1, "$i$a$-unsafeTransform-FlowKt__TransformKt$filterNot$1":I
    :goto_1
    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_3

    const/4 v2, 0x0

    iput-object v2, p2, Lkotlinx/coroutines/flow/FlowKt__TransformKt$filterNot$$inlined$unsafeTransform$1$2$1;->L$0:Ljava/lang/Object;

    iput-object v2, p2, Lkotlinx/coroutines/flow/FlowKt__TransformKt$filterNot$$inlined$unsafeTransform$1$2$1;->L$1:Ljava/lang/Object;

    const/4 v2, 0x2

    iput v2, p2, Lkotlinx/coroutines/flow/FlowKt__TransformKt$filterNot$$inlined$unsafeTransform$1$2$1;->label:I

    invoke-interface {v3, v4, p2}, Lkotlinx/coroutines/flow/FlowCollector;->emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    .end local v3    # "$this$filterNot_u24lambda_u2d1":Lkotlinx/coroutines/flow/FlowCollector;
    .end local v4    # "value":Ljava/lang/Object;
    if-ne v2, v1, :cond_2

    .line 48
    return-object v1

    .line 223
    :cond_2
    :goto_2
    goto :goto_3

    .line 224
    :cond_3
    nop

    .end local p1    # "$i$a$-unsafeTransform-FlowKt__TransformKt$filterNot$1":I
    :goto_3
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final emit$$forInline(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 5
    .param p1, "value"    # Ljava/lang/Object;
    .param p2, "$completion"    # Lkotlin/coroutines/Continuation;

    const/4 v0, 0x4

    invoke-static {v0}, Lkotlin/jvm/internal/InlineMarker;->mark(I)V

    new-instance v0, Lkotlinx/coroutines/flow/FlowKt__TransformKt$filterNot$$inlined$unsafeTransform$1$2$1;

    invoke-direct {v0, p0, p2}, Lkotlinx/coroutines/flow/FlowKt__TransformKt$filterNot$$inlined$unsafeTransform$1$2$1;-><init>(Lkotlinx/coroutines/flow/FlowKt__TransformKt$filterNot$$inlined$unsafeTransform$1$2;Lkotlin/coroutines/Continuation;)V

    const/4 v0, 0x5

    invoke-static {v0}, Lkotlin/jvm/internal/InlineMarker;->mark(I)V

    .line 53
    iget-object v0, p0, Lkotlinx/coroutines/flow/FlowKt__TransformKt$filterNot$$inlined$unsafeTransform$1$2;->$this_unsafeFlow:Lkotlinx/coroutines/flow/FlowCollector;

    .local v0, "$this$filterNot_u24lambda_u2d1":Lkotlinx/coroutines/flow/FlowCollector;
    move-object v1, p1

    .local v1, "value":Ljava/lang/Object;
    move-object v2, p2

    .local v2, "$completion":Lkotlin/coroutines/Continuation;
    const/4 v3, 0x0

    .line 223
    .local v3, "$i$a$-unsafeTransform-FlowKt__TransformKt$filterNot$1":I
    iget-object v4, p0, Lkotlinx/coroutines/flow/FlowKt__TransformKt$filterNot$$inlined$unsafeTransform$1$2;->$predicate$inlined:Lkotlin/jvm/functions/Function2;

    invoke-interface {v4, v1, p2}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-nez v4, :cond_0

    const/4 v4, 0x0

    invoke-static {v4}, Lkotlin/jvm/internal/InlineMarker;->mark(I)V

    invoke-interface {v0, v1, p2}, Lkotlinx/coroutines/flow/FlowCollector;->emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    const/4 v4, 0x1

    invoke-static {v4}, Lkotlin/jvm/internal/InlineMarker;->mark(I)V

    goto :goto_0

    .line 224
    :cond_0
    nop

    .end local v0    # "$this$filterNot_u24lambda_u2d1":Lkotlinx/coroutines/flow/FlowCollector;
    .end local v1    # "value":Ljava/lang/Object;
    .end local v2    # "$completion":Lkotlin/coroutines/Continuation;
    .end local v3    # "$i$a$-unsafeTransform-FlowKt__TransformKt$filterNot$1":I
    :goto_0
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method
