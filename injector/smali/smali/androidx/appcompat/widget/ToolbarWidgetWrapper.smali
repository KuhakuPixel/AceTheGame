.class public Landroidx/appcompat/widget/ToolbarWidgetWrapper;
.super Ljava/lang/Object;
.source "ToolbarWidgetWrapper.java"

# interfaces
.implements Landroidx/appcompat/widget/DecorToolbar;


# static fields
.field private static final AFFECTS_LOGO_MASK:I = 0x3

.field private static final DEFAULT_FADE_DURATION_MS:J = 0xc8L

.field private static final TAG:Ljava/lang/String; = "ToolbarWidgetWrapper"


# instance fields
.field private mActionMenuPresenter:Landroidx/appcompat/widget/ActionMenuPresenter;

.field private mCustomView:Landroid/view/View;

.field private mDefaultNavigationContentDescription:I

.field private mDefaultNavigationIcon:Landroid/graphics/drawable/Drawable;

.field private mDisplayOpts:I

.field private mHomeDescription:Ljava/lang/CharSequence;

.field private mIcon:Landroid/graphics/drawable/Drawable;

.field private mLogo:Landroid/graphics/drawable/Drawable;

.field mMenuPrepared:Z

.field private mNavIcon:Landroid/graphics/drawable/Drawable;

.field private mNavigationMode:I

.field private mSpinner:Landroid/widget/Spinner;

.field private mSubtitle:Ljava/lang/CharSequence;

.field private mTabView:Landroid/view/View;

.field mTitle:Ljava/lang/CharSequence;

.field private mTitleSet:Z

.field mToolbar:Landroidx/appcompat/widget/Toolbar;

.field mWindowCallback:Landroid/view/Window$Callback;


# direct methods
.method public constructor <init>(Landroidx/appcompat/widget/Toolbar;Z)V
    .locals 2
    .param p1, "toolbar"    # Landroidx/appcompat/widget/Toolbar;
    .param p2, "style"    # Z

    .line 96
    sget v0, Landroidx/appcompat/R$string;->abc_action_bar_up_description:I

    sget v1, Landroidx/appcompat/R$drawable;->abc_ic_ab_back_material:I

    invoke-direct {p0, p1, p2, v0, v1}, Landroidx/appcompat/widget/ToolbarWidgetWrapper;-><init>(Landroidx/appcompat/widget/Toolbar;ZII)V

    .line 98
    return-void
.end method

.method public constructor <init>(Landroidx/appcompat/widget/Toolbar;ZII)V
    .locals 16
    .param p1, "toolbar"    # Landroidx/appcompat/widget/Toolbar;
    .param p2, "style"    # Z
    .param p3, "defaultNavigationContentDescription"    # I
    .param p4, "defaultNavigationIcon"    # I

    .line 101
    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 90
    const/4 v1, 0x0

    iput v1, v0, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mNavigationMode:I

    .line 92
    iput v1, v0, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mDefaultNavigationContentDescription:I

    .line 102
    move-object/from16 v2, p1

    iput-object v2, v0, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    .line 103
    invoke-virtual/range {p1 .. p1}, Landroidx/appcompat/widget/Toolbar;->getTitle()Ljava/lang/CharSequence;

    move-result-object v3

    iput-object v3, v0, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mTitle:Ljava/lang/CharSequence;

    .line 104
    invoke-virtual/range {p1 .. p1}, Landroidx/appcompat/widget/Toolbar;->getSubtitle()Ljava/lang/CharSequence;

    move-result-object v3

    iput-object v3, v0, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mSubtitle:Ljava/lang/CharSequence;

    .line 105
    iget-object v3, v0, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mTitle:Ljava/lang/CharSequence;

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    iput-boolean v3, v0, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mTitleSet:Z

    .line 106
    invoke-virtual/range {p1 .. p1}, Landroidx/appcompat/widget/Toolbar;->getNavigationIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, v0, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mNavIcon:Landroid/graphics/drawable/Drawable;

    .line 107
    invoke-virtual/range {p1 .. p1}, Landroidx/appcompat/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x0

    sget-object v5, Landroidx/appcompat/R$styleable;->ActionBar:[I

    sget v6, Landroidx/appcompat/R$attr;->actionBarStyle:I

    invoke-static {v3, v4, v5, v6, v1}, Landroidx/appcompat/widget/TintTypedArray;->obtainStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[III)Landroidx/appcompat/widget/TintTypedArray;

    move-result-object v3

    .line 109
    .local v3, "a":Landroidx/appcompat/widget/TintTypedArray;
    sget v4, Landroidx/appcompat/R$styleable;->ActionBar_homeAsUpIndicator:I

    invoke-virtual {v3, v4}, Landroidx/appcompat/widget/TintTypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, v0, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mDefaultNavigationIcon:Landroid/graphics/drawable/Drawable;

    .line 110
    if-eqz p2, :cond_d

    .line 111
    sget v4, Landroidx/appcompat/R$styleable;->ActionBar_title:I

    invoke-virtual {v3, v4}, Landroidx/appcompat/widget/TintTypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    .line 112
    .local v4, "title":Ljava/lang/CharSequence;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 113
    invoke-virtual {v0, v4}, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->setTitle(Ljava/lang/CharSequence;)V

    .line 116
    :cond_1
    sget v5, Landroidx/appcompat/R$styleable;->ActionBar_subtitle:I

    invoke-virtual {v3, v5}, Landroidx/appcompat/widget/TintTypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    .line 117
    .local v5, "subtitle":Ljava/lang/CharSequence;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 118
    invoke-virtual {v0, v5}, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 121
    :cond_2
    sget v6, Landroidx/appcompat/R$styleable;->ActionBar_logo:I

    invoke-virtual {v3, v6}, Landroidx/appcompat/widget/TintTypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 122
    .local v6, "logo":Landroid/graphics/drawable/Drawable;
    if-eqz v6, :cond_3

    .line 123
    invoke-virtual {v0, v6}, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->setLogo(Landroid/graphics/drawable/Drawable;)V

    .line 126
    :cond_3
    sget v7, Landroidx/appcompat/R$styleable;->ActionBar_icon:I

    invoke-virtual {v3, v7}, Landroidx/appcompat/widget/TintTypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .line 127
    .local v7, "icon":Landroid/graphics/drawable/Drawable;
    if-eqz v7, :cond_4

    .line 128
    invoke-virtual {v0, v7}, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 130
    :cond_4
    iget-object v8, v0, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mNavIcon:Landroid/graphics/drawable/Drawable;

    if-nez v8, :cond_5

    iget-object v8, v0, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mDefaultNavigationIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v8, :cond_5

    .line 131
    invoke-virtual {v0, v8}, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->setNavigationIcon(Landroid/graphics/drawable/Drawable;)V

    .line 133
    :cond_5
    sget v8, Landroidx/appcompat/R$styleable;->ActionBar_displayOptions:I

    invoke-virtual {v3, v8, v1}, Landroidx/appcompat/widget/TintTypedArray;->getInt(II)I

    move-result v8

    invoke-virtual {v0, v8}, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->setDisplayOptions(I)V

    .line 135
    sget v8, Landroidx/appcompat/R$styleable;->ActionBar_customNavigationLayout:I

    invoke-virtual {v3, v8, v1}, Landroidx/appcompat/widget/TintTypedArray;->getResourceId(II)I

    move-result v8

    .line 137
    .local v8, "customNavId":I
    if-eqz v8, :cond_6

    .line 138
    iget-object v9, v0, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v9}, Landroidx/appcompat/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v9

    iget-object v10, v0, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v9, v8, v10, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v0, v9}, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->setCustomView(Landroid/view/View;)V

    .line 140
    iget v9, v0, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mDisplayOpts:I

    or-int/lit8 v9, v9, 0x10

    invoke-virtual {v0, v9}, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->setDisplayOptions(I)V

    .line 143
    :cond_6
    sget v9, Landroidx/appcompat/R$styleable;->ActionBar_height:I

    invoke-virtual {v3, v9, v1}, Landroidx/appcompat/widget/TintTypedArray;->getLayoutDimension(II)I

    move-result v9

    .line 144
    .local v9, "height":I
    if-lez v9, :cond_7

    .line 145
    iget-object v10, v0, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v10}, Landroidx/appcompat/widget/Toolbar;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    .line 146
    .local v10, "lp":Landroid/view/ViewGroup$LayoutParams;
    iput v9, v10, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 147
    iget-object v11, v0, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v11, v10}, Landroidx/appcompat/widget/Toolbar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 150
    .end local v10    # "lp":Landroid/view/ViewGroup$LayoutParams;
    :cond_7
    sget v10, Landroidx/appcompat/R$styleable;->ActionBar_contentInsetStart:I

    const/4 v11, -0x1

    invoke-virtual {v3, v10, v11}, Landroidx/appcompat/widget/TintTypedArray;->getDimensionPixelOffset(II)I

    move-result v10

    .line 152
    .local v10, "contentInsetStart":I
    sget v12, Landroidx/appcompat/R$styleable;->ActionBar_contentInsetEnd:I

    invoke-virtual {v3, v12, v11}, Landroidx/appcompat/widget/TintTypedArray;->getDimensionPixelOffset(II)I

    move-result v11

    .line 154
    .local v11, "contentInsetEnd":I
    if-gez v10, :cond_8

    if-ltz v11, :cond_9

    .line 155
    :cond_8
    iget-object v12, v0, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    invoke-static {v10, v1}, Ljava/lang/Math;->max(II)I

    move-result v13

    .line 156
    invoke-static {v11, v1}, Ljava/lang/Math;->max(II)I

    move-result v14

    .line 155
    invoke-virtual {v12, v13, v14}, Landroidx/appcompat/widget/Toolbar;->setContentInsetsRelative(II)V

    .line 159
    :cond_9
    sget v12, Landroidx/appcompat/R$styleable;->ActionBar_titleTextStyle:I

    invoke-virtual {v3, v12, v1}, Landroidx/appcompat/widget/TintTypedArray;->getResourceId(II)I

    move-result v12

    .line 160
    .local v12, "titleTextStyle":I
    if-eqz v12, :cond_a

    .line 161
    iget-object v13, v0, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v13}, Landroidx/appcompat/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v14

    invoke-virtual {v13, v14, v12}, Landroidx/appcompat/widget/Toolbar;->setTitleTextAppearance(Landroid/content/Context;I)V

    .line 164
    :cond_a
    sget v13, Landroidx/appcompat/R$styleable;->ActionBar_subtitleTextStyle:I

    invoke-virtual {v3, v13, v1}, Landroidx/appcompat/widget/TintTypedArray;->getResourceId(II)I

    move-result v13

    .line 166
    .local v13, "subtitleTextStyle":I
    if-eqz v13, :cond_b

    .line 167
    iget-object v14, v0, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v14}, Landroidx/appcompat/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v15

    invoke-virtual {v14, v15, v13}, Landroidx/appcompat/widget/Toolbar;->setSubtitleTextAppearance(Landroid/content/Context;I)V

    .line 170
    :cond_b
    sget v14, Landroidx/appcompat/R$styleable;->ActionBar_popupTheme:I

    invoke-virtual {v3, v14, v1}, Landroidx/appcompat/widget/TintTypedArray;->getResourceId(II)I

    move-result v1

    .line 171
    .local v1, "popupTheme":I
    if-eqz v1, :cond_c

    .line 172
    iget-object v14, v0, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v14, v1}, Landroidx/appcompat/widget/Toolbar;->setPopupTheme(I)V

    .line 174
    .end local v1    # "popupTheme":I
    .end local v4    # "title":Ljava/lang/CharSequence;
    .end local v5    # "subtitle":Ljava/lang/CharSequence;
    .end local v6    # "logo":Landroid/graphics/drawable/Drawable;
    .end local v7    # "icon":Landroid/graphics/drawable/Drawable;
    .end local v8    # "customNavId":I
    .end local v9    # "height":I
    .end local v10    # "contentInsetStart":I
    .end local v11    # "contentInsetEnd":I
    .end local v12    # "titleTextStyle":I
    .end local v13    # "subtitleTextStyle":I
    :cond_c
    goto :goto_1

    .line 175
    :cond_d
    invoke-direct/range {p0 .. p0}, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->detectDisplayOptions()I

    move-result v1

    iput v1, v0, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mDisplayOpts:I

    .line 177
    :goto_1
    invoke-virtual {v3}, Landroidx/appcompat/widget/TintTypedArray;->recycle()V

    .line 179
    move/from16 v1, p3

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->setDefaultNavigationContentDescription(I)V

    .line 180
    iget-object v4, v0, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v4}, Landroidx/appcompat/widget/Toolbar;->getNavigationContentDescription()Ljava/lang/CharSequence;

    move-result-object v4

    iput-object v4, v0, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mHomeDescription:Ljava/lang/CharSequence;

    .line 182
    iget-object v4, v0, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    new-instance v5, Landroidx/appcompat/widget/ToolbarWidgetWrapper$1;

    invoke-direct {v5, v0}, Landroidx/appcompat/widget/ToolbarWidgetWrapper$1;-><init>(Landroidx/appcompat/widget/ToolbarWidgetWrapper;)V

    invoke-virtual {v4, v5}, Landroidx/appcompat/widget/Toolbar;->setNavigationOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 192
    return-void
.end method

.method private detectDisplayOptions()I
    .locals 2

    .line 206
    const/16 v0, 0xb

    .line 208
    .local v0, "opts":I
    iget-object v1, p0, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v1}, Landroidx/appcompat/widget/Toolbar;->getNavigationIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 209
    or-int/lit8 v0, v0, 0x4

    .line 210
    iget-object v1, p0, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v1}, Landroidx/appcompat/widget/Toolbar;->getNavigationIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mDefaultNavigationIcon:Landroid/graphics/drawable/Drawable;

    .line 212
    :cond_0
    return v0
.end method

.method private ensureSpinner()V
    .locals 4

    .line 506
    iget-object v0, p0, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mSpinner:Landroid/widget/Spinner;

    if-nez v0, :cond_0

    .line 507
    new-instance v0, Landroidx/appcompat/widget/AppCompatSpinner;

    invoke-virtual {p0}, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    sget v3, Landroidx/appcompat/R$attr;->actionDropDownStyle:I

    invoke-direct {v0, v1, v2, v3}, Landroidx/appcompat/widget/AppCompatSpinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v0, p0, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mSpinner:Landroid/widget/Spinner;

    .line 508
    new-instance v0, Landroidx/appcompat/widget/Toolbar$LayoutParams;

    const v1, 0x800013

    const/4 v2, -0x2

    invoke-direct {v0, v2, v2, v1}, Landroidx/appcompat/widget/Toolbar$LayoutParams;-><init>(III)V

    .line 510
    .local v0, "lp":Landroidx/appcompat/widget/Toolbar$LayoutParams;
    iget-object v1, p0, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {v1, v0}, Landroid/widget/Spinner;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 512
    .end local v0    # "lp":Landroidx/appcompat/widget/Toolbar$LayoutParams;
    :cond_0
    return-void
.end method

.method private setTitleInt(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;

    .line 260
    iput-object p1, p0, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mTitle:Ljava/lang/CharSequence;

    .line 261
    iget v0, p0, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mDisplayOpts:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    .line 262
    iget-object v0, p0, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    .line 263
    iget-boolean v0, p0, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mTitleSet:Z

    if-eqz v0, :cond_0

    .line 264
    iget-object v0, p0, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v0}, Landroidx/appcompat/widget/Toolbar;->getRootView()Landroid/view/View;

    move-result-object v0

    invoke-static {v0, p1}, Landroidx/core/view/ViewCompat;->setAccessibilityPaneTitle(Landroid/view/View;Ljava/lang/CharSequence;)V

    .line 267
    :cond_0
    return-void
.end method

.method private updateHomeAccessibility()V
    .locals 2

    .line 633
    iget v0, p0, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mDisplayOpts:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_1

    .line 634
    iget-object v0, p0, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mHomeDescription:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 635
    iget-object v0, p0, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    iget v1, p0, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mDefaultNavigationContentDescription:I

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/Toolbar;->setNavigationContentDescription(I)V

    goto :goto_0

    .line 637
    :cond_0
    iget-object v0, p0, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    iget-object v1, p0, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mHomeDescription:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/Toolbar;->setNavigationContentDescription(Ljava/lang/CharSequence;)V

    .line 640
    :cond_1
    :goto_0
    return-void
.end method

.method private updateNavigationIcon()V
    .locals 2

    .line 614
    iget v0, p0, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mDisplayOpts:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_1

    .line 615
    iget-object v0, p0, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    iget-object v1, p0, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mNavIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mDefaultNavigationIcon:Landroid/graphics/drawable/Drawable;

    :goto_0
    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/Toolbar;->setNavigationIcon(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 617
    :cond_1
    iget-object v0, p0, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/Toolbar;->setNavigationIcon(Landroid/graphics/drawable/Drawable;)V

    .line 619
    :goto_1
    return-void
.end method

.method private updateToolbarLogo()V
    .locals 3

    .line 325
    const/4 v0, 0x0

    .line 326
    .local v0, "logo":Landroid/graphics/drawable/Drawable;
    iget v1, p0, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mDisplayOpts:I

    and-int/lit8 v2, v1, 0x2

    if-eqz v2, :cond_2

    .line 327
    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_1

    .line 328
    iget-object v1, p0, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mLogo:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mIcon:Landroid/graphics/drawable/Drawable;

    :goto_0
    move-object v0, v1

    goto :goto_1

    .line 330
    :cond_1
    iget-object v0, p0, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 333
    :cond_2
    :goto_1
    iget-object v1, p0, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v1, v0}, Landroidx/appcompat/widget/Toolbar;->setLogo(Landroid/graphics/drawable/Drawable;)V

    .line 334
    return-void
.end method


# virtual methods
.method public animateToVisibility(I)V
    .locals 2
    .param p1, "visibility"    # I

    .line 559
    const-wide/16 v0, 0xc8

    invoke-virtual {p0, p1, v0, v1}, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->setupAnimatorToVisibility(IJ)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    .line 561
    .local v0, "anim":Landroidx/core/view/ViewPropertyAnimatorCompat;
    if-eqz v0, :cond_0

    .line 562
    invoke-virtual {v0}, Landroidx/core/view/ViewPropertyAnimatorCompat;->start()V

    .line 564
    :cond_0
    return-void
.end method

.method public canShowOverflowMenu()Z
    .locals 1

    .line 338
    iget-object v0, p0, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v0}, Landroidx/appcompat/widget/Toolbar;->canShowOverflowMenu()Z

    move-result v0

    return v0
.end method

.method public collapseActionView()V
    .locals 1

    .line 232
    iget-object v0, p0, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v0}, Landroidx/appcompat/widget/Toolbar;->collapseActionView()V

    .line 233
    return-void
.end method

.method public dismissPopupMenus()V
    .locals 1

    .line 378
    iget-object v0, p0, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v0}, Landroidx/appcompat/widget/Toolbar;->dismissPopupMenus()V

    .line 379
    return-void
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .line 222
    iget-object v0, p0, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v0}, Landroidx/appcompat/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public getCustomView()Landroid/view/View;
    .locals 1

    .line 554
    iget-object v0, p0, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mCustomView:Landroid/view/View;

    return-object v0
.end method

.method public getDisplayOptions()I
    .locals 1

    .line 383
    iget v0, p0, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mDisplayOpts:I

    return v0
.end method

.method public getDropdownItemCount()I
    .locals 1

    .line 538
    iget-object v0, p0, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mSpinner:Landroid/widget/Spinner;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/Spinner;->getCount()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getDropdownSelectedPosition()I
    .locals 1

    .line 533
    iget-object v0, p0, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mSpinner:Landroid/widget/Spinner;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getHeight()I
    .locals 1

    .line 659
    iget-object v0, p0, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v0}, Landroidx/appcompat/widget/Toolbar;->getHeight()I

    move-result v0

    return v0
.end method

.method public getMenu()Landroid/view/Menu;
    .locals 1

    .line 680
    iget-object v0, p0, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v0}, Landroidx/appcompat/widget/Toolbar;->getMenu()Landroid/view/Menu;

    move-result-object v0

    return-object v0
.end method

.method public getNavigationMode()I
    .locals 1

    .line 461
    iget v0, p0, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mNavigationMode:I

    return v0
.end method

.method public getSubtitle()Ljava/lang/CharSequence;
    .locals 1

    .line 271
    iget-object v0, p0, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v0}, Landroidx/appcompat/widget/Toolbar;->getSubtitle()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 1

    .line 250
    iget-object v0, p0, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v0}, Landroidx/appcompat/widget/Toolbar;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getViewGroup()Landroid/view/ViewGroup;
    .locals 1

    .line 217
    iget-object v0, p0, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    return-object v0
.end method

.method public getVisibility()I
    .locals 1

    .line 669
    iget-object v0, p0, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v0}, Landroidx/appcompat/widget/Toolbar;->getVisibility()I

    move-result v0

    return v0
.end method

.method public hasEmbeddedTabs()Z
    .locals 1

    .line 441
    iget-object v0, p0, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mTabView:Landroid/view/View;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasExpandedActionView()Z
    .locals 1

    .line 227
    iget-object v0, p0, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v0}, Landroidx/appcompat/widget/Toolbar;->hasExpandedActionView()Z

    move-result v0

    return v0
.end method

.method public hasIcon()Z
    .locals 1

    .line 294
    iget-object v0, p0, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasLogo()Z
    .locals 1

    .line 299
    iget-object v0, p0, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mLogo:Landroid/graphics/drawable/Drawable;

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

    .line 358
    iget-object v0, p0, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v0}, Landroidx/appcompat/widget/Toolbar;->hideOverflowMenu()Z

    move-result v0

    return v0
.end method

.method public initIndeterminateProgress()V
    .locals 2

    .line 289
    const-string v0, "ToolbarWidgetWrapper"

    const-string v1, "Progress display unsupported"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    return-void
.end method

.method public initProgress()V
    .locals 2

    .line 284
    const-string v0, "ToolbarWidgetWrapper"

    const-string v1, "Progress display unsupported"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    return-void
.end method

.method public isOverflowMenuShowPending()Z
    .locals 1

    .line 348
    iget-object v0, p0, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v0}, Landroidx/appcompat/widget/Toolbar;->isOverflowMenuShowPending()Z

    move-result v0

    return v0
.end method

.method public isOverflowMenuShowing()Z
    .locals 1

    .line 343
    iget-object v0, p0, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v0}, Landroidx/appcompat/widget/Toolbar;->isOverflowMenuShowing()Z

    move-result v0

    return v0
.end method

.method public isTitleTruncated()Z
    .locals 1

    .line 446
    iget-object v0, p0, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v0}, Landroidx/appcompat/widget/Toolbar;->isTitleTruncated()Z

    move-result v0

    return v0
.end method

.method public restoreHierarchyState(Landroid/util/SparseArray;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    .line 649
    .local p1, "toolbarStates":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    iget-object v0, p0, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/Toolbar;->restoreHierarchyState(Landroid/util/SparseArray;)V

    .line 650
    return-void
.end method

.method public saveHierarchyState(Landroid/util/SparseArray;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    .line 644
    .local p1, "toolbarStates":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    iget-object v0, p0, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/Toolbar;->saveHierarchyState(Landroid/util/SparseArray;)V

    .line 645
    return-void
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    .line 654
    iget-object v0, p0, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    invoke-static {v0, p1}, Landroidx/core/view/ViewCompat;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 655
    return-void
.end method

.method public setCollapsible(Z)V
    .locals 1
    .param p1, "collapsible"    # Z

    .line 451
    iget-object v0, p0, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/Toolbar;->setCollapsible(Z)V

    .line 452
    return-void
.end method

.method public setCustomView(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .line 543
    iget-object v0, p0, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mCustomView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget v1, p0, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mDisplayOpts:I

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_0

    .line 544
    iget-object v1, p0, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v1, v0}, Landroidx/appcompat/widget/Toolbar;->removeView(Landroid/view/View;)V

    .line 546
    :cond_0
    iput-object p1, p0, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mCustomView:Landroid/view/View;

    .line 547
    if-eqz p1, :cond_1

    iget v0, p0, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mDisplayOpts:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_1

    .line 548
    iget-object v0, p0, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/Toolbar;->addView(Landroid/view/View;)V

    .line 550
    :cond_1
    return-void
.end method

.method public setDefaultNavigationContentDescription(I)V
    .locals 1
    .param p1, "defaultNavigationContentDescription"    # I

    .line 196
    iget v0, p0, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mDefaultNavigationContentDescription:I

    if-ne p1, v0, :cond_0

    .line 197
    return-void

    .line 199
    :cond_0
    iput p1, p0, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mDefaultNavigationContentDescription:I

    .line 200
    iget-object v0, p0, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v0}, Landroidx/appcompat/widget/Toolbar;->getNavigationContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 201
    iget v0, p0, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mDefaultNavigationContentDescription:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->setNavigationContentDescription(I)V

    .line 203
    :cond_1
    return-void
.end method

.method public setDefaultNavigationIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "defaultNavigationIcon"    # Landroid/graphics/drawable/Drawable;

    .line 607
    iget-object v0, p0, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mDefaultNavigationIcon:Landroid/graphics/drawable/Drawable;

    if-eq v0, p1, :cond_0

    .line 608
    iput-object p1, p0, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mDefaultNavigationIcon:Landroid/graphics/drawable/Drawable;

    .line 609
    invoke-direct {p0}, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->updateNavigationIcon()V

    .line 611
    :cond_0
    return-void
.end method

.method public setDisplayOptions(I)V
    .locals 4
    .param p1, "newOpts"    # I

    .line 388
    iget v0, p0, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mDisplayOpts:I

    .line 389
    .local v0, "oldOpts":I
    xor-int v1, v0, p1

    .line 390
    .local v1, "changed":I
    iput p1, p0, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mDisplayOpts:I

    .line 391
    if-eqz v1, :cond_6

    .line 392
    and-int/lit8 v2, v1, 0x4

    if-eqz v2, :cond_1

    .line 393
    and-int/lit8 v2, p1, 0x4

    if-eqz v2, :cond_0

    .line 394
    invoke-direct {p0}, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->updateHomeAccessibility()V

    .line 396
    :cond_0
    invoke-direct {p0}, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->updateNavigationIcon()V

    .line 399
    :cond_1
    and-int/lit8 v2, v1, 0x3

    if-eqz v2, :cond_2

    .line 400
    invoke-direct {p0}, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->updateToolbarLogo()V

    .line 403
    :cond_2
    and-int/lit8 v2, v1, 0x8

    if-eqz v2, :cond_4

    .line 404
    and-int/lit8 v2, p1, 0x8

    if-eqz v2, :cond_3

    .line 405
    iget-object v2, p0, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    iget-object v3, p0, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Landroidx/appcompat/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    .line 406
    iget-object v2, p0, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    iget-object v3, p0, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mSubtitle:Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Landroidx/appcompat/widget/Toolbar;->setSubtitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 408
    :cond_3
    iget-object v2, p0, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroidx/appcompat/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    .line 409
    iget-object v2, p0, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v2, v3}, Landroidx/appcompat/widget/Toolbar;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 413
    :cond_4
    :goto_0
    and-int/lit8 v2, v1, 0x10

    if-eqz v2, :cond_6

    iget-object v2, p0, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mCustomView:Landroid/view/View;

    if-eqz v2, :cond_6

    .line 414
    and-int/lit8 v3, p1, 0x10

    if-eqz v3, :cond_5

    .line 415
    iget-object v3, p0, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v3, v2}, Landroidx/appcompat/widget/Toolbar;->addView(Landroid/view/View;)V

    goto :goto_1

    .line 417
    :cond_5
    iget-object v3, p0, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v3, v2}, Landroidx/appcompat/widget/Toolbar;->removeView(Landroid/view/View;)V

    .line 421
    :cond_6
    :goto_1
    return-void
.end method

.method public setDropdownParams(Landroid/widget/SpinnerAdapter;Landroid/widget/AdapterView$OnItemSelectedListener;)V
    .locals 1
    .param p1, "adapter"    # Landroid/widget/SpinnerAdapter;
    .param p2, "listener"    # Landroid/widget/AdapterView$OnItemSelectedListener;

    .line 517
    invoke-direct {p0}, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->ensureSpinner()V

    .line 518
    iget-object v0, p0, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0, p1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 519
    iget-object v0, p0, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0, p2}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 520
    return-void
.end method

.method public setDropdownSelectedPosition(I)V
    .locals 2
    .param p1, "position"    # I

    .line 524
    iget-object v0, p0, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mSpinner:Landroid/widget/Spinner;

    if-eqz v0, :cond_0

    .line 528
    invoke-virtual {v0, p1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 529
    return-void

    .line 525
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Can\'t set dropdown selected position without an adapter"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setEmbeddedTabView(Landroidx/appcompat/widget/ScrollingTabContainerView;)V
    .locals 2
    .param p1, "tabView"    # Landroidx/appcompat/widget/ScrollingTabContainerView;

    .line 425
    iget-object v0, p0, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mTabView:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    iget-object v1, p0, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    if-ne v0, v1, :cond_0

    .line 426
    iget-object v0, p0, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mTabView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroidx/appcompat/widget/Toolbar;->removeView(Landroid/view/View;)V

    .line 428
    :cond_0
    iput-object p1, p0, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mTabView:Landroid/view/View;

    .line 429
    if-eqz p1, :cond_1

    iget v0, p0, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mNavigationMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 430
    iget-object v0, p0, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroidx/appcompat/widget/Toolbar;->addView(Landroid/view/View;I)V

    .line 431
    iget-object v0, p0, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mTabView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/Toolbar$LayoutParams;

    .line 432
    .local v0, "lp":Landroidx/appcompat/widget/Toolbar$LayoutParams;
    const/4 v1, -0x2

    iput v1, v0, Landroidx/appcompat/widget/Toolbar$LayoutParams;->width:I

    .line 433
    iput v1, v0, Landroidx/appcompat/widget/Toolbar$LayoutParams;->height:I

    .line 434
    const v1, 0x800053

    iput v1, v0, Landroidx/appcompat/widget/Toolbar$LayoutParams;->gravity:I

    .line 435
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroidx/appcompat/widget/ScrollingTabContainerView;->setAllowCollapse(Z)V

    .line 437
    .end local v0    # "lp":Landroidx/appcompat/widget/Toolbar$LayoutParams;
    :cond_1
    return-void
.end method

.method public setHomeButtonEnabled(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .line 457
    return-void
.end method

.method public setIcon(I)V
    .locals 1
    .param p1, "resId"    # I

    .line 304
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroidx/appcompat/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 305
    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    .line 309
    iput-object p1, p0, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 310
    invoke-direct {p0}, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->updateToolbarLogo()V

    .line 311
    return-void
.end method

.method public setLogo(I)V
    .locals 1
    .param p1, "resId"    # I

    .line 315
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroidx/appcompat/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->setLogo(Landroid/graphics/drawable/Drawable;)V

    .line 316
    return-void
.end method

.method public setLogo(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    .line 320
    iput-object p1, p0, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mLogo:Landroid/graphics/drawable/Drawable;

    .line 321
    invoke-direct {p0}, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->updateToolbarLogo()V

    .line 322
    return-void
.end method

.method public setMenu(Landroid/view/Menu;Landroidx/appcompat/view/menu/MenuPresenter$Callback;)V
    .locals 3
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "cb"    # Landroidx/appcompat/view/menu/MenuPresenter$Callback;

    .line 368
    iget-object v0, p0, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mActionMenuPresenter:Landroidx/appcompat/widget/ActionMenuPresenter;

    if-nez v0, :cond_0

    .line 369
    new-instance v0, Landroidx/appcompat/widget/ActionMenuPresenter;

    iget-object v1, p0, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v1}, Landroidx/appcompat/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/appcompat/widget/ActionMenuPresenter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mActionMenuPresenter:Landroidx/appcompat/widget/ActionMenuPresenter;

    .line 370
    sget v1, Landroidx/appcompat/R$id;->action_menu_presenter:I

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/ActionMenuPresenter;->setId(I)V

    .line 372
    :cond_0
    iget-object v0, p0, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mActionMenuPresenter:Landroidx/appcompat/widget/ActionMenuPresenter;

    invoke-virtual {v0, p2}, Landroidx/appcompat/widget/ActionMenuPresenter;->setCallback(Landroidx/appcompat/view/menu/MenuPresenter$Callback;)V

    .line 373
    iget-object v0, p0, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    move-object v1, p1

    check-cast v1, Landroidx/appcompat/view/menu/MenuBuilder;

    iget-object v2, p0, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mActionMenuPresenter:Landroidx/appcompat/widget/ActionMenuPresenter;

    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/widget/Toolbar;->setMenu(Landroidx/appcompat/view/menu/MenuBuilder;Landroidx/appcompat/widget/ActionMenuPresenter;)V

    .line 374
    return-void
.end method

.method public setMenuCallbacks(Landroidx/appcompat/view/menu/MenuPresenter$Callback;Landroidx/appcompat/view/menu/MenuBuilder$Callback;)V
    .locals 1
    .param p1, "actionMenuPresenterCallback"    # Landroidx/appcompat/view/menu/MenuPresenter$Callback;
    .param p2, "menuBuilderCallback"    # Landroidx/appcompat/view/menu/MenuBuilder$Callback;

    .line 675
    iget-object v0, p0, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v0, p1, p2}, Landroidx/appcompat/widget/Toolbar;->setMenuCallbacks(Landroidx/appcompat/view/menu/MenuPresenter$Callback;Landroidx/appcompat/view/menu/MenuBuilder$Callback;)V

    .line 676
    return-void
.end method

.method public setMenuPrepared()V
    .locals 1

    .line 363
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mMenuPrepared:Z

    .line 364
    return-void
.end method

.method public setNavigationContentDescription(I)V
    .locals 1
    .param p1, "resId"    # I

    .line 629
    if-nez p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->setNavigationContentDescription(Ljava/lang/CharSequence;)V

    .line 630
    return-void
.end method

.method public setNavigationContentDescription(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "description"    # Ljava/lang/CharSequence;

    .line 623
    iput-object p1, p0, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mHomeDescription:Ljava/lang/CharSequence;

    .line 624
    invoke-direct {p0}, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->updateHomeAccessibility()V

    .line 625
    return-void
.end method

.method public setNavigationIcon(I)V
    .locals 1
    .param p1, "resId"    # I

    .line 602
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroidx/appcompat/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->setNavigationIcon(Landroid/graphics/drawable/Drawable;)V

    .line 603
    return-void
.end method

.method public setNavigationIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;

    .line 596
    iput-object p1, p0, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mNavIcon:Landroid/graphics/drawable/Drawable;

    .line 597
    invoke-direct {p0}, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->updateNavigationIcon()V

    .line 598
    return-void
.end method

.method public setNavigationMode(I)V
    .locals 4
    .param p1, "mode"    # I

    .line 466
    iget v0, p0, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mNavigationMode:I

    .line 467
    .local v0, "oldMode":I
    if-eq p1, v0, :cond_1

    .line 468
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 475
    :pswitch_0
    iget-object v1, p0, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mTabView:Landroid/view/View;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    iget-object v2, p0, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    if-ne v1, v2, :cond_0

    .line 476
    iget-object v1, p0, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mTabView:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroidx/appcompat/widget/Toolbar;->removeView(Landroid/view/View;)V

    goto :goto_0

    .line 470
    :pswitch_1
    iget-object v1, p0, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mSpinner:Landroid/widget/Spinner;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/widget/Spinner;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    iget-object v2, p0, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    if-ne v1, v2, :cond_0

    .line 471
    iget-object v1, p0, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {v2, v1}, Landroidx/appcompat/widget/Toolbar;->removeView(Landroid/view/View;)V

    .line 481
    :cond_0
    :goto_0
    iput p1, p0, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mNavigationMode:I

    .line 483
    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_1

    .line 500
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid navigation mode "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 491
    :pswitch_2
    iget-object v2, p0, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mTabView:Landroid/view/View;

    if-eqz v2, :cond_1

    .line 492
    iget-object v3, p0, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v3, v2, v1}, Landroidx/appcompat/widget/Toolbar;->addView(Landroid/view/View;I)V

    .line 493
    iget-object v1, p0, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mTabView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroidx/appcompat/widget/Toolbar$LayoutParams;

    .line 494
    .local v1, "lp":Landroidx/appcompat/widget/Toolbar$LayoutParams;
    const/4 v2, -0x2

    iput v2, v1, Landroidx/appcompat/widget/Toolbar$LayoutParams;->width:I

    .line 495
    iput v2, v1, Landroidx/appcompat/widget/Toolbar$LayoutParams;->height:I

    .line 496
    const v2, 0x800053

    iput v2, v1, Landroidx/appcompat/widget/Toolbar$LayoutParams;->gravity:I

    .line 497
    .end local v1    # "lp":Landroidx/appcompat/widget/Toolbar$LayoutParams;
    goto :goto_1

    .line 487
    :pswitch_3
    invoke-direct {p0}, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->ensureSpinner()V

    .line 488
    iget-object v2, p0, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    iget-object v3, p0, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {v2, v3, v1}, Landroidx/appcompat/widget/Toolbar;->addView(Landroid/view/View;I)V

    .line 489
    nop

    .line 503
    :cond_1
    :goto_1
    :pswitch_4
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method public setSubtitle(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "subtitle"    # Ljava/lang/CharSequence;

    .line 276
    iput-object p1, p0, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mSubtitle:Ljava/lang/CharSequence;

    .line 277
    iget v0, p0, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mDisplayOpts:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    .line 278
    iget-object v0, p0, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/Toolbar;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 280
    :cond_0
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;

    .line 255
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mTitleSet:Z

    .line 256
    invoke-direct {p0, p1}, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->setTitleInt(Ljava/lang/CharSequence;)V

    .line 257
    return-void
.end method

.method public setVisibility(I)V
    .locals 1
    .param p1, "visible"    # I

    .line 664
    iget-object v0, p0, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/Toolbar;->setVisibility(I)V

    .line 665
    return-void
.end method

.method public setWindowCallback(Landroid/view/Window$Callback;)V
    .locals 0
    .param p1, "cb"    # Landroid/view/Window$Callback;

    .line 237
    iput-object p1, p0, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mWindowCallback:Landroid/view/Window$Callback;

    .line 238
    return-void
.end method

.method public setWindowTitle(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;

    .line 243
    iget-boolean v0, p0, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mTitleSet:Z

    if-nez v0, :cond_0

    .line 244
    invoke-direct {p0, p1}, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->setTitleInt(Ljava/lang/CharSequence;)V

    .line 246
    :cond_0
    return-void
.end method

.method public setupAnimatorToVisibility(IJ)Landroidx/core/view/ViewPropertyAnimatorCompat;
    .locals 2
    .param p1, "visibility"    # I
    .param p2, "duration"    # J

    .line 569
    iget-object v0, p0, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    invoke-static {v0}, Landroidx/core/view/ViewCompat;->animate(Landroid/view/View;)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    .line 570
    if-nez p1, :cond_0

    const/high16 v1, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroidx/core/view/ViewPropertyAnimatorCompat;->alpha(F)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    .line 571
    invoke-virtual {v0, p2, p3}, Landroidx/core/view/ViewPropertyAnimatorCompat;->setDuration(J)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    new-instance v1, Landroidx/appcompat/widget/ToolbarWidgetWrapper$2;

    invoke-direct {v1, p0, p1}, Landroidx/appcompat/widget/ToolbarWidgetWrapper$2;-><init>(Landroidx/appcompat/widget/ToolbarWidgetWrapper;I)V

    .line 572
    invoke-virtual {v0, v1}, Landroidx/core/view/ViewPropertyAnimatorCompat;->setListener(Landroidx/core/view/ViewPropertyAnimatorListener;)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    .line 569
    return-object v0
.end method

.method public showOverflowMenu()Z
    .locals 1

    .line 353
    iget-object v0, p0, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v0}, Landroidx/appcompat/widget/Toolbar;->showOverflowMenu()Z

    move-result v0

    return v0
.end method
