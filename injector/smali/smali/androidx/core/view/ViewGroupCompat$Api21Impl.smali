.class Landroidx/core/view/ViewGroupCompat$Api21Impl;
.super Ljava/lang/Object;
.source "ViewGroupCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/view/ViewGroupCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Api21Impl"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 211
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 213
    return-void
.end method

.method static getNestedScrollAxes(Landroid/view/ViewGroup;)I
    .locals 1
    .param p0, "viewGroup"    # Landroid/view/ViewGroup;

    .line 227
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getNestedScrollAxes()I

    move-result v0

    return v0
.end method

.method static isTransitionGroup(Landroid/view/ViewGroup;)Z
    .locals 1
    .param p0, "viewGroup"    # Landroid/view/ViewGroup;

    .line 222
    invoke-virtual {p0}, Landroid/view/ViewGroup;->isTransitionGroup()Z

    move-result v0

    return v0
.end method

.method static setTransitionGroup(Landroid/view/ViewGroup;Z)V
    .locals 0
    .param p0, "viewGroup"    # Landroid/view/ViewGroup;
    .param p1, "isTransitionGroup"    # Z

    .line 217
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setTransitionGroup(Z)V

    .line 218
    return-void
.end method
