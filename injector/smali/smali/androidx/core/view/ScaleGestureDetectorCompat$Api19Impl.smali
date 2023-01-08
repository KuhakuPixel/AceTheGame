.class Landroidx/core/view/ScaleGestureDetectorCompat$Api19Impl;
.super Ljava/lang/Object;
.source "ScaleGestureDetectorCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/view/ScaleGestureDetectorCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Api19Impl"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    return-void
.end method

.method static isQuickScaleEnabled(Landroid/view/ScaleGestureDetector;)Z
    .locals 1
    .param p0, "scaleGestureDetector"    # Landroid/view/ScaleGestureDetector;

    .line 103
    invoke-virtual {p0}, Landroid/view/ScaleGestureDetector;->isQuickScaleEnabled()Z

    move-result v0

    return v0
.end method

.method static setQuickScaleEnabled(Landroid/view/ScaleGestureDetector;Z)V
    .locals 0
    .param p0, "scaleGestureDetector"    # Landroid/view/ScaleGestureDetector;
    .param p1, "scales"    # Z

    .line 98
    invoke-virtual {p0, p1}, Landroid/view/ScaleGestureDetector;->setQuickScaleEnabled(Z)V

    .line 99
    return-void
.end method
