.class public final Lkotlinx/coroutines/channels/BroadcastChannelKt;
.super Ljava/lang/Object;
.source "BroadcastChannel.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\u001a\u001c\u0010\u0000\u001a\u0008\u0012\u0004\u0012\u0002H\u00020\u0001\"\u0004\u0008\u0000\u0010\u00022\u0006\u0010\u0003\u001a\u00020\u0004H\u0007\u00a8\u0006\u0005"
    }
    d2 = {
        "BroadcastChannel",
        "Lkotlinx/coroutines/channels/BroadcastChannel;",
        "E",
        "capacity",
        "",
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
.method public static final BroadcastChannel(I)Lkotlinx/coroutines/channels/BroadcastChannel;
    .locals 2
    .param p0, "capacity"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(I)",
            "Lkotlinx/coroutines/channels/BroadcastChannel<",
            "TE;>;"
        }
    .end annotation

    .line 69
    const v0, 0x7fffffff

    if-eq p0, v0, :cond_0

    packed-switch p0, :pswitch_data_0

    .line 74
    new-instance v0, Lkotlinx/coroutines/channels/ArrayBroadcastChannel;

    invoke-direct {v0, p0}, Lkotlinx/coroutines/channels/ArrayBroadcastChannel;-><init>(I)V

    check-cast v0, Lkotlinx/coroutines/channels/BroadcastChannel;

    goto :goto_0

    .line 71
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unsupported UNLIMITED capacity for BroadcastChannel"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 70
    :pswitch_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unsupported 0 capacity for BroadcastChannel"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 72
    :pswitch_1
    new-instance v0, Lkotlinx/coroutines/channels/ConflatedBroadcastChannel;

    invoke-direct {v0}, Lkotlinx/coroutines/channels/ConflatedBroadcastChannel;-><init>()V

    check-cast v0, Lkotlinx/coroutines/channels/BroadcastChannel;

    goto :goto_0

    .line 73
    :pswitch_2
    new-instance v0, Lkotlinx/coroutines/channels/ArrayBroadcastChannel;

    sget-object v1, Lkotlinx/coroutines/channels/Channel;->Factory:Lkotlinx/coroutines/channels/Channel$Factory;

    invoke-virtual {v1}, Lkotlinx/coroutines/channels/Channel$Factory;->getCHANNEL_DEFAULT_CAPACITY$kotlinx_coroutines_core()I

    move-result v1

    invoke-direct {v0, v1}, Lkotlinx/coroutines/channels/ArrayBroadcastChannel;-><init>(I)V

    check-cast v0, Lkotlinx/coroutines/channels/BroadcastChannel;

    .line 75
    :goto_0
    return-object v0

    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
