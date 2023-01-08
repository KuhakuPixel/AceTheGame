.class Landroidx/core/telephony/mbms/MbmsHelper$Api28Impl;
.super Ljava/lang/Object;
.source "MbmsHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/telephony/mbms/MbmsHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Api28Impl"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    return-void
.end method

.method static getBestNameForService(Landroid/content/Context;Landroid/telephony/mbms/ServiceInfo;)Ljava/lang/CharSequence;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "serviceInfo"    # Landroid/telephony/mbms/ServiceInfo;

    .line 68
    invoke-virtual {p1}, Landroid/telephony/mbms/ServiceInfo;->getNamedContentLocales()Ljava/util/Set;

    move-result-object v0

    .line 69
    .local v0, "namedContentLocales":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Locale;>;"
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 70
    return-object v2

    .line 73
    :cond_0
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    .line 74
    .local v1, "supportedLanguages":[Ljava/lang/String;
    const/4 v3, 0x0

    .line 75
    .local v3, "i":I
    invoke-virtual {p1}, Landroid/telephony/mbms/ServiceInfo;->getNamedContentLocales()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Locale;

    .line 76
    .local v5, "l":Ljava/util/Locale;
    invoke-virtual {v5}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v1, v3

    .line 77
    nop

    .end local v5    # "l":Ljava/util/Locale;
    add-int/lit8 v3, v3, 0x1

    .line 78
    goto :goto_0

    .line 80
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object v4

    .line 81
    .local v4, "localeList":Landroid/os/LocaleList;
    invoke-virtual {v4, v1}, Landroid/os/LocaleList;->getFirstMatch([Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v5

    .line 82
    .local v5, "bestLocale":Ljava/util/Locale;
    if-nez v5, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {p1, v5}, Landroid/telephony/mbms/ServiceInfo;->getNameForLocale(Ljava/util/Locale;)Ljava/lang/CharSequence;

    move-result-object v2

    :goto_1
    return-object v2
.end method
