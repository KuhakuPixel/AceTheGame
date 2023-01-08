.class Landroidx/appcompat/widget/ListPopupWindow$Api29Impl;
.super Ljava/lang/Object;
.source "ListPopupWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/widget/ListPopupWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Api29Impl"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1467
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1469
    return-void
.end method

.method static setEpicenterBounds(Landroid/widget/PopupWindow;Landroid/graphics/Rect;)V
    .locals 0
    .param p0, "popupWindow"    # Landroid/widget/PopupWindow;
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .line 1473
    invoke-virtual {p0, p1}, Landroid/widget/PopupWindow;->setEpicenterBounds(Landroid/graphics/Rect;)V

    .line 1474
    return-void
.end method

.method static setIsClippedToScreen(Landroid/widget/PopupWindow;Z)V
    .locals 0
    .param p0, "popupWindow"    # Landroid/widget/PopupWindow;
    .param p1, "enabled"    # Z

    .line 1478
    invoke-virtual {p0, p1}, Landroid/widget/PopupWindow;->setIsClippedToScreen(Z)V

    .line 1479
    return-void
.end method
