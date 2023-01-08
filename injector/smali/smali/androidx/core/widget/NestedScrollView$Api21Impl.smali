.class Landroidx/core/widget/NestedScrollView$Api21Impl;
.super Ljava/lang/Object;
.source "NestedScrollView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/widget/NestedScrollView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Api21Impl"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 2341
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2343
    return-void
.end method

.method static getClipToPadding(Landroid/view/ViewGroup;)Z
    .locals 1
    .param p0, "viewGroup"    # Landroid/view/ViewGroup;

    .line 2347
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getClipToPadding()Z

    move-result v0

    return v0
.end method
