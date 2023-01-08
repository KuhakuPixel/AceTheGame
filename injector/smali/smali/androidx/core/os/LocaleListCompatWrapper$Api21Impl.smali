.class Landroidx/core/os/LocaleListCompatWrapper$Api21Impl;
.super Ljava/lang/Object;
.source "LocaleListCompatWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/os/LocaleListCompatWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Api21Impl"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 276
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 278
    return-void
.end method

.method static getScript(Ljava/util/Locale;)Ljava/lang/String;
    .locals 1
    .param p0, "locale"    # Ljava/util/Locale;

    .line 282
    invoke-virtual {p0}, Ljava/util/Locale;->getScript()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
