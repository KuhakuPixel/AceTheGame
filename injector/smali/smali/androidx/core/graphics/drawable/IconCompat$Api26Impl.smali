.class Landroidx/core/graphics/drawable/IconCompat$Api26Impl;
.super Ljava/lang/Object;
.source "IconCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/graphics/drawable/IconCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Api26Impl"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1090
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1092
    return-void
.end method

.method static createAdaptiveIconDrawable(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p0, "backgroundDrawable"    # Landroid/graphics/drawable/Drawable;
    .param p1, "foregroundDrawable"    # Landroid/graphics/drawable/Drawable;

    .line 1097
    new-instance v0, Landroid/graphics/drawable/AdaptiveIconDrawable;

    invoke-direct {v0, p0, p1}, Landroid/graphics/drawable/AdaptiveIconDrawable;-><init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-object v0
.end method

.method static createWithAdaptiveBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Icon;
    .locals 1
    .param p0, "bits"    # Landroid/graphics/Bitmap;

    .line 1102
    invoke-static {p0}, Landroid/graphics/drawable/Icon;->createWithAdaptiveBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Icon;

    move-result-object v0

    return-object v0
.end method
