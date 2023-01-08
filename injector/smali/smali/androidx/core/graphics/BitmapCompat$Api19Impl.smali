.class Landroidx/core/graphics/BitmapCompat$Api19Impl;
.super Ljava/lang/Object;
.source "BitmapCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/graphics/BitmapCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Api19Impl"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 356
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 358
    return-void
.end method

.method static getAllocationByteCount(Landroid/graphics/Bitmap;)I
    .locals 1
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;

    .line 362
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getAllocationByteCount()I

    move-result v0

    return v0
.end method
