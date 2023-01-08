.class Landroidx/core/widget/TextViewCompat$Api24Impl;
.super Ljava/lang/Object;
.source "TextViewCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/widget/TextViewCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Api24Impl"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1274
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1276
    return-void
.end method

.method static getInstance(Ljava/util/Locale;)Landroid/icu/text/DecimalFormatSymbols;
    .locals 1
    .param p0, "locale"    # Ljava/util/Locale;

    .line 1280
    invoke-static {p0}, Landroid/icu/text/DecimalFormatSymbols;->getInstance(Ljava/util/Locale;)Landroid/icu/text/DecimalFormatSymbols;

    move-result-object v0

    return-object v0
.end method
