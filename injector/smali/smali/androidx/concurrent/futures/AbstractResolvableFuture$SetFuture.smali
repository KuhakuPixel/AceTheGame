.class final Landroidx/concurrent/futures/AbstractResolvableFuture$SetFuture;
.super Ljava/lang/Object;
.source "AbstractResolvableFuture.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/concurrent/futures/AbstractResolvableFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SetFuture"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# instance fields
.field final future:Lcom/google/common/util/concurrent/ListenableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "+TV;>;"
        }
    .end annotation
.end field

.field final owner:Landroidx/concurrent/futures/AbstractResolvableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/concurrent/futures/AbstractResolvableFuture<",
            "TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroidx/concurrent/futures/AbstractResolvableFuture;Lcom/google/common/util/concurrent/ListenableFuture;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/concurrent/futures/AbstractResolvableFuture<",
            "TV;>;",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "+TV;>;)V"
        }
    .end annotation

    .line 267
    .local p0, "this":Landroidx/concurrent/futures/AbstractResolvableFuture$SetFuture;, "Landroidx/concurrent/futures/AbstractResolvableFuture$SetFuture<TV;>;"
    .local p1, "owner":Landroidx/concurrent/futures/AbstractResolvableFuture;, "Landroidx/concurrent/futures/AbstractResolvableFuture<TV;>;"
    .local p2, "future":Lcom/google/common/util/concurrent/ListenableFuture;, "Lcom/google/common/util/concurrent/ListenableFuture<+TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 268
    iput-object p1, p0, Landroidx/concurrent/futures/AbstractResolvableFuture$SetFuture;->owner:Landroidx/concurrent/futures/AbstractResolvableFuture;

    .line 269
    iput-object p2, p0, Landroidx/concurrent/futures/AbstractResolvableFuture$SetFuture;->future:Lcom/google/common/util/concurrent/ListenableFuture;

    .line 270
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 274
    .local p0, "this":Landroidx/concurrent/futures/AbstractResolvableFuture$SetFuture;, "Landroidx/concurrent/futures/AbstractResolvableFuture$SetFuture<TV;>;"
    iget-object v0, p0, Landroidx/concurrent/futures/AbstractResolvableFuture$SetFuture;->owner:Landroidx/concurrent/futures/AbstractResolvableFuture;

    iget-object v0, v0, Landroidx/concurrent/futures/AbstractResolvableFuture;->value:Ljava/lang/Object;

    if-eq v0, p0, :cond_0

    .line 276
    return-void

    .line 278
    :cond_0
    iget-object v0, p0, Landroidx/concurrent/futures/AbstractResolvableFuture$SetFuture;->future:Lcom/google/common/util/concurrent/ListenableFuture;

    invoke-static {v0}, Landroidx/concurrent/futures/AbstractResolvableFuture;->getFutureValue(Lcom/google/common/util/concurrent/ListenableFuture;)Ljava/lang/Object;

    move-result-object v0

    .line 279
    .local v0, "valueToSet":Ljava/lang/Object;
    sget-object v1, Landroidx/concurrent/futures/AbstractResolvableFuture;->ATOMIC_HELPER:Landroidx/concurrent/futures/AbstractResolvableFuture$AtomicHelper;

    iget-object v2, p0, Landroidx/concurrent/futures/AbstractResolvableFuture$SetFuture;->owner:Landroidx/concurrent/futures/AbstractResolvableFuture;

    invoke-virtual {v1, v2, p0, v0}, Landroidx/concurrent/futures/AbstractResolvableFuture$AtomicHelper;->casValue(Landroidx/concurrent/futures/AbstractResolvableFuture;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 280
    iget-object v1, p0, Landroidx/concurrent/futures/AbstractResolvableFuture$SetFuture;->owner:Landroidx/concurrent/futures/AbstractResolvableFuture;

    invoke-static {v1}, Landroidx/concurrent/futures/AbstractResolvableFuture;->complete(Landroidx/concurrent/futures/AbstractResolvableFuture;)V

    .line 282
    :cond_1
    return-void
.end method
