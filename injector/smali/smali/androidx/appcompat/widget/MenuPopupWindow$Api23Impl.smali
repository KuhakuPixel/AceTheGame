.class Landroidx/appcompat/widget/MenuPopupWindow$Api23Impl;
.super Ljava/lang/Object;
.source "MenuPopupWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/widget/MenuPopupWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Api23Impl"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 263
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 265
    return-void
.end method

.method static setEnterTransition(Landroid/widget/PopupWindow;Landroid/transition/Transition;)V
    .locals 0
    .param p0, "popupWindow"    # Landroid/widget/PopupWindow;
    .param p1, "enterTransition"    # Landroid/transition/Transition;

    .line 269
    invoke-virtual {p0, p1}, Landroid/widget/PopupWindow;->setEnterTransition(Landroid/transition/Transition;)V

    .line 270
    return-void
.end method

.method static setExitTransition(Landroid/widget/PopupWindow;Landroid/transition/Transition;)V
    .locals 0
    .param p0, "popupWindow"    # Landroid/widget/PopupWindow;
    .param p1, "exitTransition"    # Landroid/transition/Transition;

    .line 274
    invoke-virtual {p0, p1}, Landroid/widget/PopupWindow;->setExitTransition(Landroid/transition/Transition;)V

    .line 275
    return-void
.end method
