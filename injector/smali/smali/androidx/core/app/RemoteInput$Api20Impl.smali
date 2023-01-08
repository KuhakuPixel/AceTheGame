.class Landroidx/core/app/RemoteInput$Api20Impl;
.super Ljava/lang/Object;
.source "RemoteInput.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/app/RemoteInput;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Api20Impl"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 631
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 633
    return-void
.end method

.method static addResultsToIntent(Ljava/lang/Object;Landroid/content/Intent;Landroid/os/Bundle;)V
    .locals 1
    .param p0, "remoteInputs"    # Ljava/lang/Object;
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "results"    # Landroid/os/Bundle;

    .line 642
    move-object v0, p0

    check-cast v0, [Landroid/app/RemoteInput;

    invoke-static {v0, p1, p2}, Landroid/app/RemoteInput;->addResultsToIntent([Landroid/app/RemoteInput;Landroid/content/Intent;Landroid/os/Bundle;)V

    .line 644
    return-void
.end method

.method public static fromCompat(Landroidx/core/app/RemoteInput;)Landroid/app/RemoteInput;
    .locals 5
    .param p0, "src"    # Landroidx/core/app/RemoteInput;

    .line 669
    new-instance v0, Landroid/app/RemoteInput$Builder;

    .line 670
    invoke-virtual {p0}, Landroidx/core/app/RemoteInput;->getResultKey()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/RemoteInput$Builder;-><init>(Ljava/lang/String;)V

    .line 671
    invoke-virtual {p0}, Landroidx/core/app/RemoteInput;->getLabel()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/RemoteInput$Builder;->setLabel(Ljava/lang/CharSequence;)Landroid/app/RemoteInput$Builder;

    move-result-object v0

    .line 672
    invoke-virtual {p0}, Landroidx/core/app/RemoteInput;->getChoices()[Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/RemoteInput$Builder;->setChoices([Ljava/lang/CharSequence;)Landroid/app/RemoteInput$Builder;

    move-result-object v0

    .line 673
    invoke-virtual {p0}, Landroidx/core/app/RemoteInput;->getAllowFreeFormInput()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/RemoteInput$Builder;->setAllowFreeFormInput(Z)Landroid/app/RemoteInput$Builder;

    move-result-object v0

    .line 674
    invoke-virtual {p0}, Landroidx/core/app/RemoteInput;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/RemoteInput$Builder;->addExtras(Landroid/os/Bundle;)Landroid/app/RemoteInput$Builder;

    move-result-object v0

    .line 675
    .local v0, "builder":Landroid/app/RemoteInput$Builder;
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-lt v1, v2, :cond_0

    .line 676
    invoke-virtual {p0}, Landroidx/core/app/RemoteInput;->getAllowedDataTypes()Ljava/util/Set;

    move-result-object v1

    .line 677
    .local v1, "allowedDataTypes":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz v1, :cond_0

    .line 678
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 679
    .local v3, "allowedDataType":Ljava/lang/String;
    const/4 v4, 0x1

    invoke-static {v0, v3, v4}, Landroidx/core/app/RemoteInput$Api26Impl;->setAllowDataType(Landroid/app/RemoteInput$Builder;Ljava/lang/String;Z)Landroid/app/RemoteInput$Builder;

    .line 680
    .end local v3    # "allowedDataType":Ljava/lang/String;
    goto :goto_0

    .line 683
    .end local v1    # "allowedDataTypes":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1d

    if-lt v1, v2, :cond_1

    .line 684
    invoke-virtual {p0}, Landroidx/core/app/RemoteInput;->getEditChoicesBeforeSending()I

    move-result v1

    invoke-static {v0, v1}, Landroidx/core/app/RemoteInput$Api29Impl;->setEditChoicesBeforeSending(Landroid/app/RemoteInput$Builder;I)Landroid/app/RemoteInput$Builder;

    .line 686
    :cond_1
    invoke-virtual {v0}, Landroid/app/RemoteInput$Builder;->build()Landroid/app/RemoteInput;

    move-result-object v1

    return-object v1
.end method

.method static fromPlatform(Ljava/lang/Object;)Landroidx/core/app/RemoteInput;
    .locals 6
    .param p0, "srcObj"    # Ljava/lang/Object;

    .line 647
    move-object v0, p0

    check-cast v0, Landroid/app/RemoteInput;

    .line 648
    .local v0, "src":Landroid/app/RemoteInput;
    new-instance v1, Landroidx/core/app/RemoteInput$Builder;

    .line 649
    invoke-virtual {v0}, Landroid/app/RemoteInput;->getResultKey()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroidx/core/app/RemoteInput$Builder;-><init>(Ljava/lang/String;)V

    .line 650
    invoke-virtual {v0}, Landroid/app/RemoteInput;->getLabel()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/core/app/RemoteInput$Builder;->setLabel(Ljava/lang/CharSequence;)Landroidx/core/app/RemoteInput$Builder;

    move-result-object v1

    .line 651
    invoke-virtual {v0}, Landroid/app/RemoteInput;->getChoices()[Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/core/app/RemoteInput$Builder;->setChoices([Ljava/lang/CharSequence;)Landroidx/core/app/RemoteInput$Builder;

    move-result-object v1

    .line 652
    invoke-virtual {v0}, Landroid/app/RemoteInput;->getAllowFreeFormInput()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroidx/core/app/RemoteInput$Builder;->setAllowFreeFormInput(Z)Landroidx/core/app/RemoteInput$Builder;

    move-result-object v1

    .line 653
    invoke-virtual {v0}, Landroid/app/RemoteInput;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/core/app/RemoteInput$Builder;->addExtras(Landroid/os/Bundle;)Landroidx/core/app/RemoteInput$Builder;

    move-result-object v1

    .line 654
    .local v1, "builder":Landroidx/core/app/RemoteInput$Builder;
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1a

    if-lt v2, v3, :cond_0

    .line 655
    invoke-static {v0}, Landroidx/core/app/RemoteInput$Api26Impl;->getAllowedDataTypes(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v2

    .line 656
    .local v2, "allowedDataTypes":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz v2, :cond_0

    .line 657
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 658
    .local v4, "allowedDataType":Ljava/lang/String;
    const/4 v5, 0x1

    invoke-virtual {v1, v4, v5}, Landroidx/core/app/RemoteInput$Builder;->setAllowDataType(Ljava/lang/String;Z)Landroidx/core/app/RemoteInput$Builder;

    .line 659
    .end local v4    # "allowedDataType":Ljava/lang/String;
    goto :goto_0

    .line 662
    .end local v2    # "allowedDataTypes":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_0
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1d

    if-lt v2, v3, :cond_1

    .line 663
    invoke-static {v0}, Landroidx/core/app/RemoteInput$Api29Impl;->getEditChoicesBeforeSending(Ljava/lang/Object;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroidx/core/app/RemoteInput$Builder;->setEditChoicesBeforeSending(I)Landroidx/core/app/RemoteInput$Builder;

    .line 665
    :cond_1
    invoke-virtual {v1}, Landroidx/core/app/RemoteInput$Builder;->build()Landroidx/core/app/RemoteInput;

    move-result-object v2

    return-object v2
.end method

.method static getResultsFromIntent(Landroid/content/Intent;)Landroid/os/Bundle;
    .locals 1
    .param p0, "intent"    # Landroid/content/Intent;

    .line 637
    invoke-static {p0}, Landroid/app/RemoteInput;->getResultsFromIntent(Landroid/content/Intent;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method
