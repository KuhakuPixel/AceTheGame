.class public Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;
.super Ljava/lang/Object;
.source "FlatBufferBuilder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder$ByteBufferBackedInputStream;,
        Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder$HeapByteBufferFactory;,
        Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder$ByteBufferFactory;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field bb:Ljava/nio/ByteBuffer;

.field bb_factory:Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder$ByteBufferFactory;

.field finished:Z

.field force_defaults:Z

.field minalign:I

.field nested:Z

.field num_vtables:I

.field object_start:I

.field space:I

.field final utf8:Landroidx/emoji2/text/flatbuffer/Utf8;

.field vector_num_elems:I

.field vtable:[I

.field vtable_in_use:I

.field vtables:[I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 34
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 100
    const/16 v0, 0x400

    invoke-direct {p0, v0}, Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;-><init>(I)V

    .line 101
    return-void
.end method

.method public constructor <init>(I)V
    .locals 3
    .param p1, "initial_size"    # I

    .line 93
    sget-object v0, Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder$HeapByteBufferFactory;->INSTANCE:Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder$HeapByteBufferFactory;

    invoke-static {}, Landroidx/emoji2/text/flatbuffer/Utf8;->getDefault()Landroidx/emoji2/text/flatbuffer/Utf8;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {p0, p1, v0, v2, v1}, Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;-><init>(ILandroidx/emoji2/text/flatbuffer/FlatBufferBuilder$ByteBufferFactory;Ljava/nio/ByteBuffer;Landroidx/emoji2/text/flatbuffer/Utf8;)V

    .line 94
    return-void
.end method

.method public constructor <init>(ILandroidx/emoji2/text/flatbuffer/FlatBufferBuilder$ByteBufferFactory;)V
    .locals 2
    .param p1, "initial_size"    # I
    .param p2, "bb_factory"    # Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder$ByteBufferFactory;

    .line 59
    invoke-static {}, Landroidx/emoji2/text/flatbuffer/Utf8;->getDefault()Landroidx/emoji2/text/flatbuffer/Utf8;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v1, v0}, Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;-><init>(ILandroidx/emoji2/text/flatbuffer/FlatBufferBuilder$ByteBufferFactory;Ljava/nio/ByteBuffer;Landroidx/emoji2/text/flatbuffer/Utf8;)V

    .line 60
    return-void
.end method

.method public constructor <init>(ILandroidx/emoji2/text/flatbuffer/FlatBufferBuilder$ByteBufferFactory;Ljava/nio/ByteBuffer;Landroidx/emoji2/text/flatbuffer/Utf8;)V
    .locals 2
    .param p1, "initial_size"    # I
    .param p2, "bb_factory"    # Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder$ByteBufferFactory;
    .param p3, "existing_bb"    # Ljava/nio/ByteBuffer;
    .param p4, "utf8"    # Landroidx/emoji2/text/flatbuffer/Utf8;

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const/4 v0, 0x1

    iput v0, p0, Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;->minalign:I

    .line 39
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;->vtable:[I

    .line 40
    const/4 v0, 0x0

    iput v0, p0, Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;->vtable_in_use:I

    .line 41
    iput-boolean v0, p0, Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;->nested:Z

    .line 42
    iput-boolean v0, p0, Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;->finished:Z

    .line 44
    const/16 v1, 0x10

    new-array v1, v1, [I

    iput-object v1, p0, Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;->vtables:[I

    .line 45
    iput v0, p0, Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;->num_vtables:I

    .line 46
    iput v0, p0, Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;->vector_num_elems:I

    .line 47
    iput-boolean v0, p0, Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;->force_defaults:Z

    .line 72
    if-gtz p1, :cond_0

    .line 73
    const/4 p1, 0x1

    .line 75
    :cond_0
    iput-object p2, p0, Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;->bb_factory:Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder$ByteBufferFactory;

    .line 76
    if-eqz p3, :cond_1

    .line 77
    iput-object p3, p0, Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;->bb:Ljava/nio/ByteBuffer;

    .line 78
    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 79
    iget-object v0, p0, Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;->bb:Ljava/nio/ByteBuffer;

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    goto :goto_0

    .line 81
    :cond_1
    invoke-virtual {p2, p1}, Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder$ByteBufferFactory;->newByteBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;->bb:Ljava/nio/ByteBuffer;

    .line 83
    :goto_0
    iput-object p4, p0, Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;->utf8:Landroidx/emoji2/text/flatbuffer/Utf8;

    .line 84
    iget-object v0, p0, Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;->bb:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    iput v0, p0, Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;->space:I

    .line 85
    return-void
.end method

.method public constructor <init>(Ljava/nio/ByteBuffer;)V
    .locals 1
    .param p1, "existing_bb"    # Ljava/nio/ByteBuffer;

    .line 124
    new-instance v0, Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder$HeapByteBufferFactory;

    invoke-direct {v0}, Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder$HeapByteBufferFactory;-><init>()V

    invoke-direct {p0, p1, v0}, Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;-><init>(Ljava/nio/ByteBuffer;Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder$ByteBufferFactory;)V

    .line 125
    return-void
.end method

.method public constructor <init>(Ljava/nio/ByteBuffer;Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder$ByteBufferFactory;)V
    .locals 2
    .param p1, "existing_bb"    # Ljava/nio/ByteBuffer;
    .param p2, "bb_factory"    # Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder$ByteBufferFactory;

    .line 113
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    invoke-static {}, Landroidx/emoji2/text/flatbuffer/Utf8;->getDefault()Landroidx/emoji2/text/flatbuffer/Utf8;

    move-result-object v1

    invoke-direct {p0, v0, p2, p1, v1}, Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;-><init>(ILandroidx/emoji2/text/flatbuffer/FlatBufferBuilder$ByteBufferFactory;Ljava/nio/ByteBuffer;Landroidx/emoji2/text/flatbuffer/Utf8;)V

    .line 114
    return-void
.end method

.method private dataStart()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 990
    invoke-virtual {p0}, Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;->finished()V

    .line 991
    iget v0, p0, Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;->space:I

    return v0
.end method

.method static growByteBuffer(Ljava/nio/ByteBuffer;Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder$ByteBufferFactory;)Ljava/nio/ByteBuffer;
    .locals 4
    .param p0, "bb"    # Ljava/nio/ByteBuffer;
    .param p1, "bb_factory"    # Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder$ByteBufferFactory;

    .line 239
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    .line 240
    .local v0, "old_buf_size":I
    const/high16 v1, -0x40000000    # -2.0f

    and-int/2addr v1, v0

    if-nez v1, :cond_1

    .line 242
    if-nez v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    shl-int/lit8 v1, v0, 0x1

    .line 243
    .local v1, "new_buf_size":I
    :goto_0
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 244
    invoke-virtual {p1, v1}, Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder$ByteBufferFactory;->newByteBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 245
    .local v2, "nbb":Ljava/nio/ByteBuffer;
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/nio/Buffer;->capacity()I

    move-result v1

    .line 246
    sub-int v3, v1, v0

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 247
    invoke-virtual {v2, p0}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 248
    return-object v2

    .line 241
    .end local v1    # "new_buf_size":I
    .end local v2    # "nbb":Ljava/nio/ByteBuffer;
    :cond_1
    new-instance v1, Ljava/lang/AssertionError;

    const-string v2, "FlatBuffers: cannot grow buffer beyond 2 gigabytes."

    invoke-direct {v1, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method public static isFieldPresent(Landroidx/emoji2/text/flatbuffer/Table;I)Z
    .locals 1
    .param p0, "table"    # Landroidx/emoji2/text/flatbuffer/Table;
    .param p1, "offset"    # I

    .line 210
    invoke-virtual {p0, p1}, Landroidx/emoji2/text/flatbuffer/Table;->__offset(I)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public Nested(I)V
    .locals 2
    .param p1, "obj"    # I

    .line 635
    invoke-virtual {p0}, Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;->offset()I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 637
    return-void

    .line 636
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "FlatBuffers: struct must be serialized inline."

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public addBoolean(IZZ)V
    .locals 1
    .param p1, "o"    # I
    .param p2, "x"    # Z
    .param p3, "d"    # Z

    .line 697
    iget-boolean v0, p0, Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;->force_defaults:Z

    if-nez v0, :cond_0

    if-eq p2, p3, :cond_1

    :cond_0
    invoke-virtual {p0, p2}, Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;->addBoolean(Z)V

    invoke-virtual {p0, p1}, Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;->slot(I)V

    :cond_1
    return-void
.end method

.method public addBoolean(Z)V
    .locals 2
    .param p1, "x"    # Z

    .line 360
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;->prep(II)V

    invoke-virtual {p0, p1}, Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;->putBoolean(Z)V

    return-void
.end method

.method public addByte(B)V
    .locals 2
    .param p1, "x"    # B

    .line 367
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;->prep(II)V

    invoke-virtual {p0, p1}, Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;->putByte(B)V

    return-void
.end method

.method public addByte(IBI)V
    .locals 1
    .param p1, "o"    # I
    .param p2, "x"    # B
    .param p3, "d"    # I

    .line 708
    iget-boolean v0, p0, Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;->force_defaults:Z

    if-nez v0, :cond_0

    if-eq p2, p3, :cond_1

    :cond_0
    invoke-virtual {p0, p2}, Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;->addByte(B)V

    invoke-virtual {p0, p1}, Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;->slot(I)V

    :cond_1
    return-void
.end method

.method public addDouble(D)V
    .locals 2
    .param p1, "x"    # D

    .line 402
    const/16 v0, 0x8

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;->prep(II)V

    invoke-virtual {p0, p1, p2}, Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;->putDouble(D)V

    return-void
.end method

.method public addDouble(IDD)V
    .locals 1
    .param p1, "o"    # I
    .param p2, "x"    # D
    .param p4, "d"    # D

    .line 763
    iget-boolean v0, p0, Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;->force_defaults:Z

    if-nez v0, :cond_0

    cmpl-double v0, p2, p4

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p0, p2, p3}, Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;->addDouble(D)V

    invoke-virtual {p0, p1}, Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;->slot(I)V

    :cond_1
    return-void
.end method

.method public addFloat(F)V
    .locals 2
    .param p1, "x"    # F

    .line 395
    const/4 v0, 0x4

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;->prep(II)V

    invoke-virtual {p0, p1}, Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;->putFloat(F)V

    return-void
.end method

.method public addFloat(IFD)V
    .locals 3
    .param p1, "o"    # I
    .param p2, "x"    # F
    .param p3, "d"    # D

    .line 752
    iget-boolean v0, p0, Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;->force_defaults:Z

    if-nez v0, :cond_0

    float-to-double v0, p2

    cmpl-double v2, v0, p3

    if-eqz v2, :cond_1

    :cond_0
    invoke-virtual {p0, p2}, Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;->addFloat(F)V

    invoke-virtual {p0, p1}, Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;->slot(I)V

    :cond_1
    return-void
.end method

.method public addInt(I)V
    .locals 2
    .param p1, "x"    # I

    .line 381
    const/4 v0, 0x4

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;->prep(II)V

    invoke-virtual {p0, p1}, Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;->putInt(I)V

    return-void
.end method

.method public addInt(III)V
    .locals 1
    .param p1, "o"    # I
    .param p2, "x"    # I
    .param p3, "d"    # I

    .line 730
    iget-boolean v0, p0, Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;->force_defaults:Z

    if-nez v0, :cond_0

    if-eq p2, p3, :cond_1

    :cond_0
    invoke-virtual {p0, p2}, Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;->addInt(I)V

    invoke-virtual {p0, p1}, Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;->slot(I)V

    :cond_1
    return-void
.end method

.method public addLong(IJJ)V
    .locals 1
    .param p1, "o"    # I
    .param p2, "x"    # J
    .param p4, "d"    # J

    .line 741
    iget-boolean v0, p0, Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;->force_defaults:Z

    if-nez v0, :cond_0

    cmp-long v0, p2, p4

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p0, p2, p3}, Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;->addLong(J)V

    invoke-virtual {p0, p1}, Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;->slot(I)V

    :cond_1
    return-void
.end method

.method public addLong(J)V
    .locals 2
    .param p1, "x"    # J

    .line 388
    const/16 v0, 0x8

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;->prep(II)V

    invoke-virtual {p0, p1, p2}, Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;->putLong(J)V

    return-void
.end method

.method public addOffset(I)V
    .locals 2
    .param p1, "off"    # I

    .line 410
    const/4 v0, 0x4

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;->prep(II)V

    .line 411
    invoke-virtual {p0}, Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;->offset()I

    move-result v1

    if-gt p1, v1, :cond_0

    .line 412
    invoke-virtual {p0}, Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;->offset()I

    move-result v1

    sub-int/2addr v1, p1

    add-int/2addr v1, v0

    .line 413
    .end local p1    # "off":I
    .local v1, "off":I
    invoke-virtual {p0, v1}, Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;->putInt(I)V

    .line 414
    return-void

    .line 411
    .end local v1    # "off":I
    .restart local p1    # "off":I
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public addOffset(III)V
    .locals 1
    .param p1, "o"    # I
    .param p2, "x"    # I
    .param p3, "d"    # I

    .line 774
    iget-boolean v0, p0, Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;->force_defaults:Z

    if-nez v0, :cond_0

    if-eq p2, p3, :cond_1

    :cond_0
    invoke-virtual {p0, p2}, Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;->addOffset(I)V

    invoke-virtual {p0, p1}, Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;->slot(I)V

    :cond_1
    return-void
.end method

.method public addShort(ISI)V
    .locals 1
    .param p1, "o"    # I
    .param p2, "x"    # S
    .param p3, "d"    # I

    .line 719
    iget-boolean v0, p0, Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;->force_defaults:Z

    if-nez v0, :cond_0

    if-eq p2, p3, :cond_1

    :cond_0
    invoke-virtual {p0, p2}, Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;->addShort(S)V

    invoke-virtual {p0, p1}, Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;->slot(I)V

    :cond_1
    return-void
.end method

.method public addShort(S)V
    .locals 2
    .param p1, "x"    # S

    .line 374
    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;->prep(II)V

    invoke-virtual {p0, p1}, Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;->putShort(S)V

    return-void
.end method

.method public addStruct(III)V
    .locals 0
    .param p1, "voffset"    # I
    .param p2, "x"    # I
    .param p3, "d"    # I

    .line 784
    if-eq p2, p3, :cond_0

    .line 785
    invoke-virtual {p0, p2}, Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;->Nested(I)V

    .line 786
    invoke-virtual {p0, p1}, Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;->slot(I)V

    .line 788
    :cond_0
    return-void
.end method

.method public clear()V
    .locals 3

    .line 217
    iget-object v0, p0, Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;->bb:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    iput v0, p0, Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;->space:I

    .line 218
    iget-object v0, p0, Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;->bb:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 219
    const/4 v0, 0x1

    iput v0, p0, Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;->minalign:I

    .line 220
    :goto_0
    iget v0, p0, Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;->vtable_in_use:I

    const/4 v1, 0x0

    if-lez v0, :cond_0

    iget-object v2, p0, Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;->vtable:[I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;->vtable_in_use:I

    aput v1, v2, v0

    goto :goto_0

    .line 221
    :cond_0
    iput v1, p0, Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;->vtable_in_use:I

    .line 222
    iput-boolean v1, p0, Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;->nested:Z

    .line 223
    iput-boolean v1, p0, Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;->finished:Z

    .line 224
    iput v1, p0, Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;->object_start:I

    .line 225
    iput v1, p0, Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;->num_vtables:I

    .line 226
    iput v1, p0, Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;->vector_num_elems:I

    .line 227
    return-void
.end method

.method public createByteVector(Ljava/nio/ByteBuffer;)I
    .locals 3
    .param p1, "byteBuffer"    # Ljava/nio/ByteBuffer;

    .line 600
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    .line 601
    .local v0, "length":I
    const/4 v1, 0x1

    invoke-virtual {p0, v1, v0, v1}, Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;->startVector(III)V

    .line 602
    iget-object v1, p0, Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;->bb:Ljava/nio/ByteBuffer;

    iget v2, p0, Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;->space:I

    sub-int/2addr v2, v0

    iput v2, p0, Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;->space:I

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 603
    iget-object v1, p0, Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;->bb:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, p1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 604
    invoke-virtual {p0}, Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;->endVector()I

    move-result v1

    return v1
.end method

.method public createByteVector([B)I
    .locals 3
    .param p1, "arr"    # [B

    .line 568
    array-length v0, p1

    .line 569
    .local v0, "length":I
    const/4 v1, 0x1

    invoke-virtual {p0, v1, v0, v1}, Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;->startVector(III)V

    .line 570
    iget-object v1, p0, Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;->bb:Ljava/nio/ByteBuffer;

    iget v2, p0, Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;->space:I

    sub-int/2addr v2, v0

    iput v2, p0, Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;->space:I

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 571
    iget-object v1, p0, Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;->bb:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, p1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 572
    invoke-virtual {p0}, Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;->endVector()I

    move-result v1

    return v1
.end method

.method public createByteVector([BII)I
    .locals 2
    .param p1, "arr"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .line 584
    const/4 v0, 0x1

    invoke-virtual {p0, v0, p3, v0}, Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;->startVector(III)V

    .line 585
    iget-object v0, p0, Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;->bb:Ljava/nio/ByteBuffer;

    iget v1, p0, Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;->space:I

    sub-int/2addr v1, p3

    iput v1, p0, Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;->space:I

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 586
    iget-object v0, p0, Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;->bb:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1, p2, p3}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 587
    invoke-virtual {p0}, Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;->endVector()I

    move-result v0

    return v0
.end method

.method public createSortedVectorOfTables(Landroidx/emoji2/text/flatbuffer/Table;[I)I
    .locals 1
    .param p2, "offsets"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroidx/emoji2/text/flatbuffer/Table;",
            ">(TT;[I)I"
        }
    .end annotation

    .line 526
    .local p1, "obj":Landroidx/emoji2/text/flatbuffer/Table;, "TT;"
    iget-object v0, p0, Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;->bb:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, p2, v0}, Landroidx/emoji2/text/flatbuffer/Table;->sortTables([ILjava/nio/ByteBuffer;)V

    .line 527
    invoke-virtual {p0, p2}, Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;->createVectorOfTables([I)I

    move-result v0

    return v0
.end method

.method public createString(Ljava/lang/CharSequence;)I
    .locals 3
    .param p1, "s"    # Ljava/lang/CharSequence;

    .line 538
    iget-object v0, p0, Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;->utf8:Landroidx/emoji2/text/flatbuffer/Utf8;

    invoke-virtual {v0, p1}, Landroidx/emoji2/text/flatbuffer/Utf8;->encodedLength(Ljava/lang/CharSequence;)I

    move-result v0

    .line 539
    .local v0, "length":I
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;->addByte(B)V

    .line 540
    const/4 v1, 0x1

    invoke-virtual {p0, v1, v0, v1}, Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;->startVector(III)V

    .line 541
    iget-object v1, p0, Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;->bb:Ljava/nio/ByteBuffer;

    iget v2, p0, Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;->space:I

    sub-int/2addr v2, v0

    iput v2, p0, Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;->space:I

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 542
    iget-object v1, p0, Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;->utf8:Landroidx/emoji2/text/flatbuffer/Utf8;

    iget-object v2, p0, Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;->bb:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, p1, v2}, Landroidx/emoji2/text/flatbuffer/Utf8;->encodeUtf8(Ljava/lang/CharSequence;Ljava/nio/ByteBuffer;)V

    .line 543
    invoke-virtual {p0}, Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;->endVector()I

    move-result v1

    return v1
.end method

.method public createString(Ljava/nio/ByteBuffer;)I
    .locals 3
    .param p1, "s"    # Ljava/nio/ByteBuffer;

    .line 553
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    .line 554
    .local v0, "length":I
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;->addByte(B)V

    .line 555
    const/4 v1, 0x1

    invoke-virtual {p0, v1, v0, v1}, Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;->startVector(III)V

    .line 556
    iget-object v1, p0, Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;->bb:Ljava/nio/ByteBuffer;

    iget v2, p0, Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;->space:I

    sub-int/2addr v2, v0

    iput v2, p0, Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;->space:I

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 557
    iget-object v1, p0, Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;->bb:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, p1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 558
    invoke-virtual {p0}, Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;->endVector()I

    move-result v1

    return v1
.end method

.method public createUnintializedVector(III)Ljava/nio/ByteBuffer;
    .locals 3
    .param p1, "elem_size"    # I
    .param p2, "num_elems"    # I
    .param p3, "alignment"    # I

    .line 494
    mul-int v0, p1, p2

    .line 495
    .local v0, "length":I
    invoke-virtual {p0, p1, p2, p3}, Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;->startVector(III)V

    .line 497
    iget-object v1, p0, Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;->bb:Ljava/nio/ByteBuffer;

    iget v2, p0, Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;->space:I

    sub-int/2addr v2, v0

    iput v2, p0, Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;->space:I

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 500
    iget-object v1, p0, Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;->bb:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v1

    sget-object v2, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 501
    .local v1, "copy":Ljava/nio/ByteBuffer;
    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 502
    return-object v1
.end method

.method public createVectorOfTables([I)I
    .locals 2
    .param p1, "offsets"    # [I

    .line 512
    invoke-virtual {p0}, Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;->notNested()V

    .line 513
    array-length v0, p1

    const/4 v1, 0x4

    invoke-virtual {p0, v1, v0, v1}, Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;->startVector(III)V

    .line 514
    array-length v0, p1

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    aget v1, p1, v0

    invoke-virtual {p0, v1}, Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;->addOffset(I)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 515
    .end local v0    # "i":I
    :cond_0
    invoke-virtual {p0}, Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;->endVector()I

    move-result v0

    return v0
.end method

.method public dataBuffer()Ljava/nio/ByteBuffer;
    .locals 1

    .line 976
    invoke-virtual {p0}, Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;->finished()V

    .line 977
    iget-object v0, p0, Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;->bb:Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method public endTable()I
    .locals 13

    .line 807
    iget-object v0, p0, Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;->vtable:[I

    if-eqz v0, :cond_9

    iget-boolean v0, p0, Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;->nested:Z

    if-eqz v0, :cond_9

    .line 809
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;->addInt(I)V

    .line 810
    invoke-virtual {p0}, Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;->offset()I

    move-result v1

    .line 812
    .local v1, "vtableloc":I
    iget v2, p0, Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;->vtable_in_use:I

    add-int/lit8 v2, v2, -0x1

    .line 814
    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_0

    iget-object v3, p0, Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;->vtable:[I

    aget v3, v3, v2

    if-nez v3, :cond_0

    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 815
    :cond_0
    add-int/lit8 v3, v2, 0x1

    .line 816
    .local v3, "trimmed_size":I
    :goto_1
    if-ltz v2, :cond_2

    .line 818
    iget-object v4, p0, Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;->vtable:[I

    aget v4, v4, v2

    if-eqz v4, :cond_1

    sub-int v4, v1, v4

    goto :goto_2

    :cond_1
    const/4 v4, 0x0

    :goto_2
    int-to-short v4, v4

    .line 819
    .local v4, "off":S
    invoke-virtual {p0, v4}, Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;->addShort(S)V

    .line 816
    .end local v4    # "off":S
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 822
    :cond_2
    const/4 v4, 0x2

    .line 823
    .local v4, "standard_fields":I
    iget v5, p0, Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;->object_start:I

    sub-int v5, v1, v5

    int-to-short v5, v5

    invoke-virtual {p0, v5}, Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;->addShort(S)V

    .line 824
    add-int/lit8 v5, v3, 0x2

    mul-int/lit8 v5, v5, 0x2

    int-to-short v5, v5

    invoke-virtual {p0, v5}, Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;->addShort(S)V

    .line 827
    const/4 v5, 0x0

    .line 829
    .local v5, "existing_vtable":I
    const/4 v2, 0x0

    :goto_3
    iget v6, p0, Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;->num_vtables:I

    if-ge v2, v6, :cond_6

    .line 830
    iget-object v6, p0, Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;->bb:Ljava/nio/ByteBuffer;

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v6

    iget-object v7, p0, Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;->vtables:[I

    aget v7, v7, v2

    sub-int/2addr v6, v7

    .line 831
    .local v6, "vt1":I
    iget v7, p0, Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;->space:I

    .line 832
    .local v7, "vt2":I
    iget-object v8, p0, Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;->bb:Ljava/nio/ByteBuffer;

    invoke-virtual {v8, v6}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result v8

    .line 833
    .local v8, "len":S
    iget-object v9, p0, Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;->bb:Ljava/nio/ByteBuffer;

    invoke-virtual {v9, v7}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result v9

    if-ne v8, v9, :cond_5

    .line 834
    const/4 v9, 0x2

    .local v9, "j":I
    :goto_4
    if-ge v9, v8, :cond_4

    .line 835
    iget-object v10, p0, Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;->bb:Ljava/nio/ByteBuffer;

    add-int v11, v6, v9

    invoke-virtual {v10, v11}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result v10

    iget-object v11, p0, Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;->bb:Ljava/nio/ByteBuffer;

    add-int v12, v7, v9

    invoke-virtual {v11, v12}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result v11

    if-eq v10, v11, :cond_3

    .line 836
    goto :goto_5

    .line 834
    :cond_3
    add-int/lit8 v9, v9, 0x2

    goto :goto_4

    .line 839
    .end local v9    # "j":I
    :cond_4
    iget-object v9, p0, Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;->vtables:[I

    aget v5, v9, v2

    .line 840
    goto :goto_6

    .line 829
    .end local v6    # "vt1":I
    .end local v7    # "vt2":I
    .end local v8    # "len":S
    :cond_5
    :goto_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 844
    :cond_6
    :goto_6
    if-eqz v5, :cond_7

    .line 847
    iget-object v6, p0, Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;->bb:Ljava/nio/ByteBuffer;

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v6

    sub-int/2addr v6, v1

    iput v6, p0, Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;->space:I

    .line 849
    iget-object v7, p0, Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;->bb:Ljava/nio/ByteBuffer;

    sub-int v8, v5, v1

    invoke-virtual {v7, v6, v8}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    goto :goto_7

    .line 853
    :cond_7
    iget v6, p0, Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;->num_vtables:I

    iget-object v7, p0, Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;->vtables:[I

    array-length v8, v7

    if-ne v6, v8, :cond_8

    mul-int/lit8 v6, v6, 0x2

    invoke-static {v7, v6}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v6

    iput-object v6, p0, Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;->vtables:[I

    .line 854
    :cond_8
    iget-object v6, p0, Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;->vtables:[I

    iget v7, p0, Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;->num_vtables:I

    add-int/lit8 v8, v7, 0x1

    iput v8, p0, Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;->num_vtables:I

    invoke-virtual {p0}, Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;->offset()I

    move-result v8

    aput v8, v6, v7

    .line 856
    iget-object v6, p0, Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;->bb:Ljava/nio/ByteBuffer;

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v7

    sub-int/2addr v7, v1

    invoke-virtual {p0}, Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;->offset()I

    move-result v8

    sub-int/2addr v8, v1

    invoke-virtual {v6, v7, v8}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    .line 859
    :goto_7
    iput-boolean v0, p0, Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;->nested:Z

    .line 860
    return v1

    .line 808
    .end local v1    # "vtableloc":I
    .end local v2    # "i":I
    .end local v3    # "trimmed_size":I
    .end local v4    # "standard_fields":I
    .end local v5    # "existing_vtable":I
    :cond_9
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "FlatBuffers: endTable called without startTable"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    goto :goto_9

    :goto_8
    throw v0

    :goto_9
    goto :goto_8
.end method

.method public endVector()I
    .locals 2

    .line 475
    iget-boolean v0, p0, Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;->nested:Z

    if-eqz v0, :cond_0

    .line 477
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;->nested:Z

    .line 478
    iget v0, p0, Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;->vector_num_elems:I

    invoke-virtual {p0, v0}, Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;->putInt(I)V

    .line 479
    invoke-virtual {p0}, Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;->offset()I

    move-result v0

    return v0

    .line 476
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "FlatBuffers: endVector called without startVector"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public finish(I)V
    .locals 1
    .param p1, "root_table"    # I

    .line 902
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;->finish(IZ)V

    .line 903
    return-void
.end method

.method public finish(ILjava/lang/String;)V
    .locals 1
    .param p1, "root_table"    # I
    .param p2, "file_identifier"    # Ljava/lang/String;

    .line 941
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;->finish(ILjava/lang/String;Z)V

    .line 942
    return-void
.end method

.method protected finish(ILjava/lang/String;Z)V
    .locals 3
    .param p1, "root_table"    # I
    .param p2, "file_identifier"    # Ljava/lang/String;
    .param p3, "size_prefix"    # Z

    .line 923
    iget v0, p0, Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;->minalign:I

    const/4 v1, 0x4

    if-eqz p3, :cond_0

    const/4 v2, 0x4

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    add-int/lit8 v2, v2, 0x8

    invoke-virtual {p0, v0, v2}, Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;->prep(II)V

    .line 924
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-ne v0, v1, :cond_2

    .line 927
    const/4 v0, 0x3

    .local v0, "i":I
    :goto_1
    if-ltz v0, :cond_1

    .line 928
    invoke-virtual {p2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    int-to-byte v1, v1

    invoke-virtual {p0, v1}, Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;->addByte(B)V

    .line 927
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 930
    .end local v0    # "i":I
    :cond_1
    invoke-virtual {p0, p1, p3}, Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;->finish(IZ)V

    .line 931
    return-void

    .line 925
    :cond_2
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "FlatBuffers: file identifier must be length 4"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    goto :goto_3

    :goto_2
    throw v0

    :goto_3
    goto :goto_2
.end method

.method protected finish(IZ)V
    .locals 3
    .param p1, "root_table"    # I
    .param p2, "size_prefix"    # Z

    .line 887
    iget v0, p0, Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;->minalign:I

    const/4 v1, 0x4

    if-eqz p2, :cond_0

    const/4 v2, 0x4

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    add-int/2addr v2, v1

    invoke-virtual {p0, v0, v2}, Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;->prep(II)V

    .line 888
    invoke-virtual {p0, p1}, Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;->addOffset(I)V

    .line 889
    if-eqz p2, :cond_1

    .line 890
    iget-object v0, p0, Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;->bb:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    iget v1, p0, Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;->space:I

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;->addInt(I)V

    .line 892
    :cond_1
    iget-object v0, p0, Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;->bb:Ljava/nio/ByteBuffer;

    iget v1, p0, Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;->space:I

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 893
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;->finished:Z

    .line 894
    return-void
.end method

.method public finishSizePrefixed(I)V
    .locals 1
    .param p1, "root_table"    # I

    .line 911
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;->finish(IZ)V

    .line 912
    return-void
.end method

.method public finishSizePrefixed(ILjava/lang/String;)V
    .locals 1
    .param p1, "root_table"    # I
    .param p2, "file_identifier"    # Ljava/lang/String;

    .line 952
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;->finish(ILjava/lang/String;Z)V

    .line 953
    return-void
.end method

.method public finished()V
    .locals 2

    .line 612
    iget-boolean v0, p0, Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;->finished:Z

    if-eqz v0, :cond_0

    .line 616
    return-void

    .line 613
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "FlatBuffers: you can only access the serialized buffer after it has been finished by FlatBufferBuilder.finish()."

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public forceDefaults(Z)Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;
    .locals 0
    .param p1, "forceDefaults"    # Z

    .line 964
    iput-boolean p1, p0, Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;->force_defaults:Z

    .line 965
    return-object p0
.end method

.method public init(Ljava/nio/ByteBuffer;Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder$ByteBufferFactory;)Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;
    .locals 2
    .param p1, "existing_bb"    # Ljava/nio/ByteBuffer;
    .param p2, "bb_factory"    # Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder$ByteBufferFactory;

    .line 138
    iput-object p2, p0, Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;->bb_factory:Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder$ByteBufferFactory;

    .line 139
    iput-object p1, p0, Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;->bb:Ljava/nio/ByteBuffer;

    .line 140
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 141
    iget-object v0, p0, Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;->bb:Ljava/nio/ByteBuffer;

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 142
    const/4 v0, 0x1

    iput v0, p0, Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;->minalign:I

    .line 143
    iget-object v0, p0, Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;->bb:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    iput v0, p0, Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;->space:I

    .line 144
    const/4 v0, 0x0

    iput v0, p0, Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;->vtable_in_use:I

    .line 145
    iput-boolean v0, p0, Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;->nested:Z

    .line 146
    iput-boolean v0, p0, Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;->finished:Z

    .line 147
    iput v0, p0, Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;->object_start:I

    .line 148
    iput v0, p0, Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;->num_vtables:I

    .line 149
    iput v0, p0, Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;->vector_num_elems:I

    .line 150
    return-object p0
.end method

.method public notNested()V
    .locals 2

    .line 623
    iget-boolean v0, p0, Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;->nested:Z

    if-nez v0, :cond_0

    .line 625
    return-void

    .line 624
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "FlatBuffers: object serialization must not be nested."

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public offset()I
    .locals 2

    .line 257
    iget-object v0, p0, Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;->bb:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    iget v1, p0, Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;->space:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public pad(I)V
    .locals 4
    .param p1, "byte_size"    # I

    .line 266
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p1, :cond_0

    iget-object v1, p0, Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;->bb:Ljava/nio/ByteBuffer;

    iget v2, p0, Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;->space:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;->space:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 267
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method public prep(II)V
    .locals 5
    .param p1, "size"    # I
    .param p2, "additional_bytes"    # I

    .line 281
    iget v0, p0, Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;->minalign:I

    if-le p1, v0, :cond_0

    iput p1, p0, Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;->minalign:I

    .line 284
    :cond_0
    iget-object v0, p0, Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;->bb:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    iget v1, p0, Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;->space:I

    sub-int/2addr v0, v1

    add-int/2addr v0, p2

    xor-int/lit8 v0, v0, -0x1

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, p1, -0x1

    and-int/2addr v0, v1

    .line 286
    .local v0, "align_size":I
    :goto_0
    iget v1, p0, Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;->space:I

    add-int v2, v0, p1

    add-int/2addr v2, p2

    if-ge v1, v2, :cond_2

    .line 287
    iget-object v1, p0, Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;->bb:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v1

    .line 288
    .local v1, "old_buf_size":I
    iget-object v2, p0, Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;->bb:Ljava/nio/ByteBuffer;

    .line 289
    .local v2, "old":Ljava/nio/ByteBuffer;
    iget-object v3, p0, Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;->bb_factory:Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder$ByteBufferFactory;

    invoke-static {v2, v3}, Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;->growByteBuffer(Ljava/nio/ByteBuffer;Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder$ByteBufferFactory;)Ljava/nio/ByteBuffer;

    move-result-object v3

    iput-object v3, p0, Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;->bb:Ljava/nio/ByteBuffer;

    .line 290
    if-eq v2, v3, :cond_1

    .line 291
    iget-object v3, p0, Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;->bb_factory:Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder$ByteBufferFactory;

    invoke-virtual {v3, v2}, Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder$ByteBufferFactory;->releaseByteBuffer(Ljava/nio/ByteBuffer;)V

    .line 293
    :cond_1
    iget v3, p0, Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;->space:I

    iget-object v4, p0, Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;->bb:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v4

    sub-int/2addr v4, v1

    add-int/2addr v3, v4

    iput v3, p0, Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;->space:I

    .line 294
    .end local v1    # "old_buf_size":I
    .end local v2    # "old":Ljava/nio/ByteBuffer;
    goto :goto_0

    .line 295
    :cond_2
    invoke-virtual {p0, v0}, Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;->pad(I)V

    .line 296
    return-void
.end method

.method public putBoolean(Z)V
    .locals 3
    .param p1, "x"    # Z

    .line 304
    iget-object v0, p0, Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;->bb:Ljava/nio/ByteBuffer;

    iget v1, p0, Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;->space:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;->space:I

    int-to-byte v2, p1

    invoke-virtual {v0, v1, v2}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    return-void
.end method

.method public putByte(B)V
    .locals 2
    .param p1, "x"    # B

    .line 312
    iget-object v0, p0, Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;->bb:Ljava/nio/ByteBuffer;

    iget v1, p0, Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;->space:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;->space:I

    invoke-virtual {v0, v1, p1}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    return-void
.end method

.method public putDouble(D)V
    .locals 2
    .param p1, "x"    # D

    .line 352
    iget-object v0, p0, Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;->bb:Ljava/nio/ByteBuffer;

    iget v1, p0, Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;->space:I

    add-int/lit8 v1, v1, -0x8

    iput v1, p0, Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;->space:I

    invoke-virtual {v0, v1, p1, p2}, Ljava/nio/ByteBuffer;->putDouble(ID)Ljava/nio/ByteBuffer;

    return-void
.end method

.method public putFloat(F)V
    .locals 2
    .param p1, "x"    # F

    .line 344
    iget-object v0, p0, Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;->bb:Ljava/nio/ByteBuffer;

    iget v1, p0, Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;->space:I

    add-int/lit8 v1, v1, -0x4

    iput v1, p0, Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;->space:I

    invoke-virtual {v0, v1, p1}, Ljava/nio/ByteBuffer;->putFloat(IF)Ljava/nio/ByteBuffer;

    return-void
.end method

.method public putInt(I)V
    .locals 2
    .param p1, "x"    # I

    .line 328
    iget-object v0, p0, Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;->bb:Ljava/nio/ByteBuffer;

    iget v1, p0, Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;->space:I

    add-int/lit8 v1, v1, -0x4

    iput v1, p0, Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;->space:I

    invoke-virtual {v0, v1, p1}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    return-void
.end method

.method public putLong(J)V
    .locals 2
    .param p1, "x"    # J

    .line 336
    iget-object v0, p0, Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;->bb:Ljava/nio/ByteBuffer;

    iget v1, p0, Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;->space:I

    add-int/lit8 v1, v1, -0x8

    iput v1, p0, Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;->space:I

    invoke-virtual {v0, v1, p1, p2}, Ljava/nio/ByteBuffer;->putLong(IJ)Ljava/nio/ByteBuffer;

    return-void
.end method

.method public putShort(S)V
    .locals 2
    .param p1, "x"    # S

    .line 320
    iget-object v0, p0, Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;->bb:Ljava/nio/ByteBuffer;

    iget v1, p0, Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;->space:I

    add-int/lit8 v1, v1, -0x2

    iput v1, p0, Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;->space:I

    invoke-virtual {v0, v1, p1}, Ljava/nio/ByteBuffer;->putShort(IS)Ljava/nio/ByteBuffer;

    return-void
.end method

.method public required(II)V
    .locals 6
    .param p1, "table"    # I
    .param p2, "field"    # I

    .line 871
    iget-object v0, p0, Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;->bb:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    sub-int/2addr v0, p1

    .line 872
    .local v0, "table_start":I
    iget-object v1, p0, Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;->bb:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v1

    sub-int v1, v0, v1

    .line 873
    .local v1, "vtable_start":I
    iget-object v2, p0, Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;->bb:Ljava/nio/ByteBuffer;

    add-int v3, v1, p2

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 875
    .local v2, "ok":Z
    :goto_0
    if-eqz v2, :cond_1

    .line 877
    return-void

    .line 876
    :cond_1
    new-instance v3, Ljava/lang/AssertionError;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "FlatBuffers: field "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " must be set"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v3
.end method

.method public sizedByteArray()[B
    .locals 3

    .line 1017
    iget v0, p0, Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;->space:I

    iget-object v1, p0, Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;->bb:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v1

    iget v2, p0, Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;->space:I

    sub-int/2addr v1, v2

    invoke-virtual {p0, v0, v1}, Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;->sizedByteArray(II)[B

    move-result-object v0

    return-object v0
.end method

.method public sizedByteArray(II)[B
    .locals 2
    .param p1, "start"    # I
    .param p2, "length"    # I

    .line 1004
    invoke-virtual {p0}, Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;->finished()V

    .line 1005
    new-array v0, p2, [B

    .line 1006
    .local v0, "array":[B
    iget-object v1, p0, Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;->bb:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, p1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 1007
    iget-object v1, p0, Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;->bb:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 1008
    return-object v0
.end method

.method public sizedInputStream()Ljava/io/InputStream;
    .locals 2

    .line 1027
    invoke-virtual {p0}, Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;->finished()V

    .line 1028
    iget-object v0, p0, Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;->bb:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 1029
    .local v0, "duplicate":Ljava/nio/ByteBuffer;
    iget v1, p0, Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;->space:I

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 1030
    iget-object v1, p0, Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;->bb:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 1031
    new-instance v1, Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder$ByteBufferBackedInputStream;

    invoke-direct {v1, v0}, Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder$ByteBufferBackedInputStream;-><init>(Ljava/nio/ByteBuffer;)V

    return-object v1
.end method

.method public slot(I)V
    .locals 2
    .param p1, "voffset"    # I

    .line 797
    iget-object v0, p0, Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;->vtable:[I

    invoke-virtual {p0}, Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;->offset()I

    move-result v1

    aput v1, v0, p1

    .line 798
    return-void
.end method

.method public startTable(I)V
    .locals 2
    .param p1, "numfields"    # I

    .line 680
    invoke-virtual {p0}, Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;->notNested()V

    .line 681
    iget-object v0, p0, Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;->vtable:[I

    if-eqz v0, :cond_0

    array-length v0, v0

    if-ge v0, p1, :cond_1

    :cond_0
    new-array v0, p1, [I

    iput-object v0, p0, Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;->vtable:[I

    .line 682
    :cond_1
    iput p1, p0, Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;->vtable_in_use:I

    .line 683
    iget-object v0, p0, Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;->vtable:[I

    const/4 v1, 0x0

    invoke-static {v0, v1, p1, v1}, Ljava/util/Arrays;->fill([IIII)V

    .line 684
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;->nested:Z

    .line 685
    invoke-virtual {p0}, Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;->offset()I

    move-result v0

    iput v0, p0, Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;->object_start:I

    .line 686
    return-void
.end method

.method public startVector(III)V
    .locals 2
    .param p1, "elem_size"    # I
    .param p2, "num_elems"    # I
    .param p3, "alignment"    # I

    .line 460
    invoke-virtual {p0}, Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;->notNested()V

    .line 461
    iput p2, p0, Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;->vector_num_elems:I

    .line 462
    mul-int v0, p1, p2

    const/4 v1, 0x4

    invoke-virtual {p0, v1, v0}, Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;->prep(II)V

    .line 463
    mul-int v0, p1, p2

    invoke-virtual {p0, p3, v0}, Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;->prep(II)V

    .line 464
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;->nested:Z

    .line 465
    return-void
.end method
