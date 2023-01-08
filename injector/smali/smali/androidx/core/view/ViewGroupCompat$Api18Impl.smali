.class Landroidx/core/view/ViewGroupCompat$Api18Impl;
.super Ljava/lang/Object;
.source "ViewGroupCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/view/ViewGroupCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Api18Impl"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 194
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 196
    return-void
.end method

.method static getLayoutMode(Landroid/view/ViewGroup;)I
    .locals 1
    .param p0, "viewGroup"    # Landroid/view/ViewGroup;

    .line 200
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getLayoutMode()I

    move-result v0

    return v0
.end method

.method static setLayoutMode(Landroid/view/ViewGroup;I)V
    .locals 0
    .param p0, "viewGroup"    # Landroid/view/ViewGroup;
    .param p1, "layoutMode"    # I

    .line 205
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setLayoutMode(I)V

    .line 206
    return-void
.end method
