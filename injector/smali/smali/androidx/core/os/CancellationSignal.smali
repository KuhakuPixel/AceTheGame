.class public final Landroidx/core/os/CancellationSignal;
.super Ljava/lang/Object;
.source "CancellationSignal.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/os/CancellationSignal$Api16Impl;,
        Landroidx/core/os/CancellationSignal$OnCancelListener;
    }
.end annotation


# instance fields
.field private mCancelInProgress:Z

.field private mCancellationSignalObj:Ljava/lang/Object;

.field private mIsCanceled:Z

.field private mOnCancelListener:Landroidx/core/os/CancellationSignal$OnCancelListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    return-void
.end method

.method private waitForCancelFinishedLocked()V
    .locals 1

    .line 155
    :goto_0
    iget-boolean v0, p0, Landroidx/core/os/CancellationSignal;->mCancelInProgress:Z

    if-eqz v0, :cond_0

    .line 157
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 160
    :goto_1
    goto :goto_0

    .line 158
    :catch_0
    move-exception v0

    goto :goto_1

    .line 162
    :cond_0
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 5

    .line 71
    monitor-enter p0

    .line 72
    :try_start_0
    iget-boolean v0, p0, Landroidx/core/os/CancellationSignal;->mIsCanceled:Z

    if-eqz v0, :cond_0

    .line 73
    monitor-exit p0

    return-void

    .line 75
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/core/os/CancellationSignal;->mIsCanceled:Z

    .line 76
    iput-boolean v0, p0, Landroidx/core/os/CancellationSignal;->mCancelInProgress:Z

    .line 77
    iget-object v0, p0, Landroidx/core/os/CancellationSignal;->mOnCancelListener:Landroidx/core/os/CancellationSignal$OnCancelListener;

    .line 78
    .local v0, "listener":Landroidx/core/os/CancellationSignal$OnCancelListener;
    iget-object v1, p0, Landroidx/core/os/CancellationSignal;->mCancellationSignalObj:Ljava/lang/Object;

    .line 79
    .local v1, "obj":Ljava/lang/Object;
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 82
    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 83
    :try_start_1
    invoke-interface {v0}, Landroidx/core/os/CancellationSignal$OnCancelListener;->onCancel()V

    goto :goto_0

    .line 89
    :catchall_0
    move-exception v3

    goto :goto_1

    .line 85
    :cond_1
    :goto_0
    if-eqz v1, :cond_2

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x10

    if-lt v3, v4, :cond_2

    .line 86
    invoke-static {v1}, Landroidx/core/os/CancellationSignal$Api16Impl;->cancel(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 89
    :goto_1
    monitor-enter p0

    .line 90
    :try_start_2
    iput-boolean v2, p0, Landroidx/core/os/CancellationSignal;->mCancelInProgress:Z

    .line 91
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 92
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 93
    throw v3

    .line 92
    :catchall_1
    move-exception v2

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v2

    .line 89
    :cond_2
    :goto_2
    monitor-enter p0

    .line 90
    :try_start_4
    iput-boolean v2, p0, Landroidx/core/os/CancellationSignal;->mCancelInProgress:Z

    .line 91
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 92
    monitor-exit p0

    .line 93
    nop

    .line 94
    return-void

    .line 92
    :catchall_2
    move-exception v2

    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw v2

    .line 79
    .end local v0    # "listener":Landroidx/core/os/CancellationSignal$OnCancelListener;
    .end local v1    # "obj":Ljava/lang/Object;
    :catchall_3
    move-exception v0

    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    throw v0
.end method

.method public getCancellationSignalObject()Ljava/lang/Object;
    .locals 2

    .line 140
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-ge v0, v1, :cond_0

    .line 141
    const/4 v0, 0x0

    return-object v0

    .line 143
    :cond_0
    monitor-enter p0

    .line 144
    :try_start_0
    iget-object v0, p0, Landroidx/core/os/CancellationSignal;->mCancellationSignalObj:Ljava/lang/Object;

    if-nez v0, :cond_1

    .line 145
    invoke-static {}, Landroidx/core/os/CancellationSignal$Api16Impl;->createCancellationSignal()Landroid/os/CancellationSignal;

    move-result-object v0

    iput-object v0, p0, Landroidx/core/os/CancellationSignal;->mCancellationSignalObj:Ljava/lang/Object;

    .line 146
    iget-boolean v1, p0, Landroidx/core/os/CancellationSignal;->mIsCanceled:Z

    if-eqz v1, :cond_1

    .line 147
    invoke-static {v0}, Landroidx/core/os/CancellationSignal$Api16Impl;->cancel(Ljava/lang/Object;)V

    .line 150
    :cond_1
    iget-object v0, p0, Landroidx/core/os/CancellationSignal;->mCancellationSignalObj:Ljava/lang/Object;

    monitor-exit p0

    return-object v0

    .line 151
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public isCanceled()Z
    .locals 1

    .line 48
    monitor-enter p0

    .line 49
    :try_start_0
    iget-boolean v0, p0, Landroidx/core/os/CancellationSignal;->mIsCanceled:Z

    monitor-exit p0

    return v0

    .line 50
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setOnCancelListener(Landroidx/core/os/CancellationSignal$OnCancelListener;)V
    .locals 1
    .param p1, "listener"    # Landroidx/core/os/CancellationSignal$OnCancelListener;

    .line 113
    monitor-enter p0

    .line 114
    :try_start_0
    invoke-direct {p0}, Landroidx/core/os/CancellationSignal;->waitForCancelFinishedLocked()V

    .line 116
    iget-object v0, p0, Landroidx/core/os/CancellationSignal;->mOnCancelListener:Landroidx/core/os/CancellationSignal$OnCancelListener;

    if-ne v0, p1, :cond_0

    .line 117
    monitor-exit p0

    return-void

    .line 119
    :cond_0
    iput-object p1, p0, Landroidx/core/os/CancellationSignal;->mOnCancelListener:Landroidx/core/os/CancellationSignal$OnCancelListener;

    .line 120
    iget-boolean v0, p0, Landroidx/core/os/CancellationSignal;->mIsCanceled:Z

    if-eqz v0, :cond_2

    if-nez p1, :cond_1

    goto :goto_0

    .line 123
    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 124
    invoke-interface {p1}, Landroidx/core/os/CancellationSignal$OnCancelListener;->onCancel()V

    .line 125
    return-void

    .line 121
    :cond_2
    :goto_0
    :try_start_1
    monitor-exit p0

    return-void

    .line 123
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public throwIfCanceled()V
    .locals 1

    .line 59
    invoke-virtual {p0}, Landroidx/core/os/CancellationSignal;->isCanceled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 62
    return-void

    .line 60
    :cond_0
    new-instance v0, Landroidx/core/os/OperationCanceledException;

    invoke-direct {v0}, Landroidx/core/os/OperationCanceledException;-><init>()V

    throw v0
.end method
