.class final Landroidx/emoji2/text/EmojiProcessor$CodepointIndexFinder;
.super Ljava/lang/Object;
.source "EmojiProcessor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/emoji2/text/EmojiProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "CodepointIndexFinder"
.end annotation


# static fields
.field private static final INVALID_INDEX:I = -0x1


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 708
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static findIndexBackward(Ljava/lang/CharSequence;II)I
    .locals 7
    .param p0, "cs"    # Ljava/lang/CharSequence;
    .param p1, "from"    # I
    .param p2, "numCodePoints"    # I

    .line 723
    move v0, p1

    .line 724
    .local v0, "currentIndex":I
    const/4 v1, 0x0

    .line 725
    .local v1, "waitingHighSurrogate":Z
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    .line 726
    .local v2, "length":I
    const/4 v3, -0x1

    if-ltz v0, :cond_9

    if-ge v2, v0, :cond_0

    goto :goto_1

    .line 729
    :cond_0
    if-gez p2, :cond_1

    .line 730
    return v3

    .line 732
    :cond_1
    move v4, p2

    .line 734
    .local v4, "remainingCodePoints":I
    :goto_0
    if-nez v4, :cond_2

    .line 735
    return v0

    .line 738
    :cond_2
    add-int/lit8 v0, v0, -0x1

    .line 739
    if-gez v0, :cond_4

    .line 740
    if-eqz v1, :cond_3

    .line 741
    return v3

    .line 743
    :cond_3
    const/4 v3, 0x0

    return v3

    .line 746
    :cond_4
    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    .line 747
    .local v5, "c":C
    if-eqz v1, :cond_6

    .line 748
    invoke-static {v5}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v6

    if-nez v6, :cond_5

    .line 749
    return v3

    .line 751
    :cond_5
    const/4 v1, 0x0

    .line 752
    add-int/lit8 v4, v4, -0x1

    .line 753
    goto :goto_0

    .line 755
    :cond_6
    invoke-static {v5}, Ljava/lang/Character;->isSurrogate(C)Z

    move-result v6

    if-nez v6, :cond_7

    .line 756
    add-int/lit8 v4, v4, -0x1

    .line 757
    goto :goto_0

    .line 759
    :cond_7
    invoke-static {v5}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 760
    return v3

    .line 762
    :cond_8
    const/4 v1, 0x1

    .line 763
    .end local v5    # "c":C
    goto :goto_0

    .line 727
    .end local v4    # "remainingCodePoints":I
    :cond_9
    :goto_1
    return v3
.end method

.method static findIndexForward(Ljava/lang/CharSequence;II)I
    .locals 7
    .param p0, "cs"    # Ljava/lang/CharSequence;
    .param p1, "from"    # I
    .param p2, "numCodePoints"    # I

    .line 779
    move v0, p1

    .line 780
    .local v0, "currentIndex":I
    const/4 v1, 0x0

    .line 781
    .local v1, "waitingLowSurrogate":Z
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    .line 782
    .local v2, "length":I
    const/4 v3, -0x1

    if-ltz v0, :cond_9

    if-ge v2, v0, :cond_0

    goto :goto_1

    .line 785
    :cond_0
    if-gez p2, :cond_1

    .line 786
    return v3

    .line 788
    :cond_1
    move v4, p2

    .line 791
    .local v4, "remainingCodePoints":I
    :goto_0
    if-nez v4, :cond_2

    .line 792
    return v0

    .line 795
    :cond_2
    if-lt v0, v2, :cond_4

    .line 796
    if-eqz v1, :cond_3

    .line 797
    return v3

    .line 799
    :cond_3
    return v2

    .line 802
    :cond_4
    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    .line 803
    .local v5, "c":C
    if-eqz v1, :cond_6

    .line 804
    invoke-static {v5}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result v6

    if-nez v6, :cond_5

    .line 805
    return v3

    .line 807
    :cond_5
    add-int/lit8 v4, v4, -0x1

    .line 808
    const/4 v1, 0x0

    .line 809
    add-int/lit8 v0, v0, 0x1

    .line 810
    goto :goto_0

    .line 812
    :cond_6
    invoke-static {v5}, Ljava/lang/Character;->isSurrogate(C)Z

    move-result v6

    if-nez v6, :cond_7

    .line 813
    add-int/lit8 v4, v4, -0x1

    .line 814
    add-int/lit8 v0, v0, 0x1

    .line 815
    goto :goto_0

    .line 817
    :cond_7
    invoke-static {v5}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 818
    return v3

    .line 820
    :cond_8
    const/4 v1, 0x1

    .line 821
    nop

    .end local v5    # "c":C
    add-int/lit8 v0, v0, 0x1

    .line 822
    goto :goto_0

    .line 783
    .end local v4    # "remainingCodePoints":I
    :cond_9
    :goto_1
    return v3
.end method
