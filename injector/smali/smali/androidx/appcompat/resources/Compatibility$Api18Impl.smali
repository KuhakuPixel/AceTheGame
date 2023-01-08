.class public Landroidx/appcompat/resources/Compatibility$Api18Impl;
.super Ljava/lang/Object;
.source "Compatibility.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/resources/Compatibility;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Api18Impl"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    return-void
.end method

.method public static setAutoCancel(Landroid/animation/ObjectAnimator;Z)V
    .locals 0
    .param p0, "objectAnimator"    # Landroid/animation/ObjectAnimator;
    .param p1, "cancel"    # Z

    .line 83
    invoke-virtual {p0, p1}, Landroid/animation/ObjectAnimator;->setAutoCancel(Z)V

    .line 84
    return-void
.end method
