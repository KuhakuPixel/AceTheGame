.class public final Landroidx/emoji2/text/flatbuffer/MetadataItem;
.super Landroidx/emoji2/text/flatbuffer/Table;
.source "MetadataItem.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/emoji2/text/flatbuffer/MetadataItem$Vector;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Landroidx/emoji2/text/flatbuffer/Table;-><init>()V

    return-void
.end method

.method public static ValidateVersion()V
    .locals 0

    .line 29
    invoke-static {}, Landroidx/emoji2/text/flatbuffer/Constants;->FLATBUFFERS_1_12_0()V

    return-void
.end method

.method static synthetic access$000(ILjava/nio/ByteBuffer;)I
    .locals 1
    .param p0, "x0"    # I
    .param p1, "x1"    # Ljava/nio/ByteBuffer;

    .line 28
    invoke-static {p0, p1}, Landroidx/emoji2/text/flatbuffer/MetadataItem;->__indirect(ILjava/nio/ByteBuffer;)I

    move-result v0

    return v0
.end method

.method public static addCodepoints(Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;I)V
    .locals 2
    .param p0, "builder"    # Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;
    .param p1, "codepointsOffset"    # I

    .line 74
    const/4 v0, 0x6

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;->addOffset(III)V

    return-void
.end method

.method public static addCompatAdded(Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;S)V
    .locals 2
    .param p0, "builder"    # Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;
    .param p1, "compatAdded"    # S

    .line 71
    const/4 v0, 0x3

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;->addShort(ISI)V

    return-void
.end method

.method public static addEmojiStyle(Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;Z)V
    .locals 2
    .param p0, "builder"    # Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;
    .param p1, "emojiStyle"    # Z

    .line 69
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;->addBoolean(IZZ)V

    return-void
.end method

.method public static addHeight(Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;S)V
    .locals 2
    .param p0, "builder"    # Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;
    .param p1, "height"    # S

    .line 73
    const/4 v0, 0x5

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;->addShort(ISI)V

    return-void
.end method

.method public static addId(Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;I)V
    .locals 1
    .param p0, "builder"    # Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;
    .param p1, "id"    # I

    .line 68
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, v0}, Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;->addInt(III)V

    return-void
.end method

.method public static addSdkAdded(Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;S)V
    .locals 2
    .param p0, "builder"    # Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;
    .param p1, "sdkAdded"    # S

    .line 70
    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;->addShort(ISI)V

    return-void
.end method

.method public static addWidth(Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;S)V
    .locals 2
    .param p0, "builder"    # Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;
    .param p1, "width"    # S

    .line 72
    const/4 v0, 0x4

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;->addShort(ISI)V

    return-void
.end method

.method public static createCodepointsVector(Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;[I)I
    .locals 2
    .param p0, "builder"    # Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;
    .param p1, "data"    # [I

    .line 75
    array-length v0, p1

    const/4 v1, 0x4

    invoke-virtual {p0, v1, v0, v1}, Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;->startVector(III)V

    array-length v0, p1

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    aget v1, p1, v0

    invoke-virtual {p0, v1}, Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;->addInt(I)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .end local v0    # "i":I
    :cond_0
    invoke-virtual {p0}, Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;->endVector()I

    move-result v0

    return v0
.end method

.method public static createMetadataItem(Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;IZSSSSI)I
    .locals 1
    .param p0, "builder"    # Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;
    .param p1, "id"    # I
    .param p2, "emojiStyle"    # Z
    .param p3, "sdkAdded"    # S
    .param p4, "compatAdded"    # S
    .param p5, "width"    # S
    .param p6, "height"    # S
    .param p7, "codepointsOffset"    # I

    .line 56
    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;->startTable(I)V

    .line 57
    invoke-static {p0, p7}, Landroidx/emoji2/text/flatbuffer/MetadataItem;->addCodepoints(Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;I)V

    .line 58
    invoke-static {p0, p1}, Landroidx/emoji2/text/flatbuffer/MetadataItem;->addId(Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;I)V

    .line 59
    invoke-static {p0, p6}, Landroidx/emoji2/text/flatbuffer/MetadataItem;->addHeight(Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;S)V

    .line 60
    invoke-static {p0, p5}, Landroidx/emoji2/text/flatbuffer/MetadataItem;->addWidth(Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;S)V

    .line 61
    invoke-static {p0, p4}, Landroidx/emoji2/text/flatbuffer/MetadataItem;->addCompatAdded(Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;S)V

    .line 62
    invoke-static {p0, p3}, Landroidx/emoji2/text/flatbuffer/MetadataItem;->addSdkAdded(Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;S)V

    .line 63
    invoke-static {p0, p2}, Landroidx/emoji2/text/flatbuffer/MetadataItem;->addEmojiStyle(Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;Z)V

    .line 64
    invoke-static {p0}, Landroidx/emoji2/text/flatbuffer/MetadataItem;->endMetadataItem(Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;)I

    move-result v0

    return v0
.end method

.method public static endMetadataItem(Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;)I
    .locals 1
    .param p0, "builder"    # Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;

    .line 78
    invoke-virtual {p0}, Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;->endTable()I

    move-result v0

    .line 79
    .local v0, "o":I
    return v0
.end method

.method public static getRootAsMetadataItem(Ljava/nio/ByteBuffer;)Landroidx/emoji2/text/flatbuffer/MetadataItem;
    .locals 1
    .param p0, "_bb"    # Ljava/nio/ByteBuffer;

    .line 30
    new-instance v0, Landroidx/emoji2/text/flatbuffer/MetadataItem;

    invoke-direct {v0}, Landroidx/emoji2/text/flatbuffer/MetadataItem;-><init>()V

    invoke-static {p0, v0}, Landroidx/emoji2/text/flatbuffer/MetadataItem;->getRootAsMetadataItem(Ljava/nio/ByteBuffer;Landroidx/emoji2/text/flatbuffer/MetadataItem;)Landroidx/emoji2/text/flatbuffer/MetadataItem;

    move-result-object v0

    return-object v0
.end method

.method public static getRootAsMetadataItem(Ljava/nio/ByteBuffer;Landroidx/emoji2/text/flatbuffer/MetadataItem;)Landroidx/emoji2/text/flatbuffer/MetadataItem;
    .locals 2
    .param p0, "_bb"    # Ljava/nio/ByteBuffer;
    .param p1, "obj"    # Landroidx/emoji2/text/flatbuffer/MetadataItem;

    .line 31
    sget-object v0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v0

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p1, v0, p0}, Landroidx/emoji2/text/flatbuffer/MetadataItem;->__assign(ILjava/nio/ByteBuffer;)Landroidx/emoji2/text/flatbuffer/MetadataItem;

    move-result-object v0

    return-object v0
.end method

.method public static startCodepointsVector(Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;I)V
    .locals 1
    .param p0, "builder"    # Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;
    .param p1, "numElems"    # I

    .line 76
    const/4 v0, 0x4

    invoke-virtual {p0, v0, p1, v0}, Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;->startVector(III)V

    return-void
.end method

.method public static startMetadataItem(Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;)V
    .locals 1
    .param p0, "builder"    # Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;

    .line 67
    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;->startTable(I)V

    return-void
.end method


# virtual methods
.method public __assign(ILjava/nio/ByteBuffer;)Landroidx/emoji2/text/flatbuffer/MetadataItem;
    .locals 0
    .param p1, "_i"    # I
    .param p2, "_bb"    # Ljava/nio/ByteBuffer;

    .line 33
    invoke-virtual {p0, p1, p2}, Landroidx/emoji2/text/flatbuffer/MetadataItem;->__init(ILjava/nio/ByteBuffer;)V

    return-object p0
.end method

.method public __init(ILjava/nio/ByteBuffer;)V
    .locals 0
    .param p1, "_i"    # I
    .param p2, "_bb"    # Ljava/nio/ByteBuffer;

    .line 32
    invoke-virtual {p0, p1, p2}, Landroidx/emoji2/text/flatbuffer/MetadataItem;->__reset(ILjava/nio/ByteBuffer;)V

    return-void
.end method

.method public codepoints(I)I
    .locals 4
    .param p1, "j"    # I

    .line 41
    const/16 v0, 0x10

    invoke-virtual {p0, v0}, Landroidx/emoji2/text/flatbuffer/MetadataItem;->__offset(I)I

    move-result v0

    .local v0, "o":I
    if-eqz v0, :cond_0

    iget-object v1, p0, Landroidx/emoji2/text/flatbuffer/MetadataItem;->bb:Ljava/nio/ByteBuffer;

    invoke-virtual {p0, v0}, Landroidx/emoji2/text/flatbuffer/MetadataItem;->__vector(I)I

    move-result v2

    mul-int/lit8 v3, p1, 0x4

    add-int/2addr v2, v3

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public codepointsAsByteBuffer()Ljava/nio/ByteBuffer;
    .locals 2

    .line 45
    const/16 v0, 0x10

    const/4 v1, 0x4

    invoke-virtual {p0, v0, v1}, Landroidx/emoji2/text/flatbuffer/MetadataItem;->__vector_as_bytebuffer(II)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public codepointsInByteBuffer(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;
    .locals 2
    .param p1, "_bb"    # Ljava/nio/ByteBuffer;

    .line 46
    const/16 v0, 0x10

    const/4 v1, 0x4

    invoke-virtual {p0, p1, v0, v1}, Landroidx/emoji2/text/flatbuffer/MetadataItem;->__vector_in_bytebuffer(Ljava/nio/ByteBuffer;II)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public codepointsLength()I
    .locals 2

    .line 42
    const/16 v0, 0x10

    invoke-virtual {p0, v0}, Landroidx/emoji2/text/flatbuffer/MetadataItem;->__offset(I)I

    move-result v0

    .local v0, "o":I
    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Landroidx/emoji2/text/flatbuffer/MetadataItem;->__vector_len(I)I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public codepointsVector()Landroidx/emoji2/text/flatbuffer/IntVector;
    .locals 1

    .line 43
    new-instance v0, Landroidx/emoji2/text/flatbuffer/IntVector;

    invoke-direct {v0}, Landroidx/emoji2/text/flatbuffer/IntVector;-><init>()V

    invoke-virtual {p0, v0}, Landroidx/emoji2/text/flatbuffer/MetadataItem;->codepointsVector(Landroidx/emoji2/text/flatbuffer/IntVector;)Landroidx/emoji2/text/flatbuffer/IntVector;

    move-result-object v0

    return-object v0
.end method

.method public codepointsVector(Landroidx/emoji2/text/flatbuffer/IntVector;)Landroidx/emoji2/text/flatbuffer/IntVector;
    .locals 3
    .param p1, "obj"    # Landroidx/emoji2/text/flatbuffer/IntVector;

    .line 44
    const/16 v0, 0x10

    invoke-virtual {p0, v0}, Landroidx/emoji2/text/flatbuffer/MetadataItem;->__offset(I)I

    move-result v0

    .local v0, "o":I
    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Landroidx/emoji2/text/flatbuffer/MetadataItem;->__vector(I)I

    move-result v1

    iget-object v2, p0, Landroidx/emoji2/text/flatbuffer/MetadataItem;->bb:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, v1, v2}, Landroidx/emoji2/text/flatbuffer/IntVector;->__assign(ILjava/nio/ByteBuffer;)Landroidx/emoji2/text/flatbuffer/IntVector;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method

.method public compatAdded()S
    .locals 3

    .line 38
    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Landroidx/emoji2/text/flatbuffer/MetadataItem;->__offset(I)I

    move-result v0

    .local v0, "o":I
    if-eqz v0, :cond_0

    iget-object v1, p0, Landroidx/emoji2/text/flatbuffer/MetadataItem;->bb:Ljava/nio/ByteBuffer;

    iget v2, p0, Landroidx/emoji2/text/flatbuffer/MetadataItem;->bb_pos:I

    add-int/2addr v2, v0

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public emojiStyle()Z
    .locals 4

    .line 36
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Landroidx/emoji2/text/flatbuffer/MetadataItem;->__offset(I)I

    move-result v0

    .local v0, "o":I
    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v2, p0, Landroidx/emoji2/text/flatbuffer/MetadataItem;->bb:Ljava/nio/ByteBuffer;

    iget v3, p0, Landroidx/emoji2/text/flatbuffer/MetadataItem;->bb_pos:I

    add-int/2addr v3, v0

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public height()S
    .locals 3

    .line 40
    const/16 v0, 0xe

    invoke-virtual {p0, v0}, Landroidx/emoji2/text/flatbuffer/MetadataItem;->__offset(I)I

    move-result v0

    .local v0, "o":I
    if-eqz v0, :cond_0

    iget-object v1, p0, Landroidx/emoji2/text/flatbuffer/MetadataItem;->bb:Ljava/nio/ByteBuffer;

    iget v2, p0, Landroidx/emoji2/text/flatbuffer/MetadataItem;->bb_pos:I

    add-int/2addr v2, v0

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public id()I
    .locals 3

    .line 35
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroidx/emoji2/text/flatbuffer/MetadataItem;->__offset(I)I

    move-result v0

    .local v0, "o":I
    if-eqz v0, :cond_0

    iget-object v1, p0, Landroidx/emoji2/text/flatbuffer/MetadataItem;->bb:Ljava/nio/ByteBuffer;

    iget v2, p0, Landroidx/emoji2/text/flatbuffer/MetadataItem;->bb_pos:I

    add-int/2addr v2, v0

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public sdkAdded()S
    .locals 3

    .line 37
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroidx/emoji2/text/flatbuffer/MetadataItem;->__offset(I)I

    move-result v0

    .local v0, "o":I
    if-eqz v0, :cond_0

    iget-object v1, p0, Landroidx/emoji2/text/flatbuffer/MetadataItem;->bb:Ljava/nio/ByteBuffer;

    iget v2, p0, Landroidx/emoji2/text/flatbuffer/MetadataItem;->bb_pos:I

    add-int/2addr v2, v0

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public width()S
    .locals 3

    .line 39
    const/16 v0, 0xc

    invoke-virtual {p0, v0}, Landroidx/emoji2/text/flatbuffer/MetadataItem;->__offset(I)I

    move-result v0

    .local v0, "o":I
    if-eqz v0, :cond_0

    iget-object v1, p0, Landroidx/emoji2/text/flatbuffer/MetadataItem;->bb:Ljava/nio/ByteBuffer;

    iget v2, p0, Landroidx/emoji2/text/flatbuffer/MetadataItem;->bb_pos:I

    add-int/2addr v2, v0

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method
