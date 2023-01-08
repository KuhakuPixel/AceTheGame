.class final Lkotlinx/coroutines/channels/TickerChannelsKt$ticker$3;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "TickerChannels.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlinx/coroutines/channels/TickerChannelsKt;->ticker(JJLkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/channels/TickerMode;)Lkotlinx/coroutines/channels/ReceiveChannel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlinx/coroutines/channels/TickerChannelsKt$ticker$3$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lkotlinx/coroutines/channels/ProducerScope<",
        "-",
        "Lkotlin/Unit;",
        ">;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u0008\u0012\u0004\u0012\u00020\u00010\u0002H\u008a@"
    }
    d2 = {
        "<anonymous>",
        "",
        "Lkotlinx/coroutines/channels/ProducerScope;"
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
    c = "kotlinx.coroutines.channels.TickerChannelsKt$ticker$3"
    f = "TickerChannels.kt"
    i = {}
    l = {
        0x48,
        0x49
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $delayMillis:J

.field final synthetic $initialDelayMillis:J

.field final synthetic $mode:Lkotlinx/coroutines/channels/TickerMode;

.field private synthetic L$0:Ljava/lang/Object;

.field label:I


# direct methods
.method constructor <init>(Lkotlinx/coroutines/channels/TickerMode;JJLkotlin/coroutines/Continuation;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/channels/TickerMode;",
            "JJ",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlinx/coroutines/channels/TickerChannelsKt$ticker$3;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lkotlinx/coroutines/channels/TickerChannelsKt$ticker$3;->$mode:Lkotlinx/coroutines/channels/TickerMode;

    iput-wide p2, p0, Lkotlinx/coroutines/channels/TickerChannelsKt$ticker$3;->$delayMillis:J

    iput-wide p4, p0, Lkotlinx/coroutines/channels/TickerChannelsKt$ticker$3;->$initialDelayMillis:J

    const/4 v0, 0x2

    invoke-direct {p0, v0, p6}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 8
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

    new-instance v7, Lkotlinx/coroutines/channels/TickerChannelsKt$ticker$3;

    iget-object v1, p0, Lkotlinx/coroutines/channels/TickerChannelsKt$ticker$3;->$mode:Lkotlinx/coroutines/channels/TickerMode;

    iget-wide v2, p0, Lkotlinx/coroutines/channels/TickerChannelsKt$ticker$3;->$delayMillis:J

    iget-wide v4, p0, Lkotlinx/coroutines/channels/TickerChannelsKt$ticker$3;->$initialDelayMillis:J

    move-object v0, v7

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lkotlinx/coroutines/channels/TickerChannelsKt$ticker$3;-><init>(Lkotlinx/coroutines/channels/TickerMode;JJLkotlin/coroutines/Continuation;)V

    iput-object p1, v7, Lkotlinx/coroutines/channels/TickerChannelsKt$ticker$3;->L$0:Ljava/lang/Object;

    check-cast v7, Lkotlin/coroutines/Continuation;

    return-object v7
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lkotlinx/coroutines/channels/ProducerScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lkotlinx/coroutines/channels/TickerChannelsKt$ticker$3;->invoke(Lkotlinx/coroutines/channels/ProducerScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invoke(Lkotlinx/coroutines/channels/ProducerScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/channels/ProducerScope<",
            "-",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lkotlinx/coroutines/channels/TickerChannelsKt$ticker$3;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v0

    check-cast v0, Lkotlinx/coroutines/channels/TickerChannelsKt$ticker$3;

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, v1}, Lkotlinx/coroutines/channels/TickerChannelsKt$ticker$3;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 70
    iget v1, p0, Lkotlinx/coroutines/channels/TickerChannelsKt$ticker$3;->label:I

    packed-switch v1, :pswitch_data_0

    .line 75
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 70
    :pswitch_0
    move-object v0, p0

    .local v0, "this":Lkotlinx/coroutines/channels/TickerChannelsKt$ticker$3;
    .local p1, "$result":Ljava/lang/Object;
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_0

    .end local v0    # "this":Lkotlinx/coroutines/channels/TickerChannelsKt$ticker$3;
    .end local p1    # "$result":Ljava/lang/Object;
    :pswitch_1
    move-object v0, p0

    .restart local v0    # "this":Lkotlinx/coroutines/channels/TickerChannelsKt$ticker$3;
    .restart local p1    # "$result":Ljava/lang/Object;
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    .end local v0    # "this":Lkotlinx/coroutines/channels/TickerChannelsKt$ticker$3;
    .end local p1    # "$result":Ljava/lang/Object;
    :pswitch_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v1, p0

    .local v1, "this":Lkotlinx/coroutines/channels/TickerChannelsKt$ticker$3;
    .restart local p1    # "$result":Ljava/lang/Object;
    iget-object v2, v1, Lkotlinx/coroutines/channels/TickerChannelsKt$ticker$3;->L$0:Ljava/lang/Object;

    check-cast v2, Lkotlinx/coroutines/channels/ProducerScope;

    .line 71
    .local v2, "$this$produce":Lkotlinx/coroutines/channels/ProducerScope;
    iget-object v3, v1, Lkotlinx/coroutines/channels/TickerChannelsKt$ticker$3;->$mode:Lkotlinx/coroutines/channels/TickerMode;

    sget-object v4, Lkotlinx/coroutines/channels/TickerChannelsKt$ticker$3$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v3}, Lkotlinx/coroutines/channels/TickerMode;->ordinal()I

    move-result v3

    aget v3, v4, v3

    packed-switch v3, :pswitch_data_1

    goto :goto_2

    .line 73
    :pswitch_3
    iget-wide v4, v1, Lkotlinx/coroutines/channels/TickerChannelsKt$ticker$3;->$delayMillis:J

    iget-wide v6, v1, Lkotlinx/coroutines/channels/TickerChannelsKt$ticker$3;->$initialDelayMillis:J

    invoke-interface {v2}, Lkotlinx/coroutines/channels/ProducerScope;->getChannel()Lkotlinx/coroutines/channels/SendChannel;

    move-result-object v8

    move-object v9, v1

    check-cast v9, Lkotlin/coroutines/Continuation;

    const/4 v3, 0x2

    iput v3, v1, Lkotlinx/coroutines/channels/TickerChannelsKt$ticker$3;->label:I

    invoke-static/range {v4 .. v9}, Lkotlinx/coroutines/channels/TickerChannelsKt;->access$fixedDelayTicker(JJLkotlinx/coroutines/channels/SendChannel;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "$this$produce":Lkotlinx/coroutines/channels/ProducerScope;
    if-ne v2, v0, :cond_0

    .line 70
    return-object v0

    .line 73
    :cond_0
    move-object v0, v1

    .end local v1    # "this":Lkotlinx/coroutines/channels/TickerChannelsKt$ticker$3;
    .restart local v0    # "this":Lkotlinx/coroutines/channels/TickerChannelsKt$ticker$3;
    :goto_0
    move-object v1, v0

    goto :goto_2

    .line 72
    .end local v0    # "this":Lkotlinx/coroutines/channels/TickerChannelsKt$ticker$3;
    .restart local v1    # "this":Lkotlinx/coroutines/channels/TickerChannelsKt$ticker$3;
    .restart local v2    # "$this$produce":Lkotlinx/coroutines/channels/ProducerScope;
    :pswitch_4
    iget-wide v3, v1, Lkotlinx/coroutines/channels/TickerChannelsKt$ticker$3;->$delayMillis:J

    iget-wide v5, v1, Lkotlinx/coroutines/channels/TickerChannelsKt$ticker$3;->$initialDelayMillis:J

    invoke-interface {v2}, Lkotlinx/coroutines/channels/ProducerScope;->getChannel()Lkotlinx/coroutines/channels/SendChannel;

    move-result-object v7

    move-object v8, v1

    check-cast v8, Lkotlin/coroutines/Continuation;

    const/4 v9, 0x1

    iput v9, v1, Lkotlinx/coroutines/channels/TickerChannelsKt$ticker$3;->label:I

    invoke-static/range {v3 .. v8}, Lkotlinx/coroutines/channels/TickerChannelsKt;->access$fixedPeriodTicker(JJLkotlinx/coroutines/channels/SendChannel;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "$this$produce":Lkotlinx/coroutines/channels/ProducerScope;
    if-ne v2, v0, :cond_1

    .line 70
    return-object v0

    .line 72
    :cond_1
    move-object v0, v1

    .end local v1    # "this":Lkotlinx/coroutines/channels/TickerChannelsKt$ticker$3;
    .restart local v0    # "this":Lkotlinx/coroutines/channels/TickerChannelsKt$ticker$3;
    :goto_1
    move-object v1, v0

    .line 75
    .end local v0    # "this":Lkotlinx/coroutines/channels/TickerChannelsKt$ticker$3;
    .restart local v1    # "this":Lkotlinx/coroutines/channels/TickerChannelsKt$ticker$3;
    :goto_2
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method
