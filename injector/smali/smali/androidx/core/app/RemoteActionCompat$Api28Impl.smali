.class Landroidx/core/app/RemoteActionCompat$Api28Impl;
.super Ljava/lang/Object;
.source "RemoteActionCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/app/RemoteActionCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Api28Impl"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 216
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 218
    return-void
.end method

.method static setShouldShowIcon(Landroid/app/RemoteAction;Z)V
    .locals 0
    .param p0, "remoteAction"    # Landroid/app/RemoteAction;
    .param p1, "shouldShowIcon"    # Z

    .line 227
    invoke-virtual {p0, p1}, Landroid/app/RemoteAction;->setShouldShowIcon(Z)V

    .line 228
    return-void
.end method

.method static shouldShowIcon(Landroid/app/RemoteAction;)Z
    .locals 1
    .param p0, "remoteAction"    # Landroid/app/RemoteAction;

    .line 222
    invoke-virtual {p0}, Landroid/app/RemoteAction;->shouldShowIcon()Z

    move-result v0

    return v0
.end method
