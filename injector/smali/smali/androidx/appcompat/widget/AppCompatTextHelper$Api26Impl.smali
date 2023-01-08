.class Landroidx/appcompat/widget/AppCompatTextHelper$Api26Impl;
.super Ljava/lang/Object;
.source "AppCompatTextHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/widget/AppCompatTextHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Api26Impl"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 728
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 730
    return-void
.end method

.method static getAutoSizeStepGranularity(Landroid/widget/TextView;)I
    .locals 1
    .param p0, "textView"    # Landroid/widget/TextView;

    .line 739
    invoke-virtual {p0}, Landroid/widget/TextView;->getAutoSizeStepGranularity()I

    move-result v0

    return v0
.end method

.method static setAutoSizeTextTypeUniformWithConfiguration(Landroid/widget/TextView;IIII)V
    .locals 0
    .param p0, "textView"    # Landroid/widget/TextView;
    .param p1, "autoSizeMinTextSize"    # I
    .param p2, "autoSizeMaxTextSize"    # I
    .param p3, "autoSizeStepGranularity"    # I
    .param p4, "unit"    # I

    .line 746
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/widget/TextView;->setAutoSizeTextTypeUniformWithConfiguration(IIII)V

    .line 748
    return-void
.end method

.method static setAutoSizeTextTypeUniformWithPresetSizes(Landroid/widget/TextView;[II)V
    .locals 0
    .param p0, "textView"    # Landroid/widget/TextView;
    .param p1, "presetSizes"    # [I
    .param p2, "unit"    # I

    .line 753
    invoke-virtual {p0, p1, p2}, Landroid/widget/TextView;->setAutoSizeTextTypeUniformWithPresetSizes([II)V

    .line 754
    return-void
.end method

.method static setFontVariationSettings(Landroid/widget/TextView;Ljava/lang/String;)Z
    .locals 1
    .param p0, "textView"    # Landroid/widget/TextView;
    .param p1, "fontVariationSettings"    # Ljava/lang/String;

    .line 734
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setFontVariationSettings(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
