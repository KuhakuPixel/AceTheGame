.class Landroidx/appcompat/widget/ListPopupWindow$Api24Impl;
.super Ljava/lang/Object;
.source "ListPopupWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/widget/ListPopupWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Api24Impl"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1484
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1486
    return-void
.end method

.method static getMaxAvailableHeight(Landroid/widget/PopupWindow;Landroid/view/View;IZ)I
    .locals 1
    .param p0, "popupWindow"    # Landroid/widget/PopupWindow;
    .param p1, "anchor"    # Landroid/view/View;
    .param p2, "yOffset"    # I
    .param p3, "ignoreBottomDecorations"    # Z

    .line 1491
    invoke-virtual {p0, p1, p2, p3}, Landroid/widget/PopupWindow;->getMaxAvailableHeight(Landroid/view/View;IZ)I

    move-result v0

    return v0
.end method
