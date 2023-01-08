.class final Landroidx/core/content/res/CamUtils;
.super Ljava/lang/Object;
.source "CamUtils.java"


# static fields
.field static final CAM16RGB_TO_XYZ:[[F

.field static final SRGB_TO_XYZ:[[F

.field static final WHITE_POINT_D65:[F

.field static final XYZ_TO_CAM16RGB:[[F


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 52
    const/4 v0, 0x3

    new-array v1, v0, [[F

    new-array v2, v0, [F

    fill-array-data v2, :array_0

    const/4 v3, 0x0

    aput-object v2, v1, v3

    new-array v2, v0, [F

    fill-array-data v2, :array_1

    const/4 v4, 0x1

    aput-object v2, v1, v4

    new-array v2, v0, [F

    fill-array-data v2, :array_2

    const/4 v5, 0x2

    aput-object v2, v1, v5

    sput-object v1, Landroidx/core/content/res/CamUtils;->XYZ_TO_CAM16RGB:[[F

    .line 59
    new-array v1, v0, [[F

    new-array v2, v0, [F

    fill-array-data v2, :array_3

    aput-object v2, v1, v3

    new-array v2, v0, [F

    fill-array-data v2, :array_4

    aput-object v2, v1, v4

    new-array v2, v0, [F

    fill-array-data v2, :array_5

    aput-object v2, v1, v5

    sput-object v1, Landroidx/core/content/res/CamUtils;->CAM16RGB_TO_XYZ:[[F

    .line 67
    new-array v1, v0, [F

    fill-array-data v1, :array_6

    sput-object v1, Landroidx/core/content/res/CamUtils;->WHITE_POINT_D65:[F

    .line 73
    new-array v1, v0, [[F

    new-array v2, v0, [F

    fill-array-data v2, :array_7

    aput-object v2, v1, v3

    new-array v2, v0, [F

    fill-array-data v2, :array_8

    aput-object v2, v1, v4

    new-array v0, v0, [F

    fill-array-data v0, :array_9

    aput-object v0, v1, v5

    sput-object v1, Landroidx/core/content/res/CamUtils;->SRGB_TO_XYZ:[[F

    return-void

    nop

    :array_0
    .array-data 4
        0x3ecd759f
        0x3f2671bd
        -0x42ad373b    # -0.051461f
    .end array-data

    :array_1
    .array-data 4
        -0x417fdcdf
        0x3f9a2a3d
        0x3d3bd167
    .end array-data

    :array_2
    .array-data 4
        -0x44f7c02b    # -0.002079f
        0x3d4881e4
        0x3f740022
    .end array-data

    :array_3
    .array-data 4
        0x3fee583d
        -0x407e8f35
        0x3e18c46b
    .end array-data

    :array_4
    .array-data 4
        0x3ec669e1
        0x3f1f172e
        -0x43ecf866
    .end array-data

    :array_5
    .array-data 4
        -0x437e39f7
        -0x42f43b81
        0x3f86653c
    .end array-data

    :array_6
    .array-data 4
        0x42be1810
        0x42c80000    # 100.0f
        0x42d9c419
    .end array-data

    :array_7
    .array-data 4
        0x3ed31e17
        0x3eb71a0d
        0x3e38d7b9
    .end array-data

    :array_8
    .array-data 4
        0x3e59b3d0    # 0.2126f
        0x3f371759    # 0.7152f
        0x3d93dd98    # 0.0722f
    .end array-data

    :array_9
    .array-data 4
        0x3c9e47ef
        0x3df40c29
        0x3f7349cc
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    return-void
.end method

.method static intFromLStar(F)I
    .locals 21
    .param p0, "lStar"    # F

    .line 80
    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float v0, p0, v0

    if-gez v0, :cond_0

    .line 81
    const/high16 v0, -0x1000000

    return v0

    .line 82
    :cond_0
    const/high16 v0, 0x42c60000    # 99.0f

    cmpl-float v0, p0, v0

    if-lez v0, :cond_1

    .line 83
    const/4 v0, -0x1

    return v0

    .line 87
    :cond_1
    const/high16 v0, 0x41800000    # 16.0f

    add-float v1, p0, v0

    const/high16 v2, 0x42e80000    # 116.0f

    div-float/2addr v1, v2

    .line 90
    .local v1, "fy":F
    move v3, v1

    .line 91
    .local v3, "fz":F
    move v4, v1

    .line 93
    .local v4, "fx":F
    const v5, 0x4461d2f7

    .line 94
    .local v5, "kappa":F
    const v6, 0x3c111aa7

    .line 95
    .local v6, "epsilon":F
    const/high16 v7, 0x41000000    # 8.0f

    const/4 v8, 0x1

    const/4 v9, 0x0

    cmpl-float v7, p0, v7

    if-lez v7, :cond_2

    const/4 v7, 0x1

    goto :goto_0

    :cond_2
    const/4 v7, 0x0

    .line 96
    .local v7, "lExceedsEpsilonKappa":Z
    :goto_0
    if-eqz v7, :cond_3

    mul-float v10, v1, v1

    mul-float v10, v10, v1

    goto :goto_1

    :cond_3
    div-float v10, p0, v5

    .line 97
    .local v10, "yT":F
    :goto_1
    mul-float v11, v1, v1

    mul-float v11, v11, v1

    cmpl-float v11, v11, v6

    if-lez v11, :cond_4

    const/4 v11, 0x1

    goto :goto_2

    :cond_4
    const/4 v11, 0x0

    .line 98
    .local v11, "cubeExceedEpsilon":Z
    :goto_2
    if-eqz v11, :cond_5

    mul-float v12, v4, v4

    mul-float v12, v12, v4

    goto :goto_3

    :cond_5
    mul-float v12, v4, v2

    sub-float/2addr v12, v0

    div-float/2addr v12, v5

    .line 99
    .local v12, "xT":F
    :goto_3
    if-eqz v11, :cond_6

    mul-float v0, v3, v3

    mul-float v0, v0, v3

    goto :goto_4

    :cond_6
    mul-float v2, v2, v4

    sub-float/2addr v2, v0

    div-float v0, v2, v5

    .line 101
    .local v0, "zT":F
    :goto_4
    sget-object v2, Landroidx/core/content/res/CamUtils;->WHITE_POINT_D65:[F

    aget v9, v2, v9

    mul-float v9, v9, v12

    float-to-double v13, v9

    aget v8, v2, v8

    mul-float v8, v8, v10

    float-to-double v8, v8

    const/4 v15, 0x2

    aget v2, v2, v15

    mul-float v2, v2, v0

    move/from16 v20, v0

    move/from16 v19, v1

    .end local v0    # "zT":F
    .end local v1    # "fy":F
    .local v19, "fy":F
    .local v20, "zT":F
    float-to-double v0, v2

    move-wide v15, v8

    move-wide/from16 v17, v0

    invoke-static/range {v13 .. v18}, Landroidx/core/graphics/ColorUtils;->XYZToColor(DDD)I

    move-result v0

    return v0
.end method

.method static lStarFromInt(I)F
    .locals 1
    .param p0, "argb"    # I

    .line 111
    invoke-static {p0}, Landroidx/core/content/res/CamUtils;->yFromInt(I)F

    move-result v0

    invoke-static {v0}, Landroidx/core/content/res/CamUtils;->lStarFromY(F)F

    move-result v0

    return v0
.end method

.method static lStarFromY(F)F
    .locals 4
    .param p0, "y"    # F

    .line 115
    const/high16 v0, 0x42c80000    # 100.0f

    div-float/2addr p0, v0

    .line 116
    const v0, 0x3c111aa7

    .line 118
    .local v0, "e":F
    const v1, 0x3c111aa7

    cmpg-float v1, p0, v1

    if-gtz v1, :cond_0

    .line 119
    const v1, 0x4461d2f7

    mul-float v1, v1, p0

    return v1

    .line 121
    :cond_0
    float-to-double v1, p0

    invoke-static {v1, v2}, Ljava/lang/Math;->cbrt(D)D

    move-result-wide v1

    double-to-float v1, v1

    .line 123
    .local v1, "yIntermediate":F
    const/high16 v2, 0x42e80000    # 116.0f

    mul-float v2, v2, v1

    const/high16 v3, 0x41800000    # 16.0f

    sub-float/2addr v2, v3

    return v2
.end method

.method static lerp(FFF)F
    .locals 1
    .param p0, "start"    # F
    .param p1, "stop"    # F
    .param p2, "amount"    # F

    .line 106
    sub-float v0, p1, p0

    mul-float v0, v0, p2

    add-float/2addr v0, p0

    return v0
.end method

.method static linearized(I)F
    .locals 6
    .param p0, "rgbComponent"    # I

    .line 158
    int-to-float v0, p0

    const/high16 v1, 0x437f0000    # 255.0f

    div-float/2addr v0, v1

    .line 160
    .local v0, "normalized":F
    const/high16 v1, 0x42c80000    # 100.0f

    const v2, 0x3d25aee6    # 0.04045f

    cmpg-float v2, v0, v2

    if-gtz v2, :cond_0

    .line 161
    const v2, 0x414eb852    # 12.92f

    div-float v2, v0, v2

    mul-float v2, v2, v1

    return v2

    .line 163
    :cond_0
    const v2, 0x3d6147ae    # 0.055f

    add-float/2addr v2, v0

    const v3, 0x3f870a3d    # 1.055f

    div-float/2addr v2, v3

    float-to-double v2, v2

    const-wide v4, 0x4003333340000000L    # 2.4000000953674316

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    double-to-float v2, v2

    mul-float v2, v2, v1

    return v2
.end method

.method static xyzFromInt(I)[F
    .locals 11
    .param p0, "argb"    # I

    .line 137
    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v0

    invoke-static {v0}, Landroidx/core/content/res/CamUtils;->linearized(I)F

    move-result v0

    .line 138
    .local v0, "r":F
    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v1

    invoke-static {v1}, Landroidx/core/content/res/CamUtils;->linearized(I)F

    move-result v1

    .line 139
    .local v1, "g":F
    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result v2

    invoke-static {v2}, Landroidx/core/content/res/CamUtils;->linearized(I)F

    move-result v2

    .line 141
    .local v2, "b":F
    sget-object v3, Landroidx/core/content/res/CamUtils;->SRGB_TO_XYZ:[[F

    .line 142
    .local v3, "matrix":[[F
    const/4 v4, 0x0

    aget-object v5, v3, v4

    aget v5, v5, v4

    mul-float v5, v5, v0

    aget-object v6, v3, v4

    const/4 v7, 0x1

    aget v6, v6, v7

    mul-float v6, v6, v1

    add-float/2addr v5, v6

    aget-object v6, v3, v4

    const/4 v8, 0x2

    aget v6, v6, v8

    mul-float v6, v6, v2

    add-float/2addr v5, v6

    .line 143
    .local v5, "x":F
    aget-object v6, v3, v7

    aget v6, v6, v4

    mul-float v6, v6, v0

    aget-object v9, v3, v7

    aget v9, v9, v7

    mul-float v9, v9, v1

    add-float/2addr v6, v9

    aget-object v9, v3, v7

    aget v9, v9, v8

    mul-float v9, v9, v2

    add-float/2addr v6, v9

    .line 144
    .local v6, "y":F
    aget-object v9, v3, v8

    aget v9, v9, v4

    mul-float v9, v9, v0

    aget-object v10, v3, v8

    aget v10, v10, v7

    mul-float v10, v10, v1

    add-float/2addr v9, v10

    aget-object v10, v3, v8

    aget v10, v10, v8

    mul-float v10, v10, v2

    add-float/2addr v9, v10

    .line 145
    .local v9, "z":F
    const/4 v10, 0x3

    new-array v10, v10, [F

    aput v5, v10, v4

    aput v6, v10, v7

    aput v9, v10, v8

    return-object v10
.end method

.method static yFromInt(I)F
    .locals 7
    .param p0, "argb"    # I

    .line 127
    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v0

    invoke-static {v0}, Landroidx/core/content/res/CamUtils;->linearized(I)F

    move-result v0

    .line 128
    .local v0, "r":F
    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v1

    invoke-static {v1}, Landroidx/core/content/res/CamUtils;->linearized(I)F

    move-result v1

    .line 129
    .local v1, "g":F
    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result v2

    invoke-static {v2}, Landroidx/core/content/res/CamUtils;->linearized(I)F

    move-result v2

    .line 130
    .local v2, "b":F
    sget-object v3, Landroidx/core/content/res/CamUtils;->SRGB_TO_XYZ:[[F

    .line 131
    .local v3, "matrix":[[F
    const/4 v4, 0x1

    aget-object v5, v3, v4

    const/4 v6, 0x0

    aget v5, v5, v6

    mul-float v5, v5, v0

    aget-object v6, v3, v4

    aget v6, v6, v4

    mul-float v6, v6, v1

    add-float/2addr v5, v6

    aget-object v4, v3, v4

    const/4 v6, 0x2

    aget v4, v4, v6

    mul-float v4, v4, v2

    add-float/2addr v5, v4

    .line 132
    .local v5, "y":F
    return v5
.end method

.method static yFromLStar(F)F
    .locals 6
    .param p0, "lstar"    # F

    .line 149
    const/high16 v0, 0x41000000    # 8.0f

    .line 150
    .local v0, "ke":F
    const/high16 v1, 0x42c80000    # 100.0f

    cmpl-float v2, p0, v0

    if-lez v2, :cond_0

    .line 151
    float-to-double v2, p0

    const-wide/high16 v4, 0x4030000000000000L    # 16.0

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v2, v4

    const-wide/high16 v4, 0x405d000000000000L    # 116.0

    div-double/2addr v2, v4

    const-wide/high16 v4, 0x4008000000000000L    # 3.0

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    double-to-float v2, v2

    mul-float v2, v2, v1

    return v2

    .line 153
    :cond_0
    const v2, 0x4461d2f7

    div-float v2, p0, v2

    mul-float v2, v2, v1

    return v2
.end method
