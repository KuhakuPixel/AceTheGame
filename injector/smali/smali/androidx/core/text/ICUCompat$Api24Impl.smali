.class Landroidx/core/text/ICUCompat$Api24Impl;
.super Ljava/lang/Object;
.source "ICUCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/text/ICUCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Api24Impl"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 154
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 156
    return-void
.end method

.method static addLikelySubtags(Ljava/lang/Object;)Landroid/icu/util/ULocale;
    .locals 1
    .param p0, "loc"    # Ljava/lang/Object;

    .line 165
    move-object v0, p0

    check-cast v0, Landroid/icu/util/ULocale;

    invoke-static {v0}, Landroid/icu/util/ULocale;->addLikelySubtags(Landroid/icu/util/ULocale;)Landroid/icu/util/ULocale;

    move-result-object v0

    return-object v0
.end method

.method static forLocale(Ljava/util/Locale;)Landroid/icu/util/ULocale;
    .locals 1
    .param p0, "loc"    # Ljava/util/Locale;

    .line 160
    invoke-static {p0}, Landroid/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Landroid/icu/util/ULocale;

    move-result-object v0

    return-object v0
.end method

.method static getScript(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .param p0, "uLocale"    # Ljava/lang/Object;

    .line 170
    move-object v0, p0

    check-cast v0, Landroid/icu/util/ULocale;

    invoke-virtual {v0}, Landroid/icu/util/ULocale;->getScript()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
