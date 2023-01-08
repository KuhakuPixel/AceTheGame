.class public abstract Landroidx/emoji2/text/EmojiSpan;
.super Landroid/text/style/ReplacementSpan;
.source "EmojiSpan.java"


# instance fields
.field private mHeight:S

.field private final mMetadata:Landroidx/emoji2/text/EmojiMetadata;

.field private mRatio:F

.field private final mTmpFontMetrics:Landroid/graphics/Paint$FontMetricsInt;

.field private mWidth:S


# direct methods
.method constructor <init>(Landroidx/emoji2/text/EmojiMetadata;)V
    .locals 1
    .param p1, "metadata"    # Landroidx/emoji2/text/EmojiMetadata;

    .line 75
    invoke-direct {p0}, Landroid/text/style/ReplacementSpan;-><init>()V

    .line 42
    new-instance v0, Landroid/graphics/Paint$FontMetricsInt;

    invoke-direct {v0}, Landroid/graphics/Paint$FontMetricsInt;-><init>()V

    iput-object v0, p0, Landroidx/emoji2/text/EmojiSpan;->mTmpFontMetrics:Landroid/graphics/Paint$FontMetricsInt;

    .line 55
    const/4 v0, -0x1

    iput-short v0, p0, Landroidx/emoji2/text/EmojiSpan;->mWidth:S

    .line 60
    iput-short v0, p0, Landroidx/emoji2/text/EmojiSpan;->mHeight:S

    .line 65
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Landroidx/emoji2/text/EmojiSpan;->mRatio:F

    .line 76
    const-string v0, "metadata cannot be null"

    invoke-static {p1, v0}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    iput-object p1, p0, Landroidx/emoji2/text/EmojiSpan;->mMetadata:Landroidx/emoji2/text/EmojiMetadata;

    .line 78
    return-void
.end method


# virtual methods
.method public final getHeight()I
    .locals 1

    .line 130
    iget-short v0, p0, Landroidx/emoji2/text/EmojiSpan;->mHeight:S

    return v0
.end method

.method public final getId()I
    .locals 1

    .line 148
    invoke-virtual {p0}, Landroidx/emoji2/text/EmojiSpan;->getMetadata()Landroidx/emoji2/text/EmojiMetadata;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/emoji2/text/EmojiMetadata;->getId()I

    move-result v0

    return v0
.end method

.method public final getMetadata()Landroidx/emoji2/text/EmojiMetadata;
    .locals 1

    .line 110
    iget-object v0, p0, Landroidx/emoji2/text/EmojiSpan;->mMetadata:Landroidx/emoji2/text/EmojiMetadata;

    return-object v0
.end method

.method final getRatio()F
    .locals 1

    .line 138
    iget v0, p0, Landroidx/emoji2/text/EmojiSpan;->mRatio:F

    return v0
.end method

.method public getSize(Landroid/graphics/Paint;Ljava/lang/CharSequence;IILandroid/graphics/Paint$FontMetricsInt;)I
    .locals 3
    .param p1, "paint"    # Landroid/graphics/Paint;
    .param p2, "text"    # Ljava/lang/CharSequence;
    .param p3, "start"    # I
    .param p4, "end"    # I
    .param p5, "fm"    # Landroid/graphics/Paint$FontMetricsInt;

    .line 87
    iget-object v0, p0, Landroidx/emoji2/text/EmojiSpan;->mTmpFontMetrics:Landroid/graphics/Paint$FontMetricsInt;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->getFontMetricsInt(Landroid/graphics/Paint$FontMetricsInt;)I

    .line 88
    iget-object v0, p0, Landroidx/emoji2/text/EmojiSpan;->mTmpFontMetrics:Landroid/graphics/Paint$FontMetricsInt;

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    iget-object v1, p0, Landroidx/emoji2/text/EmojiSpan;->mTmpFontMetrics:Landroid/graphics/Paint$FontMetricsInt;

    iget v1, v1, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 90
    .local v0, "fontHeight":I
    int-to-float v1, v0

    const/high16 v2, 0x3f800000    # 1.0f

    mul-float v1, v1, v2

    iget-object v2, p0, Landroidx/emoji2/text/EmojiSpan;->mMetadata:Landroidx/emoji2/text/EmojiMetadata;

    invoke-virtual {v2}, Landroidx/emoji2/text/EmojiMetadata;->getHeight()S

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    iput v1, p0, Landroidx/emoji2/text/EmojiSpan;->mRatio:F

    .line 91
    iget-object v1, p0, Landroidx/emoji2/text/EmojiSpan;->mMetadata:Landroidx/emoji2/text/EmojiMetadata;

    invoke-virtual {v1}, Landroidx/emoji2/text/EmojiMetadata;->getHeight()S

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Landroidx/emoji2/text/EmojiSpan;->mRatio:F

    mul-float v1, v1, v2

    float-to-int v1, v1

    int-to-short v1, v1

    iput-short v1, p0, Landroidx/emoji2/text/EmojiSpan;->mHeight:S

    .line 92
    iget-object v1, p0, Landroidx/emoji2/text/EmojiSpan;->mMetadata:Landroidx/emoji2/text/EmojiMetadata;

    invoke-virtual {v1}, Landroidx/emoji2/text/EmojiMetadata;->getWidth()S

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Landroidx/emoji2/text/EmojiSpan;->mRatio:F

    mul-float v1, v1, v2

    float-to-int v1, v1

    int-to-short v1, v1

    iput-short v1, p0, Landroidx/emoji2/text/EmojiSpan;->mWidth:S

    .line 94
    if-eqz p5, :cond_0

    .line 95
    iget-object v1, p0, Landroidx/emoji2/text/EmojiSpan;->mTmpFontMetrics:Landroid/graphics/Paint$FontMetricsInt;

    iget v1, v1, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    iput v1, p5, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    .line 96
    iget-object v1, p0, Landroidx/emoji2/text/EmojiSpan;->mTmpFontMetrics:Landroid/graphics/Paint$FontMetricsInt;

    iget v1, v1, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    iput v1, p5, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    .line 97
    iget-object v1, p0, Landroidx/emoji2/text/EmojiSpan;->mTmpFontMetrics:Landroid/graphics/Paint$FontMetricsInt;

    iget v1, v1, Landroid/graphics/Paint$FontMetricsInt;->top:I

    iput v1, p5, Landroid/graphics/Paint$FontMetricsInt;->top:I

    .line 98
    iget-object v1, p0, Landroidx/emoji2/text/EmojiSpan;->mTmpFontMetrics:Landroid/graphics/Paint$FontMetricsInt;

    iget v1, v1, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    iput v1, p5, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    .line 101
    :cond_0
    iget-short v1, p0, Landroidx/emoji2/text/EmojiSpan;->mWidth:S

    return v1
.end method

.method final getWidth()I
    .locals 1

    .line 120
    iget-short v0, p0, Landroidx/emoji2/text/EmojiSpan;->mWidth:S

    return v0
.end method
