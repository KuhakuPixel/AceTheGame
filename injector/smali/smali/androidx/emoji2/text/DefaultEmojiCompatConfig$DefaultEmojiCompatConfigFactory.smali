.class public Landroidx/emoji2/text/DefaultEmojiCompatConfig$DefaultEmojiCompatConfigFactory;
.super Ljava/lang/Object;
.source "DefaultEmojiCompatConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/emoji2/text/DefaultEmojiCompatConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DefaultEmojiCompatConfigFactory"
.end annotation


# static fields
.field private static final DEFAULT_EMOJI_QUERY:Ljava/lang/String; = "emojicompat-emoji-font"

.field private static final INTENT_LOAD_EMOJI_FONT:Ljava/lang/String; = "androidx.content.action.LOAD_EMOJI_FONT"

.field private static final TAG:Ljava/lang/String; = "emoji2.text.DefaultEmojiConfig"


# instance fields
.field private final mHelper:Landroidx/emoji2/text/DefaultEmojiCompatConfig$DefaultEmojiCompatConfigHelper;


# direct methods
.method public constructor <init>(Landroidx/emoji2/text/DefaultEmojiCompatConfig$DefaultEmojiCompatConfigHelper;)V
    .locals 1
    .param p1, "helper"    # Landroidx/emoji2/text/DefaultEmojiCompatConfig$DefaultEmojiCompatConfigHelper;

    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 120
    if-eqz p1, :cond_0

    move-object v0, p1

    goto :goto_0

    :cond_0
    invoke-static {}, Landroidx/emoji2/text/DefaultEmojiCompatConfig$DefaultEmojiCompatConfigFactory;->getHelperForApi()Landroidx/emoji2/text/DefaultEmojiCompatConfig$DefaultEmojiCompatConfigHelper;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Landroidx/emoji2/text/DefaultEmojiCompatConfig$DefaultEmojiCompatConfigFactory;->mHelper:Landroidx/emoji2/text/DefaultEmojiCompatConfig$DefaultEmojiCompatConfigHelper;

    .line 121
    return-void
.end method

.method private configOrNull(Landroid/content/Context;Landroidx/core/provider/FontRequest;)Landroidx/emoji2/text/EmojiCompat$Config;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "fontRequest"    # Landroidx/core/provider/FontRequest;

    .line 142
    if-nez p2, :cond_0

    .line 143
    const/4 v0, 0x0

    return-object v0

    .line 145
    :cond_0
    new-instance v0, Landroidx/emoji2/text/FontRequestEmojiCompatConfig;

    invoke-direct {v0, p1, p2}, Landroidx/emoji2/text/FontRequestEmojiCompatConfig;-><init>(Landroid/content/Context;Landroidx/core/provider/FontRequest;)V

    return-object v0
.end method

.method private convertToByteArray([Landroid/content/pm/Signature;)Ljava/util/List;
    .locals 5
    .param p1, "signatures"    # [Landroid/content/pm/Signature;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Landroid/content/pm/Signature;",
            ")",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "[B>;>;"
        }
    .end annotation

    .line 234
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 235
    .local v0, "shaList":Ljava/util/List;, "Ljava/util/List<[B>;"
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p1, v2

    .line 236
    .local v3, "signature":Landroid/content/pm/Signature;
    invoke-virtual {v3}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 235
    .end local v3    # "signature":Landroid/content/pm/Signature;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 238
    :cond_0
    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method private generateFontRequestFrom(Landroid/content/pm/ProviderInfo;Landroid/content/pm/PackageManager;)Landroidx/core/provider/FontRequest;
    .locals 6
    .param p1, "providerInfo"    # Landroid/content/pm/ProviderInfo;
    .param p2, "packageManager"    # Landroid/content/pm/PackageManager;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 219
    iget-object v0, p1, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    .line 220
    .local v0, "providerAuthority":Ljava/lang/String;
    iget-object v1, p1, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    .line 222
    .local v1, "providerPackage":Ljava/lang/String;
    iget-object v2, p0, Landroidx/emoji2/text/DefaultEmojiCompatConfig$DefaultEmojiCompatConfigFactory;->mHelper:Landroidx/emoji2/text/DefaultEmojiCompatConfig$DefaultEmojiCompatConfigHelper;

    invoke-virtual {v2, p2, v1}, Landroidx/emoji2/text/DefaultEmojiCompatConfig$DefaultEmojiCompatConfigHelper;->getSigningSignatures(Landroid/content/pm/PackageManager;Ljava/lang/String;)[Landroid/content/pm/Signature;

    move-result-object v2

    .line 224
    .local v2, "signingSignatures":[Landroid/content/pm/Signature;
    invoke-direct {p0, v2}, Landroidx/emoji2/text/DefaultEmojiCompatConfig$DefaultEmojiCompatConfigFactory;->convertToByteArray([Landroid/content/pm/Signature;)Ljava/util/List;

    move-result-object v3

    .line 225
    .local v3, "signatures":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<[B>;>;"
    new-instance v4, Landroidx/core/provider/FontRequest;

    const-string v5, "emojicompat-emoji-font"

    invoke-direct {v4, v0, v1, v5, v3}, Landroidx/core/provider/FontRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    return-object v4
.end method

.method private static getHelperForApi()Landroidx/emoji2/text/DefaultEmojiCompatConfig$DefaultEmojiCompatConfigHelper;
    .locals 2

    .line 246
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_0

    .line 247
    new-instance v0, Landroidx/emoji2/text/DefaultEmojiCompatConfig$DefaultEmojiCompatConfigHelper_API28;

    invoke-direct {v0}, Landroidx/emoji2/text/DefaultEmojiCompatConfig$DefaultEmojiCompatConfigHelper_API28;-><init>()V

    return-object v0

    .line 248
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_1

    .line 249
    new-instance v0, Landroidx/emoji2/text/DefaultEmojiCompatConfig$DefaultEmojiCompatConfigHelper_API19;

    invoke-direct {v0}, Landroidx/emoji2/text/DefaultEmojiCompatConfig$DefaultEmojiCompatConfigHelper_API19;-><init>()V

    return-object v0

    .line 251
    :cond_1
    new-instance v0, Landroidx/emoji2/text/DefaultEmojiCompatConfig$DefaultEmojiCompatConfigHelper;

    invoke-direct {v0}, Landroidx/emoji2/text/DefaultEmojiCompatConfig$DefaultEmojiCompatConfigHelper;-><init>()V

    return-object v0
.end method

.method private hasFlagSystem(Landroid/content/pm/ProviderInfo;)Z
    .locals 2
    .param p1, "providerInfo"    # Landroid/content/pm/ProviderInfo;

    .line 201
    const/4 v0, 0x1

    if-eqz p1, :cond_0

    iget-object v1, p1, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v1, :cond_0

    iget-object v1, p1, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/2addr v1, v0

    if-ne v1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private queryDefaultInstalledContentProvider(Landroid/content/pm/PackageManager;)Landroid/content/pm/ProviderInfo;
    .locals 5
    .param p1, "packageManager"    # Landroid/content/pm/PackageManager;

    .line 183
    iget-object v0, p0, Landroidx/emoji2/text/DefaultEmojiCompatConfig$DefaultEmojiCompatConfigFactory;->mHelper:Landroidx/emoji2/text/DefaultEmojiCompatConfig$DefaultEmojiCompatConfigHelper;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "androidx.content.action.LOAD_EMOJI_FONT"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Landroidx/emoji2/text/DefaultEmojiCompatConfig$DefaultEmojiCompatConfigHelper;->queryIntentContentProviders(Landroid/content/pm/PackageManager;Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 186
    .local v0, "providers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    .line 187
    .local v2, "resolveInfo":Landroid/content/pm/ResolveInfo;
    iget-object v3, p0, Landroidx/emoji2/text/DefaultEmojiCompatConfig$DefaultEmojiCompatConfigFactory;->mHelper:Landroidx/emoji2/text/DefaultEmojiCompatConfig$DefaultEmojiCompatConfigHelper;

    invoke-virtual {v3, v2}, Landroidx/emoji2/text/DefaultEmojiCompatConfig$DefaultEmojiCompatConfigHelper;->getProviderInfo(Landroid/content/pm/ResolveInfo;)Landroid/content/pm/ProviderInfo;

    move-result-object v3

    .line 188
    .local v3, "providerInfo":Landroid/content/pm/ProviderInfo;
    invoke-direct {p0, v3}, Landroidx/emoji2/text/DefaultEmojiCompatConfig$DefaultEmojiCompatConfigFactory;->hasFlagSystem(Landroid/content/pm/ProviderInfo;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 189
    return-object v3

    .line 191
    .end local v2    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    .end local v3    # "providerInfo":Landroid/content/pm/ProviderInfo;
    :cond_0
    goto :goto_0

    .line 192
    :cond_1
    const/4 v1, 0x0

    return-object v1
.end method


# virtual methods
.method public create(Landroid/content/Context;)Landroidx/emoji2/text/EmojiCompat$Config;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 130
    invoke-virtual {p0, p1}, Landroidx/emoji2/text/DefaultEmojiCompatConfig$DefaultEmojiCompatConfigFactory;->queryForDefaultFontRequest(Landroid/content/Context;)Landroidx/core/provider/FontRequest;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Landroidx/emoji2/text/DefaultEmojiCompatConfig$DefaultEmojiCompatConfigFactory;->configOrNull(Landroid/content/Context;Landroidx/core/provider/FontRequest;)Landroidx/emoji2/text/EmojiCompat$Config;

    move-result-object v0

    return-object v0
.end method

.method queryForDefaultFontRequest(Landroid/content/Context;)Landroidx/core/provider/FontRequest;
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .line 159
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 161
    .local v0, "packageManager":Landroid/content/pm/PackageManager;
    const-string v1, "Package manager required to locate emoji font provider"

    invoke-static {v0, v1}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    invoke-direct {p0, v0}, Landroidx/emoji2/text/DefaultEmojiCompatConfig$DefaultEmojiCompatConfigFactory;->queryDefaultInstalledContentProvider(Landroid/content/pm/PackageManager;)Landroid/content/pm/ProviderInfo;

    move-result-object v1

    .line 164
    .local v1, "providerInfo":Landroid/content/pm/ProviderInfo;
    const/4 v2, 0x0

    if-nez v1, :cond_0

    return-object v2

    .line 167
    :cond_0
    :try_start_0
    invoke-direct {p0, v1, v0}, Landroidx/emoji2/text/DefaultEmojiCompatConfig$DefaultEmojiCompatConfigFactory;->generateFontRequestFrom(Landroid/content/pm/ProviderInfo;Landroid/content/pm/PackageManager;)Landroidx/core/provider/FontRequest;

    move-result-object v2
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 168
    :catch_0
    move-exception v3

    .line 169
    .local v3, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v4, "emoji2.text.DefaultEmojiConfig"

    invoke-static {v4, v3}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 170
    return-object v2
.end method
