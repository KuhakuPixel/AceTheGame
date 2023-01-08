.class Landroidx/core/graphics/PathUtils$Api26Impl;
.super Ljava/lang/Object;
.source "PathUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/graphics/PathUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Api26Impl"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    return-void
.end method

.method static approximate(Landroid/graphics/Path;F)[F
    .locals 1
    .param p0, "path"    # Landroid/graphics/Path;
    .param p1, "acceptableError"    # F

    .line 94
    invoke-virtual {p0, p1}, Landroid/graphics/Path;->approximate(F)[F

    move-result-object v0

    return-object v0
.end method
