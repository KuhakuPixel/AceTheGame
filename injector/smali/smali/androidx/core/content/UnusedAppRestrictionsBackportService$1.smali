.class Landroidx/core/content/UnusedAppRestrictionsBackportService$1;
.super Landroidx/core/app/unusedapprestrictions/IUnusedAppRestrictionsBackportService$Stub;
.source "UnusedAppRestrictionsBackportService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/content/UnusedAppRestrictionsBackportService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/core/content/UnusedAppRestrictionsBackportService;


# direct methods
.method constructor <init>(Landroidx/core/content/UnusedAppRestrictionsBackportService;)V
    .locals 0
    .param p1, "this$0"    # Landroidx/core/content/UnusedAppRestrictionsBackportService;

    .line 51
    iput-object p1, p0, Landroidx/core/content/UnusedAppRestrictionsBackportService$1;->this$0:Landroidx/core/content/UnusedAppRestrictionsBackportService;

    invoke-direct {p0}, Landroidx/core/app/unusedapprestrictions/IUnusedAppRestrictionsBackportService$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public isPermissionRevocationEnabledForApp(Landroidx/core/app/unusedapprestrictions/IUnusedAppRestrictionsBackportCallback;)V
    .locals 2
    .param p1, "callback"    # Landroidx/core/app/unusedapprestrictions/IUnusedAppRestrictionsBackportCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 55
    if-nez p1, :cond_0

    .line 56
    return-void

    .line 59
    :cond_0
    new-instance v0, Landroidx/core/content/UnusedAppRestrictionsBackportCallback;

    invoke-direct {v0, p1}, Landroidx/core/content/UnusedAppRestrictionsBackportCallback;-><init>(Landroidx/core/app/unusedapprestrictions/IUnusedAppRestrictionsBackportCallback;)V

    .line 62
    .local v0, "backportCallback":Landroidx/core/content/UnusedAppRestrictionsBackportCallback;
    iget-object v1, p0, Landroidx/core/content/UnusedAppRestrictionsBackportService$1;->this$0:Landroidx/core/content/UnusedAppRestrictionsBackportService;

    invoke-virtual {v1, v0}, Landroidx/core/content/UnusedAppRestrictionsBackportService;->isPermissionRevocationEnabled(Landroidx/core/content/UnusedAppRestrictionsBackportCallback;)V

    .line 64
    return-void
.end method
