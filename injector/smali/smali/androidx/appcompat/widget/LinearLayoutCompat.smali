.class public Landroidx/appcompat/widget/LinearLayoutCompat;
.super Landroid/view/ViewGroup;
.source "LinearLayoutCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;,
        Landroidx/appcompat/widget/LinearLayoutCompat$DividerMode;,
        Landroidx/appcompat/widget/LinearLayoutCompat$OrientationMode;
    }
.end annotation


# static fields
.field private static final ACCESSIBILITY_CLASS_NAME:Ljava/lang/String; = "androidx.appcompat.widget.LinearLayoutCompat"

.field public static final HORIZONTAL:I = 0x0

.field private static final INDEX_BOTTOM:I = 0x2

.field private static final INDEX_CENTER_VERTICAL:I = 0x0

.field private static final INDEX_FILL:I = 0x3

.field private static final INDEX_TOP:I = 0x1

.field public static final SHOW_DIVIDER_BEGINNING:I = 0x1

.field public static final SHOW_DIVIDER_END:I = 0x4

.field public static final SHOW_DIVIDER_MIDDLE:I = 0x2

.field public static final SHOW_DIVIDER_NONE:I = 0x0

.field public static final VERTICAL:I = 0x1

.field private static final VERTICAL_GRAVITY_COUNT:I = 0x4


# instance fields
.field private mBaselineAligned:Z

.field private mBaselineAlignedChildIndex:I

.field private mBaselineChildTop:I

.field private mDivider:Landroid/graphics/drawable/Drawable;

.field private mDividerHeight:I

.field private mDividerPadding:I

.field private mDividerWidth:I

.field private mGravity:I

.field private mMaxAscent:[I

.field private mMaxDescent:[I

.field private mOrientation:I

.field private mShowDividers:I

.field private mTotalLength:I

.field private mUseLargestChild:Z

.field private mWeightSum:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 153
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroidx/appcompat/widget/LinearLayoutCompat;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 154
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 157
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroidx/appcompat/widget/LinearLayoutCompat;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 158
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 162
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 104
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mBaselineAligned:Z

    .line 113
    const/4 v1, -0x1

    iput v1, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mBaselineAlignedChildIndex:I

    .line 120
    const/4 v2, 0x0

    iput v2, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mBaselineChildTop:I

    .line 124
    const v3, 0x800033

    iput v3, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mGravity:I

    .line 164
    sget-object v3, Landroidx/appcompat/R$styleable;->LinearLayoutCompat:[I

    invoke-static {p1, p2, v3, p3, v2}, Landroidx/appcompat/widget/TintTypedArray;->obtainStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[III)Landroidx/appcompat/widget/TintTypedArray;

    move-result-object v3

    .line 166
    .local v3, "a":Landroidx/appcompat/widget/TintTypedArray;
    sget-object v6, Landroidx/appcompat/R$styleable;->LinearLayoutCompat:[I

    .line 168
    invoke-virtual {v3}, Landroidx/appcompat/widget/TintTypedArray;->getWrappedTypeArray()Landroid/content/res/TypedArray;

    move-result-object v8

    .line 166
    const/4 v10, 0x0

    move-object v4, p0

    move-object v5, p1

    move-object v7, p2

    move v9, p3

    invoke-static/range {v4 .. v10}, Landroidx/core/view/ViewCompat;->saveAttributeDataForStyleable(Landroid/view/View;Landroid/content/Context;[ILandroid/util/AttributeSet;Landroid/content/res/TypedArray;II)V

    .line 170
    sget v4, Landroidx/appcompat/R$styleable;->LinearLayoutCompat_android_orientation:I

    invoke-virtual {v3, v4, v1}, Landroidx/appcompat/widget/TintTypedArray;->getInt(II)I

    move-result v4

    .line 171
    .local v4, "index":I
    if-ltz v4, :cond_0

    .line 172
    invoke-virtual {p0, v4}, Landroidx/appcompat/widget/LinearLayoutCompat;->setOrientation(I)V

    .line 175
    :cond_0
    sget v5, Landroidx/appcompat/R$styleable;->LinearLayoutCompat_android_gravity:I

    invoke-virtual {v3, v5, v1}, Landroidx/appcompat/widget/TintTypedArray;->getInt(II)I

    move-result v4

    .line 176
    if-ltz v4, :cond_1

    .line 177
    invoke-virtual {p0, v4}, Landroidx/appcompat/widget/LinearLayoutCompat;->setGravity(I)V

    .line 180
    :cond_1
    sget v5, Landroidx/appcompat/R$styleable;->LinearLayoutCompat_android_baselineAligned:I

    invoke-virtual {v3, v5, v0}, Landroidx/appcompat/widget/TintTypedArray;->getBoolean(IZ)Z

    move-result v0

    .line 181
    .local v0, "baselineAligned":Z
    if-nez v0, :cond_2

    .line 182
    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/LinearLayoutCompat;->setBaselineAligned(Z)V

    .line 185
    :cond_2
    sget v5, Landroidx/appcompat/R$styleable;->LinearLayoutCompat_android_weightSum:I

    const/high16 v6, -0x40800000    # -1.0f

    invoke-virtual {v3, v5, v6}, Landroidx/appcompat/widget/TintTypedArray;->getFloat(IF)F

    move-result v5

    iput v5, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mWeightSum:F

    .line 187
    sget v5, Landroidx/appcompat/R$styleable;->LinearLayoutCompat_android_baselineAlignedChildIndex:I

    .line 188
    invoke-virtual {v3, v5, v1}, Landroidx/appcompat/widget/TintTypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mBaselineAlignedChildIndex:I

    .line 190
    sget v1, Landroidx/appcompat/R$styleable;->LinearLayoutCompat_measureWithLargestChild:I

    invoke-virtual {v3, v1, v2}, Landroidx/appcompat/widget/TintTypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mUseLargestChild:Z

    .line 192
    sget v1, Landroidx/appcompat/R$styleable;->LinearLayoutCompat_divider:I

    invoke-virtual {v3, v1}, Landroidx/appcompat/widget/TintTypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroidx/appcompat/widget/LinearLayoutCompat;->setDividerDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 193
    sget v1, Landroidx/appcompat/R$styleable;->LinearLayoutCompat_showDividers:I

    invoke-virtual {v3, v1, v2}, Landroidx/appcompat/widget/TintTypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mShowDividers:I

    .line 194
    sget v1, Landroidx/appcompat/R$styleable;->LinearLayoutCompat_dividerPadding:I

    invoke-virtual {v3, v1, v2}, Landroidx/appcompat/widget/TintTypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mDividerPadding:I

    .line 196
    invoke-virtual {v3}, Landroidx/appcompat/widget/TintTypedArray;->recycle()V

    .line 197
    return-void
.end method

.method private forceUniformHeight(II)V
    .locals 11
    .param p1, "count"    # I
    .param p2, "widthMeasureSpec"    # I

    .line 1341
    invoke-virtual {p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getMeasuredHeight()I

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 1343
    .local v0, "uniformMeasureSpec":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, p1, :cond_1

    .line 1344
    invoke-virtual {p0, v1}, Landroidx/appcompat/widget/LinearLayoutCompat;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 1345
    .local v8, "child":Landroid/view/View;
    invoke-virtual {v8}, Landroid/view/View;->getVisibility()I

    move-result v2

    const/16 v3, 0x8

    if-eq v2, v3, :cond_0

    .line 1346
    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;

    .line 1348
    .local v9, "lp":Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;
    iget v2, v9, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->height:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    .line 1351
    iget v10, v9, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->width:I

    .line 1352
    .local v10, "oldWidth":I
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    iput v2, v9, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->width:I

    .line 1355
    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object v2, p0

    move-object v3, v8

    move v4, p2

    move v6, v0

    invoke-virtual/range {v2 .. v7}, Landroidx/appcompat/widget/LinearLayoutCompat;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 1356
    iput v10, v9, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->width:I

    .line 1343
    .end local v8    # "child":Landroid/view/View;
    .end local v9    # "lp":Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;
    .end local v10    # "oldWidth":I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1360
    .end local v1    # "i":I
    :cond_1
    return-void
.end method

.method private forceUniformWidth(II)V
    .locals 11
    .param p1, "count"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 919
    invoke-virtual {p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getMeasuredWidth()I

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 921
    .local v0, "uniformMeasureSpec":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, p1, :cond_1

    .line 922
    invoke-virtual {p0, v1}, Landroidx/appcompat/widget/LinearLayoutCompat;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 923
    .local v8, "child":Landroid/view/View;
    invoke-virtual {v8}, Landroid/view/View;->getVisibility()I

    move-result v2

    const/16 v3, 0x8

    if-eq v2, v3, :cond_0

    .line 924
    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;

    .line 926
    .local v9, "lp":Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;
    iget v2, v9, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->width:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    .line 929
    iget v10, v9, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->height:I

    .line 930
    .local v10, "oldHeight":I
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    iput v2, v9, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->height:I

    .line 933
    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object v2, p0

    move-object v3, v8

    move v4, v0

    move v6, p2

    invoke-virtual/range {v2 .. v7}, Landroidx/appcompat/widget/LinearLayoutCompat;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 934
    iput v10, v9, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->height:I

    .line 921
    .end local v8    # "child":Landroid/view/View;
    .end local v9    # "lp":Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;
    .end local v10    # "oldHeight":I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 938
    .end local v1    # "i":I
    :cond_1
    return-void
.end method

.method private setChildFrame(Landroid/view/View;IIII)V
    .locals 2
    .param p1, "child"    # Landroid/view/View;
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "width"    # I
    .param p5, "height"    # I

    .line 1669
    add-int v0, p2, p4

    add-int v1, p3, p5

    invoke-virtual {p1, p2, p3, v0, v1}, Landroid/view/View;->layout(IIII)V

    .line 1670
    return-void
.end method


# virtual methods
.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .line 1781
    instance-of v0, p1, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;

    return v0
.end method

.method drawDividersHorizontal(Landroid/graphics/Canvas;)V
    .locals 7
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 342
    invoke-virtual {p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getVirtualChildCount()I

    move-result v0

    .line 343
    .local v0, "count":I
    invoke-static {p0}, Landroidx/appcompat/widget/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v1

    .line 344
    .local v1, "isLayoutRtl":Z
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_2

    .line 345
    invoke-virtual {p0, v2}, Landroidx/appcompat/widget/LinearLayoutCompat;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 347
    .local v3, "child":Landroid/view/View;
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v4

    const/16 v5, 0x8

    if-eq v4, v5, :cond_1

    .line 348
    invoke-virtual {p0, v2}, Landroidx/appcompat/widget/LinearLayoutCompat;->hasDividerBeforeChildAt(I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 349
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;

    .line 351
    .local v4, "lp":Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;
    if-eqz v1, :cond_0

    .line 352
    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    move-result v5

    iget v6, v4, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->rightMargin:I

    add-int/2addr v5, v6

    .local v5, "position":I
    goto :goto_1

    .line 354
    .end local v5    # "position":I
    :cond_0
    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v5

    iget v6, v4, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->leftMargin:I

    sub-int/2addr v5, v6

    iget v6, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mDividerWidth:I

    sub-int/2addr v5, v6

    .line 356
    .restart local v5    # "position":I
    :goto_1
    invoke-virtual {p0, p1, v5}, Landroidx/appcompat/widget/LinearLayoutCompat;->drawVerticalDivider(Landroid/graphics/Canvas;I)V

    .line 344
    .end local v3    # "child":Landroid/view/View;
    .end local v4    # "lp":Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;
    .end local v5    # "position":I
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 361
    .end local v2    # "i":I
    :cond_2
    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/LinearLayoutCompat;->hasDividerBeforeChildAt(I)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 362
    add-int/lit8 v2, v0, -0x1

    invoke-virtual {p0, v2}, Landroidx/appcompat/widget/LinearLayoutCompat;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 364
    .local v2, "child":Landroid/view/View;
    if-nez v2, :cond_4

    .line 365
    if-eqz v1, :cond_3

    .line 366
    invoke-virtual {p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getPaddingLeft()I

    move-result v3

    .local v3, "position":I
    goto :goto_2

    .line 368
    .end local v3    # "position":I
    :cond_3
    invoke-virtual {p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getPaddingRight()I

    move-result v4

    sub-int/2addr v3, v4

    iget v4, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mDividerWidth:I

    sub-int/2addr v3, v4

    .restart local v3    # "position":I
    goto :goto_2

    .line 371
    .end local v3    # "position":I
    :cond_4
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;

    .line 372
    .local v3, "lp":Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;
    if-eqz v1, :cond_5

    .line 373
    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v4

    iget v5, v3, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->leftMargin:I

    sub-int/2addr v4, v5

    iget v5, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mDividerWidth:I

    sub-int/2addr v4, v5

    move v3, v4

    .local v4, "position":I
    goto :goto_2

    .line 375
    .end local v4    # "position":I
    :cond_5
    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v4

    iget v5, v3, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->rightMargin:I

    add-int/2addr v4, v5

    move v3, v4

    .line 378
    .local v3, "position":I
    :goto_2
    invoke-virtual {p0, p1, v3}, Landroidx/appcompat/widget/LinearLayoutCompat;->drawVerticalDivider(Landroid/graphics/Canvas;I)V

    .line 380
    .end local v2    # "child":Landroid/view/View;
    .end local v3    # "position":I
    :cond_6
    return-void
.end method

.method drawDividersVertical(Landroid/graphics/Canvas;)V
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 315
    invoke-virtual {p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getVirtualChildCount()I

    move-result v0

    .line 316
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 317
    invoke-virtual {p0, v1}, Landroidx/appcompat/widget/LinearLayoutCompat;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 319
    .local v2, "child":Landroid/view/View;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/16 v4, 0x8

    if-eq v3, v4, :cond_0

    .line 320
    invoke-virtual {p0, v1}, Landroidx/appcompat/widget/LinearLayoutCompat;->hasDividerBeforeChildAt(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 321
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;

    .line 322
    .local v3, "lp":Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v4

    iget v5, v3, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->topMargin:I

    sub-int/2addr v4, v5

    iget v5, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mDividerHeight:I

    sub-int/2addr v4, v5

    .line 323
    .local v4, "top":I
    invoke-virtual {p0, p1, v4}, Landroidx/appcompat/widget/LinearLayoutCompat;->drawHorizontalDivider(Landroid/graphics/Canvas;I)V

    .line 316
    .end local v2    # "child":Landroid/view/View;
    .end local v3    # "lp":Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;
    .end local v4    # "top":I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 328
    .end local v1    # "i":I
    :cond_1
    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/LinearLayoutCompat;->hasDividerBeforeChildAt(I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 329
    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p0, v1}, Landroidx/appcompat/widget/LinearLayoutCompat;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 330
    .local v1, "child":Landroid/view/View;
    const/4 v2, 0x0

    .line 331
    .local v2, "bottom":I
    if-nez v1, :cond_2

    .line 332
    invoke-virtual {p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getHeight()I

    move-result v3

    invoke-virtual {p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getPaddingBottom()I

    move-result v4

    sub-int/2addr v3, v4

    iget v4, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mDividerHeight:I

    sub-int/2addr v3, v4

    .end local v2    # "bottom":I
    .local v3, "bottom":I
    goto :goto_1

    .line 334
    .end local v3    # "bottom":I
    .restart local v2    # "bottom":I
    :cond_2
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;

    .line 335
    .local v3, "lp":Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;
    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v4

    iget v5, v3, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->bottomMargin:I

    add-int v2, v4, v5

    move v3, v2

    .line 337
    .end local v2    # "bottom":I
    .local v3, "bottom":I
    :goto_1
    invoke-virtual {p0, p1, v3}, Landroidx/appcompat/widget/LinearLayoutCompat;->drawHorizontalDivider(Landroid/graphics/Canvas;I)V

    .line 339
    .end local v1    # "child":Landroid/view/View;
    .end local v3    # "bottom":I
    :cond_3
    return-void
.end method

.method drawHorizontalDivider(Landroid/graphics/Canvas;I)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "top"    # I

    .line 383
    iget-object v0, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getPaddingLeft()I

    move-result v1

    iget v2, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mDividerPadding:I

    add-int/2addr v1, v2

    .line 384
    invoke-virtual {p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    iget v3, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mDividerPadding:I

    sub-int/2addr v2, v3

    iget v3, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mDividerHeight:I

    add-int/2addr v3, p2

    .line 383
    invoke-virtual {v0, v1, p2, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 385
    iget-object v0, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 386
    return-void
.end method

.method drawVerticalDivider(Landroid/graphics/Canvas;I)V
    .locals 5
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "left"    # I

    .line 389
    iget-object v0, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getPaddingTop()I

    move-result v1

    iget v2, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mDividerPadding:I

    add-int/2addr v1, v2

    iget v2, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mDividerWidth:I

    add-int/2addr v2, p2

    .line 390
    invoke-virtual {p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getHeight()I

    move-result v3

    invoke-virtual {p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getPaddingBottom()I

    move-result v4

    sub-int/2addr v3, v4

    iget v4, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mDividerPadding:I

    sub-int/2addr v3, v4

    .line 389
    invoke-virtual {v0, p2, v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 391
    iget-object v0, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 392
    return-void
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .line 61
    invoke-virtual {p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->generateDefaultLayoutParams()Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected generateDefaultLayoutParams()Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;
    .locals 3

    .line 1764
    iget v0, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mOrientation:I

    const/4 v1, -0x2

    if-nez v0, :cond_0

    .line 1765
    new-instance v0, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;-><init>(II)V

    return-object v0

    .line 1766
    :cond_0
    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    .line 1767
    new-instance v0, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v0, v2, v1}, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;-><init>(II)V

    return-object v0

    .line 1769
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    .line 61
    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/LinearLayoutCompat;->generateLayoutParams(Landroid/util/AttributeSet;)Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    .line 61
    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/LinearLayoutCompat;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;

    move-result-object p1

    return-object p1
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;
    .locals 2
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .line 1751
    new-instance v0, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;

    invoke-virtual {p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;
    .locals 1
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .line 1774
    new-instance v0, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;

    invoke-direct {v0, p1}, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public getBaseline()I
    .locals 6

    .line 445
    iget v0, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mBaselineAlignedChildIndex:I

    if-gez v0, :cond_0

    .line 446
    invoke-super {p0}, Landroid/view/ViewGroup;->getBaseline()I

    move-result v0

    return v0

    .line 449
    :cond_0
    invoke-virtual {p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getChildCount()I

    move-result v0

    iget v1, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mBaselineAlignedChildIndex:I

    if-le v0, v1, :cond_4

    .line 454
    invoke-virtual {p0, v1}, Landroidx/appcompat/widget/LinearLayoutCompat;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 455
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getBaseline()I

    move-result v1

    .line 457
    .local v1, "childBaseline":I
    const/4 v2, -0x1

    if-ne v1, v2, :cond_2

    .line 458
    iget v3, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mBaselineAlignedChildIndex:I

    if-nez v3, :cond_1

    .line 460
    return v2

    .line 464
    :cond_1
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "mBaselineAlignedChildIndex of LinearLayout points to a View that doesn\'t know how to get its baseline."

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 474
    :cond_2
    iget v2, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mBaselineChildTop:I

    .line 476
    .local v2, "childTop":I
    iget v3, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mOrientation:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_3

    .line 477
    iget v3, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mGravity:I

    and-int/lit8 v3, v3, 0x70

    .line 478
    .local v3, "majorGravity":I
    const/16 v4, 0x30

    if-eq v3, v4, :cond_3

    .line 479
    sparse-switch v3, :sswitch_data_0

    goto :goto_0

    .line 481
    :sswitch_0
    invoke-virtual {p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getBottom()I

    move-result v4

    invoke-virtual {p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getTop()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getPaddingBottom()I

    move-result v5

    sub-int/2addr v4, v5

    iget v5, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    sub-int v2, v4, v5

    .line 482
    goto :goto_0

    .line 485
    :sswitch_1
    invoke-virtual {p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getBottom()I

    move-result v4

    invoke-virtual {p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getTop()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getPaddingTop()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getPaddingBottom()I

    move-result v5

    sub-int/2addr v4, v5

    iget v5, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    sub-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v2, v4

    .line 492
    .end local v3    # "majorGravity":I
    :cond_3
    :goto_0
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;

    .line 493
    .local v3, "lp":Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;
    iget v4, v3, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->topMargin:I

    add-int/2addr v4, v2

    add-int/2addr v4, v1

    return v4

    .line 450
    .end local v0    # "child":Landroid/view/View;
    .end local v1    # "childBaseline":I
    .end local v2    # "childTop":I
    .end local v3    # "lp":Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;
    :cond_4
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "mBaselineAlignedChildIndex of LinearLayout set to an index that is out of bounds."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x10 -> :sswitch_1
        0x50 -> :sswitch_0
    .end sparse-switch
.end method

.method public getBaselineAlignedChildIndex()I
    .locals 1

    .line 503
    iget v0, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mBaselineAlignedChildIndex:I

    return v0
.end method

.method getChildrenSkipCount(Landroid/view/View;I)I
    .locals 1
    .param p1, "child"    # Landroid/view/View;
    .param p2, "index"    # I

    .line 1371
    const/4 v0, 0x0

    return v0
.end method

.method public getDividerDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 240
    iget-object v0, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mDivider:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getDividerPadding()I
    .locals 1

    .line 288
    iget v0, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mDividerPadding:I

    return v0
.end method

.method public getDividerWidth()I
    .locals 1

    .line 298
    iget v0, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mDividerWidth:I

    return v0
.end method

.method public getGravity()I
    .locals 1

    .line 1730
    iget v0, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mGravity:I

    return v0
.end method

.method getLocationOffset(Landroid/view/View;)I
    .locals 1
    .param p1, "child"    # Landroid/view/View;

    .line 1413
    const/4 v0, 0x0

    return v0
.end method

.method getNextLocationOffset(Landroid/view/View;)I
    .locals 1
    .param p1, "child"    # Landroid/view/View;

    .line 1425
    const/4 v0, 0x0

    return v0
.end method

.method public getOrientation()I
    .locals 1

    .line 1695
    iget v0, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mOrientation:I

    return v0
.end method

.method public getShowDividers()I
    .locals 1

    .line 230
    iget v0, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mShowDividers:I

    return v0
.end method

.method getVirtualChildAt(I)Landroid/view/View;
    .locals 1
    .param p1, "index"    # I

    .line 528
    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/LinearLayoutCompat;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method getVirtualChildCount()I
    .locals 1

    .line 541
    invoke-virtual {p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getChildCount()I

    move-result v0

    return v0
.end method

.method public getWeightSum()F
    .locals 1

    .line 553
    iget v0, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mWeightSum:F

    return v0
.end method

.method protected hasDividerBeforeChildAt(I)Z
    .locals 4
    .param p1, "childIndex"    # I

    .line 590
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p1, :cond_1

    .line 591
    iget v2, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mShowDividers:I

    and-int/2addr v2, v1

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0

    .line 592
    :cond_1
    invoke-virtual {p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getChildCount()I

    move-result v2

    if-ne p1, v2, :cond_3

    .line 593
    iget v2, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mShowDividers:I

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_2

    const/4 v0, 0x1

    :cond_2
    return v0

    .line 594
    :cond_3
    iget v1, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mShowDividers:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_6

    .line 595
    const/4 v0, 0x0

    .line 596
    .local v0, "hasVisibleViewBefore":Z
    add-int/lit8 v1, p1, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_5

    .line 597
    invoke-virtual {p0, v1}, Landroidx/appcompat/widget/LinearLayoutCompat;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    const/16 v3, 0x8

    if-eq v2, v3, :cond_4

    .line 598
    const/4 v0, 0x1

    .line 599
    goto :goto_1

    .line 596
    :cond_4
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 602
    .end local v1    # "i":I
    :cond_5
    :goto_1
    return v0

    .line 604
    .end local v0    # "hasVisibleViewBefore":Z
    :cond_6
    return v0
.end method

.method public isBaselineAligned()Z
    .locals 1

    .line 402
    iget-boolean v0, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mBaselineAligned:Z

    return v0
.end method

.method public isMeasureWithLargestChildEnabled()Z
    .locals 1

    .line 426
    iget-boolean v0, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mUseLargestChild:Z

    return v0
.end method

.method layoutHorizontal(IIII)V
    .locals 33
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .line 1545
    move-object/from16 v6, p0

    invoke-static/range {p0 .. p0}, Landroidx/appcompat/widget/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v7

    .line 1546
    .local v7, "isLayoutRtl":Z
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getPaddingTop()I

    move-result v8

    .line 1552
    .local v8, "paddingTop":I
    sub-int v9, p4, p2

    .line 1553
    .local v9, "height":I
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getPaddingBottom()I

    move-result v0

    sub-int v10, v9, v0

    .line 1556
    .local v10, "childBottom":I
    sub-int v0, v9, v8

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getPaddingBottom()I

    move-result v1

    sub-int v11, v0, v1

    .line 1558
    .local v11, "childSpace":I
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getVirtualChildCount()I

    move-result v12

    .line 1560
    .local v12, "count":I
    iget v0, v6, Landroidx/appcompat/widget/LinearLayoutCompat;->mGravity:I

    const v1, 0x800007

    and-int v13, v0, v1

    .line 1561
    .local v13, "majorGravity":I
    and-int/lit8 v14, v0, 0x70

    .line 1563
    .local v14, "minorGravity":I
    iget-boolean v15, v6, Landroidx/appcompat/widget/LinearLayoutCompat;->mBaselineAligned:Z

    .line 1565
    .local v15, "baselineAligned":Z
    iget-object v5, v6, Landroidx/appcompat/widget/LinearLayoutCompat;->mMaxAscent:[I

    .line 1566
    .local v5, "maxAscent":[I
    iget-object v4, v6, Landroidx/appcompat/widget/LinearLayoutCompat;->mMaxDescent:[I

    .line 1568
    .local v4, "maxDescent":[I
    invoke-static/range {p0 .. p0}, Landroidx/core/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v3

    .line 1569
    .local v3, "layoutDirection":I
    invoke-static {v13, v3}, Landroidx/core/view/GravityCompat;->getAbsoluteGravity(II)I

    move-result v0

    const/16 v16, 0x2

    sparse-switch v0, :sswitch_data_0

    .line 1582
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getPaddingLeft()I

    move-result v0

    .local v0, "childLeft":I
    goto :goto_0

    .line 1572
    .end local v0    # "childLeft":I
    :sswitch_0
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getPaddingLeft()I

    move-result v0

    add-int v0, v0, p3

    sub-int v0, v0, p1

    iget v1, v6, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    sub-int/2addr v0, v1

    .line 1573
    .restart local v0    # "childLeft":I
    goto :goto_0

    .line 1577
    .end local v0    # "childLeft":I
    :sswitch_1
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getPaddingLeft()I

    move-result v0

    sub-int v1, p3, p1

    iget v2, v6, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    .line 1578
    .restart local v0    # "childLeft":I
    nop

    .line 1586
    :goto_0
    const/4 v1, 0x0

    .line 1587
    .local v1, "start":I
    const/4 v2, 0x1

    .line 1589
    .local v2, "dir":I
    if-eqz v7, :cond_0

    .line 1590
    add-int/lit8 v1, v12, -0x1

    .line 1591
    const/4 v2, -0x1

    move/from16 v17, v1

    move/from16 v18, v2

    goto :goto_1

    .line 1589
    :cond_0
    move/from16 v17, v1

    move/from16 v18, v2

    .line 1594
    .end local v1    # "start":I
    .end local v2    # "dir":I
    .local v17, "start":I
    .local v18, "dir":I
    :goto_1
    const/4 v1, 0x0

    move v2, v1

    .local v2, "i":I
    :goto_2
    if-ge v2, v12, :cond_9

    .line 1595
    mul-int v1, v18, v2

    add-int v1, v17, v1

    .line 1596
    .local v1, "childIndex":I
    move/from16 v19, v7

    .end local v7    # "isLayoutRtl":Z
    .local v19, "isLayoutRtl":Z
    invoke-virtual {v6, v1}, Landroidx/appcompat/widget/LinearLayoutCompat;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 1598
    .local v7, "child":Landroid/view/View;
    const/16 v20, 0x1

    if-nez v7, :cond_1

    .line 1599
    invoke-virtual {v6, v1}, Landroidx/appcompat/widget/LinearLayoutCompat;->measureNullChild(I)I

    move-result v21

    add-int v0, v0, v21

    move/from16 v22, v3

    move-object/from16 v31, v4

    move-object/from16 v32, v5

    move/from16 v29, v8

    move/from16 v26, v9

    move/from16 v28, v10

    goto/16 :goto_6

    .line 1600
    :cond_1
    move/from16 v21, v2

    .end local v2    # "i":I
    .local v21, "i":I
    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    move-result v2

    move/from16 v22, v3

    .end local v3    # "layoutDirection":I
    .local v22, "layoutDirection":I
    const/16 v3, 0x8

    if-eq v2, v3, :cond_8

    .line 1601
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredWidth()I

    move-result v23

    .line 1602
    .local v23, "childWidth":I
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredHeight()I

    move-result v24

    .line 1603
    .local v24, "childHeight":I
    const/4 v2, -0x1

    .line 1605
    .local v2, "childBaseline":I
    nop

    .line 1606
    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;

    .line 1608
    .local v3, "lp":Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;
    move/from16 v25, v2

    .end local v2    # "childBaseline":I
    .local v25, "childBaseline":I
    const/4 v2, -0x1

    if-eqz v15, :cond_2

    move/from16 v26, v9

    .end local v9    # "height":I
    .local v26, "height":I
    iget v9, v3, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->height:I

    if-eq v9, v2, :cond_3

    .line 1609
    invoke-virtual {v7}, Landroid/view/View;->getBaseline()I

    move-result v9

    .end local v25    # "childBaseline":I
    .local v9, "childBaseline":I
    goto :goto_3

    .line 1608
    .end local v26    # "height":I
    .local v9, "height":I
    .restart local v25    # "childBaseline":I
    :cond_2
    move/from16 v26, v9

    .line 1612
    .end local v9    # "height":I
    .restart local v26    # "height":I
    :cond_3
    move/from16 v9, v25

    .end local v25    # "childBaseline":I
    .local v9, "childBaseline":I
    :goto_3
    iget v2, v3, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->gravity:I

    .line 1613
    .local v2, "gravity":I
    if-gez v2, :cond_4

    .line 1614
    move v2, v14

    move/from16 v27, v2

    goto :goto_4

    .line 1613
    :cond_4
    move/from16 v27, v2

    .line 1617
    .end local v2    # "gravity":I
    .local v27, "gravity":I
    :goto_4
    and-int/lit8 v2, v27, 0x70

    sparse-switch v2, :sswitch_data_1

    .line 1649
    move/from16 v28, v10

    .end local v10    # "childBottom":I
    .local v28, "childBottom":I
    move v2, v8

    move v10, v2

    .local v2, "childTop":I
    goto :goto_5

    .line 1642
    .end local v2    # "childTop":I
    .end local v28    # "childBottom":I
    .restart local v10    # "childBottom":I
    :sswitch_2
    sub-int v2, v10, v24

    move/from16 v28, v10

    .end local v10    # "childBottom":I
    .restart local v28    # "childBottom":I
    iget v10, v3, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->bottomMargin:I

    sub-int/2addr v2, v10

    .line 1643
    .restart local v2    # "childTop":I
    const/4 v10, -0x1

    if-eq v9, v10, :cond_5

    .line 1644
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredHeight()I

    move-result v10

    sub-int/2addr v10, v9

    .line 1645
    .local v10, "descent":I
    aget v25, v4, v16

    sub-int v25, v25, v10

    sub-int v2, v2, v25

    .line 1646
    .end local v10    # "descent":I
    move v10, v2

    goto :goto_5

    .line 1643
    :cond_5
    move v10, v2

    goto :goto_5

    .line 1619
    .end local v2    # "childTop":I
    .end local v28    # "childBottom":I
    .local v10, "childBottom":I
    :sswitch_3
    move/from16 v28, v10

    .end local v10    # "childBottom":I
    .restart local v28    # "childBottom":I
    iget v2, v3, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->topMargin:I

    add-int/2addr v2, v8

    .line 1620
    .restart local v2    # "childTop":I
    const/4 v10, -0x1

    if-eq v9, v10, :cond_6

    .line 1621
    aget v10, v5, v20

    sub-int/2addr v10, v9

    add-int/2addr v2, v10

    move v10, v2

    goto :goto_5

    .line 1620
    :cond_6
    move v10, v2

    goto :goto_5

    .line 1637
    .end local v2    # "childTop":I
    .end local v28    # "childBottom":I
    .restart local v10    # "childBottom":I
    :sswitch_4
    move/from16 v28, v10

    .end local v10    # "childBottom":I
    .restart local v28    # "childBottom":I
    sub-int v2, v11, v24

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v2, v8

    iget v10, v3, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->topMargin:I

    add-int/2addr v2, v10

    iget v10, v3, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->bottomMargin:I

    sub-int/2addr v2, v10

    .line 1639
    .restart local v2    # "childTop":I
    move v10, v2

    .line 1653
    .end local v2    # "childTop":I
    .local v10, "childTop":I
    :goto_5
    invoke-virtual {v6, v1}, Landroidx/appcompat/widget/LinearLayoutCompat;->hasDividerBeforeChildAt(I)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 1654
    iget v2, v6, Landroidx/appcompat/widget/LinearLayoutCompat;->mDividerWidth:I

    add-int/2addr v0, v2

    .line 1657
    :cond_7
    iget v2, v3, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->leftMargin:I

    add-int v25, v0, v2

    .line 1658
    .end local v0    # "childLeft":I
    .local v25, "childLeft":I
    invoke-virtual {v6, v7}, Landroidx/appcompat/widget/LinearLayoutCompat;->getLocationOffset(Landroid/view/View;)I

    move-result v0

    add-int v2, v25, v0

    move-object/from16 v0, p0

    move/from16 v29, v8

    move v8, v1

    .end local v1    # "childIndex":I
    .local v8, "childIndex":I
    .local v29, "paddingTop":I
    move-object v1, v7

    move/from16 v30, v9

    move-object v9, v3

    .end local v3    # "lp":Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;
    .local v9, "lp":Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;
    .local v30, "childBaseline":I
    move v3, v10

    move-object/from16 v31, v4

    .end local v4    # "maxDescent":[I
    .local v31, "maxDescent":[I
    move/from16 v4, v23

    move-object/from16 v32, v5

    .end local v5    # "maxAscent":[I
    .local v32, "maxAscent":[I
    move/from16 v5, v24

    invoke-direct/range {v0 .. v5}, Landroidx/appcompat/widget/LinearLayoutCompat;->setChildFrame(Landroid/view/View;IIII)V

    .line 1660
    iget v0, v9, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->rightMargin:I

    add-int v0, v23, v0

    .line 1661
    invoke-virtual {v6, v7}, Landroidx/appcompat/widget/LinearLayoutCompat;->getNextLocationOffset(Landroid/view/View;)I

    move-result v1

    add-int/2addr v0, v1

    add-int v25, v25, v0

    .line 1663
    invoke-virtual {v6, v7, v8}, Landroidx/appcompat/widget/LinearLayoutCompat;->getChildrenSkipCount(Landroid/view/View;I)I

    move-result v0

    add-int v2, v21, v0

    move/from16 v0, v25

    .end local v21    # "i":I
    .local v2, "i":I
    goto :goto_6

    .line 1600
    .end local v2    # "i":I
    .end local v23    # "childWidth":I
    .end local v24    # "childHeight":I
    .end local v25    # "childLeft":I
    .end local v26    # "height":I
    .end local v27    # "gravity":I
    .end local v28    # "childBottom":I
    .end local v29    # "paddingTop":I
    .end local v30    # "childBaseline":I
    .end local v31    # "maxDescent":[I
    .end local v32    # "maxAscent":[I
    .restart local v0    # "childLeft":I
    .restart local v1    # "childIndex":I
    .restart local v4    # "maxDescent":[I
    .restart local v5    # "maxAscent":[I
    .local v8, "paddingTop":I
    .local v9, "height":I
    .local v10, "childBottom":I
    .restart local v21    # "i":I
    :cond_8
    move-object/from16 v31, v4

    move-object/from16 v32, v5

    move/from16 v29, v8

    move/from16 v26, v9

    move/from16 v28, v10

    move v8, v1

    .end local v1    # "childIndex":I
    .end local v4    # "maxDescent":[I
    .end local v5    # "maxAscent":[I
    .end local v9    # "height":I
    .end local v10    # "childBottom":I
    .local v8, "childIndex":I
    .restart local v26    # "height":I
    .restart local v28    # "childBottom":I
    .restart local v29    # "paddingTop":I
    .restart local v31    # "maxDescent":[I
    .restart local v32    # "maxAscent":[I
    move/from16 v2, v21

    .line 1594
    .end local v7    # "child":Landroid/view/View;
    .end local v8    # "childIndex":I
    .end local v21    # "i":I
    .restart local v2    # "i":I
    :goto_6
    add-int/lit8 v2, v2, 0x1

    move/from16 v7, v19

    move/from16 v3, v22

    move/from16 v9, v26

    move/from16 v10, v28

    move/from16 v8, v29

    move-object/from16 v4, v31

    move-object/from16 v5, v32

    goto/16 :goto_2

    .line 1666
    .end local v2    # "i":I
    .end local v19    # "isLayoutRtl":Z
    .end local v22    # "layoutDirection":I
    .end local v26    # "height":I
    .end local v28    # "childBottom":I
    .end local v29    # "paddingTop":I
    .end local v31    # "maxDescent":[I
    .end local v32    # "maxAscent":[I
    .local v3, "layoutDirection":I
    .restart local v4    # "maxDescent":[I
    .restart local v5    # "maxAscent":[I
    .local v7, "isLayoutRtl":Z
    .local v8, "paddingTop":I
    .restart local v9    # "height":I
    .restart local v10    # "childBottom":I
    :cond_9
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x5 -> :sswitch_0
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        0x10 -> :sswitch_4
        0x30 -> :sswitch_3
        0x50 -> :sswitch_2
    .end sparse-switch
.end method

.method layoutVertical(IIII)V
    .locals 24
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .line 1450
    move-object/from16 v6, p0

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getPaddingLeft()I

    move-result v7

    .line 1456
    .local v7, "paddingLeft":I
    sub-int v8, p3, p1

    .line 1457
    .local v8, "width":I
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getPaddingRight()I

    move-result v0

    sub-int v9, v8, v0

    .line 1460
    .local v9, "childRight":I
    sub-int v0, v8, v7

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getPaddingRight()I

    move-result v1

    sub-int v10, v0, v1

    .line 1462
    .local v10, "childSpace":I
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getVirtualChildCount()I

    move-result v11

    .line 1464
    .local v11, "count":I
    iget v0, v6, Landroidx/appcompat/widget/LinearLayoutCompat;->mGravity:I

    and-int/lit8 v12, v0, 0x70

    .line 1465
    .local v12, "majorGravity":I
    const v1, 0x800007

    and-int v13, v0, v1

    .line 1467
    .local v13, "minorGravity":I
    sparse-switch v12, :sswitch_data_0

    .line 1480
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getPaddingTop()I

    move-result v0

    .local v0, "childTop":I
    goto :goto_0

    .line 1470
    .end local v0    # "childTop":I
    :sswitch_0
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getPaddingTop()I

    move-result v0

    add-int v0, v0, p4

    sub-int v0, v0, p2

    iget v1, v6, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    sub-int/2addr v0, v1

    .line 1471
    .restart local v0    # "childTop":I
    goto :goto_0

    .line 1475
    .end local v0    # "childTop":I
    :sswitch_1
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getPaddingTop()I

    move-result v0

    sub-int v1, p4, p2

    iget v2, v6, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    .line 1476
    .restart local v0    # "childTop":I
    nop

    .line 1484
    :goto_0
    const/4 v1, 0x0

    move v14, v1

    .local v14, "i":I
    :goto_1
    if-ge v14, v11, :cond_4

    .line 1485
    invoke-virtual {v6, v14}, Landroidx/appcompat/widget/LinearLayoutCompat;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v15

    .line 1486
    .local v15, "child":Landroid/view/View;
    if-nez v15, :cond_0

    .line 1487
    invoke-virtual {v6, v14}, Landroidx/appcompat/widget/LinearLayoutCompat;->measureNullChild(I)I

    move-result v1

    add-int/2addr v0, v1

    move/from16 v23, v7

    goto/16 :goto_4

    .line 1488
    :cond_0
    invoke-virtual {v15}, Landroid/view/View;->getVisibility()I

    move-result v1

    const/16 v2, 0x8

    if-eq v1, v2, :cond_3

    .line 1489
    invoke-virtual {v15}, Landroid/view/View;->getMeasuredWidth()I

    move-result v16

    .line 1490
    .local v16, "childWidth":I
    invoke-virtual {v15}, Landroid/view/View;->getMeasuredHeight()I

    move-result v17

    .line 1492
    .local v17, "childHeight":I
    nop

    .line 1493
    invoke-virtual {v15}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;

    .line 1495
    .local v5, "lp":Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;
    iget v1, v5, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->gravity:I

    .line 1496
    .local v1, "gravity":I
    if-gez v1, :cond_1

    .line 1497
    move v1, v13

    move v4, v1

    goto :goto_2

    .line 1496
    :cond_1
    move v4, v1

    .line 1499
    .end local v1    # "gravity":I
    .local v4, "gravity":I
    :goto_2
    invoke-static/range {p0 .. p0}, Landroidx/core/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v3

    .line 1500
    .local v3, "layoutDirection":I
    invoke-static {v4, v3}, Landroidx/core/view/GravityCompat;->getAbsoluteGravity(II)I

    move-result v18

    .line 1502
    .local v18, "absoluteGravity":I
    and-int/lit8 v1, v18, 0x7

    sparse-switch v1, :sswitch_data_1

    .line 1514
    iget v1, v5, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->leftMargin:I

    add-int/2addr v1, v7

    move/from16 v19, v1

    .local v1, "childLeft":I
    goto :goto_3

    .line 1509
    .end local v1    # "childLeft":I
    :sswitch_2
    sub-int v1, v9, v16

    iget v2, v5, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->rightMargin:I

    sub-int/2addr v1, v2

    .line 1510
    .restart local v1    # "childLeft":I
    move/from16 v19, v1

    goto :goto_3

    .line 1504
    .end local v1    # "childLeft":I
    :sswitch_3
    sub-int v1, v10, v16

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v1, v7

    iget v2, v5, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->leftMargin:I

    add-int/2addr v1, v2

    iget v2, v5, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->rightMargin:I

    sub-int/2addr v1, v2

    .line 1506
    .restart local v1    # "childLeft":I
    move/from16 v19, v1

    .line 1518
    .end local v1    # "childLeft":I
    .local v19, "childLeft":I
    :goto_3
    invoke-virtual {v6, v14}, Landroidx/appcompat/widget/LinearLayoutCompat;->hasDividerBeforeChildAt(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1519
    iget v1, v6, Landroidx/appcompat/widget/LinearLayoutCompat;->mDividerHeight:I

    add-int/2addr v0, v1

    .line 1522
    :cond_2
    iget v1, v5, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->topMargin:I

    add-int v20, v0, v1

    .line 1523
    .end local v0    # "childTop":I
    .local v20, "childTop":I
    invoke-virtual {v6, v15}, Landroidx/appcompat/widget/LinearLayoutCompat;->getLocationOffset(Landroid/view/View;)I

    move-result v0

    add-int v21, v20, v0

    move-object/from16 v0, p0

    move-object v1, v15

    move/from16 v2, v19

    move/from16 v22, v3

    .end local v3    # "layoutDirection":I
    .local v22, "layoutDirection":I
    move/from16 v3, v21

    move/from16 v21, v4

    .end local v4    # "gravity":I
    .local v21, "gravity":I
    move/from16 v4, v16

    move/from16 v23, v7

    move-object v7, v5

    .end local v5    # "lp":Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;
    .local v7, "lp":Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;
    .local v23, "paddingLeft":I
    move/from16 v5, v17

    invoke-direct/range {v0 .. v5}, Landroidx/appcompat/widget/LinearLayoutCompat;->setChildFrame(Landroid/view/View;IIII)V

    .line 1525
    iget v0, v7, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->bottomMargin:I

    add-int v0, v17, v0

    invoke-virtual {v6, v15}, Landroidx/appcompat/widget/LinearLayoutCompat;->getNextLocationOffset(Landroid/view/View;)I

    move-result v1

    add-int/2addr v0, v1

    add-int v20, v20, v0

    .line 1527
    invoke-virtual {v6, v15, v14}, Landroidx/appcompat/widget/LinearLayoutCompat;->getChildrenSkipCount(Landroid/view/View;I)I

    move-result v0

    add-int/2addr v14, v0

    move/from16 v0, v20

    goto :goto_4

    .line 1488
    .end local v16    # "childWidth":I
    .end local v17    # "childHeight":I
    .end local v18    # "absoluteGravity":I
    .end local v19    # "childLeft":I
    .end local v20    # "childTop":I
    .end local v21    # "gravity":I
    .end local v22    # "layoutDirection":I
    .end local v23    # "paddingLeft":I
    .restart local v0    # "childTop":I
    .local v7, "paddingLeft":I
    :cond_3
    move/from16 v23, v7

    .line 1484
    .end local v7    # "paddingLeft":I
    .end local v15    # "child":Landroid/view/View;
    .restart local v23    # "paddingLeft":I
    :goto_4
    add-int/lit8 v14, v14, 0x1

    move/from16 v7, v23

    goto/16 :goto_1

    .line 1530
    .end local v14    # "i":I
    .end local v23    # "paddingLeft":I
    .restart local v7    # "paddingLeft":I
    :cond_4
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x10 -> :sswitch_1
        0x50 -> :sswitch_0
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        0x1 -> :sswitch_3
        0x5 -> :sswitch_2
    .end sparse-switch
.end method

.method measureChildBeforeLayout(Landroid/view/View;IIIII)V
    .locals 6
    .param p1, "child"    # Landroid/view/View;
    .param p2, "childIndex"    # I
    .param p3, "widthMeasureSpec"    # I
    .param p4, "totalWidth"    # I
    .param p5, "heightMeasureSpec"    # I
    .param p6, "totalHeight"    # I

    .line 1401
    move-object v0, p0

    move-object v1, p1

    move v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    invoke-virtual/range {v0 .. v5}, Landroidx/appcompat/widget/LinearLayoutCompat;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 1403
    return-void
.end method

.method measureHorizontal(II)V
    .locals 48
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 952
    move-object/from16 v7, p0

    move/from16 v8, p1

    move/from16 v9, p2

    const/4 v10, 0x0

    iput v10, v7, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    .line 953
    const/4 v0, 0x0

    .line 954
    .local v0, "maxHeight":I
    const/4 v1, 0x0

    .line 955
    .local v1, "childState":I
    const/4 v2, 0x0

    .line 956
    .local v2, "alternativeMaxHeight":I
    const/4 v3, 0x0

    .line 957
    .local v3, "weightedMaxHeight":I
    const/4 v4, 0x1

    .line 958
    .local v4, "allFillParent":Z
    const/4 v5, 0x0

    .line 960
    .local v5, "totalWeight":F
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getVirtualChildCount()I

    move-result v11

    .line 962
    .local v11, "count":I
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v12

    .line 963
    .local v12, "widthMode":I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v13

    .line 965
    .local v13, "heightMode":I
    const/4 v6, 0x0

    .line 966
    .local v6, "matchHeight":Z
    const/4 v14, 0x0

    .line 968
    .local v14, "skippedMeasure":Z
    iget-object v15, v7, Landroidx/appcompat/widget/LinearLayoutCompat;->mMaxAscent:[I

    if-eqz v15, :cond_0

    iget-object v15, v7, Landroidx/appcompat/widget/LinearLayoutCompat;->mMaxDescent:[I

    if-nez v15, :cond_1

    .line 969
    :cond_0
    const/4 v15, 0x4

    new-array v10, v15, [I

    iput-object v10, v7, Landroidx/appcompat/widget/LinearLayoutCompat;->mMaxAscent:[I

    .line 970
    new-array v10, v15, [I

    iput-object v10, v7, Landroidx/appcompat/widget/LinearLayoutCompat;->mMaxDescent:[I

    .line 973
    :cond_1
    iget-object v10, v7, Landroidx/appcompat/widget/LinearLayoutCompat;->mMaxAscent:[I

    .line 974
    .local v10, "maxAscent":[I
    iget-object v15, v7, Landroidx/appcompat/widget/LinearLayoutCompat;->mMaxDescent:[I

    .line 976
    .local v15, "maxDescent":[I
    const/16 v17, 0x3

    move/from16 v18, v6

    .end local v6    # "matchHeight":Z
    .local v18, "matchHeight":Z
    const/4 v6, -0x1

    aput v6, v10, v17

    const/16 v19, 0x2

    aput v6, v10, v19

    const/16 v20, 0x1

    aput v6, v10, v20

    const/16 v16, 0x0

    aput v6, v10, v16

    .line 977
    aput v6, v15, v17

    aput v6, v15, v19

    aput v6, v15, v20

    aput v6, v15, v16

    .line 979
    iget-boolean v6, v7, Landroidx/appcompat/widget/LinearLayoutCompat;->mBaselineAligned:Z

    .line 980
    .local v6, "baselineAligned":Z
    move/from16 v22, v14

    .end local v14    # "skippedMeasure":Z
    .local v22, "skippedMeasure":Z
    iget-boolean v14, v7, Landroidx/appcompat/widget/LinearLayoutCompat;->mUseLargestChild:Z

    .line 982
    .local v14, "useLargestChild":Z
    const/high16 v9, 0x40000000    # 2.0f

    if-ne v12, v9, :cond_2

    const/16 v23, 0x1

    goto :goto_0

    :cond_2
    const/16 v23, 0x0

    .line 984
    .local v23, "isExactly":Z
    :goto_0
    const/16 v24, 0x0

    .line 987
    .local v24, "largestChildWidth":I
    const/16 v25, 0x0

    move/from16 v9, v25

    move/from16 v45, v5

    move v5, v0

    move/from16 v0, v45

    move/from16 v46, v4

    move v4, v1

    move/from16 v1, v24

    move/from16 v24, v22

    move/from16 v22, v18

    move/from16 v18, v46

    move/from16 v47, v3

    move v3, v2

    move/from16 v2, v47

    .local v0, "totalWeight":F
    .local v1, "largestChildWidth":I
    .local v2, "weightedMaxHeight":I
    .local v3, "alternativeMaxHeight":I
    .local v4, "childState":I
    .local v5, "maxHeight":I
    .local v9, "i":I
    .local v18, "allFillParent":Z
    .local v22, "matchHeight":Z
    .local v24, "skippedMeasure":Z
    :goto_1
    const/16 v28, 0x0

    if-ge v9, v11, :cond_16

    .line 988
    invoke-virtual {v7, v9}, Landroidx/appcompat/widget/LinearLayoutCompat;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 990
    .local v8, "child":Landroid/view/View;
    if-nez v8, :cond_3

    .line 991
    move/from16 v30, v1

    .end local v1    # "largestChildWidth":I
    .local v30, "largestChildWidth":I
    iget v1, v7, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    invoke-virtual {v7, v9}, Landroidx/appcompat/widget/LinearLayoutCompat;->measureNullChild(I)I

    move-result v26

    add-int v1, v1, v26

    iput v1, v7, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    .line 992
    move/from16 v21, v6

    move/from16 v31, v11

    move/from16 v1, v30

    move/from16 v30, v12

    goto/16 :goto_e

    .line 995
    .end local v30    # "largestChildWidth":I
    .restart local v1    # "largestChildWidth":I
    :cond_3
    move/from16 v30, v1

    .end local v1    # "largestChildWidth":I
    .restart local v30    # "largestChildWidth":I
    invoke-virtual {v8}, Landroid/view/View;->getVisibility()I

    move-result v1

    move/from16 v31, v2

    const/16 v2, 0x8

    .end local v2    # "weightedMaxHeight":I
    .local v31, "weightedMaxHeight":I
    if-ne v1, v2, :cond_4

    .line 996
    invoke-virtual {v7, v8, v9}, Landroidx/appcompat/widget/LinearLayoutCompat;->getChildrenSkipCount(Landroid/view/View;I)I

    move-result v1

    add-int/2addr v9, v1

    .line 997
    move/from16 v21, v6

    move/from16 v1, v30

    move/from16 v2, v31

    move/from16 v31, v11

    move/from16 v30, v12

    goto/16 :goto_e

    .line 1000
    :cond_4
    invoke-virtual {v7, v9}, Landroidx/appcompat/widget/LinearLayoutCompat;->hasDividerBeforeChildAt(I)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1001
    iget v1, v7, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    iget v2, v7, Landroidx/appcompat/widget/LinearLayoutCompat;->mDividerWidth:I

    add-int/2addr v1, v2

    iput v1, v7, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    .line 1004
    :cond_5
    nop

    .line 1005
    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;

    .line 1007
    .local v2, "lp":Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;
    iget v1, v2, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->weight:F

    add-float v29, v0, v1

    .line 1009
    .end local v0    # "totalWeight":F
    .local v29, "totalWeight":F
    const/high16 v0, 0x40000000    # 2.0f

    if-ne v12, v0, :cond_8

    iget v0, v2, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->width:I

    if-nez v0, :cond_8

    iget v0, v2, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->weight:F

    cmpl-float v0, v0, v28

    if-lez v0, :cond_8

    .line 1013
    if-eqz v23, :cond_6

    .line 1014
    iget v0, v7, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    iget v1, v2, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->leftMargin:I

    move/from16 v32, v3

    .end local v3    # "alternativeMaxHeight":I
    .local v32, "alternativeMaxHeight":I
    iget v3, v2, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->rightMargin:I

    add-int/2addr v1, v3

    add-int/2addr v0, v1

    iput v0, v7, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    goto :goto_2

    .line 1016
    .end local v32    # "alternativeMaxHeight":I
    .restart local v3    # "alternativeMaxHeight":I
    :cond_6
    move/from16 v32, v3

    .end local v3    # "alternativeMaxHeight":I
    .restart local v32    # "alternativeMaxHeight":I
    iget v0, v7, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    .line 1017
    .local v0, "totalLength":I
    iget v1, v2, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->leftMargin:I

    add-int/2addr v1, v0

    iget v3, v2, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->rightMargin:I

    add-int/2addr v1, v3

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, v7, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    .line 1026
    .end local v0    # "totalLength":I
    :goto_2
    if-eqz v6, :cond_7

    .line 1027
    const/4 v0, 0x0

    invoke-static {v0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 1028
    .local v1, "freeSpec":I
    invoke-virtual {v8, v1, v1}, Landroid/view/View;->measure(II)V

    .line 1029
    .end local v1    # "freeSpec":I
    move-object v1, v2

    move/from16 v40, v4

    move/from16 v21, v6

    move/from16 v3, v30

    move/from16 v36, v31

    move/from16 v38, v32

    move/from16 v31, v11

    move/from16 v30, v12

    const/4 v11, -0x1

    move v12, v5

    goto/16 :goto_7

    .line 1030
    :cond_7
    const/16 v24, 0x1

    move-object v1, v2

    move/from16 v40, v4

    move/from16 v21, v6

    move/from16 v3, v30

    move/from16 v36, v31

    move/from16 v38, v32

    move/from16 v31, v11

    move/from16 v30, v12

    const/4 v11, -0x1

    move v12, v5

    goto/16 :goto_7

    .line 1009
    .end local v32    # "alternativeMaxHeight":I
    .restart local v3    # "alternativeMaxHeight":I
    :cond_8
    move/from16 v32, v3

    .line 1033
    .end local v3    # "alternativeMaxHeight":I
    .restart local v32    # "alternativeMaxHeight":I
    const/high16 v0, -0x80000000

    .line 1035
    .local v0, "oldWidth":I
    iget v1, v2, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->width:I

    if-nez v1, :cond_9

    iget v1, v2, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->weight:F

    cmpl-float v1, v1, v28

    if-lez v1, :cond_9

    .line 1040
    const/4 v0, 0x0

    .line 1041
    const/4 v1, -0x2

    iput v1, v2, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->width:I

    move v3, v0

    goto :goto_3

    .line 1048
    :cond_9
    move v3, v0

    .end local v0    # "oldWidth":I
    .local v3, "oldWidth":I
    :goto_3
    nop

    .line 1049
    cmpl-float v0, v29, v28

    if-nez v0, :cond_a

    iget v0, v7, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    move/from16 v33, v0

    goto :goto_4

    :cond_a
    const/16 v33, 0x0

    :goto_4
    const/16 v34, 0x0

    .line 1048
    move-object/from16 v0, p0

    move/from16 v35, v30

    .end local v30    # "largestChildWidth":I
    .local v35, "largestChildWidth":I
    move-object v1, v8

    move-object/from16 v37, v2

    move/from16 v36, v31

    .end local v2    # "lp":Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;
    .end local v31    # "weightedMaxHeight":I
    .local v36, "weightedMaxHeight":I
    .local v37, "lp":Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;
    move v2, v9

    move/from16 v39, v3

    move/from16 v38, v32

    .end local v3    # "oldWidth":I
    .end local v32    # "alternativeMaxHeight":I
    .local v38, "alternativeMaxHeight":I
    .local v39, "oldWidth":I
    move/from16 v3, p1

    move/from16 v40, v4

    .end local v4    # "childState":I
    .local v40, "childState":I
    move/from16 v4, v33

    move/from16 v30, v12

    move v12, v5

    .end local v5    # "maxHeight":I
    .local v12, "maxHeight":I
    .local v30, "widthMode":I
    move/from16 v5, p2

    move/from16 v21, v6

    move/from16 v31, v11

    const/4 v11, -0x1

    .end local v6    # "baselineAligned":Z
    .end local v11    # "count":I
    .local v21, "baselineAligned":Z
    .local v31, "count":I
    move/from16 v6, v34

    invoke-virtual/range {v0 .. v6}, Landroidx/appcompat/widget/LinearLayoutCompat;->measureChildBeforeLayout(Landroid/view/View;IIIII)V

    .line 1052
    move/from16 v0, v39

    const/high16 v1, -0x80000000

    .end local v39    # "oldWidth":I
    .restart local v0    # "oldWidth":I
    if-eq v0, v1, :cond_b

    .line 1053
    move-object/from16 v1, v37

    .end local v37    # "lp":Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;
    .local v1, "lp":Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;
    iput v0, v1, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->width:I

    goto :goto_5

    .line 1052
    .end local v1    # "lp":Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;
    .restart local v37    # "lp":Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;
    :cond_b
    move-object/from16 v1, v37

    .line 1056
    .end local v37    # "lp":Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;
    .restart local v1    # "lp":Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;
    :goto_5
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    .line 1057
    .local v2, "childWidth":I
    if-eqz v23, :cond_c

    .line 1058
    iget v3, v7, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    iget v4, v1, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->leftMargin:I

    add-int/2addr v4, v2

    iget v5, v1, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->rightMargin:I

    add-int/2addr v4, v5

    .line 1059
    invoke-virtual {v7, v8}, Landroidx/appcompat/widget/LinearLayoutCompat;->getNextLocationOffset(Landroid/view/View;)I

    move-result v5

    add-int/2addr v4, v5

    add-int/2addr v3, v4

    iput v3, v7, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    goto :goto_6

    .line 1061
    :cond_c
    iget v3, v7, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    .line 1062
    .local v3, "totalLength":I
    add-int v4, v3, v2

    iget v5, v1, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->leftMargin:I

    add-int/2addr v4, v5

    iget v5, v1, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->rightMargin:I

    add-int/2addr v4, v5

    .line 1063
    invoke-virtual {v7, v8}, Landroidx/appcompat/widget/LinearLayoutCompat;->getNextLocationOffset(Landroid/view/View;)I

    move-result v5

    add-int/2addr v4, v5

    .line 1062
    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    iput v4, v7, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    .line 1066
    .end local v3    # "totalLength":I
    :goto_6
    if-eqz v14, :cond_d

    .line 1067
    move/from16 v3, v35

    .end local v35    # "largestChildWidth":I
    .local v3, "largestChildWidth":I
    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    goto :goto_7

    .line 1066
    .end local v3    # "largestChildWidth":I
    .restart local v35    # "largestChildWidth":I
    :cond_d
    move/from16 v3, v35

    .line 1071
    .end local v0    # "oldWidth":I
    .end local v2    # "childWidth":I
    .end local v35    # "largestChildWidth":I
    .restart local v3    # "largestChildWidth":I
    :goto_7
    const/4 v0, 0x0

    .line 1072
    .local v0, "matchHeightLocally":Z
    const/high16 v2, 0x40000000    # 2.0f

    if-eq v13, v2, :cond_e

    iget v2, v1, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->height:I

    if-ne v2, v11, :cond_e

    .line 1076
    const/16 v22, 0x1

    .line 1077
    const/4 v0, 0x1

    .line 1080
    :cond_e
    iget v2, v1, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->topMargin:I

    iget v4, v1, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->bottomMargin:I

    add-int/2addr v2, v4

    .line 1081
    .local v2, "margin":I
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    add-int/2addr v4, v2

    .line 1082
    .local v4, "childHeight":I
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredState()I

    move-result v5

    move/from16 v6, v40

    .end local v40    # "childState":I
    .local v6, "childState":I
    invoke-static {v6, v5}, Landroid/view/View;->combineMeasuredStates(II)I

    move-result v5

    .line 1084
    .end local v6    # "childState":I
    .local v5, "childState":I
    if-eqz v21, :cond_11

    .line 1085
    invoke-virtual {v8}, Landroid/view/View;->getBaseline()I

    move-result v6

    .line 1086
    .local v6, "childBaseline":I
    if-eq v6, v11, :cond_10

    .line 1089
    iget v11, v1, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->gravity:I

    if-gez v11, :cond_f

    iget v11, v7, Landroidx/appcompat/widget/LinearLayoutCompat;->mGravity:I

    goto :goto_8

    :cond_f
    iget v11, v1, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->gravity:I

    :goto_8
    and-int/lit8 v11, v11, 0x70

    .line 1091
    .local v11, "gravity":I
    shr-int/lit8 v26, v11, 0x4

    const/16 v27, -0x2

    and-int/lit8 v26, v26, -0x2

    shr-int/lit8 v26, v26, 0x1

    .line 1094
    .local v26, "index":I
    move/from16 v27, v2

    .end local v2    # "margin":I
    .local v27, "margin":I
    aget v2, v10, v26

    invoke-static {v2, v6}, Ljava/lang/Math;->max(II)I

    move-result v2

    aput v2, v10, v26

    .line 1095
    aget v2, v15, v26

    move/from16 v33, v3

    .end local v3    # "largestChildWidth":I
    .local v33, "largestChildWidth":I
    sub-int v3, v4, v6

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    aput v2, v15, v26

    goto :goto_9

    .line 1086
    .end local v11    # "gravity":I
    .end local v26    # "index":I
    .end local v27    # "margin":I
    .end local v33    # "largestChildWidth":I
    .restart local v2    # "margin":I
    .restart local v3    # "largestChildWidth":I
    :cond_10
    move/from16 v27, v2

    move/from16 v33, v3

    .end local v2    # "margin":I
    .end local v3    # "largestChildWidth":I
    .restart local v27    # "margin":I
    .restart local v33    # "largestChildWidth":I
    goto :goto_9

    .line 1084
    .end local v6    # "childBaseline":I
    .end local v27    # "margin":I
    .end local v33    # "largestChildWidth":I
    .restart local v2    # "margin":I
    .restart local v3    # "largestChildWidth":I
    :cond_11
    move/from16 v27, v2

    move/from16 v33, v3

    .line 1099
    .end local v2    # "margin":I
    .end local v3    # "largestChildWidth":I
    .restart local v27    # "margin":I
    .restart local v33    # "largestChildWidth":I
    :goto_9
    invoke-static {v12, v4}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 1101
    .end local v12    # "maxHeight":I
    .local v2, "maxHeight":I
    if-eqz v18, :cond_12

    iget v3, v1, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->height:I

    const/4 v6, -0x1

    if-ne v3, v6, :cond_12

    const/4 v3, 0x1

    goto :goto_a

    :cond_12
    const/4 v3, 0x0

    .line 1102
    .end local v18    # "allFillParent":Z
    .local v3, "allFillParent":Z
    :goto_a
    iget v6, v1, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->weight:F

    cmpl-float v6, v6, v28

    if-lez v6, :cond_14

    .line 1107
    nop

    .line 1108
    if-eqz v0, :cond_13

    move/from16 v6, v27

    goto :goto_b

    :cond_13
    move v6, v4

    .line 1107
    :goto_b
    move/from16 v11, v36

    .end local v36    # "weightedMaxHeight":I
    .local v11, "weightedMaxHeight":I
    invoke-static {v11, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    .end local v11    # "weightedMaxHeight":I
    .local v6, "weightedMaxHeight":I
    goto :goto_d

    .line 1110
    .end local v6    # "weightedMaxHeight":I
    .restart local v36    # "weightedMaxHeight":I
    :cond_14
    move/from16 v11, v36

    .line 1111
    .end local v36    # "weightedMaxHeight":I
    .restart local v11    # "weightedMaxHeight":I
    if-eqz v0, :cond_15

    move/from16 v6, v27

    goto :goto_c

    :cond_15
    move v6, v4

    .line 1110
    :goto_c
    move/from16 v12, v38

    .end local v38    # "alternativeMaxHeight":I
    .local v12, "alternativeMaxHeight":I
    invoke-static {v12, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    move/from16 v38, v6

    move v6, v11

    .line 1114
    .end local v11    # "weightedMaxHeight":I
    .end local v12    # "alternativeMaxHeight":I
    .restart local v6    # "weightedMaxHeight":I
    .restart local v38    # "alternativeMaxHeight":I
    :goto_d
    invoke-virtual {v7, v8, v9}, Landroidx/appcompat/widget/LinearLayoutCompat;->getChildrenSkipCount(Landroid/view/View;I)I

    move-result v11

    add-int/2addr v9, v11

    move/from16 v18, v3

    move v4, v5

    move/from16 v0, v29

    move/from16 v1, v33

    move/from16 v3, v38

    move v5, v2

    move v2, v6

    .line 987
    .end local v6    # "weightedMaxHeight":I
    .end local v8    # "child":Landroid/view/View;
    .end local v27    # "margin":I
    .end local v29    # "totalWeight":F
    .end local v33    # "largestChildWidth":I
    .end local v38    # "alternativeMaxHeight":I
    .local v0, "totalWeight":F
    .local v1, "largestChildWidth":I
    .local v2, "weightedMaxHeight":I
    .local v3, "alternativeMaxHeight":I
    .local v4, "childState":I
    .local v5, "maxHeight":I
    .restart local v18    # "allFillParent":Z
    :goto_e
    add-int/lit8 v9, v9, 0x1

    move/from16 v8, p1

    move/from16 v6, v21

    move/from16 v12, v30

    move/from16 v11, v31

    goto/16 :goto_1

    .end local v21    # "baselineAligned":Z
    .end local v30    # "widthMode":I
    .end local v31    # "count":I
    .local v6, "baselineAligned":Z
    .local v11, "count":I
    .local v12, "widthMode":I
    :cond_16
    move/from16 v21, v6

    move/from16 v31, v11

    move/from16 v30, v12

    move v11, v2

    move v2, v3

    move v6, v4

    move v12, v5

    move v3, v1

    .line 1117
    .end local v1    # "largestChildWidth":I
    .end local v4    # "childState":I
    .end local v5    # "maxHeight":I
    .end local v9    # "i":I
    .local v2, "alternativeMaxHeight":I
    .local v3, "largestChildWidth":I
    .local v6, "childState":I
    .local v11, "weightedMaxHeight":I
    .local v12, "maxHeight":I
    .restart local v21    # "baselineAligned":Z
    .restart local v30    # "widthMode":I
    .restart local v31    # "count":I
    iget v1, v7, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    if-lez v1, :cond_17

    move/from16 v1, v31

    .end local v31    # "count":I
    .local v1, "count":I
    invoke-virtual {v7, v1}, Landroidx/appcompat/widget/LinearLayoutCompat;->hasDividerBeforeChildAt(I)Z

    move-result v4

    if-eqz v4, :cond_18

    .line 1118
    iget v4, v7, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    iget v5, v7, Landroidx/appcompat/widget/LinearLayoutCompat;->mDividerWidth:I

    add-int/2addr v4, v5

    iput v4, v7, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    goto :goto_f

    .line 1117
    .end local v1    # "count":I
    .restart local v31    # "count":I
    :cond_17
    move/from16 v1, v31

    .line 1123
    .end local v31    # "count":I
    .restart local v1    # "count":I
    :cond_18
    :goto_f
    aget v4, v10, v20

    const/4 v5, -0x1

    if-ne v4, v5, :cond_1a

    const/4 v4, 0x0

    aget v8, v10, v4

    if-ne v8, v5, :cond_1a

    aget v4, v10, v19

    if-ne v4, v5, :cond_1a

    aget v4, v10, v17

    if-eq v4, v5, :cond_19

    goto :goto_10

    :cond_19
    move/from16 v40, v6

    move v5, v12

    goto :goto_11

    .line 1127
    :cond_1a
    :goto_10
    aget v4, v10, v17

    const/4 v5, 0x0

    aget v8, v10, v5

    aget v9, v10, v20

    aget v5, v10, v19

    .line 1129
    invoke-static {v9, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 1128
    invoke-static {v8, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 1127
    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 1130
    .local v4, "ascent":I
    aget v5, v15, v17

    const/4 v8, 0x0

    aget v9, v15, v8

    aget v8, v15, v20

    move/from16 v40, v6

    .end local v6    # "childState":I
    .restart local v40    # "childState":I
    aget v6, v15, v19

    .line 1132
    invoke-static {v8, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 1131
    invoke-static {v9, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 1130
    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 1133
    .local v5, "descent":I
    add-int v6, v4, v5

    invoke-static {v12, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    move v5, v6

    .line 1136
    .end local v4    # "ascent":I
    .end local v12    # "maxHeight":I
    .local v5, "maxHeight":I
    :goto_11
    if-eqz v14, :cond_21

    move/from16 v4, v30

    const/high16 v6, -0x80000000

    .end local v30    # "widthMode":I
    .local v4, "widthMode":I
    if-eq v4, v6, :cond_1c

    if-nez v4, :cond_1b

    goto :goto_12

    :cond_1b
    move/from16 v26, v5

    goto/16 :goto_16

    .line 1138
    :cond_1c
    :goto_12
    const/4 v6, 0x0

    iput v6, v7, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    .line 1140
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_13
    if-ge v6, v1, :cond_20

    .line 1141
    invoke-virtual {v7, v6}, Landroidx/appcompat/widget/LinearLayoutCompat;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 1143
    .restart local v8    # "child":Landroid/view/View;
    if-nez v8, :cond_1d

    .line 1144
    iget v9, v7, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    invoke-virtual {v7, v6}, Landroidx/appcompat/widget/LinearLayoutCompat;->measureNullChild(I)I

    move-result v12

    add-int/2addr v9, v12

    iput v9, v7, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    .line 1145
    move/from16 v26, v5

    move/from16 v30, v6

    goto :goto_14

    .line 1148
    :cond_1d
    invoke-virtual {v8}, Landroid/view/View;->getVisibility()I

    move-result v9

    const/16 v12, 0x8

    if-ne v9, v12, :cond_1e

    .line 1149
    invoke-virtual {v7, v8, v6}, Landroidx/appcompat/widget/LinearLayoutCompat;->getChildrenSkipCount(Landroid/view/View;I)I

    move-result v9

    add-int/2addr v6, v9

    .line 1150
    move/from16 v26, v5

    goto :goto_15

    .line 1153
    :cond_1e
    nop

    .line 1154
    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;

    .line 1155
    .local v9, "lp":Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;
    if-eqz v23, :cond_1f

    .line 1156
    iget v12, v7, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    move/from16 v26, v5

    .end local v5    # "maxHeight":I
    .local v26, "maxHeight":I
    iget v5, v9, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->leftMargin:I

    add-int/2addr v5, v3

    move/from16 v30, v6

    .end local v6    # "i":I
    .local v30, "i":I
    iget v6, v9, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->rightMargin:I

    add-int/2addr v5, v6

    .line 1157
    invoke-virtual {v7, v8}, Landroidx/appcompat/widget/LinearLayoutCompat;->getNextLocationOffset(Landroid/view/View;)I

    move-result v6

    add-int/2addr v5, v6

    add-int/2addr v12, v5

    iput v12, v7, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    goto :goto_14

    .line 1159
    .end local v26    # "maxHeight":I
    .end local v30    # "i":I
    .restart local v5    # "maxHeight":I
    .restart local v6    # "i":I
    :cond_1f
    move/from16 v26, v5

    move/from16 v30, v6

    .end local v5    # "maxHeight":I
    .end local v6    # "i":I
    .restart local v26    # "maxHeight":I
    .restart local v30    # "i":I
    iget v5, v7, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    .line 1160
    .local v5, "totalLength":I
    add-int v6, v5, v3

    iget v12, v9, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->leftMargin:I

    add-int/2addr v6, v12

    iget v12, v9, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->rightMargin:I

    add-int/2addr v6, v12

    .line 1161
    invoke-virtual {v7, v8}, Landroidx/appcompat/widget/LinearLayoutCompat;->getNextLocationOffset(Landroid/view/View;)I

    move-result v12

    add-int/2addr v6, v12

    .line 1160
    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    iput v6, v7, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    .line 1140
    .end local v8    # "child":Landroid/view/View;
    .end local v9    # "lp":Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;
    .end local v26    # "maxHeight":I
    .end local v30    # "i":I
    .local v5, "maxHeight":I
    .restart local v6    # "i":I
    :goto_14
    move/from16 v6, v30

    .end local v5    # "maxHeight":I
    .restart local v26    # "maxHeight":I
    :goto_15
    add-int/lit8 v6, v6, 0x1

    move/from16 v5, v26

    goto :goto_13

    .end local v26    # "maxHeight":I
    .restart local v5    # "maxHeight":I
    :cond_20
    move/from16 v26, v5

    move/from16 v30, v6

    .end local v5    # "maxHeight":I
    .end local v6    # "i":I
    .restart local v26    # "maxHeight":I
    .restart local v30    # "i":I
    goto :goto_16

    .line 1136
    .end local v4    # "widthMode":I
    .end local v26    # "maxHeight":I
    .restart local v5    # "maxHeight":I
    .local v30, "widthMode":I
    :cond_21
    move/from16 v26, v5

    move/from16 v4, v30

    .line 1167
    .end local v5    # "maxHeight":I
    .end local v30    # "widthMode":I
    .restart local v4    # "widthMode":I
    .restart local v26    # "maxHeight":I
    :goto_16
    iget v5, v7, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getPaddingLeft()I

    move-result v6

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getPaddingRight()I

    move-result v8

    add-int/2addr v6, v8

    add-int/2addr v5, v6

    iput v5, v7, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    .line 1169
    iget v5, v7, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    .line 1172
    .local v5, "widthSize":I
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getSuggestedMinimumWidth()I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 1175
    move/from16 v6, p1

    const/4 v8, 0x0

    invoke-static {v5, v6, v8}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result v9

    .line 1176
    .local v9, "widthSizeAndState":I
    const v8, 0xffffff

    and-int v5, v9, v8

    .line 1181
    iget v8, v7, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    sub-int v8, v5, v8

    .line 1182
    .local v8, "delta":I
    if-nez v24, :cond_28

    if-eqz v8, :cond_22

    cmpl-float v30, v0, v28

    if-lez v30, :cond_22

    move/from16 v31, v0

    move/from16 v35, v3

    move/from16 v33, v5

    move v3, v2

    const/high16 v2, 0x40000000    # 2.0f

    goto/16 :goto_1a

    .line 1293
    :cond_22
    invoke-static {v2, v11}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 1297
    if-eqz v14, :cond_27

    const/high16 v12, 0x40000000    # 2.0f

    if-eq v4, v12, :cond_27

    .line 1298
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_17
    if-ge v12, v1, :cond_26

    .line 1299
    move/from16 v31, v0

    .end local v0    # "totalWeight":F
    .local v31, "totalWeight":F
    invoke-virtual {v7, v12}, Landroidx/appcompat/widget/LinearLayoutCompat;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1301
    .local v0, "child":Landroid/view/View;
    if-eqz v0, :cond_25

    move/from16 v16, v2

    .end local v2    # "alternativeMaxHeight":I
    .local v16, "alternativeMaxHeight":I
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v2

    move/from16 v33, v5

    const/16 v5, 0x8

    .end local v5    # "widthSize":I
    .local v33, "widthSize":I
    if-ne v2, v5, :cond_23

    .line 1302
    move/from16 v35, v3

    const/high16 v2, 0x40000000    # 2.0f

    goto :goto_18

    .line 1305
    :cond_23
    nop

    .line 1306
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;

    .line 1308
    .local v2, "lp":Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;
    iget v5, v2, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->weight:F

    .line 1309
    .local v5, "childExtra":F
    cmpl-float v17, v5, v28

    if-lez v17, :cond_24

    .line 1310
    nop

    .line 1311
    move-object/from16 v17, v2

    move/from16 v19, v5

    const/high16 v2, 0x40000000    # 2.0f

    .end local v2    # "lp":Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;
    .end local v5    # "childExtra":F
    .local v17, "lp":Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;
    .local v19, "childExtra":F
    invoke-static {v3, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    .line 1312
    move/from16 v35, v3

    .end local v3    # "largestChildWidth":I
    .restart local v35    # "largestChildWidth":I
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    invoke-static {v3, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 1310
    invoke-virtual {v0, v5, v3}, Landroid/view/View;->measure(II)V

    goto :goto_18

    .line 1309
    .end local v17    # "lp":Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;
    .end local v19    # "childExtra":F
    .end local v35    # "largestChildWidth":I
    .restart local v2    # "lp":Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;
    .restart local v3    # "largestChildWidth":I
    .restart local v5    # "childExtra":F
    :cond_24
    move-object/from16 v17, v2

    move/from16 v35, v3

    move/from16 v19, v5

    const/high16 v2, 0x40000000    # 2.0f

    .end local v2    # "lp":Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;
    .end local v3    # "largestChildWidth":I
    .end local v5    # "childExtra":F
    .restart local v17    # "lp":Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;
    .restart local v19    # "childExtra":F
    .restart local v35    # "largestChildWidth":I
    goto :goto_18

    .line 1301
    .end local v16    # "alternativeMaxHeight":I
    .end local v17    # "lp":Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;
    .end local v19    # "childExtra":F
    .end local v33    # "widthSize":I
    .end local v35    # "largestChildWidth":I
    .local v2, "alternativeMaxHeight":I
    .restart local v3    # "largestChildWidth":I
    .local v5, "widthSize":I
    :cond_25
    move/from16 v16, v2

    move/from16 v35, v3

    move/from16 v33, v5

    const/high16 v2, 0x40000000    # 2.0f

    .line 1298
    .end local v0    # "child":Landroid/view/View;
    .end local v2    # "alternativeMaxHeight":I
    .end local v3    # "largestChildWidth":I
    .end local v5    # "widthSize":I
    .restart local v16    # "alternativeMaxHeight":I
    .restart local v33    # "widthSize":I
    .restart local v35    # "largestChildWidth":I
    :goto_18
    add-int/lit8 v12, v12, 0x1

    move/from16 v2, v16

    move/from16 v0, v31

    move/from16 v5, v33

    move/from16 v3, v35

    goto :goto_17

    .end local v16    # "alternativeMaxHeight":I
    .end local v31    # "totalWeight":F
    .end local v33    # "widthSize":I
    .end local v35    # "largestChildWidth":I
    .local v0, "totalWeight":F
    .restart local v2    # "alternativeMaxHeight":I
    .restart local v3    # "largestChildWidth":I
    .restart local v5    # "widthSize":I
    :cond_26
    move/from16 v31, v0

    move/from16 v16, v2

    move/from16 v35, v3

    move/from16 v33, v5

    const/high16 v2, 0x40000000    # 2.0f

    .end local v0    # "totalWeight":F
    .end local v2    # "alternativeMaxHeight":I
    .end local v3    # "largestChildWidth":I
    .end local v5    # "widthSize":I
    .restart local v16    # "alternativeMaxHeight":I
    .restart local v31    # "totalWeight":F
    .restart local v33    # "widthSize":I
    .restart local v35    # "largestChildWidth":I
    goto :goto_19

    .line 1297
    .end local v12    # "i":I
    .end local v16    # "alternativeMaxHeight":I
    .end local v31    # "totalWeight":F
    .end local v33    # "widthSize":I
    .end local v35    # "largestChildWidth":I
    .restart local v0    # "totalWeight":F
    .restart local v2    # "alternativeMaxHeight":I
    .restart local v3    # "largestChildWidth":I
    .restart local v5    # "widthSize":I
    :cond_27
    move/from16 v31, v0

    move/from16 v16, v2

    move/from16 v35, v3

    move/from16 v33, v5

    const/high16 v2, 0x40000000    # 2.0f

    .line 1319
    .end local v0    # "totalWeight":F
    .end local v2    # "alternativeMaxHeight":I
    .end local v3    # "largestChildWidth":I
    .end local v5    # "widthSize":I
    .restart local v16    # "alternativeMaxHeight":I
    .restart local v31    # "totalWeight":F
    .restart local v33    # "widthSize":I
    .restart local v35    # "largestChildWidth":I
    :goto_19
    move/from16 v12, p2

    move/from16 v34, v1

    move/from16 v25, v9

    move/from16 v36, v11

    move/from16 v2, v16

    move/from16 v5, v26

    move/from16 v26, v14

    move/from16 v45, v40

    move/from16 v40, v4

    move/from16 v4, v45

    goto/16 :goto_2a

    .line 1182
    .end local v16    # "alternativeMaxHeight":I
    .end local v31    # "totalWeight":F
    .end local v33    # "widthSize":I
    .end local v35    # "largestChildWidth":I
    .restart local v0    # "totalWeight":F
    .restart local v2    # "alternativeMaxHeight":I
    .restart local v3    # "largestChildWidth":I
    .restart local v5    # "widthSize":I
    :cond_28
    move/from16 v31, v0

    move/from16 v35, v3

    move/from16 v33, v5

    move v3, v2

    const/high16 v2, 0x40000000    # 2.0f

    .line 1183
    .end local v0    # "totalWeight":F
    .end local v2    # "alternativeMaxHeight":I
    .end local v5    # "widthSize":I
    .local v3, "alternativeMaxHeight":I
    .restart local v31    # "totalWeight":F
    .restart local v33    # "widthSize":I
    .restart local v35    # "largestChildWidth":I
    :goto_1a
    iget v0, v7, Landroidx/appcompat/widget/LinearLayoutCompat;->mWeightSum:F

    cmpl-float v5, v0, v28

    if-lez v5, :cond_29

    goto :goto_1b

    :cond_29
    move/from16 v0, v31

    .line 1185
    .local v0, "weightSum":F
    :goto_1b
    const/4 v5, -0x1

    aput v5, v10, v17

    aput v5, v10, v19

    aput v5, v10, v20

    const/4 v12, 0x0

    aput v5, v10, v12

    .line 1186
    aput v5, v15, v17

    aput v5, v15, v19

    aput v5, v15, v20

    aput v5, v15, v12

    .line 1187
    const/4 v5, -0x1

    .line 1189
    .end local v26    # "maxHeight":I
    .local v5, "maxHeight":I
    iput v12, v7, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    .line 1191
    const/4 v12, 0x0

    move v2, v12

    move v12, v8

    move v8, v5

    move/from16 v5, v40

    .end local v40    # "childState":I
    .local v2, "i":I
    .local v5, "childState":I
    .local v8, "maxHeight":I
    .local v12, "delta":I
    :goto_1c
    if-ge v2, v1, :cond_39

    .line 1192
    move/from16 v36, v11

    .end local v11    # "weightedMaxHeight":I
    .restart local v36    # "weightedMaxHeight":I
    invoke-virtual {v7, v2}, Landroidx/appcompat/widget/LinearLayoutCompat;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v11

    .line 1194
    .local v11, "child":Landroid/view/View;
    if-eqz v11, :cond_38

    move/from16 v26, v14

    .end local v14    # "useLargestChild":Z
    .local v26, "useLargestChild":Z
    invoke-virtual {v11}, Landroid/view/View;->getVisibility()I

    move-result v14

    move/from16 v34, v1

    const/16 v1, 0x8

    .end local v1    # "count":I
    .local v34, "count":I
    if-ne v14, v1, :cond_2a

    .line 1195
    move/from16 v40, v4

    move/from16 v25, v9

    move v1, v12

    const/16 v27, -0x2

    move/from16 v12, p2

    goto/16 :goto_27

    .line 1198
    :cond_2a
    nop

    .line 1199
    invoke-virtual {v11}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v14

    check-cast v14, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;

    .line 1201
    .local v14, "lp":Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;
    iget v1, v14, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->weight:F

    .line 1202
    .local v1, "childExtra":F
    cmpl-float v37, v1, v28

    if-lez v37, :cond_2f

    .line 1204
    int-to-float v6, v12

    mul-float v6, v6, v1

    div-float/2addr v6, v0

    float-to-int v6, v6

    .line 1205
    .local v6, "share":I
    sub-float/2addr v0, v1

    .line 1206
    sub-int/2addr v12, v6

    .line 1208
    nop

    .line 1210
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getPaddingTop()I

    move-result v37

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getPaddingBottom()I

    move-result v38

    add-int v37, v37, v38

    move/from16 v38, v0

    .end local v0    # "weightSum":F
    .local v38, "weightSum":F
    iget v0, v14, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->topMargin:I

    add-int v37, v37, v0

    iget v0, v14, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->bottomMargin:I

    add-int v0, v37, v0

    move/from16 v37, v1

    .end local v1    # "childExtra":F
    .local v37, "childExtra":F
    iget v1, v14, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->height:I

    .line 1208
    move/from16 v25, v9

    move/from16 v39, v12

    const/high16 v9, 0x40000000    # 2.0f

    move/from16 v12, p2

    .end local v9    # "widthSizeAndState":I
    .end local v12    # "delta":I
    .local v25, "widthSizeAndState":I
    .local v39, "delta":I
    invoke-static {v12, v0, v1}, Landroidx/appcompat/widget/LinearLayoutCompat;->getChildMeasureSpec(III)I

    move-result v0

    .line 1215
    .local v0, "childHeightMeasureSpec":I
    iget v1, v14, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->width:I

    if-nez v1, :cond_2d

    if-eq v4, v9, :cond_2b

    goto :goto_1e

    .line 1228
    :cond_2b
    nop

    .line 1229
    if-lez v6, :cond_2c

    move v1, v6

    goto :goto_1d

    :cond_2c
    const/4 v1, 0x0

    .line 1228
    :goto_1d
    invoke-static {v1, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-virtual {v11, v1, v0}, Landroid/view/View;->measure(II)V

    move/from16 v40, v4

    goto :goto_1f

    .line 1218
    :cond_2d
    :goto_1e
    invoke-virtual {v11}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    add-int/2addr v1, v6

    .line 1219
    .local v1, "childWidth":I
    if-gez v1, :cond_2e

    .line 1220
    const/4 v1, 0x0

    .line 1223
    :cond_2e
    nop

    .line 1224
    move/from16 v40, v4

    .end local v4    # "widthMode":I
    .local v40, "widthMode":I
    invoke-static {v1, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 1223
    invoke-virtual {v11, v4, v0}, Landroid/view/View;->measure(II)V

    .line 1226
    .end local v1    # "childWidth":I
    nop

    .line 1234
    :goto_1f
    nop

    .line 1235
    invoke-virtual {v11}, Landroid/view/View;->getMeasuredState()I

    move-result v1

    const/high16 v4, -0x1000000

    and-int/2addr v1, v4

    .line 1234
    invoke-static {v5, v1}, Landroid/view/View;->combineMeasuredStates(II)I

    move-result v5

    move/from16 v0, v38

    move/from16 v1, v39

    goto :goto_20

    .line 1202
    .end local v6    # "share":I
    .end local v25    # "widthSizeAndState":I
    .end local v37    # "childExtra":F
    .end local v38    # "weightSum":F
    .end local v39    # "delta":I
    .end local v40    # "widthMode":I
    .local v0, "weightSum":F
    .local v1, "childExtra":F
    .restart local v4    # "widthMode":I
    .restart local v9    # "widthSizeAndState":I
    .restart local v12    # "delta":I
    :cond_2f
    move/from16 v37, v1

    move/from16 v40, v4

    move/from16 v25, v9

    move v1, v12

    const/high16 v9, 0x40000000    # 2.0f

    move/from16 v12, p2

    .line 1238
    .end local v4    # "widthMode":I
    .end local v9    # "widthSizeAndState":I
    .end local v12    # "delta":I
    .local v1, "delta":I
    .restart local v25    # "widthSizeAndState":I
    .restart local v37    # "childExtra":F
    .restart local v40    # "widthMode":I
    :goto_20
    if-eqz v23, :cond_30

    .line 1239
    iget v4, v7, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    invoke-virtual {v11}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    iget v9, v14, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->leftMargin:I

    add-int/2addr v6, v9

    iget v9, v14, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->rightMargin:I

    add-int/2addr v6, v9

    .line 1240
    invoke-virtual {v7, v11}, Landroidx/appcompat/widget/LinearLayoutCompat;->getNextLocationOffset(Landroid/view/View;)I

    move-result v9

    add-int/2addr v6, v9

    add-int/2addr v4, v6

    iput v4, v7, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    goto :goto_21

    .line 1242
    :cond_30
    iget v4, v7, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    .line 1243
    .local v4, "totalLength":I
    invoke-virtual {v11}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    add-int/2addr v6, v4

    iget v9, v14, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->leftMargin:I

    add-int/2addr v6, v9

    iget v9, v14, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->rightMargin:I

    add-int/2addr v6, v9

    .line 1244
    invoke-virtual {v7, v11}, Landroidx/appcompat/widget/LinearLayoutCompat;->getNextLocationOffset(Landroid/view/View;)I

    move-result v9

    add-int/2addr v6, v9

    .line 1243
    invoke-static {v4, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    iput v6, v7, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    .line 1247
    .end local v4    # "totalLength":I
    :goto_21
    const/high16 v4, 0x40000000    # 2.0f

    if-eq v13, v4, :cond_31

    iget v4, v14, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->height:I

    const/4 v6, -0x1

    if-ne v4, v6, :cond_31

    const/4 v4, 0x1

    goto :goto_22

    :cond_31
    const/4 v4, 0x0

    .line 1250
    .local v4, "matchHeightLocally":Z
    :goto_22
    iget v6, v14, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->topMargin:I

    iget v9, v14, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->bottomMargin:I

    add-int/2addr v6, v9

    .line 1251
    .local v6, "margin":I
    invoke-virtual {v11}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    add-int/2addr v9, v6

    .line 1252
    .local v9, "childHeight":I
    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 1253
    nop

    .line 1254
    move/from16 v39, v0

    if-eqz v4, :cond_32

    move v0, v6

    goto :goto_23

    :cond_32
    move v0, v9

    .line 1253
    .end local v0    # "weightSum":F
    .local v39, "weightSum":F
    :goto_23
    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1256
    .end local v3    # "alternativeMaxHeight":I
    .local v0, "alternativeMaxHeight":I
    if-eqz v18, :cond_33

    iget v3, v14, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->height:I

    move/from16 v41, v0

    const/4 v0, -0x1

    .end local v0    # "alternativeMaxHeight":I
    .local v41, "alternativeMaxHeight":I
    if-ne v3, v0, :cond_34

    const/4 v0, 0x1

    goto :goto_24

    .end local v41    # "alternativeMaxHeight":I
    .restart local v0    # "alternativeMaxHeight":I
    :cond_33
    move/from16 v41, v0

    .end local v0    # "alternativeMaxHeight":I
    .restart local v41    # "alternativeMaxHeight":I
    :cond_34
    const/4 v0, 0x0

    .line 1258
    .end local v18    # "allFillParent":Z
    .local v0, "allFillParent":Z
    :goto_24
    if-eqz v21, :cond_37

    .line 1259
    invoke-virtual {v11}, Landroid/view/View;->getBaseline()I

    move-result v3

    .line 1260
    .local v3, "childBaseline":I
    move/from16 v18, v0

    const/4 v0, -0x1

    .end local v0    # "allFillParent":Z
    .restart local v18    # "allFillParent":Z
    if-eq v3, v0, :cond_36

    .line 1262
    iget v0, v14, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->gravity:I

    if-gez v0, :cond_35

    iget v0, v7, Landroidx/appcompat/widget/LinearLayoutCompat;->mGravity:I

    goto :goto_25

    :cond_35
    iget v0, v14, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->gravity:I

    :goto_25
    and-int/lit8 v0, v0, 0x70

    .line 1264
    .local v0, "gravity":I
    shr-int/lit8 v42, v0, 0x4

    const/16 v27, -0x2

    and-int/lit8 v42, v42, -0x2

    shr-int/lit8 v42, v42, 0x1

    .line 1267
    .local v42, "index":I
    move/from16 v43, v0

    .end local v0    # "gravity":I
    .local v43, "gravity":I
    aget v0, v10, v42

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    aput v0, v10, v42

    .line 1268
    aget v0, v15, v42

    move/from16 v44, v1

    .end local v1    # "delta":I
    .local v44, "delta":I
    sub-int v1, v9, v3

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    aput v0, v15, v42

    goto :goto_26

    .line 1260
    .end local v42    # "index":I
    .end local v43    # "gravity":I
    .end local v44    # "delta":I
    .restart local v1    # "delta":I
    :cond_36
    move/from16 v44, v1

    const/16 v27, -0x2

    .end local v1    # "delta":I
    .restart local v44    # "delta":I
    goto :goto_26

    .line 1258
    .end local v3    # "childBaseline":I
    .end local v18    # "allFillParent":Z
    .end local v44    # "delta":I
    .local v0, "allFillParent":Z
    .restart local v1    # "delta":I
    :cond_37
    move/from16 v18, v0

    move/from16 v44, v1

    const/16 v27, -0x2

    .line 1191
    .end local v0    # "allFillParent":Z
    .end local v1    # "delta":I
    .end local v4    # "matchHeightLocally":Z
    .end local v6    # "margin":I
    .end local v9    # "childHeight":I
    .end local v11    # "child":Landroid/view/View;
    .end local v14    # "lp":Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;
    .end local v37    # "childExtra":F
    .restart local v18    # "allFillParent":Z
    .restart local v44    # "delta":I
    :goto_26
    move/from16 v0, v39

    move/from16 v3, v41

    move/from16 v1, v44

    goto :goto_27

    .line 1194
    .end local v25    # "widthSizeAndState":I
    .end local v26    # "useLargestChild":Z
    .end local v34    # "count":I
    .end local v39    # "weightSum":F
    .end local v40    # "widthMode":I
    .end local v41    # "alternativeMaxHeight":I
    .end local v44    # "delta":I
    .local v0, "weightSum":F
    .local v1, "count":I
    .local v3, "alternativeMaxHeight":I
    .local v4, "widthMode":I
    .local v9, "widthSizeAndState":I
    .restart local v11    # "child":Landroid/view/View;
    .restart local v12    # "delta":I
    .local v14, "useLargestChild":Z
    :cond_38
    move/from16 v34, v1

    move/from16 v40, v4

    move/from16 v25, v9

    move v1, v12

    move/from16 v26, v14

    const/16 v27, -0x2

    move/from16 v12, p2

    .line 1191
    .end local v4    # "widthMode":I
    .end local v9    # "widthSizeAndState":I
    .end local v11    # "child":Landroid/view/View;
    .end local v12    # "delta":I
    .end local v14    # "useLargestChild":Z
    .local v1, "delta":I
    .restart local v25    # "widthSizeAndState":I
    .restart local v26    # "useLargestChild":Z
    .restart local v34    # "count":I
    .restart local v40    # "widthMode":I
    :goto_27
    add-int/lit8 v2, v2, 0x1

    move/from16 v6, p1

    move v12, v1

    move/from16 v9, v25

    move/from16 v14, v26

    move/from16 v1, v34

    move/from16 v11, v36

    move/from16 v4, v40

    goto/16 :goto_1c

    .end local v25    # "widthSizeAndState":I
    .end local v26    # "useLargestChild":Z
    .end local v34    # "count":I
    .end local v36    # "weightedMaxHeight":I
    .end local v40    # "widthMode":I
    .local v1, "count":I
    .restart local v4    # "widthMode":I
    .restart local v9    # "widthSizeAndState":I
    .local v11, "weightedMaxHeight":I
    .restart local v12    # "delta":I
    .restart local v14    # "useLargestChild":Z
    :cond_39
    move/from16 v34, v1

    move/from16 v40, v4

    move/from16 v25, v9

    move/from16 v36, v11

    move v1, v12

    move/from16 v26, v14

    move/from16 v12, p2

    .line 1275
    .end local v2    # "i":I
    .end local v4    # "widthMode":I
    .end local v9    # "widthSizeAndState":I
    .end local v11    # "weightedMaxHeight":I
    .end local v12    # "delta":I
    .end local v14    # "useLargestChild":Z
    .local v1, "delta":I
    .restart local v25    # "widthSizeAndState":I
    .restart local v26    # "useLargestChild":Z
    .restart local v34    # "count":I
    .restart local v36    # "weightedMaxHeight":I
    .restart local v40    # "widthMode":I
    iget v2, v7, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getPaddingLeft()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getPaddingRight()I

    move-result v6

    add-int/2addr v4, v6

    add-int/2addr v2, v4

    iput v2, v7, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    .line 1280
    aget v2, v10, v20

    const/4 v4, -0x1

    if-ne v2, v4, :cond_3b

    const/4 v2, 0x0

    aget v6, v10, v2

    if-ne v6, v4, :cond_3b

    aget v2, v10, v19

    if-ne v2, v4, :cond_3b

    aget v2, v10, v17

    if-eq v2, v4, :cond_3a

    goto :goto_28

    :cond_3a
    move v6, v8

    goto :goto_29

    .line 1284
    :cond_3b
    :goto_28
    aget v2, v10, v17

    const/4 v4, 0x0

    aget v6, v10, v4

    aget v9, v10, v20

    aget v11, v10, v19

    .line 1286
    invoke-static {v9, v11}, Ljava/lang/Math;->max(II)I

    move-result v9

    .line 1285
    invoke-static {v6, v9}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 1284
    invoke-static {v2, v6}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 1287
    .local v2, "ascent":I
    aget v6, v15, v17

    aget v4, v15, v4

    aget v9, v15, v20

    aget v11, v15, v19

    .line 1289
    invoke-static {v9, v11}, Ljava/lang/Math;->max(II)I

    move-result v9

    .line 1288
    invoke-static {v4, v9}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 1287
    invoke-static {v6, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 1290
    .local v4, "descent":I
    add-int v6, v2, v4

    invoke-static {v8, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 1292
    .end local v0    # "weightSum":F
    .end local v2    # "ascent":I
    .end local v4    # "descent":I
    .end local v8    # "maxHeight":I
    .local v6, "maxHeight":I
    :goto_29
    move v8, v1

    move v2, v3

    move v4, v5

    move v5, v6

    .line 1319
    .end local v1    # "delta":I
    .end local v3    # "alternativeMaxHeight":I
    .end local v6    # "maxHeight":I
    .local v2, "alternativeMaxHeight":I
    .local v4, "childState":I
    .local v5, "maxHeight":I
    .local v8, "delta":I
    :goto_2a
    if-nez v18, :cond_3c

    const/high16 v0, 0x40000000    # 2.0f

    if-eq v13, v0, :cond_3c

    .line 1320
    move v5, v2

    .line 1323
    :cond_3c
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getPaddingTop()I

    move-result v0

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getPaddingBottom()I

    move-result v1

    add-int/2addr v0, v1

    add-int/2addr v5, v0

    .line 1326
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getSuggestedMinimumHeight()I

    move-result v0

    invoke-static {v5, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1328
    .end local v5    # "maxHeight":I
    .local v0, "maxHeight":I
    const/high16 v1, -0x1000000

    and-int/2addr v1, v4

    or-int v1, v25, v1

    shl-int/lit8 v3, v4, 0x10

    .line 1329
    invoke-static {v0, v12, v3}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result v3

    .line 1328
    invoke-virtual {v7, v1, v3}, Landroidx/appcompat/widget/LinearLayoutCompat;->setMeasuredDimension(II)V

    .line 1332
    if-eqz v22, :cond_3d

    .line 1333
    move/from16 v1, p1

    move/from16 v3, v34

    .end local v34    # "count":I
    .local v3, "count":I
    invoke-direct {v7, v3, v1}, Landroidx/appcompat/widget/LinearLayoutCompat;->forceUniformHeight(II)V

    goto :goto_2b

    .line 1332
    .end local v3    # "count":I
    .restart local v34    # "count":I
    :cond_3d
    move/from16 v1, p1

    move/from16 v3, v34

    .line 1335
    .end local v34    # "count":I
    .restart local v3    # "count":I
    :goto_2b
    return-void
.end method

.method measureNullChild(I)I
    .locals 1
    .param p1, "childIndex"    # I

    .line 1382
    const/4 v0, 0x0

    return v0
.end method

.method measureVertical(II)V
    .locals 38
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 619
    move-object/from16 v7, p0

    move/from16 v8, p1

    move/from16 v9, p2

    const/4 v10, 0x0

    iput v10, v7, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    .line 620
    const/4 v0, 0x0

    .line 621
    .local v0, "maxWidth":I
    const/4 v1, 0x0

    .line 622
    .local v1, "childState":I
    const/4 v2, 0x0

    .line 623
    .local v2, "alternativeMaxWidth":I
    const/4 v3, 0x0

    .line 624
    .local v3, "weightedMaxWidth":I
    const/4 v4, 0x1

    .line 625
    .local v4, "allFillParent":Z
    const/4 v5, 0x0

    .line 627
    .local v5, "totalWeight":F
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getVirtualChildCount()I

    move-result v11

    .line 629
    .local v11, "count":I
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v12

    .line 630
    .local v12, "widthMode":I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v13

    .line 632
    .local v13, "heightMode":I
    const/4 v6, 0x0

    .line 633
    .local v6, "matchWidth":Z
    const/4 v14, 0x0

    .line 635
    .local v14, "skippedMeasure":Z
    iget v15, v7, Landroidx/appcompat/widget/LinearLayoutCompat;->mBaselineAlignedChildIndex:I

    .line 636
    .local v15, "baselineChildIndex":I
    iget-boolean v10, v7, Landroidx/appcompat/widget/LinearLayoutCompat;->mUseLargestChild:Z

    .line 638
    .local v10, "useLargestChild":Z
    const/16 v17, 0x0

    .line 641
    .local v17, "largestChildHeight":I
    const/16 v18, 0x0

    move/from16 v19, v14

    move v14, v0

    move v0, v5

    move v5, v2

    move/from16 v2, v18

    move/from16 v18, v6

    move v6, v1

    move/from16 v37, v4

    move v4, v3

    move/from16 v3, v17

    move/from16 v17, v37

    .end local v1    # "childState":I
    .local v0, "totalWeight":F
    .local v2, "i":I
    .local v3, "largestChildHeight":I
    .local v4, "weightedMaxWidth":I
    .local v5, "alternativeMaxWidth":I
    .local v6, "childState":I
    .local v14, "maxWidth":I
    .local v17, "allFillParent":Z
    .local v18, "matchWidth":Z
    .local v19, "skippedMeasure":Z
    :goto_0
    move/from16 v20, v4

    .end local v4    # "weightedMaxWidth":I
    .local v20, "weightedMaxWidth":I
    const/16 v1, 0x8

    const/16 v22, 0x1

    const/16 v23, 0x0

    if-ge v2, v11, :cond_13

    .line 642
    invoke-virtual {v7, v2}, Landroidx/appcompat/widget/LinearLayoutCompat;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 644
    .local v4, "child":Landroid/view/View;
    if-nez v4, :cond_0

    .line 645
    iget v1, v7, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    invoke-virtual {v7, v2}, Landroidx/appcompat/widget/LinearLayoutCompat;->measureNullChild(I)I

    move-result v21

    add-int v1, v1, v21

    iput v1, v7, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    .line 646
    move/from16 v4, v20

    goto/16 :goto_c

    .line 649
    :cond_0
    move/from16 v26, v3

    .end local v3    # "largestChildHeight":I
    .local v26, "largestChildHeight":I
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-ne v3, v1, :cond_1

    .line 650
    invoke-virtual {v7, v4, v2}, Landroidx/appcompat/widget/LinearLayoutCompat;->getChildrenSkipCount(Landroid/view/View;I)I

    move-result v1

    add-int/2addr v2, v1

    .line 651
    move/from16 v4, v20

    move/from16 v3, v26

    goto/16 :goto_c

    .line 654
    :cond_1
    invoke-virtual {v7, v2}, Landroidx/appcompat/widget/LinearLayoutCompat;->hasDividerBeforeChildAt(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 655
    iget v1, v7, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    iget v3, v7, Landroidx/appcompat/widget/LinearLayoutCompat;->mDividerHeight:I

    add-int/2addr v1, v3

    iput v1, v7, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    .line 658
    :cond_2
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;

    .line 660
    .local v3, "lp":Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;
    iget v1, v3, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->weight:F

    add-float v27, v0, v1

    .line 662
    .end local v0    # "totalWeight":F
    .local v27, "totalWeight":F
    const/high16 v1, 0x40000000    # 2.0f

    if-ne v13, v1, :cond_3

    iget v0, v3, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->height:I

    if-nez v0, :cond_3

    iget v0, v3, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->weight:F

    cmpl-float v0, v0, v23

    if-lez v0, :cond_3

    .line 666
    iget v0, v7, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    .line 667
    .local v0, "totalLength":I
    iget v1, v3, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->topMargin:I

    add-int/2addr v1, v0

    move/from16 v28, v2

    .end local v2    # "i":I
    .local v28, "i":I
    iget v2, v3, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->bottomMargin:I

    add-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, v7, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    .line 668
    const/16 v19, 0x1

    .line 669
    .end local v0    # "totalLength":I
    move-object v1, v3

    move/from16 v35, v5

    move/from16 v36, v6

    move/from16 v34, v20

    move/from16 v3, v26

    move/from16 v25, v28

    move-object v5, v4

    goto/16 :goto_4

    .line 662
    .end local v28    # "i":I
    .restart local v2    # "i":I
    :cond_3
    move/from16 v28, v2

    .line 670
    .end local v2    # "i":I
    .restart local v28    # "i":I
    const/high16 v0, -0x80000000

    .line 672
    .local v0, "oldHeight":I
    iget v1, v3, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->height:I

    if-nez v1, :cond_4

    iget v1, v3, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->weight:F

    cmpl-float v1, v1, v23

    if-lez v1, :cond_4

    .line 677
    const/4 v0, 0x0

    .line 678
    const/4 v1, -0x2

    iput v1, v3, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->height:I

    move v2, v0

    goto :goto_1

    .line 685
    :cond_4
    move v2, v0

    .end local v0    # "oldHeight":I
    .local v2, "oldHeight":I
    :goto_1
    const/16 v29, 0x0

    .line 687
    cmpl-float v0, v27, v23

    if-nez v0, :cond_5

    iget v0, v7, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    move/from16 v30, v0

    goto :goto_2

    :cond_5
    const/16 v30, 0x0

    .line 685
    :goto_2
    move-object/from16 v0, p0

    const/high16 v8, -0x80000000

    const/high16 v21, 0x40000000    # 2.0f

    move-object v1, v4

    move/from16 v31, v2

    move/from16 v25, v28

    .end local v2    # "oldHeight":I
    .end local v28    # "i":I
    .local v25, "i":I
    .local v31, "oldHeight":I
    move/from16 v2, v25

    move-object/from16 v33, v3

    move/from16 v32, v26

    .end local v3    # "lp":Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;
    .end local v26    # "largestChildHeight":I
    .local v32, "largestChildHeight":I
    .local v33, "lp":Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;
    move/from16 v3, p1

    move/from16 v34, v20

    move-object/from16 v20, v4

    .end local v4    # "child":Landroid/view/View;
    .local v20, "child":Landroid/view/View;
    .local v34, "weightedMaxWidth":I
    move/from16 v4, v29

    move/from16 v35, v5

    .end local v5    # "alternativeMaxWidth":I
    .local v35, "alternativeMaxWidth":I
    move/from16 v5, p2

    move/from16 v36, v6

    .end local v6    # "childState":I
    .local v36, "childState":I
    move/from16 v6, v30

    invoke-virtual/range {v0 .. v6}, Landroidx/appcompat/widget/LinearLayoutCompat;->measureChildBeforeLayout(Landroid/view/View;IIIII)V

    .line 689
    move/from16 v0, v31

    .end local v31    # "oldHeight":I
    .restart local v0    # "oldHeight":I
    if-eq v0, v8, :cond_6

    .line 690
    move-object/from16 v1, v33

    .end local v33    # "lp":Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;
    .local v1, "lp":Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;
    iput v0, v1, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->height:I

    goto :goto_3

    .line 689
    .end local v1    # "lp":Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;
    .restart local v33    # "lp":Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;
    :cond_6
    move-object/from16 v1, v33

    .line 693
    .end local v33    # "lp":Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;
    .restart local v1    # "lp":Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;
    :goto_3
    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    .line 694
    .local v2, "childHeight":I
    iget v3, v7, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    .line 695
    .local v3, "totalLength":I
    add-int v4, v3, v2

    iget v5, v1, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->topMargin:I

    add-int/2addr v4, v5

    iget v5, v1, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->bottomMargin:I

    add-int/2addr v4, v5

    .line 696
    move-object/from16 v5, v20

    .end local v20    # "child":Landroid/view/View;
    .local v5, "child":Landroid/view/View;
    invoke-virtual {v7, v5}, Landroidx/appcompat/widget/LinearLayoutCompat;->getNextLocationOffset(Landroid/view/View;)I

    move-result v6

    add-int/2addr v4, v6

    .line 695
    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    iput v4, v7, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    .line 698
    if-eqz v10, :cond_7

    .line 699
    move/from16 v4, v32

    .end local v32    # "largestChildHeight":I
    .local v4, "largestChildHeight":I
    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    move v3, v4

    goto :goto_4

    .line 698
    .end local v4    # "largestChildHeight":I
    .restart local v32    # "largestChildHeight":I
    :cond_7
    move/from16 v4, v32

    .end local v32    # "largestChildHeight":I
    .restart local v4    # "largestChildHeight":I
    move v3, v4

    .line 707
    .end local v0    # "oldHeight":I
    .end local v2    # "childHeight":I
    .end local v4    # "largestChildHeight":I
    .local v3, "largestChildHeight":I
    :goto_4
    if-ltz v15, :cond_8

    move/from16 v2, v25

    .end local v25    # "i":I
    .local v2, "i":I
    add-int/lit8 v0, v2, 0x1

    if-ne v15, v0, :cond_9

    .line 708
    iget v0, v7, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    iput v0, v7, Landroidx/appcompat/widget/LinearLayoutCompat;->mBaselineChildTop:I

    goto :goto_5

    .line 707
    .end local v2    # "i":I
    .restart local v25    # "i":I
    :cond_8
    move/from16 v2, v25

    .line 714
    .end local v25    # "i":I
    .restart local v2    # "i":I
    :cond_9
    :goto_5
    if-ge v2, v15, :cond_b

    iget v0, v1, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->weight:F

    cmpl-float v0, v0, v23

    if-gtz v0, :cond_a

    goto :goto_6

    .line 715
    :cond_a
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v4, "A child of LinearLayout with index less than mBaselineAlignedChildIndex has weight > 0, which won\'t work.  Either remove the weight, or don\'t set mBaselineAlignedChildIndex."

    invoke-direct {v0, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 721
    :cond_b
    :goto_6
    const/4 v0, 0x0

    .line 722
    .local v0, "matchWidthLocally":Z
    const/high16 v6, 0x40000000    # 2.0f

    if-eq v12, v6, :cond_c

    iget v4, v1, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->width:I

    const/4 v6, -0x1

    if-ne v4, v6, :cond_d

    .line 727
    const/16 v18, 0x1

    .line 728
    const/4 v0, 0x1

    goto :goto_7

    .line 722
    :cond_c
    const/4 v6, -0x1

    .line 731
    :cond_d
    :goto_7
    iget v4, v1, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->leftMargin:I

    iget v8, v1, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->rightMargin:I

    add-int/2addr v4, v8

    .line 732
    .local v4, "margin":I
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    add-int/2addr v8, v4

    .line 733
    .local v8, "measuredWidth":I
    invoke-static {v14, v8}, Ljava/lang/Math;->max(II)I

    move-result v14

    .line 734
    nop

    .line 735
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredState()I

    move-result v6

    .line 734
    move/from16 v20, v8

    move/from16 v8, v36

    .end local v36    # "childState":I
    .local v8, "childState":I
    .local v20, "measuredWidth":I
    invoke-static {v8, v6}, Landroid/view/View;->combineMeasuredStates(II)I

    move-result v6

    .line 737
    .end local v8    # "childState":I
    .restart local v6    # "childState":I
    if-eqz v17, :cond_e

    iget v8, v1, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->width:I

    move/from16 v21, v3

    const/4 v3, -0x1

    .end local v3    # "largestChildHeight":I
    .local v21, "largestChildHeight":I
    if-ne v8, v3, :cond_f

    const/4 v3, 0x1

    goto :goto_8

    .end local v21    # "largestChildHeight":I
    .restart local v3    # "largestChildHeight":I
    :cond_e
    move/from16 v21, v3

    .end local v3    # "largestChildHeight":I
    .restart local v21    # "largestChildHeight":I
    :cond_f
    const/4 v3, 0x0

    .line 738
    .end local v17    # "allFillParent":Z
    .local v3, "allFillParent":Z
    :goto_8
    iget v8, v1, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->weight:F

    cmpl-float v8, v8, v23

    if-lez v8, :cond_11

    .line 743
    nop

    .line 744
    if-eqz v0, :cond_10

    move v8, v4

    goto :goto_9

    :cond_10
    move/from16 v8, v20

    .line 743
    :goto_9
    move/from16 v24, v6

    move/from16 v6, v34

    .end local v34    # "weightedMaxWidth":I
    .local v6, "weightedMaxWidth":I
    .local v24, "childState":I
    invoke-static {v6, v8}, Ljava/lang/Math;->max(II)I

    move-result v6

    move-object/from16 v33, v1

    move/from16 v1, v35

    goto :goto_b

    .line 746
    .end local v24    # "childState":I
    .local v6, "childState":I
    .restart local v34    # "weightedMaxWidth":I
    :cond_11
    move/from16 v24, v6

    move/from16 v6, v34

    .line 747
    .end local v34    # "weightedMaxWidth":I
    .local v6, "weightedMaxWidth":I
    .restart local v24    # "childState":I
    if-eqz v0, :cond_12

    move v8, v4

    goto :goto_a

    :cond_12
    move/from16 v8, v20

    .line 746
    :goto_a
    move-object/from16 v33, v1

    move/from16 v1, v35

    .end local v35    # "alternativeMaxWidth":I
    .local v1, "alternativeMaxWidth":I
    .restart local v33    # "lp":Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;
    invoke-static {v1, v8}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 750
    :goto_b
    invoke-virtual {v7, v5, v2}, Landroidx/appcompat/widget/LinearLayoutCompat;->getChildrenSkipCount(Landroid/view/View;I)I

    move-result v8

    add-int/2addr v2, v8

    move v5, v1

    move/from16 v17, v3

    move v4, v6

    move/from16 v3, v21

    move/from16 v6, v24

    move/from16 v0, v27

    .line 641
    .end local v1    # "alternativeMaxWidth":I
    .end local v20    # "measuredWidth":I
    .end local v21    # "largestChildHeight":I
    .end local v24    # "childState":I
    .end local v27    # "totalWeight":F
    .end local v33    # "lp":Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;
    .local v0, "totalWeight":F
    .local v3, "largestChildHeight":I
    .local v4, "weightedMaxWidth":I
    .local v5, "alternativeMaxWidth":I
    .local v6, "childState":I
    .restart local v17    # "allFillParent":Z
    :goto_c
    add-int/lit8 v2, v2, 0x1

    move/from16 v8, p1

    goto/16 :goto_0

    .end local v4    # "weightedMaxWidth":I
    .local v20, "weightedMaxWidth":I
    :cond_13
    move v4, v3

    move v1, v5

    move v8, v6

    move/from16 v6, v20

    const/high16 v3, -0x80000000

    const/16 v5, 0x8

    .line 753
    .end local v2    # "i":I
    .end local v3    # "largestChildHeight":I
    .end local v5    # "alternativeMaxWidth":I
    .end local v20    # "weightedMaxWidth":I
    .restart local v1    # "alternativeMaxWidth":I
    .local v4, "largestChildHeight":I
    .local v6, "weightedMaxWidth":I
    .restart local v8    # "childState":I
    iget v2, v7, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    if-lez v2, :cond_14

    invoke-virtual {v7, v11}, Landroidx/appcompat/widget/LinearLayoutCompat;->hasDividerBeforeChildAt(I)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 754
    iget v2, v7, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    iget v5, v7, Landroidx/appcompat/widget/LinearLayoutCompat;->mDividerHeight:I

    add-int/2addr v2, v5

    iput v2, v7, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    .line 757
    :cond_14
    if-eqz v10, :cond_1a

    if-eq v13, v3, :cond_16

    if-nez v13, :cond_15

    goto :goto_d

    :cond_15
    move/from16 v36, v8

    goto :goto_11

    .line 759
    :cond_16
    :goto_d
    const/4 v2, 0x0

    iput v2, v7, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    .line 761
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_e
    if-ge v2, v11, :cond_19

    .line 762
    invoke-virtual {v7, v2}, Landroidx/appcompat/widget/LinearLayoutCompat;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 764
    .local v3, "child":Landroid/view/View;
    if-nez v3, :cond_17

    .line 765
    iget v5, v7, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    invoke-virtual {v7, v2}, Landroidx/appcompat/widget/LinearLayoutCompat;->measureNullChild(I)I

    move-result v21

    add-int v5, v5, v21

    iput v5, v7, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    .line 766
    move/from16 v24, v2

    move/from16 v36, v8

    goto :goto_f

    .line 769
    :cond_17
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v5

    move/from16 v36, v8

    const/16 v8, 0x8

    .end local v8    # "childState":I
    .restart local v36    # "childState":I
    if-ne v5, v8, :cond_18

    .line 770
    invoke-virtual {v7, v3, v2}, Landroidx/appcompat/widget/LinearLayoutCompat;->getChildrenSkipCount(Landroid/view/View;I)I

    move-result v5

    add-int/2addr v2, v5

    .line 771
    goto :goto_10

    .line 774
    :cond_18
    nop

    .line 775
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;

    .line 777
    .local v5, "lp":Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;
    iget v8, v7, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    .line 778
    .local v8, "totalLength":I
    add-int v21, v8, v4

    move/from16 v24, v2

    .end local v2    # "i":I
    .local v24, "i":I
    iget v2, v5, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->topMargin:I

    add-int v21, v21, v2

    iget v2, v5, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->bottomMargin:I

    add-int v21, v21, v2

    .line 779
    invoke-virtual {v7, v3}, Landroidx/appcompat/widget/LinearLayoutCompat;->getNextLocationOffset(Landroid/view/View;)I

    move-result v2

    add-int v2, v21, v2

    .line 778
    invoke-static {v8, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, v7, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    .line 761
    .end local v3    # "child":Landroid/view/View;
    .end local v5    # "lp":Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;
    .end local v24    # "i":I
    .end local v36    # "childState":I
    .restart local v2    # "i":I
    .local v8, "childState":I
    :goto_f
    move/from16 v2, v24

    .end local v8    # "childState":I
    .restart local v36    # "childState":I
    :goto_10
    add-int/lit8 v2, v2, 0x1

    move/from16 v8, v36

    goto :goto_e

    .end local v36    # "childState":I
    .restart local v8    # "childState":I
    :cond_19
    move/from16 v24, v2

    move/from16 v36, v8

    .end local v2    # "i":I
    .end local v8    # "childState":I
    .restart local v24    # "i":I
    .restart local v36    # "childState":I
    goto :goto_11

    .line 757
    .end local v24    # "i":I
    .end local v36    # "childState":I
    .restart local v8    # "childState":I
    :cond_1a
    move/from16 v36, v8

    .line 784
    .end local v8    # "childState":I
    .restart local v36    # "childState":I
    :goto_11
    iget v2, v7, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getPaddingTop()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getPaddingBottom()I

    move-result v5

    add-int/2addr v3, v5

    add-int/2addr v2, v3

    iput v2, v7, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    .line 786
    iget v2, v7, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    .line 789
    .local v2, "heightSize":I
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getSuggestedMinimumHeight()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 792
    const/4 v3, 0x0

    invoke-static {v2, v9, v3}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result v5

    .line 793
    .local v5, "heightSizeAndState":I
    const v3, 0xffffff

    and-int v2, v5, v3

    .line 798
    iget v3, v7, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    sub-int v3, v2, v3

    .line 799
    .local v3, "delta":I
    if-nez v19, :cond_21

    if-eqz v3, :cond_1b

    cmpl-float v8, v0, v23

    if-lez v8, :cond_1b

    move/from16 v21, v0

    move/from16 v24, v2

    move/from16 v26, v3

    goto/16 :goto_15

    .line 871
    :cond_1b
    invoke-static {v1, v6}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 877
    if-eqz v10, :cond_20

    const/high16 v8, 0x40000000    # 2.0f

    if-eq v13, v8, :cond_20

    .line 878
    const/16 v16, 0x0

    move/from16 v8, v16

    .local v8, "i":I
    :goto_12
    if-ge v8, v11, :cond_1f

    .line 879
    move/from16 v21, v0

    .end local v0    # "totalWeight":F
    .local v21, "totalWeight":F
    invoke-virtual {v7, v8}, Landroidx/appcompat/widget/LinearLayoutCompat;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 881
    .local v0, "child":Landroid/view/View;
    if-eqz v0, :cond_1e

    move/from16 v16, v1

    .end local v1    # "alternativeMaxWidth":I
    .local v16, "alternativeMaxWidth":I
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v1

    move/from16 v24, v2

    const/16 v2, 0x8

    .end local v2    # "heightSize":I
    .local v24, "heightSize":I
    if-ne v1, v2, :cond_1c

    .line 882
    move/from16 v26, v3

    goto :goto_13

    .line 885
    :cond_1c
    nop

    .line 886
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;

    .line 888
    .local v1, "lp":Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;
    iget v2, v1, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->weight:F

    .line 889
    .local v2, "childExtra":F
    cmpl-float v22, v2, v23

    if-lez v22, :cond_1d

    .line 890
    nop

    .line 891
    move-object/from16 v22, v1

    .end local v1    # "lp":Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;
    .local v22, "lp":Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    move/from16 v25, v2

    const/high16 v2, 0x40000000    # 2.0f

    .end local v2    # "childExtra":F
    .local v25, "childExtra":F
    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 893
    move/from16 v26, v3

    .end local v3    # "delta":I
    .local v26, "delta":I
    invoke-static {v4, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 890
    invoke-virtual {v0, v1, v3}, Landroid/view/View;->measure(II)V

    goto :goto_13

    .line 889
    .end local v22    # "lp":Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;
    .end local v25    # "childExtra":F
    .end local v26    # "delta":I
    .restart local v1    # "lp":Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;
    .restart local v2    # "childExtra":F
    .restart local v3    # "delta":I
    :cond_1d
    move-object/from16 v22, v1

    move/from16 v25, v2

    move/from16 v26, v3

    .end local v1    # "lp":Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;
    .end local v2    # "childExtra":F
    .end local v3    # "delta":I
    .restart local v22    # "lp":Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;
    .restart local v25    # "childExtra":F
    .restart local v26    # "delta":I
    goto :goto_13

    .line 881
    .end local v16    # "alternativeMaxWidth":I
    .end local v22    # "lp":Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;
    .end local v24    # "heightSize":I
    .end local v25    # "childExtra":F
    .end local v26    # "delta":I
    .local v1, "alternativeMaxWidth":I
    .local v2, "heightSize":I
    .restart local v3    # "delta":I
    :cond_1e
    move/from16 v16, v1

    move/from16 v24, v2

    move/from16 v26, v3

    .line 878
    .end local v0    # "child":Landroid/view/View;
    .end local v1    # "alternativeMaxWidth":I
    .end local v2    # "heightSize":I
    .end local v3    # "delta":I
    .restart local v16    # "alternativeMaxWidth":I
    .restart local v24    # "heightSize":I
    .restart local v26    # "delta":I
    :goto_13
    add-int/lit8 v8, v8, 0x1

    move/from16 v1, v16

    move/from16 v0, v21

    move/from16 v2, v24

    move/from16 v3, v26

    goto :goto_12

    .end local v16    # "alternativeMaxWidth":I
    .end local v21    # "totalWeight":F
    .end local v24    # "heightSize":I
    .end local v26    # "delta":I
    .local v0, "totalWeight":F
    .restart local v1    # "alternativeMaxWidth":I
    .restart local v2    # "heightSize":I
    .restart local v3    # "delta":I
    :cond_1f
    move/from16 v21, v0

    move/from16 v16, v1

    move/from16 v24, v2

    move/from16 v26, v3

    .end local v0    # "totalWeight":F
    .end local v1    # "alternativeMaxWidth":I
    .end local v2    # "heightSize":I
    .end local v3    # "delta":I
    .restart local v16    # "alternativeMaxWidth":I
    .restart local v21    # "totalWeight":F
    .restart local v24    # "heightSize":I
    .restart local v26    # "delta":I
    goto :goto_14

    .line 877
    .end local v8    # "i":I
    .end local v16    # "alternativeMaxWidth":I
    .end local v21    # "totalWeight":F
    .end local v24    # "heightSize":I
    .end local v26    # "delta":I
    .restart local v0    # "totalWeight":F
    .restart local v1    # "alternativeMaxWidth":I
    .restart local v2    # "heightSize":I
    .restart local v3    # "delta":I
    :cond_20
    move/from16 v21, v0

    move/from16 v16, v1

    move/from16 v24, v2

    move/from16 v26, v3

    .line 900
    .end local v0    # "totalWeight":F
    .end local v1    # "alternativeMaxWidth":I
    .end local v2    # "heightSize":I
    .end local v3    # "delta":I
    .restart local v16    # "alternativeMaxWidth":I
    .restart local v21    # "totalWeight":F
    .restart local v24    # "heightSize":I
    .restart local v26    # "delta":I
    :goto_14
    move/from16 v32, v4

    move/from16 v34, v6

    move/from16 v25, v10

    move/from16 v30, v13

    move/from16 v1, v16

    move/from16 v3, v26

    move/from16 v6, v36

    move/from16 v10, p1

    move/from16 v26, v15

    goto/16 :goto_20

    .line 799
    .end local v16    # "alternativeMaxWidth":I
    .end local v21    # "totalWeight":F
    .end local v24    # "heightSize":I
    .end local v26    # "delta":I
    .restart local v0    # "totalWeight":F
    .restart local v1    # "alternativeMaxWidth":I
    .restart local v2    # "heightSize":I
    .restart local v3    # "delta":I
    :cond_21
    move/from16 v21, v0

    move/from16 v24, v2

    move/from16 v26, v3

    .line 800
    .end local v0    # "totalWeight":F
    .end local v2    # "heightSize":I
    .end local v3    # "delta":I
    .restart local v21    # "totalWeight":F
    .restart local v24    # "heightSize":I
    .restart local v26    # "delta":I
    :goto_15
    iget v0, v7, Landroidx/appcompat/widget/LinearLayoutCompat;->mWeightSum:F

    cmpl-float v2, v0, v23

    if-lez v2, :cond_22

    goto :goto_16

    :cond_22
    move/from16 v0, v21

    .line 802
    .local v0, "weightSum":F
    :goto_16
    const/4 v2, 0x0

    iput v2, v7, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    .line 804
    const/4 v3, 0x0

    move v8, v1

    move v2, v14

    move/from16 v1, v26

    move/from16 v14, v36

    .end local v26    # "delta":I
    .end local v36    # "childState":I
    .local v1, "delta":I
    .local v2, "maxWidth":I
    .local v3, "i":I
    .local v8, "alternativeMaxWidth":I
    .local v14, "childState":I
    :goto_17
    if-ge v3, v11, :cond_2e

    .line 805
    move/from16 v32, v4

    .end local v4    # "largestChildHeight":I
    .restart local v32    # "largestChildHeight":I
    invoke-virtual {v7, v3}, Landroidx/appcompat/widget/LinearLayoutCompat;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 807
    .local v4, "child":Landroid/view/View;
    move/from16 v34, v6

    .end local v6    # "weightedMaxWidth":I
    .restart local v34    # "weightedMaxWidth":I
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v6

    move/from16 v25, v10

    const/16 v10, 0x8

    .end local v10    # "useLargestChild":Z
    .local v25, "useLargestChild":Z
    if-ne v6, v10, :cond_23

    .line 808
    move/from16 v10, p1

    move/from16 v30, v13

    move/from16 v26, v15

    goto/16 :goto_1f

    .line 811
    :cond_23
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;

    .line 813
    .local v6, "lp":Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;
    iget v10, v6, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->weight:F

    .line 814
    .local v10, "childExtra":F
    cmpl-float v26, v10, v23

    if-lez v26, :cond_28

    .line 816
    move/from16 v26, v15

    .end local v15    # "baselineChildIndex":I
    .local v26, "baselineChildIndex":I
    int-to-float v15, v1

    mul-float v15, v15, v10

    div-float/2addr v15, v0

    float-to-int v15, v15

    .line 817
    .local v15, "share":I
    sub-float/2addr v0, v10

    .line 818
    sub-int/2addr v1, v15

    .line 820
    nop

    .line 821
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getPaddingLeft()I

    move-result v27

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getPaddingRight()I

    move-result v28

    add-int v27, v27, v28

    move/from16 v28, v0

    .end local v0    # "weightSum":F
    .local v28, "weightSum":F
    iget v0, v6, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->leftMargin:I

    add-int v27, v27, v0

    iget v0, v6, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->rightMargin:I

    add-int v0, v27, v0

    move/from16 v27, v1

    .end local v1    # "delta":I
    .local v27, "delta":I
    iget v1, v6, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->width:I

    .line 820
    move/from16 v29, v10

    move/from16 v10, p1

    .end local v10    # "childExtra":F
    .local v29, "childExtra":F
    invoke-static {v10, v0, v1}, Landroidx/appcompat/widget/LinearLayoutCompat;->getChildMeasureSpec(III)I

    move-result v0

    .line 826
    .local v0, "childWidthMeasureSpec":I
    iget v1, v6, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->height:I

    if-nez v1, :cond_26

    const/high16 v1, 0x40000000    # 2.0f

    if-eq v13, v1, :cond_24

    move/from16 v30, v13

    goto :goto_19

    .line 839
    :cond_24
    nop

    .line 840
    move/from16 v30, v13

    if-lez v15, :cond_25

    move v13, v15

    goto :goto_18

    :cond_25
    const/4 v13, 0x0

    .end local v13    # "heightMode":I
    .local v30, "heightMode":I
    :goto_18
    invoke-static {v13, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v13

    .line 839
    invoke-virtual {v4, v0, v13}, Landroid/view/View;->measure(II)V

    move/from16 v31, v15

    goto :goto_1a

    .line 826
    .end local v30    # "heightMode":I
    .restart local v13    # "heightMode":I
    :cond_26
    move/from16 v30, v13

    .line 829
    .end local v13    # "heightMode":I
    .restart local v30    # "heightMode":I
    :goto_19
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    add-int/2addr v1, v15

    .line 830
    .local v1, "childHeight":I
    if-gez v1, :cond_27

    .line 831
    const/4 v1, 0x0

    .line 834
    :cond_27
    nop

    .line 835
    move/from16 v31, v15

    const/high16 v13, 0x40000000    # 2.0f

    .end local v15    # "share":I
    .local v31, "share":I
    invoke-static {v1, v13}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v15

    .line 834
    invoke-virtual {v4, v0, v15}, Landroid/view/View;->measure(II)V

    .line 836
    .end local v1    # "childHeight":I
    nop

    .line 845
    :goto_1a
    nop

    .line 846
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredState()I

    move-result v1

    and-int/lit16 v1, v1, -0x100

    .line 845
    invoke-static {v14, v1}, Landroid/view/View;->combineMeasuredStates(II)I

    move-result v14

    move/from16 v1, v27

    move/from16 v0, v28

    goto :goto_1b

    .line 814
    .end local v26    # "baselineChildIndex":I
    .end local v27    # "delta":I
    .end local v28    # "weightSum":F
    .end local v29    # "childExtra":F
    .end local v30    # "heightMode":I
    .end local v31    # "share":I
    .local v0, "weightSum":F
    .local v1, "delta":I
    .restart local v10    # "childExtra":F
    .restart local v13    # "heightMode":I
    .local v15, "baselineChildIndex":I
    :cond_28
    move/from16 v29, v10

    move/from16 v30, v13

    move/from16 v26, v15

    move/from16 v10, p1

    .line 850
    .end local v10    # "childExtra":F
    .end local v13    # "heightMode":I
    .end local v15    # "baselineChildIndex":I
    .restart local v26    # "baselineChildIndex":I
    .restart local v29    # "childExtra":F
    .restart local v30    # "heightMode":I
    :goto_1b
    iget v13, v6, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->leftMargin:I

    iget v15, v6, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->rightMargin:I

    add-int/2addr v13, v15

    .line 851
    .local v13, "margin":I
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v15

    add-int/2addr v15, v13

    .line 852
    .local v15, "measuredWidth":I
    invoke-static {v2, v15}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 854
    move/from16 v27, v0

    const/high16 v0, 0x40000000    # 2.0f

    .end local v0    # "weightSum":F
    .local v27, "weightSum":F
    if-eq v12, v0, :cond_29

    iget v0, v6, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->width:I

    move/from16 v28, v1

    const/4 v1, -0x1

    .end local v1    # "delta":I
    .local v28, "delta":I
    if-ne v0, v1, :cond_2a

    const/4 v0, 0x1

    goto :goto_1c

    .end local v28    # "delta":I
    .restart local v1    # "delta":I
    :cond_29
    move/from16 v28, v1

    .end local v1    # "delta":I
    .restart local v28    # "delta":I
    :cond_2a
    const/4 v0, 0x0

    .line 857
    .local v0, "matchWidthLocally":Z
    :goto_1c
    nop

    .line 858
    if-eqz v0, :cond_2b

    move v1, v13

    goto :goto_1d

    :cond_2b
    move v1, v15

    .line 857
    :goto_1d
    invoke-static {v8, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 860
    .end local v8    # "alternativeMaxWidth":I
    .local v1, "alternativeMaxWidth":I
    if-eqz v17, :cond_2c

    iget v8, v6, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->width:I

    move/from16 v31, v0

    const/4 v0, -0x1

    .end local v0    # "matchWidthLocally":Z
    .local v31, "matchWidthLocally":Z
    if-ne v8, v0, :cond_2d

    const/4 v8, 0x1

    goto :goto_1e

    .end local v31    # "matchWidthLocally":Z
    .restart local v0    # "matchWidthLocally":Z
    :cond_2c
    move/from16 v31, v0

    const/4 v0, -0x1

    .end local v0    # "matchWidthLocally":Z
    .restart local v31    # "matchWidthLocally":Z
    :cond_2d
    const/4 v8, 0x0

    .line 862
    .end local v17    # "allFillParent":Z
    .local v8, "allFillParent":Z
    :goto_1e
    iget v0, v7, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    .line 863
    .local v0, "totalLength":I
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v17

    add-int v17, v0, v17

    move/from16 v33, v1

    .end local v1    # "alternativeMaxWidth":I
    .local v33, "alternativeMaxWidth":I
    iget v1, v6, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->topMargin:I

    add-int v17, v17, v1

    iget v1, v6, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->bottomMargin:I

    add-int v17, v17, v1

    .line 864
    invoke-virtual {v7, v4}, Landroidx/appcompat/widget/LinearLayoutCompat;->getNextLocationOffset(Landroid/view/View;)I

    move-result v1

    add-int v1, v17, v1

    .line 863
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, v7, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    move/from16 v17, v8

    move/from16 v0, v27

    move/from16 v1, v28

    move/from16 v8, v33

    .line 804
    .end local v4    # "child":Landroid/view/View;
    .end local v6    # "lp":Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;
    .end local v13    # "margin":I
    .end local v15    # "measuredWidth":I
    .end local v27    # "weightSum":F
    .end local v28    # "delta":I
    .end local v29    # "childExtra":F
    .end local v31    # "matchWidthLocally":Z
    .end local v33    # "alternativeMaxWidth":I
    .local v0, "weightSum":F
    .local v1, "delta":I
    .local v8, "alternativeMaxWidth":I
    .restart local v17    # "allFillParent":Z
    :goto_1f
    add-int/lit8 v3, v3, 0x1

    move/from16 v10, v25

    move/from16 v15, v26

    move/from16 v13, v30

    move/from16 v4, v32

    move/from16 v6, v34

    goto/16 :goto_17

    .end local v25    # "useLargestChild":Z
    .end local v26    # "baselineChildIndex":I
    .end local v30    # "heightMode":I
    .end local v32    # "largestChildHeight":I
    .end local v34    # "weightedMaxWidth":I
    .local v4, "largestChildHeight":I
    .local v6, "weightedMaxWidth":I
    .local v10, "useLargestChild":Z
    .local v13, "heightMode":I
    .local v15, "baselineChildIndex":I
    :cond_2e
    move/from16 v32, v4

    move/from16 v34, v6

    move/from16 v25, v10

    move/from16 v30, v13

    move/from16 v26, v15

    move/from16 v10, p1

    .line 868
    .end local v3    # "i":I
    .end local v4    # "largestChildHeight":I
    .end local v6    # "weightedMaxWidth":I
    .end local v10    # "useLargestChild":Z
    .end local v13    # "heightMode":I
    .end local v15    # "baselineChildIndex":I
    .restart local v25    # "useLargestChild":Z
    .restart local v26    # "baselineChildIndex":I
    .restart local v30    # "heightMode":I
    .restart local v32    # "largestChildHeight":I
    .restart local v34    # "weightedMaxWidth":I
    iget v3, v7, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getPaddingTop()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getPaddingBottom()I

    move-result v6

    add-int/2addr v4, v6

    add-int/2addr v3, v4

    iput v3, v7, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    .line 870
    .end local v0    # "weightSum":F
    move v3, v1

    move v1, v8

    move v6, v14

    move v14, v2

    .line 900
    .end local v2    # "maxWidth":I
    .end local v8    # "alternativeMaxWidth":I
    .local v1, "alternativeMaxWidth":I
    .local v3, "delta":I
    .local v6, "childState":I
    .local v14, "maxWidth":I
    :goto_20
    if-nez v17, :cond_2f

    const/high16 v0, 0x40000000    # 2.0f

    if-eq v12, v0, :cond_2f

    .line 901
    move v14, v1

    .line 904
    :cond_2f
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getPaddingLeft()I

    move-result v0

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getPaddingRight()I

    move-result v2

    add-int/2addr v0, v2

    add-int/2addr v14, v0

    .line 907
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getSuggestedMinimumWidth()I

    move-result v0

    invoke-static {v14, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 909
    .end local v14    # "maxWidth":I
    .local v0, "maxWidth":I
    invoke-static {v0, v10, v6}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result v2

    invoke-virtual {v7, v2, v5}, Landroidx/appcompat/widget/LinearLayoutCompat;->setMeasuredDimension(II)V

    .line 912
    if-eqz v18, :cond_30

    .line 913
    invoke-direct {v7, v11, v9}, Landroidx/appcompat/widget/LinearLayoutCompat;->forceUniformWidth(II)V

    .line 915
    :cond_30
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 2
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 303
    iget-object v0, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mDivider:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 304
    return-void

    .line 307
    :cond_0
    iget v0, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mOrientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 308
    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/LinearLayoutCompat;->drawDividersVertical(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 310
    :cond_1
    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/LinearLayoutCompat;->drawDividersHorizontal(Landroid/graphics/Canvas;)V

    .line 312
    :goto_0
    return-void
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .line 1786
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 1787
    const-string v0, "androidx.appcompat.widget.LinearLayoutCompat"

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 1788
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 1792
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 1793
    const-string v0, "androidx.appcompat.widget.LinearLayoutCompat"

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 1794
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 2
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .line 1430
    iget v0, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mOrientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1431
    invoke-virtual {p0, p2, p3, p4, p5}, Landroidx/appcompat/widget/LinearLayoutCompat;->layoutVertical(IIII)V

    goto :goto_0

    .line 1433
    :cond_0
    invoke-virtual {p0, p2, p3, p4, p5}, Landroidx/appcompat/widget/LinearLayoutCompat;->layoutHorizontal(IIII)V

    .line 1435
    :goto_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 574
    iget v0, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mOrientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 575
    invoke-virtual {p0, p1, p2}, Landroidx/appcompat/widget/LinearLayoutCompat;->measureVertical(II)V

    goto :goto_0

    .line 577
    :cond_0
    invoke-virtual {p0, p1, p2}, Landroidx/appcompat/widget/LinearLayoutCompat;->measureHorizontal(II)V

    .line 579
    :goto_0
    return-void
.end method

.method public setBaselineAligned(Z)V
    .locals 0
    .param p1, "baselineAligned"    # Z

    .line 413
    iput-boolean p1, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mBaselineAligned:Z

    .line 414
    return-void
.end method

.method public setBaselineAlignedChildIndex(I)V
    .locals 3
    .param p1, "i"    # I

    .line 511
    if-ltz p1, :cond_0

    invoke-virtual {p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getChildCount()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 515
    iput p1, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mBaselineAlignedChildIndex:I

    .line 516
    return-void

    .line 512
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "base aligned child index out of range (0, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 513
    invoke-virtual {p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getChildCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setDividerDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "divider"    # Landroid/graphics/drawable/Drawable;

    .line 251
    iget-object v0, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mDivider:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_0

    .line 252
    return-void

    .line 254
    :cond_0
    iput-object p1, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mDivider:Landroid/graphics/drawable/Drawable;

    .line 255
    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 256
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    iput v1, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mDividerWidth:I

    .line 257
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    iput v1, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mDividerHeight:I

    goto :goto_0

    .line 259
    :cond_1
    iput v0, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mDividerWidth:I

    .line 260
    iput v0, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mDividerHeight:I

    .line 262
    :goto_0
    if-nez p1, :cond_2

    const/4 v0, 0x1

    :cond_2
    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/LinearLayoutCompat;->setWillNotDraw(Z)V

    .line 263
    invoke-virtual {p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->requestLayout()V

    .line 264
    return-void
.end method

.method public setDividerPadding(I)V
    .locals 0
    .param p1, "padding"    # I

    .line 276
    iput p1, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mDividerPadding:I

    .line 277
    return-void
.end method

.method public setGravity(I)V
    .locals 1
    .param p1, "gravity"    # I

    .line 1707
    iget v0, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mGravity:I

    if-eq v0, p1, :cond_2

    .line 1708
    const v0, 0x800007

    and-int/2addr v0, p1

    if-nez v0, :cond_0

    .line 1709
    const v0, 0x800003

    or-int/2addr p1, v0

    .line 1712
    :cond_0
    and-int/lit8 v0, p1, 0x70

    if-nez v0, :cond_1

    .line 1713
    or-int/lit8 p1, p1, 0x30

    .line 1716
    :cond_1
    iput p1, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mGravity:I

    .line 1717
    invoke-virtual {p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->requestLayout()V

    .line 1719
    :cond_2
    return-void
.end method

.method public setHorizontalGravity(I)V
    .locals 3
    .param p1, "horizontalGravity"    # I

    .line 1734
    const v0, 0x800007

    and-int v1, p1, v0

    .line 1735
    .local v1, "gravity":I
    iget v2, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mGravity:I

    and-int/2addr v0, v2

    if-eq v0, v1, :cond_0

    .line 1736
    const v0, -0x800008

    and-int/2addr v0, v2

    or-int/2addr v0, v1

    iput v0, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mGravity:I

    .line 1737
    invoke-virtual {p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->requestLayout()V

    .line 1739
    :cond_0
    return-void
.end method

.method public setMeasureWithLargestChildEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .line 440
    iput-boolean p1, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mUseLargestChild:Z

    .line 441
    return-void
.end method

.method public setOrientation(I)V
    .locals 1
    .param p1, "orientation"    # I

    .line 1678
    iget v0, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mOrientation:I

    if-eq v0, p1, :cond_0

    .line 1679
    iput p1, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mOrientation:I

    .line 1680
    invoke-virtual {p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->requestLayout()V

    .line 1682
    :cond_0
    return-void
.end method

.method public setShowDividers(I)V
    .locals 1
    .param p1, "showDividers"    # I

    .line 207
    iget v0, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mShowDividers:I

    if-eq p1, v0, :cond_0

    .line 208
    invoke-virtual {p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->requestLayout()V

    .line 210
    :cond_0
    iput p1, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mShowDividers:I

    .line 211
    return-void
.end method

.method public setVerticalGravity(I)V
    .locals 3
    .param p1, "verticalGravity"    # I

    .line 1742
    and-int/lit8 v0, p1, 0x70

    .line 1743
    .local v0, "gravity":I
    iget v1, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mGravity:I

    and-int/lit8 v2, v1, 0x70

    if-eq v2, v0, :cond_0

    .line 1744
    and-int/lit8 v1, v1, -0x71

    or-int/2addr v1, v0

    iput v1, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mGravity:I

    .line 1745
    invoke-virtual {p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->requestLayout()V

    .line 1747
    :cond_0
    return-void
.end method

.method public setWeightSum(F)V
    .locals 1
    .param p1, "weightSum"    # F

    .line 569
    const/4 v0, 0x0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mWeightSum:F

    .line 570
    return-void
.end method

.method public shouldDelayChildPressedState()Z
    .locals 1

    .line 215
    const/4 v0, 0x0

    return v0
.end method
