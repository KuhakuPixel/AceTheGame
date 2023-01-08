.class public Landroidx/appcompat/widget/Toolbar;
.super Landroid/view/ViewGroup;
.source "Toolbar.java"

# interfaces
.implements Landroidx/core/view/MenuHost;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/appcompat/widget/Toolbar$ExpandedActionViewMenuPresenter;,
        Landroidx/appcompat/widget/Toolbar$SavedState;,
        Landroidx/appcompat/widget/Toolbar$LayoutParams;,
        Landroidx/appcompat/widget/Toolbar$OnMenuItemClickListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "Toolbar"


# instance fields
.field private mActionMenuPresenterCallback:Landroidx/appcompat/view/menu/MenuPresenter$Callback;

.field mButtonGravity:I

.field mCollapseButtonView:Landroid/widget/ImageButton;

.field private mCollapseDescription:Ljava/lang/CharSequence;

.field private mCollapseIcon:Landroid/graphics/drawable/Drawable;

.field private mCollapsible:Z

.field private mContentInsetEndWithActions:I

.field private mContentInsetStartWithNavigation:I

.field private mContentInsets:Landroidx/appcompat/widget/RtlSpacingHelper;

.field private mEatingHover:Z

.field private mEatingTouch:Z

.field mExpandedActionView:Landroid/view/View;

.field private mExpandedMenuPresenter:Landroidx/appcompat/widget/Toolbar$ExpandedActionViewMenuPresenter;

.field private mGravity:I

.field private final mHiddenViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mLogoView:Landroid/widget/ImageView;

.field private mMaxButtonHeight:I

.field private mMenuBuilderCallback:Landroidx/appcompat/view/menu/MenuBuilder$Callback;

.field final mMenuHostHelper:Landroidx/core/view/MenuHostHelper;

.field private mMenuView:Landroidx/appcompat/widget/ActionMenuView;

.field private final mMenuViewItemClickListener:Landroidx/appcompat/widget/ActionMenuView$OnMenuItemClickListener;

.field private mNavButtonView:Landroid/widget/ImageButton;

.field mOnMenuItemClickListener:Landroidx/appcompat/widget/Toolbar$OnMenuItemClickListener;

.field private mOuterActionMenuPresenter:Landroidx/appcompat/widget/ActionMenuPresenter;

.field private mPopupContext:Landroid/content/Context;

.field private mPopupTheme:I

.field private mProvidedMenuItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/MenuItem;",
            ">;"
        }
    .end annotation
.end field

.field private final mShowOverflowMenuRunnable:Ljava/lang/Runnable;

.field private mSubtitleText:Ljava/lang/CharSequence;

.field private mSubtitleTextAppearance:I

.field private mSubtitleTextColor:Landroid/content/res/ColorStateList;

.field private mSubtitleTextView:Landroid/widget/TextView;

.field private final mTempMargins:[I

.field private final mTempViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mTitleMarginBottom:I

.field private mTitleMarginEnd:I

.field private mTitleMarginStart:I

.field private mTitleMarginTop:I

.field private mTitleText:Ljava/lang/CharSequence;

.field private mTitleTextAppearance:I

.field private mTitleTextColor:Landroid/content/res/ColorStateList;

.field private mTitleTextView:Landroid/widget/TextView;

.field private mWrapper:Landroidx/appcompat/widget/ToolbarWidgetWrapper;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 242
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroidx/appcompat/widget/Toolbar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 243
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 246
    sget v0, Landroidx/appcompat/R$attr;->toolbarStyle:I

    invoke-direct {p0, p1, p2, v0}, Landroidx/appcompat/widget/Toolbar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 247
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 22
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 250
    move-object/from16 v7, p0

    invoke-direct/range {p0 .. p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 190
    const v0, 0x800013

    iput v0, v7, Landroidx/appcompat/widget/Toolbar;->mGravity:I

    .line 202
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v7, Landroidx/appcompat/widget/Toolbar;->mTempViews:Ljava/util/ArrayList;

    .line 205
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v7, Landroidx/appcompat/widget/Toolbar;->mHiddenViews:Ljava/util/ArrayList;

    .line 207
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, v7, Landroidx/appcompat/widget/Toolbar;->mTempMargins:[I

    .line 209
    new-instance v0, Landroidx/core/view/MenuHostHelper;

    new-instance v1, Landroidx/appcompat/widget/Toolbar$$ExternalSyntheticLambda0;

    invoke-direct {v1, v7}, Landroidx/appcompat/widget/Toolbar$$ExternalSyntheticLambda0;-><init>(Landroidx/appcompat/widget/Toolbar;)V

    invoke-direct {v0, v1}, Landroidx/core/view/MenuHostHelper;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, v7, Landroidx/appcompat/widget/Toolbar;->mMenuHostHelper:Landroidx/core/view/MenuHostHelper;

    .line 210
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v7, Landroidx/appcompat/widget/Toolbar;->mProvidedMenuItems:Ljava/util/ArrayList;

    .line 213
    new-instance v0, Landroidx/appcompat/widget/Toolbar$1;

    invoke-direct {v0, v7}, Landroidx/appcompat/widget/Toolbar$1;-><init>(Landroidx/appcompat/widget/Toolbar;)V

    iput-object v0, v7, Landroidx/appcompat/widget/Toolbar;->mMenuViewItemClickListener:Landroidx/appcompat/widget/ActionMenuView$OnMenuItemClickListener;

    .line 235
    new-instance v0, Landroidx/appcompat/widget/Toolbar$2;

    invoke-direct {v0, v7}, Landroidx/appcompat/widget/Toolbar$2;-><init>(Landroidx/appcompat/widget/Toolbar;)V

    iput-object v0, v7, Landroidx/appcompat/widget/Toolbar;->mShowOverflowMenuRunnable:Ljava/lang/Runnable;

    .line 253
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Landroidx/appcompat/R$styleable;->Toolbar:[I

    const/4 v8, 0x0

    move-object/from16 v9, p2

    move/from16 v10, p3

    invoke-static {v0, v9, v1, v10, v8}, Landroidx/appcompat/widget/TintTypedArray;->obtainStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[III)Landroidx/appcompat/widget/TintTypedArray;

    move-result-object v11

    .line 255
    .local v11, "a":Landroidx/appcompat/widget/TintTypedArray;
    sget-object v2, Landroidx/appcompat/R$styleable;->Toolbar:[I

    .line 256
    invoke-virtual {v11}, Landroidx/appcompat/widget/TintTypedArray;->getWrappedTypeArray()Landroid/content/res/TypedArray;

    move-result-object v4

    .line 255
    const/4 v6, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v3, p2

    move/from16 v5, p3

    invoke-static/range {v0 .. v6}, Landroidx/core/view/ViewCompat;->saveAttributeDataForStyleable(Landroid/view/View;Landroid/content/Context;[ILandroid/util/AttributeSet;Landroid/content/res/TypedArray;II)V

    .line 258
    sget v0, Landroidx/appcompat/R$styleable;->Toolbar_titleTextAppearance:I

    invoke-virtual {v11, v0, v8}, Landroidx/appcompat/widget/TintTypedArray;->getResourceId(II)I

    move-result v0

    iput v0, v7, Landroidx/appcompat/widget/Toolbar;->mTitleTextAppearance:I

    .line 259
    sget v0, Landroidx/appcompat/R$styleable;->Toolbar_subtitleTextAppearance:I

    invoke-virtual {v11, v0, v8}, Landroidx/appcompat/widget/TintTypedArray;->getResourceId(II)I

    move-result v0

    iput v0, v7, Landroidx/appcompat/widget/Toolbar;->mSubtitleTextAppearance:I

    .line 260
    sget v0, Landroidx/appcompat/R$styleable;->Toolbar_android_gravity:I

    iget v1, v7, Landroidx/appcompat/widget/Toolbar;->mGravity:I

    invoke-virtual {v11, v0, v1}, Landroidx/appcompat/widget/TintTypedArray;->getInteger(II)I

    move-result v0

    iput v0, v7, Landroidx/appcompat/widget/Toolbar;->mGravity:I

    .line 261
    sget v0, Landroidx/appcompat/R$styleable;->Toolbar_buttonGravity:I

    const/16 v1, 0x30

    invoke-virtual {v11, v0, v1}, Landroidx/appcompat/widget/TintTypedArray;->getInteger(II)I

    move-result v0

    iput v0, v7, Landroidx/appcompat/widget/Toolbar;->mButtonGravity:I

    .line 264
    sget v0, Landroidx/appcompat/R$styleable;->Toolbar_titleMargin:I

    invoke-virtual {v11, v0, v8}, Landroidx/appcompat/widget/TintTypedArray;->getDimensionPixelOffset(II)I

    move-result v0

    .line 265
    .local v0, "titleMargin":I
    sget v1, Landroidx/appcompat/R$styleable;->Toolbar_titleMargins:I

    invoke-virtual {v11, v1}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 267
    sget v1, Landroidx/appcompat/R$styleable;->Toolbar_titleMargins:I

    invoke-virtual {v11, v1, v0}, Landroidx/appcompat/widget/TintTypedArray;->getDimensionPixelOffset(II)I

    move-result v0

    .line 269
    :cond_0
    iput v0, v7, Landroidx/appcompat/widget/Toolbar;->mTitleMarginBottom:I

    iput v0, v7, Landroidx/appcompat/widget/Toolbar;->mTitleMarginTop:I

    iput v0, v7, Landroidx/appcompat/widget/Toolbar;->mTitleMarginEnd:I

    iput v0, v7, Landroidx/appcompat/widget/Toolbar;->mTitleMarginStart:I

    .line 271
    sget v1, Landroidx/appcompat/R$styleable;->Toolbar_titleMarginStart:I

    const/4 v2, -0x1

    invoke-virtual {v11, v1, v2}, Landroidx/appcompat/widget/TintTypedArray;->getDimensionPixelOffset(II)I

    move-result v1

    .line 272
    .local v1, "marginStart":I
    if-ltz v1, :cond_1

    .line 273
    iput v1, v7, Landroidx/appcompat/widget/Toolbar;->mTitleMarginStart:I

    .line 276
    :cond_1
    sget v3, Landroidx/appcompat/R$styleable;->Toolbar_titleMarginEnd:I

    invoke-virtual {v11, v3, v2}, Landroidx/appcompat/widget/TintTypedArray;->getDimensionPixelOffset(II)I

    move-result v3

    .line 277
    .local v3, "marginEnd":I
    if-ltz v3, :cond_2

    .line 278
    iput v3, v7, Landroidx/appcompat/widget/Toolbar;->mTitleMarginEnd:I

    .line 281
    :cond_2
    sget v4, Landroidx/appcompat/R$styleable;->Toolbar_titleMarginTop:I

    invoke-virtual {v11, v4, v2}, Landroidx/appcompat/widget/TintTypedArray;->getDimensionPixelOffset(II)I

    move-result v4

    .line 282
    .local v4, "marginTop":I
    if-ltz v4, :cond_3

    .line 283
    iput v4, v7, Landroidx/appcompat/widget/Toolbar;->mTitleMarginTop:I

    .line 286
    :cond_3
    sget v5, Landroidx/appcompat/R$styleable;->Toolbar_titleMarginBottom:I

    invoke-virtual {v11, v5, v2}, Landroidx/appcompat/widget/TintTypedArray;->getDimensionPixelOffset(II)I

    move-result v5

    .line 288
    .local v5, "marginBottom":I
    if-ltz v5, :cond_4

    .line 289
    iput v5, v7, Landroidx/appcompat/widget/Toolbar;->mTitleMarginBottom:I

    .line 292
    :cond_4
    sget v6, Landroidx/appcompat/R$styleable;->Toolbar_maxButtonHeight:I

    invoke-virtual {v11, v6, v2}, Landroidx/appcompat/widget/TintTypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, v7, Landroidx/appcompat/widget/Toolbar;->mMaxButtonHeight:I

    .line 294
    sget v2, Landroidx/appcompat/R$styleable;->Toolbar_contentInsetStart:I

    .line 295
    const/high16 v6, -0x80000000

    invoke-virtual {v11, v2, v6}, Landroidx/appcompat/widget/TintTypedArray;->getDimensionPixelOffset(II)I

    move-result v2

    .line 297
    .local v2, "contentInsetStart":I
    sget v12, Landroidx/appcompat/R$styleable;->Toolbar_contentInsetEnd:I

    .line 298
    invoke-virtual {v11, v12, v6}, Landroidx/appcompat/widget/TintTypedArray;->getDimensionPixelOffset(II)I

    move-result v12

    .line 300
    .local v12, "contentInsetEnd":I
    sget v13, Landroidx/appcompat/R$styleable;->Toolbar_contentInsetLeft:I

    .line 301
    invoke-virtual {v11, v13, v8}, Landroidx/appcompat/widget/TintTypedArray;->getDimensionPixelSize(II)I

    move-result v13

    .line 302
    .local v13, "contentInsetLeft":I
    sget v14, Landroidx/appcompat/R$styleable;->Toolbar_contentInsetRight:I

    .line 303
    invoke-virtual {v11, v14, v8}, Landroidx/appcompat/widget/TintTypedArray;->getDimensionPixelSize(II)I

    move-result v14

    .line 305
    .local v14, "contentInsetRight":I
    invoke-direct/range {p0 .. p0}, Landroidx/appcompat/widget/Toolbar;->ensureContentInsets()V

    .line 306
    iget-object v15, v7, Landroidx/appcompat/widget/Toolbar;->mContentInsets:Landroidx/appcompat/widget/RtlSpacingHelper;

    invoke-virtual {v15, v13, v14}, Landroidx/appcompat/widget/RtlSpacingHelper;->setAbsolute(II)V

    .line 308
    if-ne v2, v6, :cond_5

    if-eq v12, v6, :cond_6

    .line 310
    :cond_5
    iget-object v15, v7, Landroidx/appcompat/widget/Toolbar;->mContentInsets:Landroidx/appcompat/widget/RtlSpacingHelper;

    invoke-virtual {v15, v2, v12}, Landroidx/appcompat/widget/RtlSpacingHelper;->setRelative(II)V

    .line 313
    :cond_6
    sget v15, Landroidx/appcompat/R$styleable;->Toolbar_contentInsetStartWithNavigation:I

    invoke-virtual {v11, v15, v6}, Landroidx/appcompat/widget/TintTypedArray;->getDimensionPixelOffset(II)I

    move-result v15

    iput v15, v7, Landroidx/appcompat/widget/Toolbar;->mContentInsetStartWithNavigation:I

    .line 315
    sget v15, Landroidx/appcompat/R$styleable;->Toolbar_contentInsetEndWithActions:I

    invoke-virtual {v11, v15, v6}, Landroidx/appcompat/widget/TintTypedArray;->getDimensionPixelOffset(II)I

    move-result v6

    iput v6, v7, Landroidx/appcompat/widget/Toolbar;->mContentInsetEndWithActions:I

    .line 318
    sget v6, Landroidx/appcompat/R$styleable;->Toolbar_collapseIcon:I

    invoke-virtual {v11, v6}, Landroidx/appcompat/widget/TintTypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    iput-object v6, v7, Landroidx/appcompat/widget/Toolbar;->mCollapseIcon:Landroid/graphics/drawable/Drawable;

    .line 319
    sget v6, Landroidx/appcompat/R$styleable;->Toolbar_collapseContentDescription:I

    invoke-virtual {v11, v6}, Landroidx/appcompat/widget/TintTypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    iput-object v6, v7, Landroidx/appcompat/widget/Toolbar;->mCollapseDescription:Ljava/lang/CharSequence;

    .line 321
    sget v6, Landroidx/appcompat/R$styleable;->Toolbar_title:I

    invoke-virtual {v11, v6}, Landroidx/appcompat/widget/TintTypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    .line 322
    .local v6, "title":Ljava/lang/CharSequence;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_7

    .line 323
    invoke-virtual {v7, v6}, Landroidx/appcompat/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    .line 326
    :cond_7
    sget v15, Landroidx/appcompat/R$styleable;->Toolbar_subtitle:I

    invoke-virtual {v11, v15}, Landroidx/appcompat/widget/TintTypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v15

    .line 327
    .local v15, "subtitle":Ljava/lang/CharSequence;
    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v16

    if-nez v16, :cond_8

    .line 328
    invoke-virtual {v7, v15}, Landroidx/appcompat/widget/Toolbar;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 332
    :cond_8
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v8

    iput-object v8, v7, Landroidx/appcompat/widget/Toolbar;->mPopupContext:Landroid/content/Context;

    .line 333
    sget v8, Landroidx/appcompat/R$styleable;->Toolbar_popupTheme:I

    move/from16 v17, v0

    const/4 v0, 0x0

    .end local v0    # "titleMargin":I
    .local v17, "titleMargin":I
    invoke-virtual {v11, v8, v0}, Landroidx/appcompat/widget/TintTypedArray;->getResourceId(II)I

    move-result v8

    invoke-virtual {v7, v8}, Landroidx/appcompat/widget/Toolbar;->setPopupTheme(I)V

    .line 335
    sget v0, Landroidx/appcompat/R$styleable;->Toolbar_navigationIcon:I

    invoke-virtual {v11, v0}, Landroidx/appcompat/widget/TintTypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 336
    .local v0, "navIcon":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_9

    .line 337
    invoke-virtual {v7, v0}, Landroidx/appcompat/widget/Toolbar;->setNavigationIcon(Landroid/graphics/drawable/Drawable;)V

    .line 339
    :cond_9
    sget v8, Landroidx/appcompat/R$styleable;->Toolbar_navigationContentDescription:I

    invoke-virtual {v11, v8}, Landroidx/appcompat/widget/TintTypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v8

    .line 340
    .local v8, "navDesc":Ljava/lang/CharSequence;
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v18

    if-nez v18, :cond_a

    .line 341
    invoke-virtual {v7, v8}, Landroidx/appcompat/widget/Toolbar;->setNavigationContentDescription(Ljava/lang/CharSequence;)V

    .line 344
    :cond_a
    move-object/from16 v18, v0

    .end local v0    # "navIcon":Landroid/graphics/drawable/Drawable;
    .local v18, "navIcon":Landroid/graphics/drawable/Drawable;
    sget v0, Landroidx/appcompat/R$styleable;->Toolbar_logo:I

    invoke-virtual {v11, v0}, Landroidx/appcompat/widget/TintTypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 345
    .local v0, "logo":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_b

    .line 346
    invoke-virtual {v7, v0}, Landroidx/appcompat/widget/Toolbar;->setLogo(Landroid/graphics/drawable/Drawable;)V

    .line 349
    :cond_b
    move-object/from16 v19, v0

    .end local v0    # "logo":Landroid/graphics/drawable/Drawable;
    .local v19, "logo":Landroid/graphics/drawable/Drawable;
    sget v0, Landroidx/appcompat/R$styleable;->Toolbar_logoDescription:I

    invoke-virtual {v11, v0}, Landroidx/appcompat/widget/TintTypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 350
    .local v0, "logoDesc":Ljava/lang/CharSequence;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v20

    if-nez v20, :cond_c

    .line 351
    invoke-virtual {v7, v0}, Landroidx/appcompat/widget/Toolbar;->setLogoDescription(Ljava/lang/CharSequence;)V

    .line 354
    :cond_c
    move-object/from16 v20, v0

    .end local v0    # "logoDesc":Ljava/lang/CharSequence;
    .local v20, "logoDesc":Ljava/lang/CharSequence;
    sget v0, Landroidx/appcompat/R$styleable;->Toolbar_titleTextColor:I

    invoke-virtual {v11, v0}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 355
    sget v0, Landroidx/appcompat/R$styleable;->Toolbar_titleTextColor:I

    invoke-virtual {v11, v0}, Landroidx/appcompat/widget/TintTypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {v7, v0}, Landroidx/appcompat/widget/Toolbar;->setTitleTextColor(Landroid/content/res/ColorStateList;)V

    .line 358
    :cond_d
    sget v0, Landroidx/appcompat/R$styleable;->Toolbar_subtitleTextColor:I

    invoke-virtual {v11, v0}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 359
    sget v0, Landroidx/appcompat/R$styleable;->Toolbar_subtitleTextColor:I

    invoke-virtual {v11, v0}, Landroidx/appcompat/widget/TintTypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {v7, v0}, Landroidx/appcompat/widget/Toolbar;->setSubtitleTextColor(Landroid/content/res/ColorStateList;)V

    .line 362
    :cond_e
    sget v0, Landroidx/appcompat/R$styleable;->Toolbar_menu:I

    invoke-virtual {v11, v0}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 363
    sget v0, Landroidx/appcompat/R$styleable;->Toolbar_menu:I

    move/from16 v21, v1

    const/4 v1, 0x0

    .end local v1    # "marginStart":I
    .local v21, "marginStart":I
    invoke-virtual {v11, v0, v1}, Landroidx/appcompat/widget/TintTypedArray;->getResourceId(II)I

    move-result v0

    invoke-virtual {v7, v0}, Landroidx/appcompat/widget/Toolbar;->inflateMenu(I)V

    goto :goto_0

    .line 362
    .end local v21    # "marginStart":I
    .restart local v1    # "marginStart":I
    :cond_f
    move/from16 v21, v1

    .line 366
    .end local v1    # "marginStart":I
    .restart local v21    # "marginStart":I
    :goto_0
    invoke-virtual {v11}, Landroidx/appcompat/widget/TintTypedArray;->recycle()V

    .line 367
    return-void
.end method

.method private addCustomViewsWithGravity(Ljava/util/List;I)V
    .locals 7
    .param p2, "gravity"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;I)V"
        }
    .end annotation

    .line 2188
    .local p1, "views":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    move v0, v1

    .line 2189
    .local v0, "isRtl":Z
    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->getChildCount()I

    move-result v1

    .line 2190
    .local v1, "childCount":I
    nop

    .line 2191
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v2

    .line 2190
    invoke-static {p2, v2}, Landroidx/core/view/GravityCompat;->getAbsoluteGravity(II)I

    move-result v2

    .line 2193
    .local v2, "absGrav":I
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 2195
    if-eqz v0, :cond_3

    .line 2196
    add-int/lit8 v3, v1, -0x1

    .local v3, "i":I
    :goto_1
    if-ltz v3, :cond_2

    .line 2197
    invoke-virtual {p0, v3}, Landroidx/appcompat/widget/Toolbar;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 2198
    .local v4, "child":Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroidx/appcompat/widget/Toolbar$LayoutParams;

    .line 2199
    .local v5, "lp":Landroidx/appcompat/widget/Toolbar$LayoutParams;
    iget v6, v5, Landroidx/appcompat/widget/Toolbar$LayoutParams;->mViewType:I

    if-nez v6, :cond_1

    invoke-direct {p0, v4}, Landroidx/appcompat/widget/Toolbar;->shouldLayout(Landroid/view/View;)Z

    move-result v6

    if-eqz v6, :cond_1

    iget v6, v5, Landroidx/appcompat/widget/Toolbar$LayoutParams;->gravity:I

    .line 2200
    invoke-direct {p0, v6}, Landroidx/appcompat/widget/Toolbar;->getChildHorizontalGravity(I)I

    move-result v6

    if-ne v6, v2, :cond_1

    .line 2201
    invoke-interface {p1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2196
    .end local v4    # "child":Landroid/view/View;
    .end local v5    # "lp":Landroidx/appcompat/widget/Toolbar$LayoutParams;
    :cond_1
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .end local v3    # "i":I
    :cond_2
    goto :goto_3

    .line 2205
    :cond_3
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_2
    if-ge v3, v1, :cond_5

    .line 2206
    invoke-virtual {p0, v3}, Landroidx/appcompat/widget/Toolbar;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 2207
    .restart local v4    # "child":Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroidx/appcompat/widget/Toolbar$LayoutParams;

    .line 2208
    .restart local v5    # "lp":Landroidx/appcompat/widget/Toolbar$LayoutParams;
    iget v6, v5, Landroidx/appcompat/widget/Toolbar$LayoutParams;->mViewType:I

    if-nez v6, :cond_4

    invoke-direct {p0, v4}, Landroidx/appcompat/widget/Toolbar;->shouldLayout(Landroid/view/View;)Z

    move-result v6

    if-eqz v6, :cond_4

    iget v6, v5, Landroidx/appcompat/widget/Toolbar$LayoutParams;->gravity:I

    .line 2209
    invoke-direct {p0, v6}, Landroidx/appcompat/widget/Toolbar;->getChildHorizontalGravity(I)I

    move-result v6

    if-ne v6, v2, :cond_4

    .line 2210
    invoke-interface {p1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2205
    .end local v4    # "child":Landroid/view/View;
    .end local v5    # "lp":Landroidx/appcompat/widget/Toolbar$LayoutParams;
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 2214
    .end local v3    # "i":I
    :cond_5
    :goto_3
    return-void
.end method

.method private addSystemView(Landroid/view/View;Z)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;
    .param p2, "allowHide"    # Z

    .line 1559
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 1561
    .local v0, "vlp":Landroid/view/ViewGroup$LayoutParams;
    if-nez v0, :cond_0

    .line 1562
    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->generateDefaultLayoutParams()Landroidx/appcompat/widget/Toolbar$LayoutParams;

    move-result-object v1

    .local v1, "lp":Landroidx/appcompat/widget/Toolbar$LayoutParams;
    goto :goto_0

    .line 1563
    .end local v1    # "lp":Landroidx/appcompat/widget/Toolbar$LayoutParams;
    :cond_0
    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/Toolbar;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1564
    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/Toolbar;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroidx/appcompat/widget/Toolbar$LayoutParams;

    move-result-object v1

    .restart local v1    # "lp":Landroidx/appcompat/widget/Toolbar$LayoutParams;
    goto :goto_0

    .line 1566
    .end local v1    # "lp":Landroidx/appcompat/widget/Toolbar$LayoutParams;
    :cond_1
    move-object v1, v0

    check-cast v1, Landroidx/appcompat/widget/Toolbar$LayoutParams;

    .line 1568
    .restart local v1    # "lp":Landroidx/appcompat/widget/Toolbar$LayoutParams;
    :goto_0
    const/4 v2, 0x1

    iput v2, v1, Landroidx/appcompat/widget/Toolbar$LayoutParams;->mViewType:I

    .line 1570
    if-eqz p2, :cond_2

    iget-object v2, p0, Landroidx/appcompat/widget/Toolbar;->mExpandedActionView:Landroid/view/View;

    if-eqz v2, :cond_2

    .line 1571
    invoke-virtual {p1, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1572
    iget-object v2, p0, Landroidx/appcompat/widget/Toolbar;->mHiddenViews:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1574
    :cond_2
    invoke-virtual {p0, p1, v1}, Landroidx/appcompat/widget/Toolbar;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1576
    :goto_1
    return-void
.end method

.method private ensureContentInsets()V
    .locals 1

    .line 2333
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->mContentInsets:Landroidx/appcompat/widget/RtlSpacingHelper;

    if-nez v0, :cond_0

    .line 2334
    new-instance v0, Landroidx/appcompat/widget/RtlSpacingHelper;

    invoke-direct {v0}, Landroidx/appcompat/widget/RtlSpacingHelper;-><init>()V

    iput-object v0, p0, Landroidx/appcompat/widget/Toolbar;->mContentInsets:Landroidx/appcompat/widget/RtlSpacingHelper;

    .line 2336
    :cond_0
    return-void
.end method

.method private ensureLogoView()V
    .locals 2

    .line 717
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->mLogoView:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    .line 718
    new-instance v0, Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/appcompat/widget/AppCompatImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroidx/appcompat/widget/Toolbar;->mLogoView:Landroid/widget/ImageView;

    .line 720
    :cond_0
    return-void
.end method

.method private ensureMenu()V
    .locals 3

    .line 1184
    invoke-direct {p0}, Landroidx/appcompat/widget/Toolbar;->ensureMenuView()V

    .line 1185
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->mMenuView:Landroidx/appcompat/widget/ActionMenuView;

    invoke-virtual {v0}, Landroidx/appcompat/widget/ActionMenuView;->peekMenu()Landroidx/appcompat/view/menu/MenuBuilder;

    move-result-object v0

    if-nez v0, :cond_1

    .line 1187
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->mMenuView:Landroidx/appcompat/widget/ActionMenuView;

    invoke-virtual {v0}, Landroidx/appcompat/widget/ActionMenuView;->getMenu()Landroid/view/Menu;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/view/menu/MenuBuilder;

    .line 1188
    .local v0, "menu":Landroidx/appcompat/view/menu/MenuBuilder;
    iget-object v1, p0, Landroidx/appcompat/widget/Toolbar;->mExpandedMenuPresenter:Landroidx/appcompat/widget/Toolbar$ExpandedActionViewMenuPresenter;

    if-nez v1, :cond_0

    .line 1189
    new-instance v1, Landroidx/appcompat/widget/Toolbar$ExpandedActionViewMenuPresenter;

    invoke-direct {v1, p0}, Landroidx/appcompat/widget/Toolbar$ExpandedActionViewMenuPresenter;-><init>(Landroidx/appcompat/widget/Toolbar;)V

    iput-object v1, p0, Landroidx/appcompat/widget/Toolbar;->mExpandedMenuPresenter:Landroidx/appcompat/widget/Toolbar$ExpandedActionViewMenuPresenter;

    .line 1191
    :cond_0
    iget-object v1, p0, Landroidx/appcompat/widget/Toolbar;->mMenuView:Landroidx/appcompat/widget/ActionMenuView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/ActionMenuView;->setExpandedActionViewsExclusive(Z)V

    .line 1192
    iget-object v1, p0, Landroidx/appcompat/widget/Toolbar;->mExpandedMenuPresenter:Landroidx/appcompat/widget/Toolbar$ExpandedActionViewMenuPresenter;

    iget-object v2, p0, Landroidx/appcompat/widget/Toolbar;->mPopupContext:Landroid/content/Context;

    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/view/menu/MenuBuilder;->addMenuPresenter(Landroidx/appcompat/view/menu/MenuPresenter;Landroid/content/Context;)V

    .line 1194
    .end local v0    # "menu":Landroidx/appcompat/view/menu/MenuBuilder;
    :cond_1
    return-void
.end method

.method private ensureMenuView()V
    .locals 3

    .line 1197
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->mMenuView:Landroidx/appcompat/widget/ActionMenuView;

    if-nez v0, :cond_0

    .line 1198
    new-instance v0, Landroidx/appcompat/widget/ActionMenuView;

    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/appcompat/widget/ActionMenuView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroidx/appcompat/widget/Toolbar;->mMenuView:Landroidx/appcompat/widget/ActionMenuView;

    .line 1199
    iget v1, p0, Landroidx/appcompat/widget/Toolbar;->mPopupTheme:I

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/ActionMenuView;->setPopupTheme(I)V

    .line 1200
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->mMenuView:Landroidx/appcompat/widget/ActionMenuView;

    iget-object v1, p0, Landroidx/appcompat/widget/Toolbar;->mMenuViewItemClickListener:Landroidx/appcompat/widget/ActionMenuView$OnMenuItemClickListener;

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/ActionMenuView;->setOnMenuItemClickListener(Landroidx/appcompat/widget/ActionMenuView$OnMenuItemClickListener;)V

    .line 1201
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->mMenuView:Landroidx/appcompat/widget/ActionMenuView;

    iget-object v1, p0, Landroidx/appcompat/widget/Toolbar;->mActionMenuPresenterCallback:Landroidx/appcompat/view/menu/MenuPresenter$Callback;

    iget-object v2, p0, Landroidx/appcompat/widget/Toolbar;->mMenuBuilderCallback:Landroidx/appcompat/view/menu/MenuBuilder$Callback;

    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/widget/ActionMenuView;->setMenuCallbacks(Landroidx/appcompat/view/menu/MenuPresenter$Callback;Landroidx/appcompat/view/menu/MenuBuilder$Callback;)V

    .line 1202
    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->generateDefaultLayoutParams()Landroidx/appcompat/widget/Toolbar$LayoutParams;

    move-result-object v0

    .line 1203
    .local v0, "lp":Landroidx/appcompat/widget/Toolbar$LayoutParams;
    const v1, 0x800005

    iget v2, p0, Landroidx/appcompat/widget/Toolbar;->mButtonGravity:I

    and-int/lit8 v2, v2, 0x70

    or-int/2addr v1, v2

    iput v1, v0, Landroidx/appcompat/widget/Toolbar$LayoutParams;->gravity:I

    .line 1204
    iget-object v1, p0, Landroidx/appcompat/widget/Toolbar;->mMenuView:Landroidx/appcompat/widget/ActionMenuView;

    invoke-virtual {v1, v0}, Landroidx/appcompat/widget/ActionMenuView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1205
    iget-object v1, p0, Landroidx/appcompat/widget/Toolbar;->mMenuView:Landroidx/appcompat/widget/ActionMenuView;

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Landroidx/appcompat/widget/Toolbar;->addSystemView(Landroid/view/View;Z)V

    .line 1207
    .end local v0    # "lp":Landroidx/appcompat/widget/Toolbar$LayoutParams;
    :cond_0
    return-void
.end method

.method private ensureNavButtonView()V
    .locals 4

    .line 1519
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    if-nez v0, :cond_0

    .line 1520
    new-instance v0, Landroidx/appcompat/widget/AppCompatImageButton;

    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    sget v3, Landroidx/appcompat/R$attr;->toolbarNavigationButtonStyle:I

    invoke-direct {v0, v1, v2, v3}, Landroidx/appcompat/widget/AppCompatImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v0, p0, Landroidx/appcompat/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    .line 1522
    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->generateDefaultLayoutParams()Landroidx/appcompat/widget/Toolbar$LayoutParams;

    move-result-object v0

    .line 1523
    .local v0, "lp":Landroidx/appcompat/widget/Toolbar$LayoutParams;
    const v1, 0x800003

    iget v2, p0, Landroidx/appcompat/widget/Toolbar;->mButtonGravity:I

    and-int/lit8 v2, v2, 0x70

    or-int/2addr v1, v2

    iput v1, v0, Landroidx/appcompat/widget/Toolbar$LayoutParams;->gravity:I

    .line 1524
    iget-object v1, p0, Landroidx/appcompat/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1526
    .end local v0    # "lp":Landroidx/appcompat/widget/Toolbar$LayoutParams;
    :cond_0
    return-void
.end method

.method private getChildHorizontalGravity(I)I
    .locals 4
    .param p1, "gravity"    # I

    .line 2217
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v0

    .line 2218
    .local v0, "ld":I
    invoke-static {p1, v0}, Landroidx/core/view/GravityCompat;->getAbsoluteGravity(II)I

    move-result v1

    .line 2219
    .local v1, "absGrav":I
    and-int/lit8 v2, v1, 0x7

    .line 2220
    .local v2, "hGrav":I
    packed-switch v2, :pswitch_data_0

    .line 2226
    :pswitch_0
    const/4 v3, 0x1

    if-ne v0, v3, :cond_0

    const/4 v3, 0x5

    goto :goto_0

    .line 2224
    :pswitch_1
    return v2

    .line 2226
    :cond_0
    const/4 v3, 0x3

    :goto_0
    return v3

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private getChildTop(Landroid/view/View;I)I
    .locals 11
    .param p1, "child"    # Landroid/view/View;
    .param p2, "alignmentHeight"    # I

    .line 2137
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/Toolbar$LayoutParams;

    .line 2138
    .local v0, "lp":Landroidx/appcompat/widget/Toolbar$LayoutParams;
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    .line 2139
    .local v1, "childHeight":I
    const/4 v2, 0x0

    if-lez p2, :cond_0

    sub-int v3, v1, p2

    div-int/lit8 v3, v3, 0x2

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 2140
    .local v3, "alignmentOffset":I
    :goto_0
    iget v4, v0, Landroidx/appcompat/widget/Toolbar$LayoutParams;->gravity:I

    invoke-direct {p0, v4}, Landroidx/appcompat/widget/Toolbar;->getChildVerticalGravity(I)I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    .line 2150
    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->getPaddingTop()I

    move-result v4

    .line 2151
    .local v4, "paddingTop":I
    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->getPaddingBottom()I

    move-result v5

    .line 2152
    .local v5, "paddingBottom":I
    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->getHeight()I

    move-result v6

    .line 2153
    .local v6, "height":I
    sub-int v7, v6, v4

    sub-int/2addr v7, v5

    .line 2154
    .local v7, "space":I
    sub-int v8, v7, v1

    div-int/lit8 v8, v8, 0x2

    .line 2155
    .local v8, "spaceAbove":I
    iget v9, v0, Landroidx/appcompat/widget/Toolbar$LayoutParams;->topMargin:I

    if-ge v8, v9, :cond_1

    .line 2156
    iget v8, v0, Landroidx/appcompat/widget/Toolbar$LayoutParams;->topMargin:I

    goto :goto_1

    .line 2145
    .end local v4    # "paddingTop":I
    .end local v5    # "paddingBottom":I
    .end local v6    # "height":I
    .end local v7    # "space":I
    .end local v8    # "spaceAbove":I
    :sswitch_0
    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->getHeight()I

    move-result v2

    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->getPaddingBottom()I

    move-result v4

    sub-int/2addr v2, v4

    sub-int/2addr v2, v1

    iget v4, v0, Landroidx/appcompat/widget/Toolbar$LayoutParams;->bottomMargin:I

    sub-int/2addr v2, v4

    sub-int/2addr v2, v3

    return v2

    .line 2142
    :sswitch_1
    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->getPaddingTop()I

    move-result v2

    sub-int/2addr v2, v3

    return v2

    .line 2158
    .restart local v4    # "paddingTop":I
    .restart local v5    # "paddingBottom":I
    .restart local v6    # "height":I
    .restart local v7    # "space":I
    .restart local v8    # "spaceAbove":I
    :cond_1
    sub-int v9, v6, v5

    sub-int/2addr v9, v1

    sub-int/2addr v9, v8

    sub-int/2addr v9, v4

    .line 2160
    .local v9, "spaceBelow":I
    iget v10, v0, Landroidx/appcompat/widget/Toolbar$LayoutParams;->bottomMargin:I

    if-ge v9, v10, :cond_2

    .line 2161
    iget v10, v0, Landroidx/appcompat/widget/Toolbar$LayoutParams;->bottomMargin:I

    sub-int/2addr v10, v9

    sub-int v10, v8, v10

    invoke-static {v2, v10}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 2164
    .end local v9    # "spaceBelow":I
    :cond_2
    :goto_1
    add-int v2, v4, v8

    return v2

    :sswitch_data_0
    .sparse-switch
        0x30 -> :sswitch_1
        0x50 -> :sswitch_0
    .end sparse-switch
.end method

.method private getChildVerticalGravity(I)I
    .locals 2
    .param p1, "gravity"    # I

    .line 2169
    and-int/lit8 v0, p1, 0x70

    .line 2170
    .local v0, "vgrav":I
    sparse-switch v0, :sswitch_data_0

    .line 2176
    iget v1, p0, Landroidx/appcompat/widget/Toolbar;->mGravity:I

    and-int/lit8 v1, v1, 0x70

    return v1

    .line 2174
    :sswitch_0
    return v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x10 -> :sswitch_0
        0x30 -> :sswitch_0
        0x50 -> :sswitch_0
    .end sparse-switch
.end method

.method private getCurrentMenuItems()Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroid/view/MenuItem;",
            ">;"
        }
    .end annotation

    .line 2368
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2370
    .local v0, "menuItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/MenuItem;>;"
    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->getMenu()Landroid/view/Menu;

    move-result-object v1

    .line 2371
    .local v1, "menu":Landroid/view/Menu;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-interface {v1}, Landroid/view/Menu;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 2372
    invoke-interface {v1, v2}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2371
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2375
    .end local v2    # "i":I
    :cond_0
    return-object v0
.end method

.method private getHorizontalMargins(Landroid/view/View;)I
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .line 2235
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 2236
    .local v0, "mlp":Landroid/view/ViewGroup$MarginLayoutParams;
    invoke-static {v0}, Landroidx/core/view/MarginLayoutParamsCompat;->getMarginStart(Landroid/view/ViewGroup$MarginLayoutParams;)I

    move-result v1

    .line 2237
    invoke-static {v0}, Landroidx/core/view/MarginLayoutParamsCompat;->getMarginEnd(Landroid/view/ViewGroup$MarginLayoutParams;)I

    move-result v2

    add-int/2addr v1, v2

    .line 2236
    return v1
.end method

.method private getMenuInflater()Landroid/view/MenuInflater;
    .locals 2

    .line 1210
    new-instance v0, Landroidx/appcompat/view/SupportMenuInflater;

    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/appcompat/view/SupportMenuInflater;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method private getVerticalMargins(Landroid/view/View;)I
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .line 2241
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 2242
    .local v0, "mlp":Landroid/view/ViewGroup$MarginLayoutParams;
    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v1, v2

    return v1
.end method

.method private getViewListMeasuredWidth(Ljava/util/List;[I)I
    .locals 13
    .param p2, "collapsingMargins"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;[I)I"
        }
    .end annotation

    .line 2092
    .local p1, "views":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    const/4 v0, 0x0

    aget v1, p2, v0

    .line 2093
    .local v1, "collapseLeft":I
    const/4 v2, 0x1

    aget v2, p2, v2

    .line 2094
    .local v2, "collapseRight":I
    const/4 v3, 0x0

    .line 2095
    .local v3, "width":I
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    .line 2096
    .local v4, "count":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    if-ge v5, v4, :cond_0

    .line 2097
    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/View;

    .line 2098
    .local v6, "v":Landroid/view/View;
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Landroidx/appcompat/widget/Toolbar$LayoutParams;

    .line 2099
    .local v7, "lp":Landroidx/appcompat/widget/Toolbar$LayoutParams;
    iget v8, v7, Landroidx/appcompat/widget/Toolbar$LayoutParams;->leftMargin:I

    sub-int/2addr v8, v1

    .line 2100
    .local v8, "l":I
    iget v9, v7, Landroidx/appcompat/widget/Toolbar$LayoutParams;->rightMargin:I

    sub-int/2addr v9, v2

    .line 2101
    .local v9, "r":I
    invoke-static {v0, v8}, Ljava/lang/Math;->max(II)I

    move-result v10

    .line 2102
    .local v10, "leftMargin":I
    invoke-static {v0, v9}, Ljava/lang/Math;->max(II)I

    move-result v11

    .line 2103
    .local v11, "rightMargin":I
    neg-int v12, v8

    invoke-static {v0, v12}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 2104
    neg-int v12, v9

    invoke-static {v0, v12}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 2105
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    move-result v12

    add-int/2addr v12, v10

    add-int/2addr v12, v11

    add-int/2addr v3, v12

    .line 2096
    .end local v6    # "v":Landroid/view/View;
    .end local v7    # "lp":Landroidx/appcompat/widget/Toolbar$LayoutParams;
    .end local v8    # "l":I
    .end local v9    # "r":I
    .end local v10    # "leftMargin":I
    .end local v11    # "rightMargin":I
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 2107
    .end local v5    # "i":I
    :cond_0
    return v3
.end method

.method private isChildOrHidden(Landroid/view/View;)Z
    .locals 1
    .param p1, "child"    # Landroid/view/View;

    .line 2305
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eq v0, p0, :cond_1

    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->mHiddenViews:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private layoutChildLeft(Landroid/view/View;I[II)I
    .locals 6
    .param p1, "child"    # Landroid/view/View;
    .param p2, "left"    # I
    .param p3, "collapsingMargins"    # [I
    .param p4, "alignmentHeight"    # I

    .line 2112
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/Toolbar$LayoutParams;

    .line 2113
    .local v0, "lp":Landroidx/appcompat/widget/Toolbar$LayoutParams;
    iget v1, v0, Landroidx/appcompat/widget/Toolbar$LayoutParams;->leftMargin:I

    const/4 v2, 0x0

    aget v3, p3, v2

    sub-int/2addr v1, v3

    .line 2114
    .local v1, "l":I
    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v3

    add-int/2addr p2, v3

    .line 2115
    neg-int v3, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    aput v3, p3, v2

    .line 2116
    invoke-direct {p0, p1, p4}, Landroidx/appcompat/widget/Toolbar;->getChildTop(Landroid/view/View;I)I

    move-result v2

    .line 2117
    .local v2, "top":I
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    .line 2118
    .local v3, "childWidth":I
    add-int v4, p2, v3

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    add-int/2addr v5, v2

    invoke-virtual {p1, p2, v2, v4, v5}, Landroid/view/View;->layout(IIII)V

    .line 2119
    iget v4, v0, Landroidx/appcompat/widget/Toolbar$LayoutParams;->rightMargin:I

    add-int/2addr v4, v3

    add-int/2addr p2, v4

    .line 2120
    return p2
.end method

.method private layoutChildRight(Landroid/view/View;I[II)I
    .locals 6
    .param p1, "child"    # Landroid/view/View;
    .param p2, "right"    # I
    .param p3, "collapsingMargins"    # [I
    .param p4, "alignmentHeight"    # I

    .line 2125
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/Toolbar$LayoutParams;

    .line 2126
    .local v0, "lp":Landroidx/appcompat/widget/Toolbar$LayoutParams;
    iget v1, v0, Landroidx/appcompat/widget/Toolbar$LayoutParams;->rightMargin:I

    const/4 v2, 0x1

    aget v3, p3, v2

    sub-int/2addr v1, v3

    .line 2127
    .local v1, "r":I
    const/4 v3, 0x0

    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v4

    sub-int/2addr p2, v4

    .line 2128
    neg-int v4, v1

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    aput v3, p3, v2

    .line 2129
    invoke-direct {p0, p1, p4}, Landroidx/appcompat/widget/Toolbar;->getChildTop(Landroid/view/View;I)I

    move-result v2

    .line 2130
    .local v2, "top":I
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    .line 2131
    .local v3, "childWidth":I
    sub-int v4, p2, v3

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    add-int/2addr v5, v2

    invoke-virtual {p1, v4, v2, p2, v5}, Landroid/view/View;->layout(IIII)V

    .line 2132
    iget v4, v0, Landroidx/appcompat/widget/Toolbar$LayoutParams;->leftMargin:I

    add-int/2addr v4, v3

    sub-int/2addr p2, v4

    .line 2133
    return p2
.end method

.method private measureChildCollapseMargins(Landroid/view/View;IIII[I)I
    .locals 9
    .param p1, "child"    # Landroid/view/View;
    .param p2, "parentWidthMeasureSpec"    # I
    .param p3, "widthUsed"    # I
    .param p4, "parentHeightMeasureSpec"    # I
    .param p5, "heightUsed"    # I
    .param p6, "collapsingMargins"    # [I

    .line 1701
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 1703
    .local v0, "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    const/4 v2, 0x0

    aget v3, p6, v2

    sub-int/2addr v1, v3

    .line 1704
    .local v1, "leftDiff":I
    iget v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    const/4 v4, 0x1

    aget v5, p6, v4

    sub-int/2addr v3, v5

    .line 1705
    .local v3, "rightDiff":I
    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 1706
    .local v5, "leftMargin":I
    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 1707
    .local v6, "rightMargin":I
    add-int v7, v5, v6

    .line 1708
    .local v7, "hMargins":I
    neg-int v8, v1

    invoke-static {v2, v8}, Ljava/lang/Math;->max(II)I

    move-result v8

    aput v8, p6, v2

    .line 1709
    neg-int v8, v3

    invoke-static {v2, v8}, Ljava/lang/Math;->max(II)I

    move-result v2

    aput v2, p6, v4

    .line 1711
    nop

    .line 1712
    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->getPaddingLeft()I

    move-result v2

    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->getPaddingRight()I

    move-result v4

    add-int/2addr v2, v4

    add-int/2addr v2, v7

    add-int/2addr v2, p3

    iget v4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 1711
    invoke-static {p2, v2, v4}, Landroidx/appcompat/widget/Toolbar;->getChildMeasureSpec(III)I

    move-result v2

    .line 1713
    .local v2, "childWidthMeasureSpec":I
    nop

    .line 1714
    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->getPaddingTop()I

    move-result v4

    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->getPaddingBottom()I

    move-result v8

    add-int/2addr v4, v8

    iget v8, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v4, v8

    iget v8, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v4, v8

    add-int/2addr v4, p5

    iget v8, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 1713
    invoke-static {p4, v4, v8}, Landroidx/appcompat/widget/Toolbar;->getChildMeasureSpec(III)I

    move-result v4

    .line 1717
    .local v4, "childHeightMeasureSpec":I
    invoke-virtual {p1, v2, v4}, Landroid/view/View;->measure(II)V

    .line 1718
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    add-int/2addr v8, v7

    return v8
.end method

.method private measureChildConstrained(Landroid/view/View;IIIII)V
    .locals 6
    .param p1, "child"    # Landroid/view/View;
    .param p2, "parentWidthSpec"    # I
    .param p3, "widthUsed"    # I
    .param p4, "parentHeightSpec"    # I
    .param p5, "heightUsed"    # I
    .param p6, "heightConstraint"    # I

    .line 1676
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 1678
    .local v0, "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    nop

    .line 1679
    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->getPaddingLeft()I

    move-result v1

    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->getPaddingRight()I

    move-result v2

    add-int/2addr v1, v2

    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v1, v2

    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v1, v2

    add-int/2addr v1, p3

    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 1678
    invoke-static {p2, v1, v2}, Landroidx/appcompat/widget/Toolbar;->getChildMeasureSpec(III)I

    move-result v1

    .line 1681
    .local v1, "childWidthSpec":I
    nop

    .line 1682
    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->getPaddingTop()I

    move-result v2

    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->getPaddingBottom()I

    move-result v3

    add-int/2addr v2, v3

    iget v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v2, v3

    iget v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v2, v3

    add-int/2addr v2, p5

    iget v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 1681
    invoke-static {p4, v2, v3}, Landroidx/appcompat/widget/Toolbar;->getChildMeasureSpec(III)I

    move-result v2

    .line 1685
    .local v2, "childHeightSpec":I
    invoke-static {v2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v3

    .line 1686
    .local v3, "childHeightMode":I
    const/high16 v4, 0x40000000    # 2.0f

    if-eq v3, v4, :cond_1

    if-ltz p6, :cond_1

    .line 1687
    if-eqz v3, :cond_0

    .line 1688
    invoke-static {v2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v5

    invoke-static {v5, p6}, Ljava/lang/Math;->min(II)I

    move-result v5

    goto :goto_0

    .line 1689
    :cond_0
    move v5, p6

    :goto_0
    nop

    .line 1690
    .local v5, "size":I
    invoke-static {v5, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 1692
    .end local v5    # "size":I
    :cond_1
    invoke-virtual {p1, v1, v2}, Landroid/view/View;->measure(II)V

    .line 1693
    return-void
.end method

.method private onCreateMenu()V
    .locals 4

    .line 2379
    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->getMenu()Landroid/view/Menu;

    move-result-object v0

    .line 2380
    .local v0, "menu":Landroid/view/Menu;
    invoke-direct {p0}, Landroidx/appcompat/widget/Toolbar;->getCurrentMenuItems()Ljava/util/ArrayList;

    move-result-object v1

    .line 2381
    .local v1, "oldMenuItemList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/MenuItem;>;"
    iget-object v2, p0, Landroidx/appcompat/widget/Toolbar;->mMenuHostHelper:Landroidx/core/view/MenuHostHelper;

    invoke-direct {p0}, Landroidx/appcompat/widget/Toolbar;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroidx/core/view/MenuHostHelper;->onCreateMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 2383
    invoke-direct {p0}, Landroidx/appcompat/widget/Toolbar;->getCurrentMenuItems()Ljava/util/ArrayList;

    move-result-object v2

    .line 2384
    .local v2, "newMenuItemList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/MenuItem;>;"
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 2385
    iput-object v2, p0, Landroidx/appcompat/widget/Toolbar;->mProvidedMenuItems:Ljava/util/ArrayList;

    .line 2387
    iget-object v3, p0, Landroidx/appcompat/widget/Toolbar;->mMenuHostHelper:Landroidx/core/view/MenuHostHelper;

    invoke-virtual {v3, v0}, Landroidx/core/view/MenuHostHelper;->onPrepareMenu(Landroid/view/Menu;)V

    .line 2388
    return-void
.end method

.method private postShowOverflowMenu()V
    .locals 1

    .line 1614
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->mShowOverflowMenuRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/Toolbar;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1615
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->mShowOverflowMenuRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/Toolbar;->post(Ljava/lang/Runnable;)Z

    .line 1616
    return-void
.end method

.method private shouldCollapse()Z
    .locals 5

    .line 1725
    iget-boolean v0, p0, Landroidx/appcompat/widget/Toolbar;->mCollapsible:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 1727
    :cond_0
    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->getChildCount()I

    move-result v0

    .line 1728
    .local v0, "childCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_2

    .line 1729
    invoke-virtual {p0, v2}, Landroidx/appcompat/widget/Toolbar;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1730
    .local v3, "child":Landroid/view/View;
    invoke-direct {p0, v3}, Landroidx/appcompat/widget/Toolbar;->shouldLayout(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    if-lez v4, :cond_1

    .line 1731
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    if-lez v4, :cond_1

    .line 1732
    return v1

    .line 1728
    .end local v3    # "child":Landroid/view/View;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1735
    .end local v2    # "i":I
    :cond_2
    const/4 v1, 0x1

    return v1
.end method

.method private shouldLayout(Landroid/view/View;)Z
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .line 2231
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-ne v0, p0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method addChildrenForExpandedActionView()V
    .locals 3

    .line 2296
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->mHiddenViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2298
    .local v0, "count":I
    add-int/lit8 v1, v0, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_0

    .line 2299
    iget-object v2, p0, Landroidx/appcompat/widget/Toolbar;->mHiddenViews:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-virtual {p0, v2}, Landroidx/appcompat/widget/Toolbar;->addView(Landroid/view/View;)V

    .line 2298
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 2301
    .end local v1    # "i":I
    :cond_0
    iget-object v1, p0, Landroidx/appcompat/widget/Toolbar;->mHiddenViews:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 2302
    return-void
.end method

.method public addMenuProvider(Landroidx/core/view/MenuProvider;)V
    .locals 1
    .param p1, "provider"    # Landroidx/core/view/MenuProvider;

    .line 2393
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->mMenuHostHelper:Landroidx/core/view/MenuHostHelper;

    invoke-virtual {v0, p1}, Landroidx/core/view/MenuHostHelper;->addMenuProvider(Landroidx/core/view/MenuProvider;)V

    .line 2394
    return-void
.end method

.method public addMenuProvider(Landroidx/core/view/MenuProvider;Landroidx/lifecycle/LifecycleOwner;)V
    .locals 1
    .param p1, "provider"    # Landroidx/core/view/MenuProvider;
    .param p2, "owner"    # Landroidx/lifecycle/LifecycleOwner;

    .line 2399
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->mMenuHostHelper:Landroidx/core/view/MenuHostHelper;

    invoke-virtual {v0, p1, p2}, Landroidx/core/view/MenuHostHelper;->addMenuProvider(Landroidx/core/view/MenuProvider;Landroidx/lifecycle/LifecycleOwner;)V

    .line 2400
    return-void
.end method

.method public addMenuProvider(Landroidx/core/view/MenuProvider;Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Lifecycle$State;)V
    .locals 1
    .param p1, "provider"    # Landroidx/core/view/MenuProvider;
    .param p2, "owner"    # Landroidx/lifecycle/LifecycleOwner;
    .param p3, "state"    # Landroidx/lifecycle/Lifecycle$State;

    .line 2407
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->mMenuHostHelper:Landroidx/core/view/MenuHostHelper;

    invoke-virtual {v0, p1, p2, p3}, Landroidx/core/view/MenuHostHelper;->addMenuProvider(Landroidx/core/view/MenuProvider;Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Lifecycle$State;)V

    .line 2408
    return-void
.end method

.method public canShowOverflowMenu()Z
    .locals 1

    .line 537
    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->mMenuView:Landroidx/appcompat/widget/ActionMenuView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/appcompat/widget/ActionMenuView;->isOverflowReserved()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .line 2270
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v0

    if-eqz v0, :cond_0

    instance-of v0, p1, Landroidx/appcompat/widget/Toolbar$LayoutParams;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public collapseActionView()V
    .locals 1

    .line 747
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->mExpandedMenuPresenter:Landroidx/appcompat/widget/Toolbar$ExpandedActionViewMenuPresenter;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 748
    :cond_0
    iget-object v0, v0, Landroidx/appcompat/widget/Toolbar$ExpandedActionViewMenuPresenter;->mCurrentExpandedItem:Landroidx/appcompat/view/menu/MenuItemImpl;

    :goto_0
    nop

    .line 749
    .local v0, "item":Landroidx/appcompat/view/menu/MenuItemImpl;
    if-eqz v0, :cond_1

    .line 750
    invoke-virtual {v0}, Landroidx/appcompat/view/menu/MenuItemImpl;->collapseActionView()Z

    .line 752
    :cond_1
    return-void
.end method

.method public dismissPopupMenus()V
    .locals 1

    .line 615
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->mMenuView:Landroidx/appcompat/widget/ActionMenuView;

    if-eqz v0, :cond_0

    .line 616
    invoke-virtual {v0}, Landroidx/appcompat/widget/ActionMenuView;->dismissPopupMenus()V

    .line 618
    :cond_0
    return-void
.end method

.method ensureCollapseButtonView()V
    .locals 4

    .line 1540
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->mCollapseButtonView:Landroid/widget/ImageButton;

    if-nez v0, :cond_0

    .line 1541
    new-instance v0, Landroidx/appcompat/widget/AppCompatImageButton;

    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    sget v3, Landroidx/appcompat/R$attr;->toolbarNavigationButtonStyle:I

    invoke-direct {v0, v1, v2, v3}, Landroidx/appcompat/widget/AppCompatImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v0, p0, Landroidx/appcompat/widget/Toolbar;->mCollapseButtonView:Landroid/widget/ImageButton;

    .line 1543
    iget-object v1, p0, Landroidx/appcompat/widget/Toolbar;->mCollapseIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1544
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->mCollapseButtonView:Landroid/widget/ImageButton;

    iget-object v1, p0, Landroidx/appcompat/widget/Toolbar;->mCollapseDescription:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1545
    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->generateDefaultLayoutParams()Landroidx/appcompat/widget/Toolbar$LayoutParams;

    move-result-object v0

    .line 1546
    .local v0, "lp":Landroidx/appcompat/widget/Toolbar$LayoutParams;
    const v1, 0x800003

    iget v2, p0, Landroidx/appcompat/widget/Toolbar;->mButtonGravity:I

    and-int/lit8 v2, v2, 0x70

    or-int/2addr v1, v2

    iput v1, v0, Landroidx/appcompat/widget/Toolbar$LayoutParams;->gravity:I

    .line 1547
    const/4 v1, 0x2

    iput v1, v0, Landroidx/appcompat/widget/Toolbar$LayoutParams;->mViewType:I

    .line 1548
    iget-object v1, p0, Landroidx/appcompat/widget/Toolbar;->mCollapseButtonView:Landroid/widget/ImageButton;

    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1549
    iget-object v1, p0, Landroidx/appcompat/widget/Toolbar;->mCollapseButtonView:Landroid/widget/ImageButton;

    new-instance v2, Landroidx/appcompat/widget/Toolbar$3;

    invoke-direct {v2, p0}, Landroidx/appcompat/widget/Toolbar$3;-><init>(Landroidx/appcompat/widget/Toolbar;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1556
    .end local v0    # "lp":Landroidx/appcompat/widget/Toolbar$LayoutParams;
    :cond_0
    return-void
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .line 154
    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->generateDefaultLayoutParams()Landroidx/appcompat/widget/Toolbar$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected generateDefaultLayoutParams()Landroidx/appcompat/widget/Toolbar$LayoutParams;
    .locals 2

    .line 2265
    new-instance v0, Landroidx/appcompat/widget/Toolbar$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroidx/appcompat/widget/Toolbar$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    .line 154
    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/Toolbar;->generateLayoutParams(Landroid/util/AttributeSet;)Landroidx/appcompat/widget/Toolbar$LayoutParams;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    .line 154
    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/Toolbar;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroidx/appcompat/widget/Toolbar$LayoutParams;

    move-result-object p1

    return-object p1
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroidx/appcompat/widget/Toolbar$LayoutParams;
    .locals 2
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .line 2247
    new-instance v0, Landroidx/appcompat/widget/Toolbar$LayoutParams;

    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroidx/appcompat/widget/Toolbar$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroidx/appcompat/widget/Toolbar$LayoutParams;
    .locals 2
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .line 2252
    instance-of v0, p1, Landroidx/appcompat/widget/Toolbar$LayoutParams;

    if-eqz v0, :cond_0

    .line 2253
    new-instance v0, Landroidx/appcompat/widget/Toolbar$LayoutParams;

    move-object v1, p1

    check-cast v1, Landroidx/appcompat/widget/Toolbar$LayoutParams;

    invoke-direct {v0, v1}, Landroidx/appcompat/widget/Toolbar$LayoutParams;-><init>(Landroidx/appcompat/widget/Toolbar$LayoutParams;)V

    return-object v0

    .line 2254
    :cond_0
    instance-of v0, p1, Landroidx/appcompat/app/ActionBar$LayoutParams;

    if-eqz v0, :cond_1

    .line 2255
    new-instance v0, Landroidx/appcompat/widget/Toolbar$LayoutParams;

    move-object v1, p1

    check-cast v1, Landroidx/appcompat/app/ActionBar$LayoutParams;

    invoke-direct {v0, v1}, Landroidx/appcompat/widget/Toolbar$LayoutParams;-><init>(Landroidx/appcompat/app/ActionBar$LayoutParams;)V

    return-object v0

    .line 2256
    :cond_1
    instance-of v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_2

    .line 2257
    new-instance v0, Landroidx/appcompat/widget/Toolbar$LayoutParams;

    move-object v1, p1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v0, v1}, Landroidx/appcompat/widget/Toolbar$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    return-object v0

    .line 2259
    :cond_2
    new-instance v0, Landroidx/appcompat/widget/Toolbar$LayoutParams;

    invoke-direct {v0, p1}, Landroidx/appcompat/widget/Toolbar$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public getCollapseContentDescription()Ljava/lang/CharSequence;
    .locals 1

    .line 1065
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->mCollapseButtonView:Landroid/widget/ImageButton;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getCollapseIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 1111
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->mCollapseButtonView:Landroid/widget/ImageButton;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getContentInsetEnd()I
    .locals 1

    .line 1300
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->mContentInsets:Landroidx/appcompat/widget/RtlSpacingHelper;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/appcompat/widget/RtlSpacingHelper;->getEnd()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getContentInsetEndWithActions()I
    .locals 2

    .line 1426
    iget v0, p0, Landroidx/appcompat/widget/Toolbar;->mContentInsetEndWithActions:I

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_0

    .line 1427
    goto :goto_0

    .line 1428
    :cond_0
    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->getContentInsetEnd()I

    move-result v0

    .line 1426
    :goto_0
    return v0
.end method

.method public getContentInsetLeft()I
    .locals 1

    .line 1344
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->mContentInsets:Landroidx/appcompat/widget/RtlSpacingHelper;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/appcompat/widget/RtlSpacingHelper;->getLeft()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getContentInsetRight()I
    .locals 1

    .line 1365
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->mContentInsets:Landroidx/appcompat/widget/RtlSpacingHelper;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/appcompat/widget/RtlSpacingHelper;->getRight()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getContentInsetStart()I
    .locals 1

    .line 1279
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->mContentInsets:Landroidx/appcompat/widget/RtlSpacingHelper;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/appcompat/widget/RtlSpacingHelper;->getStart()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getContentInsetStartWithNavigation()I
    .locals 2

    .line 1382
    iget v0, p0, Landroidx/appcompat/widget/Toolbar;->mContentInsetStartWithNavigation:I

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_0

    .line 1383
    goto :goto_0

    .line 1384
    :cond_0
    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->getContentInsetStart()I

    move-result v0

    .line 1382
    :goto_0
    return v0
.end method

.method public getCurrentContentInsetEnd()I
    .locals 4

    .line 1478
    const/4 v0, 0x0

    .line 1479
    .local v0, "hasActions":Z
    iget-object v1, p0, Landroidx/appcompat/widget/Toolbar;->mMenuView:Landroidx/appcompat/widget/ActionMenuView;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 1480
    invoke-virtual {v1}, Landroidx/appcompat/widget/ActionMenuView;->peekMenu()Landroidx/appcompat/view/menu/MenuBuilder;

    move-result-object v1

    .line 1481
    .local v1, "mb":Landroidx/appcompat/view/menu/MenuBuilder;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroidx/appcompat/view/menu/MenuBuilder;->hasVisibleItems()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    move v0, v3

    .line 1483
    .end local v1    # "mb":Landroidx/appcompat/view/menu/MenuBuilder;
    :cond_1
    if-eqz v0, :cond_2

    .line 1484
    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->getContentInsetEnd()I

    move-result v1

    iget v3, p0, Landroidx/appcompat/widget/Toolbar;->mContentInsetEndWithActions:I

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    goto :goto_1

    .line 1485
    :cond_2
    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->getContentInsetEnd()I

    move-result v1

    .line 1483
    :goto_1
    return v1
.end method

.method public getCurrentContentInsetLeft()I
    .locals 2

    .line 1498
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1499
    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->getCurrentContentInsetEnd()I

    move-result v0

    goto :goto_0

    .line 1500
    :cond_0
    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->getCurrentContentInsetStart()I

    move-result v0

    .line 1498
    :goto_0
    return v0
.end method

.method public getCurrentContentInsetRight()I
    .locals 2

    .line 1513
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1514
    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->getCurrentContentInsetStart()I

    move-result v0

    goto :goto_0

    .line 1515
    :cond_0
    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->getCurrentContentInsetEnd()I

    move-result v0

    .line 1513
    :goto_0
    return v0
.end method

.method public getCurrentContentInsetStart()I
    .locals 3

    .line 1464
    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->getNavigationIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1465
    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->getContentInsetStart()I

    move-result v0

    iget v1, p0, Landroidx/appcompat/widget/Toolbar;->mContentInsetStartWithNavigation:I

    const/4 v2, 0x0

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_0

    .line 1466
    :cond_0
    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->getContentInsetStart()I

    move-result v0

    .line 1464
    :goto_0
    return v0
.end method

.method public getLogo()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 674
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->mLogoView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getLogoDescription()Ljava/lang/CharSequence;
    .locals 1

    .line 713
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->mLogoView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/ImageView;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getMenu()Landroid/view/Menu;
    .locals 1

    .line 1158
    invoke-direct {p0}, Landroidx/appcompat/widget/Toolbar;->ensureMenu()V

    .line 1159
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->mMenuView:Landroidx/appcompat/widget/ActionMenuView;

    invoke-virtual {v0}, Landroidx/appcompat/widget/ActionMenuView;->getMenu()Landroid/view/Menu;

    move-result-object v0

    return-object v0
.end method

.method getNavButtonView()Landroid/view/View;
    .locals 1

    .line 1536
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    return-object v0
.end method

.method public getNavigationContentDescription()Ljava/lang/CharSequence;
    .locals 1

    .line 942
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getNavigationIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 1036
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method getOuterActionMenuPresenter()Landroidx/appcompat/widget/ActionMenuPresenter;
    .locals 1

    .line 2360
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->mOuterActionMenuPresenter:Landroidx/appcompat/widget/ActionMenuPresenter;

    return-object v0
.end method

.method public getOverflowIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 1179
    invoke-direct {p0}, Landroidx/appcompat/widget/Toolbar;->ensureMenu()V

    .line 1180
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->mMenuView:Landroidx/appcompat/widget/ActionMenuView;

    invoke-virtual {v0}, Landroidx/appcompat/widget/ActionMenuView;->getOverflowIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method getPopupContext()Landroid/content/Context;
    .locals 1

    .line 2364
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->mPopupContext:Landroid/content/Context;

    return-object v0
.end method

.method public getPopupTheme()I
    .locals 1

    .line 395
    iget v0, p0, Landroidx/appcompat/widget/Toolbar;->mPopupTheme:I

    return v0
.end method

.method public getSubtitle()Ljava/lang/CharSequence;
    .locals 1

    .line 818
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->mSubtitleText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method final getSubtitleTextView()Landroid/widget/TextView;
    .locals 1

    .line 2353
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 1

    .line 761
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->mTitleText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getTitleMarginBottom()I
    .locals 1

    .line 496
    iget v0, p0, Landroidx/appcompat/widget/Toolbar;->mTitleMarginBottom:I

    return v0
.end method

.method public getTitleMarginEnd()I
    .locals 1

    .line 473
    iget v0, p0, Landroidx/appcompat/widget/Toolbar;->mTitleMarginEnd:I

    return v0
.end method

.method public getTitleMarginStart()I
    .locals 1

    .line 427
    iget v0, p0, Landroidx/appcompat/widget/Toolbar;->mTitleMarginStart:I

    return v0
.end method

.method public getTitleMarginTop()I
    .locals 1

    .line 450
    iget v0, p0, Landroidx/appcompat/widget/Toolbar;->mTitleMarginTop:I

    return v0
.end method

.method final getTitleTextView()Landroid/widget/TextView;
    .locals 1

    .line 2344
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method public getWrapper()Landroidx/appcompat/widget/DecorToolbar;
    .locals 2

    .line 2276
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->mWrapper:Landroidx/appcompat/widget/ToolbarWidgetWrapper;

    if-nez v0, :cond_0

    .line 2277
    new-instance v0, Landroidx/appcompat/widget/ToolbarWidgetWrapper;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Landroidx/appcompat/widget/ToolbarWidgetWrapper;-><init>(Landroidx/appcompat/widget/Toolbar;Z)V

    iput-object v0, p0, Landroidx/appcompat/widget/Toolbar;->mWrapper:Landroidx/appcompat/widget/ToolbarWidgetWrapper;

    .line 2279
    :cond_0
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->mWrapper:Landroidx/appcompat/widget/ToolbarWidgetWrapper;

    return-object v0
.end method

.method public hasExpandedActionView()Z
    .locals 1

    .line 733
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->mExpandedMenuPresenter:Landroidx/appcompat/widget/Toolbar$ExpandedActionViewMenuPresenter;

    if-eqz v0, :cond_0

    iget-object v0, v0, Landroidx/appcompat/widget/Toolbar$ExpandedActionViewMenuPresenter;->mCurrentExpandedItem:Landroidx/appcompat/view/menu/MenuItemImpl;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hideOverflowMenu()Z
    .locals 1

    .line 571
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->mMenuView:Landroidx/appcompat/widget/ActionMenuView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/appcompat/widget/ActionMenuView;->hideOverflowMenu()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public inflateMenu(I)V
    .locals 2
    .param p1, "resId"    # I

    .line 1223
    invoke-direct {p0}, Landroidx/appcompat/widget/Toolbar;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->getMenu()Landroid/view/Menu;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 1224
    return-void
.end method

.method public invalidateMenu()V
    .locals 4

    .line 2426
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->mProvidedMenuItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/MenuItem;

    .line 2427
    .local v1, "menuItem":Landroid/view/MenuItem;
    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->getMenu()Landroid/view/Menu;

    move-result-object v2

    invoke-interface {v1}, Landroid/view/MenuItem;->getItemId()I

    move-result v3

    invoke-interface {v2, v3}, Landroid/view/Menu;->removeItem(I)V

    .line 2428
    .end local v1    # "menuItem":Landroid/view/MenuItem;
    goto :goto_0

    .line 2429
    :cond_0
    invoke-direct {p0}, Landroidx/appcompat/widget/Toolbar;->onCreateMenu()V

    .line 2430
    return-void
.end method

.method public isOverflowMenuShowPending()Z
    .locals 1

    .line 553
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->mMenuView:Landroidx/appcompat/widget/ActionMenuView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/appcompat/widget/ActionMenuView;->isOverflowMenuShowPending()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isOverflowMenuShowing()Z
    .locals 1

    .line 547
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->mMenuView:Landroidx/appcompat/widget/ActionMenuView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/appcompat/widget/ActionMenuView;->isOverflowMenuShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isTitleTruncated()Z
    .locals 5

    .line 623
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 624
    return v1

    .line 627
    :cond_0
    invoke-virtual {v0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    .line 628
    .local v0, "titleLayout":Landroid/text/Layout;
    if-nez v0, :cond_1

    .line 629
    return v1

    .line 632
    :cond_1
    invoke-virtual {v0}, Landroid/text/Layout;->getLineCount()I

    move-result v2

    .line 633
    .local v2, "lineCount":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_3

    .line 634
    invoke-virtual {v0, v3}, Landroid/text/Layout;->getEllipsisCount(I)I

    move-result v4

    if-lez v4, :cond_2

    .line 635
    const/4 v1, 0x1

    return v1

    .line 633
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 638
    .end local v3    # "i":I
    :cond_3
    return v1
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 1620
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    .line 1621
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->mShowOverflowMenuRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/Toolbar;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1622
    return-void
.end method

.method public onHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 1655
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 1656
    .local v0, "action":I
    const/4 v1, 0x0

    const/16 v2, 0x9

    if-ne v0, v2, :cond_0

    .line 1657
    iput-boolean v1, p0, Landroidx/appcompat/widget/Toolbar;->mEatingHover:Z

    .line 1660
    :cond_0
    iget-boolean v3, p0, Landroidx/appcompat/widget/Toolbar;->mEatingHover:Z

    const/4 v4, 0x1

    if-nez v3, :cond_1

    .line 1661
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    .line 1662
    .local v3, "handled":Z
    if-ne v0, v2, :cond_1

    if-nez v3, :cond_1

    .line 1663
    iput-boolean v4, p0, Landroidx/appcompat/widget/Toolbar;->mEatingHover:Z

    .line 1667
    .end local v3    # "handled":Z
    :cond_1
    const/16 v2, 0xa

    if-eq v0, v2, :cond_2

    const/4 v2, 0x3

    if-ne v0, v2, :cond_3

    .line 1668
    :cond_2
    iput-boolean v1, p0, Landroidx/appcompat/widget/Toolbar;->mEatingHover:Z

    .line 1671
    :cond_3
    return v4
.end method

.method protected onLayout(ZIIII)V
    .locals 33
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .line 1874
    move-object/from16 v0, p0

    invoke-static/range {p0 .. p0}, Landroidx/core/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 1875
    .local v1, "isRtl":Z
    :goto_0
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/Toolbar;->getWidth()I

    move-result v4

    .line 1876
    .local v4, "width":I
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/Toolbar;->getHeight()I

    move-result v5

    .line 1877
    .local v5, "height":I
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/Toolbar;->getPaddingLeft()I

    move-result v6

    .line 1878
    .local v6, "paddingLeft":I
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/Toolbar;->getPaddingRight()I

    move-result v7

    .line 1879
    .local v7, "paddingRight":I
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/Toolbar;->getPaddingTop()I

    move-result v8

    .line 1880
    .local v8, "paddingTop":I
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/Toolbar;->getPaddingBottom()I

    move-result v9

    .line 1881
    .local v9, "paddingBottom":I
    move v10, v6

    .line 1882
    .local v10, "left":I
    sub-int v11, v4, v7

    .line 1884
    .local v11, "right":I
    iget-object v12, v0, Landroidx/appcompat/widget/Toolbar;->mTempMargins:[I

    .line 1885
    .local v12, "collapsingMargins":[I
    aput v3, v12, v2

    aput v3, v12, v3

    .line 1888
    invoke-static/range {p0 .. p0}, Landroidx/core/view/ViewCompat;->getMinimumHeight(Landroid/view/View;)I

    move-result v13

    .line 1889
    .local v13, "minHeight":I
    if-ltz v13, :cond_1

    sub-int v14, p5, p3

    invoke-static {v13, v14}, Ljava/lang/Math;->min(II)I

    move-result v14

    goto :goto_1

    :cond_1
    const/4 v14, 0x0

    .line 1891
    .local v14, "alignmentHeight":I
    :goto_1
    iget-object v15, v0, Landroidx/appcompat/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    invoke-direct {v0, v15}, Landroidx/appcompat/widget/Toolbar;->shouldLayout(Landroid/view/View;)Z

    move-result v15

    if-eqz v15, :cond_3

    .line 1892
    if-eqz v1, :cond_2

    .line 1893
    iget-object v15, v0, Landroidx/appcompat/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    invoke-direct {v0, v15, v11, v12, v14}, Landroidx/appcompat/widget/Toolbar;->layoutChildRight(Landroid/view/View;I[II)I

    move-result v11

    goto :goto_2

    .line 1896
    :cond_2
    iget-object v15, v0, Landroidx/appcompat/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    invoke-direct {v0, v15, v10, v12, v14}, Landroidx/appcompat/widget/Toolbar;->layoutChildLeft(Landroid/view/View;I[II)I

    move-result v10

    .line 1901
    :cond_3
    :goto_2
    iget-object v15, v0, Landroidx/appcompat/widget/Toolbar;->mCollapseButtonView:Landroid/widget/ImageButton;

    invoke-direct {v0, v15}, Landroidx/appcompat/widget/Toolbar;->shouldLayout(Landroid/view/View;)Z

    move-result v15

    if-eqz v15, :cond_5

    .line 1902
    if-eqz v1, :cond_4

    .line 1903
    iget-object v15, v0, Landroidx/appcompat/widget/Toolbar;->mCollapseButtonView:Landroid/widget/ImageButton;

    invoke-direct {v0, v15, v11, v12, v14}, Landroidx/appcompat/widget/Toolbar;->layoutChildRight(Landroid/view/View;I[II)I

    move-result v11

    goto :goto_3

    .line 1906
    :cond_4
    iget-object v15, v0, Landroidx/appcompat/widget/Toolbar;->mCollapseButtonView:Landroid/widget/ImageButton;

    invoke-direct {v0, v15, v10, v12, v14}, Landroidx/appcompat/widget/Toolbar;->layoutChildLeft(Landroid/view/View;I[II)I

    move-result v10

    .line 1911
    :cond_5
    :goto_3
    iget-object v15, v0, Landroidx/appcompat/widget/Toolbar;->mMenuView:Landroidx/appcompat/widget/ActionMenuView;

    invoke-direct {v0, v15}, Landroidx/appcompat/widget/Toolbar;->shouldLayout(Landroid/view/View;)Z

    move-result v15

    if-eqz v15, :cond_7

    .line 1912
    if-eqz v1, :cond_6

    .line 1913
    iget-object v15, v0, Landroidx/appcompat/widget/Toolbar;->mMenuView:Landroidx/appcompat/widget/ActionMenuView;

    invoke-direct {v0, v15, v10, v12, v14}, Landroidx/appcompat/widget/Toolbar;->layoutChildLeft(Landroid/view/View;I[II)I

    move-result v10

    goto :goto_4

    .line 1916
    :cond_6
    iget-object v15, v0, Landroidx/appcompat/widget/Toolbar;->mMenuView:Landroidx/appcompat/widget/ActionMenuView;

    invoke-direct {v0, v15, v11, v12, v14}, Landroidx/appcompat/widget/Toolbar;->layoutChildRight(Landroid/view/View;I[II)I

    move-result v11

    .line 1921
    :cond_7
    :goto_4
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/Toolbar;->getCurrentContentInsetLeft()I

    move-result v15

    .line 1922
    .local v15, "contentInsetLeft":I
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/Toolbar;->getCurrentContentInsetRight()I

    move-result v16

    .line 1923
    .local v16, "contentInsetRight":I
    sub-int v2, v15, v10

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    aput v2, v12, v3

    .line 1924
    sub-int v2, v4, v7

    sub-int/2addr v2, v11

    sub-int v2, v16, v2

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    const/16 v17, 0x1

    aput v2, v12, v17

    .line 1925
    invoke-static {v10, v15}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 1926
    .end local v10    # "left":I
    .local v2, "left":I
    sub-int v10, v4, v7

    sub-int v10, v10, v16

    invoke-static {v11, v10}, Ljava/lang/Math;->min(II)I

    move-result v10

    .line 1928
    .end local v11    # "right":I
    .local v10, "right":I
    iget-object v11, v0, Landroidx/appcompat/widget/Toolbar;->mExpandedActionView:Landroid/view/View;

    invoke-direct {v0, v11}, Landroidx/appcompat/widget/Toolbar;->shouldLayout(Landroid/view/View;)Z

    move-result v11

    if-eqz v11, :cond_9

    .line 1929
    if-eqz v1, :cond_8

    .line 1930
    iget-object v11, v0, Landroidx/appcompat/widget/Toolbar;->mExpandedActionView:Landroid/view/View;

    invoke-direct {v0, v11, v10, v12, v14}, Landroidx/appcompat/widget/Toolbar;->layoutChildRight(Landroid/view/View;I[II)I

    move-result v10

    goto :goto_5

    .line 1933
    :cond_8
    iget-object v11, v0, Landroidx/appcompat/widget/Toolbar;->mExpandedActionView:Landroid/view/View;

    invoke-direct {v0, v11, v2, v12, v14}, Landroidx/appcompat/widget/Toolbar;->layoutChildLeft(Landroid/view/View;I[II)I

    move-result v2

    .line 1938
    :cond_9
    :goto_5
    iget-object v11, v0, Landroidx/appcompat/widget/Toolbar;->mLogoView:Landroid/widget/ImageView;

    invoke-direct {v0, v11}, Landroidx/appcompat/widget/Toolbar;->shouldLayout(Landroid/view/View;)Z

    move-result v11

    if-eqz v11, :cond_b

    .line 1939
    if-eqz v1, :cond_a

    .line 1940
    iget-object v11, v0, Landroidx/appcompat/widget/Toolbar;->mLogoView:Landroid/widget/ImageView;

    invoke-direct {v0, v11, v10, v12, v14}, Landroidx/appcompat/widget/Toolbar;->layoutChildRight(Landroid/view/View;I[II)I

    move-result v10

    goto :goto_6

    .line 1943
    :cond_a
    iget-object v11, v0, Landroidx/appcompat/widget/Toolbar;->mLogoView:Landroid/widget/ImageView;

    invoke-direct {v0, v11, v2, v12, v14}, Landroidx/appcompat/widget/Toolbar;->layoutChildLeft(Landroid/view/View;I[II)I

    move-result v2

    .line 1948
    :cond_b
    :goto_6
    iget-object v11, v0, Landroidx/appcompat/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    invoke-direct {v0, v11}, Landroidx/appcompat/widget/Toolbar;->shouldLayout(Landroid/view/View;)Z

    move-result v11

    .line 1949
    .local v11, "layoutTitle":Z
    iget-object v3, v0, Landroidx/appcompat/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    invoke-direct {v0, v3}, Landroidx/appcompat/widget/Toolbar;->shouldLayout(Landroid/view/View;)Z

    move-result v3

    .line 1950
    .local v3, "layoutSubtitle":Z
    const/16 v19, 0x0

    .line 1951
    .local v19, "titleHeight":I
    if-eqz v11, :cond_c

    .line 1952
    move/from16 v20, v13

    .end local v13    # "minHeight":I
    .local v20, "minHeight":I
    iget-object v13, v0, Landroidx/appcompat/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v13}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v13

    check-cast v13, Landroidx/appcompat/widget/Toolbar$LayoutParams;

    .line 1953
    .local v13, "lp":Landroidx/appcompat/widget/Toolbar$LayoutParams;
    move/from16 v21, v15

    .end local v15    # "contentInsetLeft":I
    .local v21, "contentInsetLeft":I
    iget v15, v13, Landroidx/appcompat/widget/Toolbar$LayoutParams;->topMargin:I

    move/from16 v22, v7

    .end local v7    # "paddingRight":I
    .local v22, "paddingRight":I
    iget-object v7, v0, Landroidx/appcompat/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v7

    add-int/2addr v15, v7

    iget v7, v13, Landroidx/appcompat/widget/Toolbar$LayoutParams;->bottomMargin:I

    add-int/2addr v15, v7

    add-int v19, v19, v15

    goto :goto_7

    .line 1951
    .end local v20    # "minHeight":I
    .end local v21    # "contentInsetLeft":I
    .end local v22    # "paddingRight":I
    .restart local v7    # "paddingRight":I
    .local v13, "minHeight":I
    .restart local v15    # "contentInsetLeft":I
    :cond_c
    move/from16 v22, v7

    move/from16 v20, v13

    move/from16 v21, v15

    .line 1955
    .end local v7    # "paddingRight":I
    .end local v13    # "minHeight":I
    .end local v15    # "contentInsetLeft":I
    .restart local v20    # "minHeight":I
    .restart local v21    # "contentInsetLeft":I
    .restart local v22    # "paddingRight":I
    :goto_7
    if-eqz v3, :cond_d

    .line 1956
    iget-object v7, v0, Landroidx/appcompat/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Landroidx/appcompat/widget/Toolbar$LayoutParams;

    .line 1957
    .local v7, "lp":Landroidx/appcompat/widget/Toolbar$LayoutParams;
    iget v13, v7, Landroidx/appcompat/widget/Toolbar$LayoutParams;->topMargin:I

    iget-object v15, v0, Landroidx/appcompat/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    invoke-virtual {v15}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v15

    add-int/2addr v13, v15

    iget v15, v7, Landroidx/appcompat/widget/Toolbar$LayoutParams;->bottomMargin:I

    add-int/2addr v13, v15

    add-int v19, v19, v13

    .line 1960
    .end local v7    # "lp":Landroidx/appcompat/widget/Toolbar$LayoutParams;
    :cond_d
    if-nez v11, :cond_f

    if-eqz v3, :cond_e

    goto :goto_8

    :cond_e
    move/from16 v27, v1

    move/from16 v25, v4

    move/from16 v29, v5

    move/from16 v26, v6

    move/from16 v31, v8

    move/from16 v28, v14

    goto/16 :goto_13

    .line 1962
    :cond_f
    :goto_8
    if-eqz v11, :cond_10

    iget-object v7, v0, Landroidx/appcompat/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    goto :goto_9

    :cond_10
    iget-object v7, v0, Landroidx/appcompat/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    .line 1963
    .local v7, "topChild":Landroid/view/View;
    :goto_9
    if-eqz v3, :cond_11

    iget-object v13, v0, Landroidx/appcompat/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    goto :goto_a

    :cond_11
    iget-object v13, v0, Landroidx/appcompat/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    .line 1964
    .local v13, "bottomChild":Landroid/view/View;
    :goto_a
    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v15

    check-cast v15, Landroidx/appcompat/widget/Toolbar$LayoutParams;

    .line 1965
    .local v15, "toplp":Landroidx/appcompat/widget/Toolbar$LayoutParams;
    invoke-virtual {v13}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v23

    move-object/from16 v24, v7

    .end local v7    # "topChild":Landroid/view/View;
    .local v24, "topChild":Landroid/view/View;
    move-object/from16 v7, v23

    check-cast v7, Landroidx/appcompat/widget/Toolbar$LayoutParams;

    .line 1966
    .local v7, "bottomlp":Landroidx/appcompat/widget/Toolbar$LayoutParams;
    if-eqz v11, :cond_12

    move-object/from16 v23, v13

    .end local v13    # "bottomChild":Landroid/view/View;
    .local v23, "bottomChild":Landroid/view/View;
    iget-object v13, v0, Landroidx/appcompat/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v13}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v13

    if-gtz v13, :cond_13

    goto :goto_b

    .end local v23    # "bottomChild":Landroid/view/View;
    .restart local v13    # "bottomChild":Landroid/view/View;
    :cond_12
    move-object/from16 v23, v13

    .end local v13    # "bottomChild":Landroid/view/View;
    .restart local v23    # "bottomChild":Landroid/view/View;
    :goto_b
    if-eqz v3, :cond_14

    iget-object v13, v0, Landroidx/appcompat/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    .line 1967
    invoke-virtual {v13}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v13

    if-lez v13, :cond_14

    :cond_13
    const/4 v13, 0x1

    goto :goto_c

    :cond_14
    const/4 v13, 0x0

    .line 1969
    .local v13, "titleHasWidth":Z
    :goto_c
    move/from16 v25, v4

    .end local v4    # "width":I
    .local v25, "width":I
    iget v4, v0, Landroidx/appcompat/widget/Toolbar;->mGravity:I

    and-int/lit8 v4, v4, 0x70

    sparse-switch v4, :sswitch_data_0

    .line 1975
    move/from16 v26, v6

    .end local v6    # "paddingLeft":I
    .local v26, "paddingLeft":I
    sub-int v4, v5, v8

    sub-int/2addr v4, v9

    .line 1976
    .local v4, "space":I
    sub-int v6, v4, v19

    div-int/lit8 v6, v6, 0x2

    .line 1977
    .local v6, "spaceAbove":I
    move/from16 v27, v4

    .end local v4    # "space":I
    .local v27, "space":I
    iget v4, v15, Landroidx/appcompat/widget/Toolbar$LayoutParams;->topMargin:I

    move/from16 v28, v14

    .end local v14    # "alignmentHeight":I
    .local v28, "alignmentHeight":I
    iget v14, v0, Landroidx/appcompat/widget/Toolbar;->mTitleMarginTop:I

    add-int/2addr v4, v14

    if-ge v6, v4, :cond_15

    .line 1978
    iget v4, v15, Landroidx/appcompat/widget/Toolbar$LayoutParams;->topMargin:I

    iget v14, v0, Landroidx/appcompat/widget/Toolbar;->mTitleMarginTop:I

    add-int v6, v4, v14

    move/from16 v29, v5

    goto :goto_d

    .line 1990
    .end local v26    # "paddingLeft":I
    .end local v27    # "space":I
    .end local v28    # "alignmentHeight":I
    .local v6, "paddingLeft":I
    .restart local v14    # "alignmentHeight":I
    :sswitch_0
    sub-int v4, v5, v9

    move/from16 v26, v6

    .end local v6    # "paddingLeft":I
    .restart local v26    # "paddingLeft":I
    iget v6, v7, Landroidx/appcompat/widget/Toolbar$LayoutParams;->bottomMargin:I

    sub-int/2addr v4, v6

    iget v6, v0, Landroidx/appcompat/widget/Toolbar;->mTitleMarginBottom:I

    sub-int/2addr v4, v6

    sub-int v4, v4, v19

    move/from16 v29, v5

    move/from16 v28, v14

    .local v4, "titleTop":I
    goto :goto_e

    .line 1971
    .end local v4    # "titleTop":I
    .end local v26    # "paddingLeft":I
    .restart local v6    # "paddingLeft":I
    :sswitch_1
    move/from16 v26, v6

    .end local v6    # "paddingLeft":I
    .restart local v26    # "paddingLeft":I
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/Toolbar;->getPaddingTop()I

    move-result v4

    iget v6, v15, Landroidx/appcompat/widget/Toolbar$LayoutParams;->topMargin:I

    add-int/2addr v4, v6

    iget v6, v0, Landroidx/appcompat/widget/Toolbar;->mTitleMarginTop:I

    add-int/2addr v4, v6

    .line 1972
    .restart local v4    # "titleTop":I
    move/from16 v29, v5

    move/from16 v28, v14

    goto :goto_e

    .line 1980
    .end local v4    # "titleTop":I
    .end local v14    # "alignmentHeight":I
    .local v6, "spaceAbove":I
    .restart local v27    # "space":I
    .restart local v28    # "alignmentHeight":I
    :cond_15
    sub-int v4, v5, v9

    sub-int v4, v4, v19

    sub-int/2addr v4, v6

    sub-int/2addr v4, v8

    .line 1982
    .local v4, "spaceBelow":I
    iget v14, v15, Landroidx/appcompat/widget/Toolbar$LayoutParams;->bottomMargin:I

    move/from16 v29, v5

    .end local v5    # "height":I
    .local v29, "height":I
    iget v5, v0, Landroidx/appcompat/widget/Toolbar;->mTitleMarginBottom:I

    add-int/2addr v14, v5

    if-ge v4, v14, :cond_16

    .line 1983
    iget v5, v7, Landroidx/appcompat/widget/Toolbar$LayoutParams;->bottomMargin:I

    iget v14, v0, Landroidx/appcompat/widget/Toolbar;->mTitleMarginBottom:I

    add-int/2addr v5, v14

    sub-int/2addr v5, v4

    sub-int v5, v6, v5

    const/4 v14, 0x0

    invoke-static {v14, v5}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 1987
    .end local v4    # "spaceBelow":I
    :cond_16
    :goto_d
    add-int v4, v8, v6

    .line 1988
    .local v4, "titleTop":I
    nop

    .line 1994
    .end local v6    # "spaceAbove":I
    .end local v27    # "space":I
    :goto_e
    if-eqz v1, :cond_1b

    .line 1995
    if-eqz v13, :cond_17

    iget v5, v0, Landroidx/appcompat/widget/Toolbar;->mTitleMarginStart:I

    goto :goto_f

    :cond_17
    const/4 v5, 0x0

    :goto_f
    const/4 v6, 0x1

    aget v14, v12, v6

    sub-int/2addr v5, v14

    .line 1996
    .local v5, "rd":I
    const/4 v14, 0x0

    invoke-static {v14, v5}, Ljava/lang/Math;->max(II)I

    move-result v17

    sub-int v10, v10, v17

    .line 1997
    move/from16 v27, v1

    .end local v1    # "isRtl":Z
    .local v27, "isRtl":Z
    neg-int v1, v5

    invoke-static {v14, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    aput v1, v12, v6

    .line 1998
    move v1, v10

    .line 1999
    .local v1, "titleRight":I
    move v6, v10

    .line 2001
    .local v6, "subtitleRight":I
    if-eqz v11, :cond_18

    .line 2002
    iget-object v14, v0, Landroidx/appcompat/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v14}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v14

    check-cast v14, Landroidx/appcompat/widget/Toolbar$LayoutParams;

    .line 2003
    .local v14, "lp":Landroidx/appcompat/widget/Toolbar$LayoutParams;
    move/from16 v18, v5

    .end local v5    # "rd":I
    .local v18, "rd":I
    iget-object v5, v0, Landroidx/appcompat/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v5

    sub-int v5, v1, v5

    .line 2004
    .local v5, "titleLeft":I
    move-object/from16 v30, v7

    .end local v7    # "bottomlp":Landroidx/appcompat/widget/Toolbar$LayoutParams;
    .local v30, "bottomlp":Landroidx/appcompat/widget/Toolbar$LayoutParams;
    iget-object v7, v0, Landroidx/appcompat/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v7

    add-int/2addr v7, v4

    .line 2005
    .local v7, "titleBottom":I
    move/from16 v31, v8

    .end local v8    # "paddingTop":I
    .local v31, "paddingTop":I
    iget-object v8, v0, Landroidx/appcompat/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v8, v5, v4, v1, v7}, Landroid/widget/TextView;->layout(IIII)V

    .line 2006
    iget v8, v0, Landroidx/appcompat/widget/Toolbar;->mTitleMarginEnd:I

    sub-int v1, v5, v8

    .line 2007
    iget v8, v14, Landroidx/appcompat/widget/Toolbar$LayoutParams;->bottomMargin:I

    add-int v4, v7, v8

    goto :goto_10

    .line 2001
    .end local v14    # "lp":Landroidx/appcompat/widget/Toolbar$LayoutParams;
    .end local v18    # "rd":I
    .end local v30    # "bottomlp":Landroidx/appcompat/widget/Toolbar$LayoutParams;
    .end local v31    # "paddingTop":I
    .local v5, "rd":I
    .local v7, "bottomlp":Landroidx/appcompat/widget/Toolbar$LayoutParams;
    .restart local v8    # "paddingTop":I
    :cond_18
    move/from16 v18, v5

    move-object/from16 v30, v7

    move/from16 v31, v8

    .line 2009
    .end local v5    # "rd":I
    .end local v7    # "bottomlp":Landroidx/appcompat/widget/Toolbar$LayoutParams;
    .end local v8    # "paddingTop":I
    .restart local v18    # "rd":I
    .restart local v30    # "bottomlp":Landroidx/appcompat/widget/Toolbar$LayoutParams;
    .restart local v31    # "paddingTop":I
    :goto_10
    if-eqz v3, :cond_19

    .line 2010
    iget-object v5, v0, Landroidx/appcompat/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroidx/appcompat/widget/Toolbar$LayoutParams;

    .line 2011
    .local v5, "lp":Landroidx/appcompat/widget/Toolbar$LayoutParams;
    iget v7, v5, Landroidx/appcompat/widget/Toolbar$LayoutParams;->topMargin:I

    add-int/2addr v4, v7

    .line 2012
    iget-object v7, v0, Landroidx/appcompat/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v7

    sub-int v7, v6, v7

    .line 2013
    .local v7, "subtitleLeft":I
    iget-object v8, v0, Landroidx/appcompat/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v8

    add-int/2addr v8, v4

    .line 2014
    .local v8, "subtitleBottom":I
    iget-object v14, v0, Landroidx/appcompat/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    invoke-virtual {v14, v7, v4, v6, v8}, Landroid/widget/TextView;->layout(IIII)V

    .line 2015
    iget v14, v0, Landroidx/appcompat/widget/Toolbar;->mTitleMarginEnd:I

    sub-int/2addr v6, v14

    .line 2016
    iget v14, v5, Landroidx/appcompat/widget/Toolbar$LayoutParams;->bottomMargin:I

    add-int v4, v8, v14

    .line 2018
    .end local v5    # "lp":Landroidx/appcompat/widget/Toolbar$LayoutParams;
    .end local v7    # "subtitleLeft":I
    .end local v8    # "subtitleBottom":I
    :cond_19
    if-eqz v13, :cond_1a

    .line 2019
    invoke-static {v1, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    move v10, v5

    .line 2021
    .end local v1    # "titleRight":I
    .end local v6    # "subtitleRight":I
    .end local v18    # "rd":I
    :cond_1a
    goto/16 :goto_13

    .line 2022
    .end local v27    # "isRtl":Z
    .end local v30    # "bottomlp":Landroidx/appcompat/widget/Toolbar$LayoutParams;
    .end local v31    # "paddingTop":I
    .local v1, "isRtl":Z
    .local v7, "bottomlp":Landroidx/appcompat/widget/Toolbar$LayoutParams;
    .local v8, "paddingTop":I
    :cond_1b
    move/from16 v27, v1

    move-object/from16 v30, v7

    move/from16 v31, v8

    .end local v1    # "isRtl":Z
    .end local v7    # "bottomlp":Landroidx/appcompat/widget/Toolbar$LayoutParams;
    .end local v8    # "paddingTop":I
    .restart local v27    # "isRtl":Z
    .restart local v30    # "bottomlp":Landroidx/appcompat/widget/Toolbar$LayoutParams;
    .restart local v31    # "paddingTop":I
    if-eqz v13, :cond_1c

    iget v14, v0, Landroidx/appcompat/widget/Toolbar;->mTitleMarginStart:I

    goto :goto_11

    :cond_1c
    const/4 v14, 0x0

    :goto_11
    const/4 v1, 0x0

    aget v5, v12, v1

    sub-int/2addr v14, v5

    .line 2023
    .local v14, "ld":I
    invoke-static {v1, v14}, Ljava/lang/Math;->max(II)I

    move-result v5

    add-int/2addr v2, v5

    .line 2024
    neg-int v5, v14

    invoke-static {v1, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    aput v5, v12, v1

    .line 2025
    move v1, v2

    .line 2026
    .local v1, "titleLeft":I
    move v5, v2

    .line 2028
    .local v5, "subtitleLeft":I
    if-eqz v11, :cond_1d

    .line 2029
    iget-object v6, v0, Landroidx/appcompat/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroidx/appcompat/widget/Toolbar$LayoutParams;

    .line 2030
    .local v6, "lp":Landroidx/appcompat/widget/Toolbar$LayoutParams;
    iget-object v7, v0, Landroidx/appcompat/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v7

    add-int/2addr v7, v1

    .line 2031
    .local v7, "titleRight":I
    iget-object v8, v0, Landroidx/appcompat/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v8

    add-int/2addr v8, v4

    .line 2032
    .local v8, "titleBottom":I
    move/from16 v18, v2

    .end local v2    # "left":I
    .local v18, "left":I
    iget-object v2, v0, Landroidx/appcompat/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v1, v4, v7, v8}, Landroid/widget/TextView;->layout(IIII)V

    .line 2033
    iget v2, v0, Landroidx/appcompat/widget/Toolbar;->mTitleMarginEnd:I

    add-int v1, v7, v2

    .line 2034
    iget v2, v6, Landroidx/appcompat/widget/Toolbar$LayoutParams;->bottomMargin:I

    add-int v4, v8, v2

    goto :goto_12

    .line 2028
    .end local v6    # "lp":Landroidx/appcompat/widget/Toolbar$LayoutParams;
    .end local v7    # "titleRight":I
    .end local v8    # "titleBottom":I
    .end local v18    # "left":I
    .restart local v2    # "left":I
    :cond_1d
    move/from16 v18, v2

    .line 2036
    .end local v2    # "left":I
    .restart local v18    # "left":I
    :goto_12
    if-eqz v3, :cond_1e

    .line 2037
    iget-object v2, v0, Landroidx/appcompat/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroidx/appcompat/widget/Toolbar$LayoutParams;

    .line 2038
    .local v2, "lp":Landroidx/appcompat/widget/Toolbar$LayoutParams;
    iget v6, v2, Landroidx/appcompat/widget/Toolbar$LayoutParams;->topMargin:I

    add-int/2addr v4, v6

    .line 2039
    iget-object v6, v0, Landroidx/appcompat/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v6

    add-int/2addr v6, v5

    .line 2040
    .local v6, "subtitleRight":I
    iget-object v7, v0, Landroidx/appcompat/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v7

    add-int/2addr v7, v4

    .line 2041
    .local v7, "subtitleBottom":I
    iget-object v8, v0, Landroidx/appcompat/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    invoke-virtual {v8, v5, v4, v6, v7}, Landroid/widget/TextView;->layout(IIII)V

    .line 2042
    iget v8, v0, Landroidx/appcompat/widget/Toolbar;->mTitleMarginEnd:I

    add-int v5, v6, v8

    .line 2043
    iget v8, v2, Landroidx/appcompat/widget/Toolbar$LayoutParams;->bottomMargin:I

    add-int v4, v7, v8

    .line 2045
    .end local v2    # "lp":Landroidx/appcompat/widget/Toolbar$LayoutParams;
    .end local v6    # "subtitleRight":I
    .end local v7    # "subtitleBottom":I
    :cond_1e
    if-eqz v13, :cond_1f

    .line 2046
    invoke-static {v1, v5}, Ljava/lang/Math;->max(II)I

    move-result v2

    .end local v18    # "left":I
    .local v2, "left":I
    goto :goto_13

    .line 2045
    .end local v2    # "left":I
    .restart local v18    # "left":I
    :cond_1f
    move/from16 v2, v18

    .line 2054
    .end local v1    # "titleLeft":I
    .end local v4    # "titleTop":I
    .end local v5    # "subtitleLeft":I
    .end local v13    # "titleHasWidth":Z
    .end local v14    # "ld":I
    .end local v15    # "toplp":Landroidx/appcompat/widget/Toolbar$LayoutParams;
    .end local v18    # "left":I
    .end local v23    # "bottomChild":Landroid/view/View;
    .end local v24    # "topChild":Landroid/view/View;
    .end local v30    # "bottomlp":Landroidx/appcompat/widget/Toolbar$LayoutParams;
    .restart local v2    # "left":I
    :goto_13
    iget-object v1, v0, Landroidx/appcompat/widget/Toolbar;->mTempViews:Ljava/util/ArrayList;

    const/4 v4, 0x3

    invoke-direct {v0, v1, v4}, Landroidx/appcompat/widget/Toolbar;->addCustomViewsWithGravity(Ljava/util/List;I)V

    .line 2055
    iget-object v1, v0, Landroidx/appcompat/widget/Toolbar;->mTempViews:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 2056
    .local v1, "leftViewsCount":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_14
    if-ge v4, v1, :cond_20

    .line 2057
    iget-object v5, v0, Landroidx/appcompat/widget/Toolbar;->mTempViews:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    move/from16 v6, v28

    .end local v28    # "alignmentHeight":I
    .local v6, "alignmentHeight":I
    invoke-direct {v0, v5, v2, v12, v6}, Landroidx/appcompat/widget/Toolbar;->layoutChildLeft(Landroid/view/View;I[II)I

    move-result v2

    .line 2056
    add-int/lit8 v4, v4, 0x1

    goto :goto_14

    .end local v6    # "alignmentHeight":I
    .restart local v28    # "alignmentHeight":I
    :cond_20
    move/from16 v6, v28

    .line 2061
    .end local v4    # "i":I
    .end local v28    # "alignmentHeight":I
    .restart local v6    # "alignmentHeight":I
    iget-object v4, v0, Landroidx/appcompat/widget/Toolbar;->mTempViews:Ljava/util/ArrayList;

    const/4 v5, 0x5

    invoke-direct {v0, v4, v5}, Landroidx/appcompat/widget/Toolbar;->addCustomViewsWithGravity(Ljava/util/List;I)V

    .line 2062
    iget-object v4, v0, Landroidx/appcompat/widget/Toolbar;->mTempViews:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 2063
    .local v4, "rightViewsCount":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_15
    if-ge v5, v4, :cond_21

    .line 2064
    iget-object v7, v0, Landroidx/appcompat/widget/Toolbar;->mTempViews:Ljava/util/ArrayList;

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/View;

    invoke-direct {v0, v7, v10, v12, v6}, Landroidx/appcompat/widget/Toolbar;->layoutChildRight(Landroid/view/View;I[II)I

    move-result v10

    .line 2063
    add-int/lit8 v5, v5, 0x1

    goto :goto_15

    .line 2070
    .end local v5    # "i":I
    :cond_21
    iget-object v5, v0, Landroidx/appcompat/widget/Toolbar;->mTempViews:Ljava/util/ArrayList;

    const/4 v7, 0x1

    invoke-direct {v0, v5, v7}, Landroidx/appcompat/widget/Toolbar;->addCustomViewsWithGravity(Ljava/util/List;I)V

    .line 2071
    iget-object v5, v0, Landroidx/appcompat/widget/Toolbar;->mTempViews:Ljava/util/ArrayList;

    invoke-direct {v0, v5, v12}, Landroidx/appcompat/widget/Toolbar;->getViewListMeasuredWidth(Ljava/util/List;[I)I

    move-result v5

    .line 2072
    .local v5, "centerViewsWidth":I
    sub-int v7, v25, v26

    sub-int v7, v7, v22

    div-int/lit8 v7, v7, 0x2

    add-int v7, v26, v7

    .line 2073
    .local v7, "parentCenter":I
    div-int/lit8 v8, v5, 0x2

    .line 2074
    .local v8, "halfCenterViewsWidth":I
    sub-int v13, v7, v8

    .line 2075
    .local v13, "centerLeft":I
    add-int v14, v13, v5

    .line 2076
    .local v14, "centerRight":I
    if-ge v13, v2, :cond_22

    .line 2077
    move v13, v2

    goto :goto_16

    .line 2078
    :cond_22
    if-le v14, v10, :cond_23

    .line 2079
    sub-int v15, v14, v10

    sub-int/2addr v13, v15

    .line 2082
    :cond_23
    :goto_16
    iget-object v15, v0, Landroidx/appcompat/widget/Toolbar;->mTempViews:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v15

    .line 2083
    .local v15, "centerViewsCount":I
    const/16 v17, 0x0

    move/from16 v32, v17

    move/from16 v17, v1

    move/from16 v1, v32

    .local v1, "i":I
    .local v17, "leftViewsCount":I
    :goto_17
    if-ge v1, v15, :cond_24

    .line 2084
    move/from16 v18, v2

    .end local v2    # "left":I
    .restart local v18    # "left":I
    iget-object v2, v0, Landroidx/appcompat/widget/Toolbar;->mTempViews:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-direct {v0, v2, v13, v12, v6}, Landroidx/appcompat/widget/Toolbar;->layoutChildLeft(Landroid/view/View;I[II)I

    move-result v13

    .line 2083
    add-int/lit8 v1, v1, 0x1

    move/from16 v2, v18

    goto :goto_17

    .line 2088
    .end local v1    # "i":I
    .end local v18    # "left":I
    .restart local v2    # "left":I
    :cond_24
    iget-object v1, v0, Landroidx/appcompat/widget/Toolbar;->mTempViews:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 2089
    return-void

    :sswitch_data_0
    .sparse-switch
        0x30 -> :sswitch_1
        0x50 -> :sswitch_0
    .end sparse-switch
.end method

.method protected onMeasure(II)V
    .locals 23
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 1740
    move-object/from16 v7, p0

    const/4 v8, 0x0

    .line 1741
    .local v8, "width":I
    const/4 v9, 0x0

    .line 1742
    .local v9, "height":I
    const/4 v10, 0x0

    .line 1744
    .local v10, "childState":I
    iget-object v11, v7, Landroidx/appcompat/widget/Toolbar;->mTempMargins:[I

    .line 1747
    .local v11, "collapsingMargins":[I
    invoke-static/range {p0 .. p0}, Landroidx/appcompat/widget/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1748
    const/4 v0, 0x1

    .line 1749
    .local v0, "marginStartIndex":I
    const/4 v1, 0x0

    move v12, v0

    move v13, v1

    .local v1, "marginEndIndex":I
    goto :goto_0

    .line 1751
    .end local v0    # "marginStartIndex":I
    .end local v1    # "marginEndIndex":I
    :cond_0
    const/4 v0, 0x0

    .line 1752
    .restart local v0    # "marginStartIndex":I
    const/4 v1, 0x1

    move v12, v0

    move v13, v1

    .line 1757
    .end local v0    # "marginStartIndex":I
    .local v12, "marginStartIndex":I
    .local v13, "marginEndIndex":I
    :goto_0
    const/4 v14, 0x0

    .line 1758
    .local v14, "navWidth":I
    iget-object v0, v7, Landroidx/appcompat/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    invoke-direct {v7, v0}, Landroidx/appcompat/widget/Toolbar;->shouldLayout(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1759
    iget-object v1, v7, Landroidx/appcompat/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    const/4 v5, 0x0

    iget v6, v7, Landroidx/appcompat/widget/Toolbar;->mMaxButtonHeight:I

    move-object/from16 v0, p0

    move/from16 v2, p1

    move v3, v8

    move/from16 v4, p2

    invoke-direct/range {v0 .. v6}, Landroidx/appcompat/widget/Toolbar;->measureChildConstrained(Landroid/view/View;IIIII)V

    .line 1761
    iget-object v0, v7, Landroidx/appcompat/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getMeasuredWidth()I

    move-result v0

    iget-object v1, v7, Landroidx/appcompat/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    invoke-direct {v7, v1}, Landroidx/appcompat/widget/Toolbar;->getHorizontalMargins(Landroid/view/View;)I

    move-result v1

    add-int v14, v0, v1

    .line 1762
    iget-object v0, v7, Landroidx/appcompat/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getMeasuredHeight()I

    move-result v0

    iget-object v1, v7, Landroidx/appcompat/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    .line 1763
    invoke-direct {v7, v1}, Landroidx/appcompat/widget/Toolbar;->getVerticalMargins(Landroid/view/View;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1762
    invoke-static {v9, v0}, Ljava/lang/Math;->max(II)I

    move-result v9

    .line 1764
    iget-object v0, v7, Landroidx/appcompat/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    .line 1765
    invoke-virtual {v0}, Landroid/widget/ImageButton;->getMeasuredState()I

    move-result v0

    .line 1764
    invoke-static {v10, v0}, Landroid/view/View;->combineMeasuredStates(II)I

    move-result v10

    .line 1768
    :cond_1
    iget-object v0, v7, Landroidx/appcompat/widget/Toolbar;->mCollapseButtonView:Landroid/widget/ImageButton;

    invoke-direct {v7, v0}, Landroidx/appcompat/widget/Toolbar;->shouldLayout(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1769
    iget-object v1, v7, Landroidx/appcompat/widget/Toolbar;->mCollapseButtonView:Landroid/widget/ImageButton;

    const/4 v5, 0x0

    iget v6, v7, Landroidx/appcompat/widget/Toolbar;->mMaxButtonHeight:I

    move-object/from16 v0, p0

    move/from16 v2, p1

    move v3, v8

    move/from16 v4, p2

    invoke-direct/range {v0 .. v6}, Landroidx/appcompat/widget/Toolbar;->measureChildConstrained(Landroid/view/View;IIIII)V

    .line 1771
    iget-object v0, v7, Landroidx/appcompat/widget/Toolbar;->mCollapseButtonView:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getMeasuredWidth()I

    move-result v0

    iget-object v1, v7, Landroidx/appcompat/widget/Toolbar;->mCollapseButtonView:Landroid/widget/ImageButton;

    .line 1772
    invoke-direct {v7, v1}, Landroidx/appcompat/widget/Toolbar;->getHorizontalMargins(Landroid/view/View;)I

    move-result v1

    add-int v14, v0, v1

    .line 1773
    iget-object v0, v7, Landroidx/appcompat/widget/Toolbar;->mCollapseButtonView:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getMeasuredHeight()I

    move-result v0

    iget-object v1, v7, Landroidx/appcompat/widget/Toolbar;->mCollapseButtonView:Landroid/widget/ImageButton;

    .line 1774
    invoke-direct {v7, v1}, Landroidx/appcompat/widget/Toolbar;->getVerticalMargins(Landroid/view/View;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1773
    invoke-static {v9, v0}, Ljava/lang/Math;->max(II)I

    move-result v9

    .line 1775
    iget-object v0, v7, Landroidx/appcompat/widget/Toolbar;->mCollapseButtonView:Landroid/widget/ImageButton;

    .line 1776
    invoke-virtual {v0}, Landroid/widget/ImageButton;->getMeasuredState()I

    move-result v0

    .line 1775
    invoke-static {v10, v0}, Landroid/view/View;->combineMeasuredStates(II)I

    move-result v10

    .line 1779
    :cond_2
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/Toolbar;->getCurrentContentInsetStart()I

    move-result v15

    .line 1780
    .local v15, "contentInsetStart":I
    invoke-static {v15, v14}, Ljava/lang/Math;->max(II)I

    move-result v0

    add-int/2addr v8, v0

    .line 1781
    sub-int v0, v15, v14

    const/4 v6, 0x0

    invoke-static {v6, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    aput v0, v11, v12

    .line 1783
    const/16 v16, 0x0

    .line 1784
    .local v16, "menuWidth":I
    iget-object v0, v7, Landroidx/appcompat/widget/Toolbar;->mMenuView:Landroidx/appcompat/widget/ActionMenuView;

    invoke-direct {v7, v0}, Landroidx/appcompat/widget/Toolbar;->shouldLayout(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1785
    iget-object v1, v7, Landroidx/appcompat/widget/Toolbar;->mMenuView:Landroidx/appcompat/widget/ActionMenuView;

    const/4 v5, 0x0

    iget v4, v7, Landroidx/appcompat/widget/Toolbar;->mMaxButtonHeight:I

    move-object/from16 v0, p0

    move/from16 v2, p1

    move v3, v8

    move/from16 v17, v4

    move/from16 v4, p2

    move/from16 v18, v12

    const/4 v12, 0x0

    .end local v12    # "marginStartIndex":I
    .local v18, "marginStartIndex":I
    move/from16 v6, v17

    invoke-direct/range {v0 .. v6}, Landroidx/appcompat/widget/Toolbar;->measureChildConstrained(Landroid/view/View;IIIII)V

    .line 1787
    iget-object v0, v7, Landroidx/appcompat/widget/Toolbar;->mMenuView:Landroidx/appcompat/widget/ActionMenuView;

    invoke-virtual {v0}, Landroidx/appcompat/widget/ActionMenuView;->getMeasuredWidth()I

    move-result v0

    iget-object v1, v7, Landroidx/appcompat/widget/Toolbar;->mMenuView:Landroidx/appcompat/widget/ActionMenuView;

    invoke-direct {v7, v1}, Landroidx/appcompat/widget/Toolbar;->getHorizontalMargins(Landroid/view/View;)I

    move-result v1

    add-int v16, v0, v1

    .line 1788
    iget-object v0, v7, Landroidx/appcompat/widget/Toolbar;->mMenuView:Landroidx/appcompat/widget/ActionMenuView;

    invoke-virtual {v0}, Landroidx/appcompat/widget/ActionMenuView;->getMeasuredHeight()I

    move-result v0

    iget-object v1, v7, Landroidx/appcompat/widget/Toolbar;->mMenuView:Landroidx/appcompat/widget/ActionMenuView;

    .line 1789
    invoke-direct {v7, v1}, Landroidx/appcompat/widget/Toolbar;->getVerticalMargins(Landroid/view/View;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1788
    invoke-static {v9, v0}, Ljava/lang/Math;->max(II)I

    move-result v9

    .line 1790
    iget-object v0, v7, Landroidx/appcompat/widget/Toolbar;->mMenuView:Landroidx/appcompat/widget/ActionMenuView;

    .line 1791
    invoke-virtual {v0}, Landroidx/appcompat/widget/ActionMenuView;->getMeasuredState()I

    move-result v0

    .line 1790
    invoke-static {v10, v0}, Landroid/view/View;->combineMeasuredStates(II)I

    move-result v10

    move/from16 v6, v16

    goto :goto_1

    .line 1784
    .end local v18    # "marginStartIndex":I
    .restart local v12    # "marginStartIndex":I
    :cond_3
    move/from16 v18, v12

    const/4 v12, 0x0

    .end local v12    # "marginStartIndex":I
    .restart local v18    # "marginStartIndex":I
    move/from16 v6, v16

    .line 1794
    .end local v16    # "menuWidth":I
    .local v6, "menuWidth":I
    :goto_1
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/Toolbar;->getCurrentContentInsetEnd()I

    move-result v5

    .line 1795
    .local v5, "contentInsetEnd":I
    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v0

    add-int/2addr v8, v0

    .line 1796
    sub-int v0, v5, v6

    invoke-static {v12, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    aput v0, v11, v13

    .line 1798
    iget-object v0, v7, Landroidx/appcompat/widget/Toolbar;->mExpandedActionView:Landroid/view/View;

    invoke-direct {v7, v0}, Landroidx/appcompat/widget/Toolbar;->shouldLayout(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1799
    iget-object v1, v7, Landroidx/appcompat/widget/Toolbar;->mExpandedActionView:Landroid/view/View;

    const/16 v16, 0x0

    move-object/from16 v0, p0

    move/from16 v2, p1

    move v3, v8

    move/from16 v4, p2

    move/from16 v17, v5

    .end local v5    # "contentInsetEnd":I
    .local v17, "contentInsetEnd":I
    move/from16 v5, v16

    move/from16 v16, v6

    .end local v6    # "menuWidth":I
    .restart local v16    # "menuWidth":I
    move-object v6, v11

    invoke-direct/range {v0 .. v6}, Landroidx/appcompat/widget/Toolbar;->measureChildCollapseMargins(Landroid/view/View;IIII[I)I

    move-result v0

    add-int/2addr v8, v0

    .line 1801
    iget-object v0, v7, Landroidx/appcompat/widget/Toolbar;->mExpandedActionView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    iget-object v1, v7, Landroidx/appcompat/widget/Toolbar;->mExpandedActionView:Landroid/view/View;

    .line 1802
    invoke-direct {v7, v1}, Landroidx/appcompat/widget/Toolbar;->getVerticalMargins(Landroid/view/View;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1801
    invoke-static {v9, v0}, Ljava/lang/Math;->max(II)I

    move-result v9

    .line 1803
    iget-object v0, v7, Landroidx/appcompat/widget/Toolbar;->mExpandedActionView:Landroid/view/View;

    .line 1804
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredState()I

    move-result v0

    .line 1803
    invoke-static {v10, v0}, Landroid/view/View;->combineMeasuredStates(II)I

    move-result v10

    goto :goto_2

    .line 1798
    .end local v16    # "menuWidth":I
    .end local v17    # "contentInsetEnd":I
    .restart local v5    # "contentInsetEnd":I
    .restart local v6    # "menuWidth":I
    :cond_4
    move/from16 v17, v5

    move/from16 v16, v6

    .line 1807
    .end local v5    # "contentInsetEnd":I
    .end local v6    # "menuWidth":I
    .restart local v16    # "menuWidth":I
    .restart local v17    # "contentInsetEnd":I
    :goto_2
    iget-object v0, v7, Landroidx/appcompat/widget/Toolbar;->mLogoView:Landroid/widget/ImageView;

    invoke-direct {v7, v0}, Landroidx/appcompat/widget/Toolbar;->shouldLayout(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1808
    iget-object v1, v7, Landroidx/appcompat/widget/Toolbar;->mLogoView:Landroid/widget/ImageView;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move/from16 v2, p1

    move v3, v8

    move/from16 v4, p2

    move-object v6, v11

    invoke-direct/range {v0 .. v6}, Landroidx/appcompat/widget/Toolbar;->measureChildCollapseMargins(Landroid/view/View;IIII[I)I

    move-result v0

    add-int/2addr v8, v0

    .line 1810
    iget-object v0, v7, Landroidx/appcompat/widget/Toolbar;->mLogoView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v0

    iget-object v1, v7, Landroidx/appcompat/widget/Toolbar;->mLogoView:Landroid/widget/ImageView;

    .line 1811
    invoke-direct {v7, v1}, Landroidx/appcompat/widget/Toolbar;->getVerticalMargins(Landroid/view/View;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1810
    invoke-static {v9, v0}, Ljava/lang/Math;->max(II)I

    move-result v9

    .line 1812
    iget-object v0, v7, Landroidx/appcompat/widget/Toolbar;->mLogoView:Landroid/widget/ImageView;

    .line 1813
    invoke-virtual {v0}, Landroid/widget/ImageView;->getMeasuredState()I

    move-result v0

    .line 1812
    invoke-static {v10, v0}, Landroid/view/View;->combineMeasuredStates(II)I

    move-result v10

    .line 1816
    :cond_5
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/Toolbar;->getChildCount()I

    move-result v6

    .line 1817
    .local v6, "childCount":I
    const/4 v0, 0x0

    move v5, v10

    move v10, v9

    move v9, v8

    move v8, v0

    .local v5, "childState":I
    .local v8, "i":I
    .local v9, "width":I
    .local v10, "height":I
    :goto_3
    if-ge v8, v6, :cond_8

    .line 1818
    invoke-virtual {v7, v8}, Landroidx/appcompat/widget/Toolbar;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 1819
    .local v4, "child":Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Landroidx/appcompat/widget/Toolbar$LayoutParams;

    .line 1820
    .local v3, "lp":Landroidx/appcompat/widget/Toolbar$LayoutParams;
    iget v0, v3, Landroidx/appcompat/widget/Toolbar$LayoutParams;->mViewType:I

    if-nez v0, :cond_7

    invoke-direct {v7, v4}, Landroidx/appcompat/widget/Toolbar;->shouldLayout(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 1822
    move v12, v5

    move/from16 v19, v6

    goto :goto_4

    .line 1825
    :cond_6
    const/16 v19, 0x0

    move-object/from16 v0, p0

    move-object v1, v4

    move/from16 v2, p1

    move-object/from16 v20, v3

    .end local v3    # "lp":Landroidx/appcompat/widget/Toolbar$LayoutParams;
    .local v20, "lp":Landroidx/appcompat/widget/Toolbar$LayoutParams;
    move v3, v9

    move-object/from16 v21, v4

    .end local v4    # "child":Landroid/view/View;
    .local v21, "child":Landroid/view/View;
    move/from16 v4, p2

    move v12, v5

    .end local v5    # "childState":I
    .local v12, "childState":I
    move/from16 v5, v19

    move/from16 v19, v6

    .end local v6    # "childCount":I
    .local v19, "childCount":I
    move-object v6, v11

    invoke-direct/range {v0 .. v6}, Landroidx/appcompat/widget/Toolbar;->measureChildCollapseMargins(Landroid/view/View;IIII[I)I

    move-result v0

    add-int/2addr v9, v0

    .line 1827
    invoke-virtual/range {v21 .. v21}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    move-object/from16 v1, v21

    .end local v21    # "child":Landroid/view/View;
    .local v1, "child":Landroid/view/View;
    invoke-direct {v7, v1}, Landroidx/appcompat/widget/Toolbar;->getVerticalMargins(Landroid/view/View;)I

    move-result v2

    add-int/2addr v0, v2

    invoke-static {v10, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1828
    .end local v10    # "height":I
    .local v0, "height":I
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredState()I

    move-result v2

    invoke-static {v12, v2}, Landroid/view/View;->combineMeasuredStates(II)I

    move-result v2

    move v10, v0

    move v5, v2

    .end local v12    # "childState":I
    .local v2, "childState":I
    goto :goto_5

    .line 1820
    .end local v0    # "height":I
    .end local v1    # "child":Landroid/view/View;
    .end local v2    # "childState":I
    .end local v19    # "childCount":I
    .end local v20    # "lp":Landroidx/appcompat/widget/Toolbar$LayoutParams;
    .restart local v3    # "lp":Landroidx/appcompat/widget/Toolbar$LayoutParams;
    .restart local v4    # "child":Landroid/view/View;
    .restart local v5    # "childState":I
    .restart local v6    # "childCount":I
    .restart local v10    # "height":I
    :cond_7
    move-object/from16 v20, v3

    move-object v1, v4

    move v12, v5

    move/from16 v19, v6

    .line 1817
    .end local v3    # "lp":Landroidx/appcompat/widget/Toolbar$LayoutParams;
    .end local v4    # "child":Landroid/view/View;
    .end local v5    # "childState":I
    .end local v6    # "childCount":I
    .restart local v12    # "childState":I
    .restart local v19    # "childCount":I
    :goto_4
    move v5, v12

    .end local v12    # "childState":I
    .restart local v5    # "childState":I
    :goto_5
    add-int/lit8 v8, v8, 0x1

    move/from16 v6, v19

    const/4 v12, 0x0

    goto :goto_3

    .end local v19    # "childCount":I
    .restart local v6    # "childCount":I
    :cond_8
    move v12, v5

    move/from16 v19, v6

    .line 1831
    .end local v5    # "childState":I
    .end local v6    # "childCount":I
    .end local v8    # "i":I
    .restart local v12    # "childState":I
    .restart local v19    # "childCount":I
    const/4 v8, 0x0

    .line 1832
    .local v8, "titleWidth":I
    const/16 v20, 0x0

    .line 1833
    .local v20, "titleHeight":I
    iget v0, v7, Landroidx/appcompat/widget/Toolbar;->mTitleMarginTop:I

    iget v1, v7, Landroidx/appcompat/widget/Toolbar;->mTitleMarginBottom:I

    add-int v21, v0, v1

    .line 1834
    .local v21, "titleVertMargins":I
    iget v0, v7, Landroidx/appcompat/widget/Toolbar;->mTitleMarginStart:I

    iget v1, v7, Landroidx/appcompat/widget/Toolbar;->mTitleMarginEnd:I

    add-int v22, v0, v1

    .line 1835
    .local v22, "titleHorizMargins":I
    iget-object v0, v7, Landroidx/appcompat/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    invoke-direct {v7, v0}, Landroidx/appcompat/widget/Toolbar;->shouldLayout(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1836
    iget-object v1, v7, Landroidx/appcompat/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    add-int v3, v9, v22

    move-object/from16 v0, p0

    move/from16 v2, p1

    move/from16 v4, p2

    move/from16 v5, v21

    move-object v6, v11

    invoke-direct/range {v0 .. v6}, Landroidx/appcompat/widget/Toolbar;->measureChildCollapseMargins(Landroid/view/View;IIII[I)I

    move-result v0

    .line 1839
    .end local v8    # "titleWidth":I
    .local v0, "titleWidth":I
    iget-object v1, v7, Landroidx/appcompat/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v1

    iget-object v2, v7, Landroidx/appcompat/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    invoke-direct {v7, v2}, Landroidx/appcompat/widget/Toolbar;->getHorizontalMargins(Landroid/view/View;)I

    move-result v2

    add-int v8, v1, v2

    .line 1840
    .end local v0    # "titleWidth":I
    .restart local v8    # "titleWidth":I
    iget-object v0, v7, Landroidx/appcompat/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v0

    iget-object v1, v7, Landroidx/appcompat/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    invoke-direct {v7, v1}, Landroidx/appcompat/widget/Toolbar;->getVerticalMargins(Landroid/view/View;)I

    move-result v1

    add-int v20, v0, v1

    .line 1841
    iget-object v0, v7, Landroidx/appcompat/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getMeasuredState()I

    move-result v0

    invoke-static {v12, v0}, Landroid/view/View;->combineMeasuredStates(II)I

    move-result v5

    move v12, v5

    .line 1843
    :cond_9
    iget-object v0, v7, Landroidx/appcompat/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    invoke-direct {v7, v0}, Landroidx/appcompat/widget/Toolbar;->shouldLayout(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1844
    iget-object v1, v7, Landroidx/appcompat/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    add-int v3, v9, v22

    add-int v5, v20, v21

    move-object/from16 v0, p0

    move/from16 v2, p1

    move/from16 v4, p2

    move-object v6, v11

    invoke-direct/range {v0 .. v6}, Landroidx/appcompat/widget/Toolbar;->measureChildCollapseMargins(Landroid/view/View;IIII[I)I

    move-result v0

    invoke-static {v8, v0}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 1848
    iget-object v0, v7, Landroidx/appcompat/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v0

    iget-object v1, v7, Landroidx/appcompat/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    .line 1849
    invoke-direct {v7, v1}, Landroidx/appcompat/widget/Toolbar;->getVerticalMargins(Landroid/view/View;)I

    move-result v1

    add-int/2addr v0, v1

    add-int v20, v20, v0

    .line 1850
    iget-object v0, v7, Landroidx/appcompat/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    .line 1851
    invoke-virtual {v0}, Landroid/widget/TextView;->getMeasuredState()I

    move-result v0

    .line 1850
    invoke-static {v12, v0}, Landroid/view/View;->combineMeasuredStates(II)I

    move-result v12

    move/from16 v0, v20

    goto :goto_6

    .line 1843
    :cond_a
    move/from16 v0, v20

    .line 1854
    .end local v20    # "titleHeight":I
    .local v0, "titleHeight":I
    :goto_6
    add-int/2addr v9, v8

    .line 1855
    invoke-static {v10, v0}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 1859
    .end local v10    # "height":I
    .local v1, "height":I
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/Toolbar;->getPaddingLeft()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/Toolbar;->getPaddingRight()I

    move-result v3

    add-int/2addr v2, v3

    add-int/2addr v9, v2

    .line 1860
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/Toolbar;->getPaddingTop()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/Toolbar;->getPaddingBottom()I

    move-result v3

    add-int/2addr v2, v3

    add-int/2addr v1, v2

    .line 1862
    nop

    .line 1863
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/Toolbar;->getSuggestedMinimumWidth()I

    move-result v2

    invoke-static {v9, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    const/high16 v3, -0x1000000

    and-int/2addr v3, v12

    .line 1862
    move/from16 v4, p1

    invoke-static {v2, v4, v3}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result v2

    .line 1865
    .local v2, "measuredWidth":I
    nop

    .line 1866
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/Toolbar;->getSuggestedMinimumHeight()I

    move-result v3

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    shl-int/lit8 v5, v12, 0x10

    .line 1865
    move/from16 v6, p2

    invoke-static {v3, v6, v5}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result v3

    .line 1869
    .local v3, "measuredHeight":I
    invoke-direct/range {p0 .. p0}, Landroidx/appcompat/widget/Toolbar;->shouldCollapse()Z

    move-result v5

    if-eqz v5, :cond_b

    const/4 v5, 0x0

    goto :goto_7

    :cond_b
    move v5, v3

    :goto_7
    invoke-virtual {v7, v2, v5}, Landroidx/appcompat/widget/Toolbar;->setMeasuredDimension(II)V

    .line 1870
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 3
    .param p1, "state"    # Landroid/os/Parcelable;

    .line 1592
    instance-of v0, p1, Landroidx/appcompat/widget/Toolbar$SavedState;

    if-nez v0, :cond_0

    .line 1593
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1594
    return-void

    .line 1597
    :cond_0
    move-object v0, p1

    check-cast v0, Landroidx/appcompat/widget/Toolbar$SavedState;

    .line 1598
    .local v0, "ss":Landroidx/appcompat/widget/Toolbar$SavedState;
    invoke-virtual {v0}, Landroidx/appcompat/widget/Toolbar$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1600
    iget-object v1, p0, Landroidx/appcompat/widget/Toolbar;->mMenuView:Landroidx/appcompat/widget/ActionMenuView;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroidx/appcompat/widget/ActionMenuView;->peekMenu()Landroidx/appcompat/view/menu/MenuBuilder;

    move-result-object v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 1601
    .local v1, "menu":Landroid/view/Menu;
    :goto_0
    iget v2, v0, Landroidx/appcompat/widget/Toolbar$SavedState;->expandedMenuItemId:I

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroidx/appcompat/widget/Toolbar;->mExpandedMenuPresenter:Landroidx/appcompat/widget/Toolbar$ExpandedActionViewMenuPresenter;

    if-eqz v2, :cond_2

    if-eqz v1, :cond_2

    .line 1602
    iget v2, v0, Landroidx/appcompat/widget/Toolbar$SavedState;->expandedMenuItemId:I

    invoke-interface {v1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    .line 1603
    .local v2, "item":Landroid/view/MenuItem;
    if-eqz v2, :cond_2

    .line 1604
    invoke-interface {v2}, Landroid/view/MenuItem;->expandActionView()Z

    .line 1608
    .end local v2    # "item":Landroid/view/MenuItem;
    :cond_2
    iget-boolean v2, v0, Landroidx/appcompat/widget/Toolbar$SavedState;->isOverflowOpen:Z

    if-eqz v2, :cond_3

    .line 1609
    invoke-direct {p0}, Landroidx/appcompat/widget/Toolbar;->postShowOverflowMenu()V

    .line 1611
    :cond_3
    return-void
.end method

.method public onRtlPropertiesChanged(I)V
    .locals 2
    .param p1, "layoutDirection"    # I

    .line 513
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_0

    .line 514
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onRtlPropertiesChanged(I)V

    .line 517
    :cond_0
    invoke-direct {p0}, Landroidx/appcompat/widget/Toolbar;->ensureContentInsets()V

    .line 518
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->mContentInsets:Landroidx/appcompat/widget/RtlSpacingHelper;

    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/RtlSpacingHelper;->setDirection(Z)V

    .line 519
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .line 1580
    new-instance v0, Landroidx/appcompat/widget/Toolbar$SavedState;

    invoke-super {p0}, Landroid/view/ViewGroup;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/appcompat/widget/Toolbar$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 1582
    .local v0, "state":Landroidx/appcompat/widget/Toolbar$SavedState;
    iget-object v1, p0, Landroidx/appcompat/widget/Toolbar;->mExpandedMenuPresenter:Landroidx/appcompat/widget/Toolbar$ExpandedActionViewMenuPresenter;

    if-eqz v1, :cond_0

    iget-object v1, v1, Landroidx/appcompat/widget/Toolbar$ExpandedActionViewMenuPresenter;->mCurrentExpandedItem:Landroidx/appcompat/view/menu/MenuItemImpl;

    if-eqz v1, :cond_0

    .line 1583
    iget-object v1, p0, Landroidx/appcompat/widget/Toolbar;->mExpandedMenuPresenter:Landroidx/appcompat/widget/Toolbar$ExpandedActionViewMenuPresenter;

    iget-object v1, v1, Landroidx/appcompat/widget/Toolbar$ExpandedActionViewMenuPresenter;->mCurrentExpandedItem:Landroidx/appcompat/view/menu/MenuItemImpl;

    invoke-virtual {v1}, Landroidx/appcompat/view/menu/MenuItemImpl;->getItemId()I

    move-result v1

    iput v1, v0, Landroidx/appcompat/widget/Toolbar$SavedState;->expandedMenuItemId:I

    .line 1586
    :cond_0
    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->isOverflowMenuShowing()Z

    move-result v1

    iput-boolean v1, v0, Landroidx/appcompat/widget/Toolbar$SavedState;->isOverflowOpen:Z

    .line 1587
    return-object v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 1631
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 1632
    .local v0, "action":I
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1633
    iput-boolean v1, p0, Landroidx/appcompat/widget/Toolbar;->mEatingTouch:Z

    .line 1636
    :cond_0
    iget-boolean v2, p0, Landroidx/appcompat/widget/Toolbar;->mEatingTouch:Z

    const/4 v3, 0x1

    if-nez v2, :cond_1

    .line 1637
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    .line 1638
    .local v2, "handled":Z
    if-nez v0, :cond_1

    if-nez v2, :cond_1

    .line 1639
    iput-boolean v3, p0, Landroidx/appcompat/widget/Toolbar;->mEatingTouch:Z

    .line 1643
    .end local v2    # "handled":Z
    :cond_1
    if-eq v0, v3, :cond_2

    const/4 v2, 0x3

    if-ne v0, v2, :cond_3

    .line 1644
    :cond_2
    iput-boolean v1, p0, Landroidx/appcompat/widget/Toolbar;->mEatingTouch:Z

    .line 1647
    :cond_3
    return v3
.end method

.method removeChildrenForExpandedActionView()V
    .locals 6

    .line 2283
    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->getChildCount()I

    move-result v0

    .line 2285
    .local v0, "childCount":I
    add-int/lit8 v1, v0, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_1

    .line 2286
    invoke-virtual {p0, v1}, Landroidx/appcompat/widget/Toolbar;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 2287
    .local v2, "child":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroidx/appcompat/widget/Toolbar$LayoutParams;

    .line 2288
    .local v3, "lp":Landroidx/appcompat/widget/Toolbar$LayoutParams;
    iget v4, v3, Landroidx/appcompat/widget/Toolbar$LayoutParams;->mViewType:I

    const/4 v5, 0x2

    if-eq v4, v5, :cond_0

    iget-object v4, p0, Landroidx/appcompat/widget/Toolbar;->mMenuView:Landroidx/appcompat/widget/ActionMenuView;

    if-eq v2, v4, :cond_0

    .line 2289
    invoke-virtual {p0, v1}, Landroidx/appcompat/widget/Toolbar;->removeViewAt(I)V

    .line 2290
    iget-object v4, p0, Landroidx/appcompat/widget/Toolbar;->mHiddenViews:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2285
    .end local v2    # "child":Landroid/view/View;
    .end local v3    # "lp":Landroidx/appcompat/widget/Toolbar$LayoutParams;
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 2293
    .end local v1    # "i":I
    :cond_1
    return-void
.end method

.method public removeMenuProvider(Landroidx/core/view/MenuProvider;)V
    .locals 1
    .param p1, "provider"    # Landroidx/core/view/MenuProvider;

    .line 2413
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->mMenuHostHelper:Landroidx/core/view/MenuHostHelper;

    invoke-virtual {v0, p1}, Landroidx/core/view/MenuHostHelper;->removeMenuProvider(Landroidx/core/view/MenuProvider;)V

    .line 2414
    return-void
.end method

.method public setCollapseContentDescription(I)V
    .locals 1
    .param p1, "resId"    # I

    .line 1079
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/Toolbar;->setCollapseContentDescription(Ljava/lang/CharSequence;)V

    .line 1080
    return-void
.end method

.method public setCollapseContentDescription(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "description"    # Ljava/lang/CharSequence;

    .line 1093
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1094
    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->ensureCollapseButtonView()V

    .line 1096
    :cond_0
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->mCollapseButtonView:Landroid/widget/ImageButton;

    if-eqz v0, :cond_1

    .line 1097
    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1099
    :cond_1
    return-void
.end method

.method public setCollapseIcon(I)V
    .locals 1
    .param p1, "resId"    # I

    .line 1125
    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroidx/appcompat/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/Toolbar;->setCollapseIcon(Landroid/graphics/drawable/Drawable;)V

    .line 1126
    return-void
.end method

.method public setCollapseIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;

    .line 1139
    if-eqz p1, :cond_0

    .line 1140
    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->ensureCollapseButtonView()V

    .line 1141
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->mCollapseButtonView:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 1142
    :cond_0
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->mCollapseButtonView:Landroid/widget/ImageButton;

    if-eqz v0, :cond_1

    .line 1143
    iget-object v1, p0, Landroidx/appcompat/widget/Toolbar;->mCollapseIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1145
    :cond_1
    :goto_0
    return-void
.end method

.method public setCollapsible(Z)V
    .locals 0
    .param p1, "collapsible"    # Z

    .line 2315
    iput-boolean p1, p0, Landroidx/appcompat/widget/Toolbar;->mCollapsible:Z

    .line 2316
    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->requestLayout()V

    .line 2317
    return-void
.end method

.method public setContentInsetEndWithActions(I)V
    .locals 1
    .param p1, "insetEndWithActions"    # I

    .line 1444
    if-gez p1, :cond_0

    .line 1445
    const/high16 p1, -0x80000000

    .line 1447
    :cond_0
    iget v0, p0, Landroidx/appcompat/widget/Toolbar;->mContentInsetEndWithActions:I

    if-eq p1, v0, :cond_1

    .line 1448
    iput p1, p0, Landroidx/appcompat/widget/Toolbar;->mContentInsetEndWithActions:I

    .line 1449
    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->getNavigationIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1450
    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->requestLayout()V

    .line 1453
    :cond_1
    return-void
.end method

.method public setContentInsetStartWithNavigation(I)V
    .locals 1
    .param p1, "insetStartWithNavigation"    # I

    .line 1401
    if-gez p1, :cond_0

    .line 1402
    const/high16 p1, -0x80000000

    .line 1404
    :cond_0
    iget v0, p0, Landroidx/appcompat/widget/Toolbar;->mContentInsetStartWithNavigation:I

    if-eq p1, v0, :cond_1

    .line 1405
    iput p1, p0, Landroidx/appcompat/widget/Toolbar;->mContentInsetStartWithNavigation:I

    .line 1406
    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->getNavigationIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1407
    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->requestLayout()V

    .line 1410
    :cond_1
    return-void
.end method

.method public setContentInsetsAbsolute(II)V
    .locals 1
    .param p1, "contentInsetLeft"    # I
    .param p2, "contentInsetRight"    # I

    .line 1322
    invoke-direct {p0}, Landroidx/appcompat/widget/Toolbar;->ensureContentInsets()V

    .line 1323
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->mContentInsets:Landroidx/appcompat/widget/RtlSpacingHelper;

    invoke-virtual {v0, p1, p2}, Landroidx/appcompat/widget/RtlSpacingHelper;->setAbsolute(II)V

    .line 1324
    return-void
.end method

.method public setContentInsetsRelative(II)V
    .locals 1
    .param p1, "contentInsetStart"    # I
    .param p2, "contentInsetEnd"    # I

    .line 1257
    invoke-direct {p0}, Landroidx/appcompat/widget/Toolbar;->ensureContentInsets()V

    .line 1258
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->mContentInsets:Landroidx/appcompat/widget/RtlSpacingHelper;

    invoke-virtual {v0, p1, p2}, Landroidx/appcompat/widget/RtlSpacingHelper;->setRelative(II)V

    .line 1259
    return-void
.end method

.method public setLogo(I)V
    .locals 1
    .param p1, "resId"    # I

    .line 531
    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroidx/appcompat/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/Toolbar;->setLogo(Landroid/graphics/drawable/Drawable;)V

    .line 532
    return-void
.end method

.method public setLogo(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .line 651
    if-eqz p1, :cond_0

    .line 652
    invoke-direct {p0}, Landroidx/appcompat/widget/Toolbar;->ensureLogoView()V

    .line 653
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->mLogoView:Landroid/widget/ImageView;

    invoke-direct {p0, v0}, Landroidx/appcompat/widget/Toolbar;->isChildOrHidden(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 654
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->mLogoView:Landroid/widget/ImageView;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Landroidx/appcompat/widget/Toolbar;->addSystemView(Landroid/view/View;Z)V

    goto :goto_0

    .line 656
    :cond_0
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->mLogoView:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    invoke-direct {p0, v0}, Landroidx/appcompat/widget/Toolbar;->isChildOrHidden(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 657
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->mLogoView:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/Toolbar;->removeView(Landroid/view/View;)V

    .line 658
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->mHiddenViews:Ljava/util/ArrayList;

    iget-object v1, p0, Landroidx/appcompat/widget/Toolbar;->mLogoView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 660
    :cond_1
    :goto_0
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->mLogoView:Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    .line 661
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 663
    :cond_2
    return-void
.end method

.method public setLogoDescription(I)V
    .locals 1
    .param p1, "resId"    # I

    .line 686
    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/Toolbar;->setLogoDescription(Ljava/lang/CharSequence;)V

    .line 687
    return-void
.end method

.method public setLogoDescription(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "description"    # Ljava/lang/CharSequence;

    .line 698
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 699
    invoke-direct {p0}, Landroidx/appcompat/widget/Toolbar;->ensureLogoView()V

    .line 701
    :cond_0
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->mLogoView:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    .line 702
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 704
    :cond_1
    return-void
.end method

.method public setMenu(Landroidx/appcompat/view/menu/MenuBuilder;Landroidx/appcompat/widget/ActionMenuPresenter;)V
    .locals 5
    .param p1, "menu"    # Landroidx/appcompat/view/menu/MenuBuilder;
    .param p2, "outerPresenter"    # Landroidx/appcompat/widget/ActionMenuPresenter;

    .line 577
    if-nez p1, :cond_0

    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->mMenuView:Landroidx/appcompat/widget/ActionMenuView;

    if-nez v0, :cond_0

    .line 578
    return-void

    .line 581
    :cond_0
    invoke-direct {p0}, Landroidx/appcompat/widget/Toolbar;->ensureMenuView()V

    .line 582
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->mMenuView:Landroidx/appcompat/widget/ActionMenuView;

    invoke-virtual {v0}, Landroidx/appcompat/widget/ActionMenuView;->peekMenu()Landroidx/appcompat/view/menu/MenuBuilder;

    move-result-object v0

    .line 583
    .local v0, "oldMenu":Landroidx/appcompat/view/menu/MenuBuilder;
    if-ne v0, p1, :cond_1

    .line 584
    return-void

    .line 587
    :cond_1
    if-eqz v0, :cond_2

    .line 588
    iget-object v1, p0, Landroidx/appcompat/widget/Toolbar;->mOuterActionMenuPresenter:Landroidx/appcompat/widget/ActionMenuPresenter;

    invoke-virtual {v0, v1}, Landroidx/appcompat/view/menu/MenuBuilder;->removeMenuPresenter(Landroidx/appcompat/view/menu/MenuPresenter;)V

    .line 589
    iget-object v1, p0, Landroidx/appcompat/widget/Toolbar;->mExpandedMenuPresenter:Landroidx/appcompat/widget/Toolbar$ExpandedActionViewMenuPresenter;

    invoke-virtual {v0, v1}, Landroidx/appcompat/view/menu/MenuBuilder;->removeMenuPresenter(Landroidx/appcompat/view/menu/MenuPresenter;)V

    .line 592
    :cond_2
    iget-object v1, p0, Landroidx/appcompat/widget/Toolbar;->mExpandedMenuPresenter:Landroidx/appcompat/widget/Toolbar$ExpandedActionViewMenuPresenter;

    if-nez v1, :cond_3

    .line 593
    new-instance v1, Landroidx/appcompat/widget/Toolbar$ExpandedActionViewMenuPresenter;

    invoke-direct {v1, p0}, Landroidx/appcompat/widget/Toolbar$ExpandedActionViewMenuPresenter;-><init>(Landroidx/appcompat/widget/Toolbar;)V

    iput-object v1, p0, Landroidx/appcompat/widget/Toolbar;->mExpandedMenuPresenter:Landroidx/appcompat/widget/Toolbar$ExpandedActionViewMenuPresenter;

    .line 596
    :cond_3
    const/4 v1, 0x1

    invoke-virtual {p2, v1}, Landroidx/appcompat/widget/ActionMenuPresenter;->setExpandedActionViewsExclusive(Z)V

    .line 597
    if-eqz p1, :cond_4

    .line 598
    iget-object v1, p0, Landroidx/appcompat/widget/Toolbar;->mPopupContext:Landroid/content/Context;

    invoke-virtual {p1, p2, v1}, Landroidx/appcompat/view/menu/MenuBuilder;->addMenuPresenter(Landroidx/appcompat/view/menu/MenuPresenter;Landroid/content/Context;)V

    .line 599
    iget-object v1, p0, Landroidx/appcompat/widget/Toolbar;->mExpandedMenuPresenter:Landroidx/appcompat/widget/Toolbar$ExpandedActionViewMenuPresenter;

    iget-object v2, p0, Landroidx/appcompat/widget/Toolbar;->mPopupContext:Landroid/content/Context;

    invoke-virtual {p1, v1, v2}, Landroidx/appcompat/view/menu/MenuBuilder;->addMenuPresenter(Landroidx/appcompat/view/menu/MenuPresenter;Landroid/content/Context;)V

    goto :goto_0

    .line 601
    :cond_4
    iget-object v2, p0, Landroidx/appcompat/widget/Toolbar;->mPopupContext:Landroid/content/Context;

    const/4 v3, 0x0

    invoke-virtual {p2, v2, v3}, Landroidx/appcompat/widget/ActionMenuPresenter;->initForMenu(Landroid/content/Context;Landroidx/appcompat/view/menu/MenuBuilder;)V

    .line 602
    iget-object v2, p0, Landroidx/appcompat/widget/Toolbar;->mExpandedMenuPresenter:Landroidx/appcompat/widget/Toolbar$ExpandedActionViewMenuPresenter;

    iget-object v4, p0, Landroidx/appcompat/widget/Toolbar;->mPopupContext:Landroid/content/Context;

    invoke-virtual {v2, v4, v3}, Landroidx/appcompat/widget/Toolbar$ExpandedActionViewMenuPresenter;->initForMenu(Landroid/content/Context;Landroidx/appcompat/view/menu/MenuBuilder;)V

    .line 603
    invoke-virtual {p2, v1}, Landroidx/appcompat/widget/ActionMenuPresenter;->updateMenuView(Z)V

    .line 604
    iget-object v2, p0, Landroidx/appcompat/widget/Toolbar;->mExpandedMenuPresenter:Landroidx/appcompat/widget/Toolbar$ExpandedActionViewMenuPresenter;

    invoke-virtual {v2, v1}, Landroidx/appcompat/widget/Toolbar$ExpandedActionViewMenuPresenter;->updateMenuView(Z)V

    .line 606
    :goto_0
    iget-object v1, p0, Landroidx/appcompat/widget/Toolbar;->mMenuView:Landroidx/appcompat/widget/ActionMenuView;

    iget v2, p0, Landroidx/appcompat/widget/Toolbar;->mPopupTheme:I

    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/ActionMenuView;->setPopupTheme(I)V

    .line 607
    iget-object v1, p0, Landroidx/appcompat/widget/Toolbar;->mMenuView:Landroidx/appcompat/widget/ActionMenuView;

    invoke-virtual {v1, p2}, Landroidx/appcompat/widget/ActionMenuView;->setPresenter(Landroidx/appcompat/widget/ActionMenuPresenter;)V

    .line 608
    iput-object p2, p0, Landroidx/appcompat/widget/Toolbar;->mOuterActionMenuPresenter:Landroidx/appcompat/widget/ActionMenuPresenter;

    .line 609
    return-void
.end method

.method public setMenuCallbacks(Landroidx/appcompat/view/menu/MenuPresenter$Callback;Landroidx/appcompat/view/menu/MenuBuilder$Callback;)V
    .locals 1
    .param p1, "pcb"    # Landroidx/appcompat/view/menu/MenuPresenter$Callback;
    .param p2, "mcb"    # Landroidx/appcompat/view/menu/MenuBuilder$Callback;

    .line 2325
    iput-object p1, p0, Landroidx/appcompat/widget/Toolbar;->mActionMenuPresenterCallback:Landroidx/appcompat/view/menu/MenuPresenter$Callback;

    .line 2326
    iput-object p2, p0, Landroidx/appcompat/widget/Toolbar;->mMenuBuilderCallback:Landroidx/appcompat/view/menu/MenuBuilder$Callback;

    .line 2327
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->mMenuView:Landroidx/appcompat/widget/ActionMenuView;

    if-eqz v0, :cond_0

    .line 2328
    invoke-virtual {v0, p1, p2}, Landroidx/appcompat/widget/ActionMenuView;->setMenuCallbacks(Landroidx/appcompat/view/menu/MenuPresenter$Callback;Landroidx/appcompat/view/menu/MenuBuilder$Callback;)V

    .line 2330
    :cond_0
    return-void
.end method

.method public setNavigationContentDescription(I)V
    .locals 1
    .param p1, "resId"    # I

    .line 956
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/Toolbar;->setNavigationContentDescription(Ljava/lang/CharSequence;)V

    .line 957
    return-void
.end method

.method public setNavigationContentDescription(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "description"    # Ljava/lang/CharSequence;

    .line 970
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 971
    invoke-direct {p0}, Landroidx/appcompat/widget/Toolbar;->ensureNavButtonView()V

    .line 973
    :cond_0
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    if-eqz v0, :cond_1

    .line 974
    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 975
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    invoke-static {v0, p1}, Landroidx/appcompat/widget/TooltipCompat;->setTooltipText(Landroid/view/View;Ljava/lang/CharSequence;)V

    .line 977
    :cond_1
    return-void
.end method

.method public setNavigationIcon(I)V
    .locals 1
    .param p1, "resId"    # I

    .line 994
    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroidx/appcompat/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/Toolbar;->setNavigationIcon(Landroid/graphics/drawable/Drawable;)V

    .line 995
    return-void
.end method

.method public setNavigationIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;

    .line 1012
    if-eqz p1, :cond_0

    .line 1013
    invoke-direct {p0}, Landroidx/appcompat/widget/Toolbar;->ensureNavButtonView()V

    .line 1014
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    invoke-direct {p0, v0}, Landroidx/appcompat/widget/Toolbar;->isChildOrHidden(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1015
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Landroidx/appcompat/widget/Toolbar;->addSystemView(Landroid/view/View;Z)V

    goto :goto_0

    .line 1017
    :cond_0
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    if-eqz v0, :cond_1

    invoke-direct {p0, v0}, Landroidx/appcompat/widget/Toolbar;->isChildOrHidden(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1018
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/Toolbar;->removeView(Landroid/view/View;)V

    .line 1019
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->mHiddenViews:Ljava/util/ArrayList;

    iget-object v1, p0, Landroidx/appcompat/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1021
    :cond_1
    :goto_0
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    if-eqz v0, :cond_2

    .line 1022
    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1024
    :cond_2
    return-void
.end method

.method public setNavigationOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/view/View$OnClickListener;

    .line 1049
    invoke-direct {p0}, Landroidx/appcompat/widget/Toolbar;->ensureNavButtonView()V

    .line 1050
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1051
    return-void
.end method

.method public setOnMenuItemClickListener(Landroidx/appcompat/widget/Toolbar$OnMenuItemClickListener;)V
    .locals 0
    .param p1, "listener"    # Landroidx/appcompat/widget/Toolbar$OnMenuItemClickListener;

    .line 1235
    iput-object p1, p0, Landroidx/appcompat/widget/Toolbar;->mOnMenuItemClickListener:Landroidx/appcompat/widget/Toolbar$OnMenuItemClickListener;

    .line 1236
    return-void
.end method

.method public setOverflowIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;

    .line 1168
    invoke-direct {p0}, Landroidx/appcompat/widget/Toolbar;->ensureMenu()V

    .line 1169
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->mMenuView:Landroidx/appcompat/widget/ActionMenuView;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/ActionMenuView;->setOverflowIcon(Landroid/graphics/drawable/Drawable;)V

    .line 1170
    return-void
.end method

.method public setPopupTheme(I)V
    .locals 2
    .param p1, "resId"    # I

    .line 377
    iget v0, p0, Landroidx/appcompat/widget/Toolbar;->mPopupTheme:I

    if-eq v0, p1, :cond_1

    .line 378
    iput p1, p0, Landroidx/appcompat/widget/Toolbar;->mPopupTheme:I

    .line 379
    if-nez p1, :cond_0

    .line 380
    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Landroidx/appcompat/widget/Toolbar;->mPopupContext:Landroid/content/Context;

    goto :goto_0

    .line 382
    :cond_0
    new-instance v0, Landroid/view/ContextThemeWrapper;

    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Landroidx/appcompat/widget/Toolbar;->mPopupContext:Landroid/content/Context;

    .line 385
    :cond_1
    :goto_0
    return-void
.end method

.method public setSubtitle(I)V
    .locals 1
    .param p1, "resId"    # I

    .line 829
    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/Toolbar;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 830
    return-void
.end method

.method public setSubtitle(Ljava/lang/CharSequence;)V
    .locals 3
    .param p1, "subtitle"    # Ljava/lang/CharSequence;

    .line 840
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 841
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    if-nez v0, :cond_1

    .line 842
    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 843
    .local v0, "context":Landroid/content/Context;
    new-instance v1, Landroidx/appcompat/widget/AppCompatTextView;

    invoke-direct {v1, v0}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Landroidx/appcompat/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    .line 844
    invoke-virtual {v1}, Landroid/widget/TextView;->setSingleLine()V

    .line 845
    iget-object v1, p0, Landroidx/appcompat/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    sget-object v2, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 846
    iget v1, p0, Landroidx/appcompat/widget/Toolbar;->mSubtitleTextAppearance:I

    if-eqz v1, :cond_0

    .line 847
    iget-object v2, p0, Landroidx/appcompat/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v0, v1}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 849
    :cond_0
    iget-object v1, p0, Landroidx/appcompat/widget/Toolbar;->mSubtitleTextColor:Landroid/content/res/ColorStateList;

    if-eqz v1, :cond_1

    .line 850
    iget-object v2, p0, Landroidx/appcompat/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 853
    .end local v0    # "context":Landroid/content/Context;
    :cond_1
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Landroidx/appcompat/widget/Toolbar;->isChildOrHidden(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 854
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Landroidx/appcompat/widget/Toolbar;->addSystemView(Landroid/view/View;Z)V

    goto :goto_0

    .line 856
    :cond_2
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_3

    invoke-direct {p0, v0}, Landroidx/appcompat/widget/Toolbar;->isChildOrHidden(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 857
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/Toolbar;->removeView(Landroid/view/View;)V

    .line 858
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->mHiddenViews:Ljava/util/ArrayList;

    iget-object v1, p0, Landroidx/appcompat/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 860
    :cond_3
    :goto_0
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_4

    .line 861
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 863
    :cond_4
    iput-object p1, p0, Landroidx/appcompat/widget/Toolbar;->mSubtitleText:Ljava/lang/CharSequence;

    .line 864
    return-void
.end method

.method public setSubtitleTextAppearance(Landroid/content/Context;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resId"    # I

    .line 882
    iput p2, p0, Landroidx/appcompat/widget/Toolbar;->mSubtitleTextAppearance:I

    .line 883
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 884
    invoke-virtual {v0, p1, p2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 886
    :cond_0
    return-void
.end method

.method public setSubtitleTextColor(I)V
    .locals 1
    .param p1, "color"    # I

    .line 915
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/Toolbar;->setSubtitleTextColor(Landroid/content/res/ColorStateList;)V

    .line 916
    return-void
.end method

.method public setSubtitleTextColor(Landroid/content/res/ColorStateList;)V
    .locals 1
    .param p1, "color"    # Landroid/content/res/ColorStateList;

    .line 924
    iput-object p1, p0, Landroidx/appcompat/widget/Toolbar;->mSubtitleTextColor:Landroid/content/res/ColorStateList;

    .line 925
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 926
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 928
    :cond_0
    return-void
.end method

.method public setTitle(I)V
    .locals 1
    .param p1, "resId"    # I

    .line 773
    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    .line 774
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 3
    .param p1, "title"    # Ljava/lang/CharSequence;

    .line 785
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 786
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    if-nez v0, :cond_1

    .line 787
    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 788
    .local v0, "context":Landroid/content/Context;
    new-instance v1, Landroidx/appcompat/widget/AppCompatTextView;

    invoke-direct {v1, v0}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Landroidx/appcompat/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    .line 789
    invoke-virtual {v1}, Landroid/widget/TextView;->setSingleLine()V

    .line 790
    iget-object v1, p0, Landroidx/appcompat/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    sget-object v2, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 791
    iget v1, p0, Landroidx/appcompat/widget/Toolbar;->mTitleTextAppearance:I

    if-eqz v1, :cond_0

    .line 792
    iget-object v2, p0, Landroidx/appcompat/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v0, v1}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 794
    :cond_0
    iget-object v1, p0, Landroidx/appcompat/widget/Toolbar;->mTitleTextColor:Landroid/content/res/ColorStateList;

    if-eqz v1, :cond_1

    .line 795
    iget-object v2, p0, Landroidx/appcompat/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 798
    .end local v0    # "context":Landroid/content/Context;
    :cond_1
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Landroidx/appcompat/widget/Toolbar;->isChildOrHidden(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 799
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Landroidx/appcompat/widget/Toolbar;->addSystemView(Landroid/view/View;Z)V

    goto :goto_0

    .line 801
    :cond_2
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_3

    invoke-direct {p0, v0}, Landroidx/appcompat/widget/Toolbar;->isChildOrHidden(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 802
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/Toolbar;->removeView(Landroid/view/View;)V

    .line 803
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->mHiddenViews:Ljava/util/ArrayList;

    iget-object v1, p0, Landroidx/appcompat/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 805
    :cond_3
    :goto_0
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_4

    .line 806
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 808
    :cond_4
    iput-object p1, p0, Landroidx/appcompat/widget/Toolbar;->mTitleText:Ljava/lang/CharSequence;

    .line 809
    return-void
.end method

.method public setTitleMargin(IIII)V
    .locals 0
    .param p1, "start"    # I
    .param p2, "top"    # I
    .param p3, "end"    # I
    .param p4, "bottom"    # I

    .line 412
    iput p1, p0, Landroidx/appcompat/widget/Toolbar;->mTitleMarginStart:I

    .line 413
    iput p2, p0, Landroidx/appcompat/widget/Toolbar;->mTitleMarginTop:I

    .line 414
    iput p3, p0, Landroidx/appcompat/widget/Toolbar;->mTitleMarginEnd:I

    .line 415
    iput p4, p0, Landroidx/appcompat/widget/Toolbar;->mTitleMarginBottom:I

    .line 417
    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->requestLayout()V

    .line 418
    return-void
.end method

.method public setTitleMarginBottom(I)V
    .locals 0
    .param p1, "margin"    # I

    .line 507
    iput p1, p0, Landroidx/appcompat/widget/Toolbar;->mTitleMarginBottom:I

    .line 508
    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->requestLayout()V

    .line 509
    return-void
.end method

.method public setTitleMarginEnd(I)V
    .locals 0
    .param p1, "margin"    # I

    .line 484
    iput p1, p0, Landroidx/appcompat/widget/Toolbar;->mTitleMarginEnd:I

    .line 486
    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->requestLayout()V

    .line 487
    return-void
.end method

.method public setTitleMarginStart(I)V
    .locals 0
    .param p1, "margin"    # I

    .line 438
    iput p1, p0, Landroidx/appcompat/widget/Toolbar;->mTitleMarginStart:I

    .line 440
    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->requestLayout()V

    .line 441
    return-void
.end method

.method public setTitleMarginTop(I)V
    .locals 0
    .param p1, "margin"    # I

    .line 461
    iput p1, p0, Landroidx/appcompat/widget/Toolbar;->mTitleMarginTop:I

    .line 463
    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->requestLayout()V

    .line 464
    return-void
.end method

.method public setTitleTextAppearance(Landroid/content/Context;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resId"    # I

    .line 871
    iput p2, p0, Landroidx/appcompat/widget/Toolbar;->mTitleTextAppearance:I

    .line 872
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 873
    invoke-virtual {v0, p1, p2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 875
    :cond_0
    return-void
.end method

.method public setTitleTextColor(I)V
    .locals 1
    .param p1, "color"    # I

    .line 894
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/Toolbar;->setTitleTextColor(Landroid/content/res/ColorStateList;)V

    .line 895
    return-void
.end method

.method public setTitleTextColor(Landroid/content/res/ColorStateList;)V
    .locals 1
    .param p1, "color"    # Landroid/content/res/ColorStateList;

    .line 903
    iput-object p1, p0, Landroidx/appcompat/widget/Toolbar;->mTitleTextColor:Landroid/content/res/ColorStateList;

    .line 904
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 905
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 907
    :cond_0
    return-void
.end method

.method public showOverflowMenu()Z
    .locals 1

    .line 562
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->mMenuView:Landroidx/appcompat/widget/ActionMenuView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/appcompat/widget/ActionMenuView;->showOverflowMenu()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
