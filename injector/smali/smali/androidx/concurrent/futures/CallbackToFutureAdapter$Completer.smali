.class public final Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;
.super Ljava/lang/Object;
.source "CallbackToFutureAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/concurrent/futures/CallbackToFutureAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Completer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private attemptedSetting:Z

.field private cancellationFuture:Landroidx/concurrent/futures/ResolvableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/concurrent/futures/ResolvableFuture<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field future:Landroidx/concurrent/futures/CallbackToFutureAdapter$SafeFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/concurrent/futures/CallbackToFutureAdapter$SafeFuture<",
            "TT;>;"
        }
    .end annotation
.end field

.field tag:Ljava/lang/Object;


# direct methods
.method constructor <init>()V
    .locals 1

    .line 234
    .local p0, "this":Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;, "Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 225
    invoke-static {}, Landroidx/concurrent/futures/ResolvableFuture;->create()Landroidx/concurrent/futures/ResolvableFuture;

    move-result-object v0

    iput-object v0, p0, Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;->cancellationFuture:Landroidx/concurrent/futures/ResolvableFuture;

    .line 235
    return-void
.end method

.method private setCompletedNormally()V
    .locals 1

    .line 322
    .local p0, "this":Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;, "Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer<TT;>;"
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;->tag:Ljava/lang/Object;

    .line 323
    iput-object v0, p0, Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;->future:Landroidx/concurrent/futures/CallbackToFutureAdapter$SafeFuture;

    .line 324
    iput-object v0, p0, Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;->cancellationFuture:Landroidx/concurrent/futures/ResolvableFuture;

    .line 325
    return-void
.end method


# virtual methods
.method public addCancellationListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V
    .locals 1
    .param p1, "runnable"    # Ljava/lang/Runnable;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;

    .line 306
    .local p0, "this":Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;, "Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer<TT;>;"
    iget-object v0, p0, Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;->cancellationFuture:Landroidx/concurrent/futures/ResolvableFuture;

    .line 307
    .local v0, "localCancellationFuture":Lcom/google/common/util/concurrent/ListenableFuture;, "Lcom/google/common/util/concurrent/ListenableFuture<*>;"
    if-eqz v0, :cond_0

    .line 308
    invoke-interface {v0, p1, p2}, Lcom/google/common/util/concurrent/ListenableFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 310
    :cond_0
    return-void
.end method

.method protected finalize()V
    .locals 4

    .line 332
    .local p0, "this":Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;, "Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer<TT;>;"
    iget-object v0, p0, Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;->future:Landroidx/concurrent/futures/CallbackToFutureAdapter$SafeFuture;

    .line 336
    .local v0, "localFuture":Landroidx/concurrent/futures/CallbackToFutureAdapter$SafeFuture;, "Landroidx/concurrent/futures/CallbackToFutureAdapter$SafeFuture<TT;>;"
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/concurrent/futures/CallbackToFutureAdapter$SafeFuture;->isDone()Z

    move-result v1

    if-nez v1, :cond_0

    .line 337
    new-instance v1, Landroidx/concurrent/futures/CallbackToFutureAdapter$FutureGarbageCollectedException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The completer object was garbage collected - this future would otherwise never complete. The tag was: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;->tag:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroidx/concurrent/futures/CallbackToFutureAdapter$FutureGarbageCollectedException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroidx/concurrent/futures/CallbackToFutureAdapter$SafeFuture;->setException(Ljava/lang/Throwable;)Z

    .line 344
    :cond_0
    iget-boolean v1, p0, Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;->attemptedSetting:Z

    if-nez v1, :cond_1

    .line 345
    iget-object v1, p0, Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;->cancellationFuture:Landroidx/concurrent/futures/ResolvableFuture;

    .line 346
    .local v1, "localCancellationFuture":Landroidx/concurrent/futures/ResolvableFuture;, "Landroidx/concurrent/futures/ResolvableFuture<Ljava/lang/Void;>;"
    if-eqz v1, :cond_1

    .line 349
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroidx/concurrent/futures/ResolvableFuture;->set(Ljava/lang/Object;)Z

    .line 352
    .end local v1    # "localCancellationFuture":Landroidx/concurrent/futures/ResolvableFuture;, "Landroidx/concurrent/futures/ResolvableFuture<Ljava/lang/Void;>;"
    :cond_1
    return-void
.end method

.method fireCancellationListeners()V
    .locals 2

    .line 313
    .local p0, "this":Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;, "Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer<TT;>;"
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;->tag:Ljava/lang/Object;

    .line 314
    iput-object v0, p0, Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;->future:Landroidx/concurrent/futures/CallbackToFutureAdapter$SafeFuture;

    .line 315
    iget-object v1, p0, Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;->cancellationFuture:Landroidx/concurrent/futures/ResolvableFuture;

    invoke-virtual {v1, v0}, Landroidx/concurrent/futures/ResolvableFuture;->set(Ljava/lang/Object;)Z

    .line 316
    return-void
.end method

.method public set(Ljava/lang/Object;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .line 247
    .local p0, "this":Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;, "Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer<TT;>;"
    .local p1, "value":Ljava/lang/Object;, "TT;"
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;->attemptedSetting:Z

    .line 248
    iget-object v1, p0, Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;->future:Landroidx/concurrent/futures/CallbackToFutureAdapter$SafeFuture;

    .line 249
    .local v1, "localFuture":Landroidx/concurrent/futures/CallbackToFutureAdapter$SafeFuture;, "Landroidx/concurrent/futures/CallbackToFutureAdapter$SafeFuture<TT;>;"
    if-eqz v1, :cond_0

    invoke-virtual {v1, p1}, Landroidx/concurrent/futures/CallbackToFutureAdapter$SafeFuture;->set(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 250
    .local v0, "wasSet":Z
    :goto_0
    if-eqz v0, :cond_1

    .line 251
    invoke-direct {p0}, Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;->setCompletedNormally()V

    .line 253
    :cond_1
    return v0
.end method

.method public setCancelled()Z
    .locals 3

    .line 285
    .local p0, "this":Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;, "Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer<TT;>;"
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;->attemptedSetting:Z

    .line 286
    iget-object v1, p0, Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;->future:Landroidx/concurrent/futures/CallbackToFutureAdapter$SafeFuture;

    .line 287
    .local v1, "localFuture":Landroidx/concurrent/futures/CallbackToFutureAdapter$SafeFuture;, "Landroidx/concurrent/futures/CallbackToFutureAdapter$SafeFuture<TT;>;"
    if-eqz v1, :cond_0

    invoke-virtual {v1, v0}, Landroidx/concurrent/futures/CallbackToFutureAdapter$SafeFuture;->cancelWithoutNotifyingCompleter(Z)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 289
    .local v0, "wasSet":Z
    :goto_0
    if-eqz v0, :cond_1

    .line 290
    invoke-direct {p0}, Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;->setCompletedNormally()V

    .line 292
    :cond_1
    return v0
.end method

.method public setException(Ljava/lang/Throwable;)Z
    .locals 3
    .param p1, "t"    # Ljava/lang/Throwable;

    .line 267
    .local p0, "this":Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;, "Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer<TT;>;"
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;->attemptedSetting:Z

    .line 268
    iget-object v1, p0, Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;->future:Landroidx/concurrent/futures/CallbackToFutureAdapter$SafeFuture;

    .line 269
    .local v1, "localFuture":Landroidx/concurrent/futures/CallbackToFutureAdapter$SafeFuture;, "Landroidx/concurrent/futures/CallbackToFutureAdapter$SafeFuture<TT;>;"
    if-eqz v1, :cond_0

    invoke-virtual {v1, p1}, Landroidx/concurrent/futures/CallbackToFutureAdapter$SafeFuture;->setException(Ljava/lang/Throwable;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 270
    .local v0, "wasSet":Z
    :goto_0
    if-eqz v0, :cond_1

    .line 271
    invoke-direct {p0}, Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;->setCompletedNormally()V

    .line 273
    :cond_1
    return v0
.end method
