.class Landroidx/core/graphics/BitmapCompat$Api31Impl;
.super Ljava/lang/Object;
.source "BitmapCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/graphics/BitmapCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Api31Impl"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 422
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 423
    return-void
.end method

.method static getHardwareBitmapConfig(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap$Config;
    .locals 2
    .param p0, "bm"    # Landroid/graphics/Bitmap;

    .line 427
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHardwareBuffer()Landroid/hardware/HardwareBuffer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/HardwareBuffer;->getFormat()I

    move-result v0

    const/16 v1, 0x16

    if-ne v0, v1, :cond_0

    .line 428
    sget-object v0, Landroid/graphics/Bitmap$Config;->RGBA_F16:Landroid/graphics/Bitmap$Config;

    return-object v0

    .line 430
    :cond_0
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    return-object v0
.end method
