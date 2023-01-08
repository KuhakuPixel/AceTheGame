.class Landroidx/core/app/ServiceCompat$Api24Impl;
.super Ljava/lang/Object;
.source "ServiceCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/app/ServiceCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Api24Impl"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 112
    return-void
.end method

.method static stopForeground(Landroid/app/Service;I)V
    .locals 0
    .param p0, "service"    # Landroid/app/Service;
    .param p1, "flags"    # I

    .line 116
    invoke-virtual {p0, p1}, Landroid/app/Service;->stopForeground(I)V

    .line 117
    return-void
.end method
