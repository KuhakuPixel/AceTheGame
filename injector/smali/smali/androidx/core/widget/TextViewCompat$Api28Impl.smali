.class Landroidx/core/widget/TextViewCompat$Api28Impl;
.super Ljava/lang/Object;
.source "TextViewCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/widget/TextViewCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Api28Impl"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1204
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1206
    return-void
.end method

.method static getDigitStrings(Landroid/icu/text/DecimalFormatSymbols;)[Ljava/lang/String;
    .locals 1
    .param p0, "decimalFormatSymbols"    # Landroid/icu/text/DecimalFormatSymbols;

    .line 1220
    invoke-virtual {p0}, Landroid/icu/text/DecimalFormatSymbols;->getDigitStrings()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static getTextMetricsParams(Landroid/widget/TextView;)Landroid/text/PrecomputedText$Params;
    .locals 1
    .param p0, "textView"    # Landroid/widget/TextView;

    .line 1215
    invoke-virtual {p0}, Landroid/widget/TextView;->getTextMetricsParams()Landroid/text/PrecomputedText$Params;

    move-result-object v0

    return-object v0
.end method

.method static setFirstBaselineToTopHeight(Landroid/widget/TextView;I)V
    .locals 0
    .param p0, "textView"    # Landroid/widget/TextView;
    .param p1, "firstBaselineToTopHeight"    # I

    .line 1210
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setFirstBaselineToTopHeight(I)V

    .line 1211
    return-void
.end method
