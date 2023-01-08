.class Landroidx/core/content/UnusedAppRestrictionsBackportServiceConnection;
.super Ljava/lang/Object;
.source "UnusedAppRestrictionsBackportServiceConnection.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mHasBoundService:Z

.field mResultFuture:Landroidx/concurrent/futures/ResolvableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/concurrent/futures/ResolvableFuture<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field mUnusedAppRestrictionsService:Landroidx/core/app/unusedapprestrictions/IUnusedAppRestrictionsBackportService;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/core/content/UnusedAppRestrictionsBackportServiceConnection;->mUnusedAppRestrictionsService:Landroidx/core/app/unusedapprestrictions/IUnusedAppRestrictionsBackportService;

    .line 74
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/core/content/UnusedAppRestrictionsBackportServiceConnection;->mHasBoundService:Z

    .line 77
    iput-object p1, p0, Landroidx/core/content/UnusedAppRestrictionsBackportServiceConnection;->mContext:Landroid/content/Context;

    .line 78
    return-void
.end method

.method private getBackportCallback()Landroidx/core/app/unusedapprestrictions/IUnusedAppRestrictionsBackportCallback;
    .locals 1

    .line 122
    new-instance v0, Landroidx/core/content/UnusedAppRestrictionsBackportServiceConnection$1;

    invoke-direct {v0, p0}, Landroidx/core/content/UnusedAppRestrictionsBackportServiceConnection$1;-><init>(Landroidx/core/content/UnusedAppRestrictionsBackportServiceConnection;)V

    return-object v0
.end method


# virtual methods
.method public connectAndFetchResult(Landroidx/concurrent/futures/ResolvableFuture;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/concurrent/futures/ResolvableFuture<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 100
    .local p1, "resultFuture":Landroidx/concurrent/futures/ResolvableFuture;, "Landroidx/concurrent/futures/ResolvableFuture<Ljava/lang/Integer;>;"
    iget-boolean v0, p0, Landroidx/core/content/UnusedAppRestrictionsBackportServiceConnection;->mHasBoundService:Z

    if-nez v0, :cond_0

    .line 104
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/core/content/UnusedAppRestrictionsBackportServiceConnection;->mHasBoundService:Z

    .line 105
    iput-object p1, p0, Landroidx/core/content/UnusedAppRestrictionsBackportServiceConnection;->mResultFuture:Landroidx/concurrent/futures/ResolvableFuture;

    .line 107
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.support.unusedapprestrictions.action.CustomUnusedAppRestrictionsBackportService"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Landroidx/core/content/UnusedAppRestrictionsBackportServiceConnection;->mContext:Landroid/content/Context;

    .line 109
    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 108
    invoke-static {v2}, Landroidx/core/content/PackageManagerCompat;->getPermissionRevocationVerifierApp(Landroid/content/pm/PackageManager;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 110
    .local v1, "intent":Landroid/content/Intent;
    iget-object v2, p0, Landroidx/core/content/UnusedAppRestrictionsBackportServiceConnection;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1, p0, v0}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 111
    return-void

    .line 101
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Each UnusedAppRestrictionsBackportServiceConnection can only be bound once."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public disconnectFromService()V
    .locals 2

    .line 114
    iget-boolean v0, p0, Landroidx/core/content/UnusedAppRestrictionsBackportServiceConnection;->mHasBoundService:Z

    if-eqz v0, :cond_0

    .line 117
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/core/content/UnusedAppRestrictionsBackportServiceConnection;->mHasBoundService:Z

    .line 118
    iget-object v0, p0, Landroidx/core/content/UnusedAppRestrictionsBackportServiceConnection;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 119
    return-void

    .line 115
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "bindService must be called before unbind"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .line 82
    nop

    .line 83
    invoke-static {p2}, Landroidx/core/app/unusedapprestrictions/IUnusedAppRestrictionsBackportService$Stub;->asInterface(Landroid/os/IBinder;)Landroidx/core/app/unusedapprestrictions/IUnusedAppRestrictionsBackportService;

    move-result-object v0

    iput-object v0, p0, Landroidx/core/content/UnusedAppRestrictionsBackportServiceConnection;->mUnusedAppRestrictionsService:Landroidx/core/app/unusedapprestrictions/IUnusedAppRestrictionsBackportService;

    .line 86
    nop

    .line 87
    :try_start_0
    invoke-direct {p0}, Landroidx/core/content/UnusedAppRestrictionsBackportServiceConnection;->getBackportCallback()Landroidx/core/app/unusedapprestrictions/IUnusedAppRestrictionsBackportCallback;

    move-result-object v1

    .line 86
    invoke-interface {v0, v1}, Landroidx/core/app/unusedapprestrictions/IUnusedAppRestrictionsBackportService;->isPermissionRevocationEnabledForApp(Landroidx/core/app/unusedapprestrictions/IUnusedAppRestrictionsBackportCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 91
    goto :goto_0

    .line 88
    :catch_0
    move-exception v0

    .line 90
    .local v0, "e":Landroid/os/RemoteException;
    iget-object v1, p0, Landroidx/core/content/UnusedAppRestrictionsBackportServiceConnection;->mResultFuture:Landroidx/concurrent/futures/ResolvableFuture;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/concurrent/futures/ResolvableFuture;->set(Ljava/lang/Object;)Z

    .line 92
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1
    .param p1, "name"    # Landroid/content/ComponentName;

    .line 96
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/core/content/UnusedAppRestrictionsBackportServiceConnection;->mUnusedAppRestrictionsService:Landroidx/core/app/unusedapprestrictions/IUnusedAppRestrictionsBackportService;

    .line 97
    return-void
.end method
