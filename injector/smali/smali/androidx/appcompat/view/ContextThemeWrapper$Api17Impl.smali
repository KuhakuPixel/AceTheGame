.class Landroidx/appcompat/view/ContextThemeWrapper$Api17Impl;
.super Ljava/lang/Object;
.source "ContextThemeWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/view/ContextThemeWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Api17Impl"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 239
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 241
    return-void
.end method

.method static createConfigurationContext(Landroidx/appcompat/view/ContextThemeWrapper;Landroid/content/res/Configuration;)Landroid/content/Context;
    .locals 1
    .param p0, "contextThemeWrapper"    # Landroidx/appcompat/view/ContextThemeWrapper;
    .param p1, "overrideConfiguration"    # Landroid/content/res/Configuration;

    .line 246
    invoke-virtual {p0, p1}, Landroidx/appcompat/view/ContextThemeWrapper;->createConfigurationContext(Landroid/content/res/Configuration;)Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method
