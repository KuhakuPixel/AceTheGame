.class Landroidx/core/graphics/BitmapCompat$Api17Impl;
.super Ljava/lang/Object;
.source "BitmapCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/graphics/BitmapCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Api17Impl"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 339
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 341
    return-void
.end method

.method static hasMipMap(Landroid/graphics/Bitmap;)Z
    .locals 1
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;

    .line 345
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->hasMipMap()Z

    move-result v0

    return v0
.end method

.method static setHasMipMap(Landroid/graphics/Bitmap;Z)V
    .locals 0
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
    .param p1, "hasMipMap"    # Z

    .line 350
    invoke-virtual {p0, p1}, Landroid/graphics/Bitmap;->setHasMipMap(Z)V

    .line 351
    return-void
.end method
