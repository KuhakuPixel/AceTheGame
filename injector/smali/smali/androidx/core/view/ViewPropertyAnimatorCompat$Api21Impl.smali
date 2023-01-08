.class Landroidx/core/view/ViewPropertyAnimatorCompat$Api21Impl;
.super Ljava/lang/Object;
.source "ViewPropertyAnimatorCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/view/ViewPropertyAnimatorCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Api21Impl"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 878
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 880
    return-void
.end method

.method static translationZ(Landroid/view/ViewPropertyAnimator;F)Landroid/view/ViewPropertyAnimator;
    .locals 1
    .param p0, "viewPropertyAnimator"    # Landroid/view/ViewPropertyAnimator;
    .param p1, "value"    # F

    .line 891
    invoke-virtual {p0, p1}, Landroid/view/ViewPropertyAnimator;->translationZ(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    return-object v0
.end method

.method static translationZBy(Landroid/view/ViewPropertyAnimator;F)Landroid/view/ViewPropertyAnimator;
    .locals 1
    .param p0, "viewPropertyAnimator"    # Landroid/view/ViewPropertyAnimator;
    .param p1, "value"    # F

    .line 885
    invoke-virtual {p0, p1}, Landroid/view/ViewPropertyAnimator;->translationZBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    return-object v0
.end method

.method static z(Landroid/view/ViewPropertyAnimator;F)Landroid/view/ViewPropertyAnimator;
    .locals 1
    .param p0, "viewPropertyAnimator"    # Landroid/view/ViewPropertyAnimator;
    .param p1, "value"    # F

    .line 896
    invoke-virtual {p0, p1}, Landroid/view/ViewPropertyAnimator;->z(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    return-object v0
.end method

.method static zBy(Landroid/view/ViewPropertyAnimator;F)Landroid/view/ViewPropertyAnimator;
    .locals 1
    .param p0, "viewPropertyAnimator"    # Landroid/view/ViewPropertyAnimator;
    .param p1, "value"    # F

    .line 901
    invoke-virtual {p0, p1}, Landroid/view/ViewPropertyAnimator;->zBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    return-object v0
.end method
