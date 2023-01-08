.class public final Landroidx/emoji2/text/flatbuffer/BooleanVector;
.super Landroidx/emoji2/text/flatbuffer/BaseVector;
.source "BooleanVector.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Landroidx/emoji2/text/flatbuffer/BaseVector;-><init>()V

    return-void
.end method


# virtual methods
.method public __assign(ILjava/nio/ByteBuffer;)Landroidx/emoji2/text/flatbuffer/BooleanVector;
    .locals 1
    .param p1, "_vector"    # I
    .param p2, "_bb"    # Ljava/nio/ByteBuffer;

    .line 37
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0, p2}, Landroidx/emoji2/text/flatbuffer/BooleanVector;->__reset(IILjava/nio/ByteBuffer;)V

    return-object p0
.end method

.method public get(I)Z
    .locals 2
    .param p1, "j"    # I

    .line 47
    iget-object v0, p0, Landroidx/emoji2/text/flatbuffer/BooleanVector;->bb:Ljava/nio/ByteBuffer;

    invoke-virtual {p0, p1}, Landroidx/emoji2/text/flatbuffer/BooleanVector;->__element(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
