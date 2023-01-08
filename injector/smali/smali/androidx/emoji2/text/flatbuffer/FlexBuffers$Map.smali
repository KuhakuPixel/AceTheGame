.class public Landroidx/emoji2/text/flatbuffer/FlexBuffers$Map;
.super Landroidx/emoji2/text/flatbuffer/FlexBuffers$Vector;
.source "FlexBuffers.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/emoji2/text/flatbuffer/FlexBuffers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Map"
.end annotation


# static fields
.field private static final EMPTY_MAP:Landroidx/emoji2/text/flatbuffer/FlexBuffers$Map;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 820
    new-instance v0, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Map;

    invoke-static {}, Landroidx/emoji2/text/flatbuffer/FlexBuffers;->access$000()Landroidx/emoji2/text/flatbuffer/ReadBuf;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v2}, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Map;-><init>(Landroidx/emoji2/text/flatbuffer/ReadBuf;II)V

    sput-object v0, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Map;->EMPTY_MAP:Landroidx/emoji2/text/flatbuffer/FlexBuffers$Map;

    return-void
.end method

.method constructor <init>(Landroidx/emoji2/text/flatbuffer/ReadBuf;II)V
    .locals 0
    .param p1, "bb"    # Landroidx/emoji2/text/flatbuffer/ReadBuf;
    .param p2, "end"    # I
    .param p3, "byteWidth"    # I

    .line 823
    invoke-direct {p0, p1, p2, p3}, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Vector;-><init>(Landroidx/emoji2/text/flatbuffer/ReadBuf;II)V

    .line 824
    return-void
.end method

.method private binarySearch(Landroidx/emoji2/text/flatbuffer/FlexBuffers$KeyVector;[B)I
    .locals 5
    .param p1, "keys"    # Landroidx/emoji2/text/flatbuffer/FlexBuffers$KeyVector;
    .param p2, "searchedKey"    # [B

    .line 902
    const/4 v0, 0x0

    .line 903
    .local v0, "low":I
    invoke-virtual {p1}, Landroidx/emoji2/text/flatbuffer/FlexBuffers$KeyVector;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .line 905
    .local v1, "high":I
    :goto_0
    if-gt v0, v1, :cond_2

    .line 906
    add-int v2, v0, v1

    ushr-int/lit8 v2, v2, 0x1

    .line 907
    .local v2, "mid":I
    invoke-virtual {p1, v2}, Landroidx/emoji2/text/flatbuffer/FlexBuffers$KeyVector;->get(I)Landroidx/emoji2/text/flatbuffer/FlexBuffers$Key;

    move-result-object v3

    .line 908
    .local v3, "k":Landroidx/emoji2/text/flatbuffer/FlexBuffers$Key;
    invoke-virtual {v3, p2}, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Key;->compareTo([B)I

    move-result v4

    .line 909
    .local v4, "cmp":I
    if-gez v4, :cond_0

    .line 910
    add-int/lit8 v0, v2, 0x1

    goto :goto_1

    .line 911
    :cond_0
    if-lez v4, :cond_1

    .line 912
    add-int/lit8 v1, v2, -0x1

    .line 915
    .end local v2    # "mid":I
    .end local v3    # "k":Landroidx/emoji2/text/flatbuffer/FlexBuffers$Key;
    .end local v4    # "cmp":I
    :goto_1
    goto :goto_0

    .line 914
    .restart local v2    # "mid":I
    .restart local v3    # "k":Landroidx/emoji2/text/flatbuffer/FlexBuffers$Key;
    .restart local v4    # "cmp":I
    :cond_1
    return v2

    .line 916
    .end local v2    # "mid":I
    .end local v3    # "k":Landroidx/emoji2/text/flatbuffer/FlexBuffers$Key;
    .end local v4    # "cmp":I
    :cond_2
    add-int/lit8 v2, v0, 0x1

    neg-int v2, v2

    return v2
.end method

.method public static empty()Landroidx/emoji2/text/flatbuffer/FlexBuffers$Map;
    .locals 1

    .line 831
    sget-object v0, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Map;->EMPTY_MAP:Landroidx/emoji2/text/flatbuffer/FlexBuffers$Map;

    return-object v0
.end method


# virtual methods
.method public get(Ljava/lang/String;)Landroidx/emoji2/text/flatbuffer/FlexBuffers$Reference;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .line 839
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Map;->get([B)Landroidx/emoji2/text/flatbuffer/FlexBuffers$Reference;

    move-result-object v0

    return-object v0
.end method

.method public get([B)Landroidx/emoji2/text/flatbuffer/FlexBuffers$Reference;
    .locals 4
    .param p1, "key"    # [B

    .line 847
    invoke-virtual {p0}, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Map;->keys()Landroidx/emoji2/text/flatbuffer/FlexBuffers$KeyVector;

    move-result-object v0

    .line 848
    .local v0, "keys":Landroidx/emoji2/text/flatbuffer/FlexBuffers$KeyVector;
    invoke-virtual {v0}, Landroidx/emoji2/text/flatbuffer/FlexBuffers$KeyVector;->size()I

    move-result v1

    .line 849
    .local v1, "size":I
    invoke-direct {p0, v0, p1}, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Map;->binarySearch(Landroidx/emoji2/text/flatbuffer/FlexBuffers$KeyVector;[B)I

    move-result v2

    .line 850
    .local v2, "index":I
    if-ltz v2, :cond_0

    if-ge v2, v1, :cond_0

    .line 851
    invoke-virtual {p0, v2}, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Map;->get(I)Landroidx/emoji2/text/flatbuffer/FlexBuffers$Reference;

    move-result-object v3

    return-object v3

    .line 853
    :cond_0
    invoke-static {}, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Reference;->access$600()Landroidx/emoji2/text/flatbuffer/FlexBuffers$Reference;

    move-result-object v3

    return-object v3
.end method

.method public keys()Landroidx/emoji2/text/flatbuffer/FlexBuffers$KeyVector;
    .locals 9

    .line 862
    const/4 v0, 0x3

    .line 863
    .local v0, "num_prefixed_fields":I
    iget v1, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Map;->end:I

    iget v2, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Map;->byteWidth:I

    mul-int/lit8 v2, v2, 0x3

    sub-int/2addr v1, v2

    .line 864
    .local v1, "keysOffset":I
    new-instance v2, Landroidx/emoji2/text/flatbuffer/FlexBuffers$KeyVector;

    new-instance v3, Landroidx/emoji2/text/flatbuffer/FlexBuffers$TypedVector;

    iget-object v4, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Map;->bb:Landroidx/emoji2/text/flatbuffer/ReadBuf;

    iget-object v5, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Map;->bb:Landroidx/emoji2/text/flatbuffer/ReadBuf;

    iget v6, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Map;->byteWidth:I

    .line 865
    invoke-static {v5, v1, v6}, Landroidx/emoji2/text/flatbuffer/FlexBuffers;->access$200(Landroidx/emoji2/text/flatbuffer/ReadBuf;II)I

    move-result v5

    iget-object v6, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Map;->bb:Landroidx/emoji2/text/flatbuffer/ReadBuf;

    iget v7, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Map;->byteWidth:I

    add-int/2addr v7, v1

    iget v8, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Map;->byteWidth:I

    .line 866
    invoke-static {v6, v7, v8}, Landroidx/emoji2/text/flatbuffer/FlexBuffers;->access$100(Landroidx/emoji2/text/flatbuffer/ReadBuf;II)I

    move-result v6

    const/4 v7, 0x4

    invoke-direct {v3, v4, v5, v6, v7}, Landroidx/emoji2/text/flatbuffer/FlexBuffers$TypedVector;-><init>(Landroidx/emoji2/text/flatbuffer/ReadBuf;III)V

    invoke-direct {v2, v3}, Landroidx/emoji2/text/flatbuffer/FlexBuffers$KeyVector;-><init>(Landroidx/emoji2/text/flatbuffer/FlexBuffers$TypedVector;)V

    .line 864
    return-object v2
.end method

.method public toString(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;
    .locals 6
    .param p1, "builder"    # Ljava/lang/StringBuilder;

    .line 884
    const-string v0, "{ "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 885
    invoke-virtual {p0}, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Map;->keys()Landroidx/emoji2/text/flatbuffer/FlexBuffers$KeyVector;

    move-result-object v0

    .line 886
    .local v0, "keys":Landroidx/emoji2/text/flatbuffer/FlexBuffers$KeyVector;
    invoke-virtual {p0}, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Map;->size()I

    move-result v1

    .line 887
    .local v1, "size":I
    invoke-virtual {p0}, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Map;->values()Landroidx/emoji2/text/flatbuffer/FlexBuffers$Vector;

    move-result-object v2

    .line 888
    .local v2, "vals":Landroidx/emoji2/text/flatbuffer/FlexBuffers$Vector;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_1

    .line 889
    const/16 v4, 0x22

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 890
    invoke-virtual {v0, v3}, Landroidx/emoji2/text/flatbuffer/FlexBuffers$KeyVector;->get(I)Landroidx/emoji2/text/flatbuffer/FlexBuffers$Key;

    move-result-object v5

    invoke-virtual {v5}, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Key;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 891
    const-string v5, "\" : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 892
    invoke-virtual {v2, v3}, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Vector;->get(I)Landroidx/emoji2/text/flatbuffer/FlexBuffers$Reference;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Reference;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 893
    add-int/lit8 v4, v1, -0x1

    if-eq v3, v4, :cond_0

    .line 894
    const-string v4, ", "

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 888
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 896
    .end local v3    # "i":I
    :cond_1
    const-string v3, " }"

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 897
    return-object p1
.end method

.method public values()Landroidx/emoji2/text/flatbuffer/FlexBuffers$Vector;
    .locals 4

    .line 874
    new-instance v0, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Vector;

    iget-object v1, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Map;->bb:Landroidx/emoji2/text/flatbuffer/ReadBuf;

    iget v2, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Map;->end:I

    iget v3, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Map;->byteWidth:I

    invoke-direct {v0, v1, v2, v3}, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Vector;-><init>(Landroidx/emoji2/text/flatbuffer/ReadBuf;II)V

    return-object v0
.end method
