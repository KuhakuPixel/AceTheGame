.class public Landroid/support/v4/os/ResultReceiver;
.super Ljava/lang/Object;
.source "ResultReceiver.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/os/ResultReceiver$MyResultReceiver;,
        Landroid/support/v4/os/ResultReceiver$MyRunnable;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/support/v4/os/ResultReceiver;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final mHandler:Landroid/os/Handler;

.field final mLocal:Z

.field mReceiver:Landroid/support/v4/os/IResultReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 145
    new-instance v0, Landroid/support/v4/os/ResultReceiver$1;

    invoke-direct {v0}, Landroid/support/v4/os/ResultReceiver$1;-><init>()V

    sput-object v0, Landroid/support/v4/os/ResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Handler;)V
    .locals 1
    .param p1, "handler"    # Landroid/os/Handler;

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/os/ResultReceiver;->mLocal:Z

    .line 86
    iput-object p1, p0, Landroid/support/v4/os/ResultReceiver;->mHandler:Landroid/os/Handler;

    .line 87
    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .line 139
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 140
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/os/ResultReceiver;->mLocal:Z

    .line 141
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v4/os/ResultReceiver;->mHandler:Landroid/os/Handler;

    .line 142
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/os/IResultReceiver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/support/v4/os/IResultReceiver;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/os/ResultReceiver;->mReceiver:Landroid/support/v4/os/IResultReceiver;

    .line 143
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 126
    const/4 v0, 0x0

    return v0
.end method

.method protected onReceiveResult(ILandroid/os/Bundle;)V
    .locals 0
    .param p1, "resultCode"    # I
    .param p2, "resultData"    # Landroid/os/Bundle;

    .line 122
    return-void
.end method

.method public send(ILandroid/os/Bundle;)V
    .locals 2
    .param p1, "resultCode"    # I
    .param p2, "resultData"    # Landroid/os/Bundle;

    .line 97
    iget-boolean v0, p0, Landroid/support/v4/os/ResultReceiver;->mLocal:Z

    if-eqz v0, :cond_1

    .line 98
    iget-object v0, p0, Landroid/support/v4/os/ResultReceiver;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 99
    new-instance v1, Landroid/support/v4/os/ResultReceiver$MyRunnable;

    invoke-direct {v1, p0, p1, p2}, Landroid/support/v4/os/ResultReceiver$MyRunnable;-><init>(Landroid/support/v4/os/ResultReceiver;ILandroid/os/Bundle;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 101
    :cond_0
    invoke-virtual {p0, p1, p2}, Landroid/support/v4/os/ResultReceiver;->onReceiveResult(ILandroid/os/Bundle;)V

    .line 103
    :goto_0
    return-void

    .line 106
    :cond_1
    iget-object v0, p0, Landroid/support/v4/os/ResultReceiver;->mReceiver:Landroid/support/v4/os/IResultReceiver;

    if-eqz v0, :cond_2

    .line 108
    :try_start_0
    invoke-interface {v0, p1, p2}, Landroid/support/v4/os/IResultReceiver;->send(ILandroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 110
    goto :goto_1

    .line 109
    :catch_0
    move-exception v0

    .line 112
    :cond_2
    :goto_1
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 131
    monitor-enter p0

    .line 132
    :try_start_0
    iget-object v0, p0, Landroid/support/v4/os/ResultReceiver;->mReceiver:Landroid/support/v4/os/IResultReceiver;

    if-nez v0, :cond_0

    .line 133
    new-instance v0, Landroid/support/v4/os/ResultReceiver$MyResultReceiver;

    invoke-direct {v0, p0}, Landroid/support/v4/os/ResultReceiver$MyResultReceiver;-><init>(Landroid/support/v4/os/ResultReceiver;)V

    iput-object v0, p0, Landroid/support/v4/os/ResultReceiver;->mReceiver:Landroid/support/v4/os/IResultReceiver;

    .line 135
    :cond_0
    iget-object v0, p0, Landroid/support/v4/os/ResultReceiver;->mReceiver:Landroid/support/v4/os/IResultReceiver;

    invoke-interface {v0}, Landroid/support/v4/os/IResultReceiver;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 136
    monitor-exit p0

    .line 137
    return-void

    .line 136
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
