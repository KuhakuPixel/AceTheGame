.class final Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper$Api16Impl;
.super Ljava/lang/Object;
.source "AppCompatTextViewAutoSizeHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Api16Impl"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 957
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 959
    return-void
.end method

.method static createStaticLayoutForMeasuring(Ljava/lang/CharSequence;Landroid/text/Layout$Alignment;ILandroid/widget/TextView;Landroid/text/TextPaint;)Landroid/text/StaticLayout;
    .locals 12
    .param p0, "text"    # Ljava/lang/CharSequence;
    .param p1, "alignment"    # Landroid/text/Layout$Alignment;
    .param p2, "availableWidth"    # I
    .param p3, "textView"    # Landroid/widget/TextView;
    .param p4, "tempTextPaint"    # Landroid/text/TextPaint;

    .line 975
    invoke-virtual {p3}, Landroid/widget/TextView;->getLineSpacingMultiplier()F

    move-result v8

    .line 976
    .local v8, "lineSpacingMultiplier":F
    invoke-virtual {p3}, Landroid/widget/TextView;->getLineSpacingExtra()F

    move-result v9

    .line 977
    .local v9, "lineSpacingAdd":F
    invoke-virtual {p3}, Landroid/widget/TextView;->getIncludeFontPadding()Z

    move-result v10

    .line 981
    .local v10, "includePad":Z
    new-instance v11, Landroid/text/StaticLayout;

    move-object v0, v11

    move-object v1, p0

    move-object/from16 v2, p4

    move v3, p2

    move-object v4, p1

    move v5, v8

    move v6, v9

    move v7, v10

    invoke-direct/range {v0 .. v7}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    return-object v11
.end method

.method static getMaxLines(Landroid/widget/TextView;)I
    .locals 1
    .param p0, "textView"    # Landroid/widget/TextView;

    .line 963
    invoke-virtual {p0}, Landroid/widget/TextView;->getMaxLines()I

    move-result v0

    return v0
.end method
