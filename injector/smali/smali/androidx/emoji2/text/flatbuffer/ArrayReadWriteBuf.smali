.class public Landroidx/emoji2/text/flatbuffer/ArrayReadWriteBuf;
.super Ljava/lang/Object;
.source "ArrayReadWriteBuf.java"

# interfaces
.implements Landroidx/emoji2/text/flatbuffer/ReadWriteBuf;


# instance fields
.field private buffer:[B

.field private writePos:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 20
    const/16 v0, 0xa

    invoke-direct {p0, v0}, Landroidx/emoji2/text/flatbuffer/ArrayReadWriteBuf;-><init>(I)V

    .line 21
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "initialCapacity"    # I

    .line 24
    new-array v0, p1, [B

    invoke-direct {p0, v0}, Landroidx/emoji2/text/flatbuffer/ArrayReadWriteBuf;-><init>([B)V

    .line 25
    return-void
.end method

.method public constructor <init>([B)V
    .locals 1
    .param p1, "buffer"    # [B

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Landroidx/emoji2/text/flatbuffer/ArrayReadWriteBuf;->buffer:[B

    .line 29
    const/4 v0, 0x0

    iput v0, p0, Landroidx/emoji2/text/flatbuffer/ArrayReadWriteBuf;->writePos:I

    .line 30
    return-void
.end method

.method public constructor <init>([BI)V
    .locals 0
    .param p1, "buffer"    # [B
    .param p2, "startPos"    # I

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Landroidx/emoji2/text/flatbuffer/ArrayReadWriteBuf;->buffer:[B

    .line 34
    iput p2, p0, Landroidx/emoji2/text/flatbuffer/ArrayReadWriteBuf;->writePos:I

    .line 35
    return-void
.end method


# virtual methods
.method public data()[B
    .locals 1

    .line 89
    iget-object v0, p0, Landroidx/emoji2/text/flatbuffer/ArrayReadWriteBuf;->buffer:[B

    return-object v0
.end method

.method public get(I)B
    .locals 1
    .param p1, "index"    # I

    .line 44
    iget-object v0, p0, Landroidx/emoji2/text/flatbuffer/ArrayReadWriteBuf;->buffer:[B

    aget-byte v0, v0, p1

    return v0
.end method

.method public getBoolean(I)Z
    .locals 1
    .param p1, "index"    # I

    .line 39
    iget-object v0, p0, Landroidx/emoji2/text/flatbuffer/ArrayReadWriteBuf;->buffer:[B

    aget-byte v0, v0, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getDouble(I)D
    .locals 2
    .param p1, "index"    # I

    .line 79
    invoke-virtual {p0, p1}, Landroidx/emoji2/text/flatbuffer/ArrayReadWriteBuf;->getLong(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    return-wide v0
.end method

.method public getFloat(I)F
    .locals 1
    .param p1, "index"    # I

    .line 74
    invoke-virtual {p0, p1}, Landroidx/emoji2/text/flatbuffer/ArrayReadWriteBuf;->getInt(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    return v0
.end method

.method public getInt(I)I
    .locals 3
    .param p1, "index"    # I

    .line 54
    iget-object v0, p0, Landroidx/emoji2/text/flatbuffer/ArrayReadWriteBuf;->buffer:[B

    add-int/lit8 v1, p1, 0x3

    aget-byte v1, v0, v1

    shl-int/lit8 v1, v1, 0x18

    add-int/lit8 v2, p1, 0x2

    aget-byte v2, v0, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x10

    or-int/2addr v1, v2

    add-int/lit8 v2, p1, 0x1

    aget-byte v2, v0, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v1, v2

    aget-byte v0, v0, p1

    and-int/lit16 v0, v0, 0xff

    or-int/2addr v0, v1

    return v0
.end method

.method public getLong(I)J
    .locals 8
    .param p1, "index"    # I

    .line 62
    iget-object v0, p0, Landroidx/emoji2/text/flatbuffer/ArrayReadWriteBuf;->buffer:[B

    add-int/lit8 v1, p1, 0x1

    .end local p1    # "index":I
    .local v1, "index":I
    aget-byte p1, v0, p1

    int-to-long v2, p1

    const-wide/16 v4, 0xff

    and-long/2addr v2, v4

    add-int/lit8 p1, v1, 0x1

    .end local v1    # "index":I
    .restart local p1    # "index":I
    aget-byte v1, v0, v1

    int-to-long v6, v1

    and-long/2addr v6, v4

    const/16 v1, 0x8

    shl-long/2addr v6, v1

    or-long/2addr v2, v6

    add-int/lit8 v1, p1, 0x1

    .end local p1    # "index":I
    .restart local v1    # "index":I
    aget-byte p1, v0, p1

    int-to-long v6, p1

    and-long/2addr v6, v4

    const/16 p1, 0x10

    shl-long/2addr v6, p1

    or-long/2addr v2, v6

    add-int/lit8 p1, v1, 0x1

    .end local v1    # "index":I
    .restart local p1    # "index":I
    aget-byte v1, v0, v1

    int-to-long v6, v1

    and-long/2addr v6, v4

    const/16 v1, 0x18

    shl-long/2addr v6, v1

    or-long/2addr v2, v6

    add-int/lit8 v1, p1, 0x1

    .end local p1    # "index":I
    .restart local v1    # "index":I
    aget-byte p1, v0, p1

    int-to-long v6, p1

    and-long/2addr v6, v4

    const/16 p1, 0x20

    shl-long/2addr v6, p1

    or-long/2addr v2, v6

    add-int/lit8 p1, v1, 0x1

    .end local v1    # "index":I
    .restart local p1    # "index":I
    aget-byte v1, v0, v1

    int-to-long v6, v1

    and-long/2addr v6, v4

    const/16 v1, 0x28

    shl-long/2addr v6, v1

    or-long/2addr v2, v6

    add-int/lit8 v1, p1, 0x1

    .end local p1    # "index":I
    .restart local v1    # "index":I
    aget-byte p1, v0, p1

    int-to-long v6, p1

    and-long/2addr v4, v6

    const/16 p1, 0x30

    shl-long/2addr v4, p1

    or-long/2addr v2, v4

    aget-byte p1, v0, v1

    int-to-long v4, p1

    const/16 p1, 0x38

    shl-long/2addr v4, p1

    or-long/2addr v2, v4

    return-wide v2
.end method

.method public getShort(I)S
    .locals 2
    .param p1, "index"    # I

    .line 49
    iget-object v0, p0, Landroidx/emoji2/text/flatbuffer/ArrayReadWriteBuf;->buffer:[B

    add-int/lit8 v1, p1, 0x1

    aget-byte v1, v0, v1

    shl-int/lit8 v1, v1, 0x8

    aget-byte v0, v0, p1

    and-int/lit16 v0, v0, 0xff

    or-int/2addr v0, v1

    int-to-short v0, v0

    return v0
.end method

.method public getString(II)Ljava/lang/String;
    .locals 1
    .param p1, "start"    # I
    .param p2, "size"    # I

    .line 84
    iget-object v0, p0, Landroidx/emoji2/text/flatbuffer/ArrayReadWriteBuf;->buffer:[B

    invoke-static {v0, p1, p2}, Landroidx/emoji2/text/flatbuffer/Utf8Safe;->decodeUtf8Array([BII)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public limit()I
    .locals 1

    .line 222
    iget v0, p0, Landroidx/emoji2/text/flatbuffer/ArrayReadWriteBuf;->writePos:I

    return v0
.end method

.method public put(B)V
    .locals 1
    .param p1, "value"    # B

    .line 107
    iget v0, p0, Landroidx/emoji2/text/flatbuffer/ArrayReadWriteBuf;->writePos:I

    invoke-virtual {p0, v0, p1}, Landroidx/emoji2/text/flatbuffer/ArrayReadWriteBuf;->set(IB)V

    .line 108
    iget v0, p0, Landroidx/emoji2/text/flatbuffer/ArrayReadWriteBuf;->writePos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroidx/emoji2/text/flatbuffer/ArrayReadWriteBuf;->writePos:I

    .line 109
    return-void
.end method

.method public put([BII)V
    .locals 1
    .param p1, "value"    # [B
    .param p2, "start"    # I
    .param p3, "length"    # I

    .line 101
    iget v0, p0, Landroidx/emoji2/text/flatbuffer/ArrayReadWriteBuf;->writePos:I

    invoke-virtual {p0, v0, p1, p2, p3}, Landroidx/emoji2/text/flatbuffer/ArrayReadWriteBuf;->set(I[BII)V

    .line 102
    iget v0, p0, Landroidx/emoji2/text/flatbuffer/ArrayReadWriteBuf;->writePos:I

    add-int/2addr v0, p3

    iput v0, p0, Landroidx/emoji2/text/flatbuffer/ArrayReadWriteBuf;->writePos:I

    .line 103
    return-void
.end method

.method public putBoolean(Z)V
    .locals 1
    .param p1, "value"    # Z

    .line 95
    iget v0, p0, Landroidx/emoji2/text/flatbuffer/ArrayReadWriteBuf;->writePos:I

    invoke-virtual {p0, v0, p1}, Landroidx/emoji2/text/flatbuffer/ArrayReadWriteBuf;->setBoolean(IZ)V

    .line 96
    iget v0, p0, Landroidx/emoji2/text/flatbuffer/ArrayReadWriteBuf;->writePos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroidx/emoji2/text/flatbuffer/ArrayReadWriteBuf;->writePos:I

    .line 97
    return-void
.end method

.method public putDouble(D)V
    .locals 1
    .param p1, "value"    # D

    .line 137
    iget v0, p0, Landroidx/emoji2/text/flatbuffer/ArrayReadWriteBuf;->writePos:I

    invoke-virtual {p0, v0, p1, p2}, Landroidx/emoji2/text/flatbuffer/ArrayReadWriteBuf;->setDouble(ID)V

    .line 138
    iget v0, p0, Landroidx/emoji2/text/flatbuffer/ArrayReadWriteBuf;->writePos:I

    add-int/lit8 v0, v0, 0x8

    iput v0, p0, Landroidx/emoji2/text/flatbuffer/ArrayReadWriteBuf;->writePos:I

    .line 139
    return-void
.end method

.method public putFloat(F)V
    .locals 1
    .param p1, "value"    # F

    .line 131
    iget v0, p0, Landroidx/emoji2/text/flatbuffer/ArrayReadWriteBuf;->writePos:I

    invoke-virtual {p0, v0, p1}, Landroidx/emoji2/text/flatbuffer/ArrayReadWriteBuf;->setFloat(IF)V

    .line 132
    iget v0, p0, Landroidx/emoji2/text/flatbuffer/ArrayReadWriteBuf;->writePos:I

    add-int/lit8 v0, v0, 0x4

    iput v0, p0, Landroidx/emoji2/text/flatbuffer/ArrayReadWriteBuf;->writePos:I

    .line 133
    return-void
.end method

.method public putInt(I)V
    .locals 1
    .param p1, "value"    # I

    .line 119
    iget v0, p0, Landroidx/emoji2/text/flatbuffer/ArrayReadWriteBuf;->writePos:I

    invoke-virtual {p0, v0, p1}, Landroidx/emoji2/text/flatbuffer/ArrayReadWriteBuf;->setInt(II)V

    .line 120
    iget v0, p0, Landroidx/emoji2/text/flatbuffer/ArrayReadWriteBuf;->writePos:I

    add-int/lit8 v0, v0, 0x4

    iput v0, p0, Landroidx/emoji2/text/flatbuffer/ArrayReadWriteBuf;->writePos:I

    .line 121
    return-void
.end method

.method public putLong(J)V
    .locals 1
    .param p1, "value"    # J

    .line 125
    iget v0, p0, Landroidx/emoji2/text/flatbuffer/ArrayReadWriteBuf;->writePos:I

    invoke-virtual {p0, v0, p1, p2}, Landroidx/emoji2/text/flatbuffer/ArrayReadWriteBuf;->setLong(IJ)V

    .line 126
    iget v0, p0, Landroidx/emoji2/text/flatbuffer/ArrayReadWriteBuf;->writePos:I

    add-int/lit8 v0, v0, 0x8

    iput v0, p0, Landroidx/emoji2/text/flatbuffer/ArrayReadWriteBuf;->writePos:I

    .line 127
    return-void
.end method

.method public putShort(S)V
    .locals 1
    .param p1, "value"    # S

    .line 113
    iget v0, p0, Landroidx/emoji2/text/flatbuffer/ArrayReadWriteBuf;->writePos:I

    invoke-virtual {p0, v0, p1}, Landroidx/emoji2/text/flatbuffer/ArrayReadWriteBuf;->setShort(IS)V

    .line 114
    iget v0, p0, Landroidx/emoji2/text/flatbuffer/ArrayReadWriteBuf;->writePos:I

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Landroidx/emoji2/text/flatbuffer/ArrayReadWriteBuf;->writePos:I

    .line 115
    return-void
.end method

.method public requestCapacity(I)Z
    .locals 4
    .param p1, "capacity"    # I

    .line 232
    iget-object v0, p0, Landroidx/emoji2/text/flatbuffer/ArrayReadWriteBuf;->buffer:[B

    array-length v1, v0

    const/4 v2, 0x1

    if-le v1, p1, :cond_0

    .line 233
    return v2

    .line 236
    :cond_0
    array-length v1, v0

    .line 237
    .local v1, "oldCapacity":I
    shr-int/lit8 v3, v1, 0x1

    add-int/2addr v3, v1

    .line 238
    .local v3, "newCapacity":I
    invoke-static {v0, v3}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    iput-object v0, p0, Landroidx/emoji2/text/flatbuffer/ArrayReadWriteBuf;->buffer:[B

    .line 239
    return v2
.end method

.method public set(IB)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # B

    .line 148
    add-int/lit8 v0, p1, 0x1

    invoke-virtual {p0, v0}, Landroidx/emoji2/text/flatbuffer/ArrayReadWriteBuf;->requestCapacity(I)Z

    .line 149
    iget-object v0, p0, Landroidx/emoji2/text/flatbuffer/ArrayReadWriteBuf;->buffer:[B

    aput-byte p2, v0, p1

    .line 150
    return-void
.end method

.method public set(I[BII)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "toCopy"    # [B
    .param p3, "start"    # I
    .param p4, "length"    # I

    .line 154
    sub-int v0, p4, p3

    add-int/2addr v0, p1

    invoke-virtual {p0, v0}, Landroidx/emoji2/text/flatbuffer/ArrayReadWriteBuf;->requestCapacity(I)Z

    .line 155
    iget-object v0, p0, Landroidx/emoji2/text/flatbuffer/ArrayReadWriteBuf;->buffer:[B

    invoke-static {p2, p3, v0, p1, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 156
    return-void
.end method

.method public setBoolean(IZ)V
    .locals 0
    .param p1, "index"    # I
    .param p2, "value"    # Z

    .line 143
    invoke-virtual {p0, p1, p2}, Landroidx/emoji2/text/flatbuffer/ArrayReadWriteBuf;->set(IB)V

    .line 144
    return-void
.end method

.method public setDouble(ID)V
    .locals 6
    .param p1, "index"    # I
    .param p2, "value"    # D

    .line 205
    add-int/lit8 v0, p1, 0x8

    invoke-virtual {p0, v0}, Landroidx/emoji2/text/flatbuffer/ArrayReadWriteBuf;->requestCapacity(I)Z

    .line 207
    invoke-static {p2, p3}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v0

    .line 208
    .local v0, "lValue":J
    long-to-int v2, v0

    .line 209
    .local v2, "i":I
    iget-object v3, p0, Landroidx/emoji2/text/flatbuffer/ArrayReadWriteBuf;->buffer:[B

    add-int/lit8 v4, p1, 0x1

    .end local p1    # "index":I
    .local v4, "index":I
    and-int/lit16 v5, v2, 0xff

    int-to-byte v5, v5

    aput-byte v5, v3, p1

    .line 210
    add-int/lit8 p1, v4, 0x1

    .end local v4    # "index":I
    .restart local p1    # "index":I
    shr-int/lit8 v5, v2, 0x8

    and-int/lit16 v5, v5, 0xff

    int-to-byte v5, v5

    aput-byte v5, v3, v4

    .line 211
    add-int/lit8 v4, p1, 0x1

    .end local p1    # "index":I
    .restart local v4    # "index":I
    shr-int/lit8 v5, v2, 0x10

    and-int/lit16 v5, v5, 0xff

    int-to-byte v5, v5

    aput-byte v5, v3, p1

    .line 212
    add-int/lit8 p1, v4, 0x1

    .end local v4    # "index":I
    .restart local p1    # "index":I
    shr-int/lit8 v5, v2, 0x18

    and-int/lit16 v5, v5, 0xff

    int-to-byte v5, v5

    aput-byte v5, v3, v4

    .line 213
    const/16 v4, 0x20

    shr-long v4, v0, v4

    long-to-int v2, v4

    .line 214
    add-int/lit8 v4, p1, 0x1

    .end local p1    # "index":I
    .restart local v4    # "index":I
    and-int/lit16 v5, v2, 0xff

    int-to-byte v5, v5

    aput-byte v5, v3, p1

    .line 215
    add-int/lit8 p1, v4, 0x1

    .end local v4    # "index":I
    .restart local p1    # "index":I
    shr-int/lit8 v5, v2, 0x8

    and-int/lit16 v5, v5, 0xff

    int-to-byte v5, v5

    aput-byte v5, v3, v4

    .line 216
    add-int/lit8 v4, p1, 0x1

    .end local p1    # "index":I
    .restart local v4    # "index":I
    shr-int/lit8 v5, v2, 0x10

    and-int/lit16 v5, v5, 0xff

    int-to-byte v5, v5

    aput-byte v5, v3, p1

    .line 217
    shr-int/lit8 p1, v2, 0x18

    and-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    aput-byte p1, v3, v4

    .line 218
    return-void
.end method

.method public setFloat(IF)V
    .locals 4
    .param p1, "index"    # I
    .param p2, "value"    # F

    .line 194
    add-int/lit8 v0, p1, 0x4

    invoke-virtual {p0, v0}, Landroidx/emoji2/text/flatbuffer/ArrayReadWriteBuf;->requestCapacity(I)Z

    .line 196
    invoke-static {p2}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    .line 197
    .local v0, "iValue":I
    iget-object v1, p0, Landroidx/emoji2/text/flatbuffer/ArrayReadWriteBuf;->buffer:[B

    add-int/lit8 v2, p1, 0x1

    .end local p1    # "index":I
    .local v2, "index":I
    and-int/lit16 v3, v0, 0xff

    int-to-byte v3, v3

    aput-byte v3, v1, p1

    .line 198
    add-int/lit8 p1, v2, 0x1

    .end local v2    # "index":I
    .restart local p1    # "index":I
    shr-int/lit8 v3, v0, 0x8

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    .line 199
    add-int/lit8 v2, p1, 0x1

    .end local p1    # "index":I
    .restart local v2    # "index":I
    shr-int/lit8 v3, v0, 0x10

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v1, p1

    .line 200
    shr-int/lit8 p1, v0, 0x18

    and-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    aput-byte p1, v1, v2

    .line 201
    return-void
.end method

.method public setInt(II)V
    .locals 3
    .param p1, "index"    # I
    .param p2, "value"    # I

    .line 168
    add-int/lit8 v0, p1, 0x4

    invoke-virtual {p0, v0}, Landroidx/emoji2/text/flatbuffer/ArrayReadWriteBuf;->requestCapacity(I)Z

    .line 170
    iget-object v0, p0, Landroidx/emoji2/text/flatbuffer/ArrayReadWriteBuf;->buffer:[B

    add-int/lit8 v1, p1, 0x1

    .end local p1    # "index":I
    .local v1, "index":I
    and-int/lit16 v2, p2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, p1

    .line 171
    add-int/lit8 p1, v1, 0x1

    .end local v1    # "index":I
    .restart local p1    # "index":I
    shr-int/lit8 v2, p2, 0x8

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 172
    add-int/lit8 v1, p1, 0x1

    .end local p1    # "index":I
    .restart local v1    # "index":I
    shr-int/lit8 v2, p2, 0x10

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, p1

    .line 173
    shr-int/lit8 p1, p2, 0x18

    and-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    aput-byte p1, v0, v1

    .line 174
    return-void
.end method

.method public setLong(IJ)V
    .locals 4
    .param p1, "index"    # I
    .param p2, "value"    # J

    .line 178
    add-int/lit8 v0, p1, 0x8

    invoke-virtual {p0, v0}, Landroidx/emoji2/text/flatbuffer/ArrayReadWriteBuf;->requestCapacity(I)Z

    .line 180
    long-to-int v0, p2

    .line 181
    .local v0, "i":I
    iget-object v1, p0, Landroidx/emoji2/text/flatbuffer/ArrayReadWriteBuf;->buffer:[B

    add-int/lit8 v2, p1, 0x1

    .end local p1    # "index":I
    .local v2, "index":I
    and-int/lit16 v3, v0, 0xff

    int-to-byte v3, v3

    aput-byte v3, v1, p1

    .line 182
    add-int/lit8 p1, v2, 0x1

    .end local v2    # "index":I
    .restart local p1    # "index":I
    shr-int/lit8 v3, v0, 0x8

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    .line 183
    add-int/lit8 v2, p1, 0x1

    .end local p1    # "index":I
    .restart local v2    # "index":I
    shr-int/lit8 v3, v0, 0x10

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v1, p1

    .line 184
    add-int/lit8 p1, v2, 0x1

    .end local v2    # "index":I
    .restart local p1    # "index":I
    shr-int/lit8 v3, v0, 0x18

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    .line 185
    const/16 v2, 0x20

    shr-long v2, p2, v2

    long-to-int v0, v2

    .line 186
    add-int/lit8 v2, p1, 0x1

    .end local p1    # "index":I
    .restart local v2    # "index":I
    and-int/lit16 v3, v0, 0xff

    int-to-byte v3, v3

    aput-byte v3, v1, p1

    .line 187
    add-int/lit8 p1, v2, 0x1

    .end local v2    # "index":I
    .restart local p1    # "index":I
    shr-int/lit8 v3, v0, 0x8

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    .line 188
    add-int/lit8 v2, p1, 0x1

    .end local p1    # "index":I
    .restart local v2    # "index":I
    shr-int/lit8 v3, v0, 0x10

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v1, p1

    .line 189
    shr-int/lit8 p1, v0, 0x18

    and-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    aput-byte p1, v1, v2

    .line 190
    return-void
.end method

.method public setShort(IS)V
    .locals 3
    .param p1, "index"    # I
    .param p2, "value"    # S

    .line 160
    add-int/lit8 v0, p1, 0x2

    invoke-virtual {p0, v0}, Landroidx/emoji2/text/flatbuffer/ArrayReadWriteBuf;->requestCapacity(I)Z

    .line 162
    iget-object v0, p0, Landroidx/emoji2/text/flatbuffer/ArrayReadWriteBuf;->buffer:[B

    add-int/lit8 v1, p1, 0x1

    .end local p1    # "index":I
    .local v1, "index":I
    and-int/lit16 v2, p2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, p1

    .line 163
    shr-int/lit8 p1, p2, 0x8

    and-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    aput-byte p1, v0, v1

    .line 164
    return-void
.end method

.method public writePosition()I
    .locals 1

    .line 227
    iget v0, p0, Landroidx/emoji2/text/flatbuffer/ArrayReadWriteBuf;->writePos:I

    return v0
.end method
