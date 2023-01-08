.class Landroidx/core/os/MessageCompat$Api22Impl;
.super Ljava/lang/Object;
.source "MessageCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/os/MessageCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Api22Impl"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 122
    return-void
.end method

.method static isAsynchronous(Landroid/os/Message;)Z
    .locals 1
    .param p0, "message"    # Landroid/os/Message;

    .line 126
    invoke-virtual {p0}, Landroid/os/Message;->isAsynchronous()Z

    move-result v0

    return v0
.end method

.method static setAsynchronous(Landroid/os/Message;Z)V
    .locals 0
    .param p0, "message"    # Landroid/os/Message;
    .param p1, "async"    # Z

    .line 131
    invoke-virtual {p0, p1}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 132
    return-void
.end method
