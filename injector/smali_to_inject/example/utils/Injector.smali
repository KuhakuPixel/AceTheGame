.class public Lcom/example/utils/Injector;
.super Ljava/lang/Object;
.source "Injector.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static Init()V
    .locals 2

    .line 12
    const-string v0, "AceTheGame"

    const-string v1, "Code Is injected :D"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 14
    new-instance v0, Lcom/example/utils/InjectorCore;

    invoke-direct {v0}, Lcom/example/utils/InjectorCore;-><init>()V

    .line 15
    .local v0, "injectorCore":Lcom/example/utils/InjectorCore;
    invoke-virtual {v0}, Lcom/example/utils/InjectorCore;->Init()V

    .line 17
    return-void
.end method
