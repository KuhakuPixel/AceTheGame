.class final Landroidx/emoji2/text/EmojiProcessor$ProcessorSm;
.super Ljava/lang/Object;
.source "EmojiProcessor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/emoji2/text/EmojiProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ProcessorSm"
.end annotation


# static fields
.field private static final STATE_DEFAULT:I = 0x1

.field private static final STATE_WALKING:I = 0x2


# instance fields
.field private mCurrentDepth:I

.field private mCurrentNode:Landroidx/emoji2/text/MetadataRepo$Node;

.field private final mEmojiAsDefaultStyleExceptions:[I

.field private mFlushNode:Landroidx/emoji2/text/MetadataRepo$Node;

.field private mLastCodepoint:I

.field private final mRootNode:Landroidx/emoji2/text/MetadataRepo$Node;

.field private mState:I

.field private final mUseEmojiAsDefaultStyle:Z


# direct methods
.method constructor <init>(Landroidx/emoji2/text/MetadataRepo$Node;Z[I)V
    .locals 1
    .param p1, "rootNode"    # Landroidx/emoji2/text/MetadataRepo$Node;
    .param p2, "useEmojiAsDefaultStyle"    # Z
    .param p3, "emojiAsDefaultStyleExceptions"    # [I

    .line 565
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 526
    const/4 v0, 0x1

    iput v0, p0, Landroidx/emoji2/text/EmojiProcessor$ProcessorSm;->mState:I

    .line 566
    iput-object p1, p0, Landroidx/emoji2/text/EmojiProcessor$ProcessorSm;->mRootNode:Landroidx/emoji2/text/MetadataRepo$Node;

    .line 567
    iput-object p1, p0, Landroidx/emoji2/text/EmojiProcessor$ProcessorSm;->mCurrentNode:Landroidx/emoji2/text/MetadataRepo$Node;

    .line 568
    iput-boolean p2, p0, Landroidx/emoji2/text/EmojiProcessor$ProcessorSm;->mUseEmojiAsDefaultStyle:Z

    .line 569
    iput-object p3, p0, Landroidx/emoji2/text/EmojiProcessor$ProcessorSm;->mEmojiAsDefaultStyleExceptions:[I

    .line 570
    return-void
.end method

.method private static isEmojiStyle(I)Z
    .locals 1
    .param p0, "codePoint"    # I

    .line 688
    const v0, 0xfe0f

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static isTextStyle(I)Z
    .locals 1
    .param p0, "codePoint"    # I

    .line 697
    const v0, 0xfe0e

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private reset()I
    .locals 2

    .line 625
    const/4 v0, 0x1

    iput v0, p0, Landroidx/emoji2/text/EmojiProcessor$ProcessorSm;->mState:I

    .line 626
    iget-object v1, p0, Landroidx/emoji2/text/EmojiProcessor$ProcessorSm;->mRootNode:Landroidx/emoji2/text/MetadataRepo$Node;

    iput-object v1, p0, Landroidx/emoji2/text/EmojiProcessor$ProcessorSm;->mCurrentNode:Landroidx/emoji2/text/MetadataRepo$Node;

    .line 627
    const/4 v1, 0x0

    iput v1, p0, Landroidx/emoji2/text/EmojiProcessor$ProcessorSm;->mCurrentDepth:I

    .line 628
    return v0
.end method

.method private shouldUseEmojiPresentationStyleForSingleCodepoint()Z
    .locals 4

    .line 658
    iget-object v0, p0, Landroidx/emoji2/text/EmojiProcessor$ProcessorSm;->mCurrentNode:Landroidx/emoji2/text/MetadataRepo$Node;

    invoke-virtual {v0}, Landroidx/emoji2/text/MetadataRepo$Node;->getData()Landroidx/emoji2/text/EmojiMetadata;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/emoji2/text/EmojiMetadata;->isDefaultEmoji()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 660
    return v1

    .line 662
    :cond_0
    iget v0, p0, Landroidx/emoji2/text/EmojiProcessor$ProcessorSm;->mLastCodepoint:I

    invoke-static {v0}, Landroidx/emoji2/text/EmojiProcessor$ProcessorSm;->isEmojiStyle(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 664
    return v1

    .line 666
    :cond_1
    iget-boolean v0, p0, Landroidx/emoji2/text/EmojiProcessor$ProcessorSm;->mUseEmojiAsDefaultStyle:Z

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    .line 669
    iget-object v0, p0, Landroidx/emoji2/text/EmojiProcessor$ProcessorSm;->mEmojiAsDefaultStyleExceptions:[I

    if-nez v0, :cond_2

    .line 670
    return v1

    .line 672
    :cond_2
    iget-object v0, p0, Landroidx/emoji2/text/EmojiProcessor$ProcessorSm;->mCurrentNode:Landroidx/emoji2/text/MetadataRepo$Node;

    invoke-virtual {v0}, Landroidx/emoji2/text/MetadataRepo$Node;->getData()Landroidx/emoji2/text/EmojiMetadata;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroidx/emoji2/text/EmojiMetadata;->getCodepointAt(I)I

    move-result v0

    .line 673
    .local v0, "codepoint":I
    iget-object v3, p0, Landroidx/emoji2/text/EmojiProcessor$ProcessorSm;->mEmojiAsDefaultStyleExceptions:[I

    invoke-static {v3, v0}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v3

    .line 674
    .local v3, "index":I
    if-gez v3, :cond_3

    .line 676
    return v1

    .line 679
    .end local v0    # "codepoint":I
    .end local v3    # "index":I
    :cond_3
    return v2
.end method


# virtual methods
.method check(I)I
    .locals 3
    .param p1, "codePoint"    # I

    .line 575
    iget-object v0, p0, Landroidx/emoji2/text/EmojiProcessor$ProcessorSm;->mCurrentNode:Landroidx/emoji2/text/MetadataRepo$Node;

    invoke-virtual {v0, p1}, Landroidx/emoji2/text/MetadataRepo$Node;->get(I)Landroidx/emoji2/text/MetadataRepo$Node;

    move-result-object v0

    .line 576
    .local v0, "node":Landroidx/emoji2/text/MetadataRepo$Node;
    iget v1, p0, Landroidx/emoji2/text/EmojiProcessor$ProcessorSm;->mState:I

    const/4 v2, 0x1

    packed-switch v1, :pswitch_data_0

    .line 608
    if-nez v0, :cond_6

    .line 609
    invoke-direct {p0}, Landroidx/emoji2/text/EmojiProcessor$ProcessorSm;->reset()I

    move-result v1

    .local v1, "action":I
    goto :goto_0

    .line 578
    .end local v1    # "action":I
    :pswitch_0
    if-eqz v0, :cond_0

    .line 579
    iput-object v0, p0, Landroidx/emoji2/text/EmojiProcessor$ProcessorSm;->mCurrentNode:Landroidx/emoji2/text/MetadataRepo$Node;

    .line 580
    iget v1, p0, Landroidx/emoji2/text/EmojiProcessor$ProcessorSm;->mCurrentDepth:I

    add-int/2addr v1, v2

    iput v1, p0, Landroidx/emoji2/text/EmojiProcessor$ProcessorSm;->mCurrentDepth:I

    .line 581
    const/4 v1, 0x2

    .restart local v1    # "action":I
    goto :goto_0

    .line 583
    .end local v1    # "action":I
    :cond_0
    invoke-static {p1}, Landroidx/emoji2/text/EmojiProcessor$ProcessorSm;->isTextStyle(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 584
    invoke-direct {p0}, Landroidx/emoji2/text/EmojiProcessor$ProcessorSm;->reset()I

    move-result v1

    .restart local v1    # "action":I
    goto :goto_0

    .line 585
    .end local v1    # "action":I
    :cond_1
    invoke-static {p1}, Landroidx/emoji2/text/EmojiProcessor$ProcessorSm;->isEmojiStyle(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 586
    const/4 v1, 0x2

    .restart local v1    # "action":I
    goto :goto_0

    .line 587
    .end local v1    # "action":I
    :cond_2
    iget-object v1, p0, Landroidx/emoji2/text/EmojiProcessor$ProcessorSm;->mCurrentNode:Landroidx/emoji2/text/MetadataRepo$Node;

    invoke-virtual {v1}, Landroidx/emoji2/text/MetadataRepo$Node;->getData()Landroidx/emoji2/text/EmojiMetadata;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 588
    iget v1, p0, Landroidx/emoji2/text/EmojiProcessor$ProcessorSm;->mCurrentDepth:I

    if-ne v1, v2, :cond_4

    .line 589
    invoke-direct {p0}, Landroidx/emoji2/text/EmojiProcessor$ProcessorSm;->shouldUseEmojiPresentationStyleForSingleCodepoint()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 590
    iget-object v1, p0, Landroidx/emoji2/text/EmojiProcessor$ProcessorSm;->mCurrentNode:Landroidx/emoji2/text/MetadataRepo$Node;

    iput-object v1, p0, Landroidx/emoji2/text/EmojiProcessor$ProcessorSm;->mFlushNode:Landroidx/emoji2/text/MetadataRepo$Node;

    .line 591
    const/4 v1, 0x3

    .line 592
    .restart local v1    # "action":I
    invoke-direct {p0}, Landroidx/emoji2/text/EmojiProcessor$ProcessorSm;->reset()I

    goto :goto_0

    .line 594
    .end local v1    # "action":I
    :cond_3
    invoke-direct {p0}, Landroidx/emoji2/text/EmojiProcessor$ProcessorSm;->reset()I

    move-result v1

    .restart local v1    # "action":I
    goto :goto_0

    .line 597
    .end local v1    # "action":I
    :cond_4
    iget-object v1, p0, Landroidx/emoji2/text/EmojiProcessor$ProcessorSm;->mCurrentNode:Landroidx/emoji2/text/MetadataRepo$Node;

    iput-object v1, p0, Landroidx/emoji2/text/EmojiProcessor$ProcessorSm;->mFlushNode:Landroidx/emoji2/text/MetadataRepo$Node;

    .line 598
    const/4 v1, 0x3

    .line 599
    .restart local v1    # "action":I
    invoke-direct {p0}, Landroidx/emoji2/text/EmojiProcessor$ProcessorSm;->reset()I

    goto :goto_0

    .line 602
    .end local v1    # "action":I
    :cond_5
    invoke-direct {p0}, Landroidx/emoji2/text/EmojiProcessor$ProcessorSm;->reset()I

    move-result v1

    .line 605
    .restart local v1    # "action":I
    goto :goto_0

    .line 611
    .end local v1    # "action":I
    :cond_6
    const/4 v1, 0x2

    iput v1, p0, Landroidx/emoji2/text/EmojiProcessor$ProcessorSm;->mState:I

    .line 612
    iput-object v0, p0, Landroidx/emoji2/text/EmojiProcessor$ProcessorSm;->mCurrentNode:Landroidx/emoji2/text/MetadataRepo$Node;

    .line 613
    iput v2, p0, Landroidx/emoji2/text/EmojiProcessor$ProcessorSm;->mCurrentDepth:I

    .line 614
    const/4 v1, 0x2

    .line 619
    .restart local v1    # "action":I
    :goto_0
    iput p1, p0, Landroidx/emoji2/text/EmojiProcessor$ProcessorSm;->mLastCodepoint:I

    .line 620
    return v1

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method getCurrentMetadata()Landroidx/emoji2/text/EmojiMetadata;
    .locals 1

    .line 642
    iget-object v0, p0, Landroidx/emoji2/text/EmojiProcessor$ProcessorSm;->mCurrentNode:Landroidx/emoji2/text/MetadataRepo$Node;

    invoke-virtual {v0}, Landroidx/emoji2/text/MetadataRepo$Node;->getData()Landroidx/emoji2/text/EmojiMetadata;

    move-result-object v0

    return-object v0
.end method

.method getFlushMetadata()Landroidx/emoji2/text/EmojiMetadata;
    .locals 1

    .line 635
    iget-object v0, p0, Landroidx/emoji2/text/EmojiProcessor$ProcessorSm;->mFlushNode:Landroidx/emoji2/text/MetadataRepo$Node;

    invoke-virtual {v0}, Landroidx/emoji2/text/MetadataRepo$Node;->getData()Landroidx/emoji2/text/EmojiMetadata;

    move-result-object v0

    return-object v0
.end method

.method isInFlushableState()Z
    .locals 3

    .line 653
    iget v0, p0, Landroidx/emoji2/text/EmojiProcessor$ProcessorSm;->mState:I

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Landroidx/emoji2/text/EmojiProcessor$ProcessorSm;->mCurrentNode:Landroidx/emoji2/text/MetadataRepo$Node;

    invoke-virtual {v0}, Landroidx/emoji2/text/MetadataRepo$Node;->getData()Landroidx/emoji2/text/EmojiMetadata;

    move-result-object v0

    if-eqz v0, :cond_1

    iget v0, p0, Landroidx/emoji2/text/EmojiProcessor$ProcessorSm;->mCurrentDepth:I

    if-gt v0, v1, :cond_0

    .line 654
    invoke-direct {p0}, Landroidx/emoji2/text/EmojiProcessor$ProcessorSm;->shouldUseEmojiPresentationStyleForSingleCodepoint()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 653
    :goto_0
    return v1
.end method
