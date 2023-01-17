.class public Lcom/example/utils/InjectorCore;
.super Ljava/lang/Object;
.source "InjectorCore.java"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 15
    const-string v0, "lib_ACE"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    return-void
.end method


# virtual methods
.method public native AceInit()Ljava/lang/String;
.end method

.method Init()V
    .locals 0

    .line 21
    invoke-virtual {p0}, Lcom/example/utils/InjectorCore;->AceInit()Ljava/lang/String;

    .line 22
    return-void
.end method
