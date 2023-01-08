.class Landroidx/core/app/AppOpsManagerCompat$Api23Impl;
.super Ljava/lang/Object;
.source "AppOpsManagerCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/app/AppOpsManagerCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Api23Impl"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 260
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 262
    return-void
.end method

.method static getSystemService(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/content/Context;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 271
    .local p1, "serviceClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-virtual {p0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static noteProxyOp(Landroid/app/AppOpsManager;Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p0, "appOpsManager"    # Landroid/app/AppOpsManager;
    .param p1, "op"    # Ljava/lang/String;
    .param p2, "proxiedPackageName"    # Ljava/lang/String;

    .line 276
    invoke-virtual {p0, p1, p2}, Landroid/app/AppOpsManager;->noteProxyOp(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static noteProxyOpNoThrow(Landroid/app/AppOpsManager;Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p0, "appOpsManager"    # Landroid/app/AppOpsManager;
    .param p1, "op"    # Ljava/lang/String;
    .param p2, "proxiedPackageName"    # Ljava/lang/String;

    .line 282
    invoke-virtual {p0, p1, p2}, Landroid/app/AppOpsManager;->noteProxyOpNoThrow(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static permissionToOp(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "permission"    # Ljava/lang/String;

    .line 266
    invoke-static {p0}, Landroid/app/AppOpsManager;->permissionToOp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
