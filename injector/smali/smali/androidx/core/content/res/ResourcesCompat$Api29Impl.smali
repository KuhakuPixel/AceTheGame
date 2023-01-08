.class Landroidx/core/content/res/ResourcesCompat$Api29Impl;
.super Ljava/lang/Object;
.source "ResourcesCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/content/res/ResourcesCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Api29Impl"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 668
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 670
    return-void
.end method

.method static getFloat(Landroid/content/res/Resources;I)F
    .locals 1
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "id"    # I

    .line 674
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v0

    return v0
.end method
