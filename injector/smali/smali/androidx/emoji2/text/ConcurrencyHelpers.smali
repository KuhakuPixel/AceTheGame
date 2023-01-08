.class Landroidx/emoji2/text/ConcurrencyHelpers;
.super Ljava/lang/Object;
.source "ConcurrencyHelpers.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/emoji2/text/ConcurrencyHelpers$Handler28Impl;
    }
.end annotation


# static fields
.field private static final FONT_LOAD_TIMEOUT_SECONDS:I = 0xf


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static convertHandlerToExecutor(Landroid/os/Handler;)Ljava/util/concurrent/Executor;
    .locals 1
    .param p0, "handler"    # Landroid/os/Handler;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 94
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Landroidx/emoji2/text/ConcurrencyHelpers$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Landroidx/emoji2/text/ConcurrencyHelpers$$ExternalSyntheticLambda1;-><init>(Landroid/os/Handler;)V

    return-object v0
.end method

.method static createBackgroundPriorityExecutor(Ljava/lang/String;)Ljava/util/concurrent/ThreadPoolExecutor;
    .locals 9
    .param p0, "name"    # Ljava/lang/String;

    .line 56
    new-instance v7, Landroidx/emoji2/text/ConcurrencyHelpers$$ExternalSyntheticLambda0;

    invoke-direct {v7, p0}, Landroidx/emoji2/text/ConcurrencyHelpers$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;)V

    .line 61
    .local v7, "threadFactory":Ljava/util/concurrent/ThreadFactory;
    new-instance v8, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v6, Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-direct {v6}, Ljava/util/concurrent/LinkedBlockingDeque;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    const-wide/16 v3, 0xf

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    .line 69
    .local v0, "executor":Ljava/util/concurrent/ThreadPoolExecutor;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->allowCoreThreadTimeOut(Z)V

    .line 70
    return-object v0
.end method

.method static synthetic lambda$createBackgroundPriorityExecutor$0(Ljava/lang/String;Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 2
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "runnable"    # Ljava/lang/Runnable;

    .line 57
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p1, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 58
    .local v0, "t":Ljava/lang/Thread;
    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setPriority(I)V

    .line 59
    return-object v0
.end method

.method static mainHandlerAsync()Landroid/os/Handler;
    .locals 2

    .line 77
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_0

    .line 78
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {v0}, Landroidx/emoji2/text/ConcurrencyHelpers$Handler28Impl;->createAsync(Landroid/os/Looper;)Landroid/os/Handler;

    move-result-object v0

    return-object v0

    .line 80
    :cond_0
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-object v0
.end method
