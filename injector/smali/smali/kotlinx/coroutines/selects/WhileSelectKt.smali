.class public final Lkotlinx/coroutines/selects/WhileSelectKt;
.super Ljava/lang/Object;
.source "WhileSelect.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nWhileSelect.kt\nKotlin\n*S Kotlin\n*F\n+ 1 WhileSelect.kt\nkotlinx/coroutines/selects/WhileSelectKt\n+ 2 Select.kt\nkotlinx/coroutines/selects/SelectKt\n*L\n1#1,33:1\n199#2,11:34\n*S KotlinDebug\n*F\n+ 1 WhileSelect.kt\nkotlinx/coroutines/selects/WhileSelectKt\n*L\n31#1:34,11\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u001a2\u0010\u0000\u001a\u00020\u00012\u001f\u0008\u0004\u0010\u0002\u001a\u0019\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00050\u0004\u0012\u0004\u0012\u00020\u00010\u0003\u00a2\u0006\u0002\u0008\u0006H\u0087H\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u0007\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006\u0008"
    }
    d2 = {
        "whileSelect",
        "",
        "builder",
        "Lkotlin/Function1;",
        "Lkotlinx/coroutines/selects/SelectBuilder;",
        "",
        "Lkotlin/ExtensionFunctionType;",
        "(Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
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
.method public static final whileSelect(Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lkotlinx/coroutines/selects/SelectBuilder<",
            "-",
            "Ljava/lang/Boolean;",
            ">;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p1, Lkotlinx/coroutines/selects/WhileSelectKt$whileSelect$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lkotlinx/coroutines/selects/WhileSelectKt$whileSelect$1;

    iget v1, v0, Lkotlinx/coroutines/selects/WhileSelectKt$whileSelect$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p1, v0, Lkotlinx/coroutines/selects/WhileSelectKt$whileSelect$1;->label:I

    sub-int/2addr p1, v2

    iput p1, v0, Lkotlinx/coroutines/selects/WhileSelectKt$whileSelect$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lkotlinx/coroutines/selects/WhileSelectKt$whileSelect$1;

    invoke-direct {v0, p1}, Lkotlinx/coroutines/selects/WhileSelectKt$whileSelect$1;-><init>(Lkotlin/coroutines/Continuation;)V

    :goto_0
    move-object p1, v0

    .local p1, "$continuation":Lkotlin/coroutines/Continuation;
    iget-object v0, p1, Lkotlinx/coroutines/selects/WhileSelectKt$whileSelect$1;->result:Ljava/lang/Object;

    .local v0, "$result":Ljava/lang/Object;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 30
    iget v2, p1, Lkotlinx/coroutines/selects/WhileSelectKt$whileSelect$1;->label:I

    packed-switch v2, :pswitch_data_0

    .line 32
    .end local v0    # "$result":Ljava/lang/Object;
    .end local p1    # "$continuation":Lkotlin/coroutines/Continuation;
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 30
    .restart local v0    # "$result":Ljava/lang/Object;
    .restart local p1    # "$continuation":Lkotlin/coroutines/Continuation;
    :pswitch_0
    const/4 p0, 0x0

    .local p0, "$i$f$whileSelect":I
    const/4 v2, 0x0

    .local v2, "$i$f$select":I
    iget-object v3, p1, Lkotlinx/coroutines/selects/WhileSelectKt$whileSelect$1;->L$0:Ljava/lang/Object;

    check-cast v3, Lkotlin/jvm/functions/Function1;

    .local v3, "builder":Lkotlin/jvm/functions/Function1;
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v4, v3

    move v3, v2

    move-object v2, v1

    move-object v1, v0

    goto :goto_3

    .end local v2    # "$i$f$select":I
    .end local v3    # "builder":Lkotlin/jvm/functions/Function1;
    .end local p0    # "$i$f$whileSelect":I
    :pswitch_1
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .local p0, "builder":Lkotlin/jvm/functions/Function1;
    const/4 v2, 0x0

    move-object v3, p0

    move p0, v2

    .line 31
    .restart local v3    # "builder":Lkotlin/jvm/functions/Function1;
    .local p0, "$i$f$whileSelect":I
    :goto_1
    const/4 v2, 0x0

    .line 34
    .restart local v2    # "$i$f$select":I
    nop

    .line 37
    iput-object v3, p1, Lkotlinx/coroutines/selects/WhileSelectKt$whileSelect$1;->L$0:Ljava/lang/Object;

    const/4 v4, 0x1

    iput v4, p1, Lkotlinx/coroutines/selects/WhileSelectKt$whileSelect$1;->label:I

    move-object v4, p1

    check-cast v4, Lkotlin/coroutines/Continuation;

    .local v4, "uCont$iv":Lkotlin/coroutines/Continuation;
    const/4 v5, 0x0

    .line 38
    .local v5, "$i$a$-suspendCoroutineUninterceptedOrReturn-SelectKt$select$3$iv":I
    new-instance v6, Lkotlinx/coroutines/selects/SelectBuilderImpl;

    invoke-direct {v6, v4}, Lkotlinx/coroutines/selects/SelectBuilderImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    .line 39
    .local v6, "scope$iv":Lkotlinx/coroutines/selects/SelectBuilderImpl;
    nop

    .line 40
    :try_start_0
    invoke-interface {v3, v6}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    .line 41
    :catchall_0
    move-exception v7

    .line 42
    .local v7, "e$iv":Ljava/lang/Throwable;
    invoke-virtual {v6, v7}, Lkotlinx/coroutines/selects/SelectBuilderImpl;->handleBuilderException(Ljava/lang/Throwable;)V

    .line 44
    .end local v7    # "e$iv":Ljava/lang/Throwable;
    :goto_2
    invoke-virtual {v6}, Lkotlinx/coroutines/selects/SelectBuilderImpl;->getResult()Ljava/lang/Object;

    move-result-object v4

    .line 37
    .end local v4    # "uCont$iv":Lkotlin/coroutines/Continuation;
    .end local v5    # "$i$a$-suspendCoroutineUninterceptedOrReturn-SelectKt$select$3$iv":I
    .end local v6    # "scope$iv":Lkotlinx/coroutines/selects/SelectBuilderImpl;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v5

    if-ne v4, v5, :cond_1

    move-object v5, p1

    check-cast v5, Lkotlin/coroutines/Continuation;

    invoke-static {v5}, Lkotlin/coroutines/jvm/internal/DebugProbesKt;->probeCoroutineSuspended(Lkotlin/coroutines/Continuation;)V

    :cond_1
    if-ne v4, v1, :cond_2

    .line 30
    return-object v1

    .line 37
    :cond_2
    move-object v8, v1

    move-object v1, v0

    move-object v0, v4

    move-object v4, v3

    move v3, v2

    move-object v2, v8

    .end local v0    # "$result":Ljava/lang/Object;
    .end local v2    # "$i$f$select":I
    .local v1, "$result":Ljava/lang/Object;
    .local v3, "$i$f$select":I
    .local v4, "builder":Lkotlin/jvm/functions/Function1;
    :goto_3
    nop

    .end local v3    # "$i$f$select":I
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3

    move-object v0, v1

    move-object v1, v2

    move-object v3, v4

    goto :goto_1

    .line 32
    :cond_3
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static final whileSelect$$forInline(Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 6
    .param p0, "builder"    # Lkotlin/jvm/functions/Function1;
    .param p1, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lkotlinx/coroutines/selects/SelectBuilder<",
            "-",
            "Ljava/lang/Boolean;",
            ">;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 31
    .local v0, "$i$f$whileSelect":I
    :goto_0
    const/4 v1, 0x0

    .line 34
    .local v1, "$i$f$select":I
    nop

    .line 37
    const/4 v2, 0x0

    invoke-static {v2}, Lkotlin/jvm/internal/InlineMarker;->mark(I)V

    move-object v2, p1

    .local v2, "uCont$iv":Lkotlin/coroutines/Continuation;
    const/4 v3, 0x0

    .line 38
    .local v3, "$i$a$-suspendCoroutineUninterceptedOrReturn-SelectKt$select$3$iv":I
    new-instance v4, Lkotlinx/coroutines/selects/SelectBuilderImpl;

    invoke-direct {v4, v2}, Lkotlinx/coroutines/selects/SelectBuilderImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    .line 39
    .local v4, "scope$iv":Lkotlinx/coroutines/selects/SelectBuilderImpl;
    nop

    .line 40
    :try_start_0
    invoke-interface {p0, v4}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 41
    :catchall_0
    move-exception v5

    .line 42
    .local v5, "e$iv":Ljava/lang/Throwable;
    invoke-virtual {v4, v5}, Lkotlinx/coroutines/selects/SelectBuilderImpl;->handleBuilderException(Ljava/lang/Throwable;)V

    .line 44
    .end local v5    # "e$iv":Ljava/lang/Throwable;
    :goto_1
    invoke-virtual {v4}, Lkotlinx/coroutines/selects/SelectBuilderImpl;->getResult()Ljava/lang/Object;

    move-result-object v2

    .line 37
    .end local v2    # "uCont$iv":Lkotlin/coroutines/Continuation;
    .end local v3    # "$i$a$-suspendCoroutineUninterceptedOrReturn-SelectKt$select$3$iv":I
    .end local v4    # "scope$iv":Lkotlinx/coroutines/selects/SelectBuilderImpl;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v3

    if-ne v2, v3, :cond_0

    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/DebugProbesKt;->probeCoroutineSuspended(Lkotlin/coroutines/Continuation;)V

    :cond_0
    const/4 v3, 0x1

    invoke-static {v3}, Lkotlin/jvm/internal/InlineMarker;->mark(I)V

    .end local v1    # "$i$f$select":I
    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 32
    :cond_1
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v1
.end method
