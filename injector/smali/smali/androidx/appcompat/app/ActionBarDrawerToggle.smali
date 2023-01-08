.class public Landroidx/appcompat/app/ActionBarDrawerToggle;
.super Ljava/lang/Object;
.source "ActionBarDrawerToggle.java"

# interfaces
.implements Landroidx/drawerlayout/widget/DrawerLayout$DrawerListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/appcompat/app/ActionBarDrawerToggle$ToolbarCompatDelegate;,
        Landroidx/appcompat/app/ActionBarDrawerToggle$FrameworkActionBarDelegate;,
        Landroidx/appcompat/app/ActionBarDrawerToggle$Delegate;,
        Landroidx/appcompat/app/ActionBarDrawerToggle$DelegateProvider;
    }
.end annotation


# instance fields
.field private final mActivityImpl:Landroidx/appcompat/app/ActionBarDrawerToggle$Delegate;

.field private final mCloseDrawerContentDescRes:I

.field mDrawerIndicatorEnabled:Z

.field private final mDrawerLayout:Landroidx/drawerlayout/widget/DrawerLayout;

.field private mDrawerSlideAnimationEnabled:Z

.field private mHasCustomUpIndicator:Z

.field private mHomeAsUpIndicator:Landroid/graphics/drawable/Drawable;

.field private final mOpenDrawerContentDescRes:I

.field private mSlider:Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable;

.field mToolbarNavigationClickListener:Landroid/view/View$OnClickListener;

.field private mWarnedForDisplayHomeAsUp:Z


# direct methods
.method constructor <init>(Landroid/app/Activity;Landroidx/appcompat/widget/Toolbar;Landroidx/drawerlayout/widget/DrawerLayout;Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable;II)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "toolbar"    # Landroidx/appcompat/widget/Toolbar;
    .param p3, "drawerLayout"    # Landroidx/drawerlayout/widget/DrawerLayout;
    .param p4, "slider"    # Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable;
    .param p5, "openDrawerContentDescRes"    # I
    .param p6, "closeDrawerContentDescRes"    # I

    .line 197
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 122
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/appcompat/app/ActionBarDrawerToggle;->mDrawerSlideAnimationEnabled:Z

    .line 124
    iput-boolean v0, p0, Landroidx/appcompat/app/ActionBarDrawerToggle;->mDrawerIndicatorEnabled:Z

    .line 132
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/appcompat/app/ActionBarDrawerToggle;->mWarnedForDisplayHomeAsUp:Z

    .line 198
    if-eqz p2, :cond_0

    .line 199
    new-instance v0, Landroidx/appcompat/app/ActionBarDrawerToggle$ToolbarCompatDelegate;

    invoke-direct {v0, p2}, Landroidx/appcompat/app/ActionBarDrawerToggle$ToolbarCompatDelegate;-><init>(Landroidx/appcompat/widget/Toolbar;)V

    iput-object v0, p0, Landroidx/appcompat/app/ActionBarDrawerToggle;->mActivityImpl:Landroidx/appcompat/app/ActionBarDrawerToggle$Delegate;

    .line 200
    new-instance v0, Landroidx/appcompat/app/ActionBarDrawerToggle$1;

    invoke-direct {v0, p0}, Landroidx/appcompat/app/ActionBarDrawerToggle$1;-><init>(Landroidx/appcompat/app/ActionBarDrawerToggle;)V

    invoke-virtual {p2, v0}, Landroidx/appcompat/widget/Toolbar;->setNavigationOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 210
    :cond_0
    instance-of v0, p1, Landroidx/appcompat/app/ActionBarDrawerToggle$DelegateProvider;

    if-eqz v0, :cond_1

    .line 211
    move-object v0, p1

    check-cast v0, Landroidx/appcompat/app/ActionBarDrawerToggle$DelegateProvider;

    invoke-interface {v0}, Landroidx/appcompat/app/ActionBarDrawerToggle$DelegateProvider;->getDrawerToggleDelegate()Landroidx/appcompat/app/ActionBarDrawerToggle$Delegate;

    move-result-object v0

    iput-object v0, p0, Landroidx/appcompat/app/ActionBarDrawerToggle;->mActivityImpl:Landroidx/appcompat/app/ActionBarDrawerToggle$Delegate;

    goto :goto_0

    .line 213
    :cond_1
    new-instance v0, Landroidx/appcompat/app/ActionBarDrawerToggle$FrameworkActionBarDelegate;

    invoke-direct {v0, p1}, Landroidx/appcompat/app/ActionBarDrawerToggle$FrameworkActionBarDelegate;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Landroidx/appcompat/app/ActionBarDrawerToggle;->mActivityImpl:Landroidx/appcompat/app/ActionBarDrawerToggle$Delegate;

    .line 216
    :goto_0
    iput-object p3, p0, Landroidx/appcompat/app/ActionBarDrawerToggle;->mDrawerLayout:Landroidx/drawerlayout/widget/DrawerLayout;

    .line 217
    iput p5, p0, Landroidx/appcompat/app/ActionBarDrawerToggle;->mOpenDrawerContentDescRes:I

    .line 218
    iput p6, p0, Landroidx/appcompat/app/ActionBarDrawerToggle;->mCloseDrawerContentDescRes:I

    .line 219
    if-nez p4, :cond_2

    .line 220
    new-instance v0, Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable;

    iget-object v1, p0, Landroidx/appcompat/app/ActionBarDrawerToggle;->mActivityImpl:Landroidx/appcompat/app/ActionBarDrawerToggle$Delegate;

    invoke-interface {v1}, Landroidx/appcompat/app/ActionBarDrawerToggle$Delegate;->getActionBarThemedContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroidx/appcompat/app/ActionBarDrawerToggle;->mSlider:Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable;

    goto :goto_1

    .line 222
    :cond_2
    iput-object p4, p0, Landroidx/appcompat/app/ActionBarDrawerToggle;->mSlider:Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable;

    .line 225
    :goto_1
    invoke-virtual {p0}, Landroidx/appcompat/app/ActionBarDrawerToggle;->getThemeUpIndicator()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroidx/appcompat/app/ActionBarDrawerToggle;->mHomeAsUpIndicator:Landroid/graphics/drawable/Drawable;

    .line 226
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Landroidx/drawerlayout/widget/DrawerLayout;II)V
    .locals 7
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "drawerLayout"    # Landroidx/drawerlayout/widget/DrawerLayout;
    .param p3, "openDrawerContentDescRes"    # I
    .param p4, "closeDrawerContentDescRes"    # I

    .line 155
    const/4 v2, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move v5, p3

    move v6, p4

    invoke-direct/range {v0 .. v6}, Landroidx/appcompat/app/ActionBarDrawerToggle;-><init>(Landroid/app/Activity;Landroidx/appcompat/widget/Toolbar;Landroidx/drawerlayout/widget/DrawerLayout;Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable;II)V

    .line 157
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Landroidx/drawerlayout/widget/DrawerLayout;Landroidx/appcompat/widget/Toolbar;II)V
    .locals 7
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "drawerLayout"    # Landroidx/drawerlayout/widget/DrawerLayout;
    .param p3, "toolbar"    # Landroidx/appcompat/widget/Toolbar;
    .param p4, "openDrawerContentDescRes"    # I
    .param p5, "closeDrawerContentDescRes"    # I

    .line 186
    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p3

    move-object v3, p2

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Landroidx/appcompat/app/ActionBarDrawerToggle;-><init>(Landroid/app/Activity;Landroidx/appcompat/widget/Toolbar;Landroidx/drawerlayout/widget/DrawerLayout;Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable;II)V

    .line 188
    return-void
.end method

.method private setPosition(F)V
    .locals 2
    .param p1, "position"    # F

    .line 509
    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    if-nez v0, :cond_0

    .line 510
    iget-object v0, p0, Landroidx/appcompat/app/ActionBarDrawerToggle;->mSlider:Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable;->setVerticalMirror(Z)V

    goto :goto_0

    .line 511
    :cond_0
    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-nez v0, :cond_1

    .line 512
    iget-object v0, p0, Landroidx/appcompat/app/ActionBarDrawerToggle;->mSlider:Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable;->setVerticalMirror(Z)V

    .line 514
    :cond_1
    :goto_0
    iget-object v0, p0, Landroidx/appcompat/app/ActionBarDrawerToggle;->mSlider:Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable;

    invoke-virtual {v0, p1}, Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable;->setProgress(F)V

    .line 515
    return-void
.end method


# virtual methods
.method public getDrawerArrowDrawable()Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable;
    .locals 1

    .line 373
    iget-object v0, p0, Landroidx/appcompat/app/ActionBarDrawerToggle;->mSlider:Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable;

    return-object v0
.end method

.method getThemeUpIndicator()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 505
    iget-object v0, p0, Landroidx/appcompat/app/ActionBarDrawerToggle;->mActivityImpl:Landroidx/appcompat/app/ActionBarDrawerToggle$Delegate;

    invoke-interface {v0}, Landroidx/appcompat/app/ActionBarDrawerToggle$Delegate;->getThemeUpIndicator()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getToolbarNavigationClickListener()Landroid/view/View$OnClickListener;
    .locals 1

    .line 473
    iget-object v0, p0, Landroidx/appcompat/app/ActionBarDrawerToggle;->mToolbarNavigationClickListener:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method public isDrawerIndicatorEnabled()Z
    .locals 1

    .line 342
    iget-boolean v0, p0, Landroidx/appcompat/app/ActionBarDrawerToggle;->mDrawerIndicatorEnabled:Z

    return v0
.end method

.method public isDrawerSlideAnimationEnabled()Z
    .locals 1

    .line 402
    iget-boolean v0, p0, Landroidx/appcompat/app/ActionBarDrawerToggle;->mDrawerSlideAnimationEnabled:Z

    return v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .line 260
    iget-boolean v0, p0, Landroidx/appcompat/app/ActionBarDrawerToggle;->mHasCustomUpIndicator:Z

    if-nez v0, :cond_0

    .line 261
    invoke-virtual {p0}, Landroidx/appcompat/app/ActionBarDrawerToggle;->getThemeUpIndicator()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroidx/appcompat/app/ActionBarDrawerToggle;->mHomeAsUpIndicator:Landroid/graphics/drawable/Drawable;

    .line 263
    :cond_0
    invoke-virtual {p0}, Landroidx/appcompat/app/ActionBarDrawerToggle;->syncState()V

    .line 264
    return-void
.end method

.method public onDrawerClosed(Landroid/view/View;)V
    .locals 1
    .param p1, "drawerView"    # Landroid/view/View;

    .line 446
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroidx/appcompat/app/ActionBarDrawerToggle;->setPosition(F)V

    .line 447
    iget-boolean v0, p0, Landroidx/appcompat/app/ActionBarDrawerToggle;->mDrawerIndicatorEnabled:Z

    if-eqz v0, :cond_0

    .line 448
    iget v0, p0, Landroidx/appcompat/app/ActionBarDrawerToggle;->mOpenDrawerContentDescRes:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/ActionBarDrawerToggle;->setActionBarDescription(I)V

    .line 450
    :cond_0
    return-void
.end method

.method public onDrawerOpened(Landroid/view/View;)V
    .locals 1
    .param p1, "drawerView"    # Landroid/view/View;

    .line 431
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-direct {p0, v0}, Landroidx/appcompat/app/ActionBarDrawerToggle;->setPosition(F)V

    .line 432
    iget-boolean v0, p0, Landroidx/appcompat/app/ActionBarDrawerToggle;->mDrawerIndicatorEnabled:Z

    if-eqz v0, :cond_0

    .line 433
    iget v0, p0, Landroidx/appcompat/app/ActionBarDrawerToggle;->mCloseDrawerContentDescRes:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/ActionBarDrawerToggle;->setActionBarDescription(I)V

    .line 435
    :cond_0
    return-void
.end method

.method public onDrawerSlide(Landroid/view/View;F)V
    .locals 2
    .param p1, "drawerView"    # Landroid/view/View;
    .param p2, "slideOffset"    # F

    .line 415
    iget-boolean v0, p0, Landroidx/appcompat/app/ActionBarDrawerToggle;->mDrawerSlideAnimationEnabled:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 416
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {v1, p2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    invoke-direct {p0, v0}, Landroidx/appcompat/app/ActionBarDrawerToggle;->setPosition(F)V

    goto :goto_0

    .line 418
    :cond_0
    invoke-direct {p0, v1}, Landroidx/appcompat/app/ActionBarDrawerToggle;->setPosition(F)V

    .line 420
    :goto_0
    return-void
.end method

.method public onDrawerStateChanged(I)V
    .locals 0
    .param p1, "newState"    # I

    .line 461
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .line 276
    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Landroidx/appcompat/app/ActionBarDrawerToggle;->mDrawerIndicatorEnabled:Z

    if-eqz v0, :cond_0

    .line 277
    invoke-virtual {p0}, Landroidx/appcompat/app/ActionBarDrawerToggle;->toggle()V

    .line 278
    const/4 v0, 0x1

    return v0

    .line 280
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method setActionBarDescription(I)V
    .locals 1
    .param p1, "contentDescRes"    # I

    .line 501
    iget-object v0, p0, Landroidx/appcompat/app/ActionBarDrawerToggle;->mActivityImpl:Landroidx/appcompat/app/ActionBarDrawerToggle$Delegate;

    invoke-interface {v0, p1}, Landroidx/appcompat/app/ActionBarDrawerToggle$Delegate;->setActionBarDescription(I)V

    .line 502
    return-void
.end method

.method setActionBarUpIndicator(Landroid/graphics/drawable/Drawable;I)V
    .locals 2
    .param p1, "upDrawable"    # Landroid/graphics/drawable/Drawable;
    .param p2, "contentDescRes"    # I

    .line 491
    iget-boolean v0, p0, Landroidx/appcompat/app/ActionBarDrawerToggle;->mWarnedForDisplayHomeAsUp:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/appcompat/app/ActionBarDrawerToggle;->mActivityImpl:Landroidx/appcompat/app/ActionBarDrawerToggle$Delegate;

    invoke-interface {v0}, Landroidx/appcompat/app/ActionBarDrawerToggle$Delegate;->isNavigationVisible()Z

    move-result v0

    if-nez v0, :cond_0

    .line 492
    const-string v0, "ActionBarDrawerToggle"

    const-string v1, "DrawerToggle may not show up because NavigationIcon is not visible. You may need to call actionbar.setDisplayHomeAsUpEnabled(true);"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 495
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/appcompat/app/ActionBarDrawerToggle;->mWarnedForDisplayHomeAsUp:Z

    .line 497
    :cond_0
    iget-object v0, p0, Landroidx/appcompat/app/ActionBarDrawerToggle;->mActivityImpl:Landroidx/appcompat/app/ActionBarDrawerToggle$Delegate;

    invoke-interface {v0, p1, p2}, Landroidx/appcompat/app/ActionBarDrawerToggle$Delegate;->setActionBarUpIndicator(Landroid/graphics/drawable/Drawable;I)V

    .line 498
    return-void
.end method

.method public setDrawerArrowDrawable(Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable;)V
    .locals 0
    .param p1, "drawable"    # Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable;

    .line 382
    iput-object p1, p0, Landroidx/appcompat/app/ActionBarDrawerToggle;->mSlider:Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable;

    .line 383
    invoke-virtual {p0}, Landroidx/appcompat/app/ActionBarDrawerToggle;->syncState()V

    .line 384
    return-void
.end method

.method public setDrawerIndicatorEnabled(Z)V
    .locals 3
    .param p1, "enable"    # Z

    .line 356
    iget-boolean v0, p0, Landroidx/appcompat/app/ActionBarDrawerToggle;->mDrawerIndicatorEnabled:Z

    if-eq p1, v0, :cond_2

    .line 357
    if-eqz p1, :cond_1

    .line 358
    iget-object v0, p0, Landroidx/appcompat/app/ActionBarDrawerToggle;->mSlider:Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable;

    .line 359
    iget-object v1, p0, Landroidx/appcompat/app/ActionBarDrawerToggle;->mDrawerLayout:Landroidx/drawerlayout/widget/DrawerLayout;

    const v2, 0x800003

    invoke-virtual {v1, v2}, Landroidx/drawerlayout/widget/DrawerLayout;->isDrawerOpen(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 360
    iget v1, p0, Landroidx/appcompat/app/ActionBarDrawerToggle;->mCloseDrawerContentDescRes:I

    goto :goto_0

    :cond_0
    iget v1, p0, Landroidx/appcompat/app/ActionBarDrawerToggle;->mOpenDrawerContentDescRes:I

    .line 358
    :goto_0
    invoke-virtual {p0, v0, v1}, Landroidx/appcompat/app/ActionBarDrawerToggle;->setActionBarUpIndicator(Landroid/graphics/drawable/Drawable;I)V

    goto :goto_1

    .line 362
    :cond_1
    iget-object v0, p0, Landroidx/appcompat/app/ActionBarDrawerToggle;->mHomeAsUpIndicator:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroidx/appcompat/app/ActionBarDrawerToggle;->setActionBarUpIndicator(Landroid/graphics/drawable/Drawable;I)V

    .line 364
    :goto_1
    iput-boolean p1, p0, Landroidx/appcompat/app/ActionBarDrawerToggle;->mDrawerIndicatorEnabled:Z

    .line 366
    :cond_2
    return-void
.end method

.method public setDrawerSlideAnimationEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .line 392
    iput-boolean p1, p0, Landroidx/appcompat/app/ActionBarDrawerToggle;->mDrawerSlideAnimationEnabled:Z

    .line 393
    if-nez p1, :cond_0

    .line 394
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroidx/appcompat/app/ActionBarDrawerToggle;->setPosition(F)V

    .line 396
    :cond_0
    return-void
.end method

.method public setHomeAsUpIndicator(I)V
    .locals 2
    .param p1, "resId"    # I

    .line 330
    const/4 v0, 0x0

    .line 331
    .local v0, "indicator":Landroid/graphics/drawable/Drawable;
    if-eqz p1, :cond_0

    .line 332
    iget-object v1, p0, Landroidx/appcompat/app/ActionBarDrawerToggle;->mDrawerLayout:Landroidx/drawerlayout/widget/DrawerLayout;

    invoke-virtual {v1}, Landroidx/drawerlayout/widget/DrawerLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 334
    :cond_0
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/ActionBarDrawerToggle;->setHomeAsUpIndicator(Landroid/graphics/drawable/Drawable;)V

    .line 335
    return-void
.end method

.method public setHomeAsUpIndicator(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "indicator"    # Landroid/graphics/drawable/Drawable;

    .line 305
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 306
    invoke-virtual {p0}, Landroidx/appcompat/app/ActionBarDrawerToggle;->getThemeUpIndicator()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Landroidx/appcompat/app/ActionBarDrawerToggle;->mHomeAsUpIndicator:Landroid/graphics/drawable/Drawable;

    .line 307
    iput-boolean v0, p0, Landroidx/appcompat/app/ActionBarDrawerToggle;->mHasCustomUpIndicator:Z

    goto :goto_0

    .line 309
    :cond_0
    iput-object p1, p0, Landroidx/appcompat/app/ActionBarDrawerToggle;->mHomeAsUpIndicator:Landroid/graphics/drawable/Drawable;

    .line 310
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroidx/appcompat/app/ActionBarDrawerToggle;->mHasCustomUpIndicator:Z

    .line 313
    :goto_0
    iget-boolean v1, p0, Landroidx/appcompat/app/ActionBarDrawerToggle;->mDrawerIndicatorEnabled:Z

    if-nez v1, :cond_1

    .line 314
    iget-object v1, p0, Landroidx/appcompat/app/ActionBarDrawerToggle;->mHomeAsUpIndicator:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v1, v0}, Landroidx/appcompat/app/ActionBarDrawerToggle;->setActionBarUpIndicator(Landroid/graphics/drawable/Drawable;I)V

    .line 316
    :cond_1
    return-void
.end method

.method public setToolbarNavigationClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0
    .param p1, "onToolbarNavigationClickListener"    # Landroid/view/View$OnClickListener;

    .line 487
    iput-object p1, p0, Landroidx/appcompat/app/ActionBarDrawerToggle;->mToolbarNavigationClickListener:Landroid/view/View$OnClickListener;

    .line 488
    return-void
.end method

.method public syncState()V
    .locals 3

    .line 238
    iget-object v0, p0, Landroidx/appcompat/app/ActionBarDrawerToggle;->mDrawerLayout:Landroidx/drawerlayout/widget/DrawerLayout;

    const v1, 0x800003

    invoke-virtual {v0, v1}, Landroidx/drawerlayout/widget/DrawerLayout;->isDrawerOpen(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 239
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-direct {p0, v0}, Landroidx/appcompat/app/ActionBarDrawerToggle;->setPosition(F)V

    goto :goto_0

    .line 241
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroidx/appcompat/app/ActionBarDrawerToggle;->setPosition(F)V

    .line 243
    :goto_0
    iget-boolean v0, p0, Landroidx/appcompat/app/ActionBarDrawerToggle;->mDrawerIndicatorEnabled:Z

    if-eqz v0, :cond_2

    .line 244
    iget-object v0, p0, Landroidx/appcompat/app/ActionBarDrawerToggle;->mSlider:Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable;

    .line 245
    iget-object v2, p0, Landroidx/appcompat/app/ActionBarDrawerToggle;->mDrawerLayout:Landroidx/drawerlayout/widget/DrawerLayout;

    invoke-virtual {v2, v1}, Landroidx/drawerlayout/widget/DrawerLayout;->isDrawerOpen(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 246
    iget v1, p0, Landroidx/appcompat/app/ActionBarDrawerToggle;->mCloseDrawerContentDescRes:I

    goto :goto_1

    :cond_1
    iget v1, p0, Landroidx/appcompat/app/ActionBarDrawerToggle;->mOpenDrawerContentDescRes:I

    .line 244
    :goto_1
    invoke-virtual {p0, v0, v1}, Landroidx/appcompat/app/ActionBarDrawerToggle;->setActionBarUpIndicator(Landroid/graphics/drawable/Drawable;I)V

    .line 248
    :cond_2
    return-void
.end method

.method toggle()V
    .locals 3

    .line 284
    iget-object v0, p0, Landroidx/appcompat/app/ActionBarDrawerToggle;->mDrawerLayout:Landroidx/drawerlayout/widget/DrawerLayout;

    const v1, 0x800003

    invoke-virtual {v0, v1}, Landroidx/drawerlayout/widget/DrawerLayout;->getDrawerLockMode(I)I

    move-result v0

    .line 285
    .local v0, "drawerLockMode":I
    iget-object v2, p0, Landroidx/appcompat/app/ActionBarDrawerToggle;->mDrawerLayout:Landroidx/drawerlayout/widget/DrawerLayout;

    invoke-virtual {v2, v1}, Landroidx/drawerlayout/widget/DrawerLayout;->isDrawerVisible(I)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    .line 287
    iget-object v2, p0, Landroidx/appcompat/app/ActionBarDrawerToggle;->mDrawerLayout:Landroidx/drawerlayout/widget/DrawerLayout;

    invoke-virtual {v2, v1}, Landroidx/drawerlayout/widget/DrawerLayout;->closeDrawer(I)V

    goto :goto_0

    .line 288
    :cond_0
    const/4 v2, 0x1

    if-eq v0, v2, :cond_1

    .line 289
    iget-object v2, p0, Landroidx/appcompat/app/ActionBarDrawerToggle;->mDrawerLayout:Landroidx/drawerlayout/widget/DrawerLayout;

    invoke-virtual {v2, v1}, Landroidx/drawerlayout/widget/DrawerLayout;->openDrawer(I)V

    .line 291
    :cond_1
    :goto_0
    return-void
.end method
