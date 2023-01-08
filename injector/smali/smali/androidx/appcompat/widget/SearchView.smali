.class public Landroidx/appcompat/widget/SearchView;
.super Landroidx/appcompat/widget/LinearLayoutCompat;
.source "SearchView.java"

# interfaces
.implements Landroidx/appcompat/view/CollapsibleActionView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/appcompat/widget/SearchView$Api29Impl;,
        Landroidx/appcompat/widget/SearchView$PreQAutoCompleteTextViewReflector;,
        Landroidx/appcompat/widget/SearchView$SearchAutoComplete;,
        Landroidx/appcompat/widget/SearchView$UpdatableTouchDelegate;,
        Landroidx/appcompat/widget/SearchView$SavedState;,
        Landroidx/appcompat/widget/SearchView$OnSuggestionListener;,
        Landroidx/appcompat/widget/SearchView$OnCloseListener;,
        Landroidx/appcompat/widget/SearchView$OnQueryTextListener;
    }
.end annotation


# static fields
.field static final DBG:Z = false

.field private static final IME_OPTION_NO_MICROPHONE:Ljava/lang/String; = "nm"

.field static final LOG_TAG:Ljava/lang/String; = "SearchView"

.field static final PRE_API_29_HIDDEN_METHOD_INVOKER:Landroidx/appcompat/widget/SearchView$PreQAutoCompleteTextViewReflector;


# instance fields
.field private mAppSearchData:Landroid/os/Bundle;

.field private mClearingFocus:Z

.field final mCloseButton:Landroid/widget/ImageView;

.field private final mCollapsedIcon:Landroid/widget/ImageView;

.field private mCollapsedImeOptions:I

.field private final mDefaultQueryHint:Ljava/lang/CharSequence;

.field private final mDropDownAnchor:Landroid/view/View;

.field private mExpandedInActionView:Z

.field final mGoButton:Landroid/widget/ImageView;

.field private mIconified:Z

.field private mIconifiedByDefault:Z

.field private mMaxWidth:I

.field private mOldQueryText:Ljava/lang/CharSequence;

.field private final mOnClickListener:Landroid/view/View$OnClickListener;

.field private mOnCloseListener:Landroidx/appcompat/widget/SearchView$OnCloseListener;

.field private final mOnEditorActionListener:Landroid/widget/TextView$OnEditorActionListener;

.field private final mOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field private final mOnItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

.field private mOnQueryChangeListener:Landroidx/appcompat/widget/SearchView$OnQueryTextListener;

.field mOnQueryTextFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

.field private mOnSearchClickListener:Landroid/view/View$OnClickListener;

.field private mOnSuggestionListener:Landroidx/appcompat/widget/SearchView$OnSuggestionListener;

.field private final mOutsideDrawablesCache:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Ljava/lang/String;",
            "Landroid/graphics/drawable/Drawable$ConstantState;",
            ">;"
        }
    .end annotation
.end field

.field private mQueryHint:Ljava/lang/CharSequence;

.field private mQueryRefinement:Z

.field private mReleaseCursorRunnable:Ljava/lang/Runnable;

.field final mSearchButton:Landroid/widget/ImageView;

.field private final mSearchEditFrame:Landroid/view/View;

.field private final mSearchHintIcon:Landroid/graphics/drawable/Drawable;

.field private final mSearchPlate:Landroid/view/View;

.field final mSearchSrcTextView:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

.field private mSearchSrcTextViewBounds:Landroid/graphics/Rect;

.field private mSearchSrtTextViewBoundsExpanded:Landroid/graphics/Rect;

.field mSearchable:Landroid/app/SearchableInfo;

.field private final mSubmitArea:Landroid/view/View;

.field private mSubmitButtonEnabled:Z

.field private final mSuggestionCommitIconResId:I

.field private final mSuggestionRowLayout:I

.field mSuggestionsAdapter:Landroidx/cursoradapter/widget/CursorAdapter;

.field private mTemp:[I

.field private mTemp2:[I

.field mTextKeyListener:Landroid/view/View$OnKeyListener;

.field private mTextWatcher:Landroid/text/TextWatcher;

.field private mTouchDelegate:Landroidx/appcompat/widget/SearchView$UpdatableTouchDelegate;

.field private final mUpdateDrawableStateRunnable:Ljava/lang/Runnable;

.field private mUserQuery:Ljava/lang/CharSequence;

.field private final mVoiceAppSearchIntent:Landroid/content/Intent;

.field final mVoiceButton:Landroid/widget/ImageView;

.field private mVoiceButtonEnabled:Z

.field private final mVoiceWebSearchIntent:Landroid/content/Intent;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 181
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-ge v0, v1, :cond_0

    new-instance v0, Landroidx/appcompat/widget/SearchView$PreQAutoCompleteTextViewReflector;

    invoke-direct {v0}, Landroidx/appcompat/widget/SearchView$PreQAutoCompleteTextViewReflector;-><init>()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    sput-object v0, Landroidx/appcompat/widget/SearchView;->PRE_API_29_HIDDEN_METHOD_INVOKER:Landroidx/appcompat/widget/SearchView$PreQAutoCompleteTextViewReflector;

    .line 180
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 272
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroidx/appcompat/widget/SearchView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 273
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 276
    sget v0, Landroidx/appcompat/R$attr;->searchViewStyle:I

    invoke-direct {p0, p1, p2, v0}, Landroidx/appcompat/widget/SearchView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 277
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 19
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 280
    move-object/from16 v7, p0

    invoke-direct/range {p0 .. p3}, Landroidx/appcompat/widget/LinearLayoutCompat;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 136
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, v7, Landroidx/appcompat/widget/SearchView;->mSearchSrcTextViewBounds:Landroid/graphics/Rect;

    .line 137
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, v7, Landroidx/appcompat/widget/SearchView;->mSearchSrtTextViewBoundsExpanded:Landroid/graphics/Rect;

    .line 138
    const/4 v0, 0x2

    new-array v1, v0, [I

    iput-object v1, v7, Landroidx/appcompat/widget/SearchView;->mTemp:[I

    .line 139
    new-array v0, v0, [I

    iput-object v0, v7, Landroidx/appcompat/widget/SearchView;->mTemp2:[I

    .line 183
    new-instance v0, Landroidx/appcompat/widget/SearchView$1;

    invoke-direct {v0, v7}, Landroidx/appcompat/widget/SearchView$1;-><init>(Landroidx/appcompat/widget/SearchView;)V

    iput-object v0, v7, Landroidx/appcompat/widget/SearchView;->mUpdateDrawableStateRunnable:Ljava/lang/Runnable;

    .line 190
    new-instance v0, Landroidx/appcompat/widget/SearchView$2;

    invoke-direct {v0, v7}, Landroidx/appcompat/widget/SearchView$2;-><init>(Landroidx/appcompat/widget/SearchView;)V

    iput-object v0, v7, Landroidx/appcompat/widget/SearchView;->mReleaseCursorRunnable:Ljava/lang/Runnable;

    .line 201
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, v7, Landroidx/appcompat/widget/SearchView;->mOutsideDrawablesCache:Ljava/util/WeakHashMap;

    .line 992
    new-instance v8, Landroidx/appcompat/widget/SearchView$5;

    invoke-direct {v8, v7}, Landroidx/appcompat/widget/SearchView$5;-><init>(Landroidx/appcompat/widget/SearchView;)V

    iput-object v8, v7, Landroidx/appcompat/widget/SearchView;->mOnClickListener:Landroid/view/View$OnClickListener;

    .line 1014
    new-instance v0, Landroidx/appcompat/widget/SearchView$6;

    invoke-direct {v0, v7}, Landroidx/appcompat/widget/SearchView$6;-><init>(Landroidx/appcompat/widget/SearchView;)V

    iput-object v0, v7, Landroidx/appcompat/widget/SearchView;->mTextKeyListener:Landroid/view/View$OnKeyListener;

    .line 1177
    new-instance v9, Landroidx/appcompat/widget/SearchView$7;

    invoke-direct {v9, v7}, Landroidx/appcompat/widget/SearchView$7;-><init>(Landroidx/appcompat/widget/SearchView;)V

    iput-object v9, v7, Landroidx/appcompat/widget/SearchView;->mOnEditorActionListener:Landroid/widget/TextView$OnEditorActionListener;

    .line 1423
    new-instance v10, Landroidx/appcompat/widget/SearchView$8;

    invoke-direct {v10, v7}, Landroidx/appcompat/widget/SearchView$8;-><init>(Landroidx/appcompat/widget/SearchView;)V

    iput-object v10, v7, Landroidx/appcompat/widget/SearchView;->mOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 1435
    new-instance v11, Landroidx/appcompat/widget/SearchView$9;

    invoke-direct {v11, v7}, Landroidx/appcompat/widget/SearchView$9;-><init>(Landroidx/appcompat/widget/SearchView;)V

    iput-object v11, v7, Landroidx/appcompat/widget/SearchView;->mOnItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    .line 1729
    new-instance v0, Landroidx/appcompat/widget/SearchView$10;

    invoke-direct {v0, v7}, Landroidx/appcompat/widget/SearchView$10;-><init>(Landroidx/appcompat/widget/SearchView;)V

    iput-object v0, v7, Landroidx/appcompat/widget/SearchView;->mTextWatcher:Landroid/text/TextWatcher;

    .line 282
    sget-object v0, Landroidx/appcompat/R$styleable;->SearchView:[I

    const/4 v12, 0x0

    move-object/from16 v13, p1

    move-object/from16 v14, p2

    move/from16 v15, p3

    invoke-static {v13, v14, v0, v15, v12}, Landroidx/appcompat/widget/TintTypedArray;->obtainStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[III)Landroidx/appcompat/widget/TintTypedArray;

    move-result-object v6

    .line 284
    .local v6, "a":Landroidx/appcompat/widget/TintTypedArray;
    sget-object v2, Landroidx/appcompat/R$styleable;->SearchView:[I

    .line 285
    invoke-virtual {v6}, Landroidx/appcompat/widget/TintTypedArray;->getWrappedTypeArray()Landroid/content/res/TypedArray;

    move-result-object v4

    .line 284
    const/16 v16, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v3, p2

    move/from16 v5, p3

    move-object v12, v6

    .end local v6    # "a":Landroidx/appcompat/widget/TintTypedArray;
    .local v12, "a":Landroidx/appcompat/widget/TintTypedArray;
    move/from16 v6, v16

    invoke-static/range {v0 .. v6}, Landroidx/core/view/ViewCompat;->saveAttributeDataForStyleable(Landroid/view/View;Landroid/content/Context;[ILandroid/util/AttributeSet;Landroid/content/res/TypedArray;II)V

    .line 287
    invoke-static/range {p1 .. p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 288
    .local v0, "inflater":Landroid/view/LayoutInflater;
    sget v1, Landroidx/appcompat/R$styleable;->SearchView_layout:I

    sget v2, Landroidx/appcompat/R$layout;->abc_search_view:I

    invoke-virtual {v12, v1, v2}, Landroidx/appcompat/widget/TintTypedArray;->getResourceId(II)I

    move-result v1

    .line 290
    .local v1, "layoutResId":I
    const/4 v2, 0x1

    invoke-virtual {v0, v1, v7, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 292
    sget v3, Landroidx/appcompat/R$id;->search_src_text:I

    invoke-virtual {v7, v3}, Landroidx/appcompat/widget/SearchView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    iput-object v3, v7, Landroidx/appcompat/widget/SearchView;->mSearchSrcTextView:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    .line 293
    invoke-virtual {v3, v7}, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->setSearchView(Landroidx/appcompat/widget/SearchView;)V

    .line 295
    sget v4, Landroidx/appcompat/R$id;->search_edit_frame:I

    invoke-virtual {v7, v4}, Landroidx/appcompat/widget/SearchView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, v7, Landroidx/appcompat/widget/SearchView;->mSearchEditFrame:Landroid/view/View;

    .line 296
    sget v4, Landroidx/appcompat/R$id;->search_plate:I

    invoke-virtual {v7, v4}, Landroidx/appcompat/widget/SearchView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, v7, Landroidx/appcompat/widget/SearchView;->mSearchPlate:Landroid/view/View;

    .line 297
    sget v5, Landroidx/appcompat/R$id;->submit_area:I

    invoke-virtual {v7, v5}, Landroidx/appcompat/widget/SearchView;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, v7, Landroidx/appcompat/widget/SearchView;->mSubmitArea:Landroid/view/View;

    .line 298
    sget v6, Landroidx/appcompat/R$id;->search_button:I

    invoke-virtual {v7, v6}, Landroidx/appcompat/widget/SearchView;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    iput-object v6, v7, Landroidx/appcompat/widget/SearchView;->mSearchButton:Landroid/widget/ImageView;

    .line 299
    sget v2, Landroidx/appcompat/R$id;->search_go_btn:I

    invoke-virtual {v7, v2}, Landroidx/appcompat/widget/SearchView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v7, Landroidx/appcompat/widget/SearchView;->mGoButton:Landroid/widget/ImageView;

    .line 300
    move-object/from16 v17, v0

    .end local v0    # "inflater":Landroid/view/LayoutInflater;
    .local v17, "inflater":Landroid/view/LayoutInflater;
    sget v0, Landroidx/appcompat/R$id;->search_close_btn:I

    invoke-virtual {v7, v0}, Landroidx/appcompat/widget/SearchView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v7, Landroidx/appcompat/widget/SearchView;->mCloseButton:Landroid/widget/ImageView;

    .line 301
    move/from16 v18, v1

    .end local v1    # "layoutResId":I
    .local v18, "layoutResId":I
    sget v1, Landroidx/appcompat/R$id;->search_voice_btn:I

    invoke-virtual {v7, v1}, Landroidx/appcompat/widget/SearchView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v7, Landroidx/appcompat/widget/SearchView;->mVoiceButton:Landroid/widget/ImageView;

    .line 302
    sget v13, Landroidx/appcompat/R$id;->search_mag_icon:I

    invoke-virtual {v7, v13}, Landroidx/appcompat/widget/SearchView;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/ImageView;

    iput-object v13, v7, Landroidx/appcompat/widget/SearchView;->mCollapsedIcon:Landroid/widget/ImageView;

    .line 305
    sget v14, Landroidx/appcompat/R$styleable;->SearchView_queryBackground:I

    .line 306
    invoke-virtual {v12, v14}, Landroidx/appcompat/widget/TintTypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v14

    .line 305
    invoke-static {v4, v14}, Landroidx/core/view/ViewCompat;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 307
    sget v4, Landroidx/appcompat/R$styleable;->SearchView_submitBackground:I

    .line 308
    invoke-virtual {v12, v4}, Landroidx/appcompat/widget/TintTypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 307
    invoke-static {v5, v4}, Landroidx/core/view/ViewCompat;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 309
    sget v4, Landroidx/appcompat/R$styleable;->SearchView_searchIcon:I

    invoke-virtual {v12, v4}, Landroidx/appcompat/widget/TintTypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v6, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 310
    sget v4, Landroidx/appcompat/R$styleable;->SearchView_goIcon:I

    invoke-virtual {v12, v4}, Landroidx/appcompat/widget/TintTypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 311
    sget v4, Landroidx/appcompat/R$styleable;->SearchView_closeIcon:I

    invoke-virtual {v12, v4}, Landroidx/appcompat/widget/TintTypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 312
    sget v4, Landroidx/appcompat/R$styleable;->SearchView_voiceIcon:I

    invoke-virtual {v12, v4}, Landroidx/appcompat/widget/TintTypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 313
    sget v4, Landroidx/appcompat/R$styleable;->SearchView_searchIcon:I

    invoke-virtual {v12, v4}, Landroidx/appcompat/widget/TintTypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v13, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 315
    sget v4, Landroidx/appcompat/R$styleable;->SearchView_searchHintIcon:I

    invoke-virtual {v12, v4}, Landroidx/appcompat/widget/TintTypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, v7, Landroidx/appcompat/widget/SearchView;->mSearchHintIcon:Landroid/graphics/drawable/Drawable;

    .line 317
    nop

    .line 318
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/SearchView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Landroidx/appcompat/R$string;->abc_searchview_description_search:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 317
    invoke-static {v6, v4}, Landroidx/appcompat/widget/TooltipCompat;->setTooltipText(Landroid/view/View;Ljava/lang/CharSequence;)V

    .line 321
    sget v4, Landroidx/appcompat/R$styleable;->SearchView_suggestionRowLayout:I

    sget v5, Landroidx/appcompat/R$layout;->abc_search_dropdown_item_icons_2line:I

    invoke-virtual {v12, v4, v5}, Landroidx/appcompat/widget/TintTypedArray;->getResourceId(II)I

    move-result v4

    iput v4, v7, Landroidx/appcompat/widget/SearchView;->mSuggestionRowLayout:I

    .line 323
    sget v4, Landroidx/appcompat/R$styleable;->SearchView_commitIcon:I

    const/4 v5, 0x0

    invoke-virtual {v12, v4, v5}, Landroidx/appcompat/widget/TintTypedArray;->getResourceId(II)I

    move-result v4

    iput v4, v7, Landroidx/appcompat/widget/SearchView;->mSuggestionCommitIconResId:I

    .line 325
    invoke-virtual {v6, v8}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 326
    invoke-virtual {v0, v8}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 327
    invoke-virtual {v2, v8}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 328
    invoke-virtual {v1, v8}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 329
    invoke-virtual {v3, v8}, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 331
    iget-object v0, v7, Landroidx/appcompat/widget/SearchView;->mTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v3, v0}, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 332
    invoke-virtual {v3, v9}, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 333
    invoke-virtual {v3, v10}, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 334
    invoke-virtual {v3, v11}, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 335
    iget-object v0, v7, Landroidx/appcompat/widget/SearchView;->mTextKeyListener:Landroid/view/View$OnKeyListener;

    invoke-virtual {v3, v0}, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 338
    new-instance v0, Landroidx/appcompat/widget/SearchView$3;

    invoke-direct {v0, v7}, Landroidx/appcompat/widget/SearchView$3;-><init>(Landroidx/appcompat/widget/SearchView;)V

    invoke-virtual {v3, v0}, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 346
    sget v0, Landroidx/appcompat/R$styleable;->SearchView_iconifiedByDefault:I

    const/4 v1, 0x1

    invoke-virtual {v12, v0, v1}, Landroidx/appcompat/widget/TintTypedArray;->getBoolean(IZ)Z

    move-result v0

    invoke-virtual {v7, v0}, Landroidx/appcompat/widget/SearchView;->setIconifiedByDefault(Z)V

    .line 348
    sget v0, Landroidx/appcompat/R$styleable;->SearchView_android_maxWidth:I

    const/4 v1, -0x1

    invoke-virtual {v12, v0, v1}, Landroidx/appcompat/widget/TintTypedArray;->getDimensionPixelSize(II)I

    move-result v0

    .line 349
    .local v0, "maxWidth":I
    if-eq v0, v1, :cond_0

    .line 350
    invoke-virtual {v7, v0}, Landroidx/appcompat/widget/SearchView;->setMaxWidth(I)V

    .line 353
    :cond_0
    sget v2, Landroidx/appcompat/R$styleable;->SearchView_defaultQueryHint:I

    invoke-virtual {v12, v2}, Landroidx/appcompat/widget/TintTypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, v7, Landroidx/appcompat/widget/SearchView;->mDefaultQueryHint:Ljava/lang/CharSequence;

    .line 354
    sget v2, Landroidx/appcompat/R$styleable;->SearchView_queryHint:I

    invoke-virtual {v12, v2}, Landroidx/appcompat/widget/TintTypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, v7, Landroidx/appcompat/widget/SearchView;->mQueryHint:Ljava/lang/CharSequence;

    .line 356
    sget v2, Landroidx/appcompat/R$styleable;->SearchView_android_imeOptions:I

    invoke-virtual {v12, v2, v1}, Landroidx/appcompat/widget/TintTypedArray;->getInt(II)I

    move-result v2

    .line 357
    .local v2, "imeOptions":I
    if-eq v2, v1, :cond_1

    .line 358
    invoke-virtual {v7, v2}, Landroidx/appcompat/widget/SearchView;->setImeOptions(I)V

    .line 361
    :cond_1
    sget v4, Landroidx/appcompat/R$styleable;->SearchView_android_inputType:I

    invoke-virtual {v12, v4, v1}, Landroidx/appcompat/widget/TintTypedArray;->getInt(II)I

    move-result v4

    .line 362
    .local v4, "inputType":I
    if-eq v4, v1, :cond_2

    .line 363
    invoke-virtual {v7, v4}, Landroidx/appcompat/widget/SearchView;->setInputType(I)V

    .line 366
    :cond_2
    const/4 v1, 0x1

    .line 367
    .local v1, "focusable":Z
    sget v5, Landroidx/appcompat/R$styleable;->SearchView_android_focusable:I

    invoke-virtual {v12, v5, v1}, Landroidx/appcompat/widget/TintTypedArray;->getBoolean(IZ)Z

    move-result v1

    .line 368
    invoke-virtual {v7, v1}, Landroidx/appcompat/widget/SearchView;->setFocusable(Z)V

    .line 370
    invoke-virtual {v12}, Landroidx/appcompat/widget/TintTypedArray;->recycle()V

    .line 373
    new-instance v5, Landroid/content/Intent;

    const-string v6, "android.speech.action.WEB_SEARCH"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v5, v7, Landroidx/appcompat/widget/SearchView;->mVoiceWebSearchIntent:Landroid/content/Intent;

    .line 374
    const/high16 v6, 0x10000000

    invoke-virtual {v5, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 375
    const-string v8, "android.speech.extra.LANGUAGE_MODEL"

    const-string v9, "web_search"

    invoke-virtual {v5, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 378
    new-instance v5, Landroid/content/Intent;

    const-string v8, "android.speech.action.RECOGNIZE_SPEECH"

    invoke-direct {v5, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v5, v7, Landroidx/appcompat/widget/SearchView;->mVoiceAppSearchIntent:Landroid/content/Intent;

    .line 379
    invoke-virtual {v5, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 381
    invoke-virtual {v3}, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->getDropDownAnchor()I

    move-result v3

    invoke-virtual {v7, v3}, Landroidx/appcompat/widget/SearchView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, v7, Landroidx/appcompat/widget/SearchView;->mDropDownAnchor:Landroid/view/View;

    .line 382
    if-eqz v3, :cond_3

    .line 383
    new-instance v5, Landroidx/appcompat/widget/SearchView$4;

    invoke-direct {v5, v7}, Landroidx/appcompat/widget/SearchView$4;-><init>(Landroidx/appcompat/widget/SearchView;)V

    invoke-virtual {v3, v5}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 392
    :cond_3
    iget-boolean v3, v7, Landroidx/appcompat/widget/SearchView;->mIconifiedByDefault:Z

    invoke-direct {v7, v3}, Landroidx/appcompat/widget/SearchView;->updateViewsVisibility(Z)V

    .line 393
    invoke-direct/range {p0 .. p0}, Landroidx/appcompat/widget/SearchView;->updateQueryHint()V

    .line 394
    return-void
.end method

.method private createIntent(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Landroid/content/Intent;
    .locals 3
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "data"    # Landroid/net/Uri;
    .param p3, "extraData"    # Ljava/lang/String;
    .param p4, "query"    # Ljava/lang/String;
    .param p5, "actionKey"    # I
    .param p6, "actionMsg"    # Ljava/lang/String;

    .line 1553
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1554
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1558
    if-eqz p2, :cond_0

    .line 1559
    invoke-virtual {v0, p2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 1561
    :cond_0
    iget-object v1, p0, Landroidx/appcompat/widget/SearchView;->mUserQuery:Ljava/lang/CharSequence;

    const-string v2, "user_query"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 1562
    if-eqz p4, :cond_1

    .line 1563
    const-string v1, "query"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1565
    :cond_1
    if-eqz p3, :cond_2

    .line 1566
    const-string v1, "intent_extra_data_key"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1568
    :cond_2
    iget-object v1, p0, Landroidx/appcompat/widget/SearchView;->mAppSearchData:Landroid/os/Bundle;

    if-eqz v1, :cond_3

    .line 1569
    const-string v2, "app_data"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 1571
    :cond_3
    if-eqz p5, :cond_4

    .line 1572
    const-string v1, "action_key"

    invoke-virtual {v0, v1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1573
    const-string v1, "action_msg"

    invoke-virtual {v0, v1, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1575
    :cond_4
    iget-object v1, p0, Landroidx/appcompat/widget/SearchView;->mSearchable:Landroid/app/SearchableInfo;

    invoke-virtual {v1}, Landroid/app/SearchableInfo;->getSearchActivity()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1576
    return-object v0
.end method

.method private createIntentFromSuggestion(Landroid/database/Cursor;ILjava/lang/String;)Landroid/content/Intent;
    .locals 10
    .param p1, "c"    # Landroid/database/Cursor;
    .param p2, "actionKey"    # I
    .param p3, "actionMsg"    # Ljava/lang/String;

    .line 1672
    const/4 v0, 0x0

    :try_start_0
    const-string v1, "suggest_intent_action"

    invoke-static {p1, v1}, Landroidx/appcompat/widget/SuggestionsAdapter;->getColumnString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1674
    .local v1, "action":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 1675
    iget-object v2, p0, Landroidx/appcompat/widget/SearchView;->mSearchable:Landroid/app/SearchableInfo;

    invoke-virtual {v2}, Landroid/app/SearchableInfo;->getSuggestIntentAction()Ljava/lang/String;

    move-result-object v2

    move-object v1, v2

    .line 1677
    :cond_0
    if-nez v1, :cond_1

    .line 1678
    const-string v2, "android.intent.action.SEARCH"

    move-object v1, v2

    .line 1682
    :cond_1
    const-string v2, "suggest_intent_data"

    invoke-static {p1, v2}, Landroidx/appcompat/widget/SuggestionsAdapter;->getColumnString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1683
    .local v2, "data":Ljava/lang/String;
    if-nez v2, :cond_2

    .line 1684
    iget-object v3, p0, Landroidx/appcompat/widget/SearchView;->mSearchable:Landroid/app/SearchableInfo;

    invoke-virtual {v3}, Landroid/app/SearchableInfo;->getSuggestIntentData()Ljava/lang/String;

    move-result-object v3

    move-object v2, v3

    .line 1687
    :cond_2
    if-eqz v2, :cond_3

    .line 1688
    const-string v3, "suggest_intent_data_id"

    invoke-static {p1, v3}, Landroidx/appcompat/widget/SuggestionsAdapter;->getColumnString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1689
    .local v3, "id":Ljava/lang/String;
    if-eqz v3, :cond_3

    .line 1690
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v3}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v2, v4

    move-object v9, v2

    goto :goto_0

    .line 1693
    .end local v3    # "id":Ljava/lang/String;
    :cond_3
    move-object v9, v2

    .end local v2    # "data":Ljava/lang/String;
    .local v9, "data":Ljava/lang/String;
    :goto_0
    if-nez v9, :cond_4

    move-object v4, v0

    goto :goto_1

    :cond_4
    invoke-static {v9}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    move-object v4, v2

    .line 1695
    .local v4, "dataUri":Landroid/net/Uri;
    :goto_1
    const-string v2, "suggest_intent_query"

    invoke-static {p1, v2}, Landroidx/appcompat/widget/SuggestionsAdapter;->getColumnString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1696
    .local v6, "query":Ljava/lang/String;
    const-string v2, "suggest_intent_extra_data"

    invoke-static {p1, v2}, Landroidx/appcompat/widget/SuggestionsAdapter;->getColumnString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1698
    .local v5, "extraData":Ljava/lang/String;
    move-object v2, p0

    move-object v3, v1

    move v7, p2

    move-object v8, p3

    invoke-direct/range {v2 .. v8}, Landroidx/appcompat/widget/SearchView;->createIntent(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Landroid/content/Intent;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 1699
    .end local v1    # "action":Ljava/lang/String;
    .end local v4    # "dataUri":Landroid/net/Uri;
    .end local v5    # "extraData":Ljava/lang/String;
    .end local v6    # "query":Ljava/lang/String;
    .end local v9    # "data":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 1702
    .local v1, "e":Ljava/lang/RuntimeException;
    :try_start_1
    invoke-interface {p1}, Landroid/database/Cursor;->getPosition()I

    move-result v2
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1705
    .local v2, "rowNum":I
    goto :goto_2

    .line 1703
    .end local v2    # "rowNum":I
    :catch_1
    move-exception v2

    .line 1704
    .local v2, "e2":Ljava/lang/RuntimeException;
    const/4 v3, -0x1

    move v2, v3

    .line 1706
    .local v2, "rowNum":I
    :goto_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Search suggestions cursor at row "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " returned exception."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "SearchView"

    invoke-static {v4, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1708
    return-object v0
.end method

.method private createVoiceAppSearchIntent(Landroid/content/Intent;Landroid/app/SearchableInfo;)Landroid/content/Intent;
    .locals 12
    .param p1, "baseIntent"    # Landroid/content/Intent;
    .param p2, "searchable"    # Landroid/app/SearchableInfo;

    .line 1598
    invoke-virtual {p2}, Landroid/app/SearchableInfo;->getSearchActivity()Landroid/content/ComponentName;

    move-result-object v0

    .line 1603
    .local v0, "searchActivity":Landroid/content/ComponentName;
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.SEARCH"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1604
    .local v1, "queryIntent":Landroid/content/Intent;
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1605
    invoke-virtual {p0}, Landroidx/appcompat/widget/SearchView;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    const/high16 v4, 0x42000000    # 32.0f

    invoke-static {v2, v3, v1, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 1612
    .local v2, "pending":Landroid/app/PendingIntent;
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 1613
    .local v3, "queryExtras":Landroid/os/Bundle;
    iget-object v4, p0, Landroidx/appcompat/widget/SearchView;->mAppSearchData:Landroid/os/Bundle;

    if-eqz v4, :cond_0

    .line 1614
    const-string v5, "app_data"

    invoke-virtual {v3, v5, v4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1620
    :cond_0
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4, p1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 1623
    .local v4, "voiceIntent":Landroid/content/Intent;
    const-string v5, "free_form"

    .line 1624
    .local v5, "languageModel":Ljava/lang/String;
    const/4 v6, 0x0

    .line 1625
    .local v6, "prompt":Ljava/lang/String;
    const/4 v7, 0x0

    .line 1626
    .local v7, "language":Ljava/lang/String;
    const/4 v8, 0x1

    .line 1628
    .local v8, "maxResults":I
    invoke-virtual {p0}, Landroidx/appcompat/widget/SearchView;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    .line 1629
    .local v9, "resources":Landroid/content/res/Resources;
    invoke-virtual {p2}, Landroid/app/SearchableInfo;->getVoiceLanguageModeId()I

    move-result v10

    if-eqz v10, :cond_1

    .line 1630
    invoke-virtual {p2}, Landroid/app/SearchableInfo;->getVoiceLanguageModeId()I

    move-result v10

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 1632
    :cond_1
    invoke-virtual {p2}, Landroid/app/SearchableInfo;->getVoicePromptTextId()I

    move-result v10

    if-eqz v10, :cond_2

    .line 1633
    invoke-virtual {p2}, Landroid/app/SearchableInfo;->getVoicePromptTextId()I

    move-result v10

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 1635
    :cond_2
    invoke-virtual {p2}, Landroid/app/SearchableInfo;->getVoiceLanguageId()I

    move-result v10

    if-eqz v10, :cond_3

    .line 1636
    invoke-virtual {p2}, Landroid/app/SearchableInfo;->getVoiceLanguageId()I

    move-result v10

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 1638
    :cond_3
    invoke-virtual {p2}, Landroid/app/SearchableInfo;->getVoiceMaxResults()I

    move-result v10

    if-eqz v10, :cond_4

    .line 1639
    invoke-virtual {p2}, Landroid/app/SearchableInfo;->getVoiceMaxResults()I

    move-result v8

    .line 1642
    :cond_4
    const-string v10, "android.speech.extra.LANGUAGE_MODEL"

    invoke-virtual {v4, v10, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1643
    const-string v10, "android.speech.extra.PROMPT"

    invoke-virtual {v4, v10, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1644
    const-string v10, "android.speech.extra.LANGUAGE"

    invoke-virtual {v4, v10, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1645
    const-string v10, "android.speech.extra.MAX_RESULTS"

    invoke-virtual {v4, v10, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1646
    if-nez v0, :cond_5

    const/4 v10, 0x0

    goto :goto_0

    .line 1647
    :cond_5
    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v10

    .line 1646
    :goto_0
    const-string v11, "calling_package"

    invoke-virtual {v4, v11, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1650
    const-string v10, "android.speech.extra.RESULTS_PENDINGINTENT"

    invoke-virtual {v4, v10, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1651
    const-string v10, "android.speech.extra.RESULTS_PENDINGINTENT_BUNDLE"

    invoke-virtual {v4, v10, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 1653
    return-object v4
.end method

.method private createVoiceWebSearchIntent(Landroid/content/Intent;Landroid/app/SearchableInfo;)Landroid/content/Intent;
    .locals 4
    .param p1, "baseIntent"    # Landroid/content/Intent;
    .param p2, "searchable"    # Landroid/app/SearchableInfo;

    .line 1583
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 1584
    .local v0, "voiceIntent":Landroid/content/Intent;
    invoke-virtual {p2}, Landroid/app/SearchableInfo;->getSearchActivity()Landroid/content/ComponentName;

    move-result-object v1

    .line 1585
    .local v1, "searchActivity":Landroid/content/ComponentName;
    if-nez v1, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    .line 1586
    :cond_0
    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v2

    .line 1585
    :goto_0
    const-string v3, "calling_package"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1587
    return-object v0
.end method

.method private dismissSuggestions()V
    .locals 1

    .line 1218
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->mSearchSrcTextView:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0}, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->dismissDropDown()V

    .line 1219
    return-void
.end method

.method private getChildBoundsWithinSearchView(Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "rect"    # Landroid/graphics/Rect;

    .line 862
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->mTemp:[I

    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationInWindow([I)V

    .line 863
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->mTemp2:[I

    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/SearchView;->getLocationInWindow([I)V

    .line 864
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->mTemp:[I

    const/4 v1, 0x1

    aget v2, v0, v1

    iget-object v3, p0, Landroidx/appcompat/widget/SearchView;->mTemp2:[I

    aget v1, v3, v1

    sub-int/2addr v2, v1

    .line 865
    .local v2, "top":I
    const/4 v1, 0x0

    aget v0, v0, v1

    aget v1, v3, v1

    sub-int/2addr v0, v1

    .line 866
    .local v0, "left":I
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    add-int/2addr v1, v0

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v3

    add-int/2addr v3, v2

    invoke-virtual {p2, v0, v2, v1, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 867
    return-void
.end method

.method private getDecoratedHint(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 6
    .param p1, "hintText"    # Ljava/lang/CharSequence;

    .line 1104
    iget-boolean v0, p0, Landroidx/appcompat/widget/SearchView;->mIconifiedByDefault:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->mSearchHintIcon:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    goto :goto_0

    .line 1108
    :cond_0
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->mSearchSrcTextView:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0}, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->getTextSize()F

    move-result v0

    float-to-double v0, v0

    const-wide/high16 v2, 0x3ff4000000000000L    # 1.25

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v0, v0, v2

    double-to-int v0, v0

    .line 1109
    .local v0, "textSize":I
    iget-object v1, p0, Landroidx/appcompat/widget/SearchView;->mSearchHintIcon:Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v2, v0, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1111
    new-instance v1, Landroid/text/SpannableStringBuilder;

    const-string v2, "   "

    invoke-direct {v1, v2}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 1112
    .local v1, "ssb":Landroid/text/SpannableStringBuilder;
    new-instance v2, Landroid/text/style/ImageSpan;

    iget-object v3, p0, Landroidx/appcompat/widget/SearchView;->mSearchHintIcon:Landroid/graphics/drawable/Drawable;

    invoke-direct {v2, v3}, Landroid/text/style/ImageSpan;-><init>(Landroid/graphics/drawable/Drawable;)V

    const/4 v3, 0x1

    const/4 v4, 0x2

    const/16 v5, 0x21

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 1113
    invoke-virtual {v1, p1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 1114
    return-object v1

    .line 1105
    .end local v0    # "textSize":I
    .end local v1    # "ssb":Landroid/text/SpannableStringBuilder;
    :cond_1
    :goto_0
    return-object p1
.end method

.method private getPreferredHeight()I
    .locals 2

    .line 875
    invoke-virtual {p0}, Landroidx/appcompat/widget/SearchView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Landroidx/appcompat/R$dimen;->abc_search_view_preferred_height:I

    .line 876
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 875
    return v0
.end method

.method private getPreferredWidth()I
    .locals 2

    .line 870
    invoke-virtual {p0}, Landroidx/appcompat/widget/SearchView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Landroidx/appcompat/R$dimen;->abc_search_view_preferred_width:I

    .line 871
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 870
    return v0
.end method

.method private hasVoiceSearch()Z
    .locals 4

    .line 904
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->mSearchable:Landroid/app/SearchableInfo;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/app/SearchableInfo;->getVoiceSearchEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 905
    const/4 v0, 0x0

    .line 906
    .local v0, "testIntent":Landroid/content/Intent;
    iget-object v2, p0, Landroidx/appcompat/widget/SearchView;->mSearchable:Landroid/app/SearchableInfo;

    invoke-virtual {v2}, Landroid/app/SearchableInfo;->getVoiceSearchLaunchWebSearch()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 907
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->mVoiceWebSearchIntent:Landroid/content/Intent;

    goto :goto_0

    .line 908
    :cond_0
    iget-object v2, p0, Landroidx/appcompat/widget/SearchView;->mSearchable:Landroid/app/SearchableInfo;

    invoke-virtual {v2}, Landroid/app/SearchableInfo;->getVoiceSearchLaunchRecognizer()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 909
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->mVoiceAppSearchIntent:Landroid/content/Intent;

    .line 911
    :cond_1
    :goto_0
    if-eqz v0, :cond_3

    .line 912
    invoke-virtual {p0}, Landroidx/appcompat/widget/SearchView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/high16 v3, 0x10000

    invoke-virtual {v2, v0, v3}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v2

    .line 914
    .local v2, "ri":Landroid/content/pm/ResolveInfo;
    if-eqz v2, :cond_2

    const/4 v1, 0x1

    :cond_2
    return v1

    .line 917
    .end local v0    # "testIntent":Landroid/content/Intent;
    .end local v2    # "ri":Landroid/content/pm/ResolveInfo;
    :cond_3
    return v1
.end method

.method static isLandscapeMode(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 1722
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isSubmitAreaEnabled()Z
    .locals 1

    .line 921
    iget-boolean v0, p0, Landroidx/appcompat/widget/SearchView;->mSubmitButtonEnabled:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroidx/appcompat/widget/SearchView;->mVoiceButtonEnabled:Z

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Landroidx/appcompat/widget/SearchView;->isIconified()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private launchIntent(Landroid/content/Intent;)V
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;

    .line 1510
    if-nez p1, :cond_0

    .line 1511
    return-void

    .line 1516
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroidx/appcompat/widget/SearchView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1519
    goto :goto_0

    .line 1517
    :catch_0
    move-exception v0

    .line 1518
    .local v0, "ex":Ljava/lang/RuntimeException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed launch activity: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SearchView"

    invoke-static {v2, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1520
    .end local v0    # "ex":Ljava/lang/RuntimeException;
    :goto_0
    return-void
.end method

.method private launchSuggestion(IILjava/lang/String;)Z
    .locals 3
    .param p1, "position"    # I
    .param p2, "actionKey"    # I
    .param p3, "actionMsg"    # Ljava/lang/String;

    .line 1493
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->mSuggestionsAdapter:Landroidx/cursoradapter/widget/CursorAdapter;

    invoke-virtual {v0}, Landroidx/cursoradapter/widget/CursorAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 1494
    .local v0, "c":Landroid/database/Cursor;
    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1496
    invoke-direct {p0, v0, p2, p3}, Landroidx/appcompat/widget/SearchView;->createIntentFromSuggestion(Landroid/database/Cursor;ILjava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 1499
    .local v1, "intent":Landroid/content/Intent;
    invoke-direct {p0, v1}, Landroidx/appcompat/widget/SearchView;->launchIntent(Landroid/content/Intent;)V

    .line 1501
    const/4 v2, 0x1

    return v2

    .line 1503
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method private postUpdateFocusedState()V
    .locals 1

    .line 956
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->mUpdateDrawableStateRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/SearchView;->post(Ljava/lang/Runnable;)Z

    .line 957
    return-void
.end method

.method private rewriteQueryFromSuggestion(I)V
    .locals 3
    .param p1, "position"    # I

    .line 1460
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->mSearchSrcTextView:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0}, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 1461
    .local v0, "oldQuery":Ljava/lang/CharSequence;
    iget-object v1, p0, Landroidx/appcompat/widget/SearchView;->mSuggestionsAdapter:Landroidx/cursoradapter/widget/CursorAdapter;

    invoke-virtual {v1}, Landroidx/cursoradapter/widget/CursorAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v1

    .line 1462
    .local v1, "c":Landroid/database/Cursor;
    if-nez v1, :cond_0

    .line 1463
    return-void

    .line 1465
    :cond_0
    invoke-interface {v1, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1467
    iget-object v2, p0, Landroidx/appcompat/widget/SearchView;->mSuggestionsAdapter:Landroidx/cursoradapter/widget/CursorAdapter;

    invoke-virtual {v2, v1}, Landroidx/cursoradapter/widget/CursorAdapter;->convertToString(Landroid/database/Cursor;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 1468
    .local v2, "newQuery":Ljava/lang/CharSequence;
    if-eqz v2, :cond_1

    .line 1471
    invoke-direct {p0, v2}, Landroidx/appcompat/widget/SearchView;->setQuery(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1474
    :cond_1
    invoke-direct {p0, v0}, Landroidx/appcompat/widget/SearchView;->setQuery(Ljava/lang/CharSequence;)V

    .line 1476
    .end local v2    # "newQuery":Ljava/lang/CharSequence;
    :goto_0
    goto :goto_1

    .line 1478
    :cond_2
    invoke-direct {p0, v0}, Landroidx/appcompat/widget/SearchView;->setQuery(Ljava/lang/CharSequence;)V

    .line 1480
    :goto_1
    return-void
.end method

.method private setQuery(Ljava/lang/CharSequence;)V
    .locals 2
    .param p1, "query"    # Ljava/lang/CharSequence;

    .line 1526
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->mSearchSrcTextView:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->setText(Ljava/lang/CharSequence;)V

    .line 1528
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->mSearchSrcTextView:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    :goto_0
    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->setSelection(I)V

    .line 1529
    return-void
.end method

.method private updateCloseButton()V
    .locals 4

    .line 944
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->mSearchSrcTextView:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0}, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    .line 947
    .local v0, "hasText":Z
    const/4 v2, 0x0

    if-nez v0, :cond_1

    iget-boolean v3, p0, Landroidx/appcompat/widget/SearchView;->mIconifiedByDefault:Z

    if-eqz v3, :cond_0

    iget-boolean v3, p0, Landroidx/appcompat/widget/SearchView;->mExpandedInActionView:Z

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 948
    .local v1, "showClose":Z
    :cond_1
    :goto_0
    iget-object v3, p0, Landroidx/appcompat/widget/SearchView;->mCloseButton:Landroid/widget/ImageView;

    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    const/16 v2, 0x8

    :goto_1
    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 949
    iget-object v2, p0, Landroidx/appcompat/widget/SearchView;->mCloseButton:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 950
    .local v2, "closeButtonImg":Landroid/graphics/drawable/Drawable;
    if-eqz v2, :cond_4

    .line 951
    if-eqz v0, :cond_3

    sget-object v3, Landroidx/appcompat/widget/SearchView;->ENABLED_STATE_SET:[I

    goto :goto_2

    :cond_3
    sget-object v3, Landroidx/appcompat/widget/SearchView;->EMPTY_STATE_SET:[I

    :goto_2
    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 953
    :cond_4
    return-void
.end method

.method private updateQueryHint()V
    .locals 3

    .line 1118
    invoke-virtual {p0}, Landroidx/appcompat/widget/SearchView;->getQueryHint()Ljava/lang/CharSequence;

    move-result-object v0

    .line 1119
    .local v0, "hint":Ljava/lang/CharSequence;
    iget-object v1, p0, Landroidx/appcompat/widget/SearchView;->mSearchSrcTextView:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    if-nez v0, :cond_0

    const-string v2, ""

    goto :goto_0

    :cond_0
    move-object v2, v0

    :goto_0
    invoke-direct {p0, v2}, Landroidx/appcompat/widget/SearchView;->getDecoratedHint(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->setHint(Ljava/lang/CharSequence;)V

    .line 1120
    return-void
.end method

.method private updateSearchAutoComplete()V
    .locals 6

    .line 1126
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->mSearchSrcTextView:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    iget-object v1, p0, Landroidx/appcompat/widget/SearchView;->mSearchable:Landroid/app/SearchableInfo;

    invoke-virtual {v1}, Landroid/app/SearchableInfo;->getSuggestThreshold()I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->setThreshold(I)V

    .line 1127
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->mSearchSrcTextView:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    iget-object v1, p0, Landroidx/appcompat/widget/SearchView;->mSearchable:Landroid/app/SearchableInfo;

    invoke-virtual {v1}, Landroid/app/SearchableInfo;->getImeOptions()I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->setImeOptions(I)V

    .line 1128
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->mSearchable:Landroid/app/SearchableInfo;

    invoke-virtual {v0}, Landroid/app/SearchableInfo;->getInputType()I

    move-result v0

    .line 1131
    .local v0, "inputType":I
    and-int/lit8 v1, v0, 0xf

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 1134
    const v1, -0x10001

    and-int/2addr v0, v1

    .line 1135
    iget-object v1, p0, Landroidx/appcompat/widget/SearchView;->mSearchable:Landroid/app/SearchableInfo;

    invoke-virtual {v1}, Landroid/app/SearchableInfo;->getSuggestAuthority()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1136
    const/high16 v1, 0x10000

    or-int/2addr v0, v1

    .line 1143
    const/high16 v1, 0x80000

    or-int/2addr v0, v1

    .line 1146
    :cond_0
    iget-object v1, p0, Landroidx/appcompat/widget/SearchView;->mSearchSrcTextView:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v1, v0}, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->setInputType(I)V

    .line 1147
    iget-object v1, p0, Landroidx/appcompat/widget/SearchView;->mSuggestionsAdapter:Landroidx/cursoradapter/widget/CursorAdapter;

    if-eqz v1, :cond_1

    .line 1148
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroidx/cursoradapter/widget/CursorAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 1152
    :cond_1
    iget-object v1, p0, Landroidx/appcompat/widget/SearchView;->mSearchable:Landroid/app/SearchableInfo;

    invoke-virtual {v1}, Landroid/app/SearchableInfo;->getSuggestAuthority()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 1153
    new-instance v1, Landroidx/appcompat/widget/SuggestionsAdapter;

    invoke-virtual {p0}, Landroidx/appcompat/widget/SearchView;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Landroidx/appcompat/widget/SearchView;->mSearchable:Landroid/app/SearchableInfo;

    iget-object v5, p0, Landroidx/appcompat/widget/SearchView;->mOutsideDrawablesCache:Ljava/util/WeakHashMap;

    invoke-direct {v1, v3, p0, v4, v5}, Landroidx/appcompat/widget/SuggestionsAdapter;-><init>(Landroid/content/Context;Landroidx/appcompat/widget/SearchView;Landroid/app/SearchableInfo;Ljava/util/WeakHashMap;)V

    iput-object v1, p0, Landroidx/appcompat/widget/SearchView;->mSuggestionsAdapter:Landroidx/cursoradapter/widget/CursorAdapter;

    .line 1155
    iget-object v3, p0, Landroidx/appcompat/widget/SearchView;->mSearchSrcTextView:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v3, v1}, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1156
    iget-object v1, p0, Landroidx/appcompat/widget/SearchView;->mSuggestionsAdapter:Landroidx/cursoradapter/widget/CursorAdapter;

    check-cast v1, Landroidx/appcompat/widget/SuggestionsAdapter;

    .line 1157
    iget-boolean v3, p0, Landroidx/appcompat/widget/SearchView;->mQueryRefinement:Z

    if-eqz v3, :cond_2

    const/4 v2, 0x2

    goto :goto_0

    .line 1158
    :cond_2
    nop

    .line 1156
    :goto_0
    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/SuggestionsAdapter;->setQueryRefinement(I)V

    .line 1160
    :cond_3
    return-void
.end method

.method private updateSubmitArea()V
    .locals 2

    .line 934
    const/16 v0, 0x8

    .line 935
    .local v0, "visibility":I
    invoke-direct {p0}, Landroidx/appcompat/widget/SearchView;->isSubmitAreaEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroidx/appcompat/widget/SearchView;->mGoButton:Landroid/widget/ImageView;

    .line 936
    invoke-virtual {v1}, Landroid/widget/ImageView;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroidx/appcompat/widget/SearchView;->mVoiceButton:Landroid/widget/ImageView;

    .line 937
    invoke-virtual {v1}, Landroid/widget/ImageView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_1

    .line 938
    :cond_0
    const/4 v0, 0x0

    .line 940
    :cond_1
    iget-object v1, p0, Landroidx/appcompat/widget/SearchView;->mSubmitArea:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 941
    return-void
.end method

.method private updateSubmitButton(Z)V
    .locals 2
    .param p1, "hasText"    # Z

    .line 925
    const/16 v0, 0x8

    .line 926
    .local v0, "visibility":I
    iget-boolean v1, p0, Landroidx/appcompat/widget/SearchView;->mSubmitButtonEnabled:Z

    if-eqz v1, :cond_1

    invoke-direct {p0}, Landroidx/appcompat/widget/SearchView;->isSubmitAreaEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Landroidx/appcompat/widget/SearchView;->hasFocus()Z

    move-result v1

    if-eqz v1, :cond_1

    if-nez p1, :cond_0

    iget-boolean v1, p0, Landroidx/appcompat/widget/SearchView;->mVoiceButtonEnabled:Z

    if-nez v1, :cond_1

    .line 928
    :cond_0
    const/4 v0, 0x0

    .line 930
    :cond_1
    iget-object v1, p0, Landroidx/appcompat/widget/SearchView;->mGoButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 931
    return-void
.end method

.method private updateViewsVisibility(Z)V
    .locals 6
    .param p1, "collapsed"    # Z

    .line 880
    iput-boolean p1, p0, Landroidx/appcompat/widget/SearchView;->mIconified:Z

    .line 882
    const/16 v0, 0x8

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    const/16 v2, 0x8

    .line 884
    .local v2, "visCollapsed":I
    :goto_0
    iget-object v3, p0, Landroidx/appcompat/widget/SearchView;->mSearchSrcTextView:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v3}, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    const/4 v4, 0x1

    xor-int/2addr v3, v4

    .line 886
    .local v3, "hasText":Z
    iget-object v5, p0, Landroidx/appcompat/widget/SearchView;->mSearchButton:Landroid/widget/ImageView;

    invoke-virtual {v5, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 887
    invoke-direct {p0, v3}, Landroidx/appcompat/widget/SearchView;->updateSubmitButton(Z)V

    .line 888
    iget-object v5, p0, Landroidx/appcompat/widget/SearchView;->mSearchEditFrame:Landroid/view/View;

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {v5, v0}, Landroid/view/View;->setVisibility(I)V

    .line 891
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->mCollapsedIcon:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Landroidx/appcompat/widget/SearchView;->mIconifiedByDefault:Z

    if-eqz v0, :cond_2

    goto :goto_2

    .line 894
    :cond_2
    const/4 v0, 0x0

    .local v0, "iconVisibility":I
    goto :goto_3

    .line 892
    .end local v0    # "iconVisibility":I
    :cond_3
    :goto_2
    const/16 v0, 0x8

    .line 896
    .restart local v0    # "iconVisibility":I
    :goto_3
    iget-object v5, p0, Landroidx/appcompat/widget/SearchView;->mCollapsedIcon:Landroid/widget/ImageView;

    invoke-virtual {v5, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 898
    invoke-direct {p0}, Landroidx/appcompat/widget/SearchView;->updateCloseButton()V

    .line 899
    if-nez v3, :cond_4

    const/4 v1, 0x1

    :cond_4
    invoke-direct {p0, v1}, Landroidx/appcompat/widget/SearchView;->updateVoiceButton(Z)V

    .line 900
    invoke-direct {p0}, Landroidx/appcompat/widget/SearchView;->updateSubmitArea()V

    .line 901
    return-void
.end method

.method private updateVoiceButton(Z)V
    .locals 3
    .param p1, "empty"    # Z

    .line 1169
    const/16 v0, 0x8

    .line 1170
    .local v0, "visibility":I
    iget-boolean v1, p0, Landroidx/appcompat/widget/SearchView;->mVoiceButtonEnabled:Z

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroidx/appcompat/widget/SearchView;->isIconified()Z

    move-result v1

    if-nez v1, :cond_0

    if-eqz p1, :cond_0

    .line 1171
    const/4 v0, 0x0

    .line 1172
    iget-object v1, p0, Landroidx/appcompat/widget/SearchView;->mGoButton:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1174
    :cond_0
    iget-object v1, p0, Landroidx/appcompat/widget/SearchView;->mVoiceButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1175
    return-void
.end method


# virtual methods
.method adjustDropDownSizeAndPosition()V
    .locals 8

    .line 1380
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->mDropDownAnchor:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_2

    .line 1381
    invoke-virtual {p0}, Landroidx/appcompat/widget/SearchView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 1382
    .local v0, "res":Landroid/content/res/Resources;
    iget-object v1, p0, Landroidx/appcompat/widget/SearchView;->mSearchPlate:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    .line 1383
    .local v1, "anchorPadding":I
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 1384
    .local v2, "dropDownPadding":Landroid/graphics/Rect;
    invoke-static {p0}, Landroidx/appcompat/widget/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v3

    .line 1385
    .local v3, "isLayoutRtl":Z
    iget-boolean v4, p0, Landroidx/appcompat/widget/SearchView;->mIconifiedByDefault:Z

    if-eqz v4, :cond_0

    .line 1387
    sget v4, Landroidx/appcompat/R$dimen;->abc_dropdownitem_icon_width:I

    .line 1386
    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    sget v5, Landroidx/appcompat/R$dimen;->abc_dropdownitem_text_padding_left:I

    .line 1387
    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    add-int/2addr v4, v5

    goto :goto_0

    .line 1388
    :cond_0
    const/4 v4, 0x0

    :goto_0
    nop

    .line 1389
    .local v4, "iconOffset":I
    iget-object v5, p0, Landroidx/appcompat/widget/SearchView;->mSearchSrcTextView:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v5}, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->getDropDownBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 1391
    if-eqz v3, :cond_1

    .line 1392
    iget v5, v2, Landroid/graphics/Rect;->left:I

    neg-int v5, v5

    .local v5, "offset":I
    goto :goto_1

    .line 1394
    .end local v5    # "offset":I
    :cond_1
    iget v5, v2, Landroid/graphics/Rect;->left:I

    add-int/2addr v5, v4

    sub-int v5, v1, v5

    .line 1396
    .restart local v5    # "offset":I
    :goto_1
    iget-object v6, p0, Landroidx/appcompat/widget/SearchView;->mSearchSrcTextView:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v6, v5}, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->setDropDownHorizontalOffset(I)V

    .line 1397
    iget-object v6, p0, Landroidx/appcompat/widget/SearchView;->mDropDownAnchor:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    move-result v6

    iget v7, v2, Landroid/graphics/Rect;->left:I

    add-int/2addr v6, v7

    iget v7, v2, Landroid/graphics/Rect;->right:I

    add-int/2addr v6, v7

    add-int/2addr v6, v4

    sub-int/2addr v6, v1

    .line 1399
    .local v6, "width":I
    iget-object v7, p0, Landroidx/appcompat/widget/SearchView;->mSearchSrcTextView:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v7, v6}, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->setDropDownWidth(I)V

    .line 1401
    .end local v0    # "res":Landroid/content/res/Resources;
    .end local v1    # "anchorPadding":I
    .end local v2    # "dropDownPadding":Landroid/graphics/Rect;
    .end local v3    # "isLayoutRtl":Z
    .end local v4    # "iconOffset":I
    .end local v5    # "offset":I
    .end local v6    # "width":I
    :cond_2
    return-void
.end method

.method public clearFocus()V
    .locals 2

    .line 505
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/appcompat/widget/SearchView;->mClearingFocus:Z

    .line 506
    invoke-super {p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->clearFocus()V

    .line 507
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->mSearchSrcTextView:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0}, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->clearFocus()V

    .line 508
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->mSearchSrcTextView:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->setImeVisibility(Z)V

    .line 509
    iput-boolean v1, p0, Landroidx/appcompat/widget/SearchView;->mClearingFocus:Z

    .line 510
    return-void
.end method

.method forceSuggestionQuery()V
    .locals 2

    .line 1713
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_0

    .line 1714
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->mSearchSrcTextView:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    invoke-static {v0}, Landroidx/appcompat/widget/SearchView$Api29Impl;->refreshAutoCompleteResults(Landroid/widget/AutoCompleteTextView;)V

    goto :goto_0

    .line 1716
    :cond_0
    sget-object v0, Landroidx/appcompat/widget/SearchView;->PRE_API_29_HIDDEN_METHOD_INVOKER:Landroidx/appcompat/widget/SearchView$PreQAutoCompleteTextViewReflector;

    iget-object v1, p0, Landroidx/appcompat/widget/SearchView;->mSearchSrcTextView:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/SearchView$PreQAutoCompleteTextViewReflector;->doBeforeTextChanged(Landroid/widget/AutoCompleteTextView;)V

    .line 1717
    iget-object v1, p0, Landroidx/appcompat/widget/SearchView;->mSearchSrcTextView:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/SearchView$PreQAutoCompleteTextViewReflector;->doAfterTextChanged(Landroid/widget/AutoCompleteTextView;)V

    .line 1719
    :goto_0
    return-void
.end method

.method public getImeOptions()I
    .locals 1

    .line 460
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->mSearchSrcTextView:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0}, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->getImeOptions()I

    move-result v0

    return v0
.end method

.method public getInputType()I
    .locals 1

    .line 482
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->mSearchSrcTextView:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0}, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->getInputType()I

    move-result v0

    return v0
.end method

.method public getMaxWidth()I
    .locals 1

    .line 788
    iget v0, p0, Landroidx/appcompat/widget/SearchView;->mMaxWidth:I

    return v0
.end method

.method public getQuery()Ljava/lang/CharSequence;
    .locals 1

    .line 567
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->mSearchSrcTextView:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0}, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->getText()Landroid/text/Editable;

    move-result-object v0

    return-object v0
.end method

.method public getQueryHint()Ljava/lang/CharSequence;
    .locals 2

    .line 628
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->mQueryHint:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    .line 629
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->mQueryHint:Ljava/lang/CharSequence;

    .local v0, "hint":Ljava/lang/CharSequence;
    goto :goto_0

    .line 630
    .end local v0    # "hint":Ljava/lang/CharSequence;
    :cond_0
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->mSearchable:Landroid/app/SearchableInfo;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/SearchableInfo;->getHintId()I

    move-result v0

    if-eqz v0, :cond_1

    .line 631
    invoke-virtual {p0}, Landroidx/appcompat/widget/SearchView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Landroidx/appcompat/widget/SearchView;->mSearchable:Landroid/app/SearchableInfo;

    invoke-virtual {v1}, Landroid/app/SearchableInfo;->getHintId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .restart local v0    # "hint":Ljava/lang/CharSequence;
    goto :goto_0

    .line 633
    .end local v0    # "hint":Ljava/lang/CharSequence;
    :cond_1
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->mDefaultQueryHint:Ljava/lang/CharSequence;

    .line 635
    .restart local v0    # "hint":Ljava/lang/CharSequence;
    :goto_0
    return-object v0
.end method

.method getSuggestionCommitIconResId()I
    .locals 1

    .line 401
    iget v0, p0, Landroidx/appcompat/widget/SearchView;->mSuggestionCommitIconResId:I

    return v0
.end method

.method getSuggestionRowLayout()I
    .locals 1

    .line 397
    iget v0, p0, Landroidx/appcompat/widget/SearchView;->mSuggestionRowLayout:I

    return v0
.end method

.method public getSuggestionsAdapter()Landroidx/cursoradapter/widget/CursorAdapter;
    .locals 1

    .line 765
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->mSuggestionsAdapter:Landroidx/cursoradapter/widget/CursorAdapter;

    return-object v0
.end method

.method public isIconfiedByDefault()Z
    .locals 1

    .line 665
    iget-boolean v0, p0, Landroidx/appcompat/widget/SearchView;->mIconifiedByDefault:Z

    return v0
.end method

.method public isIconified()Z
    .locals 1

    .line 693
    iget-boolean v0, p0, Landroidx/appcompat/widget/SearchView;->mIconified:Z

    return v0
.end method

.method public isQueryRefinementEnabled()Z
    .locals 1

    .line 745
    iget-boolean v0, p0, Landroidx/appcompat/widget/SearchView;->mQueryRefinement:Z

    return v0
.end method

.method public isSubmitButtonEnabled()Z
    .locals 1

    .line 715
    iget-boolean v0, p0, Landroidx/appcompat/widget/SearchView;->mSubmitButtonEnabled:Z

    return v0
.end method

.method launchQuerySearch(ILjava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p1, "actionKey"    # I
    .param p2, "actionMsg"    # Ljava/lang/String;
    .param p3, "query"    # Ljava/lang/String;

    .line 1532
    const-string v7, "android.intent.action.SEARCH"

    .line 1533
    .local v7, "action":Ljava/lang/String;
    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, v7

    move-object v4, p3

    move v5, p1

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Landroidx/appcompat/widget/SearchView;->createIntent(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 1534
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Landroidx/appcompat/widget/SearchView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1535
    return-void
.end method

.method public onActionViewCollapsed()V
    .locals 3

    .line 1295
    const-string v0, ""

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroidx/appcompat/widget/SearchView;->setQuery(Ljava/lang/CharSequence;Z)V

    .line 1296
    invoke-virtual {p0}, Landroidx/appcompat/widget/SearchView;->clearFocus()V

    .line 1297
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroidx/appcompat/widget/SearchView;->updateViewsVisibility(Z)V

    .line 1298
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->mSearchSrcTextView:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    iget v2, p0, Landroidx/appcompat/widget/SearchView;->mCollapsedImeOptions:I

    invoke-virtual {v0, v2}, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->setImeOptions(I)V

    .line 1299
    iput-boolean v1, p0, Landroidx/appcompat/widget/SearchView;->mExpandedInActionView:Z

    .line 1300
    return-void
.end method

.method public onActionViewExpanded()V
    .locals 3

    .line 1307
    iget-boolean v0, p0, Landroidx/appcompat/widget/SearchView;->mExpandedInActionView:Z

    if-eqz v0, :cond_0

    return-void

    .line 1309
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/appcompat/widget/SearchView;->mExpandedInActionView:Z

    .line 1310
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->mSearchSrcTextView:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0}, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->getImeOptions()I

    move-result v0

    iput v0, p0, Landroidx/appcompat/widget/SearchView;->mCollapsedImeOptions:I

    .line 1311
    iget-object v1, p0, Landroidx/appcompat/widget/SearchView;->mSearchSrcTextView:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    const/high16 v2, 0x2000000

    or-int/2addr v0, v2

    invoke-virtual {v1, v0}, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->setImeOptions(I)V

    .line 1312
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->mSearchSrcTextView:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->setText(Ljava/lang/CharSequence;)V

    .line 1313
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/SearchView;->setIconified(Z)V

    .line 1314
    return-void
.end method

.method onCloseClicked()V
    .locals 4

    .line 1222
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->mSearchSrcTextView:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0}, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 1223
    .local v0, "text":Ljava/lang/CharSequence;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    .line 1224
    iget-boolean v1, p0, Landroidx/appcompat/widget/SearchView;->mIconifiedByDefault:Z

    if-eqz v1, :cond_2

    .line 1226
    iget-object v1, p0, Landroidx/appcompat/widget/SearchView;->mOnCloseListener:Landroidx/appcompat/widget/SearchView$OnCloseListener;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroidx/appcompat/widget/SearchView$OnCloseListener;->onClose()Z

    move-result v1

    if-nez v1, :cond_2

    .line 1228
    :cond_0
    invoke-virtual {p0}, Landroidx/appcompat/widget/SearchView;->clearFocus()V

    .line 1230
    invoke-direct {p0, v2}, Landroidx/appcompat/widget/SearchView;->updateViewsVisibility(Z)V

    goto :goto_0

    .line 1234
    :cond_1
    iget-object v1, p0, Landroidx/appcompat/widget/SearchView;->mSearchSrcTextView:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    const-string v3, ""

    invoke-virtual {v1, v3}, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->setText(Ljava/lang/CharSequence;)V

    .line 1235
    iget-object v1, p0, Landroidx/appcompat/widget/SearchView;->mSearchSrcTextView:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v1}, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->requestFocus()Z

    .line 1236
    iget-object v1, p0, Landroidx/appcompat/widget/SearchView;->mSearchSrcTextView:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->setImeVisibility(Z)V

    .line 1239
    :cond_2
    :goto_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 975
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->mUpdateDrawableStateRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/SearchView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 976
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->mReleaseCursorRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/SearchView;->post(Ljava/lang/Runnable;)Z

    .line 977
    invoke-super {p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->onDetachedFromWindow()V

    .line 978
    return-void
.end method

.method onItemClicked(IILjava/lang/String;)Z
    .locals 2
    .param p1, "position"    # I
    .param p2, "actionKey"    # I
    .param p3, "actionMsg"    # Ljava/lang/String;

    .line 1404
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->mOnSuggestionListener:Landroidx/appcompat/widget/SearchView$OnSuggestionListener;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 1405
    invoke-interface {v0, p1}, Landroidx/appcompat/widget/SearchView$OnSuggestionListener;->onSuggestionClick(I)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 1411
    :cond_0
    return v1

    .line 1406
    :cond_1
    :goto_0
    const/4 v0, 0x0

    invoke-direct {p0, p1, v1, v0}, Landroidx/appcompat/widget/SearchView;->launchSuggestion(IILjava/lang/String;)Z

    .line 1407
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->mSearchSrcTextView:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->setImeVisibility(Z)V

    .line 1408
    invoke-direct {p0}, Landroidx/appcompat/widget/SearchView;->dismissSuggestions()V

    .line 1409
    const/4 v0, 0x1

    return v0
.end method

.method onItemSelected(I)Z
    .locals 1
    .param p1, "position"    # I

    .line 1415
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->mOnSuggestionListener:Landroidx/appcompat/widget/SearchView$OnSuggestionListener;

    if-eqz v0, :cond_1

    .line 1416
    invoke-interface {v0, p1}, Landroidx/appcompat/widget/SearchView$OnSuggestionListener;->onSuggestionSelect(I)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 1420
    :cond_0
    const/4 v0, 0x0

    return v0

    .line 1417
    :cond_1
    :goto_0
    invoke-direct {p0, p1}, Landroidx/appcompat/widget/SearchView;->rewriteQueryFromSuggestion(I)V

    .line 1418
    const/4 v0, 0x1

    return v0
.end method

.method protected onLayout(ZIIII)V
    .locals 5
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .line 843
    invoke-super/range {p0 .. p5}, Landroidx/appcompat/widget/LinearLayoutCompat;->onLayout(ZIIII)V

    .line 845
    if-eqz p1, :cond_1

    .line 848
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->mSearchSrcTextView:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    iget-object v1, p0, Landroidx/appcompat/widget/SearchView;->mSearchSrcTextViewBounds:Landroid/graphics/Rect;

    invoke-direct {p0, v0, v1}, Landroidx/appcompat/widget/SearchView;->getChildBoundsWithinSearchView(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 849
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->mSearchSrtTextViewBoundsExpanded:Landroid/graphics/Rect;

    iget-object v1, p0, Landroidx/appcompat/widget/SearchView;->mSearchSrcTextViewBounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    const/4 v2, 0x0

    iget-object v3, p0, Landroidx/appcompat/widget/SearchView;->mSearchSrcTextViewBounds:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    sub-int v4, p5, p3

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 851
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->mTouchDelegate:Landroidx/appcompat/widget/SearchView$UpdatableTouchDelegate;

    if-nez v0, :cond_0

    .line 852
    new-instance v0, Landroidx/appcompat/widget/SearchView$UpdatableTouchDelegate;

    iget-object v1, p0, Landroidx/appcompat/widget/SearchView;->mSearchSrtTextViewBoundsExpanded:Landroid/graphics/Rect;

    iget-object v2, p0, Landroidx/appcompat/widget/SearchView;->mSearchSrcTextViewBounds:Landroid/graphics/Rect;

    iget-object v3, p0, Landroidx/appcompat/widget/SearchView;->mSearchSrcTextView:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    invoke-direct {v0, v1, v2, v3}, Landroidx/appcompat/widget/SearchView$UpdatableTouchDelegate;-><init>(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/view/View;)V

    iput-object v0, p0, Landroidx/appcompat/widget/SearchView;->mTouchDelegate:Landroidx/appcompat/widget/SearchView$UpdatableTouchDelegate;

    .line 854
    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/SearchView;->setTouchDelegate(Landroid/view/TouchDelegate;)V

    goto :goto_0

    .line 856
    :cond_0
    iget-object v1, p0, Landroidx/appcompat/widget/SearchView;->mSearchSrtTextViewBoundsExpanded:Landroid/graphics/Rect;

    iget-object v2, p0, Landroidx/appcompat/widget/SearchView;->mSearchSrcTextViewBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/widget/SearchView$UpdatableTouchDelegate;->setBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 859
    :cond_1
    :goto_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 6
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 794
    invoke-virtual {p0}, Landroidx/appcompat/widget/SearchView;->isIconified()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 795
    invoke-super {p0, p1, p2}, Landroidx/appcompat/widget/LinearLayoutCompat;->onMeasure(II)V

    .line 796
    return-void

    .line 799
    :cond_0
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 800
    .local v0, "widthMode":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 802
    .local v1, "width":I
    sparse-switch v0, :sswitch_data_0

    goto :goto_1

    .line 813
    :sswitch_0
    iget v2, p0, Landroidx/appcompat/widget/SearchView;->mMaxWidth:I

    if-lez v2, :cond_3

    .line 814
    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    goto :goto_1

    .line 819
    :sswitch_1
    iget v2, p0, Landroidx/appcompat/widget/SearchView;->mMaxWidth:I

    if-lez v2, :cond_1

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Landroidx/appcompat/widget/SearchView;->getPreferredWidth()I

    move-result v2

    :goto_0
    move v1, v2

    goto :goto_1

    .line 805
    :sswitch_2
    iget v2, p0, Landroidx/appcompat/widget/SearchView;->mMaxWidth:I

    if-lez v2, :cond_2

    .line 806
    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    goto :goto_1

    .line 808
    :cond_2
    invoke-direct {p0}, Landroidx/appcompat/widget/SearchView;->getPreferredWidth()I

    move-result v2

    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 810
    nop

    .line 822
    :cond_3
    :goto_1
    const/high16 v0, 0x40000000    # 2.0f

    .line 824
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    .line 825
    .local v2, "heightMode":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    .line 827
    .local v3, "height":I
    sparse-switch v2, :sswitch_data_1

    goto :goto_2

    .line 832
    :sswitch_3
    invoke-direct {p0}, Landroidx/appcompat/widget/SearchView;->getPreferredHeight()I

    move-result v3

    goto :goto_2

    .line 829
    :sswitch_4
    invoke-direct {p0}, Landroidx/appcompat/widget/SearchView;->getPreferredHeight()I

    move-result v4

    invoke-static {v4, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 830
    nop

    .line 835
    :goto_2
    const/high16 v2, 0x40000000    # 2.0f

    .line 837
    invoke-static {v1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 838
    invoke-static {v3, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    .line 837
    invoke-super {p0, v4, v5}, Landroidx/appcompat/widget/LinearLayoutCompat;->onMeasure(II)V

    .line 839
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_2
        0x0 -> :sswitch_1
        0x40000000 -> :sswitch_0
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        -0x80000000 -> :sswitch_4
        0x0 -> :sswitch_3
    .end sparse-switch
.end method

.method protected onQueryRefine(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "queryText"    # Ljava/lang/CharSequence;

    .line 989
    invoke-direct {p0, p1}, Landroidx/appcompat/widget/SearchView;->setQuery(Ljava/lang/CharSequence;)V

    .line 990
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2
    .param p1, "state"    # Landroid/os/Parcelable;

    .line 1369
    instance-of v0, p1, Landroidx/appcompat/widget/SearchView$SavedState;

    if-nez v0, :cond_0

    .line 1370
    invoke-super {p0, p1}, Landroidx/appcompat/widget/LinearLayoutCompat;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1371
    return-void

    .line 1373
    :cond_0
    move-object v0, p1

    check-cast v0, Landroidx/appcompat/widget/SearchView$SavedState;

    .line 1374
    .local v0, "ss":Landroidx/appcompat/widget/SearchView$SavedState;
    invoke-virtual {v0}, Landroidx/appcompat/widget/SearchView$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroidx/appcompat/widget/LinearLayoutCompat;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1375
    iget-boolean v1, v0, Landroidx/appcompat/widget/SearchView$SavedState;->isIconified:Z

    invoke-direct {p0, v1}, Landroidx/appcompat/widget/SearchView;->updateViewsVisibility(Z)V

    .line 1376
    invoke-virtual {p0}, Landroidx/appcompat/widget/SearchView;->requestLayout()V

    .line 1377
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .line 1361
    invoke-super {p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 1362
    .local v0, "superState":Landroid/os/Parcelable;
    new-instance v1, Landroidx/appcompat/widget/SearchView$SavedState;

    invoke-direct {v1, v0}, Landroidx/appcompat/widget/SearchView$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 1363
    .local v1, "ss":Landroidx/appcompat/widget/SearchView$SavedState;
    invoke-virtual {p0}, Landroidx/appcompat/widget/SearchView;->isIconified()Z

    move-result v2

    iput-boolean v2, v1, Landroidx/appcompat/widget/SearchView$SavedState;->isIconified:Z

    .line 1364
    return-object v1
.end method

.method onSearchClicked()V
    .locals 2

    .line 1242
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroidx/appcompat/widget/SearchView;->updateViewsVisibility(Z)V

    .line 1243
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->mSearchSrcTextView:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0}, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->requestFocus()Z

    .line 1244
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->mSearchSrcTextView:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->setImeVisibility(Z)V

    .line 1245
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->mOnSearchClickListener:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_0

    .line 1246
    invoke-interface {v0, p0}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 1248
    :cond_0
    return-void
.end method

.method onSubmitQuery()V
    .locals 4

    .line 1204
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->mSearchSrcTextView:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0}, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 1205
    .local v0, "query":Ljava/lang/CharSequence;
    if-eqz v0, :cond_2

    invoke-static {v0}, Landroid/text/TextUtils;->getTrimmedLength(Ljava/lang/CharSequence;)I

    move-result v1

    if-lez v1, :cond_2

    .line 1206
    iget-object v1, p0, Landroidx/appcompat/widget/SearchView;->mOnQueryChangeListener:Landroidx/appcompat/widget/SearchView$OnQueryTextListener;

    if-eqz v1, :cond_0

    .line 1207
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Landroidx/appcompat/widget/SearchView$OnQueryTextListener;->onQueryTextSubmit(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1208
    :cond_0
    iget-object v1, p0, Landroidx/appcompat/widget/SearchView;->mSearchable:Landroid/app/SearchableInfo;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 1209
    const/4 v1, 0x0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, v1, v3}, Landroidx/appcompat/widget/SearchView;->launchQuerySearch(ILjava/lang/String;Ljava/lang/String;)V

    .line 1211
    :cond_1
    iget-object v1, p0, Landroidx/appcompat/widget/SearchView;->mSearchSrcTextView:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->setImeVisibility(Z)V

    .line 1212
    invoke-direct {p0}, Landroidx/appcompat/widget/SearchView;->dismissSuggestions()V

    .line 1215
    :cond_2
    return-void
.end method

.method onSuggestionsKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "v"    # Landroid/view/View;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .line 1059
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->mSearchable:Landroid/app/SearchableInfo;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1060
    return v1

    .line 1062
    :cond_0
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->mSuggestionsAdapter:Landroidx/cursoradapter/widget/CursorAdapter;

    if-nez v0, :cond_1

    .line 1063
    return v1

    .line 1065
    :cond_1
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_7

    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1068
    const/16 v0, 0x42

    if-eq p2, v0, :cond_6

    const/16 v0, 0x54

    if-eq p2, v0, :cond_6

    const/16 v0, 0x3d

    if-ne p2, v0, :cond_2

    goto :goto_2

    .line 1076
    :cond_2
    const/16 v0, 0x15

    if-eq p2, v0, :cond_4

    const/16 v2, 0x16

    if-ne p2, v2, :cond_3

    goto :goto_0

    .line 1092
    :cond_3
    const/16 v0, 0x13

    if-ne p2, v0, :cond_7

    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->mSearchSrcTextView:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0}, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->getListSelection()I

    .line 1095
    return v1

    .line 1081
    :cond_4
    :goto_0
    if-ne p2, v0, :cond_5

    const/4 v0, 0x0

    goto :goto_1

    .line 1082
    :cond_5
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->mSearchSrcTextView:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0}, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->length()I

    move-result v0

    :goto_1
    nop

    .line 1083
    .local v0, "selPoint":I
    iget-object v2, p0, Landroidx/appcompat/widget/SearchView;->mSearchSrcTextView:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v2, v0}, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->setSelection(I)V

    .line 1084
    iget-object v2, p0, Landroidx/appcompat/widget/SearchView;->mSearchSrcTextView:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v2, v1}, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->setListSelection(I)V

    .line 1085
    iget-object v1, p0, Landroidx/appcompat/widget/SearchView;->mSearchSrcTextView:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v1}, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->clearListSelection()V

    .line 1086
    iget-object v1, p0, Landroidx/appcompat/widget/SearchView;->mSearchSrcTextView:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v1}, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->ensureImeVisible()V

    .line 1088
    const/4 v1, 0x1

    return v1

    .line 1070
    .end local v0    # "selPoint":I
    :cond_6
    :goto_2
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->mSearchSrcTextView:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0}, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->getListSelection()I

    move-result v0

    .line 1071
    .local v0, "position":I
    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Landroidx/appcompat/widget/SearchView;->onItemClicked(IILjava/lang/String;)Z

    move-result v1

    return v1

    .line 1098
    .end local v0    # "position":I
    :cond_7
    return v1
.end method

.method onTextChanged(Ljava/lang/CharSequence;)V
    .locals 4
    .param p1, "newText"    # Ljava/lang/CharSequence;

    .line 1190
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->mSearchSrcTextView:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0}, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 1191
    .local v0, "text":Ljava/lang/CharSequence;
    iput-object v0, p0, Landroidx/appcompat/widget/SearchView;->mUserQuery:Ljava/lang/CharSequence;

    .line 1192
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    .line 1193
    .local v1, "hasText":Z
    invoke-direct {p0, v1}, Landroidx/appcompat/widget/SearchView;->updateSubmitButton(Z)V

    .line 1194
    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-direct {p0, v2}, Landroidx/appcompat/widget/SearchView;->updateVoiceButton(Z)V

    .line 1195
    invoke-direct {p0}, Landroidx/appcompat/widget/SearchView;->updateCloseButton()V

    .line 1196
    invoke-direct {p0}, Landroidx/appcompat/widget/SearchView;->updateSubmitArea()V

    .line 1197
    iget-object v2, p0, Landroidx/appcompat/widget/SearchView;->mOnQueryChangeListener:Landroidx/appcompat/widget/SearchView$OnQueryTextListener;

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroidx/appcompat/widget/SearchView;->mOldQueryText:Ljava/lang/CharSequence;

    invoke-static {p1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1198
    iget-object v2, p0, Landroidx/appcompat/widget/SearchView;->mOnQueryChangeListener:Landroidx/appcompat/widget/SearchView$OnQueryTextListener;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Landroidx/appcompat/widget/SearchView$OnQueryTextListener;->onQueryTextChange(Ljava/lang/String;)Z

    .line 1200
    :cond_1
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroidx/appcompat/widget/SearchView;->mOldQueryText:Ljava/lang/CharSequence;

    .line 1201
    return-void
.end method

.method onTextFocusChanged()V
    .locals 1

    .line 1274
    invoke-virtual {p0}, Landroidx/appcompat/widget/SearchView;->isIconified()Z

    move-result v0

    invoke-direct {p0, v0}, Landroidx/appcompat/widget/SearchView;->updateViewsVisibility(Z)V

    .line 1277
    invoke-direct {p0}, Landroidx/appcompat/widget/SearchView;->postUpdateFocusedState()V

    .line 1278
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->mSearchSrcTextView:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0}, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1279
    invoke-virtual {p0}, Landroidx/appcompat/widget/SearchView;->forceSuggestionQuery()V

    .line 1281
    :cond_0
    return-void
.end method

.method onVoiceClicked()V
    .locals 4

    .line 1252
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->mSearchable:Landroid/app/SearchableInfo;

    if-nez v0, :cond_0

    .line 1253
    return-void

    .line 1255
    :cond_0
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->mSearchable:Landroid/app/SearchableInfo;

    .line 1257
    .local v0, "searchable":Landroid/app/SearchableInfo;
    :try_start_0
    invoke-virtual {v0}, Landroid/app/SearchableInfo;->getVoiceSearchLaunchWebSearch()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1258
    iget-object v1, p0, Landroidx/appcompat/widget/SearchView;->mVoiceWebSearchIntent:Landroid/content/Intent;

    invoke-direct {p0, v1, v0}, Landroidx/appcompat/widget/SearchView;->createVoiceWebSearchIntent(Landroid/content/Intent;Landroid/app/SearchableInfo;)Landroid/content/Intent;

    move-result-object v1

    .line 1260
    .local v1, "webSearchIntent":Landroid/content/Intent;
    invoke-virtual {p0}, Landroidx/appcompat/widget/SearchView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .end local v1    # "webSearchIntent":Landroid/content/Intent;
    goto :goto_0

    .line 1261
    :cond_1
    invoke-virtual {v0}, Landroid/app/SearchableInfo;->getVoiceSearchLaunchRecognizer()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1262
    iget-object v1, p0, Landroidx/appcompat/widget/SearchView;->mVoiceAppSearchIntent:Landroid/content/Intent;

    invoke-direct {p0, v1, v0}, Landroidx/appcompat/widget/SearchView;->createVoiceAppSearchIntent(Landroid/content/Intent;Landroid/app/SearchableInfo;)Landroid/content/Intent;

    move-result-object v1

    .line 1264
    .local v1, "appSearchIntent":Landroid/content/Intent;
    invoke-virtual {p0}, Landroidx/appcompat/widget/SearchView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 1261
    .end local v1    # "appSearchIntent":Landroid/content/Intent;
    :cond_2
    :goto_0
    nop

    .line 1270
    :goto_1
    goto :goto_2

    .line 1266
    :catch_0
    move-exception v1

    .line 1269
    .local v1, "e":Landroid/content/ActivityNotFoundException;
    const-string v2, "SearchView"

    const-string v3, "Could not find voice search activity"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1271
    .end local v1    # "e":Landroid/content/ActivityNotFoundException;
    :goto_2
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0
    .param p1, "hasWindowFocus"    # Z

    .line 1285
    invoke-super {p0, p1}, Landroidx/appcompat/widget/LinearLayoutCompat;->onWindowFocusChanged(Z)V

    .line 1287
    invoke-direct {p0}, Landroidx/appcompat/widget/SearchView;->postUpdateFocusedState()V

    .line 1288
    return-void
.end method

.method public requestFocus(ILandroid/graphics/Rect;)Z
    .locals 2
    .param p1, "direction"    # I
    .param p2, "previouslyFocusedRect"    # Landroid/graphics/Rect;

    .line 488
    iget-boolean v0, p0, Landroidx/appcompat/widget/SearchView;->mClearingFocus:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 490
    :cond_0
    invoke-virtual {p0}, Landroidx/appcompat/widget/SearchView;->isFocusable()Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    .line 492
    :cond_1
    invoke-virtual {p0}, Landroidx/appcompat/widget/SearchView;->isIconified()Z

    move-result v0

    if-nez v0, :cond_3

    .line 493
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->mSearchSrcTextView:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0, p1, p2}, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v0

    .line 494
    .local v0, "result":Z
    if-eqz v0, :cond_2

    .line 495
    invoke-direct {p0, v1}, Landroidx/appcompat/widget/SearchView;->updateViewsVisibility(Z)V

    .line 497
    :cond_2
    return v0

    .line 499
    .end local v0    # "result":Z
    :cond_3
    invoke-super {p0, p1, p2}, Landroidx/appcompat/widget/LinearLayoutCompat;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v0

    return v0
.end method

.method public setAppSearchData(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "appSearchData"    # Landroid/os/Bundle;

    .line 436
    iput-object p1, p0, Landroidx/appcompat/widget/SearchView;->mAppSearchData:Landroid/os/Bundle;

    .line 437
    return-void
.end method

.method public setIconified(Z)V
    .locals 0
    .param p1, "iconify"    # Z

    .line 679
    if-eqz p1, :cond_0

    .line 680
    invoke-virtual {p0}, Landroidx/appcompat/widget/SearchView;->onCloseClicked()V

    goto :goto_0

    .line 682
    :cond_0
    invoke-virtual {p0}, Landroidx/appcompat/widget/SearchView;->onSearchClicked()V

    .line 684
    :goto_0
    return-void
.end method

.method public setIconifiedByDefault(Z)V
    .locals 1
    .param p1, "iconified"    # Z

    .line 651
    iget-boolean v0, p0, Landroidx/appcompat/widget/SearchView;->mIconifiedByDefault:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 652
    :cond_0
    iput-boolean p1, p0, Landroidx/appcompat/widget/SearchView;->mIconifiedByDefault:Z

    .line 653
    invoke-direct {p0, p1}, Landroidx/appcompat/widget/SearchView;->updateViewsVisibility(Z)V

    .line 654
    invoke-direct {p0}, Landroidx/appcompat/widget/SearchView;->updateQueryHint()V

    .line 655
    return-void
.end method

.method public setImeOptions(I)V
    .locals 1
    .param p1, "imeOptions"    # I

    .line 448
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->mSearchSrcTextView:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->setImeOptions(I)V

    .line 449
    return-void
.end method

.method public setInputType(I)V
    .locals 1
    .param p1, "inputType"    # I

    .line 472
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->mSearchSrcTextView:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->setInputType(I)V

    .line 473
    return-void
.end method

.method public setMaxWidth(I)V
    .locals 0
    .param p1, "maxpixels"    # I

    .line 774
    iput p1, p0, Landroidx/appcompat/widget/SearchView;->mMaxWidth:I

    .line 776
    invoke-virtual {p0}, Landroidx/appcompat/widget/SearchView;->requestLayout()V

    .line 777
    return-void
.end method

.method public setOnCloseListener(Landroidx/appcompat/widget/SearchView$OnCloseListener;)V
    .locals 0
    .param p1, "listener"    # Landroidx/appcompat/widget/SearchView$OnCloseListener;

    .line 528
    iput-object p1, p0, Landroidx/appcompat/widget/SearchView;->mOnCloseListener:Landroidx/appcompat/widget/SearchView$OnCloseListener;

    .line 529
    return-void
.end method

.method public setOnQueryTextFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/view/View$OnFocusChangeListener;

    .line 537
    iput-object p1, p0, Landroidx/appcompat/widget/SearchView;->mOnQueryTextFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

    .line 538
    return-void
.end method

.method public setOnQueryTextListener(Landroidx/appcompat/widget/SearchView$OnQueryTextListener;)V
    .locals 0
    .param p1, "listener"    # Landroidx/appcompat/widget/SearchView$OnQueryTextListener;

    .line 519
    iput-object p1, p0, Landroidx/appcompat/widget/SearchView;->mOnQueryChangeListener:Landroidx/appcompat/widget/SearchView$OnQueryTextListener;

    .line 520
    return-void
.end method

.method public setOnSearchClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/view/View$OnClickListener;

    .line 558
    iput-object p1, p0, Landroidx/appcompat/widget/SearchView;->mOnSearchClickListener:Landroid/view/View$OnClickListener;

    .line 559
    return-void
.end method

.method public setOnSuggestionListener(Landroidx/appcompat/widget/SearchView$OnSuggestionListener;)V
    .locals 0
    .param p1, "listener"    # Landroidx/appcompat/widget/SearchView$OnSuggestionListener;

    .line 546
    iput-object p1, p0, Landroidx/appcompat/widget/SearchView;->mOnSuggestionListener:Landroidx/appcompat/widget/SearchView$OnSuggestionListener;

    .line 547
    return-void
.end method

.method public setQuery(Ljava/lang/CharSequence;Z)V
    .locals 2
    .param p1, "query"    # Ljava/lang/CharSequence;
    .param p2, "submit"    # Z

    .line 579
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->mSearchSrcTextView:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->setText(Ljava/lang/CharSequence;)V

    .line 580
    if-eqz p1, :cond_0

    .line 581
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->mSearchSrcTextView:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0}, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->setSelection(I)V

    .line 582
    iput-object p1, p0, Landroidx/appcompat/widget/SearchView;->mUserQuery:Ljava/lang/CharSequence;

    .line 586
    :cond_0
    if-eqz p2, :cond_1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 587
    invoke-virtual {p0}, Landroidx/appcompat/widget/SearchView;->onSubmitQuery()V

    .line 589
    :cond_1
    return-void
.end method

.method public setQueryHint(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "hint"    # Ljava/lang/CharSequence;

    .line 602
    iput-object p1, p0, Landroidx/appcompat/widget/SearchView;->mQueryHint:Ljava/lang/CharSequence;

    .line 603
    invoke-direct {p0}, Landroidx/appcompat/widget/SearchView;->updateQueryHint()V

    .line 604
    return-void
.end method

.method public setQueryRefinementEnabled(Z)V
    .locals 2
    .param p1, "enable"    # Z

    .line 733
    iput-boolean p1, p0, Landroidx/appcompat/widget/SearchView;->mQueryRefinement:Z

    .line 734
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->mSuggestionsAdapter:Landroidx/cursoradapter/widget/CursorAdapter;

    instance-of v1, v0, Landroidx/appcompat/widget/SuggestionsAdapter;

    if-eqz v1, :cond_1

    .line 735
    check-cast v0, Landroidx/appcompat/widget/SuggestionsAdapter;

    .line 736
    if-eqz p1, :cond_0

    const/4 v1, 0x2

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    .line 735
    :goto_0
    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/SuggestionsAdapter;->setQueryRefinement(I)V

    .line 738
    :cond_1
    return-void
.end method

.method public setSearchableInfo(Landroid/app/SearchableInfo;)V
    .locals 2
    .param p1, "searchable"    # Landroid/app/SearchableInfo;

    .line 413
    iput-object p1, p0, Landroidx/appcompat/widget/SearchView;->mSearchable:Landroid/app/SearchableInfo;

    .line 414
    if-eqz p1, :cond_0

    .line 415
    invoke-direct {p0}, Landroidx/appcompat/widget/SearchView;->updateSearchAutoComplete()V

    .line 416
    invoke-direct {p0}, Landroidx/appcompat/widget/SearchView;->updateQueryHint()V

    .line 419
    :cond_0
    invoke-direct {p0}, Landroidx/appcompat/widget/SearchView;->hasVoiceSearch()Z

    move-result v0

    iput-boolean v0, p0, Landroidx/appcompat/widget/SearchView;->mVoiceButtonEnabled:Z

    .line 421
    if-eqz v0, :cond_1

    .line 424
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->mSearchSrcTextView:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    const-string v1, "nm"

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->setPrivateImeOptions(Ljava/lang/String;)V

    .line 426
    :cond_1
    invoke-virtual {p0}, Landroidx/appcompat/widget/SearchView;->isIconified()Z

    move-result v0

    invoke-direct {p0, v0}, Landroidx/appcompat/widget/SearchView;->updateViewsVisibility(Z)V

    .line 427
    return-void
.end method

.method public setSubmitButtonEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .line 705
    iput-boolean p1, p0, Landroidx/appcompat/widget/SearchView;->mSubmitButtonEnabled:Z

    .line 706
    invoke-virtual {p0}, Landroidx/appcompat/widget/SearchView;->isIconified()Z

    move-result v0

    invoke-direct {p0, v0}, Landroidx/appcompat/widget/SearchView;->updateViewsVisibility(Z)V

    .line 707
    return-void
.end method

.method public setSuggestionsAdapter(Landroidx/cursoradapter/widget/CursorAdapter;)V
    .locals 1
    .param p1, "adapter"    # Landroidx/cursoradapter/widget/CursorAdapter;

    .line 755
    iput-object p1, p0, Landroidx/appcompat/widget/SearchView;->mSuggestionsAdapter:Landroidx/cursoradapter/widget/CursorAdapter;

    .line 757
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->mSearchSrcTextView:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 758
    return-void
.end method

.method updateFocusedState()V
    .locals 4

    .line 960
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->mSearchSrcTextView:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0}, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->hasFocus()Z

    move-result v0

    .line 961
    .local v0, "focused":Z
    if-eqz v0, :cond_0

    sget-object v1, Landroidx/appcompat/widget/SearchView;->FOCUSED_STATE_SET:[I

    goto :goto_0

    :cond_0
    sget-object v1, Landroidx/appcompat/widget/SearchView;->EMPTY_STATE_SET:[I

    .line 962
    .local v1, "stateSet":[I
    :goto_0
    iget-object v2, p0, Landroidx/appcompat/widget/SearchView;->mSearchPlate:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 963
    .local v2, "searchPlateBg":Landroid/graphics/drawable/Drawable;
    if-eqz v2, :cond_1

    .line 964
    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 966
    :cond_1
    iget-object v3, p0, Landroidx/appcompat/widget/SearchView;->mSubmitArea:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 967
    .local v3, "submitAreaBg":Landroid/graphics/drawable/Drawable;
    if-eqz v3, :cond_2

    .line 968
    invoke-virtual {v3, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 970
    :cond_2
    invoke-virtual {p0}, Landroidx/appcompat/widget/SearchView;->invalidate()V

    .line 971
    return-void
.end method
