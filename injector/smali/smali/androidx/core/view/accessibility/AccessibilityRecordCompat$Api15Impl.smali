.class Landroidx/core/view/accessibility/AccessibilityRecordCompat$Api15Impl;
.super Ljava/lang/Object;
.source "AccessibilityRecordCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/view/accessibility/AccessibilityRecordCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Api15Impl"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 799
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 801
    return-void
.end method

.method static getMaxScrollX(Landroid/view/accessibility/AccessibilityRecord;)I
    .locals 1
    .param p0, "accessibilityRecord"    # Landroid/view/accessibility/AccessibilityRecord;

    .line 805
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityRecord;->getMaxScrollX()I

    move-result v0

    return v0
.end method

.method static getMaxScrollY(Landroid/view/accessibility/AccessibilityRecord;)I
    .locals 1
    .param p0, "accessibilityRecord"    # Landroid/view/accessibility/AccessibilityRecord;

    .line 815
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityRecord;->getMaxScrollY()I

    move-result v0

    return v0
.end method

.method static setMaxScrollX(Landroid/view/accessibility/AccessibilityRecord;I)V
    .locals 0
    .param p0, "accessibilityRecord"    # Landroid/view/accessibility/AccessibilityRecord;
    .param p1, "maxScrollX"    # I

    .line 810
    invoke-virtual {p0, p1}, Landroid/view/accessibility/AccessibilityRecord;->setMaxScrollX(I)V

    .line 811
    return-void
.end method

.method static setMaxScrollY(Landroid/view/accessibility/AccessibilityRecord;I)V
    .locals 0
    .param p0, "accessibilityRecord"    # Landroid/view/accessibility/AccessibilityRecord;
    .param p1, "maxScrollY"    # I

    .line 820
    invoke-virtual {p0, p1}, Landroid/view/accessibility/AccessibilityRecord;->setMaxScrollY(I)V

    .line 821
    return-void
.end method
