.class Landroidx/core/graphics/PaintCompat$Api29Impl;
.super Ljava/lang/Object;
.source "PaintCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/graphics/PaintCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Api29Impl"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 165
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 167
    return-void
.end method

.method static setBlendMode(Landroid/graphics/Paint;Ljava/lang/Object;)V
    .locals 1
    .param p0, "paint"    # Landroid/graphics/Paint;
    .param p1, "blendmode"    # Ljava/lang/Object;

    .line 171
    move-object v0, p1

    check-cast v0, Landroid/graphics/BlendMode;

    invoke-virtual {p0, v0}, Landroid/graphics/Paint;->setBlendMode(Landroid/graphics/BlendMode;)V

    .line 172
    return-void
.end method
