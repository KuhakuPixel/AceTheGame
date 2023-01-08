.class Landroidx/core/os/CancellationSignal$Api16Impl;
.super Ljava/lang/Object;
.source "CancellationSignal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/os/CancellationSignal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Api16Impl"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 176
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 178
    return-void
.end method

.method static cancel(Ljava/lang/Object;)V
    .locals 1
    .param p0, "cancellationSignal"    # Ljava/lang/Object;

    .line 182
    move-object v0, p0

    check-cast v0, Landroid/os/CancellationSignal;

    invoke-virtual {v0}, Landroid/os/CancellationSignal;->cancel()V

    .line 183
    return-void
.end method

.method static createCancellationSignal()Landroid/os/CancellationSignal;
    .locals 1

    .line 187
    new-instance v0, Landroid/os/CancellationSignal;

    invoke-direct {v0}, Landroid/os/CancellationSignal;-><init>()V

    return-object v0
.end method
