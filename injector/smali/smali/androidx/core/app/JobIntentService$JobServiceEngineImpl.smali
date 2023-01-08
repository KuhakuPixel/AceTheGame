.class final Landroidx/core/app/JobIntentService$JobServiceEngineImpl;
.super Landroid/app/job/JobServiceEngine;
.source "JobIntentService.java"

# interfaces
.implements Landroidx/core/app/JobIntentService$CompatJobEngine;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/app/JobIntentService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "JobServiceEngineImpl"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/app/JobIntentService$JobServiceEngineImpl$WrapperWorkItem;
    }
.end annotation


# static fields
.field static final DEBUG:Z = false

.field static final TAG:Ljava/lang/String; = "JobServiceEngineImpl"


# instance fields
.field final mLock:Ljava/lang/Object;

.field mParams:Landroid/app/job/JobParameters;

.field final mService:Landroidx/core/app/JobIntentService;


# direct methods
.method constructor <init>(Landroidx/core/app/JobIntentService;)V
    .locals 1
    .param p1, "service"    # Landroidx/core/app/JobIntentService;

    .line 279
    invoke-direct {p0, p1}, Landroid/app/job/JobServiceEngine;-><init>(Landroid/app/Service;)V

    .line 253
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroidx/core/app/JobIntentService$JobServiceEngineImpl;->mLock:Ljava/lang/Object;

    .line 280
    iput-object p1, p0, Landroidx/core/app/JobIntentService$JobServiceEngineImpl;->mService:Landroidx/core/app/JobIntentService;

    .line 281
    return-void
.end method


# virtual methods
.method public compatGetBinder()Landroid/os/IBinder;
    .locals 1

    .line 285
    invoke-virtual {p0}, Landroidx/core/app/JobIntentService$JobServiceEngineImpl;->getBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public dequeueWork()Landroidx/core/app/JobIntentService$GenericWorkItem;
    .locals 3

    .line 315
    iget-object v0, p0, Landroidx/core/app/JobIntentService$JobServiceEngineImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 316
    :try_start_0
    iget-object v1, p0, Landroidx/core/app/JobIntentService$JobServiceEngineImpl;->mParams:Landroid/app/job/JobParameters;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 317
    monitor-exit v0

    return-object v2

    .line 319
    :cond_0
    invoke-virtual {v1}, Landroid/app/job/JobParameters;->dequeueWork()Landroid/app/job/JobWorkItem;

    move-result-object v1

    .line 320
    .local v1, "work":Landroid/app/job/JobWorkItem;
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 321
    if-eqz v1, :cond_1

    .line 322
    invoke-virtual {v1}, Landroid/app/job/JobWorkItem;->getIntent()Landroid/content/Intent;

    move-result-object v0

    iget-object v2, p0, Landroidx/core/app/JobIntentService$JobServiceEngineImpl;->mService:Landroidx/core/app/JobIntentService;

    invoke-virtual {v2}, Landroidx/core/app/JobIntentService;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setExtrasClassLoader(Ljava/lang/ClassLoader;)V

    .line 323
    new-instance v0, Landroidx/core/app/JobIntentService$JobServiceEngineImpl$WrapperWorkItem;

    invoke-direct {v0, p0, v1}, Landroidx/core/app/JobIntentService$JobServiceEngineImpl$WrapperWorkItem;-><init>(Landroidx/core/app/JobIntentService$JobServiceEngineImpl;Landroid/app/job/JobWorkItem;)V

    return-object v0

    .line 325
    :cond_1
    return-object v2

    .line 320
    .end local v1    # "work":Landroid/app/job/JobWorkItem;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public onStartJob(Landroid/app/job/JobParameters;)Z
    .locals 2
    .param p1, "params"    # Landroid/app/job/JobParameters;

    .line 291
    iput-object p1, p0, Landroidx/core/app/JobIntentService$JobServiceEngineImpl;->mParams:Landroid/app/job/JobParameters;

    .line 293
    iget-object v0, p0, Landroidx/core/app/JobIntentService$JobServiceEngineImpl;->mService:Landroidx/core/app/JobIntentService;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/core/app/JobIntentService;->ensureProcessorRunningLocked(Z)V

    .line 294
    const/4 v0, 0x1

    return v0
.end method

.method public onStopJob(Landroid/app/job/JobParameters;)Z
    .locals 3
    .param p1, "params"    # Landroid/app/job/JobParameters;

    .line 300
    iget-object v0, p0, Landroidx/core/app/JobIntentService$JobServiceEngineImpl;->mService:Landroidx/core/app/JobIntentService;

    invoke-virtual {v0}, Landroidx/core/app/JobIntentService;->doStopCurrentWork()Z

    move-result v0

    .line 301
    .local v0, "result":Z
    iget-object v1, p0, Landroidx/core/app/JobIntentService$JobServiceEngineImpl;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 304
    const/4 v2, 0x0

    :try_start_0
    iput-object v2, p0, Landroidx/core/app/JobIntentService$JobServiceEngineImpl;->mParams:Landroid/app/job/JobParameters;

    .line 305
    monitor-exit v1

    .line 306
    return v0

    .line 305
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method
