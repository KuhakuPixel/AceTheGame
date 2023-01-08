.class final Landroidx/core/view/ViewGroupKt$descendants$1;
.super Lkotlin/coroutines/jvm/internal/RestrictedSuspendLambda;
.source "ViewGroup.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/core/view/ViewGroupKt;->getDescendants(Landroid/view/ViewGroup;)Lkotlin/sequences/Sequence;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/RestrictedSuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lkotlin/sequences/SequenceScope<",
        "-",
        "Landroid/view/View;",
        ">;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nViewGroup.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ViewGroup.kt\nandroidx/core/view/ViewGroupKt$descendants$1\n+ 2 ViewGroup.kt\nandroidx/core/view/ViewGroupKt\n*L\n1#1,168:1\n54#2,4:169\n*S KotlinDebug\n*F\n+ 1 ViewGroup.kt\nandroidx/core/view/ViewGroupKt$descendants$1\n*L\n117#1:169,4\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u0008\u0012\u0004\u0012\u00020\u00030\u0002H\u008a@"
    }
    d2 = {
        "<anonymous>",
        "",
        "Lkotlin/sequences/SequenceScope;",
        "Landroid/view/View;"
    }
    k = 0x3
    mv = {
        0x1,
        0x6,
        0x0
    }
    xi = 0x30
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "androidx.core.view.ViewGroupKt$descendants$1"
    f = "ViewGroup.kt"
    i = {
        0x0,
        0x0,
        0x0,
        0x0,
        0x1,
        0x1,
        0x1
    }
    l = {
        0x76,
        0x78
    }
    m = "invokeSuspend"
    n = {
        "$this$sequence",
        "$this$forEach$iv",
        "child",
        "index$iv",
        "$this$sequence",
        "$this$forEach$iv",
        "index$iv"
    }
    s = {
        "L$0",
        "L$1",
        "L$2",
        "I$0",
        "L$0",
        "L$1",
        "I$0"
    }
.end annotation


# instance fields
.field final synthetic $this_descendants:Landroid/view/ViewGroup;

.field I$0:I

.field I$1:I

.field private synthetic L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field L$2:Ljava/lang/Object;

.field label:I


# direct methods
.method constructor <init>(Landroid/view/ViewGroup;Lkotlin/coroutines/Continuation;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Landroidx/core/view/ViewGroupKt$descendants$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/core/view/ViewGroupKt$descendants$1;->$this_descendants:Landroid/view/ViewGroup;

    const/4 v0, 0x2

    invoke-direct {p0, v0, p2}, Lkotlin/coroutines/jvm/internal/RestrictedSuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lkotlin/coroutines/Continuation<",
            "*>;)",
            "Lkotlin/coroutines/Continuation<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    new-instance v0, Landroidx/core/view/ViewGroupKt$descendants$1;

    iget-object v1, p0, Landroidx/core/view/ViewGroupKt$descendants$1;->$this_descendants:Landroid/view/ViewGroup;

    invoke-direct {v0, v1, p2}, Landroidx/core/view/ViewGroupKt$descendants$1;-><init>(Landroid/view/ViewGroup;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Landroidx/core/view/ViewGroupKt$descendants$1;->L$0:Ljava/lang/Object;

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lkotlin/sequences/SequenceScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Landroidx/core/view/ViewGroupKt$descendants$1;->invoke(Lkotlin/sequences/SequenceScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invoke(Lkotlin/sequences/SequenceScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/sequences/SequenceScope<",
            "-",
            "Landroid/view/View;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Landroidx/core/view/ViewGroupKt$descendants$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v0

    check-cast v0, Landroidx/core/view/ViewGroupKt$descendants$1;

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, v1}, Landroidx/core/view/ViewGroupKt$descendants$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 13

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 116
    iget v1, p0, Landroidx/core/view/ViewGroupKt$descendants$1;->label:I

    const/4 v2, 0x1

    packed-switch v1, :pswitch_data_0

    .line 123
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 116
    :pswitch_0
    move-object v1, p0

    .local v1, "this":Landroidx/core/view/ViewGroupKt$descendants$1;
    .local p1, "$result":Ljava/lang/Object;
    const/4 v3, 0x0

    .local v3, "$i$f$forEach":I
    const/4 v4, 0x0

    .local v4, "$i$a$-forEach-ViewGroupKt$descendants$1$1":I
    iget v5, v1, Landroidx/core/view/ViewGroupKt$descendants$1;->I$1:I

    iget v6, v1, Landroidx/core/view/ViewGroupKt$descendants$1;->I$0:I

    .local v6, "index$iv":I
    iget-object v7, v1, Landroidx/core/view/ViewGroupKt$descendants$1;->L$1:Ljava/lang/Object;

    check-cast v7, Landroid/view/ViewGroup;

    .local v7, "$this$forEach$iv":Landroid/view/ViewGroup;
    iget-object v8, v1, Landroidx/core/view/ViewGroupKt$descendants$1;->L$0:Ljava/lang/Object;

    check-cast v8, Lkotlin/sequences/SequenceScope;

    .local v8, "$this$sequence":Lkotlin/sequences/SequenceScope;
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_2

    .end local v1    # "this":Landroidx/core/view/ViewGroupKt$descendants$1;
    .end local v3    # "$i$f$forEach":I
    .end local v4    # "$i$a$-forEach-ViewGroupKt$descendants$1$1":I
    .end local v6    # "index$iv":I
    .end local v7    # "$this$forEach$iv":Landroid/view/ViewGroup;
    .end local v8    # "$this$sequence":Lkotlin/sequences/SequenceScope;
    .end local p1    # "$result":Ljava/lang/Object;
    :pswitch_1
    move-object v1, p0

    .restart local v1    # "this":Landroidx/core/view/ViewGroupKt$descendants$1;
    .restart local p1    # "$result":Ljava/lang/Object;
    const/4 v3, 0x0

    .restart local v3    # "$i$f$forEach":I
    const/4 v4, 0x0

    .restart local v4    # "$i$a$-forEach-ViewGroupKt$descendants$1$1":I
    iget v5, v1, Landroidx/core/view/ViewGroupKt$descendants$1;->I$1:I

    iget v6, v1, Landroidx/core/view/ViewGroupKt$descendants$1;->I$0:I

    .restart local v6    # "index$iv":I
    iget-object v7, v1, Landroidx/core/view/ViewGroupKt$descendants$1;->L$2:Ljava/lang/Object;

    check-cast v7, Landroid/view/View;

    .local v7, "child":Landroid/view/View;
    iget-object v8, v1, Landroidx/core/view/ViewGroupKt$descendants$1;->L$1:Ljava/lang/Object;

    check-cast v8, Landroid/view/ViewGroup;

    .local v8, "$this$forEach$iv":Landroid/view/ViewGroup;
    iget-object v9, v1, Landroidx/core/view/ViewGroupKt$descendants$1;->L$0:Ljava/lang/Object;

    check-cast v9, Lkotlin/sequences/SequenceScope;

    .local v9, "$this$sequence":Lkotlin/sequences/SequenceScope;
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    .end local v1    # "this":Landroidx/core/view/ViewGroupKt$descendants$1;
    .end local v3    # "$i$f$forEach":I
    .end local v4    # "$i$a$-forEach-ViewGroupKt$descendants$1$1":I
    .end local v6    # "index$iv":I
    .end local v7    # "child":Landroid/view/View;
    .end local v8    # "$this$forEach$iv":Landroid/view/ViewGroup;
    .end local v9    # "$this$sequence":Lkotlin/sequences/SequenceScope;
    .end local p1    # "$result":Ljava/lang/Object;
    :pswitch_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v1, p0

    .restart local v1    # "this":Landroidx/core/view/ViewGroupKt$descendants$1;
    .restart local p1    # "$result":Ljava/lang/Object;
    iget-object v3, v1, Landroidx/core/view/ViewGroupKt$descendants$1;->L$0:Ljava/lang/Object;

    check-cast v3, Lkotlin/sequences/SequenceScope;

    .line 117
    .local v3, "$this$sequence":Lkotlin/sequences/SequenceScope;
    iget-object v4, v1, Landroidx/core/view/ViewGroupKt$descendants$1;->$this_descendants:Landroid/view/ViewGroup;

    .local v4, "$this$forEach$iv":Landroid/view/ViewGroup;
    const/4 v5, 0x0

    .line 169
    .local v5, "$i$f$forEach":I
    const/4 v6, 0x0

    .restart local v6    # "index$iv":I
    invoke-virtual {v4}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v7

    :goto_0
    if-ge v6, v7, :cond_3

    .line 170
    invoke-virtual {v4, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    const-string v9, "getChildAt(index)"

    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .local v8, "child":Landroid/view/View;
    const/4 v9, 0x0

    .line 118
    .local v9, "$i$a$-forEach-ViewGroupKt$descendants$1$1":I
    iput-object v3, v1, Landroidx/core/view/ViewGroupKt$descendants$1;->L$0:Ljava/lang/Object;

    iput-object v4, v1, Landroidx/core/view/ViewGroupKt$descendants$1;->L$1:Ljava/lang/Object;

    iput-object v8, v1, Landroidx/core/view/ViewGroupKt$descendants$1;->L$2:Ljava/lang/Object;

    iput v6, v1, Landroidx/core/view/ViewGroupKt$descendants$1;->I$0:I

    iput v7, v1, Landroidx/core/view/ViewGroupKt$descendants$1;->I$1:I

    iput v2, v1, Landroidx/core/view/ViewGroupKt$descendants$1;->label:I

    invoke-virtual {v3, v8, v1}, Lkotlin/sequences/SequenceScope;->yield(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v10

    if-ne v10, v0, :cond_0

    .line 116
    return-object v0

    .line 118
    :cond_0
    move v12, v9

    move-object v9, v3

    move v3, v5

    move v5, v7

    move-object v7, v8

    move-object v8, v4

    move v4, v12

    .line 119
    .end local v5    # "$i$f$forEach":I
    .local v3, "$i$f$forEach":I
    .local v4, "$i$a$-forEach-ViewGroupKt$descendants$1$1":I
    .restart local v7    # "child":Landroid/view/View;
    .local v8, "$this$forEach$iv":Landroid/view/ViewGroup;
    .local v9, "$this$sequence":Lkotlin/sequences/SequenceScope;
    :goto_1
    instance-of v10, v7, Landroid/view/ViewGroup;

    if-eqz v10, :cond_2

    .line 120
    move-object v10, v7

    check-cast v10, Landroid/view/ViewGroup;

    invoke-static {v10}, Landroidx/core/view/ViewGroupKt;->getDescendants(Landroid/view/ViewGroup;)Lkotlin/sequences/Sequence;

    move-result-object v10

    iput-object v9, v1, Landroidx/core/view/ViewGroupKt$descendants$1;->L$0:Ljava/lang/Object;

    iput-object v8, v1, Landroidx/core/view/ViewGroupKt$descendants$1;->L$1:Ljava/lang/Object;

    const/4 v11, 0x0

    iput-object v11, v1, Landroidx/core/view/ViewGroupKt$descendants$1;->L$2:Ljava/lang/Object;

    iput v6, v1, Landroidx/core/view/ViewGroupKt$descendants$1;->I$0:I

    iput v5, v1, Landroidx/core/view/ViewGroupKt$descendants$1;->I$1:I

    const/4 v11, 0x2

    iput v11, v1, Landroidx/core/view/ViewGroupKt$descendants$1;->label:I

    invoke-virtual {v9, v10, v1}, Lkotlin/sequences/SequenceScope;->yieldAll(Lkotlin/sequences/Sequence;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v7

    .end local v7    # "child":Landroid/view/View;
    if-ne v7, v0, :cond_1

    .line 116
    return-object v0

    .line 120
    :cond_1
    move-object v7, v8

    move-object v8, v9

    .line 122
    .end local v9    # "$this$sequence":Lkotlin/sequences/SequenceScope;
    .local v7, "$this$forEach$iv":Landroid/view/ViewGroup;
    .local v8, "$this$sequence":Lkotlin/sequences/SequenceScope;
    :goto_2
    move-object v4, v7

    move v7, v5

    move v5, v3

    move-object v3, v8

    goto :goto_3

    .line 119
    .local v7, "child":Landroid/view/View;
    .local v8, "$this$forEach$iv":Landroid/view/ViewGroup;
    .restart local v9    # "$this$sequence":Lkotlin/sequences/SequenceScope;
    :cond_2
    move v7, v5

    move-object v4, v8

    move v5, v3

    move-object v3, v9

    .line 169
    .end local v7    # "child":Landroid/view/View;
    .end local v8    # "$this$forEach$iv":Landroid/view/ViewGroup;
    .end local v9    # "$this$sequence":Lkotlin/sequences/SequenceScope;
    .local v3, "$this$sequence":Lkotlin/sequences/SequenceScope;
    .local v4, "$this$forEach$iv":Landroid/view/ViewGroup;
    .restart local v5    # "$i$f$forEach":I
    :goto_3
    add-int/2addr v6, v2

    goto :goto_0

    .line 172
    .end local v6    # "index$iv":I
    :cond_3
    nop

    .line 123
    .end local v4    # "$this$forEach$iv":Landroid/view/ViewGroup;
    .end local v5    # "$i$f$forEach":I
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
