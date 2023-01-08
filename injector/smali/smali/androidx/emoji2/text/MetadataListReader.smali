.class Landroidx/emoji2/text/MetadataListReader;
.super Ljava/lang/Object;
.source "MetadataListReader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/emoji2/text/MetadataListReader$ByteBufferReader;,
        Landroidx/emoji2/text/MetadataListReader$InputStreamOpenTypeReader;,
        Landroidx/emoji2/text/MetadataListReader$OpenTypeReader;,
        Landroidx/emoji2/text/MetadataListReader$OffsetInfo;
    }
.end annotation


# static fields
.field private static final EMJI_TAG:I = 0x456d6a69

.field private static final EMJI_TAG_DEPRECATED:I = 0x656d6a69

.field private static final META_TABLE_NAME:I = 0x6d657461


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 346
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 347
    return-void
.end method

.method private static findOffsetInfo(Landroidx/emoji2/text/MetadataListReader$OpenTypeReader;)Landroidx/emoji2/text/MetadataListReader$OffsetInfo;
    .locals 14
    .param p0, "reader"    # Landroidx/emoji2/text/MetadataListReader$OpenTypeReader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 120
    const/4 v0, 0x4

    invoke-interface {p0, v0}, Landroidx/emoji2/text/MetadataListReader$OpenTypeReader;->skip(I)V

    .line 122
    invoke-interface {p0}, Landroidx/emoji2/text/MetadataListReader$OpenTypeReader;->readUnsignedShort()I

    move-result v1

    .line 123
    .local v1, "tableCount":I
    const-string v2, "Cannot read metadata."

    const/16 v3, 0x64

    if-gt v1, v3, :cond_5

    .line 128
    const/4 v3, 0x6

    invoke-interface {p0, v3}, Landroidx/emoji2/text/MetadataListReader$OpenTypeReader;->skip(I)V

    .line 130
    const-wide/16 v3, -0x1

    .line 131
    .local v3, "metaOffset":J
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    if-ge v5, v1, :cond_1

    .line 132
    invoke-interface {p0}, Landroidx/emoji2/text/MetadataListReader$OpenTypeReader;->readTag()I

    move-result v6

    .line 134
    .local v6, "tag":I
    invoke-interface {p0, v0}, Landroidx/emoji2/text/MetadataListReader$OpenTypeReader;->skip(I)V

    .line 135
    invoke-interface {p0}, Landroidx/emoji2/text/MetadataListReader$OpenTypeReader;->readUnsignedInt()J

    move-result-wide v7

    .line 137
    .local v7, "offset":J
    invoke-interface {p0, v0}, Landroidx/emoji2/text/MetadataListReader$OpenTypeReader;->skip(I)V

    .line 138
    const v9, 0x6d657461

    if-ne v9, v6, :cond_0

    .line 139
    move-wide v3, v7

    .line 140
    goto :goto_1

    .line 131
    .end local v6    # "tag":I
    .end local v7    # "offset":J
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 144
    .end local v5    # "i":I
    :cond_1
    :goto_1
    const-wide/16 v5, -0x1

    cmp-long v0, v3, v5

    if-eqz v0, :cond_4

    .line 146
    invoke-interface {p0}, Landroidx/emoji2/text/MetadataListReader$OpenTypeReader;->getPosition()J

    move-result-wide v5

    sub-long v5, v3, v5

    long-to-int v0, v5

    invoke-interface {p0, v0}, Landroidx/emoji2/text/MetadataListReader$OpenTypeReader;->skip(I)V

    .line 148
    const/16 v0, 0xc

    invoke-interface {p0, v0}, Landroidx/emoji2/text/MetadataListReader$OpenTypeReader;->skip(I)V

    .line 150
    invoke-interface {p0}, Landroidx/emoji2/text/MetadataListReader$OpenTypeReader;->readUnsignedInt()J

    move-result-wide v5

    .line 151
    .local v5, "mapsCount":J
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2
    int-to-long v7, v0

    cmp-long v9, v7, v5

    if-gez v9, :cond_4

    .line 152
    invoke-interface {p0}, Landroidx/emoji2/text/MetadataListReader$OpenTypeReader;->readTag()I

    move-result v7

    .line 153
    .local v7, "tag":I
    invoke-interface {p0}, Landroidx/emoji2/text/MetadataListReader$OpenTypeReader;->readUnsignedInt()J

    move-result-wide v8

    .line 154
    .local v8, "dataOffset":J
    invoke-interface {p0}, Landroidx/emoji2/text/MetadataListReader$OpenTypeReader;->readUnsignedInt()J

    move-result-wide v10

    .line 155
    .local v10, "dataLength":J
    const v12, 0x456d6a69

    if-eq v12, v7, :cond_3

    const v12, 0x656d6a69

    if-ne v12, v7, :cond_2

    goto :goto_3

    .line 151
    .end local v7    # "tag":I
    .end local v8    # "dataOffset":J
    .end local v10    # "dataLength":J
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 156
    .restart local v7    # "tag":I
    .restart local v8    # "dataOffset":J
    .restart local v10    # "dataLength":J
    :cond_3
    :goto_3
    new-instance v2, Landroidx/emoji2/text/MetadataListReader$OffsetInfo;

    add-long v12, v8, v3

    invoke-direct {v2, v12, v13, v10, v11}, Landroidx/emoji2/text/MetadataListReader$OffsetInfo;-><init>(JJ)V

    return-object v2

    .line 161
    .end local v0    # "i":I
    .end local v5    # "mapsCount":J
    .end local v7    # "tag":I
    .end local v8    # "dataOffset":J
    .end local v10    # "dataLength":J
    :cond_4
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 125
    .end local v3    # "metaOffset":J
    :cond_5
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    goto :goto_5

    :goto_4
    throw v0

    :goto_5
    goto :goto_4
.end method

.method static read(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroidx/emoji2/text/flatbuffer/MetadataList;
    .locals 3
    .param p0, "assetManager"    # Landroid/content/res/AssetManager;
    .param p1, "assetPath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 106
    invoke-virtual {p0, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 107
    .local v0, "inputStream":Ljava/io/InputStream;
    :try_start_0
    invoke-static {v0}, Landroidx/emoji2/text/MetadataListReader;->read(Ljava/io/InputStream;)Landroidx/emoji2/text/flatbuffer/MetadataList;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 108
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 107
    :cond_0
    return-object v1

    .line 106
    :catchall_0
    move-exception v1

    if-eqz v0, :cond_1

    :try_start_1
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v2

    invoke-static {v1, v2}, Landroidx/core/content/pm/ShortcutXmlParser$$ExternalSyntheticBackport0;->m(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    throw v1
.end method

.method static read(Ljava/io/InputStream;)Landroidx/emoji2/text/flatbuffer/MetadataList;
    .locals 9
    .param p0, "inputStream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 69
    new-instance v0, Landroidx/emoji2/text/MetadataListReader$InputStreamOpenTypeReader;

    invoke-direct {v0, p0}, Landroidx/emoji2/text/MetadataListReader$InputStreamOpenTypeReader;-><init>(Ljava/io/InputStream;)V

    .line 70
    .local v0, "openTypeReader":Landroidx/emoji2/text/MetadataListReader$OpenTypeReader;
    invoke-static {v0}, Landroidx/emoji2/text/MetadataListReader;->findOffsetInfo(Landroidx/emoji2/text/MetadataListReader$OpenTypeReader;)Landroidx/emoji2/text/MetadataListReader$OffsetInfo;

    move-result-object v1

    .line 72
    .local v1, "offsetInfo":Landroidx/emoji2/text/MetadataListReader$OffsetInfo;
    invoke-virtual {v1}, Landroidx/emoji2/text/MetadataListReader$OffsetInfo;->getStartOffset()J

    move-result-wide v2

    invoke-interface {v0}, Landroidx/emoji2/text/MetadataListReader$OpenTypeReader;->getPosition()J

    move-result-wide v4

    sub-long/2addr v2, v4

    long-to-int v3, v2

    invoke-interface {v0, v3}, Landroidx/emoji2/text/MetadataListReader$OpenTypeReader;->skip(I)V

    .line 74
    invoke-virtual {v1}, Landroidx/emoji2/text/MetadataListReader$OffsetInfo;->getLength()J

    move-result-wide v2

    long-to-int v3, v2

    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 75
    .local v2, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/io/InputStream;->read([B)I

    move-result v3

    .line 76
    .local v3, "numRead":I
    int-to-long v4, v3

    invoke-virtual {v1}, Landroidx/emoji2/text/MetadataListReader$OffsetInfo;->getLength()J

    move-result-wide v6

    cmp-long v8, v4, v6

    if-nez v8, :cond_0

    .line 80
    invoke-static {v2}, Landroidx/emoji2/text/flatbuffer/MetadataList;->getRootAsMetadataList(Ljava/nio/ByteBuffer;)Landroidx/emoji2/text/flatbuffer/MetadataList;

    move-result-object v4

    return-object v4

    .line 77
    :cond_0
    new-instance v4, Ljava/io/IOException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Needed "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Landroidx/emoji2/text/MetadataListReader$OffsetInfo;->getLength()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " bytes, got "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method static read(Ljava/nio/ByteBuffer;)Landroidx/emoji2/text/flatbuffer/MetadataList;
    .locals 5
    .param p0, "byteBuffer"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 89
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 90
    .local v0, "newBuffer":Ljava/nio/ByteBuffer;
    new-instance v1, Landroidx/emoji2/text/MetadataListReader$ByteBufferReader;

    invoke-direct {v1, v0}, Landroidx/emoji2/text/MetadataListReader$ByteBufferReader;-><init>(Ljava/nio/ByteBuffer;)V

    .line 91
    .local v1, "reader":Landroidx/emoji2/text/MetadataListReader$OpenTypeReader;
    invoke-static {v1}, Landroidx/emoji2/text/MetadataListReader;->findOffsetInfo(Landroidx/emoji2/text/MetadataListReader$OpenTypeReader;)Landroidx/emoji2/text/MetadataListReader$OffsetInfo;

    move-result-object v2

    .line 93
    .local v2, "offsetInfo":Landroidx/emoji2/text/MetadataListReader$OffsetInfo;
    invoke-virtual {v2}, Landroidx/emoji2/text/MetadataListReader$OffsetInfo;->getStartOffset()J

    move-result-wide v3

    long-to-int v4, v3

    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 94
    invoke-static {v0}, Landroidx/emoji2/text/flatbuffer/MetadataList;->getRootAsMetadataList(Ljava/nio/ByteBuffer;)Landroidx/emoji2/text/flatbuffer/MetadataList;

    move-result-object v3

    return-object v3
.end method

.method static toUnsignedInt(I)J
    .locals 4
    .param p0, "value"    # I

    .line 192
    int-to-long v0, p0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    return-wide v0
.end method

.method static toUnsignedShort(S)I
    .locals 1
    .param p0, "value"    # S

    .line 187
    const v0, 0xffff

    and-int/2addr v0, p0

    return v0
.end method
