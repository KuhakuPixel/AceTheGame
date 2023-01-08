.class public final Lkotlinx/coroutines/channels/ConflatedBroadcastChannel$onSend$1;
.super Ljava/lang/Object;
.source "ConflatedBroadcastChannel.kt"

# interfaces
.implements Lkotlinx/coroutines/selects/SelectClause2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlinx/coroutines/channels/ConflatedBroadcastChannel;->getOnSend()Lkotlinx/coroutines/selects/SelectClause2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlinx/coroutines/selects/SelectClause2<",
        "TE;",
        "Lkotlinx/coroutines/channels/SendChannel<",
        "-TE;>;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000/\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u0014\u0012\u0004\u0012\u00028\u0000\u0012\n\u0012\u0008\u0012\u0004\u0012\u00028\u00000\u00020\u0001JV\u0010\u0003\u001a\u00020\u0004\"\u0004\u0008\u0001\u0010\u00052\u000c\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u0002H\u00050\u00072\u0006\u0010\u0008\u001a\u00028\u00002(\u0010\t\u001a$\u0008\u0001\u0012\n\u0012\u0008\u0012\u0004\u0012\u00028\u00000\u0002\u0012\n\u0012\u0008\u0012\u0004\u0012\u0002H\u00050\u000b\u0012\u0006\u0012\u0004\u0018\u00010\u000c0\nH\u0016\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\r\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006\u000e"
    }
    d2 = {
        "kotlinx/coroutines/channels/ConflatedBroadcastChannel$onSend$1",
        "Lkotlinx/coroutines/selects/SelectClause2;",
        "Lkotlinx/coroutines/channels/SendChannel;",
        "registerSelectClause2",
        "",
        "R",
        "select",
        "Lkotlinx/coroutines/selects/SelectInstance;",
        "param",
        "block",
        "Lkotlin/Function2;",
        "Lkotlin/coroutines/Continuation;",
        "",
        "(Lkotlinx/coroutines/selects/SelectInstance;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V",
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
.field final synthetic this$0:Lkotlinx/coroutines/channels/ConflatedBroadcastChannel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/channels/ConflatedBroadcastChannel<",
            "TE;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lkotlinx/coroutines/channels/ConflatedBroadcastChannel;)V
    .locals 0
    .param p1, "$receiver"    # Lkotlinx/coroutines/channels/ConflatedBroadcastChannel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/channels/ConflatedBroadcastChannel<",
            "TE;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lkotlinx/coroutines/channels/ConflatedBroadcastChannel$onSend$1;->this$0:Lkotlinx/coroutines/channels/ConflatedBroadcastChannel;

    .line 267
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public registerSelectClause2(Lkotlinx/coroutines/selects/SelectInstance;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V
    .locals 1
    .param p1, "select"    # Lkotlinx/coroutines/selects/SelectInstance;
    .param p2, "param"    # Ljava/lang/Object;
    .param p3, "block"    # Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlinx/coroutines/selects/SelectInstance<",
            "-TR;>;TE;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lkotlinx/coroutines/channels/SendChannel<",
            "-TE;>;-",
            "Lkotlin/coroutines/Continuation<",
            "-TR;>;+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 269
    iget-object v0, p0, Lkotlinx/coroutines/channels/ConflatedBroadcastChannel$onSend$1;->this$0:Lkotlinx/coroutines/channels/ConflatedBroadcastChannel;

    invoke-static {v0, p1, p2, p3}, Lkotlinx/coroutines/channels/ConflatedBroadcastChannel;->access$registerSelectSend(Lkotlinx/coroutines/channels/ConflatedBroadcastChannel;Lkotlinx/coroutines/selects/SelectInstance;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 270
    return-void
.end method
