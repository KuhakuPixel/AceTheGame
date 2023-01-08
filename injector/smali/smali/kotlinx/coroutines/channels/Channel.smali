.class public interface abstract Lkotlinx/coroutines/channels/Channel;
.super Ljava/lang/Object;
.source "Channel.kt"

# interfaces
.implements Lkotlinx/coroutines/channels/SendChannel;
.implements Lkotlinx/coroutines/channels/ReceiveChannel;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlinx/coroutines/channels/Channel$Factory;,
        Lkotlinx/coroutines/channels/Channel$DefaultImpls;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lkotlinx/coroutines/channels/SendChannel<",
        "TE;>;",
        "Lkotlinx/coroutines/channels/ReceiveChannel<",
        "TE;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008f\u0018\u0000 \u0004*\u0004\u0008\u0000\u0010\u00012\u0008\u0012\u0004\u0012\u0002H\u00010\u00022\u0008\u0012\u0004\u0012\u0002H\u00010\u0003:\u0001\u0004\u00a8\u0006\u0005"
    }
    d2 = {
        "Lkotlinx/coroutines/channels/Channel;",
        "E",
        "Lkotlinx/coroutines/channels/SendChannel;",
        "Lkotlinx/coroutines/channels/ReceiveChannel;",
        "Factory",
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


# static fields
.field public static final BUFFERED:I = -0x2

.field public static final CONFLATED:I = -0x1

.field public static final DEFAULT_BUFFER_PROPERTY_NAME:Ljava/lang/String; = "kotlinx.coroutines.channels.defaultBuffer"

.field public static final Factory:Lkotlinx/coroutines/channels/Channel$Factory;

.field public static final OPTIONAL_CHANNEL:I = -0x3

.field public static final RENDEZVOUS:I = 0x0

.field public static final UNLIMITED:I = 0x7fffffff


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lkotlinx/coroutines/channels/Channel$Factory;->$$INSTANCE:Lkotlinx/coroutines/channels/Channel$Factory;

    sput-object v0, Lkotlinx/coroutines/channels/Channel;->Factory:Lkotlinx/coroutines/channels/Channel$Factory;

    return-void
.end method
