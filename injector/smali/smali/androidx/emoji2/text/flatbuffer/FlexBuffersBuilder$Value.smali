.class Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$Value;
.super Ljava/lang/Object;
.source "FlexBuffersBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Value"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field final dValue:D

.field iValue:J

.field key:I

.field final minBitWidth:I

.field final type:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 636
    const-class v0, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder;

    return-void
.end method

.method constructor <init>(IIID)V
    .locals 2
    .param p1, "key"    # I
    .param p2, "type"    # I
    .param p3, "bitWidth"    # I
    .param p4, "dValue"    # D

    .line 657
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 658
    iput p1, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$Value;->key:I

    .line 659
    iput p2, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$Value;->type:I

    .line 660
    iput p3, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$Value;->minBitWidth:I

    .line 661
    iput-wide p4, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$Value;->dValue:D

    .line 662
    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$Value;->iValue:J

    .line 663
    return-void
.end method

.method constructor <init>(IIIJ)V
    .locals 2
    .param p1, "key"    # I
    .param p2, "type"    # I
    .param p3, "bitWidth"    # I
    .param p4, "iValue"    # J

    .line 649
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 650
    iput p1, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$Value;->key:I

    .line 651
    iput p2, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$Value;->type:I

    .line 652
    iput p3, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$Value;->minBitWidth:I

    .line 653
    iput-wide p4, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$Value;->iValue:J

    .line 654
    const-wide/16 v0, 0x1

    iput-wide v0, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$Value;->dValue:D

    .line 655
    return-void
.end method

.method static synthetic access$100(II)I
    .locals 1
    .param p0, "x0"    # I
    .param p1, "x1"    # I

    .line 636
    invoke-static {p0, p1}, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$Value;->paddingBytes(II)I

    move-result v0

    return v0
.end method

.method static synthetic access$200(Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$Value;II)I
    .locals 1
    .param p0, "x0"    # Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$Value;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .line 636
    invoke-direct {p0, p1, p2}, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$Value;->elemWidth(II)I

    move-result v0

    return v0
.end method

.method static synthetic access$300(Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$Value;)B
    .locals 1
    .param p0, "x0"    # Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$Value;

    .line 636
    invoke-direct {p0}, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$Value;->storedPackedType()B

    move-result v0

    return v0
.end method

.method static synthetic access$400(Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$Value;I)B
    .locals 1
    .param p0, "x0"    # Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$Value;
    .param p1, "x1"    # I

    .line 636
    invoke-direct {p0, p1}, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$Value;->storedPackedType(I)B

    move-result v0

    return v0
.end method

.method static synthetic access$500(IIJII)I
    .locals 1
    .param p0, "x0"    # I
    .param p1, "x1"    # I
    .param p2, "x2"    # J
    .param p4, "x3"    # I
    .param p5, "x4"    # I

    .line 636
    invoke-static/range {p0 .. p5}, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$Value;->elemWidth(IIJII)I

    move-result v0

    return v0
.end method

.method static blob(IIII)Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$Value;
    .locals 7
    .param p0, "key"    # I
    .param p1, "position"    # I
    .param p2, "type"    # I
    .param p3, "bitWidth"    # I

    .line 670
    new-instance v6, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$Value;

    int-to-long v4, p1

    move-object v0, v6

    move v1, p0

    move v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v5}, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$Value;-><init>(IIIJ)V

    return-object v6
.end method

.method static bool(IZ)Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$Value;
    .locals 7
    .param p0, "key"    # I
    .param p1, "b"    # Z

    .line 666
    new-instance v6, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$Value;

    if-eqz p1, :cond_0

    const-wide/16 v0, 0x1

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    move-wide v4, v0

    const/16 v2, 0x1a

    const/4 v3, 0x0

    move-object v0, v6

    move v1, p0

    invoke-direct/range {v0 .. v5}, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$Value;-><init>(IIIJ)V

    return-object v6
.end method

.method private elemWidth(II)I
    .locals 6
    .param p1, "bufSize"    # I
    .param p2, "elemIndex"    # I

    .line 734
    iget v0, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$Value;->type:I

    iget v1, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$Value;->minBitWidth:I

    iget-wide v2, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$Value;->iValue:J

    move v4, p1

    move v5, p2

    invoke-static/range {v0 .. v5}, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$Value;->elemWidth(IIJII)I

    move-result v0

    return v0
.end method

.method private static elemWidth(IIJII)I
    .locals 10
    .param p0, "type"    # I
    .param p1, "minBitWidth"    # I
    .param p2, "iValue"    # J
    .param p4, "bufSize"    # I
    .param p5, "elemIndex"    # I

    .line 738
    invoke-static {p0}, Landroidx/emoji2/text/flatbuffer/FlexBuffers;->isTypeInline(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 739
    return p1

    .line 749
    :cond_0
    const/4 v0, 0x1

    .local v0, "byteWidth":I
    :goto_0
    const/16 v1, 0x20

    if-gt v0, v1, :cond_2

    .line 751
    invoke-static {p4, v0}, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$Value;->paddingBytes(II)I

    move-result v1

    add-int/2addr v1, p4

    mul-int v2, p5, v0

    add-int/2addr v1, v2

    .line 753
    .local v1, "offsetLoc":I
    int-to-long v2, v1

    sub-long/2addr v2, p2

    .line 755
    .local v2, "offset":J
    long-to-int v4, v2

    int-to-long v4, v4

    invoke-static {v4, v5}, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder;->widthUInBits(J)I

    move-result v4

    .line 756
    .local v4, "bitWidth":I
    const-wide/16 v5, 0x1

    shl-long/2addr v5, v4

    int-to-long v7, v0

    cmp-long v9, v5, v7

    if-nez v9, :cond_1

    .line 757
    return v4

    .line 749
    .end local v1    # "offsetLoc":I
    .end local v2    # "offset":J
    .end local v4    # "bitWidth":I
    :cond_1
    mul-int/lit8 v0, v0, 0x2

    goto :goto_0

    .line 759
    .end local v0    # "byteWidth":I
    :cond_2
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method

.method static float32(IF)Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$Value;
    .locals 7
    .param p0, "key"    # I
    .param p1, "value"    # F

    .line 706
    new-instance v6, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$Value;

    float-to-double v4, p1

    const/4 v2, 0x3

    const/4 v3, 0x2

    move-object v0, v6

    move v1, p0

    invoke-direct/range {v0 .. v5}, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$Value;-><init>(IIID)V

    return-object v6
.end method

.method static float64(ID)Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$Value;
    .locals 7
    .param p0, "key"    # I
    .param p1, "value"    # D

    .line 710
    new-instance v6, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$Value;

    const/4 v2, 0x3

    const/4 v3, 0x3

    move-object v0, v6

    move v1, p0

    move-wide v4, p1

    invoke-direct/range {v0 .. v5}, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$Value;-><init>(IIID)V

    return-object v6
.end method

.method static int16(II)Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$Value;
    .locals 7
    .param p0, "key"    # I
    .param p1, "value"    # I

    .line 678
    new-instance v6, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$Value;

    int-to-long v4, p1

    const/4 v2, 0x1

    const/4 v3, 0x1

    move-object v0, v6

    move v1, p0

    invoke-direct/range {v0 .. v5}, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$Value;-><init>(IIIJ)V

    return-object v6
.end method

.method static int32(II)Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$Value;
    .locals 7
    .param p0, "key"    # I
    .param p1, "value"    # I

    .line 682
    new-instance v6, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$Value;

    int-to-long v4, p1

    const/4 v2, 0x1

    const/4 v3, 0x2

    move-object v0, v6

    move v1, p0

    invoke-direct/range {v0 .. v5}, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$Value;-><init>(IIIJ)V

    return-object v6
.end method

.method static int64(IJ)Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$Value;
    .locals 7
    .param p0, "key"    # I
    .param p1, "value"    # J

    .line 686
    new-instance v6, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$Value;

    const/4 v2, 0x1

    const/4 v3, 0x3

    move-object v0, v6

    move v1, p0

    move-wide v4, p1

    invoke-direct/range {v0 .. v5}, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$Value;-><init>(IIIJ)V

    return-object v6
.end method

.method static int8(II)Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$Value;
    .locals 7
    .param p0, "key"    # I
    .param p1, "value"    # I

    .line 674
    new-instance v6, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$Value;

    int-to-long v4, p1

    const/4 v2, 0x1

    const/4 v3, 0x0

    move-object v0, v6

    move v1, p0

    invoke-direct/range {v0 .. v5}, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$Value;-><init>(IIIJ)V

    return-object v6
.end method

.method private static packedType(II)B
    .locals 1
    .param p0, "bitWidth"    # I
    .param p1, "type"    # I

    .line 722
    shl-int/lit8 v0, p1, 0x2

    or-int/2addr v0, p0

    int-to-byte v0, v0

    return v0
.end method

.method private static paddingBytes(II)I
    .locals 2
    .param p0, "bufSize"    # I
    .param p1, "scalarSize"    # I

    .line 765
    xor-int/lit8 v0, p0, -0x1

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, p1, -0x1

    and-int/2addr v0, v1

    return v0
.end method

.method private storedPackedType()B
    .locals 1

    .line 714
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$Value;->storedPackedType(I)B

    move-result v0

    return v0
.end method

.method private storedPackedType(I)B
    .locals 2
    .param p1, "parentBitWidth"    # I

    .line 718
    invoke-direct {p0, p1}, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$Value;->storedWidth(I)I

    move-result v0

    iget v1, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$Value;->type:I

    invoke-static {v0, v1}, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$Value;->packedType(II)B

    move-result v0

    return v0
.end method

.method private storedWidth(I)I
    .locals 1
    .param p1, "parentBitWidth"    # I

    .line 726
    iget v0, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$Value;->type:I

    invoke-static {v0}, Landroidx/emoji2/text/flatbuffer/FlexBuffers;->isTypeInline(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 727
    iget v0, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$Value;->minBitWidth:I

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0

    .line 729
    :cond_0
    iget v0, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$Value;->minBitWidth:I

    return v0
.end method

.method static uInt16(II)Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$Value;
    .locals 7
    .param p0, "key"    # I
    .param p1, "value"    # I

    .line 694
    new-instance v6, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$Value;

    int-to-long v4, p1

    const/4 v2, 0x2

    const/4 v3, 0x1

    move-object v0, v6

    move v1, p0

    invoke-direct/range {v0 .. v5}, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$Value;-><init>(IIIJ)V

    return-object v6
.end method

.method static uInt32(II)Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$Value;
    .locals 7
    .param p0, "key"    # I
    .param p1, "value"    # I

    .line 698
    new-instance v6, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$Value;

    int-to-long v4, p1

    const/4 v2, 0x2

    const/4 v3, 0x2

    move-object v0, v6

    move v1, p0

    invoke-direct/range {v0 .. v5}, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$Value;-><init>(IIIJ)V

    return-object v6
.end method

.method static uInt64(IJ)Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$Value;
    .locals 7
    .param p0, "key"    # I
    .param p1, "value"    # J

    .line 702
    new-instance v6, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$Value;

    const/4 v2, 0x2

    const/4 v3, 0x3

    move-object v0, v6

    move v1, p0

    move-wide v4, p1

    invoke-direct/range {v0 .. v5}, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$Value;-><init>(IIIJ)V

    return-object v6
.end method

.method static uInt8(II)Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$Value;
    .locals 7
    .param p0, "key"    # I
    .param p1, "value"    # I

    .line 690
    new-instance v6, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$Value;

    int-to-long v4, p1

    const/4 v2, 0x2

    const/4 v3, 0x0

    move-object v0, v6

    move v1, p0

    invoke-direct/range {v0 .. v5}, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$Value;-><init>(IIIJ)V

    return-object v6
.end method
