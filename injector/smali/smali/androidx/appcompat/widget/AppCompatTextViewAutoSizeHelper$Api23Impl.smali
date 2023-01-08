.class final Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper$Api23Impl;
.super Ljava/lang/Object;
.source "AppCompatTextViewAutoSizeHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Api23Impl"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 904
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 906
    return-void
.end method

.method static createStaticLayoutForMeasuring(Ljava/lang/CharSequence;Landroid/text/Layout$Alignment;IILandroid/widget/TextView;Landroid/text/TextPaint;Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper$Impl;)Landroid/text/StaticLayout;
    .locals 4
    .param p0, "text"    # Ljava/lang/CharSequence;
    .param p1, "alignment"    # Landroid/text/Layout$Alignment;
    .param p2, "availableWidth"    # I
    .param p3, "maxLines"    # I
    .param p4, "textView"    # Landroid/widget/TextView;
    .param p5, "tempTextPaint"    # Landroid/text/TextPaint;
    .param p6, "impl"    # Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper$Impl;

    .line 919
    nop

    .line 920
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 919
    const/4 v1, 0x0

    invoke-static {p0, v1, v0, p5, p2}, Landroid/text/StaticLayout$Builder;->obtain(Ljava/lang/CharSequence;IILandroid/text/TextPaint;I)Landroid/text/StaticLayout$Builder;

    move-result-object v0

    .line 922
    .local v0, "layoutBuilder":Landroid/text/StaticLayout$Builder;
    invoke-virtual {v0, p1}, Landroid/text/StaticLayout$Builder;->setAlignment(Landroid/text/Layout$Alignment;)Landroid/text/StaticLayout$Builder;

    move-result-object v1

    .line 924
    invoke-virtual {p4}, Landroid/widget/TextView;->getLineSpacingExtra()F

    move-result v2

    .line 925
    invoke-virtual {p4}, Landroid/widget/TextView;->getLineSpacingMultiplier()F

    move-result v3

    .line 923
    invoke-virtual {v1, v2, v3}, Landroid/text/StaticLayout$Builder;->setLineSpacing(FF)Landroid/text/StaticLayout$Builder;

    move-result-object v1

    .line 926
    invoke-virtual {p4}, Landroid/widget/TextView;->getIncludeFontPadding()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/text/StaticLayout$Builder;->setIncludePad(Z)Landroid/text/StaticLayout$Builder;

    move-result-object v1

    .line 927
    invoke-virtual {p4}, Landroid/widget/TextView;->getBreakStrategy()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/text/StaticLayout$Builder;->setBreakStrategy(I)Landroid/text/StaticLayout$Builder;

    move-result-object v1

    .line 928
    invoke-virtual {p4}, Landroid/widget/TextView;->getHyphenationFrequency()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/text/StaticLayout$Builder;->setHyphenationFrequency(I)Landroid/text/StaticLayout$Builder;

    move-result-object v1

    .line 929
    const/4 v2, -0x1

    if-ne p3, v2, :cond_0

    const v2, 0x7fffffff

    goto :goto_0

    :cond_0
    move v2, p3

    :goto_0
    invoke-virtual {v1, v2}, Landroid/text/StaticLayout$Builder;->setMaxLines(I)Landroid/text/StaticLayout$Builder;

    .line 934
    :try_start_0
    invoke-virtual {p6, v0, p4}, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper$Impl;->computeAndSetTextDirection(Landroid/text/StaticLayout$Builder;Landroid/widget/TextView;)V
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 938
    goto :goto_1

    .line 935
    :catch_0
    move-exception v1

    .line 937
    .local v1, "e":Ljava/lang/ClassCastException;
    const-string v2, "ACTVAutoSizeHelper"

    const-string v3, "Failed to obtain TextDirectionHeuristic, auto size may be incorrect"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 939
    .end local v1    # "e":Ljava/lang/ClassCastException;
    :goto_1
    invoke-virtual {v0}, Landroid/text/StaticLayout$Builder;->build()Landroid/text/StaticLayout;

    move-result-object v1

    return-object v1
.end method
