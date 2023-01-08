.class Landroidx/core/content/pm/PermissionInfoCompat$Api28Impl;
.super Ljava/lang/Object;
.source "PermissionInfoCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/content/pm/PermissionInfoCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Api28Impl"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101
    return-void
.end method

.method static getProtection(Landroid/content/pm/PermissionInfo;)I
    .locals 1
    .param p0, "permissionInfo"    # Landroid/content/pm/PermissionInfo;

    .line 105
    invoke-virtual {p0}, Landroid/content/pm/PermissionInfo;->getProtection()I

    move-result v0

    return v0
.end method

.method static getProtectionFlags(Landroid/content/pm/PermissionInfo;)I
    .locals 1
    .param p0, "permissionInfo"    # Landroid/content/pm/PermissionInfo;

    .line 110
    invoke-virtual {p0}, Landroid/content/pm/PermissionInfo;->getProtectionFlags()I

    move-result v0

    return v0
.end method
