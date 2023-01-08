.class public final Landroidx/core/view/DisplayCompat$ModeCompat;
.super Ljava/lang/Object;
.source "DisplayCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/view/DisplayCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ModeCompat"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/view/DisplayCompat$ModeCompat$Api23Impl;
    }
.end annotation


# instance fields
.field private final mIsNative:Z

.field private final mMode:Landroid/view/Display$Mode;

.field private final mPhysicalSize:Landroid/graphics/Point;


# direct methods
.method constructor <init>(Landroid/graphics/Point;)V
    .locals 1
    .param p1, "physicalSize"    # Landroid/graphics/Point;

    .line 331
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 332
    const-string v0, "physicalSize == null"

    invoke-static {p1, v0}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 333
    iput-object p1, p0, Landroidx/core/view/DisplayCompat$ModeCompat;->mPhysicalSize:Landroid/graphics/Point;

    .line 334
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/core/view/DisplayCompat$ModeCompat;->mMode:Landroid/view/Display$Mode;

    .line 335
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/core/view/DisplayCompat$ModeCompat;->mIsNative:Z

    .line 336
    return-void
.end method

.method constructor <init>(Landroid/view/Display$Mode;Landroid/graphics/Point;)V
    .locals 1
    .param p1, "mode"    # Landroid/view/Display$Mode;
    .param p2, "physicalSize"    # Landroid/graphics/Point;

    .line 362
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 363
    const-string v0, "mode == null, can\'t wrap a null reference"

    invoke-static {p1, v0}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 364
    const-string v0, "physicalSize == null"

    invoke-static {p2, v0}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 365
    iput-object p2, p0, Landroidx/core/view/DisplayCompat$ModeCompat;->mPhysicalSize:Landroid/graphics/Point;

    .line 366
    iput-object p1, p0, Landroidx/core/view/DisplayCompat$ModeCompat;->mMode:Landroid/view/Display$Mode;

    .line 367
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/core/view/DisplayCompat$ModeCompat;->mIsNative:Z

    .line 368
    return-void
.end method

.method constructor <init>(Landroid/view/Display$Mode;Z)V
    .locals 3
    .param p1, "mode"    # Landroid/view/Display$Mode;
    .param p2, "isNative"    # Z

    .line 344
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 345
    const-string v0, "mode == null, can\'t wrap a null reference"

    invoke-static {p1, v0}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 347
    new-instance v0, Landroid/graphics/Point;

    invoke-static {p1}, Landroidx/core/view/DisplayCompat$ModeCompat$Api23Impl;->getPhysicalWidth(Landroid/view/Display$Mode;)I

    move-result v1

    .line 348
    invoke-static {p1}, Landroidx/core/view/DisplayCompat$ModeCompat$Api23Impl;->getPhysicalHeight(Landroid/view/Display$Mode;)I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/graphics/Point;-><init>(II)V

    iput-object v0, p0, Landroidx/core/view/DisplayCompat$ModeCompat;->mPhysicalSize:Landroid/graphics/Point;

    .line 349
    iput-object p1, p0, Landroidx/core/view/DisplayCompat$ModeCompat;->mMode:Landroid/view/Display$Mode;

    .line 350
    iput-boolean p2, p0, Landroidx/core/view/DisplayCompat$ModeCompat;->mIsNative:Z

    .line 351
    return-void
.end method


# virtual methods
.method public getPhysicalHeight()I
    .locals 1

    .line 381
    iget-object v0, p0, Landroidx/core/view/DisplayCompat$ModeCompat;->mPhysicalSize:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    return v0
.end method

.method public getPhysicalWidth()I
    .locals 1

    .line 374
    iget-object v0, p0, Landroidx/core/view/DisplayCompat$ModeCompat;->mPhysicalSize:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    return v0
.end method

.method public isNative()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 395
    iget-boolean v0, p0, Landroidx/core/view/DisplayCompat$ModeCompat;->mIsNative:Z

    return v0
.end method

.method public toMode()Landroid/view/Display$Mode;
    .locals 1

    .line 404
    iget-object v0, p0, Landroidx/core/view/DisplayCompat$ModeCompat;->mMode:Landroid/view/Display$Mode;

    return-object v0
.end method
