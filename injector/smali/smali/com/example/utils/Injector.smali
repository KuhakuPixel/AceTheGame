.class public Lcom/example/utils/Injector;
.super Ljava/lang/Object;
.source "Injector.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static Init()V
    .locals 2

    .line 7
    const-string v0, "AceTheGame"

    const-string v1, "Code Is injected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    return-void
.end method
