.class public Landroidx/emoji2/text/flatbuffer/ByteBufferUtil;
.super Ljava/lang/Object;
.source "ByteBufferUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getSizePrefix(Ljava/nio/ByteBuffer;)I
    .locals 1
    .param p0, "bb"    # Ljava/nio/ByteBuffer;

    .line 39
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v0

    return v0
.end method

.method public static removeSizePrefix(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;
    .locals 2
    .param p0, "bb"    # Ljava/nio/ByteBuffer;

    .line 51
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 52
    .local v0, "s":Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    add-int/lit8 v1, v1, 0x4

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 53
    return-object v0
.end method
