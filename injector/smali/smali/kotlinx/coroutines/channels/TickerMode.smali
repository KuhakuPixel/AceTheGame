.class public final enum Lkotlinx/coroutines/channels/TickerMode;
.super Ljava/lang/Enum;
.source "TickerChannels.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lkotlinx/coroutines/channels/TickerMode;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0008\u0004\u0008\u0087\u0001\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002j\u0002\u0008\u0003j\u0002\u0008\u0004\u00a8\u0006\u0005"
    }
    d2 = {
        "Lkotlinx/coroutines/channels/TickerMode;",
        "",
        "(Ljava/lang/String;I)V",
        "FIXED_PERIOD",
        "FIXED_DELAY",
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
.field private static final synthetic $VALUES:[Lkotlinx/coroutines/channels/TickerMode;

.field public static final enum FIXED_DELAY:Lkotlinx/coroutines/channels/TickerMode;

.field public static final enum FIXED_PERIOD:Lkotlinx/coroutines/channels/TickerMode;


# direct methods
.method private static final synthetic $values()[Lkotlinx/coroutines/channels/TickerMode;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Lkotlinx/coroutines/channels/TickerMode;

    sget-object v1, Lkotlinx/coroutines/channels/TickerMode;->FIXED_PERIOD:Lkotlinx/coroutines/channels/TickerMode;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lkotlinx/coroutines/channels/TickerMode;->FIXED_DELAY:Lkotlinx/coroutines/channels/TickerMode;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 33
    new-instance v0, Lkotlinx/coroutines/channels/TickerMode;

    const-string v1, "FIXED_PERIOD"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lkotlinx/coroutines/channels/TickerMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lkotlinx/coroutines/channels/TickerMode;->FIXED_PERIOD:Lkotlinx/coroutines/channels/TickerMode;

    .line 38
    new-instance v0, Lkotlinx/coroutines/channels/TickerMode;

    const-string v1, "FIXED_DELAY"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lkotlinx/coroutines/channels/TickerMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lkotlinx/coroutines/channels/TickerMode;->FIXED_DELAY:Lkotlinx/coroutines/channels/TickerMode;

    invoke-static {}, Lkotlinx/coroutines/channels/TickerMode;->$values()[Lkotlinx/coroutines/channels/TickerMode;

    move-result-object v0

    sput-object v0, Lkotlinx/coroutines/channels/TickerMode;->$VALUES:[Lkotlinx/coroutines/channels/TickerMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .param p1, "$enum$name"    # Ljava/lang/String;
    .param p2, "$enum$ordinal"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 15
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 16
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lkotlinx/coroutines/channels/TickerMode;
    .locals 1

    const-class v0, Lkotlinx/coroutines/channels/TickerMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lkotlinx/coroutines/channels/TickerMode;

    return-object v0
.end method

.method public static values()[Lkotlinx/coroutines/channels/TickerMode;
    .locals 1

    sget-object v0, Lkotlinx/coroutines/channels/TickerMode;->$VALUES:[Lkotlinx/coroutines/channels/TickerMode;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lkotlinx/coroutines/channels/TickerMode;

    return-object v0
.end method
