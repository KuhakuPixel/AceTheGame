.class Landroidx/core/content/IntentCompat$Api15Impl;
.super Ljava/lang/Object;
.source "IntentCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/content/IntentCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Api15Impl"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 207
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 209
    return-void
.end method

.method static makeMainSelectorActivity(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    .locals 1
    .param p0, "selectorAction"    # Ljava/lang/String;
    .param p1, "selectorCategory"    # Ljava/lang/String;

    .line 213
    invoke-static {p0, p1}, Landroid/content/Intent;->makeMainSelectorActivity(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method
