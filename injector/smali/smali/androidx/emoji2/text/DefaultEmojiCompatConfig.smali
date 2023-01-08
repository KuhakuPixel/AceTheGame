.class public final Landroidx/emoji2/text/DefaultEmojiCompatConfig;
.super Ljava/lang/Object;
.source "DefaultEmojiCompatConfig.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/emoji2/text/DefaultEmojiCompatConfig$DefaultEmojiCompatConfigHelper_API28;,
        Landroidx/emoji2/text/DefaultEmojiCompatConfig$DefaultEmojiCompatConfigHelper_API19;,
        Landroidx/emoji2/text/DefaultEmojiCompatConfig$DefaultEmojiCompatConfigHelper;,
        Landroidx/emoji2/text/DefaultEmojiCompatConfig$DefaultEmojiCompatConfigFactory;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    return-void
.end method

.method public static create(Landroid/content/Context;)Landroidx/emoji2/text/FontRequestEmojiCompatConfig;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 97
    new-instance v0, Landroidx/emoji2/text/DefaultEmojiCompatConfig$DefaultEmojiCompatConfigFactory;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/emoji2/text/DefaultEmojiCompatConfig$DefaultEmojiCompatConfigFactory;-><init>(Landroidx/emoji2/text/DefaultEmojiCompatConfig$DefaultEmojiCompatConfigHelper;)V

    .line 98
    invoke-virtual {v0, p0}, Landroidx/emoji2/text/DefaultEmojiCompatConfig$DefaultEmojiCompatConfigFactory;->create(Landroid/content/Context;)Landroidx/emoji2/text/EmojiCompat$Config;

    move-result-object v0

    check-cast v0, Landroidx/emoji2/text/FontRequestEmojiCompatConfig;

    .line 97
    return-object v0
.end method
