.class Landroidx/core/view/ViewConfigurationCompat$Api26Impl;
.super Ljava/lang/Object;
.source "ViewConfigurationCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/view/ViewConfigurationCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Api26Impl"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 160
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 162
    return-void
.end method

.method static getScaledHorizontalScrollFactor(Landroid/view/ViewConfiguration;)F
    .locals 1
    .param p0, "viewConfiguration"    # Landroid/view/ViewConfiguration;

    .line 166
    invoke-virtual {p0}, Landroid/view/ViewConfiguration;->getScaledHorizontalScrollFactor()F

    move-result v0

    return v0
.end method

.method static getScaledVerticalScrollFactor(Landroid/view/ViewConfiguration;)F
    .locals 1
    .param p0, "viewConfiguration"    # Landroid/view/ViewConfiguration;

    .line 171
    invoke-virtual {p0}, Landroid/view/ViewConfiguration;->getScaledVerticalScrollFactor()F

    move-result v0

    return v0
.end method
