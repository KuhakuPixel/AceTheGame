.class public Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder;
.super Ljava/lang/Object;
.source "FlexBuffersBuilder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$Value;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field public static final BUILDER_FLAG_NONE:I = 0x0

.field public static final BUILDER_FLAG_SHARE_ALL:I = 0x7

.field public static final BUILDER_FLAG_SHARE_KEYS:I = 0x1

.field public static final BUILDER_FLAG_SHARE_KEYS_AND_STRINGS:I = 0x3

.field public static final BUILDER_FLAG_SHARE_KEY_VECTORS:I = 0x4

.field public static final BUILDER_FLAG_SHARE_STRINGS:I = 0x2

.field private static final WIDTH_16:I = 0x1

.field private static final WIDTH_32:I = 0x2

.field private static final WIDTH_64:I = 0x3

.field private static final WIDTH_8:I


# instance fields
.field private final bb:Landroidx/emoji2/text/flatbuffer/ReadWriteBuf;

.field private finished:Z

.field private final flags:I

.field private keyComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$Value;",
            ">;"
        }
    .end annotation
.end field

.field private final keyPool:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final stack:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$Value;",
            ">;"
        }
    .end annotation
.end field

.field private final stringPool:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 51
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 126
    const/16 v0, 0x100

    invoke-direct {p0, v0}, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder;-><init>(I)V

    .line 127
    return-void
.end method

.method public constructor <init>(I)V
    .locals 2
    .param p1, "bufSize"    # I

    .line 119
    new-instance v0, Landroidx/emoji2/text/flatbuffer/ArrayReadWriteBuf;

    invoke-direct {v0, p1}, Landroidx/emoji2/text/flatbuffer/ArrayReadWriteBuf;-><init>(I)V

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder;-><init>(Landroidx/emoji2/text/flatbuffer/ReadWriteBuf;I)V

    .line 120
    return-void
.end method

.method public constructor <init>(Landroidx/emoji2/text/flatbuffer/ReadWriteBuf;I)V
    .locals 1
    .param p1, "bb"    # Landroidx/emoji2/text/flatbuffer/ReadWriteBuf;
    .param p2, "flags"    # I

    .line 140
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder;->stack:Ljava/util/ArrayList;

    .line 88
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder;->keyPool:Ljava/util/HashMap;

    .line 89
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder;->stringPool:Ljava/util/HashMap;

    .line 91
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder;->finished:Z

    .line 94
    new-instance v0, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$1;

    invoke-direct {v0, p0}, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$1;-><init>(Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder;)V

    iput-object v0, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder;->keyComparator:Ljava/util/Comparator;

    .line 141
    iput-object p1, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder;->bb:Landroidx/emoji2/text/flatbuffer/ReadWriteBuf;

    .line 142
    iput p2, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder;->flags:I

    .line 143
    return-void
.end method

.method public constructor <init>(Ljava/nio/ByteBuffer;)V
    .locals 1
    .param p1, "bb"    # Ljava/nio/ByteBuffer;

    .line 151
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder;-><init>(Ljava/nio/ByteBuffer;I)V

    .line 152
    return-void
.end method

.method public constructor <init>(Ljava/nio/ByteBuffer;I)V
    .locals 2
    .param p1, "bb"    # Ljava/nio/ByteBuffer;
    .param p2, "flags"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 137
    new-instance v0, Landroidx/emoji2/text/flatbuffer/ArrayReadWriteBuf;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/emoji2/text/flatbuffer/ArrayReadWriteBuf;-><init>([B)V

    invoke-direct {p0, v0, p2}, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder;-><init>(Landroidx/emoji2/text/flatbuffer/ReadWriteBuf;I)V

    .line 138
    return-void
.end method

.method static synthetic access$000(Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder;)Landroidx/emoji2/text/flatbuffer/ReadWriteBuf;
    .locals 1
    .param p0, "x0"    # Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder;

    .line 51
    iget-object v0, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder;->bb:Landroidx/emoji2/text/flatbuffer/ReadWriteBuf;

    return-object v0
.end method

.method private align(I)I
    .locals 4
    .param p1, "alignment"    # I

    .line 392
    const/4 v0, 0x1

    shl-int/2addr v0, p1

    .line 393
    .local v0, "byteWidth":I
    iget-object v1, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder;->bb:Landroidx/emoji2/text/flatbuffer/ReadWriteBuf;

    invoke-interface {v1}, Landroidx/emoji2/text/flatbuffer/ReadWriteBuf;->writePosition()I

    move-result v1

    invoke-static {v1, v0}, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$Value;->access$100(II)I

    move-result v1

    .line 394
    .local v1, "padBytes":I
    :goto_0
    add-int/lit8 v2, v1, -0x1

    .end local v1    # "padBytes":I
    .local v2, "padBytes":I
    if-eqz v1, :cond_0

    .line 395
    iget-object v1, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder;->bb:Landroidx/emoji2/text/flatbuffer/ReadWriteBuf;

    const/4 v3, 0x0

    invoke-interface {v1, v3}, Landroidx/emoji2/text/flatbuffer/ReadWriteBuf;->put(B)V

    move v1, v2

    goto :goto_0

    .line 397
    :cond_0
    return v0
.end method

.method private createKeyVector(II)Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$Value;
    .locals 12
    .param p1, "start"    # I
    .param p2, "length"    # I

    .line 614
    int-to-long v0, p2

    invoke-static {v0, v1}, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder;->widthUInBits(J)I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 615
    .local v0, "bitWidth":I
    const/4 v2, 0x1

    .line 617
    .local v2, "prefixElems":I
    move v3, p1

    .local v3, "i":I
    :goto_0
    iget-object v4, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder;->stack:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_0

    .line 618
    const/4 v5, 0x4

    const/4 v6, 0x0

    iget-object v4, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder;->stack:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$Value;

    iget v4, v4, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$Value;->key:I

    int-to-long v7, v4

    iget-object v4, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder;->bb:Landroidx/emoji2/text/flatbuffer/ReadWriteBuf;

    invoke-interface {v4}, Landroidx/emoji2/text/flatbuffer/ReadWriteBuf;->writePosition()I

    move-result v9

    add-int v10, v3, v2

    invoke-static/range {v5 .. v10}, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$Value;->access$500(IIJII)I

    move-result v4

    .line 619
    .local v4, "elemWidth":I
    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 617
    .end local v4    # "elemWidth":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 622
    .end local v3    # "i":I
    :cond_0
    invoke-direct {p0, v0}, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder;->align(I)I

    move-result v3

    .line 624
    .local v3, "byteWidth":I
    int-to-long v4, p2

    invoke-direct {p0, v4, v5, v3}, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder;->writeInt(JI)V

    .line 626
    iget-object v4, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder;->bb:Landroidx/emoji2/text/flatbuffer/ReadWriteBuf;

    invoke-interface {v4}, Landroidx/emoji2/text/flatbuffer/ReadWriteBuf;->writePosition()I

    move-result v10

    .line 627
    .local v10, "vloc":I
    move v4, p1

    .local v4, "i":I
    :goto_1
    iget-object v5, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder;->stack:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_2

    .line 628
    iget-object v5, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder;->stack:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$Value;

    iget v5, v5, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$Value;->key:I

    .line 629
    .local v5, "pos":I
    const/4 v6, -0x1

    if-eq v5, v6, :cond_1

    .line 630
    iget-object v6, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder;->stack:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$Value;

    iget v6, v6, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$Value;->key:I

    int-to-long v6, v6

    invoke-direct {p0, v6, v7, v3}, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder;->writeOffset(JI)V

    .line 627
    .end local v5    # "pos":I
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 629
    .restart local v5    # "pos":I
    :cond_1
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 633
    .end local v4    # "i":I
    .end local v5    # "pos":I
    :cond_2
    new-instance v11, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$Value;

    const/4 v5, -0x1

    const/4 v4, 0x4

    invoke-static {v4, v1}, Landroidx/emoji2/text/flatbuffer/FlexBuffers;->toTypedVector(II)I

    move-result v6

    int-to-long v8, v10

    move-object v4, v11

    move v7, v0

    invoke-direct/range {v4 .. v9}, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$Value;-><init>(IIIJ)V

    return-object v11
.end method

.method private createVector(IIIZZLandroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$Value;)Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$Value;
    .locals 17
    .param p1, "key"    # I
    .param p2, "start"    # I
    .param p3, "length"    # I
    .param p4, "typed"    # Z
    .param p5, "fixed"    # Z
    .param p6, "keys"    # Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$Value;

    .line 494
    move-object/from16 v0, p0

    move/from16 v1, p3

    move-object/from16 v2, p6

    if-eqz p5, :cond_1

    if-eqz p4, :cond_0

    goto :goto_0

    :cond_0
    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 496
    :cond_1
    :goto_0
    int-to-long v3, v1

    invoke-static {v3, v4}, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder;->widthUInBits(J)I

    move-result v3

    const/4 v4, 0x0

    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 497
    .local v3, "bitWidth":I
    const/4 v5, 0x1

    .line 498
    .local v5, "prefixElems":I
    if-eqz v2, :cond_2

    .line 501
    iget-object v6, v0, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder;->bb:Landroidx/emoji2/text/flatbuffer/ReadWriteBuf;

    invoke-interface {v6}, Landroidx/emoji2/text/flatbuffer/ReadWriteBuf;->writePosition()I

    move-result v6

    invoke-static {v2, v6, v4}, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$Value;->access$200(Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$Value;II)I

    move-result v6

    invoke-static {v3, v6}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 502
    add-int/lit8 v5, v5, 0x2

    .line 504
    :cond_2
    const/4 v6, 0x4

    .line 506
    .local v6, "vectorType":I
    move/from16 v7, p2

    .local v7, "i":I
    :goto_1
    iget-object v8, v0, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder;->stack:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v7, v8, :cond_7

    .line 507
    iget-object v8, v0, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder;->stack:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$Value;

    iget-object v9, v0, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder;->bb:Landroidx/emoji2/text/flatbuffer/ReadWriteBuf;

    invoke-interface {v9}, Landroidx/emoji2/text/flatbuffer/ReadWriteBuf;->writePosition()I

    move-result v9

    add-int v10, v7, v5

    invoke-static {v8, v9, v10}, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$Value;->access$200(Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$Value;II)I

    move-result v8

    .line 508
    .local v8, "elemWidth":I
    invoke-static {v3, v8}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 509
    if-eqz p4, :cond_6

    .line 510
    move/from16 v14, p2

    if-ne v7, v14, :cond_4

    .line 511
    iget-object v9, v0, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder;->stack:Ljava/util/ArrayList;

    invoke-virtual {v9, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$Value;

    iget v6, v9, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$Value;->type:I

    .line 512
    invoke-static {v6}, Landroidx/emoji2/text/flatbuffer/FlexBuffers;->isTypedVectorElementType(I)Z

    move-result v9

    if-eqz v9, :cond_3

    goto :goto_2

    .line 513
    :cond_3
    new-instance v4, Landroidx/emoji2/text/flatbuffer/FlexBuffers$FlexBufferException;

    const-string v9, "TypedVector does not support this element type"

    invoke-direct {v4, v9}, Landroidx/emoji2/text/flatbuffer/FlexBuffers$FlexBufferException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 518
    :cond_4
    iget-object v9, v0, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder;->stack:Ljava/util/ArrayList;

    invoke-virtual {v9, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$Value;

    iget v9, v9, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$Value;->type:I

    if-ne v6, v9, :cond_5

    goto :goto_2

    :cond_5
    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    .line 509
    :cond_6
    move/from16 v14, p2

    .line 506
    .end local v8    # "elemWidth":I
    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_7
    move/from16 v14, p2

    .line 524
    .end local v7    # "i":I
    if-eqz p5, :cond_9

    invoke-static {v6}, Landroidx/emoji2/text/flatbuffer/FlexBuffers;->isTypedVectorElementType(I)Z

    move-result v7

    if-eqz v7, :cond_8

    goto :goto_3

    :cond_8
    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    .line 526
    :cond_9
    :goto_3
    invoke-direct {v0, v3}, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder;->align(I)I

    move-result v7

    .line 528
    .local v7, "byteWidth":I
    if-eqz v2, :cond_a

    .line 529
    iget-wide v8, v2, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$Value;->iValue:J

    invoke-direct {v0, v8, v9, v7}, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder;->writeOffset(JI)V

    .line 530
    const-wide/16 v8, 0x1

    iget v10, v2, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$Value;->minBitWidth:I

    shl-long/2addr v8, v10

    invoke-direct {v0, v8, v9, v7}, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder;->writeInt(JI)V

    .line 532
    :cond_a
    if-nez p5, :cond_b

    .line 533
    int-to-long v8, v1

    invoke-direct {v0, v8, v9, v7}, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder;->writeInt(JI)V

    .line 536
    :cond_b
    iget-object v8, v0, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder;->bb:Landroidx/emoji2/text/flatbuffer/ReadWriteBuf;

    invoke-interface {v8}, Landroidx/emoji2/text/flatbuffer/ReadWriteBuf;->writePosition()I

    move-result v15

    .line 537
    .local v15, "vloc":I
    move/from16 v8, p2

    .local v8, "i":I
    :goto_4
    iget-object v9, v0, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder;->stack:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v8, v9, :cond_c

    .line 538
    iget-object v9, v0, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder;->stack:Ljava/util/ArrayList;

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$Value;

    invoke-direct {v0, v9, v7}, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder;->writeAny(Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$Value;I)V

    .line 537
    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    .line 541
    .end local v8    # "i":I
    :cond_c
    if-nez p4, :cond_d

    .line 542
    move/from16 v8, p2

    .restart local v8    # "i":I
    :goto_5
    iget-object v9, v0, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder;->stack:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v8, v9, :cond_d

    .line 543
    iget-object v9, v0, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder;->bb:Landroidx/emoji2/text/flatbuffer/ReadWriteBuf;

    iget-object v10, v0, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder;->stack:Ljava/util/ArrayList;

    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$Value;

    invoke-static {v10, v3}, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$Value;->access$400(Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$Value;I)B

    move-result v10

    invoke-interface {v9, v10}, Landroidx/emoji2/text/flatbuffer/ReadWriteBuf;->put(B)V

    .line 542
    add-int/lit8 v8, v8, 0x1

    goto :goto_5

    .line 546
    .end local v8    # "i":I
    :cond_d
    new-instance v16, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$Value;

    if-eqz v2, :cond_e

    const/16 v4, 0x9

    const/16 v10, 0x9

    goto :goto_6

    :cond_e
    if-eqz p4, :cond_10

    if-eqz p5, :cond_f

    move v4, v1

    .line 547
    :cond_f
    invoke-static {v6, v4}, Landroidx/emoji2/text/flatbuffer/FlexBuffers;->toTypedVector(II)I

    move-result v4

    move v10, v4

    goto :goto_6

    :cond_10
    const/16 v4, 0xa

    const/16 v10, 0xa

    :goto_6
    int-to-long v12, v15

    move-object/from16 v8, v16

    move/from16 v9, p1

    move v11, v3

    invoke-direct/range {v8 .. v13}, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$Value;-><init>(IIIJ)V

    .line 546
    return-object v16
.end method

.method private putKey(Ljava/lang/String;)I
    .locals 6
    .param p1, "key"    # Ljava/lang/String;

    .line 183
    if-nez p1, :cond_0

    .line 184
    const/4 v0, -0x1

    return v0

    .line 186
    :cond_0
    iget-object v0, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder;->bb:Landroidx/emoji2/text/flatbuffer/ReadWriteBuf;

    invoke-interface {v0}, Landroidx/emoji2/text/flatbuffer/ReadWriteBuf;->writePosition()I

    move-result v0

    .line 187
    .local v0, "pos":I
    iget v1, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder;->flags:I

    and-int/lit8 v1, v1, 0x1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 188
    iget-object v1, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder;->keyPool:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 189
    .local v1, "keyFromPool":Ljava/lang/Integer;
    if-nez v1, :cond_1

    .line 190
    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v3

    .line 191
    .local v3, "keyBytes":[B
    iget-object v4, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder;->bb:Landroidx/emoji2/text/flatbuffer/ReadWriteBuf;

    array-length v5, v3

    invoke-interface {v4, v3, v2, v5}, Landroidx/emoji2/text/flatbuffer/ReadWriteBuf;->put([BII)V

    .line 192
    iget-object v4, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder;->bb:Landroidx/emoji2/text/flatbuffer/ReadWriteBuf;

    invoke-interface {v4, v2}, Landroidx/emoji2/text/flatbuffer/ReadWriteBuf;->put(B)V

    .line 193
    iget-object v2, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder;->keyPool:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, p1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 194
    .end local v3    # "keyBytes":[B
    goto :goto_0

    .line 195
    :cond_1
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 197
    .end local v1    # "keyFromPool":Ljava/lang/Integer;
    :goto_0
    goto :goto_1

    .line 198
    :cond_2
    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    .line 199
    .local v1, "keyBytes":[B
    iget-object v3, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder;->bb:Landroidx/emoji2/text/flatbuffer/ReadWriteBuf;

    array-length v4, v1

    invoke-interface {v3, v1, v2, v4}, Landroidx/emoji2/text/flatbuffer/ReadWriteBuf;->put([BII)V

    .line 200
    iget-object v3, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder;->bb:Landroidx/emoji2/text/flatbuffer/ReadWriteBuf;

    invoke-interface {v3, v2}, Landroidx/emoji2/text/flatbuffer/ReadWriteBuf;->put(B)V

    .line 201
    iget-object v2, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder;->keyPool:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, p1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 203
    .end local v1    # "keyBytes":[B
    :goto_1
    return v0
.end method

.method private putUInt(Ljava/lang/String;J)V
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # J

    .line 279
    invoke-direct {p0, p1}, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder;->putKey(Ljava/lang/String;)I

    move-result v0

    .line 282
    .local v0, "iKey":I
    invoke-static {p2, p3}, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder;->widthUInBits(J)I

    move-result v1

    .line 284
    .local v1, "width":I
    if-nez v1, :cond_0

    .line 285
    long-to-int v2, p2

    invoke-static {v0, v2}, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$Value;->uInt8(II)Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$Value;

    move-result-object v2

    .local v2, "vVal":Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$Value;
    goto :goto_0

    .line 286
    .end local v2    # "vVal":Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$Value;
    :cond_0
    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 287
    long-to-int v2, p2

    invoke-static {v0, v2}, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$Value;->uInt16(II)Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$Value;

    move-result-object v2

    .restart local v2    # "vVal":Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$Value;
    goto :goto_0

    .line 288
    .end local v2    # "vVal":Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$Value;
    :cond_1
    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    .line 289
    long-to-int v2, p2

    invoke-static {v0, v2}, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$Value;->uInt32(II)Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$Value;

    move-result-object v2

    .restart local v2    # "vVal":Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$Value;
    goto :goto_0

    .line 291
    .end local v2    # "vVal":Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$Value;
    :cond_2
    invoke-static {v0, p2, p3}, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$Value;->uInt64(IJ)Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$Value;

    move-result-object v2

    .line 293
    .restart local v2    # "vVal":Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$Value;
    :goto_0
    iget-object v3, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder;->stack:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 294
    return-void
.end method

.method private putUInt64(Ljava/lang/String;J)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # J

    .line 275
    iget-object v0, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder;->stack:Ljava/util/ArrayList;

    invoke-direct {p0, p1}, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder;->putKey(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1, p2, p3}, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$Value;->uInt64(IJ)Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$Value;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 276
    return-void
.end method

.method static widthUInBits(J)I
    .locals 4
    .param p0, "len"    # J

    .line 372
    const/4 v0, -0x1

    invoke-static {v0}, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Unsigned;->byteToUnsignedInt(B)I

    move-result v1

    int-to-long v1, v1

    cmp-long v3, p0, v1

    if-gtz v3, :cond_0

    const/4 v0, 0x0

    return v0

    .line 373
    :cond_0
    invoke-static {v0}, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Unsigned;->shortToUnsignedInt(S)I

    move-result v1

    int-to-long v1, v1

    cmp-long v3, p0, v1

    if-gtz v3, :cond_1

    const/4 v0, 0x1

    return v0

    .line 374
    :cond_1
    invoke-static {v0}, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Unsigned;->intToUnsignedLong(I)J

    move-result-wide v0

    cmp-long v2, p0, v0

    if-gtz v2, :cond_2

    const/4 v0, 0x2

    return v0

    .line 375
    :cond_2
    const/4 v0, 0x3

    return v0
.end method

.method private writeAny(Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$Value;I)V
    .locals 2
    .param p1, "val"    # Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$Value;
    .param p2, "byteWidth"    # I

    .line 558
    iget v0, p1, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$Value;->type:I

    sparse-switch v0, :sswitch_data_0

    .line 569
    iget-wide v0, p1, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$Value;->iValue:J

    invoke-direct {p0, v0, v1, p2}, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder;->writeOffset(JI)V

    goto :goto_0

    .line 566
    :sswitch_0
    iget-wide v0, p1, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$Value;->dValue:D

    invoke-direct {p0, v0, v1, p2}, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder;->writeDouble(DI)V

    .line 567
    goto :goto_0

    .line 563
    :sswitch_1
    iget-wide v0, p1, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$Value;->iValue:J

    invoke-direct {p0, v0, v1, p2}, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder;->writeInt(JI)V

    .line 564
    nop

    .line 572
    :goto_0
    return-void

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0x1 -> :sswitch_1
        0x2 -> :sswitch_1
        0x3 -> :sswitch_0
        0x1a -> :sswitch_1
    .end sparse-switch
.end method

.method private writeBlob(I[BIZ)Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$Value;
    .locals 6
    .param p1, "key"    # I
    .param p2, "blob"    # [B
    .param p3, "type"    # I
    .param p4, "trailing"    # Z

    .line 379
    array-length v0, p2

    int-to-long v0, v0

    invoke-static {v0, v1}, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder;->widthUInBits(J)I

    move-result v0

    .line 380
    .local v0, "bitWidth":I
    invoke-direct {p0, v0}, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder;->align(I)I

    move-result v1

    .line 381
    .local v1, "byteWidth":I
    array-length v2, p2

    int-to-long v2, v2

    invoke-direct {p0, v2, v3, v1}, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder;->writeInt(JI)V

    .line 382
    iget-object v2, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder;->bb:Landroidx/emoji2/text/flatbuffer/ReadWriteBuf;

    invoke-interface {v2}, Landroidx/emoji2/text/flatbuffer/ReadWriteBuf;->writePosition()I

    move-result v2

    .line 383
    .local v2, "sloc":I
    iget-object v3, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder;->bb:Landroidx/emoji2/text/flatbuffer/ReadWriteBuf;

    array-length v4, p2

    const/4 v5, 0x0

    invoke-interface {v3, p2, v5, v4}, Landroidx/emoji2/text/flatbuffer/ReadWriteBuf;->put([BII)V

    .line 384
    if-eqz p4, :cond_0

    .line 385
    iget-object v3, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder;->bb:Landroidx/emoji2/text/flatbuffer/ReadWriteBuf;

    invoke-interface {v3, v5}, Landroidx/emoji2/text/flatbuffer/ReadWriteBuf;->put(B)V

    .line 387
    :cond_0
    invoke-static {p1, v2, p3, v0}, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$Value;->blob(IIII)Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$Value;

    move-result-object v3

    return-object v3
.end method

.method private writeDouble(DI)V
    .locals 2
    .param p1, "val"    # D
    .param p3, "byteWidth"    # I

    .line 575
    const/4 v0, 0x4

    if-ne p3, v0, :cond_0

    .line 576
    iget-object v0, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder;->bb:Landroidx/emoji2/text/flatbuffer/ReadWriteBuf;

    double-to-float v1, p1

    invoke-interface {v0, v1}, Landroidx/emoji2/text/flatbuffer/ReadWriteBuf;->putFloat(F)V

    goto :goto_0

    .line 577
    :cond_0
    const/16 v0, 0x8

    if-ne p3, v0, :cond_1

    .line 578
    iget-object v0, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder;->bb:Landroidx/emoji2/text/flatbuffer/ReadWriteBuf;

    invoke-interface {v0, p1, p2}, Landroidx/emoji2/text/flatbuffer/ReadWriteBuf;->putDouble(D)V

    .line 580
    :cond_1
    :goto_0
    return-void
.end method

.method private writeInt(JI)V
    .locals 2
    .param p1, "value"    # J
    .param p3, "byteWidth"    # I

    .line 401
    sparse-switch p3, :sswitch_data_0

    goto :goto_0

    .line 405
    :sswitch_0
    iget-object v0, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder;->bb:Landroidx/emoji2/text/flatbuffer/ReadWriteBuf;

    invoke-interface {v0, p1, p2}, Landroidx/emoji2/text/flatbuffer/ReadWriteBuf;->putLong(J)V

    goto :goto_0

    .line 404
    :sswitch_1
    iget-object v0, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder;->bb:Landroidx/emoji2/text/flatbuffer/ReadWriteBuf;

    long-to-int v1, p1

    invoke-interface {v0, v1}, Landroidx/emoji2/text/flatbuffer/ReadWriteBuf;->putInt(I)V

    goto :goto_0

    .line 403
    :sswitch_2
    iget-object v0, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder;->bb:Landroidx/emoji2/text/flatbuffer/ReadWriteBuf;

    long-to-int v1, p1

    int-to-short v1, v1

    invoke-interface {v0, v1}, Landroidx/emoji2/text/flatbuffer/ReadWriteBuf;->putShort(S)V

    goto :goto_0

    .line 402
    :sswitch_3
    iget-object v0, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder;->bb:Landroidx/emoji2/text/flatbuffer/ReadWriteBuf;

    long-to-int v1, p1

    int-to-byte v1, v1

    invoke-interface {v0, v1}, Landroidx/emoji2/text/flatbuffer/ReadWriteBuf;->put(B)V

    .line 407
    :goto_0
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_3
        0x2 -> :sswitch_2
        0x4 -> :sswitch_1
        0x8 -> :sswitch_0
    .end sparse-switch
.end method

.method private writeOffset(JI)V
    .locals 6
    .param p1, "val"    # J
    .param p3, "byteWidth"    # I

    .line 552
    iget-object v0, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder;->bb:Landroidx/emoji2/text/flatbuffer/ReadWriteBuf;

    invoke-interface {v0}, Landroidx/emoji2/text/flatbuffer/ReadWriteBuf;->writePosition()I

    move-result v0

    int-to-long v0, v0

    sub-long/2addr v0, p1

    long-to-int v1, v0

    .line 553
    .local v1, "reloff":I
    const/16 v0, 0x8

    if-eq p3, v0, :cond_1

    int-to-long v2, v1

    const-wide/16 v4, 0x1

    mul-int/lit8 v0, p3, 0x8

    shl-long/2addr v4, v0

    cmp-long v0, v2, v4

    if-gez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 554
    :cond_1
    :goto_0
    int-to-long v2, v1

    invoke-direct {p0, v2, v3, p3}, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder;->writeInt(JI)V

    .line 555
    return-void
.end method

.method private writeString(ILjava/lang/String;)Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$Value;
    .locals 3
    .param p1, "key"    # I
    .param p2, "s"    # Ljava/lang/String;

    .line 367
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p2, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    const/4 v1, 0x5

    const/4 v2, 0x1

    invoke-direct {p0, p1, v0, v1, v2}, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder;->writeBlob(I[BIZ)Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$Value;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public endMap(Ljava/lang/String;I)I
    .locals 9
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "start"    # I

    .line 598
    invoke-direct {p0, p1}, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder;->putKey(Ljava/lang/String;)I

    move-result v7

    .line 600
    .local v7, "iKey":I
    iget-object v0, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder;->stack:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, p2, v1}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder;->keyComparator:Ljava/util/Comparator;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 602
    iget-object v0, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder;->stack:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, p2

    invoke-direct {p0, p2, v0}, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder;->createKeyVector(II)Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$Value;

    move-result-object v8

    .line 603
    .local v8, "keys":Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$Value;
    iget-object v0, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder;->stack:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int v3, v0, p2

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move v1, v7

    move v2, p2

    move-object v6, v8

    invoke-direct/range {v0 .. v6}, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder;->createVector(IIIZZLandroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$Value;)Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$Value;

    move-result-object v0

    .line 605
    .local v0, "vec":Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$Value;
    :goto_0
    iget-object v1, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder;->stack:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-le v1, p2, :cond_0

    .line 606
    iget-object v1, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder;->stack:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_0

    .line 608
    :cond_0
    iget-object v1, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder;->stack:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 609
    iget-wide v1, v0, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$Value;->iValue:J

    long-to-int v2, v1

    return v2
.end method

.method public endVector(Ljava/lang/String;IZZ)I
    .locals 8
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "start"    # I
    .param p3, "typed"    # Z
    .param p4, "fixed"    # Z

    .line 449
    invoke-direct {p0, p1}, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder;->putKey(Ljava/lang/String;)I

    move-result v7

    .line 450
    .local v7, "iKey":I
    iget-object v0, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder;->stack:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int v3, v0, p2

    const/4 v6, 0x0

    move-object v0, p0

    move v1, v7

    move v2, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v6}, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder;->createVector(IIIZZLandroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$Value;)Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$Value;

    move-result-object v0

    .line 452
    .local v0, "vec":Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$Value;
    :goto_0
    iget-object v1, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder;->stack:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-le v1, p2, :cond_0

    .line 453
    iget-object v1, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder;->stack:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_0

    .line 455
    :cond_0
    iget-object v1, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder;->stack:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 456
    iget-wide v1, v0, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$Value;->iValue:J

    long-to-int v2, v1

    return v2
.end method

.method public finish()Ljava/nio/ByteBuffer;
    .locals 5

    .line 470
    iget-object v0, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder;->stack:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 472
    iget-object v0, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder;->stack:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$Value;

    iget-object v3, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder;->bb:Landroidx/emoji2/text/flatbuffer/ReadWriteBuf;

    invoke-interface {v3}, Landroidx/emoji2/text/flatbuffer/ReadWriteBuf;->writePosition()I

    move-result v3

    invoke-static {v0, v3, v2}, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$Value;->access$200(Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$Value;II)I

    move-result v0

    invoke-direct {p0, v0}, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder;->align(I)I

    move-result v0

    .line 473
    .local v0, "byteWidth":I
    iget-object v3, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder;->stack:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$Value;

    invoke-direct {p0, v3, v0}, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder;->writeAny(Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$Value;I)V

    .line 475
    iget-object v3, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder;->bb:Landroidx/emoji2/text/flatbuffer/ReadWriteBuf;

    iget-object v4, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder;->stack:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$Value;

    invoke-static {v4}, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$Value;->access$300(Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$Value;)B

    move-result v4

    invoke-interface {v3, v4}, Landroidx/emoji2/text/flatbuffer/ReadWriteBuf;->put(B)V

    .line 477
    iget-object v3, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder;->bb:Landroidx/emoji2/text/flatbuffer/ReadWriteBuf;

    int-to-byte v4, v0

    invoke-interface {v3, v4}, Landroidx/emoji2/text/flatbuffer/ReadWriteBuf;->put(B)V

    .line 478
    iput-boolean v1, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder;->finished:Z

    .line 479
    iget-object v1, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder;->bb:Landroidx/emoji2/text/flatbuffer/ReadWriteBuf;

    invoke-interface {v1}, Landroidx/emoji2/text/flatbuffer/ReadWriteBuf;->data()[B

    move-result-object v1

    iget-object v3, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder;->bb:Landroidx/emoji2/text/flatbuffer/ReadWriteBuf;

    invoke-interface {v3}, Landroidx/emoji2/text/flatbuffer/ReadWriteBuf;->writePosition()I

    move-result v3

    invoke-static {v1, v2, v3}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v1

    return-object v1

    .line 470
    .end local v0    # "byteWidth":I
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public getBuffer()Landroidx/emoji2/text/flatbuffer/ReadWriteBuf;
    .locals 1

    .line 161
    iget-boolean v0, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder;->finished:Z

    if-eqz v0, :cond_0

    .line 162
    iget-object v0, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder;->bb:Landroidx/emoji2/text/flatbuffer/ReadWriteBuf;

    return-object v0

    .line 161
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public putBlob(Ljava/lang/String;[B)I
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "val"    # [B

    .line 425
    invoke-direct {p0, p1}, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder;->putKey(Ljava/lang/String;)I

    move-result v0

    .line 426
    .local v0, "iKey":I
    const/16 v1, 0x19

    const/4 v2, 0x0

    invoke-direct {p0, v0, p2, v1, v2}, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder;->writeBlob(I[BIZ)Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$Value;

    move-result-object v1

    .line 427
    .local v1, "value":Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$Value;
    iget-object v2, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder;->stack:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 428
    iget-wide v2, v1, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$Value;->iValue:J

    long-to-int v3, v2

    return v3
.end method

.method public putBlob([B)I
    .locals 1
    .param p1, "value"    # [B

    .line 415
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder;->putBlob(Ljava/lang/String;[B)I

    move-result v0

    return v0
.end method

.method public putBoolean(Ljava/lang/String;Z)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "val"    # Z

    .line 179
    iget-object v0, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder;->stack:Ljava/util/ArrayList;

    invoke-direct {p0, p1}, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder;->putKey(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1, p2}, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$Value;->bool(IZ)Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$Value;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 180
    return-void
.end method

.method public putBoolean(Z)V
    .locals 1
    .param p1, "val"    # Z

    .line 170
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder;->putBoolean(Ljava/lang/String;Z)V

    .line 171
    return-void
.end method

.method public putFloat(D)V
    .locals 1
    .param p1, "value"    # D

    .line 318
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, p2}, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder;->putFloat(Ljava/lang/String;D)V

    .line 319
    return-void
.end method

.method public putFloat(F)V
    .locals 1
    .param p1, "value"    # F

    .line 301
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder;->putFloat(Ljava/lang/String;F)V

    .line 302
    return-void
.end method

.method public putFloat(Ljava/lang/String;D)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "val"    # D

    .line 327
    iget-object v0, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder;->stack:Ljava/util/ArrayList;

    invoke-direct {p0, p1}, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder;->putKey(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1, p2, p3}, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$Value;->float64(ID)Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$Value;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 328
    return-void
.end method

.method public putFloat(Ljava/lang/String;F)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "val"    # F

    .line 310
    iget-object v0, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder;->stack:Ljava/util/ArrayList;

    invoke-direct {p0, p1}, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder;->putKey(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1, p2}, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$Value;->float32(IF)Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$Value;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 311
    return-void
.end method

.method public putInt(I)V
    .locals 1
    .param p1, "val"    # I

    .line 211
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder;->putInt(Ljava/lang/String;I)V

    .line 212
    return-void
.end method

.method public putInt(J)V
    .locals 1
    .param p1, "value"    # J

    .line 246
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, p2}, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder;->putInt(Ljava/lang/String;J)V

    .line 247
    return-void
.end method

.method public putInt(Ljava/lang/String;I)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "val"    # I

    .line 220
    int-to-long v0, p2

    invoke-virtual {p0, p1, v0, v1}, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder;->putInt(Ljava/lang/String;J)V

    .line 221
    return-void
.end method

.method public putInt(Ljava/lang/String;J)V
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "val"    # J

    .line 229
    invoke-direct {p0, p1}, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder;->putKey(Ljava/lang/String;)I

    move-result v0

    .line 230
    .local v0, "iKey":I
    const-wide/16 v1, -0x80

    cmp-long v3, v1, p2

    if-gtz v3, :cond_0

    const-wide/16 v1, 0x7f

    cmp-long v3, p2, v1

    if-gtz v3, :cond_0

    .line 231
    iget-object v1, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder;->stack:Ljava/util/ArrayList;

    long-to-int v2, p2

    invoke-static {v0, v2}, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$Value;->int8(II)Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$Value;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 232
    :cond_0
    const-wide/16 v1, -0x8000

    cmp-long v3, v1, p2

    if-gtz v3, :cond_1

    const-wide/16 v1, 0x7fff

    cmp-long v3, p2, v1

    if-gtz v3, :cond_1

    .line 233
    iget-object v1, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder;->stack:Ljava/util/ArrayList;

    long-to-int v2, p2

    invoke-static {v0, v2}, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$Value;->int16(II)Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$Value;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 234
    :cond_1
    const-wide/32 v1, -0x80000000

    cmp-long v3, v1, p2

    if-gtz v3, :cond_2

    const-wide/32 v1, 0x7fffffff

    cmp-long v3, p2, v1

    if-gtz v3, :cond_2

    .line 235
    iget-object v1, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder;->stack:Ljava/util/ArrayList;

    long-to-int v2, p2

    invoke-static {v0, v2}, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$Value;->int32(II)Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$Value;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 237
    :cond_2
    iget-object v1, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder;->stack:Ljava/util/ArrayList;

    invoke-static {v0, p2, p3}, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$Value;->int64(IJ)Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$Value;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 239
    :goto_0
    return-void
.end method

.method public putString(Ljava/lang/String;)I
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .line 336
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder;->putString(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public putString(Ljava/lang/String;Ljava/lang/String;)I
    .locals 6
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "val"    # Ljava/lang/String;

    .line 346
    invoke-direct {p0, p1}, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder;->putKey(Ljava/lang/String;)I

    move-result v0

    .line 347
    .local v0, "iKey":I
    iget v1, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder;->flags:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    .line 348
    iget-object v1, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder;->stringPool:Ljava/util/HashMap;

    invoke-virtual {v1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 349
    .local v1, "i":Ljava/lang/Integer;
    if-nez v1, :cond_0

    .line 350
    invoke-direct {p0, v0, p2}, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder;->writeString(ILjava/lang/String;)Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$Value;

    move-result-object v2

    .line 351
    .local v2, "value":Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$Value;
    iget-object v3, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder;->stringPool:Ljava/util/HashMap;

    iget-wide v4, v2, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$Value;->iValue:J

    long-to-int v5, v4

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, p2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 352
    iget-object v3, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder;->stack:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 353
    iget-wide v3, v2, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$Value;->iValue:J

    long-to-int v4, v3

    return v4

    .line 355
    .end local v2    # "value":Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$Value;
    :cond_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    int-to-long v2, v2

    invoke-static {v2, v3}, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder;->widthUInBits(J)I

    move-result v2

    .line 356
    .local v2, "bitWidth":I
    iget-object v3, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder;->stack:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/4 v5, 0x5

    invoke-static {v0, v4, v5, v2}, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$Value;->blob(IIII)Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$Value;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 357
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    return v3

    .line 360
    .end local v1    # "i":Ljava/lang/Integer;
    .end local v2    # "bitWidth":I
    :cond_1
    invoke-direct {p0, v0, p2}, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder;->writeString(ILjava/lang/String;)Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$Value;

    move-result-object v1

    .line 361
    .local v1, "value":Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$Value;
    iget-object v2, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder;->stack:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 362
    iget-wide v2, v1, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$Value;->iValue:J

    long-to-int v3, v2

    return v3
.end method

.method public putUInt(I)V
    .locals 3
    .param p1, "value"    # I

    .line 254
    int-to-long v0, p1

    const/4 v2, 0x0

    invoke-direct {p0, v2, v0, v1}, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder;->putUInt(Ljava/lang/String;J)V

    .line 255
    return-void
.end method

.method public putUInt(J)V
    .locals 1
    .param p1, "value"    # J

    .line 262
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder;->putUInt(Ljava/lang/String;J)V

    .line 263
    return-void
.end method

.method public putUInt64(Ljava/math/BigInteger;)V
    .locals 3
    .param p1, "value"    # Ljava/math/BigInteger;

    .line 271
    invoke-virtual {p1}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v0

    const/4 v2, 0x0

    invoke-direct {p0, v2, v0, v1}, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder;->putUInt64(Ljava/lang/String;J)V

    .line 272
    return-void
.end method

.method public startMap()I
    .locals 1

    .line 588
    iget-object v0, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder;->stack:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public startVector()I
    .locals 1

    .line 437
    iget-object v0, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder;->stack:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method
