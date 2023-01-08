.class public Landroidx/emoji2/text/EmojiMetadata;
.super Ljava/lang/Object;
.source "EmojiMetadata.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/emoji2/text/EmojiMetadata$HasGlyph;
    }
.end annotation


# static fields
.field public static final HAS_GLYPH_ABSENT:I = 0x1

.field public static final HAS_GLYPH_EXISTS:I = 0x2

.field public static final HAS_GLYPH_UNKNOWN:I

.field private static final sMetadataItem:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Landroidx/emoji2/text/flatbuffer/MetadataItem;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private volatile mHasGlyph:I

.field private final mIndex:I

.field private final mMetadataRepo:Landroidx/emoji2/text/MetadataRepo;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 73
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Landroidx/emoji2/text/EmojiMetadata;->sMetadataItem:Ljava/lang/ThreadLocal;

    return-void
.end method

.method constructor <init>(Landroidx/emoji2/text/MetadataRepo;I)V
    .locals 1
    .param p1, "metadataRepo"    # Landroidx/emoji2/text/MetadataRepo;
    .param p2, "index"    # I

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    const/4 v0, 0x0

    iput v0, p0, Landroidx/emoji2/text/EmojiMetadata;->mHasGlyph:I

    .line 93
    iput-object p1, p0, Landroidx/emoji2/text/EmojiMetadata;->mMetadataRepo:Landroidx/emoji2/text/MetadataRepo;

    .line 94
    iput p2, p0, Landroidx/emoji2/text/EmojiMetadata;->mIndex:I

    .line 95
    return-void
.end method

.method private getMetadataItem()Landroidx/emoji2/text/flatbuffer/MetadataItem;
    .locals 3

    .line 132
    sget-object v0, Landroidx/emoji2/text/EmojiMetadata;->sMetadataItem:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/emoji2/text/flatbuffer/MetadataItem;

    .line 133
    .local v1, "result":Landroidx/emoji2/text/flatbuffer/MetadataItem;
    if-nez v1, :cond_0

    .line 134
    new-instance v2, Landroidx/emoji2/text/flatbuffer/MetadataItem;

    invoke-direct {v2}, Landroidx/emoji2/text/flatbuffer/MetadataItem;-><init>()V

    move-object v1, v2

    .line 135
    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 144
    :cond_0
    iget-object v0, p0, Landroidx/emoji2/text/EmojiMetadata;->mMetadataRepo:Landroidx/emoji2/text/MetadataRepo;

    invoke-virtual {v0}, Landroidx/emoji2/text/MetadataRepo;->getMetadataList()Landroidx/emoji2/text/flatbuffer/MetadataList;

    move-result-object v0

    iget v2, p0, Landroidx/emoji2/text/EmojiMetadata;->mIndex:I

    invoke-virtual {v0, v1, v2}, Landroidx/emoji2/text/flatbuffer/MetadataList;->list(Landroidx/emoji2/text/flatbuffer/MetadataItem;I)Landroidx/emoji2/text/flatbuffer/MetadataItem;

    .line 145
    return-object v1
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;FFLandroid/graphics/Paint;)V
    .locals 10
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "x"    # F
    .param p3, "y"    # F
    .param p4, "paint"    # Landroid/graphics/Paint;

    .line 108
    iget-object v0, p0, Landroidx/emoji2/text/EmojiMetadata;->mMetadataRepo:Landroidx/emoji2/text/MetadataRepo;

    invoke-virtual {v0}, Landroidx/emoji2/text/MetadataRepo;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v0

    .line 109
    .local v0, "typeface":Landroid/graphics/Typeface;
    invoke-virtual {p4}, Landroid/graphics/Paint;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v1

    .line 110
    .local v1, "oldTypeface":Landroid/graphics/Typeface;
    invoke-virtual {p4, v0}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 115
    iget v2, p0, Landroidx/emoji2/text/EmojiMetadata;->mIndex:I

    mul-int/lit8 v2, v2, 0x2

    .line 116
    .local v2, "charArrayStartIndex":I
    iget-object v3, p0, Landroidx/emoji2/text/EmojiMetadata;->mMetadataRepo:Landroidx/emoji2/text/MetadataRepo;

    invoke-virtual {v3}, Landroidx/emoji2/text/MetadataRepo;->getEmojiCharArray()[C

    move-result-object v4

    const/4 v6, 0x2

    move-object v3, p1

    move v5, v2

    move v7, p2

    move v8, p3

    move-object v9, p4

    invoke-virtual/range {v3 .. v9}, Landroid/graphics/Canvas;->drawText([CIIFFLandroid/graphics/Paint;)V

    .line 117
    invoke-virtual {p4, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 118
    return-void
.end method

.method public getCodepointAt(I)I
    .locals 1
    .param p1, "index"    # I

    .line 230
    invoke-direct {p0}, Landroidx/emoji2/text/EmojiMetadata;->getMetadataItem()Landroidx/emoji2/text/flatbuffer/MetadataItem;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/emoji2/text/flatbuffer/MetadataItem;->codepoints(I)I

    move-result v0

    return v0
.end method

.method public getCodepointsLength()I
    .locals 1

    .line 237
    invoke-direct {p0}, Landroidx/emoji2/text/EmojiMetadata;->getMetadataItem()Landroidx/emoji2/text/flatbuffer/MetadataItem;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/emoji2/text/flatbuffer/MetadataItem;->codepointsLength()I

    move-result v0

    return v0
.end method

.method public getCompatAdded()S
    .locals 1

    .line 173
    invoke-direct {p0}, Landroidx/emoji2/text/EmojiMetadata;->getMetadataItem()Landroidx/emoji2/text/flatbuffer/MetadataItem;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/emoji2/text/flatbuffer/MetadataItem;->compatAdded()S

    move-result v0

    return v0
.end method

.method public getHasGlyph()I
    .locals 1

    .line 190
    iget v0, p0, Landroidx/emoji2/text/EmojiMetadata;->mHasGlyph:I

    return v0
.end method

.method public getHeight()S
    .locals 1

    .line 166
    invoke-direct {p0}, Landroidx/emoji2/text/EmojiMetadata;->getMetadataItem()Landroidx/emoji2/text/flatbuffer/MetadataItem;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/emoji2/text/flatbuffer/MetadataItem;->height()S

    move-result v0

    return v0
.end method

.method public getId()I
    .locals 1

    .line 152
    invoke-direct {p0}, Landroidx/emoji2/text/EmojiMetadata;->getMetadataItem()Landroidx/emoji2/text/flatbuffer/MetadataItem;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/emoji2/text/flatbuffer/MetadataItem;->id()I

    move-result v0

    return v0
.end method

.method public getSdkAdded()S
    .locals 1

    .line 180
    invoke-direct {p0}, Landroidx/emoji2/text/EmojiMetadata;->getMetadataItem()Landroidx/emoji2/text/flatbuffer/MetadataItem;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/emoji2/text/flatbuffer/MetadataItem;->sdkAdded()S

    move-result v0

    return v0
.end method

.method public getTypeface()Landroid/graphics/Typeface;
    .locals 1

    .line 125
    iget-object v0, p0, Landroidx/emoji2/text/EmojiMetadata;->mMetadataRepo:Landroidx/emoji2/text/MetadataRepo;

    invoke-virtual {v0}, Landroidx/emoji2/text/MetadataRepo;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v0

    return-object v0
.end method

.method public getWidth()S
    .locals 1

    .line 159
    invoke-direct {p0}, Landroidx/emoji2/text/EmojiMetadata;->getMetadataItem()Landroidx/emoji2/text/flatbuffer/MetadataItem;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/emoji2/text/flatbuffer/MetadataItem;->width()S

    move-result v0

    return v0
.end method

.method public isDefaultEmoji()Z
    .locals 1

    .line 221
    invoke-direct {p0}, Landroidx/emoji2/text/EmojiMetadata;->getMetadataItem()Landroidx/emoji2/text/flatbuffer/MetadataItem;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/emoji2/text/flatbuffer/MetadataItem;->emojiStyle()Z

    move-result v0

    return v0
.end method

.method public resetHasGlyphCache()V
    .locals 1

    .line 203
    const/4 v0, 0x0

    iput v0, p0, Landroidx/emoji2/text/EmojiMetadata;->mHasGlyph:I

    .line 204
    return-void
.end method

.method public setHasGlyph(Z)V
    .locals 1
    .param p1, "hasGlyph"    # Z

    .line 213
    if-eqz p1, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    iput v0, p0, Landroidx/emoji2/text/EmojiMetadata;->mHasGlyph:I

    .line 214
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 242
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 243
    .local v0, "builder":Ljava/lang/StringBuilder;
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 244
    const-string v1, ", id:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 245
    invoke-virtual {p0}, Landroidx/emoji2/text/EmojiMetadata;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 246
    const-string v1, ", codepoints:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 247
    invoke-virtual {p0}, Landroidx/emoji2/text/EmojiMetadata;->getCodepointsLength()I

    move-result v1

    .line 248
    .local v1, "codepointsLength":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 249
    invoke-virtual {p0, v2}, Landroidx/emoji2/text/EmojiMetadata;->getCodepointAt(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 250
    const-string v3, " "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 248
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 252
    .end local v2    # "i":I
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
