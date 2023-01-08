.class Landroidx/core/content/res/CamColor;
.super Ljava/lang/Object;
.source "CamColor.java"


# static fields
.field private static final CHROMA_SEARCH_ENDPOINT:F = 0.4f

.field private static final DE_MAX:F = 1.0f

.field private static final DL_MAX:F = 0.2f

.field private static final LIGHTNESS_SEARCH_ENDPOINT:F = 0.01f


# instance fields
.field private final mAstar:F

.field private final mBstar:F

.field private final mChroma:F

.field private final mHue:F

.field private final mJ:F

.field private final mJstar:F

.field private final mM:F

.field private final mQ:F

.field private final mS:F


# direct methods
.method constructor <init>(FFFFFFFFF)V
    .locals 0
    .param p1, "hue"    # F
    .param p2, "chroma"    # F
    .param p3, "j"    # F
    .param p4, "q"    # F
    .param p5, "m"    # F
    .param p6, "s"    # F
    .param p7, "jStar"    # F
    .param p8, "aStar"    # F
    .param p9, "bStar"    # F

    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 129
    iput p1, p0, Landroidx/core/content/res/CamColor;->mHue:F

    .line 130
    iput p2, p0, Landroidx/core/content/res/CamColor;->mChroma:F

    .line 131
    iput p3, p0, Landroidx/core/content/res/CamColor;->mJ:F

    .line 132
    iput p4, p0, Landroidx/core/content/res/CamColor;->mQ:F

    .line 133
    iput p5, p0, Landroidx/core/content/res/CamColor;->mM:F

    .line 134
    iput p6, p0, Landroidx/core/content/res/CamColor;->mS:F

    .line 135
    iput p7, p0, Landroidx/core/content/res/CamColor;->mJstar:F

    .line 136
    iput p8, p0, Landroidx/core/content/res/CamColor;->mAstar:F

    .line 137
    iput p9, p0, Landroidx/core/content/res/CamColor;->mBstar:F

    .line 138
    return-void
.end method

.method private static findCamByJ(FFF)Landroidx/core/content/res/CamColor;
    .locals 13
    .param p0, "hue"    # F
    .param p1, "chroma"    # F
    .param p2, "lstar"    # F

    .line 483
    const/4 v0, 0x0

    .line 484
    .local v0, "low":F
    const/high16 v1, 0x42c80000    # 100.0f

    .line 485
    .local v1, "high":F
    const/4 v2, 0x0

    .line 486
    .local v2, "mid":F
    const/high16 v3, 0x447a0000    # 1000.0f

    .line 487
    .local v3, "bestdL":F
    const/high16 v4, 0x447a0000    # 1000.0f

    .line 489
    .local v4, "bestdE":F
    const/4 v5, 0x0

    .line 490
    .local v5, "bestCam":Landroidx/core/content/res/CamColor;
    :goto_0
    sub-float v6, v0, v1

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    const v7, 0x3c23d70a    # 0.01f

    cmpl-float v6, v6, v7

    if-lez v6, :cond_3

    .line 491
    sub-float v6, v1, v0

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v6, v7

    add-float v2, v0, v6

    .line 493
    invoke-static {v2, p1, p0}, Landroidx/core/content/res/CamColor;->fromJch(FFF)Landroidx/core/content/res/CamColor;

    move-result-object v6

    .line 497
    .local v6, "camBeforeClip":Landroidx/core/content/res/CamColor;
    invoke-virtual {v6}, Landroidx/core/content/res/CamColor;->viewedInSrgb()I

    move-result v7

    .line 498
    .local v7, "clipped":I
    invoke-static {v7}, Landroidx/core/content/res/CamUtils;->lStarFromInt(I)F

    move-result v8

    .line 499
    .local v8, "clippedLstar":F
    sub-float v9, p2, v8

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v9

    .line 502
    .local v9, "dL":F
    const v10, 0x3e4ccccd    # 0.2f

    cmpg-float v10, v9, v10

    if-gez v10, :cond_0

    .line 507
    invoke-static {v7}, Landroidx/core/content/res/CamColor;->fromColor(I)Landroidx/core/content/res/CamColor;

    move-result-object v10

    .line 508
    .local v10, "camClipped":Landroidx/core/content/res/CamColor;
    nop

    .line 509
    invoke-virtual {v10}, Landroidx/core/content/res/CamColor;->getJ()F

    move-result v11

    invoke-virtual {v10}, Landroidx/core/content/res/CamColor;->getChroma()F

    move-result v12

    invoke-static {v11, v12, p0}, Landroidx/core/content/res/CamColor;->fromJch(FFF)Landroidx/core/content/res/CamColor;

    move-result-object v11

    .line 508
    invoke-virtual {v10, v11}, Landroidx/core/content/res/CamColor;->distance(Landroidx/core/content/res/CamColor;)F

    move-result v11

    .line 510
    .local v11, "dE":F
    const/high16 v12, 0x3f800000    # 1.0f

    cmpg-float v12, v11, v12

    if-gtz v12, :cond_0

    .line 511
    move v3, v9

    .line 512
    move v4, v11

    .line 513
    move-object v5, v10

    .line 523
    .end local v10    # "camClipped":Landroidx/core/content/res/CamColor;
    .end local v11    # "dE":F
    :cond_0
    const/4 v10, 0x0

    cmpl-float v11, v3, v10

    if-nez v11, :cond_1

    cmpl-float v10, v4, v10

    if-nez v10, :cond_1

    .line 524
    goto :goto_2

    .line 527
    :cond_1
    cmpg-float v10, v8, p2

    if-gez v10, :cond_2

    .line 528
    move v0, v2

    goto :goto_1

    .line 530
    :cond_2
    move v1, v2

    .line 532
    .end local v6    # "camBeforeClip":Landroidx/core/content/res/CamColor;
    .end local v7    # "clipped":I
    .end local v8    # "clippedLstar":F
    .end local v9    # "dL":F
    :goto_1
    goto :goto_0

    .line 534
    :cond_3
    :goto_2
    return-object v5
.end method

.method static fromColor(I)Landroidx/core/content/res/CamColor;
    .locals 1
    .param p0, "color"    # I

    .line 160
    sget-object v0, Landroidx/core/content/res/ViewingConditions;->DEFAULT:Landroidx/core/content/res/ViewingConditions;

    invoke-static {p0, v0}, Landroidx/core/content/res/CamColor;->fromColorInViewingConditions(ILandroidx/core/content/res/ViewingConditions;)Landroidx/core/content/res/CamColor;

    move-result-object v0

    return-object v0
.end method

.method static fromColorInViewingConditions(ILandroidx/core/content/res/ViewingConditions;)Landroidx/core/content/res/CamColor;
    .locals 48
    .param p0, "color"    # I
    .param p1, "viewingConditions"    # Landroidx/core/content/res/ViewingConditions;

    .line 171
    invoke-static/range {p0 .. p0}, Landroidx/core/content/res/CamUtils;->xyzFromInt(I)[F

    move-result-object v0

    .line 174
    .local v0, "xyz":[F
    sget-object v1, Landroidx/core/content/res/CamUtils;->XYZ_TO_CAM16RGB:[[F

    .line 175
    .local v1, "matrix":[[F
    const/4 v2, 0x0

    aget v3, v0, v2

    aget-object v4, v1, v2

    aget v4, v4, v2

    mul-float v3, v3, v4

    const/4 v4, 0x1

    aget v5, v0, v4

    aget-object v6, v1, v2

    aget v6, v6, v4

    mul-float v5, v5, v6

    add-float/2addr v3, v5

    const/4 v5, 0x2

    aget v6, v0, v5

    aget-object v7, v1, v2

    aget v7, v7, v5

    mul-float v6, v6, v7

    add-float/2addr v3, v6

    .line 176
    .local v3, "rT":F
    aget v6, v0, v2

    aget-object v7, v1, v4

    aget v7, v7, v2

    mul-float v6, v6, v7

    aget v7, v0, v4

    aget-object v8, v1, v4

    aget v8, v8, v4

    mul-float v7, v7, v8

    add-float/2addr v6, v7

    aget v7, v0, v5

    aget-object v8, v1, v4

    aget v8, v8, v5

    mul-float v7, v7, v8

    add-float/2addr v6, v7

    .line 177
    .local v6, "gT":F
    aget v7, v0, v2

    aget-object v8, v1, v5

    aget v8, v8, v2

    mul-float v7, v7, v8

    aget v8, v0, v4

    aget-object v9, v1, v5

    aget v9, v9, v4

    mul-float v8, v8, v9

    add-float/2addr v7, v8

    aget v8, v0, v5

    aget-object v9, v1, v5

    aget v9, v9, v5

    mul-float v8, v8, v9

    add-float/2addr v7, v8

    .line 180
    .local v7, "bT":F
    invoke-virtual/range {p1 .. p1}, Landroidx/core/content/res/ViewingConditions;->getRgbD()[F

    move-result-object v8

    aget v2, v8, v2

    mul-float v2, v2, v3

    .line 181
    .local v2, "rD":F
    invoke-virtual/range {p1 .. p1}, Landroidx/core/content/res/ViewingConditions;->getRgbD()[F

    move-result-object v8

    aget v4, v8, v4

    mul-float v4, v4, v6

    .line 182
    .local v4, "gD":F
    invoke-virtual/range {p1 .. p1}, Landroidx/core/content/res/ViewingConditions;->getRgbD()[F

    move-result-object v8

    aget v5, v8, v5

    mul-float v5, v5, v7

    .line 185
    .local v5, "bD":F
    invoke-virtual/range {p1 .. p1}, Landroidx/core/content/res/ViewingConditions;->getFl()F

    move-result v8

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v9

    mul-float v8, v8, v9

    float-to-double v8, v8

    const-wide/high16 v10, 0x4059000000000000L    # 100.0

    invoke-static {v8, v9}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v8, v10

    const-wide v12, 0x3fdae147ae147ae1L    # 0.42

    invoke-static {v8, v9, v12, v13}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v8

    double-to-float v8, v8

    .line 186
    .local v8, "rAF":F
    invoke-virtual/range {p1 .. p1}, Landroidx/core/content/res/ViewingConditions;->getFl()F

    move-result v9

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v14

    mul-float v9, v9, v14

    float-to-double v14, v9

    invoke-static {v14, v15}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v14, v10

    invoke-static {v14, v15, v12, v13}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v14

    double-to-float v9, v14

    .line 187
    .local v9, "gAF":F
    invoke-virtual/range {p1 .. p1}, Landroidx/core/content/res/ViewingConditions;->getFl()F

    move-result v14

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v15

    mul-float v14, v14, v15

    float-to-double v14, v14

    invoke-static {v14, v15}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v14, v10

    invoke-static {v14, v15, v12, v13}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v12

    double-to-float v12, v12

    .line 188
    .local v12, "bAF":F
    invoke-static {v2}, Ljava/lang/Math;->signum(F)F

    move-result v13

    const/high16 v14, 0x43c80000    # 400.0f

    mul-float v13, v13, v14

    mul-float v13, v13, v8

    const v15, 0x41d90a3d    # 27.13f

    add-float v16, v8, v15

    div-float v13, v13, v16

    .line 189
    .local v13, "rA":F
    invoke-static {v4}, Ljava/lang/Math;->signum(F)F

    move-result v16

    mul-float v16, v16, v14

    mul-float v16, v16, v9

    add-float v17, v9, v15

    div-float v10, v16, v17

    .line 190
    .local v10, "gA":F
    invoke-static {v5}, Ljava/lang/Math;->signum(F)F

    move-result v11

    mul-float v11, v11, v14

    mul-float v11, v11, v12

    add-float/2addr v15, v12

    div-float/2addr v11, v15

    .line 193
    .local v11, "bA":F
    float-to-double v14, v13

    const-wide/high16 v16, 0x4026000000000000L    # 11.0

    invoke-static {v14, v15}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v14, v14, v16

    move-object/from16 v16, v0

    move-object/from16 v17, v1

    .end local v0    # "xyz":[F
    .end local v1    # "matrix":[[F
    .local v16, "xyz":[F
    .local v17, "matrix":[[F
    float-to-double v0, v10

    const-wide/high16 v20, -0x3fd8000000000000L    # -12.0

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v0, v0, v20

    add-double/2addr v14, v0

    float-to-double v0, v11

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v14, v0

    double-to-float v0, v14

    const/high16 v1, 0x41300000    # 11.0f

    div-float/2addr v0, v1

    .line 195
    .local v0, "a":F
    add-float v1, v13, v10

    float-to-double v14, v1

    move/from16 v20, v2

    .end local v2    # "rD":F
    .local v20, "rD":F
    float-to-double v1, v11

    const-wide/high16 v21, 0x4000000000000000L    # 2.0

    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v1, v1, v21

    invoke-static {v14, v15}, Ljava/lang/Double;->isNaN(D)Z

    sub-double/2addr v14, v1

    double-to-float v1, v14

    const/high16 v2, 0x41100000    # 9.0f

    div-float/2addr v1, v2

    .line 198
    .local v1, "b":F
    const/high16 v2, 0x41a00000    # 20.0f

    mul-float v14, v13, v2

    mul-float v15, v10, v2

    add-float/2addr v14, v15

    const/high16 v15, 0x41a80000    # 21.0f

    mul-float v15, v15, v11

    add-float/2addr v14, v15

    div-float/2addr v14, v2

    .line 199
    .local v14, "u":F
    const/high16 v15, 0x42200000    # 40.0f

    mul-float v15, v15, v13

    mul-float v23, v10, v2

    add-float v15, v15, v23

    add-float/2addr v15, v11

    div-float/2addr v15, v2

    .line 202
    .local v15, "p2":F
    move/from16 v23, v3

    .end local v3    # "rT":F
    .local v23, "rT":F
    float-to-double v2, v1

    move/from16 v24, v4

    move/from16 v25, v5

    .end local v4    # "gD":F
    .end local v5    # "bD":F
    .local v24, "gD":F
    .local v25, "bD":F
    float-to-double v4, v0

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v2

    double-to-float v2, v2

    .line 203
    .local v2, "atan2":F
    const/high16 v3, 0x43340000    # 180.0f

    mul-float v4, v2, v3

    const v5, 0x40490fdb    # (float)Math.PI

    div-float/2addr v4, v5

    .line 205
    .local v4, "atanDegrees":F
    const/high16 v26, 0x43b40000    # 360.0f

    const/16 v27, 0x0

    cmpg-float v27, v4, v27

    if-gez v27, :cond_0

    .line 206
    add-float v27, v4, v26

    goto :goto_0

    .line 207
    :cond_0
    cmpl-float v27, v4, v26

    if-ltz v27, :cond_1

    sub-float v27, v4, v26

    goto :goto_0

    :cond_1
    move/from16 v27, v4

    :goto_0
    move/from16 v38, v27

    .line 208
    .local v38, "hue":F
    move/from16 v27, v2

    move/from16 v2, v38

    .end local v38    # "hue":F
    .local v2, "hue":F
    .local v27, "atan2":F
    mul-float v38, v2, v5

    div-float v3, v38, v3

    .line 211
    .local v3, "hueRadians":F
    invoke-virtual/range {p1 .. p1}, Landroidx/core/content/res/ViewingConditions;->getNbb()F

    move-result v5

    mul-float v5, v5, v15

    .line 214
    .local v5, "ac":F
    invoke-virtual/range {p1 .. p1}, Landroidx/core/content/res/ViewingConditions;->getAw()F

    move-result v28

    move/from16 v38, v4

    .end local v4    # "atanDegrees":F
    .local v38, "atanDegrees":F
    div-float v4, v5, v28

    move/from16 v39, v5

    .end local v5    # "ac":F
    .local v39, "ac":F
    float-to-double v4, v4

    .line 215
    invoke-virtual/range {p1 .. p1}, Landroidx/core/content/res/ViewingConditions;->getC()F

    move-result v28

    invoke-virtual/range {p1 .. p1}, Landroidx/core/content/res/ViewingConditions;->getZ()F

    move-result v29

    move/from16 v40, v6

    .end local v6    # "gT":F
    .local v40, "gT":F
    mul-float v6, v28, v29

    move/from16 v41, v7

    .end local v7    # "bT":F
    .local v41, "bT":F
    float-to-double v6, v6

    .line 214
    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    double-to-float v4, v4

    const/high16 v5, 0x42c80000    # 100.0f

    mul-float v4, v4, v5

    .line 216
    .local v4, "j":F
    nop

    .line 218
    invoke-virtual/range {p1 .. p1}, Landroidx/core/content/res/ViewingConditions;->getC()F

    move-result v6

    const/high16 v7, 0x40800000    # 4.0f

    div-float v6, v7, v6

    div-float v5, v4, v5

    move/from16 v42, v8

    .end local v8    # "rAF":F
    .local v42, "rAF":F
    float-to-double v7, v5

    .line 219
    invoke-static {v7, v8}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v7

    double-to-float v5, v7

    mul-float v6, v6, v5

    .line 220
    invoke-virtual/range {p1 .. p1}, Landroidx/core/content/res/ViewingConditions;->getAw()F

    move-result v5

    const/high16 v7, 0x40800000    # 4.0f

    add-float/2addr v5, v7

    mul-float v6, v6, v5

    .line 221
    invoke-virtual/range {p1 .. p1}, Landroidx/core/content/res/ViewingConditions;->getFlRoot()F

    move-result v5

    mul-float v6, v6, v5

    .line 224
    .local v6, "q":F
    float-to-double v7, v2

    const-wide v29, 0x403423d70a3d70a4L    # 20.14

    cmpg-double v5, v7, v29

    if-gez v5, :cond_2

    add-float v5, v2, v26

    goto :goto_1

    :cond_2
    move v5, v2

    .line 225
    .local v5, "huePrime":F
    :goto_1
    float-to-double v7, v5

    const-wide v29, 0x400921fb54442d18L    # Math.PI

    invoke-static {v7, v8}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v7, v7, v29

    const-wide v29, 0x4066800000000000L    # 180.0

    div-double v7, v7, v29

    add-double v7, v7, v21

    invoke-static {v7, v8}, Ljava/lang/Math;->cos(D)D

    move-result-wide v7

    const-wide v21, 0x400e666666666666L    # 3.8

    add-double v7, v7, v21

    double-to-float v7, v7

    const/high16 v8, 0x3e800000    # 0.25f

    mul-float v7, v7, v8

    .line 226
    .local v7, "eHue":F
    const v8, 0x45706276

    mul-float v8, v8, v7

    invoke-virtual/range {p1 .. p1}, Landroidx/core/content/res/ViewingConditions;->getNc()F

    move-result v21

    mul-float v8, v8, v21

    invoke-virtual/range {p1 .. p1}, Landroidx/core/content/res/ViewingConditions;->getNcb()F

    move-result v21

    mul-float v8, v8, v21

    .line 227
    .local v8, "p1":F
    mul-float v21, v0, v0

    mul-float v22, v1, v1

    move/from16 v26, v0

    .end local v0    # "a":F
    .local v26, "a":F
    add-float v0, v21, v22

    move/from16 v21, v1

    .end local v1    # "b":F
    .local v21, "b":F
    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    mul-float v0, v0, v8

    const v1, 0x3e9c28f6    # 0.305f

    add-float/2addr v1, v14

    div-float/2addr v0, v1

    .line 228
    .local v0, "t":F
    const-wide v29, 0x3ffa3d70a3d70a3dL    # 1.64

    move v1, v7

    move/from16 v22, v8

    .end local v7    # "eHue":F
    .end local v8    # "p1":F
    .local v1, "eHue":F
    .local v22, "p1":F
    const-wide v7, 0x3fd28f5c28f5c28fL    # 0.29

    move/from16 v43, v1

    .end local v1    # "eHue":F
    .local v43, "eHue":F
    invoke-virtual/range {p1 .. p1}, Landroidx/core/content/res/ViewingConditions;->getN()F

    move-result v1

    move/from16 v44, v9

    move/from16 v45, v10

    .end local v9    # "gAF":F
    .end local v10    # "gA":F
    .local v44, "gAF":F
    .local v45, "gA":F
    float-to-double v9, v1

    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v7

    sub-double v7, v29, v7

    const-wide v9, 0x3fe75c28f5c28f5cL    # 0.73

    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v7

    double-to-float v1, v7

    float-to-double v7, v0

    const-wide v9, 0x3feccccccccccccdL    # 0.9

    .line 229
    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v7

    double-to-float v7, v7

    mul-float v1, v1, v7

    .line 231
    .local v1, "alpha":F
    float-to-double v7, v4

    invoke-static {v7, v8}, Ljava/lang/Double;->isNaN(D)Z

    const-wide/high16 v9, 0x4059000000000000L    # 100.0

    div-double/2addr v7, v9

    invoke-static {v7, v8}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v7

    double-to-float v7, v7

    mul-float v7, v7, v1

    .line 232
    .local v7, "c":F
    invoke-virtual/range {p1 .. p1}, Landroidx/core/content/res/ViewingConditions;->getFlRoot()F

    move-result v8

    mul-float v8, v8, v7

    .line 233
    .local v8, "m":F
    invoke-virtual/range {p1 .. p1}, Landroidx/core/content/res/ViewingConditions;->getC()F

    move-result v10

    mul-float v10, v10, v1

    .line 234
    invoke-virtual/range {p1 .. p1}, Landroidx/core/content/res/ViewingConditions;->getAw()F

    move-result v18

    const/high16 v19, 0x40800000    # 4.0f

    add-float v18, v18, v19

    div-float v10, v10, v18

    float-to-double v9, v10

    .line 233
    invoke-static {v9, v10}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v9

    double-to-float v9, v9

    const/high16 v10, 0x42480000    # 50.0f

    mul-float v9, v9, v10

    .line 237
    .local v9, "s":F
    const v10, 0x3fd9999a    # 1.7f

    mul-float v10, v10, v4

    const v18, 0x3be56042    # 0.007f

    mul-float v18, v18, v4

    const/high16 v19, 0x3f800000    # 1.0f

    add-float v18, v18, v19

    div-float v10, v10, v18

    .line 238
    .local v10, "jstar":F
    const v18, 0x422f7048

    const v28, 0x3cbac711    # 0.0228f

    mul-float v28, v28, v8

    move/from16 v46, v0

    .end local v0    # "t":F
    .local v46, "t":F
    add-float v0, v28, v19

    move/from16 v19, v1

    .end local v1    # "alpha":F
    .local v19, "alpha":F
    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    double-to-float v0, v0

    mul-float v0, v0, v18

    .line 239
    .local v0, "mstar":F
    move/from16 v18, v11

    move v1, v12

    .end local v11    # "bA":F
    .end local v12    # "bAF":F
    .local v1, "bAF":F
    .local v18, "bA":F
    float-to-double v11, v3

    invoke-static {v11, v12}, Ljava/lang/Math;->cos(D)D

    move-result-wide v11

    double-to-float v11, v11

    mul-float v11, v11, v0

    .line 240
    .local v11, "astar":F
    move/from16 v47, v13

    .end local v13    # "rA":F
    .local v47, "rA":F
    float-to-double v12, v3

    invoke-static {v12, v13}, Ljava/lang/Math;->sin(D)D

    move-result-wide v12

    double-to-float v12, v12

    mul-float v12, v12, v0

    .line 242
    .local v12, "bstar":F
    new-instance v13, Landroidx/core/content/res/CamColor;

    move-object/from16 v28, v13

    move/from16 v29, v2

    move/from16 v30, v7

    move/from16 v31, v4

    move/from16 v32, v6

    move/from16 v33, v8

    move/from16 v34, v9

    move/from16 v35, v10

    move/from16 v36, v11

    move/from16 v37, v12

    invoke-direct/range {v28 .. v37}, Landroidx/core/content/res/CamColor;-><init>(FFFFFFFFF)V

    return-object v13
.end method

.method private static fromJch(FFF)Landroidx/core/content/res/CamColor;
    .locals 1
    .param p0, "j"    # F
    .param p1, "c"    # F
    .param p2, "h"    # F

    .line 253
    sget-object v0, Landroidx/core/content/res/ViewingConditions;->DEFAULT:Landroidx/core/content/res/ViewingConditions;

    invoke-static {p0, p1, p2, v0}, Landroidx/core/content/res/CamColor;->fromJchInFrame(FFFLandroidx/core/content/res/ViewingConditions;)Landroidx/core/content/res/CamColor;

    move-result-object v0

    return-object v0
.end method

.method private static fromJchInFrame(FFFLandroidx/core/content/res/ViewingConditions;)Landroidx/core/content/res/CamColor;
    .locals 21
    .param p0, "j"    # F
    .param p1, "c"    # F
    .param p2, "h"    # F
    .param p3, "viewingConditions"    # Landroidx/core/content/res/ViewingConditions;

    .line 264
    move/from16 v10, p0

    .line 266
    invoke-virtual/range {p3 .. p3}, Landroidx/core/content/res/ViewingConditions;->getC()F

    move-result v0

    const/high16 v1, 0x40800000    # 4.0f

    div-float v0, v1, v0

    float-to-double v2, v10

    const-wide/high16 v4, 0x4059000000000000L    # 100.0

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v2, v4

    .line 267
    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-float v2, v2

    mul-float v0, v0, v2

    .line 268
    invoke-virtual/range {p3 .. p3}, Landroidx/core/content/res/ViewingConditions;->getAw()F

    move-result v2

    add-float/2addr v2, v1

    mul-float v0, v0, v2

    .line 269
    invoke-virtual/range {p3 .. p3}, Landroidx/core/content/res/ViewingConditions;->getFlRoot()F

    move-result v2

    mul-float v11, v0, v2

    .line 270
    .local v11, "q":F
    invoke-virtual/range {p3 .. p3}, Landroidx/core/content/res/ViewingConditions;->getFlRoot()F

    move-result v0

    mul-float v12, p1, v0

    .line 271
    .local v12, "m":F
    float-to-double v2, v10

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-float v0, v2

    div-float v13, p1, v0

    .line 272
    .local v13, "alpha":F
    invoke-virtual/range {p3 .. p3}, Landroidx/core/content/res/ViewingConditions;->getC()F

    move-result v0

    mul-float v0, v0, v13

    .line 273
    invoke-virtual/range {p3 .. p3}, Landroidx/core/content/res/ViewingConditions;->getAw()F

    move-result v2

    add-float/2addr v2, v1

    div-float/2addr v0, v2

    float-to-double v0, v0

    .line 272
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    const/high16 v1, 0x42480000    # 50.0f

    mul-float v14, v0, v1

    .line 275
    .local v14, "s":F
    const v0, 0x40490fdb    # (float)Math.PI

    mul-float v0, v0, p2

    const/high16 v1, 0x43340000    # 180.0f

    div-float v15, v0, v1

    .line 276
    .local v15, "hueRadians":F
    const v0, 0x3fd9999a    # 1.7f

    mul-float v0, v0, v10

    const v1, 0x3be56042    # 0.007f

    mul-float v1, v1, v10

    const/high16 v2, 0x3f800000    # 1.0f

    add-float/2addr v1, v2

    div-float v16, v0, v1

    .line 277
    .local v16, "jstar":F
    float-to-double v0, v12

    const-wide v2, 0x3f9758e219652bd4L    # 0.0228

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v0, v0, v2

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    add-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    double-to-float v0, v0

    const v1, 0x422f7048

    mul-float v17, v0, v1

    .line 278
    .local v17, "mstar":F
    float-to-double v0, v15

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    double-to-float v0, v0

    mul-float v18, v17, v0

    .line 279
    .local v18, "astar":F
    float-to-double v0, v15

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    double-to-float v0, v0

    mul-float v19, v17, v0

    .line 280
    .local v19, "bstar":F
    new-instance v20, Landroidx/core/content/res/CamColor;

    move-object/from16 v0, v20

    move/from16 v1, p2

    move/from16 v2, p1

    move/from16 v3, p0

    move v4, v11

    move v5, v12

    move v6, v14

    move/from16 v7, v16

    move/from16 v8, v18

    move/from16 v9, v19

    invoke-direct/range {v0 .. v9}, Landroidx/core/content/res/CamColor;-><init>(FFFFFFFFF)V

    return-object v20
.end method

.method static toColor(FFF)I
    .locals 1
    .param p0, "hue"    # F
    .param p1, "chroma"    # F
    .param p2, "lStar"    # F

    .line 149
    sget-object v0, Landroidx/core/content/res/ViewingConditions;->DEFAULT:Landroidx/core/content/res/ViewingConditions;

    invoke-static {p0, p1, p2, v0}, Landroidx/core/content/res/CamColor;->toColor(FFFLandroidx/core/content/res/ViewingConditions;)I

    move-result v0

    return v0
.end method

.method static toColor(FFFLandroidx/core/content/res/ViewingConditions;)I
    .locals 8
    .param p0, "hue"    # F
    .param p1, "chroma"    # F
    .param p2, "lstar"    # F
    .param p3, "viewingConditions"    # Landroidx/core/content/res/ViewingConditions;

    .line 414
    float-to-double v0, p1

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    cmpg-double v4, v0, v2

    if-ltz v4, :cond_7

    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result v0

    int-to-double v0, v0

    const-wide/16 v2, 0x0

    cmpg-double v4, v0, v2

    if-lez v4, :cond_7

    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result v0

    int-to-double v0, v0

    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    cmpl-double v4, v0, v2

    if-ltz v4, :cond_0

    goto :goto_3

    .line 418
    :cond_0
    const/4 v0, 0x0

    cmpg-float v1, p0, v0

    if-gez v1, :cond_1

    goto :goto_0

    :cond_1
    const/high16 v0, 0x43b40000    # 360.0f

    invoke-static {v0, p0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    :goto_0
    move p0, v0

    .line 421
    move v0, p1

    .line 425
    .local v0, "high":F
    move v1, p1

    .line 426
    .local v1, "mid":F
    const/4 v2, 0x0

    .line 427
    .local v2, "low":F
    const/4 v3, 0x1

    .line 429
    .local v3, "isFirstLoop":Z
    const/4 v4, 0x0

    .line 431
    .local v4, "answer":Landroidx/core/content/res/CamColor;
    :goto_1
    sub-float v5, v2, v0

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    const v6, 0x3ecccccd    # 0.4f

    cmpl-float v5, v5, v6

    if-ltz v5, :cond_5

    .line 434
    invoke-static {p0, v1, p2}, Landroidx/core/content/res/CamColor;->findCamByJ(FFF)Landroidx/core/content/res/CamColor;

    move-result-object v5

    .line 436
    .local v5, "possibleAnswer":Landroidx/core/content/res/CamColor;
    const/high16 v6, 0x40000000    # 2.0f

    if-eqz v3, :cond_3

    .line 437
    if-eqz v5, :cond_2

    .line 438
    invoke-virtual {v5, p3}, Landroidx/core/content/res/CamColor;->viewed(Landroidx/core/content/res/ViewingConditions;)I

    move-result v6

    return v6

    .line 445
    :cond_2
    const/4 v3, 0x0

    .line 446
    sub-float v7, v0, v2

    div-float/2addr v7, v6

    add-float v1, v2, v7

    .line 447
    goto :goto_1

    .line 451
    :cond_3
    if-nez v5, :cond_4

    .line 453
    move v0, v1

    goto :goto_2

    .line 455
    :cond_4
    move-object v4, v5

    .line 457
    move v2, v1

    .line 460
    :goto_2
    sub-float v7, v0, v2

    div-float/2addr v7, v6

    add-float v1, v2, v7

    .line 461
    .end local v5    # "possibleAnswer":Landroidx/core/content/res/CamColor;
    goto :goto_1

    .line 467
    :cond_5
    if-nez v4, :cond_6

    .line 468
    invoke-static {p2}, Landroidx/core/content/res/CamUtils;->intFromLStar(F)I

    move-result v5

    return v5

    .line 471
    :cond_6
    invoke-virtual {v4, p3}, Landroidx/core/content/res/CamColor;->viewed(Landroidx/core/content/res/ViewingConditions;)I

    move-result v5

    return v5

    .line 415
    .end local v0    # "high":F
    .end local v1    # "mid":F
    .end local v2    # "low":F
    .end local v3    # "isFirstLoop":Z
    .end local v4    # "answer":Landroidx/core/content/res/CamColor;
    :cond_7
    :goto_3
    invoke-static {p2}, Landroidx/core/content/res/CamUtils;->intFromLStar(F)I

    move-result v0

    return v0
.end method


# virtual methods
.method distance(Landroidx/core/content/res/CamColor;)F
    .locals 9
    .param p1, "other"    # Landroidx/core/content/res/CamColor;

    .line 290
    invoke-virtual {p0}, Landroidx/core/content/res/CamColor;->getJStar()F

    move-result v0

    invoke-virtual {p1}, Landroidx/core/content/res/CamColor;->getJStar()F

    move-result v1

    sub-float/2addr v0, v1

    .line 291
    .local v0, "dJ":F
    invoke-virtual {p0}, Landroidx/core/content/res/CamColor;->getAStar()F

    move-result v1

    invoke-virtual {p1}, Landroidx/core/content/res/CamColor;->getAStar()F

    move-result v2

    sub-float/2addr v1, v2

    .line 292
    .local v1, "dA":F
    invoke-virtual {p0}, Landroidx/core/content/res/CamColor;->getBStar()F

    move-result v2

    invoke-virtual {p1}, Landroidx/core/content/res/CamColor;->getBStar()F

    move-result v3

    sub-float/2addr v2, v3

    .line 293
    .local v2, "dB":F
    mul-float v3, v0, v0

    mul-float v4, v1, v1

    add-float/2addr v3, v4

    mul-float v4, v2, v2

    add-float/2addr v3, v4

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v3

    .line 294
    .local v3, "dEPrime":D
    const-wide v5, 0x3fe428f5c28f5c29L    # 0.63

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v5

    const-wide v7, 0x3ff68f5c28f5c28fL    # 1.41

    mul-double v5, v5, v7

    .line 295
    .local v5, "dE":D
    double-to-float v7, v5

    return v7
.end method

.method getAStar()F
    .locals 1

    .line 116
    iget v0, p0, Landroidx/core/content/res/CamColor;->mAstar:F

    return v0
.end method

.method getBStar()F
    .locals 1

    .line 123
    iget v0, p0, Landroidx/core/content/res/CamColor;->mBstar:F

    return v0
.end method

.method getChroma()F
    .locals 1

    .line 63
    iget v0, p0, Landroidx/core/content/res/CamColor;->mChroma:F

    return v0
.end method

.method getHue()F
    .locals 1

    .line 57
    iget v0, p0, Landroidx/core/content/res/CamColor;->mHue:F

    return v0
.end method

.method getJ()F
    .locals 1

    .line 69
    iget v0, p0, Landroidx/core/content/res/CamColor;->mJ:F

    return v0
.end method

.method getJStar()F
    .locals 1

    .line 109
    iget v0, p0, Landroidx/core/content/res/CamColor;->mJstar:F

    return v0
.end method

.method getM()F
    .locals 1

    .line 92
    iget v0, p0, Landroidx/core/content/res/CamColor;->mM:F

    return v0
.end method

.method getQ()F
    .locals 1

    .line 81
    iget v0, p0, Landroidx/core/content/res/CamColor;->mQ:F

    return v0
.end method

.method getS()F
    .locals 1

    .line 103
    iget v0, p0, Landroidx/core/content/res/CamColor;->mS:F

    return v0
.end method

.method viewed(Landroidx/core/content/res/ViewingConditions;)I
    .locals 40
    .param p1, "viewingConditions"    # Landroidx/core/content/res/ViewingConditions;

    .line 308
    invoke-virtual/range {p0 .. p0}, Landroidx/core/content/res/CamColor;->getChroma()F

    move-result v0

    float-to-double v0, v0

    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    const-wide/16 v4, 0x0

    cmpl-double v6, v0, v4

    if-eqz v6, :cond_1

    invoke-virtual/range {p0 .. p0}, Landroidx/core/content/res/CamColor;->getJ()F

    move-result v0

    float-to-double v0, v0

    cmpl-double v6, v0, v4

    if-nez v6, :cond_0

    goto :goto_0

    .line 310
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroidx/core/content/res/CamColor;->getChroma()F

    move-result v0

    invoke-virtual/range {p0 .. p0}, Landroidx/core/content/res/CamColor;->getJ()F

    move-result v1

    float-to-double v6, v1

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v6, v2

    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    double-to-float v1, v6

    div-float/2addr v0, v1

    goto :goto_1

    .line 309
    :cond_1
    :goto_0
    const/4 v0, 0x0

    .line 310
    :goto_1
    nop

    .line 312
    .local v0, "alpha":F
    float-to-double v6, v0

    const-wide v8, 0x3ffa3d70a3d70a3dL    # 1.64

    const-wide v10, 0x3fd28f5c28f5c28fL    # 0.29

    .line 313
    invoke-virtual/range {p1 .. p1}, Landroidx/core/content/res/ViewingConditions;->getN()F

    move-result v1

    float-to-double v12, v1

    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v10

    sub-double/2addr v8, v10

    const-wide v10, 0x3fe75c28f5c28f5cL    # 0.73

    .line 312
    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v8

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v6, v8

    const-wide v8, 0x3ff1c71c71c71c72L    # 1.1111111111111112

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    double-to-float v1, v6

    .line 314
    .local v1, "t":F
    invoke-virtual/range {p0 .. p0}, Landroidx/core/content/res/CamColor;->getHue()F

    move-result v6

    const v7, 0x40490fdb    # (float)Math.PI

    mul-float v6, v6, v7

    const/high16 v7, 0x43340000    # 180.0f

    div-float/2addr v6, v7

    .line 316
    .local v6, "hRad":F
    const/high16 v7, 0x3e800000    # 0.25f

    float-to-double v8, v6

    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    invoke-static {v8, v9}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->cos(D)D

    move-result-wide v8

    const-wide v10, 0x400e666666666666L    # 3.8

    add-double/2addr v8, v10

    double-to-float v8, v8

    mul-float v8, v8, v7

    .line 317
    .local v8, "eHue":F
    invoke-virtual/range {p1 .. p1}, Landroidx/core/content/res/ViewingConditions;->getAw()F

    move-result v7

    invoke-virtual/range {p0 .. p0}, Landroidx/core/content/res/CamColor;->getJ()F

    move-result v9

    float-to-double v9, v9

    invoke-static {v9, v10}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v9, v2

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    .line 318
    invoke-virtual/range {p1 .. p1}, Landroidx/core/content/res/ViewingConditions;->getC()F

    move-result v11

    float-to-double v11, v11

    invoke-static {v11, v12}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v2, v11

    invoke-virtual/range {p1 .. p1}, Landroidx/core/content/res/ViewingConditions;->getZ()F

    move-result v11

    float-to-double v11, v11

    invoke-static {v11, v12}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v2, v11

    .line 317
    invoke-static {v9, v10, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    double-to-float v2, v2

    mul-float v7, v7, v2

    .line 319
    .local v7, "ac":F
    const v2, 0x45706276

    mul-float v2, v2, v8

    .line 320
    invoke-virtual/range {p1 .. p1}, Landroidx/core/content/res/ViewingConditions;->getNc()F

    move-result v3

    mul-float v2, v2, v3

    invoke-virtual/range {p1 .. p1}, Landroidx/core/content/res/ViewingConditions;->getNcb()F

    move-result v3

    mul-float v2, v2, v3

    .line 321
    .local v2, "p1":F
    invoke-virtual/range {p1 .. p1}, Landroidx/core/content/res/ViewingConditions;->getNbb()F

    move-result v3

    div-float v3, v7, v3

    .line 323
    .local v3, "p2":F
    float-to-double v9, v6

    invoke-static {v9, v10}, Ljava/lang/Math;->sin(D)D

    move-result-wide v9

    double-to-float v9, v9

    .line 324
    .local v9, "hSin":F
    float-to-double v10, v6

    invoke-static {v10, v11}, Ljava/lang/Math;->cos(D)D

    move-result-wide v10

    double-to-float v10, v10

    .line 326
    .local v10, "hCos":F
    const v11, 0x3e9c28f6    # 0.305f

    add-float/2addr v11, v3

    const/high16 v12, 0x41b80000    # 23.0f

    mul-float v11, v11, v12

    mul-float v11, v11, v1

    mul-float v12, v12, v2

    const/high16 v13, 0x41300000    # 11.0f

    mul-float v13, v13, v1

    mul-float v13, v13, v10

    add-float/2addr v12, v13

    const/high16 v13, 0x42d80000    # 108.0f

    mul-float v13, v13, v1

    mul-float v13, v13, v9

    add-float/2addr v12, v13

    div-float/2addr v11, v12

    .line 328
    .local v11, "gamma":F
    mul-float v12, v11, v10

    .line 329
    .local v12, "a":F
    mul-float v13, v11, v9

    .line 330
    .local v13, "b":F
    const/high16 v14, 0x43e60000    # 460.0f

    mul-float v15, v3, v14

    const v16, 0x43e18000    # 451.0f

    mul-float v16, v16, v12

    add-float v15, v15, v16

    const/high16 v16, 0x43900000    # 288.0f

    mul-float v16, v16, v13

    add-float v15, v15, v16

    const v16, 0x44af6000    # 1403.0f

    div-float v15, v15, v16

    .line 331
    .local v15, "rA":F
    mul-float v17, v3, v14

    const v18, 0x445ec000    # 891.0f

    mul-float v18, v18, v12

    sub-float v17, v17, v18

    const v18, 0x43828000    # 261.0f

    mul-float v18, v18, v13

    sub-float v17, v17, v18

    div-float v17, v17, v16

    .line 332
    .local v17, "gA":F
    mul-float v14, v14, v3

    const/high16 v18, 0x435c0000    # 220.0f

    mul-float v18, v18, v12

    sub-float v14, v14, v18

    const v18, 0x45c4e000    # 6300.0f

    mul-float v18, v18, v13

    sub-float v14, v14, v18

    div-float v14, v14, v16

    .line 334
    .local v14, "bA":F
    invoke-static {v15}, Ljava/lang/Math;->abs(F)F

    move-result v4

    float-to-double v4, v4

    const-wide v20, 0x403b2147ae147ae1L    # 27.13

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v4, v4, v20

    move/from16 v16, v0

    .end local v0    # "alpha":F
    .local v16, "alpha":F
    invoke-static {v15}, Ljava/lang/Math;->abs(F)F

    move-result v0

    move/from16 v22, v1

    .end local v1    # "t":F
    .local v22, "t":F
    float-to-double v0, v0

    const-wide/high16 v23, 0x4079000000000000L    # 400.0

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    sub-double v0, v23, v0

    div-double/2addr v4, v0

    const-wide/16 v0, 0x0

    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->max(DD)D

    move-result-wide v4

    double-to-float v0, v4

    .line 335
    .local v0, "rCBase":F
    invoke-static {v15}, Ljava/lang/Math;->signum(F)F

    move-result v1

    invoke-virtual/range {p1 .. p1}, Landroidx/core/content/res/ViewingConditions;->getFl()F

    move-result v4

    const/high16 v5, 0x42c80000    # 100.0f

    div-float v4, v5, v4

    mul-float v1, v1, v4

    move v4, v6

    .end local v6    # "hRad":F
    .local v4, "hRad":F
    float-to-double v5, v0

    move/from16 v26, v2

    move/from16 v27, v3

    .end local v2    # "p1":F
    .end local v3    # "p2":F
    .local v26, "p1":F
    .local v27, "p2":F
    const-wide v2, 0x40030c30c30c30c3L    # 2.380952380952381

    invoke-static {v5, v6, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v5

    double-to-float v5, v5

    mul-float v1, v1, v5

    .line 337
    .local v1, "rC":F
    invoke-static/range {v17 .. v17}, Ljava/lang/Math;->abs(F)F

    move-result v5

    float-to-double v5, v5

    invoke-static {v5, v6}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v5, v5, v20

    invoke-static/range {v17 .. v17}, Ljava/lang/Math;->abs(F)F

    move-result v2

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    sub-double v2, v23, v2

    div-double/2addr v5, v2

    const-wide/16 v2, 0x0

    invoke-static {v2, v3, v5, v6}, Ljava/lang/Math;->max(DD)D

    move-result-wide v5

    double-to-float v2, v5

    .line 338
    .local v2, "gCBase":F
    invoke-static/range {v17 .. v17}, Ljava/lang/Math;->signum(F)F

    move-result v3

    invoke-virtual/range {p1 .. p1}, Landroidx/core/content/res/ViewingConditions;->getFl()F

    move-result v5

    const/high16 v6, 0x42c80000    # 100.0f

    div-float v5, v6, v5

    mul-float v3, v3, v5

    float-to-double v5, v2

    move/from16 v31, v7

    move/from16 v30, v8

    const-wide v7, 0x40030c30c30c30c3L    # 2.380952380952381

    .end local v7    # "ac":F
    .end local v8    # "eHue":F
    .local v30, "eHue":F
    .local v31, "ac":F
    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v5

    double-to-float v5, v5

    mul-float v3, v3, v5

    .line 340
    .local v3, "gC":F
    invoke-static {v14}, Ljava/lang/Math;->abs(F)F

    move-result v5

    float-to-double v5, v5

    invoke-static {v5, v6}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v5, v5, v20

    invoke-static {v14}, Ljava/lang/Math;->abs(F)F

    move-result v7

    float-to-double v7, v7

    invoke-static {v7, v8}, Ljava/lang/Double;->isNaN(D)Z

    sub-double v23, v23, v7

    div-double v5, v5, v23

    const-wide/16 v7, 0x0

    invoke-static {v7, v8, v5, v6}, Ljava/lang/Math;->max(DD)D

    move-result-wide v5

    double-to-float v5, v5

    .line 341
    .local v5, "bCBase":F
    invoke-static {v14}, Ljava/lang/Math;->signum(F)F

    move-result v6

    invoke-virtual/range {p1 .. p1}, Landroidx/core/content/res/ViewingConditions;->getFl()F

    move-result v7

    const/high16 v8, 0x42c80000    # 100.0f

    div-float v7, v8, v7

    mul-float v6, v6, v7

    float-to-double v7, v5

    move/from16 v18, v4

    move/from16 v19, v5

    const-wide v4, 0x40030c30c30c30c3L    # 2.380952380952381

    .end local v4    # "hRad":F
    .end local v5    # "bCBase":F
    .local v18, "hRad":F
    .local v19, "bCBase":F
    invoke-static {v7, v8, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    double-to-float v4, v4

    mul-float v6, v6, v4

    .line 343
    .local v6, "bC":F
    invoke-virtual/range {p1 .. p1}, Landroidx/core/content/res/ViewingConditions;->getRgbD()[F

    move-result-object v4

    const/4 v5, 0x0

    aget v4, v4, v5

    div-float v4, v1, v4

    .line 344
    .local v4, "rF":F
    invoke-virtual/range {p1 .. p1}, Landroidx/core/content/res/ViewingConditions;->getRgbD()[F

    move-result-object v7

    const/4 v8, 0x1

    aget v7, v7, v8

    div-float v7, v3, v7

    .line 345
    .local v7, "gF":F
    invoke-virtual/range {p1 .. p1}, Landroidx/core/content/res/ViewingConditions;->getRgbD()[F

    move-result-object v20

    const/16 v21, 0x2

    aget v20, v20, v21

    div-float v20, v6, v20

    .line 348
    .local v20, "bF":F
    sget-object v23, Landroidx/core/content/res/CamUtils;->CAM16RGB_TO_XYZ:[[F

    .line 349
    .local v23, "matrix":[[F
    aget-object v24, v23, v5

    aget v24, v24, v5

    mul-float v24, v24, v4

    aget-object v25, v23, v5

    aget v25, v25, v8

    mul-float v25, v25, v7

    add-float v24, v24, v25

    aget-object v25, v23, v5

    aget v25, v25, v21

    mul-float v25, v25, v20

    add-float v5, v24, v25

    .line 350
    .local v5, "x":F
    aget-object v24, v23, v8

    const/16 v25, 0x0

    aget v24, v24, v25

    mul-float v24, v24, v4

    aget-object v25, v23, v8

    aget v25, v25, v8

    mul-float v25, v25, v7

    add-float v24, v24, v25

    aget-object v25, v23, v8

    aget v25, v25, v21

    mul-float v25, v25, v20

    add-float v8, v24, v25

    .line 351
    .local v8, "y":F
    aget-object v24, v23, v21

    const/16 v25, 0x0

    aget v24, v24, v25

    mul-float v24, v24, v4

    aget-object v25, v23, v21

    const/16 v28, 0x1

    aget v25, v25, v28

    mul-float v25, v25, v7

    add-float v24, v24, v25

    aget-object v25, v23, v21

    aget v21, v25, v21

    mul-float v21, v21, v20

    move/from16 v25, v0

    .end local v0    # "rCBase":F
    .local v25, "rCBase":F
    add-float v0, v24, v21

    .line 353
    .local v0, "z":F
    move/from16 v21, v1

    move/from16 v24, v2

    .end local v1    # "rC":F
    .end local v2    # "gCBase":F
    .local v21, "rC":F
    .local v24, "gCBase":F
    float-to-double v1, v5

    move/from16 v28, v3

    move/from16 v29, v4

    .end local v3    # "gC":F
    .end local v4    # "rF":F
    .local v28, "gC":F
    .local v29, "rF":F
    float-to-double v3, v8

    move/from16 v39, v5

    move/from16 v38, v6

    .end local v5    # "x":F
    .end local v6    # "bC":F
    .local v38, "bC":F
    .local v39, "x":F
    float-to-double v5, v0

    move-wide/from16 v32, v1

    move-wide/from16 v34, v3

    move-wide/from16 v36, v5

    invoke-static/range {v32 .. v37}, Landroidx/core/graphics/ColorUtils;->XYZToColor(DDD)I

    move-result v1

    .line 354
    .local v1, "argb":I
    return v1
.end method

.method viewedInSrgb()I
    .locals 1

    .line 301
    sget-object v0, Landroidx/core/content/res/ViewingConditions;->DEFAULT:Landroidx/core/content/res/ViewingConditions;

    invoke-virtual {p0, v0}, Landroidx/core/content/res/CamColor;->viewed(Landroidx/core/content/res/ViewingConditions;)I

    move-result v0

    return v0
.end method
