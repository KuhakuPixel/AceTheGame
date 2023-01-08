.class Landroidx/core/view/ViewCompat$Api15Impl;
.super Ljava/lang/Object;
.source "ViewCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/view/ViewCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Api15Impl"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 5251
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5253
    return-void
.end method

.method static hasOnClickListeners(Landroid/view/View;)Z
    .locals 1
    .param p0, "view"    # Landroid/view/View;

    .line 5257
    invoke-virtual {p0}, Landroid/view/View;->hasOnClickListeners()Z

    move-result v0

    return v0
.end method
