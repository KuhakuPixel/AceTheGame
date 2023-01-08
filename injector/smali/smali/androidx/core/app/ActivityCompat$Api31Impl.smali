.class Landroidx/core/app/ActivityCompat$Api31Impl;
.super Ljava/lang/Object;
.source "ActivityCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/app/ActivityCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Api31Impl"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 747
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 749
    return-void
.end method

.method static isLaunchedFromBubble(Landroid/app/Activity;)Z
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;

    .line 753
    invoke-virtual {p0}, Landroid/app/Activity;->isLaunchedFromBubble()Z

    move-result v0

    return v0
.end method
