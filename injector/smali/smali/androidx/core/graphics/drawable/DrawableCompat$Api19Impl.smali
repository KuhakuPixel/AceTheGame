.class Landroidx/core/graphics/drawable/DrawableCompat$Api19Impl;
.super Ljava/lang/Object;
.source "DrawableCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/graphics/drawable/DrawableCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Api19Impl"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 434
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 436
    return-void
.end method

.method static getAlpha(Landroid/graphics/drawable/Drawable;)I
    .locals 1
    .param p0, "drawable"    # Landroid/graphics/drawable/Drawable;

    .line 450
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getAlpha()I

    move-result v0

    return v0
.end method

.method static getChild(Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;I)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p0, "drawableContainerState"    # Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;
    .param p1, "index"    # I

    .line 456
    invoke-virtual {p0, p1}, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->getChild(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method static getDrawable(Landroid/graphics/drawable/InsetDrawable;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p0, "drawable"    # Landroid/graphics/drawable/InsetDrawable;

    .line 461
    invoke-virtual {p0}, Landroid/graphics/drawable/InsetDrawable;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method static isAutoMirrored(Landroid/graphics/drawable/Drawable;)Z
    .locals 1
    .param p0, "drawable"    # Landroid/graphics/drawable/Drawable;

    .line 445
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->isAutoMirrored()Z

    move-result v0

    return v0
.end method

.method static setAutoMirrored(Landroid/graphics/drawable/Drawable;Z)V
    .locals 0
    .param p0, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p1, "mirrored"    # Z

    .line 440
    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->setAutoMirrored(Z)V

    .line 441
    return-void
.end method
