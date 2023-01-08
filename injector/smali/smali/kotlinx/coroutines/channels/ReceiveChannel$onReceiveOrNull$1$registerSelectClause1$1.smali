.class final Lkotlinx/coroutines/channels/ReceiveChannel$onReceiveOrNull$1$registerSelectClause1$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "Channel.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlinx/coroutines/channels/ReceiveChannel$onReceiveOrNull$1;->registerSelectClause1(Lkotlinx/coroutines/selects/SelectInstance;Lkotlin/jvm/functions/Function2;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lkotlinx/coroutines/channels/ChannelResult<",
        "+TE;>;",
        "Lkotlin/coroutines/Continuation<",
        "-TR;>;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nChannel.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Channel.kt\nkotlinx/coroutines/channels/ReceiveChannel$onReceiveOrNull$1$registerSelectClause1$1\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,821:1\n1#2:822\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0002\u0008\u0004\n\u0002\u0018\u0002\u0010\u0000\u001a\u0002H\u0001\"\u0004\u0008\u0000\u0010\u0001\"\u0006\u0008\u0001\u0010\u0002 \u00012\u000c\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u0002H\u00020\u0004H\u008a@"
    }
    d2 = {
        "<anonymous>",
        "R",
        "E",
        "it",
        "Lkotlinx/coroutines/channels/ChannelResult;"
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
    c = "kotlinx.coroutines.channels.ReceiveChannel$onReceiveOrNull$1$registerSelectClause1$1"
    f = "Channel.kt"
    i = {}
    l = {
        0x177
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $block:Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function2<",
            "TE;",
            "Lkotlin/coroutines/Continuation<",
            "-TR;>;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field synthetic L$0:Ljava/lang/Object;

.field label:I


# direct methods
.method constructor <init>(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function2<",
            "-TE;-",
            "Lkotlin/coroutines/Continuation<",
            "-TR;>;+",
            "Ljava/lang/Object;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlinx/coroutines/channels/ReceiveChannel$onReceiveOrNull$1$registerSelectClause1$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lkotlinx/coroutines/channels/ReceiveChannel$onReceiveOrNull$1$registerSelectClause1$1;->$block:Lkotlin/jvm/functions/Function2;

    const/4 v0, 0x2

    invoke-direct {p0, v0, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

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

    new-instance v0, Lkotlinx/coroutines/channels/ReceiveChannel$onReceiveOrNull$1$registerSelectClause1$1;

    iget-object v1, p0, Lkotlinx/coroutines/channels/ReceiveChannel$onReceiveOrNull$1$registerSelectClause1$1;->$block:Lkotlin/jvm/functions/Function2;

    invoke-direct {v0, v1, p2}, Lkotlinx/coroutines/channels/ReceiveChannel$onReceiveOrNull$1$registerSelectClause1$1;-><init>(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lkotlinx/coroutines/channels/ReceiveChannel$onReceiveOrNull$1$registerSelectClause1$1;->L$0:Ljava/lang/Object;

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    move-object v0, p1

    check-cast v0, Lkotlinx/coroutines/channels/ChannelResult;

    invoke-virtual {v0}, Lkotlinx/coroutines/channels/ChannelResult;->unbox-impl()Ljava/lang/Object;

    move-result-object v0

    move-object v1, p2

    check-cast v1, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, v0, v1}, Lkotlinx/coroutines/channels/ReceiveChannel$onReceiveOrNull$1$registerSelectClause1$1;->invoke-WpGqRn0(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invoke-WpGqRn0(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lkotlin/coroutines/Continuation<",
            "-TR;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-static {p1}, Lkotlinx/coroutines/channels/ChannelResult;->box-impl(Ljava/lang/Object;)Lkotlinx/coroutines/channels/ChannelResult;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lkotlinx/coroutines/channels/ReceiveChannel$onReceiveOrNull$1$registerSelectClause1$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v0

    check-cast v0, Lkotlinx/coroutines/channels/ReceiveChannel$onReceiveOrNull$1$registerSelectClause1$1;

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, v1}, Lkotlinx/coroutines/channels/ReceiveChannel$onReceiveOrNull$1$registerSelectClause1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 373
    iget v1, p0, Lkotlinx/coroutines/channels/ReceiveChannel$onReceiveOrNull$1$registerSelectClause1$1;->label:I

    packed-switch v1, :pswitch_data_0

    .line 375
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 373
    :pswitch_0
    move-object v0, p0

    .local v0, "this":Lkotlinx/coroutines/channels/ReceiveChannel$onReceiveOrNull$1$registerSelectClause1$1;
    .local p1, "$result":Ljava/lang/Object;
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v2, p1

    goto :goto_0

    .end local v0    # "this":Lkotlinx/coroutines/channels/ReceiveChannel$onReceiveOrNull$1$registerSelectClause1$1;
    .end local p1    # "$result":Ljava/lang/Object;
    :pswitch_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v1, p0

    .local v1, "this":Lkotlinx/coroutines/channels/ReceiveChannel$onReceiveOrNull$1$registerSelectClause1$1;
    .restart local p1    # "$result":Ljava/lang/Object;
    iget-object v2, v1, Lkotlinx/coroutines/channels/ReceiveChannel$onReceiveOrNull$1$registerSelectClause1$1;->L$0:Ljava/lang/Object;

    check-cast v2, Lkotlinx/coroutines/channels/ChannelResult;

    invoke-virtual {v2}, Lkotlinx/coroutines/channels/ChannelResult;->unbox-impl()Ljava/lang/Object;

    move-result-object v2

    .line 374
    .local v2, "it":Ljava/lang/Object;
    invoke-static {v2}, Lkotlinx/coroutines/channels/ChannelResult;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v3

    if-nez v3, :cond_1

    .line 375
    iget-object v3, v1, Lkotlinx/coroutines/channels/ReceiveChannel$onReceiveOrNull$1$registerSelectClause1$1;->$block:Lkotlin/jvm/functions/Function2;

    invoke-static {v2}, Lkotlinx/coroutines/channels/ChannelResult;->getOrNull-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    const/4 v5, 0x1

    iput v5, v1, Lkotlinx/coroutines/channels/ReceiveChannel$onReceiveOrNull$1$registerSelectClause1$1;->label:I

    invoke-interface {v3, v4, v1}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "it":Ljava/lang/Object;
    if-ne v2, v0, :cond_0

    .line 373
    return-object v0

    .line 375
    :cond_0
    move-object v0, v1

    .end local v1    # "this":Lkotlinx/coroutines/channels/ReceiveChannel$onReceiveOrNull$1$registerSelectClause1$1;
    .restart local v0    # "this":Lkotlinx/coroutines/channels/ReceiveChannel$onReceiveOrNull$1$registerSelectClause1$1;
    :goto_0
    return-object v2

    .line 374
    .end local v0    # "this":Lkotlinx/coroutines/channels/ReceiveChannel$onReceiveOrNull$1$registerSelectClause1$1;
    .restart local v1    # "this":Lkotlinx/coroutines/channels/ReceiveChannel$onReceiveOrNull$1$registerSelectClause1$1;
    :cond_1
    move-object v0, v3

    .line 822
    .local v0, "it":Ljava/lang/Throwable;
    const/4 v2, 0x0

    .line 374
    .local v2, "$i$a$-let-ReceiveChannel$onReceiveOrNull$1$registerSelectClause1$1$1":I
    throw v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
