.class Landroidx/appcompat/widget/AppCompatCheckedTextViewHelper;
.super Ljava/lang/Object;
.source "AppCompatCheckedTextViewHelper.java"


# instance fields
.field private mCheckMarkTintList:Landroid/content/res/ColorStateList;

.field private mCheckMarkTintMode:Landroid/graphics/PorterDuff$Mode;

.field private mHasCheckMarkTint:Z

.field private mHasCheckMarkTintMode:Z

.field private mSkipNextApply:Z

.field private final mView:Landroid/widget/CheckedTextView;


# direct methods
.method constructor <init>(Landroid/widget/CheckedTextView;)V
    .locals 1
    .param p1, "view"    # Landroid/widget/CheckedTextView;

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/appcompat/widget/AppCompatCheckedTextViewHelper;->mCheckMarkTintList:Landroid/content/res/ColorStateList;

    .line 44
    iput-object v0, p0, Landroidx/appcompat/widget/AppCompatCheckedTextViewHelper;->mCheckMarkTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 45
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/appcompat/widget/AppCompatCheckedTextViewHelper;->mHasCheckMarkTint:Z

    .line 46
    iput-boolean v0, p0, Landroidx/appcompat/widget/AppCompatCheckedTextViewHelper;->mHasCheckMarkTintMode:Z

    .line 51
    iput-object p1, p0, Landroidx/appcompat/widget/AppCompatCheckedTextViewHelper;->mView:Landroid/widget/CheckedTextView;

    .line 52
    return-void
.end method


# virtual methods
.method applyCheckMarkTint()V
    .locals 2

    .line 133
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatCheckedTextViewHelper;->mView:Landroid/widget/CheckedTextView;

    invoke-static {v0}, Landroidx/core/widget/CheckedTextViewCompat;->getCheckMarkDrawable(Landroid/widget/CheckedTextView;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 135
    .local v0, "checkMarkDrawable":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_4

    iget-boolean v1, p0, Landroidx/appcompat/widget/AppCompatCheckedTextViewHelper;->mHasCheckMarkTint:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Landroidx/appcompat/widget/AppCompatCheckedTextViewHelper;->mHasCheckMarkTintMode:Z

    if-eqz v1, :cond_4

    .line 136
    :cond_0
    invoke-static {v0}, Landroidx/core/graphics/drawable/DrawableCompat;->wrap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 137
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 138
    iget-boolean v1, p0, Landroidx/appcompat/widget/AppCompatCheckedTextViewHelper;->mHasCheckMarkTint:Z

    if-eqz v1, :cond_1

    .line 139
    iget-object v1, p0, Landroidx/appcompat/widget/AppCompatCheckedTextViewHelper;->mCheckMarkTintList:Landroid/content/res/ColorStateList;

    invoke-static {v0, v1}, Landroidx/core/graphics/drawable/DrawableCompat;->setTintList(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    .line 141
    :cond_1
    iget-boolean v1, p0, Landroidx/appcompat/widget/AppCompatCheckedTextViewHelper;->mHasCheckMarkTintMode:Z

    if-eqz v1, :cond_2

    .line 142
    iget-object v1, p0, Landroidx/appcompat/widget/AppCompatCheckedTextViewHelper;->mCheckMarkTintMode:Landroid/graphics/PorterDuff$Mode;

    invoke-static {v0, v1}, Landroidx/core/graphics/drawable/DrawableCompat;->setTintMode(Landroid/graphics/drawable/Drawable;Landroid/graphics/PorterDuff$Mode;)V

    .line 146
    :cond_2
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 147
    iget-object v1, p0, Landroidx/appcompat/widget/AppCompatCheckedTextViewHelper;->mView:Landroid/widget/CheckedTextView;

    invoke-virtual {v1}, Landroid/widget/CheckedTextView;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 149
    :cond_3
    iget-object v1, p0, Landroidx/appcompat/widget/AppCompatCheckedTextViewHelper;->mView:Landroid/widget/CheckedTextView;

    invoke-virtual {v1, v0}, Landroid/widget/CheckedTextView;->setCheckMarkDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 151
    :cond_4
    return-void
.end method

.method getSupportCheckMarkTintList()Landroid/content/res/ColorStateList;
    .locals 1

    .line 108
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatCheckedTextViewHelper;->mCheckMarkTintList:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method getSupportCheckMarkTintMode()Landroid/graphics/PorterDuff$Mode;
    .locals 1

    .line 119
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatCheckedTextViewHelper;->mCheckMarkTintMode:Landroid/graphics/PorterDuff$Mode;

    return-object v0
.end method

.method loadFromAttributes(Landroid/util/AttributeSet;I)V
    .locals 10
    .param p1, "attrs"    # Landroid/util/AttributeSet;
    .param p2, "defStyleAttr"    # I

    .line 55
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatCheckedTextViewHelper;->mView:Landroid/widget/CheckedTextView;

    .line 56
    invoke-virtual {v0}, Landroid/widget/CheckedTextView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Landroidx/appcompat/R$styleable;->CheckedTextView:[I

    const/4 v2, 0x0

    invoke-static {v0, p1, v1, p2, v2}, Landroidx/appcompat/widget/TintTypedArray;->obtainStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[III)Landroidx/appcompat/widget/TintTypedArray;

    move-result-object v0

    .line 58
    .local v0, "a":Landroidx/appcompat/widget/TintTypedArray;
    iget-object v3, p0, Landroidx/appcompat/widget/AppCompatCheckedTextViewHelper;->mView:Landroid/widget/CheckedTextView;

    invoke-virtual {v3}, Landroid/widget/CheckedTextView;->getContext()Landroid/content/Context;

    move-result-object v4

    sget-object v5, Landroidx/appcompat/R$styleable;->CheckedTextView:[I

    .line 59
    invoke-virtual {v0}, Landroidx/appcompat/widget/TintTypedArray;->getWrappedTypeArray()Landroid/content/res/TypedArray;

    move-result-object v7

    .line 58
    const/4 v9, 0x0

    move-object v6, p1

    move v8, p2

    invoke-static/range {v3 .. v9}, Landroidx/core/view/ViewCompat;->saveAttributeDataForStyleable(Landroid/view/View;Landroid/content/Context;[ILandroid/util/AttributeSet;Landroid/content/res/TypedArray;II)V

    .line 61
    const/4 v1, 0x0

    .line 62
    .local v1, "checkMarkDrawableLoaded":Z
    :try_start_0
    sget v3, Landroidx/appcompat/R$styleable;->CheckedTextView_checkMarkCompat:I

    invoke-virtual {v0, v3}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 63
    sget v3, Landroidx/appcompat/R$styleable;->CheckedTextView_checkMarkCompat:I

    invoke-virtual {v0, v3, v2}, Landroidx/appcompat/widget/TintTypedArray;->getResourceId(II)I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 65
    .local v3, "resourceId":I
    if-eqz v3, :cond_0

    .line 67
    :try_start_1
    iget-object v4, p0, Landroidx/appcompat/widget/AppCompatCheckedTextViewHelper;->mView:Landroid/widget/CheckedTextView;

    .line 68
    invoke-virtual {v4}, Landroid/widget/CheckedTextView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v3}, Landroidx/appcompat/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 67
    invoke-virtual {v4, v5}, Landroid/widget/CheckedTextView;->setCheckMarkDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 69
    const/4 v1, 0x1

    .line 73
    goto :goto_0

    .line 70
    :catch_0
    move-exception v4

    .line 76
    .end local v3    # "resourceId":I
    :cond_0
    :goto_0
    if-nez v1, :cond_1

    :try_start_2
    sget v3, Landroidx/appcompat/R$styleable;->CheckedTextView_android_checkMark:I

    invoke-virtual {v0, v3}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 78
    sget v3, Landroidx/appcompat/R$styleable;->CheckedTextView_android_checkMark:I

    invoke-virtual {v0, v3, v2}, Landroidx/appcompat/widget/TintTypedArray;->getResourceId(II)I

    move-result v2

    .line 80
    .local v2, "resourceId":I
    if-eqz v2, :cond_1

    .line 81
    iget-object v3, p0, Landroidx/appcompat/widget/AppCompatCheckedTextViewHelper;->mView:Landroid/widget/CheckedTextView;

    .line 82
    invoke-virtual {v3}, Landroid/widget/CheckedTextView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v2}, Landroidx/appcompat/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 81
    invoke-virtual {v3, v4}, Landroid/widget/CheckedTextView;->setCheckMarkDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 85
    .end local v2    # "resourceId":I
    :cond_1
    sget v2, Landroidx/appcompat/R$styleable;->CheckedTextView_checkMarkTint:I

    invoke-virtual {v0, v2}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 86
    iget-object v2, p0, Landroidx/appcompat/widget/AppCompatCheckedTextViewHelper;->mView:Landroid/widget/CheckedTextView;

    sget v3, Landroidx/appcompat/R$styleable;->CheckedTextView_checkMarkTint:I

    .line 87
    invoke-virtual {v0, v3}, Landroidx/appcompat/widget/TintTypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    .line 86
    invoke-static {v2, v3}, Landroidx/core/widget/CheckedTextViewCompat;->setCheckMarkTintList(Landroid/widget/CheckedTextView;Landroid/content/res/ColorStateList;)V

    .line 89
    :cond_2
    sget v2, Landroidx/appcompat/R$styleable;->CheckedTextView_checkMarkTintMode:I

    invoke-virtual {v0, v2}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 90
    iget-object v2, p0, Landroidx/appcompat/widget/AppCompatCheckedTextViewHelper;->mView:Landroid/widget/CheckedTextView;

    sget v3, Landroidx/appcompat/R$styleable;->CheckedTextView_checkMarkTintMode:I

    const/4 v4, -0x1

    .line 92
    invoke-virtual {v0, v3, v4}, Landroidx/appcompat/widget/TintTypedArray;->getInt(II)I

    move-result v3

    const/4 v4, 0x0

    .line 91
    invoke-static {v3, v4}, Landroidx/appcompat/widget/DrawableUtils;->parseTintMode(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v3

    .line 90
    invoke-static {v2, v3}, Landroidx/core/widget/CheckedTextViewCompat;->setCheckMarkTintMode(Landroid/widget/CheckedTextView;Landroid/graphics/PorterDuff$Mode;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 96
    .end local v1    # "checkMarkDrawableLoaded":Z
    :cond_3
    invoke-virtual {v0}, Landroidx/appcompat/widget/TintTypedArray;->recycle()V

    .line 97
    nop

    .line 98
    return-void

    .line 96
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroidx/appcompat/widget/TintTypedArray;->recycle()V

    .line 97
    throw v1
.end method

.method onSetCheckMarkDrawable()V
    .locals 1

    .line 123
    iget-boolean v0, p0, Landroidx/appcompat/widget/AppCompatCheckedTextViewHelper;->mSkipNextApply:Z

    if-eqz v0, :cond_0

    .line 124
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/appcompat/widget/AppCompatCheckedTextViewHelper;->mSkipNextApply:Z

    .line 125
    return-void

    .line 128
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/appcompat/widget/AppCompatCheckedTextViewHelper;->mSkipNextApply:Z

    .line 129
    invoke-virtual {p0}, Landroidx/appcompat/widget/AppCompatCheckedTextViewHelper;->applyCheckMarkTint()V

    .line 130
    return-void
.end method

.method setSupportCheckMarkTintList(Landroid/content/res/ColorStateList;)V
    .locals 1
    .param p1, "tint"    # Landroid/content/res/ColorStateList;

    .line 101
    iput-object p1, p0, Landroidx/appcompat/widget/AppCompatCheckedTextViewHelper;->mCheckMarkTintList:Landroid/content/res/ColorStateList;

    .line 102
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/appcompat/widget/AppCompatCheckedTextViewHelper;->mHasCheckMarkTint:Z

    .line 104
    invoke-virtual {p0}, Landroidx/appcompat/widget/AppCompatCheckedTextViewHelper;->applyCheckMarkTint()V

    .line 105
    return-void
.end method

.method setSupportCheckMarkTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 1
    .param p1, "tintMode"    # Landroid/graphics/PorterDuff$Mode;

    .line 112
    iput-object p1, p0, Landroidx/appcompat/widget/AppCompatCheckedTextViewHelper;->mCheckMarkTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 113
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/appcompat/widget/AppCompatCheckedTextViewHelper;->mHasCheckMarkTintMode:Z

    .line 115
    invoke-virtual {p0}, Landroidx/appcompat/widget/AppCompatCheckedTextViewHelper;->applyCheckMarkTint()V

    .line 116
    return-void
.end method
