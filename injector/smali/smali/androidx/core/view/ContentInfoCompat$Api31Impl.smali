.class final Landroidx/core/view/ContentInfoCompat$Api31Impl;
.super Ljava/lang/Object;
.source "ContentInfoCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/view/ContentInfoCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Api31Impl"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 333
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static partition(Landroid/view/ContentInfo;Ljava/util/function/Predicate;)Landroid/util/Pair;
    .locals 5
    .param p0, "payload"    # Landroid/view/ContentInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ContentInfo;",
            "Ljava/util/function/Predicate<",
            "Landroid/content/ClipData$Item;",
            ">;)",
            "Landroid/util/Pair<",
            "Landroid/view/ContentInfo;",
            "Landroid/view/ContentInfo;",
            ">;"
        }
    .end annotation

    .line 339
    .local p1, "itemPredicate":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Landroid/content/ClipData$Item;>;"
    invoke-virtual {p0}, Landroid/view/ContentInfo;->getClip()Landroid/content/ClipData;

    move-result-object v0

    .line 340
    .local v0, "clip":Landroid/content/ClipData;
    invoke-virtual {v0}, Landroid/content/ClipData;->getItemCount()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v1, v3, :cond_2

    .line 341
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v1

    .line 342
    .local v1, "matched":Z
    if-eqz v1, :cond_0

    move-object v3, p0

    goto :goto_0

    :cond_0
    move-object v3, v2

    :goto_0
    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    move-object v2, p0

    :goto_1
    invoke-static {v3, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v2

    return-object v2

    .line 344
    .end local v1    # "matched":Z
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Landroidx/core/view/ContentInfoCompat$Api31Impl$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1}, Landroidx/core/view/ContentInfoCompat$Api31Impl$$ExternalSyntheticLambda0;-><init>(Ljava/util/function/Predicate;)V

    invoke-static {v0, v1}, Landroidx/core/view/ContentInfoCompat;->partition(Landroid/content/ClipData;Landroidx/core/util/Predicate;)Landroid/util/Pair;

    move-result-object v1

    .line 345
    .local v1, "split":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/content/ClipData;Landroid/content/ClipData;>;"
    iget-object v3, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    if-nez v3, :cond_3

    .line 346
    invoke-static {v2, p0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v2

    return-object v2

    .line 347
    :cond_3
    iget-object v3, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    if-nez v3, :cond_4

    .line 348
    invoke-static {p0, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v2

    return-object v2

    .line 350
    :cond_4
    new-instance v2, Landroid/view/ContentInfo$Builder;

    invoke-direct {v2, p0}, Landroid/view/ContentInfo$Builder;-><init>(Landroid/view/ContentInfo;)V

    iget-object v3, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Landroid/content/ClipData;

    .line 351
    invoke-virtual {v2, v3}, Landroid/view/ContentInfo$Builder;->setClip(Landroid/content/ClipData;)Landroid/view/ContentInfo$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ContentInfo$Builder;->build()Landroid/view/ContentInfo;

    move-result-object v2

    new-instance v3, Landroid/view/ContentInfo$Builder;

    invoke-direct {v3, p0}, Landroid/view/ContentInfo$Builder;-><init>(Landroid/view/ContentInfo;)V

    iget-object v4, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Landroid/content/ClipData;

    .line 352
    invoke-virtual {v3, v4}, Landroid/view/ContentInfo$Builder;->setClip(Landroid/content/ClipData;)Landroid/view/ContentInfo$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ContentInfo$Builder;->build()Landroid/view/ContentInfo;

    move-result-object v3

    .line 350
    invoke-static {v2, v3}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v2

    return-object v2
.end method
