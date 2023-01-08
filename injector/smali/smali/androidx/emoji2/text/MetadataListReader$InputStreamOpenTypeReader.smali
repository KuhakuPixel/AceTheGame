.class Landroidx/emoji2/text/MetadataListReader$InputStreamOpenTypeReader;
.super Ljava/lang/Object;
.source "MetadataListReader.java"

# interfaces
.implements Landroidx/emoji2/text/MetadataListReader$OpenTypeReader;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/emoji2/text/MetadataListReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "InputStreamOpenTypeReader"
.end annotation


# instance fields
.field private final mByteArray:[B

.field private final mByteBuffer:Ljava/nio/ByteBuffer;

.field private final mInputStream:Ljava/io/InputStream;

.field private mPosition:J


# direct methods
.method constructor <init>(Ljava/io/InputStream;)V
    .locals 2
    .param p1, "inputStream"    # Ljava/io/InputStream;

    .line 249
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 241
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroidx/emoji2/text/MetadataListReader$InputStreamOpenTypeReader;->mPosition:J

    .line 250
    iput-object p1, p0, Landroidx/emoji2/text/MetadataListReader$InputStreamOpenTypeReader;->mInputStream:Ljava/io/InputStream;

    .line 251
    const/4 v0, 0x4

    new-array v0, v0, [B

    iput-object v0, p0, Landroidx/emoji2/text/MetadataListReader$InputStreamOpenTypeReader;->mByteArray:[B

    .line 252
    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Landroidx/emoji2/text/MetadataListReader$InputStreamOpenTypeReader;->mByteBuffer:Ljava/nio/ByteBuffer;

    .line 253
    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 254
    return-void
.end method

.method private read(I)V
    .locals 4
    .param p1, "numOfBytes"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 296
    iget-object v0, p0, Landroidx/emoji2/text/MetadataListReader$InputStreamOpenTypeReader;->mInputStream:Ljava/io/InputStream;

    iget-object v1, p0, Landroidx/emoji2/text/MetadataListReader$InputStreamOpenTypeReader;->mByteArray:[B

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p1}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    if-ne v0, p1, :cond_0

    .line 299
    iget-wide v0, p0, Landroidx/emoji2/text/MetadataListReader$InputStreamOpenTypeReader;->mPosition:J

    int-to-long v2, p1

    add-long/2addr v0, v2

    iput-wide v0, p0, Landroidx/emoji2/text/MetadataListReader$InputStreamOpenTypeReader;->mPosition:J

    .line 300
    return-void

    .line 297
    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "read failed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public getPosition()J
    .locals 2

    .line 291
    iget-wide v0, p0, Landroidx/emoji2/text/MetadataListReader$InputStreamOpenTypeReader;->mPosition:J

    return-wide v0
.end method

.method public readTag()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 272
    iget-object v0, p0, Landroidx/emoji2/text/MetadataListReader$InputStreamOpenTypeReader;->mByteBuffer:Ljava/nio/ByteBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 273
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Landroidx/emoji2/text/MetadataListReader$InputStreamOpenTypeReader;->read(I)V

    .line 274
    iget-object v0, p0, Landroidx/emoji2/text/MetadataListReader$InputStreamOpenTypeReader;->mByteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    return v0
.end method

.method public readUnsignedInt()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 265
    iget-object v0, p0, Landroidx/emoji2/text/MetadataListReader$InputStreamOpenTypeReader;->mByteBuffer:Ljava/nio/ByteBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 266
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Landroidx/emoji2/text/MetadataListReader$InputStreamOpenTypeReader;->read(I)V

    .line 267
    iget-object v0, p0, Landroidx/emoji2/text/MetadataListReader$InputStreamOpenTypeReader;->mByteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    invoke-static {v0}, Landroidx/emoji2/text/MetadataListReader;->toUnsignedInt(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public readUnsignedShort()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 258
    iget-object v0, p0, Landroidx/emoji2/text/MetadataListReader$InputStreamOpenTypeReader;->mByteBuffer:Ljava/nio/ByteBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 259
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Landroidx/emoji2/text/MetadataListReader$InputStreamOpenTypeReader;->read(I)V

    .line 260
    iget-object v0, p0, Landroidx/emoji2/text/MetadataListReader$InputStreamOpenTypeReader;->mByteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v0

    invoke-static {v0}, Landroidx/emoji2/text/MetadataListReader;->toUnsignedShort(S)I

    move-result v0

    return v0
.end method

.method public skip(I)V
    .locals 6
    .param p1, "numOfBytes"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 279
    :goto_0
    if-lez p1, :cond_1

    .line 280
    iget-object v0, p0, Landroidx/emoji2/text/MetadataListReader$InputStreamOpenTypeReader;->mInputStream:Ljava/io/InputStream;

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v0

    long-to-int v1, v0

    .line 281
    .local v1, "skipped":I
    const/4 v0, 0x1

    if-lt v1, v0, :cond_0

    .line 284
    sub-int/2addr p1, v1

    .line 285
    iget-wide v2, p0, Landroidx/emoji2/text/MetadataListReader$InputStreamOpenTypeReader;->mPosition:J

    int-to-long v4, v1

    add-long/2addr v2, v4

    iput-wide v2, p0, Landroidx/emoji2/text/MetadataListReader$InputStreamOpenTypeReader;->mPosition:J

    .line 286
    .end local v1    # "skipped":I
    goto :goto_0

    .line 282
    .restart local v1    # "skipped":I
    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v2, "Skip didn\'t move at least 1 byte forward"

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 287
    .end local v1    # "skipped":I
    :cond_1
    return-void
.end method
