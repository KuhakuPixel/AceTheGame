.class Landroidx/appcompat/graphics/drawable/DrawableContainer;
.super Landroid/graphics/drawable/Drawable;
.source "DrawableContainer.java"

# interfaces
.implements Landroid/graphics/drawable/Drawable$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/appcompat/graphics/drawable/DrawableContainer$Api21Impl;,
        Landroidx/appcompat/graphics/drawable/DrawableContainer$BlockInvalidateCallback;,
        Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final DEFAULT_DITHER:Z = true

.field private static final TAG:Ljava/lang/String; = "DrawableContainer"


# instance fields
.field private mAlpha:I

.field private mAnimationRunnable:Ljava/lang/Runnable;

.field private mBlockInvalidateCallback:Landroidx/appcompat/graphics/drawable/DrawableContainer$BlockInvalidateCallback;

.field private mCurIndex:I

.field private mCurrDrawable:Landroid/graphics/drawable/Drawable;

.field private mDrawableContainerState:Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;

.field private mEnterAnimationEnd:J

.field private mExitAnimationEnd:J

.field private mHasAlpha:Z

.field private mHotspotBounds:Landroid/graphics/Rect;

.field private mLastDrawable:Landroid/graphics/drawable/Drawable;

.field private mMutated:Z


# direct methods
.method constructor <init>()V
    .locals 1

    .line 55
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 73
    const/16 v0, 0xff

    iput v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mAlpha:I

    .line 76
    const/4 v0, -0x1

    iput v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mCurIndex:I

    return-void
.end method

.method private initializeDrawableForDisplay(Landroid/graphics/drawable/Drawable;)V
    .locals 5
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    .line 497
    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mBlockInvalidateCallback:Landroidx/appcompat/graphics/drawable/DrawableContainer$BlockInvalidateCallback;

    if-nez v0, :cond_0

    .line 498
    new-instance v0, Landroidx/appcompat/graphics/drawable/DrawableContainer$BlockInvalidateCallback;

    invoke-direct {v0}, Landroidx/appcompat/graphics/drawable/DrawableContainer$BlockInvalidateCallback;-><init>()V

    iput-object v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mBlockInvalidateCallback:Landroidx/appcompat/graphics/drawable/DrawableContainer$BlockInvalidateCallback;

    .line 503
    :cond_0
    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mBlockInvalidateCallback:Landroidx/appcompat/graphics/drawable/DrawableContainer$BlockInvalidateCallback;

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/appcompat/graphics/drawable/DrawableContainer$BlockInvalidateCallback;->wrap(Landroid/graphics/drawable/Drawable$Callback;)Landroidx/appcompat/graphics/drawable/DrawableContainer$BlockInvalidateCallback;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 505
    :try_start_0
    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mDrawableContainerState:Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;

    iget v0, v0, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mEnterFadeDuration:I

    if-gtz v0, :cond_1

    iget-boolean v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mHasAlpha:Z

    if-eqz v0, :cond_1

    .line 506
    iget v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mAlpha:I

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 508
    :cond_1
    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mDrawableContainerState:Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;

    iget-boolean v0, v0, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mHasColorFilter:Z

    if-eqz v0, :cond_2

    .line 510
    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mDrawableContainerState:Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;

    iget-object v0, v0, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mColorFilter:Landroid/graphics/ColorFilter;

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    goto :goto_0

    .line 512
    :cond_2
    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mDrawableContainerState:Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;

    iget-boolean v0, v0, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mHasTintList:Z

    if-eqz v0, :cond_3

    .line 513
    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mDrawableContainerState:Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;

    iget-object v0, v0, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mTintList:Landroid/content/res/ColorStateList;

    invoke-static {p1, v0}, Landroidx/core/graphics/drawable/DrawableCompat;->setTintList(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    .line 515
    :cond_3
    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mDrawableContainerState:Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;

    iget-boolean v0, v0, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mHasTintMode:Z

    if-eqz v0, :cond_4

    .line 516
    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mDrawableContainerState:Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;

    iget-object v0, v0, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    invoke-static {p1, v0}, Landroidx/core/graphics/drawable/DrawableCompat;->setTintMode(Landroid/graphics/drawable/Drawable;Landroid/graphics/PorterDuff$Mode;)V

    .line 519
    :cond_4
    :goto_0
    invoke-virtual {p0}, Landroidx/appcompat/graphics/drawable/DrawableContainer;->isVisible()Z

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 520
    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mDrawableContainerState:Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;

    iget-boolean v0, v0, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mDither:Z

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setDither(Z)V

    .line 521
    invoke-virtual {p0}, Landroidx/appcompat/graphics/drawable/DrawableContainer;->getState()[I

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 522
    invoke-virtual {p0}, Landroidx/appcompat/graphics/drawable/DrawableContainer;->getLevel()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    .line 523
    invoke-virtual {p0}, Landroidx/appcompat/graphics/drawable/DrawableContainer;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 524
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_5

    .line 525
    invoke-static {p0}, Landroidx/core/graphics/drawable/DrawableCompat;->getLayoutDirection(Landroid/graphics/drawable/Drawable;)I

    move-result v0

    invoke-static {p1, v0}, Landroidx/core/graphics/drawable/DrawableCompat;->setLayoutDirection(Landroid/graphics/drawable/Drawable;I)Z

    .line 527
    :cond_5
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_6

    .line 528
    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mDrawableContainerState:Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;

    iget-boolean v0, v0, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mAutoMirrored:Z

    invoke-static {p1, v0}, Landroidx/core/graphics/drawable/DrawableCompat;->setAutoMirrored(Landroid/graphics/drawable/Drawable;Z)V

    .line 530
    :cond_6
    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mHotspotBounds:Landroid/graphics/Rect;

    .line 531
    .local v0, "hotspotBounds":Landroid/graphics/Rect;
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_7

    if-eqz v0, :cond_7

    .line 532
    iget v1, v0, Landroid/graphics/Rect;->left:I

    iget v2, v0, Landroid/graphics/Rect;->top:I

    iget v3, v0, Landroid/graphics/Rect;->right:I

    iget v4, v0, Landroid/graphics/Rect;->bottom:I

    invoke-static {p1, v1, v2, v3, v4}, Landroidx/core/graphics/drawable/DrawableCompat;->setHotspotBounds(Landroid/graphics/drawable/Drawable;IIII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 536
    .end local v0    # "hotspotBounds":Landroid/graphics/Rect;
    :cond_7
    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mBlockInvalidateCallback:Landroidx/appcompat/graphics/drawable/DrawableContainer$BlockInvalidateCallback;

    invoke-virtual {v0}, Landroidx/appcompat/graphics/drawable/DrawableContainer$BlockInvalidateCallback;->unwrap()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 537
    nop

    .line 538
    return-void

    .line 536
    :catchall_0
    move-exception v0

    iget-object v1, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mBlockInvalidateCallback:Landroidx/appcompat/graphics/drawable/DrawableContainer$BlockInvalidateCallback;

    invoke-virtual {v1}, Landroidx/appcompat/graphics/drawable/DrawableContainer$BlockInvalidateCallback;->unwrap()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 537
    throw v0
.end method

.method private needsMirroring()Z
    .locals 2

    .line 103
    invoke-virtual {p0}, Landroidx/appcompat/graphics/drawable/DrawableContainer;->isAutoMirrored()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 104
    invoke-static {p0}, Landroidx/core/graphics/drawable/DrawableCompat;->getLayoutDirection(Landroid/graphics/drawable/Drawable;)I

    move-result v0

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 103
    :goto_0
    return v1
.end method

.method static resolveDensity(Landroid/content/res/Resources;I)I
    .locals 2
    .param p0, "r"    # Landroid/content/res/Resources;
    .param p1, "parentDensity"    # I

    .line 1213
    if-nez p0, :cond_0

    move v0, p1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 1214
    .local v0, "densityDpi":I
    :goto_0
    if-nez v0, :cond_1

    const/16 v1, 0xa0

    goto :goto_1

    :cond_1
    move v1, v0

    :goto_1
    return v1
.end method


# virtual methods
.method animate(Z)V
    .locals 11
    .param p1, "schedule"    # Z

    .line 541
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mHasAlpha:Z

    .line 542
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 543
    .local v0, "now":J
    const/4 v2, 0x0

    .line 544
    .local v2, "animating":Z
    iget-object v3, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    const-wide/16 v4, 0xff

    const-wide/16 v6, 0x0

    if-eqz v3, :cond_1

    .line 545
    iget-wide v8, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mEnterAnimationEnd:J

    cmp-long v10, v8, v6

    if-eqz v10, :cond_2

    .line 546
    cmp-long v10, v8, v0

    if-gtz v10, :cond_0

    .line 547
    iget v8, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mAlpha:I

    invoke-virtual {v3, v8}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 548
    iput-wide v6, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mEnterAnimationEnd:J

    goto :goto_0

    .line 550
    :cond_0
    sub-long/2addr v8, v0

    mul-long v8, v8, v4

    long-to-int v3, v8

    iget-object v8, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mDrawableContainerState:Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;

    iget v8, v8, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mEnterFadeDuration:I

    div-int/2addr v3, v8

    .line 552
    .local v3, "animAlpha":I
    iget-object v8, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    rsub-int v9, v3, 0xff

    iget v10, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mAlpha:I

    mul-int v9, v9, v10

    div-int/lit16 v9, v9, 0xff

    invoke-virtual {v8, v9}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 553
    const/4 v2, 0x1

    .line 554
    .end local v3    # "animAlpha":I
    goto :goto_0

    .line 557
    :cond_1
    iput-wide v6, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mEnterAnimationEnd:J

    .line 559
    :cond_2
    :goto_0
    iget-object v3, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mLastDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_4

    .line 560
    iget-wide v8, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mExitAnimationEnd:J

    cmp-long v10, v8, v6

    if-eqz v10, :cond_5

    .line 561
    cmp-long v10, v8, v0

    if-gtz v10, :cond_3

    .line 562
    const/4 v4, 0x0

    invoke-virtual {v3, v4, v4}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 563
    const/4 v3, 0x0

    iput-object v3, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mLastDrawable:Landroid/graphics/drawable/Drawable;

    .line 564
    iput-wide v6, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mExitAnimationEnd:J

    goto :goto_1

    .line 566
    :cond_3
    sub-long/2addr v8, v0

    mul-long v8, v8, v4

    long-to-int v3, v8

    iget-object v4, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mDrawableContainerState:Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;

    iget v4, v4, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mExitFadeDuration:I

    div-int/2addr v3, v4

    .line 568
    .restart local v3    # "animAlpha":I
    iget-object v4, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mLastDrawable:Landroid/graphics/drawable/Drawable;

    iget v5, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mAlpha:I

    mul-int v5, v5, v3

    div-int/lit16 v5, v5, 0xff

    invoke-virtual {v4, v5}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 569
    const/4 v2, 0x1

    .line 570
    .end local v3    # "animAlpha":I
    goto :goto_1

    .line 573
    :cond_4
    iput-wide v6, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mExitAnimationEnd:J

    .line 575
    :cond_5
    :goto_1
    if-eqz p1, :cond_6

    if-eqz v2, :cond_6

    .line 576
    iget-object v3, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mAnimationRunnable:Ljava/lang/Runnable;

    const-wide/16 v4, 0x10

    add-long/2addr v4, v0

    invoke-virtual {p0, v3, v4, v5}, Landroidx/appcompat/graphics/drawable/DrawableContainer;->scheduleSelf(Ljava/lang/Runnable;J)V

    .line 578
    :cond_6
    return-void
.end method

.method public applyTheme(Landroid/content/res/Resources$Theme;)V
    .locals 1
    .param p1, "theme"    # Landroid/content/res/Resources$Theme;

    .line 600
    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mDrawableContainerState:Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;

    invoke-virtual {v0, p1}, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->applyTheme(Landroid/content/res/Resources$Theme;)V

    .line 601
    return-void
.end method

.method public canApplyTheme()Z
    .locals 1

    .line 606
    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mDrawableContainerState:Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;

    invoke-virtual {v0}, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->canApplyTheme()Z

    move-result v0

    return v0
.end method

.method clearMutated()V
    .locals 1

    .line 640
    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mDrawableContainerState:Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;

    invoke-virtual {v0}, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->clearMutated()V

    .line 641
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mMutated:Z

    .line 642
    return-void
.end method

.method cloneConstantState()Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;
    .locals 1

    .line 636
    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mDrawableContainerState:Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;

    return-object v0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 88
    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 89
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 91
    :cond_0
    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mLastDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 92
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 94
    :cond_1
    return-void
.end method

.method public getAlpha()I
    .locals 1

    .line 154
    iget v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mAlpha:I

    return v0
.end method

.method public getChangingConfigurations()I
    .locals 2

    .line 98
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->getChangingConfigurations()I

    move-result v0

    iget-object v1, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mDrawableContainerState:Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;

    .line 99
    invoke-virtual {v1}, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->getChangingConfigurations()I

    move-result v1

    or-int/2addr v0, v1

    .line 98
    return v0
.end method

.method public final getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;
    .locals 2

    .line 611
    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mDrawableContainerState:Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;

    invoke-virtual {v0}, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->canConstantState()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 612
    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mDrawableContainerState:Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;

    invoke-virtual {p0}, Landroidx/appcompat/graphics/drawable/DrawableContainer;->getChangingConfigurations()I

    move-result v1

    iput v1, v0, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mChangingConfigurations:I

    .line 613
    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mDrawableContainerState:Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;

    return-object v0

    .line 615
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCurrent()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 583
    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method getCurrentIndex()I
    .locals 1

    .line 421
    iget v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mCurIndex:I

    return v0
.end method

.method public getHotspotBounds(Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "outRect"    # Landroid/graphics/Rect;

    .line 301
    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mHotspotBounds:Landroid/graphics/Rect;

    if-eqz v0, :cond_0

    .line 302
    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_0

    .line 304
    :cond_0
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->getHotspotBounds(Landroid/graphics/Rect;)V

    .line 306
    :goto_0
    return-void
.end method

.method public getIntrinsicHeight()I
    .locals 1

    .line 347
    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mDrawableContainerState:Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;

    invoke-virtual {v0}, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->isConstantSize()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 348
    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mDrawableContainerState:Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;

    invoke-virtual {v0}, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->getConstantHeight()I

    move-result v0

    return v0

    .line 350
    :cond_0
    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    :goto_0
    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    .line 339
    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mDrawableContainerState:Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;

    invoke-virtual {v0}, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->isConstantSize()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 340
    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mDrawableContainerState:Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;

    invoke-virtual {v0}, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->getConstantWidth()I

    move-result v0

    return v0

    .line 342
    :cond_0
    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    :goto_0
    return v0
.end method

.method public getMinimumHeight()I
    .locals 1

    .line 363
    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mDrawableContainerState:Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;

    invoke-virtual {v0}, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->isConstantSize()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 364
    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mDrawableContainerState:Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;

    invoke-virtual {v0}, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->getConstantMinimumHeight()I

    move-result v0

    return v0

    .line 366
    :cond_0
    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getMinimumWidth()I
    .locals 1

    .line 355
    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mDrawableContainerState:Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;

    invoke-virtual {v0}, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->isConstantSize()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 356
    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mDrawableContainerState:Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;

    invoke-virtual {v0}, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->getConstantMinimumWidth()I

    move-result v0

    return v0

    .line 358
    :cond_0
    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getOpacity()I
    .locals 1

    .line 411
    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isVisible()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 412
    :cond_0
    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mDrawableContainerState:Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;

    invoke-virtual {v0}, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->getOpacity()I

    move-result v0

    goto :goto_1

    .line 411
    :cond_1
    :goto_0
    const/4 v0, -0x2

    :goto_1
    return v0
.end method

.method public getOutline(Landroid/graphics/Outline;)V
    .locals 1
    .param p1, "outline"    # Landroid/graphics/Outline;

    .line 132
    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 133
    invoke-static {v0, p1}, Landroidx/appcompat/graphics/drawable/DrawableContainer$Api21Impl;->getOutline(Landroid/graphics/drawable/Drawable;Landroid/graphics/Outline;)V

    .line 135
    :cond_0
    return-void
.end method

.method public getPadding(Landroid/graphics/Rect;)Z
    .locals 4
    .param p1, "padding"    # Landroid/graphics/Rect;

    .line 109
    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mDrawableContainerState:Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;

    invoke-virtual {v0}, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->getConstantPadding()Landroid/graphics/Rect;

    move-result-object v0

    .line 111
    .local v0, "r":Landroid/graphics/Rect;
    if-eqz v0, :cond_1

    .line 112
    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 113
    iget v1, v0, Landroid/graphics/Rect;->left:I

    iget v2, v0, Landroid/graphics/Rect;->top:I

    or-int/2addr v1, v2

    iget v2, v0, Landroid/graphics/Rect;->bottom:I

    or-int/2addr v1, v2

    iget v2, v0, Landroid/graphics/Rect;->right:I

    or-int/2addr v1, v2

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .local v1, "result":Z
    :goto_0
    goto :goto_1

    .line 115
    .end local v1    # "result":Z
    :cond_1
    iget-object v1, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_2

    .line 116
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    move-result v1

    .restart local v1    # "result":Z
    goto :goto_1

    .line 118
    .end local v1    # "result":Z
    :cond_2
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    move-result v1

    .line 121
    .restart local v1    # "result":Z
    :goto_1
    invoke-direct {p0}, Landroidx/appcompat/graphics/drawable/DrawableContainer;->needsMirroring()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 122
    iget v2, p1, Landroid/graphics/Rect;->left:I

    .line 123
    .local v2, "left":I
    iget v3, p1, Landroid/graphics/Rect;->right:I

    iput v3, p1, Landroid/graphics/Rect;->left:I

    .line 124
    iput v2, p1, Landroid/graphics/Rect;->right:I

    .line 126
    .end local v2    # "left":I
    :cond_3
    return v1
.end method

.method public invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "who"    # Landroid/graphics/drawable/Drawable;

    .line 374
    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mDrawableContainerState:Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;

    if-eqz v0, :cond_0

    .line 375
    invoke-virtual {v0}, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->invalidateCache()V

    .line 377
    :cond_0
    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_1

    invoke-virtual {p0}, Landroidx/appcompat/graphics/drawable/DrawableContainer;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 378
    invoke-virtual {p0}, Landroidx/appcompat/graphics/drawable/DrawableContainer;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/graphics/drawable/Drawable$Callback;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 380
    :cond_1
    return-void
.end method

.method public isAutoMirrored()Z
    .locals 1

    .line 250
    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mDrawableContainerState:Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;

    iget-boolean v0, v0, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mAutoMirrored:Z

    return v0
.end method

.method public isStateful()Z
    .locals 1

    .line 234
    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mDrawableContainerState:Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;

    invoke-virtual {v0}, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->isStateful()Z

    move-result v0

    return v0
.end method

.method public jumpToCurrentState()V
    .locals 6

    .line 255
    const/4 v0, 0x0

    .line 256
    .local v0, "changed":Z
    iget-object v1, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mLastDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    .line 257
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    .line 258
    const/4 v1, 0x0

    iput-object v1, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mLastDrawable:Landroid/graphics/drawable/Drawable;

    .line 259
    const/4 v0, 0x1

    .line 261
    :cond_0
    iget-object v1, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1

    .line 262
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    .line 263
    iget-boolean v1, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mHasAlpha:Z

    if-eqz v1, :cond_1

    .line 264
    iget-object v1, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    iget v2, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mAlpha:I

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 267
    :cond_1
    iget-wide v1, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mExitAnimationEnd:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-eqz v5, :cond_2

    .line 268
    iput-wide v3, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mExitAnimationEnd:J

    .line 269
    const/4 v0, 0x1

    .line 271
    :cond_2
    iget-wide v1, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mEnterAnimationEnd:J

    cmp-long v5, v1, v3

    if-eqz v5, :cond_3

    .line 272
    iput-wide v3, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mEnterAnimationEnd:J

    .line 273
    const/4 v0, 0x1

    .line 275
    :cond_3
    if-eqz v0, :cond_4

    .line 276
    invoke-virtual {p0}, Landroidx/appcompat/graphics/drawable/DrawableContainer;->invalidateSelf()V

    .line 278
    :cond_4
    return-void
.end method

.method public mutate()Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 620
    iget-boolean v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mMutated:Z

    if-nez v0, :cond_0

    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-ne v0, p0, :cond_0

    .line 621
    invoke-virtual {p0}, Landroidx/appcompat/graphics/drawable/DrawableContainer;->cloneConstantState()Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;

    move-result-object v0

    .line 622
    .local v0, "clone":Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;
    invoke-virtual {v0}, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mutate()V

    .line 623
    invoke-virtual {p0, v0}, Landroidx/appcompat/graphics/drawable/DrawableContainer;->setConstantState(Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;)V

    .line 624
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mMutated:Z

    .line 626
    .end local v0    # "clone":Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;
    :cond_0
    return-object p0
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .line 224
    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mLastDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 225
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 227
    :cond_0
    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 228
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 230
    :cond_1
    return-void
.end method

.method public onLayoutDirectionChanged(I)Z
    .locals 2
    .param p1, "layoutDirection"    # I

    .line 334
    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mDrawableContainerState:Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;

    invoke-virtual {p0}, Landroidx/appcompat/graphics/drawable/DrawableContainer;->getCurrentIndex()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->setLayoutDirection(II)Z

    move-result v0

    return v0
.end method

.method protected onLevelChange(I)Z
    .locals 1
    .param p1, "level"    # I

    .line 321
    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mLastDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 322
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    move-result v0

    return v0

    .line 324
    :cond_0
    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 325
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    move-result v0

    return v0

    .line 327
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method protected onStateChange([I)Z
    .locals 1
    .param p1, "state"    # [I

    .line 310
    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mLastDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 311
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v0

    return v0

    .line 313
    :cond_0
    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 314
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v0

    return v0

    .line 316
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V
    .locals 1
    .param p1, "who"    # Landroid/graphics/drawable/Drawable;
    .param p2, "what"    # Ljava/lang/Runnable;
    .param p3, "when"    # J

    .line 384
    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Landroidx/appcompat/graphics/drawable/DrawableContainer;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 385
    invoke-virtual {p0}, Landroidx/appcompat/graphics/drawable/DrawableContainer;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    invoke-interface {v0, p0, p2, p3, p4}, Landroid/graphics/drawable/Drawable$Callback;->scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V

    .line 387
    :cond_0
    return-void
.end method

.method selectDrawable(I)Z
    .locals 9
    .param p1, "index"    # I

    .line 434
    iget v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mCurIndex:I

    const/4 v1, 0x0

    if-ne p1, v0, :cond_0

    .line 435
    return v1

    .line 437
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 443
    .local v2, "now":J
    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mDrawableContainerState:Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;

    iget v0, v0, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mExitFadeDuration:I

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    if-lez v0, :cond_3

    .line 444
    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mLastDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 445
    invoke-virtual {v0, v1, v1}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 447
    :cond_1
    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    .line 448
    iput-object v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mLastDrawable:Landroid/graphics/drawable/Drawable;

    .line 449
    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mDrawableContainerState:Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;

    iget v0, v0, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mExitFadeDuration:I

    int-to-long v0, v0

    add-long/2addr v0, v2

    iput-wide v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mExitAnimationEnd:J

    goto :goto_0

    .line 451
    :cond_2
    iput-object v4, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mLastDrawable:Landroid/graphics/drawable/Drawable;

    .line 452
    iput-wide v5, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mExitAnimationEnd:J

    goto :goto_0

    .line 454
    :cond_3
    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_4

    .line 455
    invoke-virtual {v0, v1, v1}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 457
    :cond_4
    :goto_0
    if-ltz p1, :cond_7

    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mDrawableContainerState:Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;

    iget v0, v0, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mNumChildren:I

    if-ge p1, v0, :cond_7

    .line 458
    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mDrawableContainerState:Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;

    invoke-virtual {v0, p1}, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->getChild(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 459
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    iput-object v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    .line 460
    iput p1, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mCurIndex:I

    .line 461
    if-eqz v0, :cond_6

    .line 462
    iget-object v1, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mDrawableContainerState:Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;

    iget v1, v1, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mEnterFadeDuration:I

    if-lez v1, :cond_5

    .line 463
    iget-object v1, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mDrawableContainerState:Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;

    iget v1, v1, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mEnterFadeDuration:I

    int-to-long v7, v1

    add-long/2addr v7, v2

    iput-wide v7, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mEnterAnimationEnd:J

    .line 465
    :cond_5
    invoke-direct {p0, v0}, Landroidx/appcompat/graphics/drawable/DrawableContainer;->initializeDrawableForDisplay(Landroid/graphics/drawable/Drawable;)V

    .line 467
    .end local v0    # "d":Landroid/graphics/drawable/Drawable;
    :cond_6
    goto :goto_1

    .line 468
    :cond_7
    iput-object v4, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    .line 469
    const/4 v0, -0x1

    iput v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mCurIndex:I

    .line 471
    :goto_1
    iget-wide v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mEnterAnimationEnd:J

    const/4 v4, 0x1

    cmp-long v7, v0, v5

    if-nez v7, :cond_8

    iget-wide v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mExitAnimationEnd:J

    cmp-long v7, v0, v5

    if-eqz v7, :cond_a

    .line 472
    :cond_8
    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mAnimationRunnable:Ljava/lang/Runnable;

    if-nez v0, :cond_9

    .line 473
    new-instance v0, Landroidx/appcompat/graphics/drawable/DrawableContainer$1;

    invoke-direct {v0, p0}, Landroidx/appcompat/graphics/drawable/DrawableContainer$1;-><init>(Landroidx/appcompat/graphics/drawable/DrawableContainer;)V

    iput-object v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mAnimationRunnable:Ljava/lang/Runnable;

    goto :goto_2

    .line 481
    :cond_9
    invoke-virtual {p0, v0}, Landroidx/appcompat/graphics/drawable/DrawableContainer;->unscheduleSelf(Ljava/lang/Runnable;)V

    .line 484
    :goto_2
    invoke-virtual {p0, v4}, Landroidx/appcompat/graphics/drawable/DrawableContainer;->animate(Z)V

    .line 486
    :cond_a
    invoke-virtual {p0}, Landroidx/appcompat/graphics/drawable/DrawableContainer;->invalidateSelf()V

    .line 487
    return v4
.end method

.method public setAlpha(I)V
    .locals 6
    .param p1, "alpha"    # I

    .line 139
    iget-boolean v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mHasAlpha:Z

    if-eqz v0, :cond_0

    iget v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mAlpha:I

    if-eq v0, p1, :cond_2

    .line 140
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mHasAlpha:Z

    .line 141
    iput p1, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mAlpha:I

    .line 142
    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    .line 143
    iget-wide v1, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mEnterAnimationEnd:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-nez v5, :cond_1

    .line 144
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    goto :goto_0

    .line 146
    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/appcompat/graphics/drawable/DrawableContainer;->animate(Z)V

    .line 150
    :cond_2
    :goto_0
    return-void
.end method

.method public setAutoMirrored(Z)V
    .locals 2
    .param p1, "mirrored"    # Z

    .line 239
    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mDrawableContainerState:Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;

    iget-boolean v0, v0, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mAutoMirrored:Z

    if-eq v0, p1, :cond_0

    .line 240
    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mDrawableContainerState:Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;

    iput-boolean p1, v0, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mAutoMirrored:Z

    .line 241
    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 242
    iget-object v1, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mDrawableContainerState:Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;

    iget-boolean v1, v1, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mAutoMirrored:Z

    invoke-static {v0, v1}, Landroidx/core/graphics/drawable/DrawableCompat;->setAutoMirrored(Landroid/graphics/drawable/Drawable;Z)V

    .line 246
    :cond_0
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 2
    .param p1, "colorFilter"    # Landroid/graphics/ColorFilter;

    .line 170
    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mDrawableContainerState:Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mHasColorFilter:Z

    .line 171
    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mDrawableContainerState:Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;

    iget-object v0, v0, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mColorFilter:Landroid/graphics/ColorFilter;

    if-eq v0, p1, :cond_0

    .line 172
    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mDrawableContainerState:Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;

    iput-object p1, v0, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mColorFilter:Landroid/graphics/ColorFilter;

    .line 173
    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 174
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 177
    :cond_0
    return-void
.end method

.method setConstantState(Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;)V
    .locals 1
    .param p1, "state"    # Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;

    .line 1162
    iput-object p1, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mDrawableContainerState:Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;

    .line 1164
    iget v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mCurIndex:I

    if-ltz v0, :cond_0

    .line 1165
    invoke-virtual {p1, v0}, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->getChild(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    .line 1166
    if-eqz v0, :cond_0

    .line 1167
    invoke-direct {p0, v0}, Landroidx/appcompat/graphics/drawable/DrawableContainer;->initializeDrawableForDisplay(Landroid/graphics/drawable/Drawable;)V

    .line 1172
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mLastDrawable:Landroid/graphics/drawable/Drawable;

    .line 1173
    return-void
.end method

.method setCurrentIndex(I)V
    .locals 0
    .param p1, "index"    # I

    .line 417
    invoke-virtual {p0, p1}, Landroidx/appcompat/graphics/drawable/DrawableContainer;->selectDrawable(I)Z

    .line 418
    return-void
.end method

.method public setDither(Z)V
    .locals 2
    .param p1, "dither"    # Z

    .line 160
    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mDrawableContainerState:Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;

    iget-boolean v0, v0, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mDither:Z

    if-eq v0, p1, :cond_0

    .line 161
    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mDrawableContainerState:Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;

    iput-boolean p1, v0, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mDither:Z

    .line 162
    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 163
    iget-object v1, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mDrawableContainerState:Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;

    iget-boolean v1, v1, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mDither:Z

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setDither(Z)V

    .line 166
    :cond_0
    return-void
.end method

.method public setEnterFadeDuration(I)V
    .locals 1
    .param p1, "ms"    # I

    .line 209
    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mDrawableContainerState:Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;

    iput p1, v0, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mEnterFadeDuration:I

    .line 210
    return-void
.end method

.method public setExitFadeDuration(I)V
    .locals 1
    .param p1, "ms"    # I

    .line 219
    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mDrawableContainerState:Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;

    iput p1, v0, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mExitFadeDuration:I

    .line 220
    return-void
.end method

.method public setHotspot(FF)V
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F

    .line 282
    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 283
    invoke-static {v0, p1, p2}, Landroidx/core/graphics/drawable/DrawableCompat;->setHotspot(Landroid/graphics/drawable/Drawable;FF)V

    .line 285
    :cond_0
    return-void
.end method

.method public setHotspotBounds(IIII)V
    .locals 1
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .line 289
    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mHotspotBounds:Landroid/graphics/Rect;

    if-nez v0, :cond_0

    .line 290
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p1, p2, p3, p4}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mHotspotBounds:Landroid/graphics/Rect;

    goto :goto_0

    .line 292
    :cond_0
    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    .line 294
    :goto_0
    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 295
    invoke-static {v0, p1, p2, p3, p4}, Landroidx/core/graphics/drawable/DrawableCompat;->setHotspotBounds(Landroid/graphics/drawable/Drawable;IIII)V

    .line 297
    :cond_1
    return-void
.end method

.method public setTint(I)V
    .locals 1
    .param p1, "tintColor"    # I

    .line 181
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/appcompat/graphics/drawable/DrawableContainer;->setTintList(Landroid/content/res/ColorStateList;)V

    .line 182
    return-void
.end method

.method public setTintList(Landroid/content/res/ColorStateList;)V
    .locals 2
    .param p1, "tint"    # Landroid/content/res/ColorStateList;

    .line 186
    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mDrawableContainerState:Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mHasTintList:Z

    .line 187
    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mDrawableContainerState:Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;

    iget-object v0, v0, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mTintList:Landroid/content/res/ColorStateList;

    if-eq v0, p1, :cond_0

    .line 188
    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mDrawableContainerState:Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;

    iput-object p1, v0, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mTintList:Landroid/content/res/ColorStateList;

    .line 189
    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, p1}, Landroidx/core/graphics/drawable/DrawableCompat;->setTintList(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    .line 191
    :cond_0
    return-void
.end method

.method public setTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 2
    .param p1, "tintMode"    # Landroid/graphics/PorterDuff$Mode;

    .line 195
    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mDrawableContainerState:Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mHasTintMode:Z

    .line 196
    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mDrawableContainerState:Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;

    iget-object v0, v0, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    if-eq v0, p1, :cond_0

    .line 197
    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mDrawableContainerState:Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;

    iput-object p1, v0, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 198
    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, p1}, Landroidx/core/graphics/drawable/DrawableCompat;->setTintMode(Landroid/graphics/drawable/Drawable;Landroid/graphics/PorterDuff$Mode;)V

    .line 200
    :cond_0
    return-void
.end method

.method public setVisible(ZZ)Z
    .locals 2
    .param p1, "visible"    # Z
    .param p2, "restart"    # Z

    .line 398
    invoke-super {p0, p1, p2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    move-result v0

    .line 399
    .local v0, "changed":Z
    iget-object v1, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mLastDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    .line 400
    invoke-virtual {v1, p1, p2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 402
    :cond_0
    iget-object v1, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1

    .line 403
    invoke-virtual {v1, p1, p2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 405
    :cond_1
    return v0
.end method

.method public unscheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "who"    # Landroid/graphics/drawable/Drawable;
    .param p2, "what"    # Ljava/lang/Runnable;

    .line 391
    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Landroidx/appcompat/graphics/drawable/DrawableContainer;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 392
    invoke-virtual {p0}, Landroidx/appcompat/graphics/drawable/DrawableContainer;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    invoke-interface {v0, p0, p2}, Landroid/graphics/drawable/Drawable$Callback;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V

    .line 394
    :cond_0
    return-void
.end method

.method final updateDensity(Landroid/content/res/Resources;)V
    .locals 1
    .param p1, "res"    # Landroid/content/res/Resources;

    .line 594
    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mDrawableContainerState:Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;

    invoke-virtual {v0, p1}, Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->updateDensity(Landroid/content/res/Resources;)V

    .line 595
    return-void
.end method
