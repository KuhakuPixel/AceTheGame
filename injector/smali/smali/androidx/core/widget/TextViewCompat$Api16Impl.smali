.class Landroidx/core/widget/TextViewCompat$Api16Impl;
.super Ljava/lang/Object;
.source "TextViewCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/widget/TextViewCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Api16Impl"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1133
    return-void
.end method

.method static getIncludeFontPadding(Landroid/widget/TextView;)Z
    .locals 1
    .param p0, "textView"    # Landroid/widget/TextView;

    .line 1147
    invoke-virtual {p0}, Landroid/widget/TextView;->getIncludeFontPadding()Z

    move-result v0

    return v0
.end method

.method static getMaxLines(Landroid/widget/TextView;)I
    .locals 1
    .param p0, "textView"    # Landroid/widget/TextView;

    .line 1137
    invoke-virtual {p0}, Landroid/widget/TextView;->getMaxLines()I

    move-result v0

    return v0
.end method

.method static getMinLines(Landroid/widget/TextView;)I
    .locals 1
    .param p0, "textView"    # Landroid/widget/TextView;

    .line 1142
    invoke-virtual {p0}, Landroid/widget/TextView;->getMinLines()I

    move-result v0

    return v0
.end method
