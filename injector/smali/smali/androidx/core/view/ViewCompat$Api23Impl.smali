.class Landroidx/core/view/ViewCompat$Api23Impl;
.super Ljava/lang/Object;
.source "ViewCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/view/ViewCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Api23Impl"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 5012
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5014
    return-void
.end method

.method public static getRootWindowInsets(Landroid/view/View;)Landroidx/core/view/WindowInsetsCompat;
    .locals 3
    .param p0, "v"    # Landroid/view/View;

    .line 5018
    invoke-virtual {p0}, Landroid/view/View;->getRootWindowInsets()Landroid/view/WindowInsets;

    move-result-object v0

    .line 5019
    .local v0, "wi":Landroid/view/WindowInsets;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    return-object v1

    .line 5021
    :cond_0
    invoke-static {v0}, Landroidx/core/view/WindowInsetsCompat;->toWindowInsetsCompat(Landroid/view/WindowInsets;)Landroidx/core/view/WindowInsetsCompat;

    move-result-object v1

    .line 5024
    .local v1, "insets":Landroidx/core/view/WindowInsetsCompat;
    invoke-virtual {v1, v1}, Landroidx/core/view/WindowInsetsCompat;->setRootWindowInsets(Landroidx/core/view/WindowInsetsCompat;)V

    .line 5025
    invoke-virtual {p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/core/view/WindowInsetsCompat;->copyRootViewBounds(Landroid/view/View;)V

    .line 5026
    return-object v1
.end method

.method static getScrollIndicators(Landroid/view/View;)I
    .locals 1
    .param p0, "view"    # Landroid/view/View;

    .line 5041
    invoke-virtual {p0}, Landroid/view/View;->getScrollIndicators()I

    move-result v0

    return v0
.end method

.method static setScrollIndicators(Landroid/view/View;I)V
    .locals 0
    .param p0, "view"    # Landroid/view/View;
    .param p1, "indicators"    # I

    .line 5031
    invoke-virtual {p0, p1}, Landroid/view/View;->setScrollIndicators(I)V

    .line 5032
    return-void
.end method

.method static setScrollIndicators(Landroid/view/View;II)V
    .locals 0
    .param p0, "view"    # Landroid/view/View;
    .param p1, "indicators"    # I
    .param p2, "mask"    # I

    .line 5036
    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setScrollIndicators(II)V

    .line 5037
    return-void
.end method
