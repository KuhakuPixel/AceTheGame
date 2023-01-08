.class Landroidx/core/view/ViewPropertyAnimatorCompat$Api16Impl;
.super Ljava/lang/Object;
.source "ViewPropertyAnimatorCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/view/ViewPropertyAnimatorCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Api16Impl"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 841
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 843
    return-void
.end method

.method static withEndAction(Landroid/view/ViewPropertyAnimator;Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;
    .locals 1
    .param p0, "viewPropertyAnimator"    # Landroid/view/ViewPropertyAnimator;
    .param p1, "runnable"    # Ljava/lang/Runnable;

    .line 848
    invoke-virtual {p0, p1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    return-object v0
.end method

.method static withLayer(Landroid/view/ViewPropertyAnimator;)Landroid/view/ViewPropertyAnimator;
    .locals 1
    .param p0, "viewPropertyAnimator"    # Landroid/view/ViewPropertyAnimator;

    .line 853
    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    return-object v0
.end method

.method static withStartAction(Landroid/view/ViewPropertyAnimator;Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;
    .locals 1
    .param p0, "viewPropertyAnimator"    # Landroid/view/ViewPropertyAnimator;
    .param p1, "runnable"    # Ljava/lang/Runnable;

    .line 859
    invoke-virtual {p0, p1}, Landroid/view/ViewPropertyAnimator;->withStartAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    return-object v0
.end method
