.class Landroidx/core/view/ViewCompat$Api19Impl;
.super Ljava/lang/Object;
.source "ViewCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/view/ViewCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Api19Impl"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 5208
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5210
    return-void
.end method

.method static getAccessibilityLiveRegion(Landroid/view/View;)I
    .locals 1
    .param p0, "view"    # Landroid/view/View;

    .line 5229
    invoke-virtual {p0}, Landroid/view/View;->getAccessibilityLiveRegion()I

    move-result v0

    return v0
.end method

.method static isAttachedToWindow(Landroid/view/View;)Z
    .locals 1
    .param p0, "view"    # Landroid/view/View;

    .line 5219
    invoke-virtual {p0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v0

    return v0
.end method

.method static isLaidOut(Landroid/view/View;)Z
    .locals 1
    .param p0, "view"    # Landroid/view/View;

    .line 5214
    invoke-virtual {p0}, Landroid/view/View;->isLaidOut()Z

    move-result v0

    return v0
.end method

.method static isLayoutDirectionResolved(Landroid/view/View;)Z
    .locals 1
    .param p0, "view"    # Landroid/view/View;

    .line 5224
    invoke-virtual {p0}, Landroid/view/View;->isLayoutDirectionResolved()Z

    move-result v0

    return v0
.end method

.method static notifySubtreeAccessibilityStateChanged(Landroid/view/ViewParent;Landroid/view/View;Landroid/view/View;I)V
    .locals 0
    .param p0, "viewParent"    # Landroid/view/ViewParent;
    .param p1, "child"    # Landroid/view/View;
    .param p2, "source"    # Landroid/view/View;
    .param p3, "changeType"    # I

    .line 5245
    invoke-interface {p0, p1, p2, p3}, Landroid/view/ViewParent;->notifySubtreeAccessibilityStateChanged(Landroid/view/View;Landroid/view/View;I)V

    .line 5246
    return-void
.end method

.method static setAccessibilityLiveRegion(Landroid/view/View;I)V
    .locals 0
    .param p0, "view"    # Landroid/view/View;
    .param p1, "mode"    # I

    .line 5234
    invoke-virtual {p0, p1}, Landroid/view/View;->setAccessibilityLiveRegion(I)V

    .line 5235
    return-void
.end method

.method static setContentChangeTypes(Landroid/view/accessibility/AccessibilityEvent;I)V
    .locals 0
    .param p0, "accessibilityEvent"    # Landroid/view/accessibility/AccessibilityEvent;
    .param p1, "changeTypes"    # I

    .line 5239
    invoke-virtual {p0, p1}, Landroid/view/accessibility/AccessibilityEvent;->setContentChangeTypes(I)V

    .line 5240
    return-void
.end method
