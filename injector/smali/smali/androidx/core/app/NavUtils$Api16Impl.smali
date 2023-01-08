.class Landroidx/core/app/NavUtils$Api16Impl;
.super Ljava/lang/Object;
.source "NavUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/app/NavUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Api16Impl"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 289
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 291
    return-void
.end method

.method static getParentActivityIntent(Landroid/app/Activity;)Landroid/content/Intent;
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;

    .line 305
    invoke-virtual {p0}, Landroid/app/Activity;->getParentActivityIntent()Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method static navigateUpTo(Landroid/app/Activity;Landroid/content/Intent;)Z
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "upIntent"    # Landroid/content/Intent;

    .line 300
    invoke-virtual {p0, p1}, Landroid/app/Activity;->navigateUpTo(Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method

.method static shouldUpRecreateTask(Landroid/app/Activity;Landroid/content/Intent;)Z
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "targetIntent"    # Landroid/content/Intent;

    .line 295
    invoke-virtual {p0, p1}, Landroid/app/Activity;->shouldUpRecreateTask(Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method
