.class Landroidx/core/os/EnvironmentCompat$Api21Impl;
.super Ljava/lang/Object;
.source "EnvironmentCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/os/EnvironmentCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Api21Impl"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    return-void
.end method

.method static getExternalStorageState(Ljava/io/File;)Ljava/lang/String;
    .locals 1
    .param p0, "path"    # Ljava/io/File;

    .line 94
    invoke-static {p0}, Landroid/os/Environment;->getExternalStorageState(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
