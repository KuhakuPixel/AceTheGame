.class Landroidx/core/view/accessibility/AccessibilityEventCompat$Api16Impl;
.super Ljava/lang/Object;
.source "AccessibilityEventCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/view/accessibility/AccessibilityEventCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Api16Impl"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 436
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 438
    return-void
.end method

.method static getAction(Landroid/view/accessibility/AccessibilityEvent;)I
    .locals 1
    .param p0, "accessibilityEvent"    # Landroid/view/accessibility/AccessibilityEvent;

    .line 457
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityEvent;->getAction()I

    move-result v0

    return v0
.end method

.method static getMovementGranularity(Landroid/view/accessibility/AccessibilityEvent;)I
    .locals 1
    .param p0, "accessibilityEvent"    # Landroid/view/accessibility/AccessibilityEvent;

    .line 447
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityEvent;->getMovementGranularity()I

    move-result v0

    return v0
.end method

.method static setAction(Landroid/view/accessibility/AccessibilityEvent;I)V
    .locals 0
    .param p0, "accessibilityEvent"    # Landroid/view/accessibility/AccessibilityEvent;
    .param p1, "action"    # I

    .line 452
    invoke-virtual {p0, p1}, Landroid/view/accessibility/AccessibilityEvent;->setAction(I)V

    .line 453
    return-void
.end method

.method static setMovementGranularity(Landroid/view/accessibility/AccessibilityEvent;I)V
    .locals 0
    .param p0, "accessibilityEvent"    # Landroid/view/accessibility/AccessibilityEvent;
    .param p1, "granularity"    # I

    .line 442
    invoke-virtual {p0, p1}, Landroid/view/accessibility/AccessibilityEvent;->setMovementGranularity(I)V

    .line 443
    return-void
.end method
