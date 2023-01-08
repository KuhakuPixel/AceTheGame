.class Landroidx/appcompat/widget/AppCompatProgressBarHelper;
.super Ljava/lang/Object;
.source "AppCompatProgressBarHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/appcompat/widget/AppCompatProgressBarHelper$Api23Impl;
    }
.end annotation


# static fields
.field private static final TINT_ATTRS:[I


# instance fields
.field private mSampleTile:Landroid/graphics/Bitmap;

.field private final mView:Landroid/widget/ProgressBar;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 41
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Landroidx/appcompat/widget/AppCompatProgressBarHelper;->TINT_ATTRS:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x101013b
        0x101013c
    .end array-data
.end method

.method constructor <init>(Landroid/widget/ProgressBar;)V
    .locals 0
    .param p1, "view"    # Landroid/widget/ProgressBar;

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object p1, p0, Landroidx/appcompat/widget/AppCompatProgressBarHelper;->mView:Landroid/widget/ProgressBar;

    .line 52
    return-void
.end method

.method private getDrawableShape()Landroid/graphics/drawable/shapes/Shape;
    .locals 3

    .line 147
    const/16 v0, 0x8

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    .line 148
    .local v0, "roundedCorners":[F
    new-instance v1, Landroid/graphics/drawable/shapes/RoundRectShape;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2, v2}, Landroid/graphics/drawable/shapes/RoundRectShape;-><init>([FLandroid/graphics/RectF;[F)V

    return-object v1

    :array_0
    .array-data 4
        0x40a00000    # 5.0f
        0x40a00000    # 5.0f
        0x40a00000    # 5.0f
        0x40a00000    # 5.0f
        0x40a00000    # 5.0f
        0x40a00000    # 5.0f
        0x40a00000    # 5.0f
        0x40a00000    # 5.0f
    .end array-data
.end method

.method private tileifyIndeterminate(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 7
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .line 129
    instance-of v0, p1, Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v0, :cond_1

    .line 130
    move-object v0, p1

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    .line 131
    .local v0, "background":Landroid/graphics/drawable/AnimationDrawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->getNumberOfFrames()I

    move-result v1

    .line 132
    .local v1, "N":I
    new-instance v2, Landroid/graphics/drawable/AnimationDrawable;

    invoke-direct {v2}, Landroid/graphics/drawable/AnimationDrawable;-><init>()V

    .line 133
    .local v2, "newBg":Landroid/graphics/drawable/AnimationDrawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->isOneShot()Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/AnimationDrawable;->setOneShot(Z)V

    .line 135
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    const/16 v4, 0x2710

    if-ge v3, v1, :cond_0

    .line 136
    invoke-virtual {v0, v3}, Landroid/graphics/drawable/AnimationDrawable;->getFrame(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {p0, v5, v6}, Landroidx/appcompat/widget/AppCompatProgressBarHelper;->tileify(Landroid/graphics/drawable/Drawable;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 137
    .local v5, "frame":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v5, v4}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    .line 138
    invoke-virtual {v0, v3}, Landroid/graphics/drawable/AnimationDrawable;->getDuration(I)I

    move-result v4

    invoke-virtual {v2, v5, v4}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 135
    .end local v5    # "frame":Landroid/graphics/drawable/Drawable;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 140
    .end local v3    # "i":I
    :cond_0
    invoke-virtual {v2, v4}, Landroid/graphics/drawable/AnimationDrawable;->setLevel(I)Z

    .line 141
    move-object p1, v2

    .line 143
    .end local v0    # "background":Landroid/graphics/drawable/AnimationDrawable;
    .end local v1    # "N":I
    .end local v2    # "newBg":Landroid/graphics/drawable/AnimationDrawable;
    :cond_1
    return-object p1
.end method


# virtual methods
.method getSampleTile()Landroid/graphics/Bitmap;
    .locals 1

    .line 152
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatProgressBarHelper;->mSampleTile:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method loadFromAttributes(Landroid/util/AttributeSet;I)V
    .locals 5
    .param p1, "attrs"    # Landroid/util/AttributeSet;
    .param p2, "defStyleAttr"    # I

    .line 55
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatProgressBarHelper;->mView:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Landroidx/appcompat/widget/AppCompatProgressBarHelper;->TINT_ATTRS:[I

    const/4 v2, 0x0

    invoke-static {v0, p1, v1, p2, v2}, Landroidx/appcompat/widget/TintTypedArray;->obtainStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[III)Landroidx/appcompat/widget/TintTypedArray;

    move-result-object v0

    .line 58
    .local v0, "a":Landroidx/appcompat/widget/TintTypedArray;
    invoke-virtual {v0, v2}, Landroidx/appcompat/widget/TintTypedArray;->getDrawableIfKnown(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 59
    .local v1, "drawable":Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_0

    .line 60
    iget-object v3, p0, Landroidx/appcompat/widget/AppCompatProgressBarHelper;->mView:Landroid/widget/ProgressBar;

    invoke-direct {p0, v1}, Landroidx/appcompat/widget/AppCompatProgressBarHelper;->tileifyIndeterminate(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ProgressBar;->setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 63
    :cond_0
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroidx/appcompat/widget/TintTypedArray;->getDrawableIfKnown(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 64
    if-eqz v1, :cond_1

    .line 65
    iget-object v3, p0, Landroidx/appcompat/widget/AppCompatProgressBarHelper;->mView:Landroid/widget/ProgressBar;

    invoke-virtual {p0, v1, v2}, Landroidx/appcompat/widget/AppCompatProgressBarHelper;->tileify(Landroid/graphics/drawable/Drawable;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/ProgressBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 68
    :cond_1
    invoke-virtual {v0}, Landroidx/appcompat/widget/TintTypedArray;->recycle()V

    .line 69
    return-void
.end method

.method tileify(Landroid/graphics/drawable/Drawable;Z)Landroid/graphics/drawable/Drawable;
    .locals 8
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p2, "clip"    # Z

    .line 77
    instance-of v0, p1, Landroidx/core/graphics/drawable/WrappedDrawable;

    if-eqz v0, :cond_1

    .line 78
    move-object v0, p1

    check-cast v0, Landroidx/core/graphics/drawable/WrappedDrawable;

    invoke-interface {v0}, Landroidx/core/graphics/drawable/WrappedDrawable;->getWrappedDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 79
    .local v0, "inner":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    .line 80
    invoke-virtual {p0, v0, p2}, Landroidx/appcompat/widget/AppCompatProgressBarHelper;->tileify(Landroid/graphics/drawable/Drawable;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 81
    move-object v1, p1

    check-cast v1, Landroidx/core/graphics/drawable/WrappedDrawable;

    invoke-interface {v1, v0}, Landroidx/core/graphics/drawable/WrappedDrawable;->setWrappedDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 83
    .end local v0    # "inner":Landroid/graphics/drawable/Drawable;
    :cond_0
    goto/16 :goto_5

    :cond_1
    instance-of v0, p1, Landroid/graphics/drawable/LayerDrawable;

    const/4 v1, 0x1

    if-eqz v0, :cond_7

    .line 84
    move-object v0, p1

    check-cast v0, Landroid/graphics/drawable/LayerDrawable;

    .line 85
    .local v0, "background":Landroid/graphics/drawable/LayerDrawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/LayerDrawable;->getNumberOfLayers()I

    move-result v2

    .line 86
    .local v2, "N":I
    new-array v3, v2, [Landroid/graphics/drawable/Drawable;

    .line 88
    .local v3, "outDrawables":[Landroid/graphics/drawable/Drawable;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v2, :cond_4

    .line 89
    invoke-virtual {v0, v4}, Landroid/graphics/drawable/LayerDrawable;->getId(I)I

    move-result v5

    .line 90
    .local v5, "id":I
    invoke-virtual {v0, v4}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    const v7, 0x102000d

    if-eq v5, v7, :cond_3

    const v7, 0x102000f

    if-ne v5, v7, :cond_2

    goto :goto_1

    :cond_2
    const/4 v7, 0x0

    goto :goto_2

    :cond_3
    :goto_1
    const/4 v7, 0x1

    :goto_2
    invoke-virtual {p0, v6, v7}, Landroidx/appcompat/widget/AppCompatProgressBarHelper;->tileify(Landroid/graphics/drawable/Drawable;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    aput-object v6, v3, v4

    .line 88
    .end local v5    # "id":I
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 94
    .end local v4    # "i":I
    :cond_4
    new-instance v1, Landroid/graphics/drawable/LayerDrawable;

    invoke-direct {v1, v3}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 95
    .local v1, "clone":Landroid/graphics/drawable/LayerDrawable;
    const/4 v4, 0x0

    .restart local v4    # "i":I
    :goto_3
    if-ge v4, v2, :cond_6

    .line 96
    invoke-virtual {v0, v4}, Landroid/graphics/drawable/LayerDrawable;->getId(I)I

    move-result v5

    invoke-virtual {v1, v4, v5}, Landroid/graphics/drawable/LayerDrawable;->setId(II)V

    .line 97
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x17

    if-lt v5, v6, :cond_5

    .line 98
    invoke-static {v0, v1, v4}, Landroidx/appcompat/widget/AppCompatProgressBarHelper$Api23Impl;->transferLayerProperties(Landroid/graphics/drawable/LayerDrawable;Landroid/graphics/drawable/LayerDrawable;I)V

    .line 95
    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 102
    .end local v4    # "i":I
    :cond_6
    return-object v1

    .line 104
    .end local v0    # "background":Landroid/graphics/drawable/LayerDrawable;
    .end local v1    # "clone":Landroid/graphics/drawable/LayerDrawable;
    .end local v2    # "N":I
    .end local v3    # "outDrawables":[Landroid/graphics/drawable/Drawable;
    :cond_7
    instance-of v0, p1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_a

    .line 105
    move-object v0, p1

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 106
    .local v0, "bitmapDrawable":Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    .line 107
    .local v2, "tileBitmap":Landroid/graphics/Bitmap;
    iget-object v3, p0, Landroidx/appcompat/widget/AppCompatProgressBarHelper;->mSampleTile:Landroid/graphics/Bitmap;

    if-nez v3, :cond_8

    .line 108
    iput-object v2, p0, Landroidx/appcompat/widget/AppCompatProgressBarHelper;->mSampleTile:Landroid/graphics/Bitmap;

    .line 111
    :cond_8
    new-instance v3, Landroid/graphics/drawable/ShapeDrawable;

    invoke-direct {p0}, Landroidx/appcompat/widget/AppCompatProgressBarHelper;->getDrawableShape()Landroid/graphics/drawable/shapes/Shape;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    .line 112
    .local v3, "shapeDrawable":Landroid/graphics/drawable/ShapeDrawable;
    new-instance v4, Landroid/graphics/BitmapShader;

    sget-object v5, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    sget-object v6, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {v4, v2, v5, v6}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    .line 114
    .local v4, "bitmapShader":Landroid/graphics/BitmapShader;
    invoke-virtual {v3}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 115
    invoke-virtual {v3}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v5

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v6

    invoke-virtual {v6}, Landroid/graphics/Paint;->getColorFilter()Landroid/graphics/ColorFilter;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 116
    if-eqz p2, :cond_9

    new-instance v5, Landroid/graphics/drawable/ClipDrawable;

    const/4 v6, 0x3

    invoke-direct {v5, v3, v6, v1}, Landroid/graphics/drawable/ClipDrawable;-><init>(Landroid/graphics/drawable/Drawable;II)V

    goto :goto_4

    .line 117
    :cond_9
    move-object v5, v3

    .line 116
    :goto_4
    return-object v5

    .line 120
    .end local v0    # "bitmapDrawable":Landroid/graphics/drawable/BitmapDrawable;
    .end local v2    # "tileBitmap":Landroid/graphics/Bitmap;
    .end local v3    # "shapeDrawable":Landroid/graphics/drawable/ShapeDrawable;
    .end local v4    # "bitmapShader":Landroid/graphics/BitmapShader;
    :cond_a
    :goto_5
    return-object p1
.end method
