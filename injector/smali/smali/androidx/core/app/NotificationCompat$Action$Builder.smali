.class public final Landroidx/core/app/NotificationCompat$Action$Builder;
.super Ljava/lang/Object;
.source "NotificationCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/app/NotificationCompat$Action;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private mAllowGeneratedReplies:Z

.field private mAuthenticationRequired:Z

.field private final mExtras:Landroid/os/Bundle;

.field private final mIcon:Landroidx/core/graphics/drawable/IconCompat;

.field private final mIntent:Landroid/app/PendingIntent;

.field private mIsContextual:Z

.field private mRemoteInputs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/core/app/RemoteInput;",
            ">;"
        }
    .end annotation
.end field

.field private mSemanticAction:I

.field private mShowsUserInterface:Z

.field private final mTitle:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V
    .locals 12
    .param p1, "icon"    # I
    .param p2, "title"    # Ljava/lang/CharSequence;
    .param p3, "intent"    # Landroid/app/PendingIntent;

    .line 4845
    const/4 v0, 0x0

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, ""

    invoke-static {v0, v1, p1}, Landroidx/core/graphics/drawable/IconCompat;->createWithResource(Landroid/content/res/Resources;Ljava/lang/String;I)Landroidx/core/graphics/drawable/IconCompat;

    move-result-object v0

    :goto_0
    move-object v2, v0

    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v1, p0

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v1 .. v11}, Landroidx/core/app/NotificationCompat$Action$Builder;-><init>(Landroidx/core/graphics/drawable/IconCompat;Ljava/lang/CharSequence;Landroid/app/PendingIntent;Landroid/os/Bundle;[Landroidx/core/app/RemoteInput;ZIZZZ)V

    .line 4853
    return-void
.end method

.method public constructor <init>(Landroidx/core/app/NotificationCompat$Action;)V
    .locals 11
    .param p1, "action"    # Landroidx/core/app/NotificationCompat$Action;

    .line 4861
    invoke-virtual {p1}, Landroidx/core/app/NotificationCompat$Action;->getIconCompat()Landroidx/core/graphics/drawable/IconCompat;

    move-result-object v1

    iget-object v2, p1, Landroidx/core/app/NotificationCompat$Action;->title:Ljava/lang/CharSequence;

    iget-object v3, p1, Landroidx/core/app/NotificationCompat$Action;->actionIntent:Landroid/app/PendingIntent;

    new-instance v4, Landroid/os/Bundle;

    iget-object v0, p1, Landroidx/core/app/NotificationCompat$Action;->mExtras:Landroid/os/Bundle;

    invoke-direct {v4, v0}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 4863
    invoke-virtual {p1}, Landroidx/core/app/NotificationCompat$Action;->getRemoteInputs()[Landroidx/core/app/RemoteInput;

    move-result-object v5

    invoke-virtual {p1}, Landroidx/core/app/NotificationCompat$Action;->getAllowGeneratedReplies()Z

    move-result v6

    .line 4864
    invoke-virtual {p1}, Landroidx/core/app/NotificationCompat$Action;->getSemanticAction()I

    move-result v7

    iget-boolean v8, p1, Landroidx/core/app/NotificationCompat$Action;->mShowsUserInterface:Z

    .line 4865
    invoke-virtual {p1}, Landroidx/core/app/NotificationCompat$Action;->isContextual()Z

    move-result v9

    invoke-virtual {p1}, Landroidx/core/app/NotificationCompat$Action;->isAuthenticationRequired()Z

    move-result v10

    .line 4861
    move-object v0, p0

    invoke-direct/range {v0 .. v10}, Landroidx/core/app/NotificationCompat$Action$Builder;-><init>(Landroidx/core/graphics/drawable/IconCompat;Ljava/lang/CharSequence;Landroid/app/PendingIntent;Landroid/os/Bundle;[Landroidx/core/app/RemoteInput;ZIZZZ)V

    .line 4866
    return-void
.end method

.method public constructor <init>(Landroidx/core/graphics/drawable/IconCompat;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V
    .locals 11
    .param p1, "icon"    # Landroidx/core/graphics/drawable/IconCompat;
    .param p2, "title"    # Ljava/lang/CharSequence;
    .param p3, "intent"    # Landroid/app/PendingIntent;

    .line 4834
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v10}, Landroidx/core/app/NotificationCompat$Action$Builder;-><init>(Landroidx/core/graphics/drawable/IconCompat;Ljava/lang/CharSequence;Landroid/app/PendingIntent;Landroid/os/Bundle;[Landroidx/core/app/RemoteInput;ZIZZZ)V

    .line 4836
    return-void
.end method

.method private constructor <init>(Landroidx/core/graphics/drawable/IconCompat;Ljava/lang/CharSequence;Landroid/app/PendingIntent;Landroid/os/Bundle;[Landroidx/core/app/RemoteInput;ZIZZZ)V
    .locals 2
    .param p1, "icon"    # Landroidx/core/graphics/drawable/IconCompat;
    .param p2, "title"    # Ljava/lang/CharSequence;
    .param p3, "intent"    # Landroid/app/PendingIntent;
    .param p4, "extras"    # Landroid/os/Bundle;
    .param p5, "remoteInputs"    # [Landroidx/core/app/RemoteInput;
    .param p6, "allowGeneratedReplies"    # Z
    .param p7, "semanticAction"    # I
    .param p8, "showsUserInterface"    # Z
    .param p9, "isContextual"    # Z
    .param p10, "authRequired"    # Z

    .line 4872
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4774
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/core/app/NotificationCompat$Action$Builder;->mAllowGeneratedReplies:Z

    .line 4778
    iput-boolean v0, p0, Landroidx/core/app/NotificationCompat$Action$Builder;->mShowsUserInterface:Z

    .line 4873
    iput-object p1, p0, Landroidx/core/app/NotificationCompat$Action$Builder;->mIcon:Landroidx/core/graphics/drawable/IconCompat;

    .line 4874
    invoke-static {p2}, Landroidx/core/app/NotificationCompat$Builder;->limitCharSequenceLength(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroidx/core/app/NotificationCompat$Action$Builder;->mTitle:Ljava/lang/CharSequence;

    .line 4875
    iput-object p3, p0, Landroidx/core/app/NotificationCompat$Action$Builder;->mIntent:Landroid/app/PendingIntent;

    .line 4876
    iput-object p4, p0, Landroidx/core/app/NotificationCompat$Action$Builder;->mExtras:Landroid/os/Bundle;

    .line 4877
    if-nez p5, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    .line 4878
    invoke-static {p5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    :goto_0
    iput-object v0, p0, Landroidx/core/app/NotificationCompat$Action$Builder;->mRemoteInputs:Ljava/util/ArrayList;

    .line 4879
    iput-boolean p6, p0, Landroidx/core/app/NotificationCompat$Action$Builder;->mAllowGeneratedReplies:Z

    .line 4880
    iput p7, p0, Landroidx/core/app/NotificationCompat$Action$Builder;->mSemanticAction:I

    .line 4881
    iput-boolean p8, p0, Landroidx/core/app/NotificationCompat$Action$Builder;->mShowsUserInterface:Z

    .line 4882
    iput-boolean p9, p0, Landroidx/core/app/NotificationCompat$Action$Builder;->mIsContextual:Z

    .line 4883
    iput-boolean p10, p0, Landroidx/core/app/NotificationCompat$Action$Builder;->mAuthenticationRequired:Z

    .line 4884
    return-void
.end method

.method private checkContextualActionNullFields()V
    .locals 2

    .line 5005
    iget-boolean v0, p0, Landroidx/core/app/NotificationCompat$Action$Builder;->mIsContextual:Z

    if-nez v0, :cond_0

    return-void

    .line 5007
    :cond_0
    iget-object v0, p0, Landroidx/core/app/NotificationCompat$Action$Builder;->mIntent:Landroid/app/PendingIntent;

    if-eqz v0, :cond_1

    .line 5011
    return-void

    .line 5008
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Contextual Actions must contain a valid PendingIntent"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static fromAndroidAction(Landroid/app/Notification$Action;)Landroidx/core/app/NotificationCompat$Action$Builder;
    .locals 6
    .param p0, "action"    # Landroid/app/Notification$Action;

    .line 4792
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/app/Notification$Action;->getIcon()Landroid/graphics/drawable/Icon;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4793
    invoke-virtual {p0}, Landroid/app/Notification$Action;->getIcon()Landroid/graphics/drawable/Icon;

    move-result-object v0

    invoke-static {v0}, Landroidx/core/graphics/drawable/IconCompat;->createFromIcon(Landroid/graphics/drawable/Icon;)Landroidx/core/graphics/drawable/IconCompat;

    move-result-object v0

    .line 4794
    .local v0, "iconCompat":Landroidx/core/graphics/drawable/IconCompat;
    new-instance v1, Landroidx/core/app/NotificationCompat$Action$Builder;

    iget-object v2, p0, Landroid/app/Notification$Action;->title:Ljava/lang/CharSequence;

    iget-object v3, p0, Landroid/app/Notification$Action;->actionIntent:Landroid/app/PendingIntent;

    invoke-direct {v1, v0, v2, v3}, Landroidx/core/app/NotificationCompat$Action$Builder;-><init>(Landroidx/core/graphics/drawable/IconCompat;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    move-object v0, v1

    .line 4796
    .local v0, "builder":Landroidx/core/app/NotificationCompat$Action$Builder;
    goto :goto_0

    .line 4797
    .end local v0    # "builder":Landroidx/core/app/NotificationCompat$Action$Builder;
    :cond_0
    new-instance v0, Landroidx/core/app/NotificationCompat$Action$Builder;

    iget v1, p0, Landroid/app/Notification$Action;->icon:I

    iget-object v2, p0, Landroid/app/Notification$Action;->title:Ljava/lang/CharSequence;

    iget-object v3, p0, Landroid/app/Notification$Action;->actionIntent:Landroid/app/PendingIntent;

    invoke-direct {v0, v1, v2, v3}, Landroidx/core/app/NotificationCompat$Action$Builder;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 4800
    .restart local v0    # "builder":Landroidx/core/app/NotificationCompat$Action$Builder;
    :goto_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x14

    if-lt v1, v2, :cond_1

    .line 4801
    invoke-virtual {p0}, Landroid/app/Notification$Action;->getRemoteInputs()[Landroid/app/RemoteInput;

    move-result-object v1

    .line 4802
    .local v1, "remoteInputs":[Landroid/app/RemoteInput;
    if-eqz v1, :cond_1

    array-length v2, v1

    if-eqz v2, :cond_1

    .line 4803
    array-length v2, v1

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    .line 4804
    .local v4, "remoteInput":Landroid/app/RemoteInput;
    invoke-static {v4}, Landroidx/core/app/RemoteInput;->fromPlatform(Landroid/app/RemoteInput;)Landroidx/core/app/RemoteInput;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroidx/core/app/NotificationCompat$Action$Builder;->addRemoteInput(Landroidx/core/app/RemoteInput;)Landroidx/core/app/NotificationCompat$Action$Builder;

    .line 4803
    .end local v4    # "remoteInput":Landroid/app/RemoteInput;
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 4808
    .end local v1    # "remoteInputs":[Landroid/app/RemoteInput;
    :cond_1
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x18

    if-lt v1, v2, :cond_2

    .line 4809
    invoke-virtual {p0}, Landroid/app/Notification$Action;->getAllowGeneratedReplies()Z

    move-result v1

    iput-boolean v1, v0, Landroidx/core/app/NotificationCompat$Action$Builder;->mAllowGeneratedReplies:Z

    .line 4811
    :cond_2
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1c

    if-lt v1, v2, :cond_3

    .line 4812
    invoke-virtual {p0}, Landroid/app/Notification$Action;->getSemanticAction()I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/core/app/NotificationCompat$Action$Builder;->setSemanticAction(I)Landroidx/core/app/NotificationCompat$Action$Builder;

    .line 4814
    :cond_3
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1d

    if-lt v1, v2, :cond_4

    .line 4815
    invoke-virtual {p0}, Landroid/app/Notification$Action;->isContextual()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/core/app/NotificationCompat$Action$Builder;->setContextual(Z)Landroidx/core/app/NotificationCompat$Action$Builder;

    .line 4817
    :cond_4
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1f

    if-lt v1, v2, :cond_5

    .line 4818
    invoke-virtual {p0}, Landroid/app/Notification$Action;->isAuthenticationRequired()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/core/app/NotificationCompat$Action$Builder;->setAuthenticationRequired(Z)Landroidx/core/app/NotificationCompat$Action$Builder;

    .line 4820
    :cond_5
    return-object v0
.end method


# virtual methods
.method public addExtras(Landroid/os/Bundle;)Landroidx/core/app/NotificationCompat$Action$Builder;
    .locals 1
    .param p1, "extras"    # Landroid/os/Bundle;

    .line 4894
    if-eqz p1, :cond_0

    .line 4895
    iget-object v0, p0, Landroidx/core/app/NotificationCompat$Action$Builder;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 4897
    :cond_0
    return-object p0
.end method

.method public addRemoteInput(Landroidx/core/app/RemoteInput;)Landroidx/core/app/NotificationCompat$Action$Builder;
    .locals 1
    .param p1, "remoteInput"    # Landroidx/core/app/RemoteInput;

    .line 4917
    iget-object v0, p0, Landroidx/core/app/NotificationCompat$Action$Builder;->mRemoteInputs:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 4918
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/core/app/NotificationCompat$Action$Builder;->mRemoteInputs:Ljava/util/ArrayList;

    .line 4920
    :cond_0
    if-eqz p1, :cond_1

    .line 4921
    iget-object v0, p0, Landroidx/core/app/NotificationCompat$Action$Builder;->mRemoteInputs:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4923
    :cond_1
    return-object p0
.end method

.method public build()Landroidx/core/app/NotificationCompat$Action;
    .locals 17

    .line 5021
    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p0}, Landroidx/core/app/NotificationCompat$Action$Builder;->checkContextualActionNullFields()V

    .line 5023
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 5024
    .local v1, "dataOnlyInputs":Ljava/util/List;, "Ljava/util/List<Landroidx/core/app/RemoteInput;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 5025
    .local v2, "textInputs":Ljava/util/List;, "Ljava/util/List<Landroidx/core/app/RemoteInput;>;"
    iget-object v3, v0, Landroidx/core/app/NotificationCompat$Action$Builder;->mRemoteInputs:Ljava/util/ArrayList;

    if-eqz v3, :cond_1

    .line 5026
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/core/app/RemoteInput;

    .line 5027
    .local v4, "input":Landroidx/core/app/RemoteInput;
    invoke-virtual {v4}, Landroidx/core/app/RemoteInput;->isDataOnly()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 5028
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 5030
    :cond_0
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5032
    .end local v4    # "input":Landroidx/core/app/RemoteInput;
    :goto_1
    goto :goto_0

    .line 5034
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_2

    .line 5035
    move-object v11, v4

    goto :goto_2

    :cond_2
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [Landroidx/core/app/RemoteInput;

    invoke-interface {v1, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroidx/core/app/RemoteInput;

    move-object v11, v3

    .line 5036
    .local v11, "dataOnlyInputsArr":[Landroidx/core/app/RemoteInput;
    :goto_2
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 5037
    goto :goto_3

    :cond_3
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [Landroidx/core/app/RemoteInput;

    invoke-interface {v2, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, [Landroidx/core/app/RemoteInput;

    :goto_3
    move-object v10, v4

    .line 5038
    .local v10, "textInputsArr":[Landroidx/core/app/RemoteInput;
    new-instance v3, Landroidx/core/app/NotificationCompat$Action;

    iget-object v6, v0, Landroidx/core/app/NotificationCompat$Action$Builder;->mIcon:Landroidx/core/graphics/drawable/IconCompat;

    iget-object v7, v0, Landroidx/core/app/NotificationCompat$Action$Builder;->mTitle:Ljava/lang/CharSequence;

    iget-object v8, v0, Landroidx/core/app/NotificationCompat$Action$Builder;->mIntent:Landroid/app/PendingIntent;

    iget-object v9, v0, Landroidx/core/app/NotificationCompat$Action$Builder;->mExtras:Landroid/os/Bundle;

    iget-boolean v12, v0, Landroidx/core/app/NotificationCompat$Action$Builder;->mAllowGeneratedReplies:Z

    iget v13, v0, Landroidx/core/app/NotificationCompat$Action$Builder;->mSemanticAction:I

    iget-boolean v14, v0, Landroidx/core/app/NotificationCompat$Action$Builder;->mShowsUserInterface:Z

    iget-boolean v15, v0, Landroidx/core/app/NotificationCompat$Action$Builder;->mIsContextual:Z

    iget-boolean v4, v0, Landroidx/core/app/NotificationCompat$Action$Builder;->mAuthenticationRequired:Z

    move-object v5, v3

    move/from16 v16, v4

    invoke-direct/range {v5 .. v16}, Landroidx/core/app/NotificationCompat$Action;-><init>(Landroidx/core/graphics/drawable/IconCompat;Ljava/lang/CharSequence;Landroid/app/PendingIntent;Landroid/os/Bundle;[Landroidx/core/app/RemoteInput;[Landroidx/core/app/RemoteInput;ZIZZZ)V

    return-object v3
.end method

.method public extend(Landroidx/core/app/NotificationCompat$Action$Extender;)Landroidx/core/app/NotificationCompat$Action$Builder;
    .locals 0
    .param p1, "extender"    # Landroidx/core/app/NotificationCompat$Action$Extender;

    .line 4996
    invoke-interface {p1, p0}, Landroidx/core/app/NotificationCompat$Action$Extender;->extend(Landroidx/core/app/NotificationCompat$Action$Builder;)Landroidx/core/app/NotificationCompat$Action$Builder;

    .line 4997
    return-object p0
.end method

.method public getExtras()Landroid/os/Bundle;
    .locals 1

    .line 4906
    iget-object v0, p0, Landroidx/core/app/NotificationCompat$Action$Builder;->mExtras:Landroid/os/Bundle;

    return-object v0
.end method

.method public setAllowGeneratedReplies(Z)Landroidx/core/app/NotificationCompat$Action$Builder;
    .locals 0
    .param p1, "allowGeneratedReplies"    # Z

    .line 4936
    iput-boolean p1, p0, Landroidx/core/app/NotificationCompat$Action$Builder;->mAllowGeneratedReplies:Z

    .line 4937
    return-object p0
.end method

.method public setAuthenticationRequired(Z)Landroidx/core/app/NotificationCompat$Action$Builder;
    .locals 0
    .param p1, "authenticationRequired"    # Z

    .line 4974
    iput-boolean p1, p0, Landroidx/core/app/NotificationCompat$Action$Builder;->mAuthenticationRequired:Z

    .line 4975
    return-object p0
.end method

.method public setContextual(Z)Landroidx/core/app/NotificationCompat$Action$Builder;
    .locals 0
    .param p1, "isContextual"    # Z

    .line 4959
    iput-boolean p1, p0, Landroidx/core/app/NotificationCompat$Action$Builder;->mIsContextual:Z

    .line 4960
    return-object p0
.end method

.method public setSemanticAction(I)Landroidx/core/app/NotificationCompat$Action$Builder;
    .locals 0
    .param p1, "semanticAction"    # I

    .line 4949
    iput p1, p0, Landroidx/core/app/NotificationCompat$Action$Builder;->mSemanticAction:I

    .line 4950
    return-object p0
.end method

.method public setShowsUserInterface(Z)Landroidx/core/app/NotificationCompat$Action$Builder;
    .locals 0
    .param p1, "showsUserInterface"    # Z

    .line 4987
    iput-boolean p1, p0, Landroidx/core/app/NotificationCompat$Action$Builder;->mShowsUserInterface:Z

    .line 4988
    return-object p0
.end method
