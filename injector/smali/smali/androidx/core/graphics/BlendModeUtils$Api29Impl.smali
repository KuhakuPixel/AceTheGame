.class Landroidx/core/graphics/BlendModeUtils$Api29Impl;
.super Ljava/lang/Object;
.source "BlendModeUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/graphics/BlendModeUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Api29Impl"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    return-void
.end method

.method static obtainBlendModeFromCompat(Landroidx/core/graphics/BlendModeCompat;)Ljava/lang/Object;
    .locals 2
    .param p0, "blendModeCompat"    # Landroidx/core/graphics/BlendModeCompat;

    .line 45
    sget-object v0, Landroidx/core/graphics/BlendModeUtils$1;->$SwitchMap$androidx$core$graphics$BlendModeCompat:[I

    invoke-virtual {p0}, Landroidx/core/graphics/BlendModeCompat;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 105
    const/4 v0, 0x0

    return-object v0

    .line 103
    :pswitch_0
    sget-object v0, Landroid/graphics/BlendMode;->LUMINOSITY:Landroid/graphics/BlendMode;

    return-object v0

    .line 101
    :pswitch_1
    sget-object v0, Landroid/graphics/BlendMode;->COLOR:Landroid/graphics/BlendMode;

    return-object v0

    .line 99
    :pswitch_2
    sget-object v0, Landroid/graphics/BlendMode;->SATURATION:Landroid/graphics/BlendMode;

    return-object v0

    .line 97
    :pswitch_3
    sget-object v0, Landroid/graphics/BlendMode;->HUE:Landroid/graphics/BlendMode;

    return-object v0

    .line 95
    :pswitch_4
    sget-object v0, Landroid/graphics/BlendMode;->MULTIPLY:Landroid/graphics/BlendMode;

    return-object v0

    .line 93
    :pswitch_5
    sget-object v0, Landroid/graphics/BlendMode;->EXCLUSION:Landroid/graphics/BlendMode;

    return-object v0

    .line 91
    :pswitch_6
    sget-object v0, Landroid/graphics/BlendMode;->DIFFERENCE:Landroid/graphics/BlendMode;

    return-object v0

    .line 89
    :pswitch_7
    sget-object v0, Landroid/graphics/BlendMode;->SOFT_LIGHT:Landroid/graphics/BlendMode;

    return-object v0

    .line 87
    :pswitch_8
    sget-object v0, Landroid/graphics/BlendMode;->HARD_LIGHT:Landroid/graphics/BlendMode;

    return-object v0

    .line 85
    :pswitch_9
    sget-object v0, Landroid/graphics/BlendMode;->COLOR_BURN:Landroid/graphics/BlendMode;

    return-object v0

    .line 83
    :pswitch_a
    sget-object v0, Landroid/graphics/BlendMode;->COLOR_DODGE:Landroid/graphics/BlendMode;

    return-object v0

    .line 81
    :pswitch_b
    sget-object v0, Landroid/graphics/BlendMode;->LIGHTEN:Landroid/graphics/BlendMode;

    return-object v0

    .line 79
    :pswitch_c
    sget-object v0, Landroid/graphics/BlendMode;->DARKEN:Landroid/graphics/BlendMode;

    return-object v0

    .line 77
    :pswitch_d
    sget-object v0, Landroid/graphics/BlendMode;->OVERLAY:Landroid/graphics/BlendMode;

    return-object v0

    .line 75
    :pswitch_e
    sget-object v0, Landroid/graphics/BlendMode;->SCREEN:Landroid/graphics/BlendMode;

    return-object v0

    .line 73
    :pswitch_f
    sget-object v0, Landroid/graphics/BlendMode;->MODULATE:Landroid/graphics/BlendMode;

    return-object v0

    .line 71
    :pswitch_10
    sget-object v0, Landroid/graphics/BlendMode;->PLUS:Landroid/graphics/BlendMode;

    return-object v0

    .line 69
    :pswitch_11
    sget-object v0, Landroid/graphics/BlendMode;->XOR:Landroid/graphics/BlendMode;

    return-object v0

    .line 67
    :pswitch_12
    sget-object v0, Landroid/graphics/BlendMode;->DST_ATOP:Landroid/graphics/BlendMode;

    return-object v0

    .line 65
    :pswitch_13
    sget-object v0, Landroid/graphics/BlendMode;->SRC_ATOP:Landroid/graphics/BlendMode;

    return-object v0

    .line 63
    :pswitch_14
    sget-object v0, Landroid/graphics/BlendMode;->DST_OUT:Landroid/graphics/BlendMode;

    return-object v0

    .line 61
    :pswitch_15
    sget-object v0, Landroid/graphics/BlendMode;->SRC_OUT:Landroid/graphics/BlendMode;

    return-object v0

    .line 59
    :pswitch_16
    sget-object v0, Landroid/graphics/BlendMode;->DST_IN:Landroid/graphics/BlendMode;

    return-object v0

    .line 57
    :pswitch_17
    sget-object v0, Landroid/graphics/BlendMode;->SRC_IN:Landroid/graphics/BlendMode;

    return-object v0

    .line 55
    :pswitch_18
    sget-object v0, Landroid/graphics/BlendMode;->DST_OVER:Landroid/graphics/BlendMode;

    return-object v0

    .line 53
    :pswitch_19
    sget-object v0, Landroid/graphics/BlendMode;->SRC_OVER:Landroid/graphics/BlendMode;

    return-object v0

    .line 51
    :pswitch_1a
    sget-object v0, Landroid/graphics/BlendMode;->DST:Landroid/graphics/BlendMode;

    return-object v0

    .line 49
    :pswitch_1b
    sget-object v0, Landroid/graphics/BlendMode;->SRC:Landroid/graphics/BlendMode;

    return-object v0

    .line 47
    :pswitch_1c
    sget-object v0, Landroid/graphics/BlendMode;->CLEAR:Landroid/graphics/BlendMode;

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
