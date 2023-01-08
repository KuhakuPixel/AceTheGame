.class Lkotlinx/coroutines/channels/BroadcastCoroutine;
.super Lkotlinx/coroutines/AbstractCoroutine;
.source "Broadcast.kt"

# interfaces
.implements Lkotlinx/coroutines/channels/ProducerScope;
.implements Lkotlinx/coroutines/channels/BroadcastChannel;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lkotlinx/coroutines/AbstractCoroutine<",
        "Lkotlin/Unit;",
        ">;",
        "Lkotlinx/coroutines/channels/ProducerScope<",
        "TE;>;",
        "Lkotlinx/coroutines/channels/BroadcastChannel<",
        "TE;>;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nBroadcast.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Broadcast.kt\nkotlinx/coroutines/channels/BroadcastCoroutine\n+ 2 JobSupport.kt\nkotlinx/coroutines/JobSupport\n*L\n1#1,199:1\n702#2,2:200\n702#2,2:202\n*S KotlinDebug\n*F\n+ 1 Broadcast.kt\nkotlinx/coroutines/channels/BroadcastCoroutine\n*L\n149#1:200,2\n154#1:202,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000d\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0012\u0018\u0000*\u0004\u0008\u0000\u0010\u00012\u0008\u0012\u0004\u0012\u00020\u00030\u00022\u0008\u0012\u0004\u0012\u0002H\u00010\u00042\u0008\u0012\u0004\u0012\u0002H\u00010\u0005B#\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u000c\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0005\u0012\u0006\u0010\t\u001a\u00020\n\u00a2\u0006\u0002\u0010\u000bJ\u0012\u0010\u0019\u001a\u00020\n2\u0008\u0010\u001a\u001a\u0004\u0018\u00010\u001bH\u0007J\u0016\u0010\u0019\u001a\u00020\u00032\u000e\u0010\u001a\u001a\n\u0018\u00010\u001cj\u0004\u0018\u0001`\u001dJ\u0010\u0010\u001e\u001a\u00020\u00032\u0006\u0010\u001a\u001a\u00020\u001bH\u0016J\u0012\u0010\u001f\u001a\u00020\n2\u0008\u0010\u001a\u001a\u0004\u0018\u00010\u001bH\u0016J.\u0010 \u001a\u00020\u00032#\u0010!\u001a\u001f\u0012\u0015\u0012\u0013\u0018\u00010\u001b\u00a2\u0006\u000c\u0008#\u0012\u0008\u0008$\u0012\u0004\u0008\u0008(\u001a\u0012\u0004\u0012\u00020\u00030\"H\u0097\u0001J\u0016\u0010%\u001a\u00020\n2\u0006\u0010&\u001a\u00028\u0000H\u0097\u0001\u00a2\u0006\u0002\u0010\'J\u0018\u0010(\u001a\u00020\u00032\u0006\u0010\u001a\u001a\u00020\u001b2\u0006\u0010)\u001a\u00020\nH\u0014J\u0015\u0010*\u001a\u00020\u00032\u0006\u0010+\u001a\u00020\u0003H\u0014\u00a2\u0006\u0002\u0010,J\u000f\u0010-\u001a\u0008\u0012\u0004\u0012\u00028\u00000.H\u0096\u0001J\u0019\u0010/\u001a\u00020\u00032\u0006\u0010&\u001a\u00028\u0000H\u0096A\u00f8\u0001\u0000\u00a2\u0006\u0002\u00100J\'\u00101\u001a\u0008\u0012\u0004\u0012\u00020\u0003022\u0006\u0010&\u001a\u00028\u0000H\u0096\u0001\u00f8\u0001\u0000\u00f8\u0001\u0001\u00f8\u0001\u0002\u00a2\u0006\u0004\u00083\u00104R\u001a\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0005X\u0084\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\rR\u001a\u0010\u000e\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u000f8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0010\u0010\u0011R\u0014\u0010\u0012\u001a\u00020\n8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0012\u0010\u0013R\u0014\u0010\u0014\u001a\u00020\n8\u0016X\u0097\u0005\u00a2\u0006\u0006\u001a\u0004\u0008\u0014\u0010\u0013R$\u0010\u0015\u001a\u0014\u0012\u0004\u0012\u00028\u0000\u0012\n\u0012\u0008\u0012\u0004\u0012\u00028\u00000\u000f0\u0016X\u0096\u0005\u00a2\u0006\u0006\u001a\u0004\u0008\u0017\u0010\u0018\u0082\u0002\u000f\n\u0002\u0008\u0019\n\u0002\u0008!\n\u0005\u0008\u00a1\u001e0\u0001\u00a8\u00065"
    }
    d2 = {
        "Lkotlinx/coroutines/channels/BroadcastCoroutine;",
        "E",
        "Lkotlinx/coroutines/AbstractCoroutine;",
        "",
        "Lkotlinx/coroutines/channels/ProducerScope;",
        "Lkotlinx/coroutines/channels/BroadcastChannel;",
        "parentContext",
        "Lkotlin/coroutines/CoroutineContext;",
        "_channel",
        "active",
        "",
        "(Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/channels/BroadcastChannel;Z)V",
        "get_channel",
        "()Lkotlinx/coroutines/channels/BroadcastChannel;",
        "channel",
        "Lkotlinx/coroutines/channels/SendChannel;",
        "getChannel",
        "()Lkotlinx/coroutines/channels/SendChannel;",
        "isActive",
        "()Z",
        "isClosedForSend",
        "onSend",
        "Lkotlinx/coroutines/selects/SelectClause2;",
        "getOnSend",
        "()Lkotlinx/coroutines/selects/SelectClause2;",
        "cancel",
        "cause",
        "",
        "Ljava/util/concurrent/CancellationException;",
        "Lkotlinx/coroutines/CancellationException;",
        "cancelInternal",
        "close",
        "invokeOnClose",
        "handler",
        "Lkotlin/Function1;",
        "Lkotlin/ParameterName;",
        "name",
        "offer",
        "element",
        "(Ljava/lang/Object;)Z",
        "onCancelled",
        "handled",
        "onCompleted",
        "value",
        "(Lkotlin/Unit;)V",
        "openSubscription",
        "Lkotlinx/coroutines/channels/ReceiveChannel;",
        "send",
        "(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "trySend",
        "Lkotlinx/coroutines/channels/ChannelResult;",
        "trySend-JP2dKIU",
        "(Ljava/lang/Object;)Ljava/lang/Object;",
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
.field private final _channel:Lkotlinx/coroutines/channels/BroadcastChannel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/channels/BroadcastChannel<",
            "TE;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/channels/BroadcastChannel;Z)V
    .locals 1
    .param p1, "parentContext"    # Lkotlin/coroutines/CoroutineContext;
    .param p2, "_channel"    # Lkotlinx/coroutines/channels/BroadcastChannel;
    .param p3, "active"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/CoroutineContext;",
            "Lkotlinx/coroutines/channels/BroadcastChannel<",
            "TE;>;Z)V"
        }
    .end annotation

    .line 135
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p3}, Lkotlinx/coroutines/AbstractCoroutine;-><init>(Lkotlin/coroutines/CoroutineContext;ZZ)V

    .line 133
    iput-object p2, p0, Lkotlinx/coroutines/channels/BroadcastCoroutine;->_channel:Lkotlinx/coroutines/channels/BroadcastChannel;

    .line 138
    nop

    .line 139
    sget-object v0, Lkotlinx/coroutines/Job;->Key:Lkotlinx/coroutines/Job$Key;

    check-cast v0, Lkotlin/coroutines/CoroutineContext$Key;

    invoke-interface {p1, v0}, Lkotlin/coroutines/CoroutineContext;->get(Lkotlin/coroutines/CoroutineContext$Key;)Lkotlin/coroutines/CoroutineContext$Element;

    move-result-object v0

    check-cast v0, Lkotlinx/coroutines/Job;

    invoke-virtual {p0, v0}, Lkotlinx/coroutines/channels/BroadcastCoroutine;->initParentJob(Lkotlinx/coroutines/Job;)V

    .line 140
    nop

    .line 131
    return-void
.end method


# virtual methods
.method public final cancel(Ljava/util/concurrent/CancellationException;)V
    .locals 6
    .param p1, "cause"    # Ljava/util/concurrent/CancellationException;

    .line 154
    if-nez p1, :cond_0

    .line 202
    const/4 v0, 0x0

    .local v0, "message$iv":Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "cause$iv":Ljava/lang/Throwable;
    const/4 v2, 0x0

    .line 203
    .local v2, "$i$f$defaultCancellationException$kotlinx_coroutines_core":I
    new-instance v3, Lkotlinx/coroutines/JobCancellationException;

    move-object v4, p0

    check-cast v4, Lkotlinx/coroutines/JobSupport;

    invoke-static {v4}, Lkotlinx/coroutines/JobSupport;->access$cancellationExceptionMessage(Lkotlinx/coroutines/JobSupport;)Ljava/lang/String;

    move-result-object v4

    move-object v5, p0

    check-cast v5, Lkotlinx/coroutines/JobSupport;

    check-cast v5, Lkotlinx/coroutines/Job;

    invoke-direct {v3, v4, v1, v5}, Lkotlinx/coroutines/JobCancellationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lkotlinx/coroutines/Job;)V

    .end local v0    # "message$iv":Ljava/lang/String;
    .end local v1    # "cause$iv":Ljava/lang/Throwable;
    .end local v2    # "$i$f$defaultCancellationException$kotlinx_coroutines_core":I
    check-cast v3, Ljava/util/concurrent/CancellationException;

    goto :goto_0

    .line 154
    :cond_0
    move-object v3, p1

    :goto_0
    check-cast v3, Ljava/lang/Throwable;

    invoke-virtual {p0, v3}, Lkotlinx/coroutines/channels/BroadcastCoroutine;->cancelInternal(Ljava/lang/Throwable;)V

    .line 155
    return-void
.end method

.method public final synthetic cancel(Ljava/lang/Throwable;)Z
    .locals 6
    .param p1, "cause"    # Ljava/lang/Throwable;
    .annotation runtime Lkotlin/Deprecated;
        level = .enum Lkotlin/DeprecationLevel;->HIDDEN:Lkotlin/DeprecationLevel;
        message = "Since 1.2.0, binary compatibility with versions <= 1.1.x"
    .end annotation

    .line 149
    if-nez p1, :cond_0

    .line 200
    const/4 v0, 0x0

    .local v0, "message$iv":Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "cause$iv":Ljava/lang/Throwable;
    const/4 v2, 0x0

    .line 201
    .local v2, "$i$f$defaultCancellationException$kotlinx_coroutines_core":I
    new-instance v3, Lkotlinx/coroutines/JobCancellationException;

    move-object v4, p0

    check-cast v4, Lkotlinx/coroutines/JobSupport;

    invoke-static {v4}, Lkotlinx/coroutines/JobSupport;->access$cancellationExceptionMessage(Lkotlinx/coroutines/JobSupport;)Ljava/lang/String;

    move-result-object v4

    move-object v5, p0

    check-cast v5, Lkotlinx/coroutines/JobSupport;

    check-cast v5, Lkotlinx/coroutines/Job;

    invoke-direct {v3, v4, v1, v5}, Lkotlinx/coroutines/JobCancellationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lkotlinx/coroutines/Job;)V

    .end local v0    # "message$iv":Ljava/lang/String;
    .end local v1    # "cause$iv":Ljava/lang/Throwable;
    .end local v2    # "$i$f$defaultCancellationException$kotlinx_coroutines_core":I
    check-cast v3, Ljava/lang/Throwable;

    goto :goto_0

    .line 149
    :cond_0
    move-object v3, p1

    :goto_0
    invoke-virtual {p0, v3}, Lkotlinx/coroutines/channels/BroadcastCoroutine;->cancelInternal(Ljava/lang/Throwable;)V

    .line 150
    const/4 v0, 0x1

    return v0
.end method

.method public cancelInternal(Ljava/lang/Throwable;)V
    .locals 3
    .param p1, "cause"    # Ljava/lang/Throwable;

    .line 158
    move-object v0, p0

    check-cast v0, Lkotlinx/coroutines/JobSupport;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, p1, v1, v2, v1}, Lkotlinx/coroutines/JobSupport;->toCancellationException$default(Lkotlinx/coroutines/JobSupport;Ljava/lang/Throwable;Ljava/lang/String;ILjava/lang/Object;)Ljava/util/concurrent/CancellationException;

    move-result-object v0

    .line 159
    .local v0, "exception":Ljava/util/concurrent/CancellationException;
    iget-object v1, p0, Lkotlinx/coroutines/channels/BroadcastCoroutine;->_channel:Lkotlinx/coroutines/channels/BroadcastChannel;

    invoke-interface {v1, v0}, Lkotlinx/coroutines/channels/BroadcastChannel;->cancel(Ljava/util/concurrent/CancellationException;)V

    .line 160
    move-object v1, v0

    check-cast v1, Ljava/lang/Throwable;

    invoke-virtual {p0, v1}, Lkotlinx/coroutines/channels/BroadcastCoroutine;->cancelCoroutine(Ljava/lang/Throwable;)Z

    .line 161
    return-void
.end method

.method public close(Ljava/lang/Throwable;)Z
    .locals 1
    .param p1, "cause"    # Ljava/lang/Throwable;

    .line 174
    iget-object v0, p0, Lkotlinx/coroutines/channels/BroadcastCoroutine;->_channel:Lkotlinx/coroutines/channels/BroadcastChannel;

    invoke-interface {v0, p1}, Lkotlinx/coroutines/channels/BroadcastChannel;->close(Ljava/lang/Throwable;)Z

    move-result v0

    .line 175
    .local v0, "result":Z
    invoke-virtual {p0}, Lkotlinx/coroutines/channels/BroadcastCoroutine;->start()Z

    .line 176
    return v0
.end method

.method public getChannel()Lkotlinx/coroutines/channels/SendChannel;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/channels/SendChannel<",
            "TE;>;"
        }
    .end annotation

    .line 145
    move-object v0, p0

    check-cast v0, Lkotlinx/coroutines/channels/SendChannel;

    return-object v0
.end method

.method public getOnSend()Lkotlinx/coroutines/selects/SelectClause2;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/selects/SelectClause2<",
            "TE;",
            "Lkotlinx/coroutines/channels/SendChannel<",
            "TE;>;>;"
        }
    .end annotation

    iget-object v0, p0, Lkotlinx/coroutines/channels/BroadcastCoroutine;->_channel:Lkotlinx/coroutines/channels/BroadcastChannel;

    invoke-interface {v0}, Lkotlinx/coroutines/channels/BroadcastChannel;->getOnSend()Lkotlinx/coroutines/selects/SelectClause2;

    move-result-object v0

    return-object v0
.end method

.method protected final get_channel()Lkotlinx/coroutines/channels/BroadcastChannel;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/channels/BroadcastChannel<",
            "TE;>;"
        }
    .end annotation

    .line 133
    iget-object v0, p0, Lkotlinx/coroutines/channels/BroadcastCoroutine;->_channel:Lkotlinx/coroutines/channels/BroadcastChannel;

    return-object v0
.end method

.method public invokeOnClose(Lkotlin/jvm/functions/Function1;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Throwable;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lkotlinx/coroutines/channels/BroadcastCoroutine;->_channel:Lkotlinx/coroutines/channels/BroadcastChannel;

    invoke-interface {v0, p1}, Lkotlinx/coroutines/channels/BroadcastChannel;->invokeOnClose(Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public isActive()Z
    .locals 1

    .line 142
    invoke-super {p0}, Lkotlinx/coroutines/AbstractCoroutine;->isActive()Z

    move-result v0

    return v0
.end method

.method public isClosedForSend()Z
    .locals 1

    iget-object v0, p0, Lkotlinx/coroutines/channels/BroadcastCoroutine;->_channel:Lkotlinx/coroutines/channels/BroadcastChannel;

    invoke-interface {v0}, Lkotlinx/coroutines/channels/BroadcastChannel;->isClosedForSend()Z

    move-result v0

    return v0
.end method

.method public offer(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .annotation runtime Lkotlin/Deprecated;
        level = .enum Lkotlin/DeprecationLevel;->ERROR:Lkotlin/DeprecationLevel;
        message = "Deprecated in the favour of \'trySend\' method"
        replaceWith = .subannotation Lkotlin/ReplaceWith;
            expression = "trySend(element).isSuccess"
            imports = {}
        .end subannotation
    .end annotation

    iget-object v0, p0, Lkotlinx/coroutines/channels/BroadcastCoroutine;->_channel:Lkotlinx/coroutines/channels/BroadcastChannel;

    invoke-interface {v0, p1}, Lkotlinx/coroutines/channels/BroadcastChannel;->offer(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method protected onCancelled(Ljava/lang/Throwable;Z)V
    .locals 2
    .param p1, "cause"    # Ljava/lang/Throwable;
    .param p2, "handled"    # Z

    .line 168
    iget-object v0, p0, Lkotlinx/coroutines/channels/BroadcastCoroutine;->_channel:Lkotlinx/coroutines/channels/BroadcastChannel;

    invoke-interface {v0, p1}, Lkotlinx/coroutines/channels/BroadcastChannel;->close(Ljava/lang/Throwable;)Z

    move-result v0

    .line 169
    .local v0, "processed":Z
    if-nez v0, :cond_0

    if-nez p2, :cond_0

    invoke-virtual {p0}, Lkotlinx/coroutines/channels/BroadcastCoroutine;->getContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object v1

    invoke-static {v1, p1}, Lkotlinx/coroutines/CoroutineExceptionHandlerKt;->handleCoroutineException(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Throwable;)V

    .line 170
    :cond_0
    return-void
.end method

.method public bridge synthetic onCompleted(Ljava/lang/Object;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/Object;

    .line 131
    move-object v0, p1

    check-cast v0, Lkotlin/Unit;

    invoke-virtual {p0, v0}, Lkotlinx/coroutines/channels/BroadcastCoroutine;->onCompleted(Lkotlin/Unit;)V

    return-void
.end method

.method protected onCompleted(Lkotlin/Unit;)V
    .locals 3
    .param p1, "value"    # Lkotlin/Unit;

    .line 164
    iget-object v0, p0, Lkotlinx/coroutines/channels/BroadcastCoroutine;->_channel:Lkotlinx/coroutines/channels/BroadcastChannel;

    check-cast v0, Lkotlinx/coroutines/channels/SendChannel;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2, v1}, Lkotlinx/coroutines/channels/SendChannel$DefaultImpls;->close$default(Lkotlinx/coroutines/channels/SendChannel;Ljava/lang/Throwable;ILjava/lang/Object;)Z

    .line 165
    return-void
.end method

.method public openSubscription()Lkotlinx/coroutines/channels/ReceiveChannel;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/channels/ReceiveChannel<",
            "TE;>;"
        }
    .end annotation

    iget-object v0, p0, Lkotlinx/coroutines/channels/BroadcastCoroutine;->_channel:Lkotlinx/coroutines/channels/BroadcastChannel;

    invoke-interface {v0}, Lkotlinx/coroutines/channels/BroadcastChannel;->openSubscription()Lkotlinx/coroutines/channels/ReceiveChannel;

    move-result-object v0

    return-object v0
.end method

.method public send(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    iget-object v0, p0, Lkotlinx/coroutines/channels/BroadcastCoroutine;->_channel:Lkotlinx/coroutines/channels/BroadcastChannel;

    invoke-interface {v0, p1, p2}, Lkotlinx/coroutines/channels/BroadcastChannel;->send(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public trySend-JP2dKIU(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    iget-object v0, p0, Lkotlinx/coroutines/channels/BroadcastCoroutine;->_channel:Lkotlinx/coroutines/channels/BroadcastChannel;

    invoke-interface {v0, p1}, Lkotlinx/coroutines/channels/BroadcastChannel;->trySend-JP2dKIU(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
