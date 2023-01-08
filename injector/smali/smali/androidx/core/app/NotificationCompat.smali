.class public Landroidx/core/app/NotificationCompat;
.super Ljava/lang/Object;
.source "NotificationCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/app/NotificationCompat$BubbleMetadata;,
        Landroidx/core/app/NotificationCompat$CarExtender;,
        Landroidx/core/app/NotificationCompat$WearableExtender;,
        Landroidx/core/app/NotificationCompat$Extender;,
        Landroidx/core/app/NotificationCompat$Action;,
        Landroidx/core/app/NotificationCompat$DecoratedCustomViewStyle;,
        Landroidx/core/app/NotificationCompat$InboxStyle;,
        Landroidx/core/app/NotificationCompat$MessagingStyle;,
        Landroidx/core/app/NotificationCompat$BigTextStyle;,
        Landroidx/core/app/NotificationCompat$BigPictureStyle;,
        Landroidx/core/app/NotificationCompat$Style;,
        Landroidx/core/app/NotificationCompat$Builder;,
        Landroidx/core/app/NotificationCompat$ServiceNotificationBehavior;,
        Landroidx/core/app/NotificationCompat$GroupAlertBehavior;,
        Landroidx/core/app/NotificationCompat$BadgeIconType;,
        Landroidx/core/app/NotificationCompat$NotificationVisibility;,
        Landroidx/core/app/NotificationCompat$StreamType;
    }
.end annotation


# static fields
.field public static final BADGE_ICON_LARGE:I = 0x2

.field public static final BADGE_ICON_NONE:I = 0x0

.field public static final BADGE_ICON_SMALL:I = 0x1

.field public static final CATEGORY_ALARM:Ljava/lang/String; = "alarm"

.field public static final CATEGORY_CALL:Ljava/lang/String; = "call"

.field public static final CATEGORY_EMAIL:Ljava/lang/String; = "email"

.field public static final CATEGORY_ERROR:Ljava/lang/String; = "err"

.field public static final CATEGORY_EVENT:Ljava/lang/String; = "event"

.field public static final CATEGORY_LOCATION_SHARING:Ljava/lang/String; = "location_sharing"

.field public static final CATEGORY_MESSAGE:Ljava/lang/String; = "msg"

.field public static final CATEGORY_MISSED_CALL:Ljava/lang/String; = "missed_call"

.field public static final CATEGORY_NAVIGATION:Ljava/lang/String; = "navigation"

.field public static final CATEGORY_PROGRESS:Ljava/lang/String; = "progress"

.field public static final CATEGORY_PROMO:Ljava/lang/String; = "promo"

.field public static final CATEGORY_RECOMMENDATION:Ljava/lang/String; = "recommendation"

.field public static final CATEGORY_REMINDER:Ljava/lang/String; = "reminder"

.field public static final CATEGORY_SERVICE:Ljava/lang/String; = "service"

.field public static final CATEGORY_SOCIAL:Ljava/lang/String; = "social"

.field public static final CATEGORY_STATUS:Ljava/lang/String; = "status"

.field public static final CATEGORY_STOPWATCH:Ljava/lang/String; = "stopwatch"

.field public static final CATEGORY_SYSTEM:Ljava/lang/String; = "sys"

.field public static final CATEGORY_TRANSPORT:Ljava/lang/String; = "transport"

.field public static final CATEGORY_WORKOUT:Ljava/lang/String; = "workout"

.field public static final COLOR_DEFAULT:I = 0x0

.field public static final DEFAULT_ALL:I = -0x1

.field public static final DEFAULT_LIGHTS:I = 0x4

.field public static final DEFAULT_SOUND:I = 0x1

.field public static final DEFAULT_VIBRATE:I = 0x2

.field public static final EXTRA_AUDIO_CONTENTS_URI:Ljava/lang/String; = "android.audioContents"

.field public static final EXTRA_BACKGROUND_IMAGE_URI:Ljava/lang/String; = "android.backgroundImageUri"

.field public static final EXTRA_BIG_TEXT:Ljava/lang/String; = "android.bigText"

.field public static final EXTRA_CHANNEL_GROUP_ID:Ljava/lang/String; = "android.intent.extra.CHANNEL_GROUP_ID"

.field public static final EXTRA_CHANNEL_ID:Ljava/lang/String; = "android.intent.extra.CHANNEL_ID"

.field public static final EXTRA_CHRONOMETER_COUNT_DOWN:Ljava/lang/String; = "android.chronometerCountDown"

.field public static final EXTRA_COLORIZED:Ljava/lang/String; = "android.colorized"

.field public static final EXTRA_COMPACT_ACTIONS:Ljava/lang/String; = "android.compactActions"

.field public static final EXTRA_COMPAT_TEMPLATE:Ljava/lang/String; = "androidx.core.app.extra.COMPAT_TEMPLATE"

.field public static final EXTRA_CONVERSATION_TITLE:Ljava/lang/String; = "android.conversationTitle"

.field public static final EXTRA_HIDDEN_CONVERSATION_TITLE:Ljava/lang/String; = "android.hiddenConversationTitle"

.field public static final EXTRA_HISTORIC_MESSAGES:Ljava/lang/String; = "android.messages.historic"

.field public static final EXTRA_INFO_TEXT:Ljava/lang/String; = "android.infoText"

.field public static final EXTRA_IS_GROUP_CONVERSATION:Ljava/lang/String; = "android.isGroupConversation"

.field public static final EXTRA_LARGE_ICON:Ljava/lang/String; = "android.largeIcon"

.field public static final EXTRA_LARGE_ICON_BIG:Ljava/lang/String; = "android.largeIcon.big"

.field public static final EXTRA_MEDIA_SESSION:Ljava/lang/String; = "android.mediaSession"

.field public static final EXTRA_MESSAGES:Ljava/lang/String; = "android.messages"

.field public static final EXTRA_MESSAGING_STYLE_USER:Ljava/lang/String; = "android.messagingStyleUser"

.field public static final EXTRA_NOTIFICATION_ID:Ljava/lang/String; = "android.intent.extra.NOTIFICATION_ID"

.field public static final EXTRA_NOTIFICATION_TAG:Ljava/lang/String; = "android.intent.extra.NOTIFICATION_TAG"

.field public static final EXTRA_PEOPLE:Ljava/lang/String; = "android.people"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final EXTRA_PEOPLE_LIST:Ljava/lang/String; = "android.people.list"

.field public static final EXTRA_PICTURE:Ljava/lang/String; = "android.picture"

.field public static final EXTRA_PICTURE_CONTENT_DESCRIPTION:Ljava/lang/String; = "android.pictureContentDescription"

.field public static final EXTRA_PROGRESS:Ljava/lang/String; = "android.progress"

.field public static final EXTRA_PROGRESS_INDETERMINATE:Ljava/lang/String; = "android.progressIndeterminate"

.field public static final EXTRA_PROGRESS_MAX:Ljava/lang/String; = "android.progressMax"

.field public static final EXTRA_REMOTE_INPUT_HISTORY:Ljava/lang/String; = "android.remoteInputHistory"

.field public static final EXTRA_SELF_DISPLAY_NAME:Ljava/lang/String; = "android.selfDisplayName"

.field public static final EXTRA_SHOW_BIG_PICTURE_WHEN_COLLAPSED:Ljava/lang/String; = "android.showBigPictureWhenCollapsed"

.field public static final EXTRA_SHOW_CHRONOMETER:Ljava/lang/String; = "android.showChronometer"

.field public static final EXTRA_SHOW_WHEN:Ljava/lang/String; = "android.showWhen"

.field public static final EXTRA_SMALL_ICON:Ljava/lang/String; = "android.icon"

.field public static final EXTRA_SUB_TEXT:Ljava/lang/String; = "android.subText"

.field public static final EXTRA_SUMMARY_TEXT:Ljava/lang/String; = "android.summaryText"

.field public static final EXTRA_TEMPLATE:Ljava/lang/String; = "android.template"

.field public static final EXTRA_TEXT:Ljava/lang/String; = "android.text"

.field public static final EXTRA_TEXT_LINES:Ljava/lang/String; = "android.textLines"

.field public static final EXTRA_TITLE:Ljava/lang/String; = "android.title"

.field public static final EXTRA_TITLE_BIG:Ljava/lang/String; = "android.title.big"

.field public static final FLAG_AUTO_CANCEL:I = 0x10

.field public static final FLAG_BUBBLE:I = 0x1000

.field public static final FLAG_FOREGROUND_SERVICE:I = 0x40

.field public static final FLAG_GROUP_SUMMARY:I = 0x200

.field public static final FLAG_HIGH_PRIORITY:I = 0x80
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final FLAG_INSISTENT:I = 0x4

.field public static final FLAG_LOCAL_ONLY:I = 0x100

.field public static final FLAG_NO_CLEAR:I = 0x20

.field public static final FLAG_ONGOING_EVENT:I = 0x2

.field public static final FLAG_ONLY_ALERT_ONCE:I = 0x8

.field public static final FLAG_SHOW_LIGHTS:I = 0x1

.field public static final FOREGROUND_SERVICE_DEFAULT:I = 0x0

.field public static final FOREGROUND_SERVICE_DEFERRED:I = 0x2

.field public static final FOREGROUND_SERVICE_IMMEDIATE:I = 0x1

.field public static final GROUP_ALERT_ALL:I = 0x0

.field public static final GROUP_ALERT_CHILDREN:I = 0x2

.field public static final GROUP_ALERT_SUMMARY:I = 0x1

.field public static final GROUP_KEY_SILENT:Ljava/lang/String; = "silent"

.field public static final INTENT_CATEGORY_NOTIFICATION_PREFERENCES:Ljava/lang/String; = "android.intent.category.NOTIFICATION_PREFERENCES"

.field public static final PRIORITY_DEFAULT:I = 0x0

.field public static final PRIORITY_HIGH:I = 0x1

.field public static final PRIORITY_LOW:I = -0x1

.field public static final PRIORITY_MAX:I = 0x2

.field public static final PRIORITY_MIN:I = -0x2

.field public static final STREAM_DEFAULT:I = -0x1

.field public static final VISIBILITY_PRIVATE:I = 0x0

.field public static final VISIBILITY_PUBLIC:I = 0x1

.field public static final VISIBILITY_SECRET:I = -0x1


# direct methods
.method public constructor <init>()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 7877
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7878
    return-void
.end method

.method public static getAction(Landroid/app/Notification;I)Landroidx/core/app/NotificationCompat$Action;
    .locals 6
    .param p0, "notification"    # Landroid/app/Notification;
    .param p1, "actionIndex"    # I

    .line 7438
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x14

    if-lt v0, v1, :cond_0

    .line 7439
    iget-object v0, p0, Landroid/app/Notification;->actions:[Landroid/app/Notification$Action;

    aget-object v0, v0, p1

    invoke-static {v0}, Landroidx/core/app/NotificationCompat;->getActionCompatFromAction(Landroid/app/Notification$Action;)Landroidx/core/app/NotificationCompat$Action;

    move-result-object v0

    return-object v0

    .line 7440
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_2

    .line 7441
    iget-object v0, p0, Landroid/app/Notification;->actions:[Landroid/app/Notification$Action;

    aget-object v0, v0, p1

    .line 7442
    .local v0, "action":Landroid/app/Notification$Action;
    const/4 v1, 0x0

    .line 7443
    .local v1, "actionExtras":Landroid/os/Bundle;
    iget-object v2, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v3, "android.support.actionExtras"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getSparseParcelableArray(Ljava/lang/String;)Landroid/util/SparseArray;

    move-result-object v2

    .line 7445
    .local v2, "actionExtrasMap":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Bundle;>;"
    if-eqz v2, :cond_1

    .line 7446
    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v1, v3

    check-cast v1, Landroid/os/Bundle;

    .line 7448
    :cond_1
    iget v3, v0, Landroid/app/Notification$Action;->icon:I

    iget-object v4, v0, Landroid/app/Notification$Action;->title:Ljava/lang/CharSequence;

    iget-object v5, v0, Landroid/app/Notification$Action;->actionIntent:Landroid/app/PendingIntent;

    invoke-static {v3, v4, v5, v1}, Landroidx/core/app/NotificationCompatJellybean;->readAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;Landroid/os/Bundle;)Landroidx/core/app/NotificationCompat$Action;

    move-result-object v3

    return-object v3

    .line 7450
    .end local v0    # "action":Landroid/app/Notification$Action;
    .end local v1    # "actionExtras":Landroid/os/Bundle;
    .end local v2    # "actionExtrasMap":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Bundle;>;"
    :cond_2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_3

    .line 7451
    invoke-static {p0, p1}, Landroidx/core/app/NotificationCompatJellybean;->getAction(Landroid/app/Notification;I)Landroidx/core/app/NotificationCompat$Action;

    move-result-object v0

    return-object v0

    .line 7453
    :cond_3
    const/4 v0, 0x0

    return-object v0
.end method

.method static getActionCompatFromAction(Landroid/app/Notification$Action;)Landroidx/core/app/NotificationCompat$Action;
    .locals 32
    .param p0, "action"    # Landroid/app/Notification$Action;

    .line 7477
    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p0}, Landroid/app/Notification$Action;->getRemoteInputs()[Landroid/app/RemoteInput;

    move-result-object v1

    .line 7478
    .local v1, "srcArray":[Landroid/app/RemoteInput;
    const/16 v2, 0x1d

    const/4 v3, 0x0

    if-nez v1, :cond_0

    .line 7479
    const/4 v4, 0x0

    .local v4, "remoteInputs":[Landroidx/core/app/RemoteInput;
    goto :goto_2

    .line 7481
    .end local v4    # "remoteInputs":[Landroidx/core/app/RemoteInput;
    :cond_0
    array-length v4, v1

    new-array v4, v4, [Landroidx/core/app/RemoteInput;

    .line 7482
    .restart local v4    # "remoteInputs":[Landroidx/core/app/RemoteInput;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    array-length v6, v1

    if-ge v5, v6, :cond_2

    .line 7483
    aget-object v6, v1, v5

    .line 7484
    .local v6, "src":Landroid/app/RemoteInput;
    new-instance v15, Landroidx/core/app/RemoteInput;

    .line 7485
    invoke-virtual {v6}, Landroid/app/RemoteInput;->getResultKey()Ljava/lang/String;

    move-result-object v8

    .line 7486
    invoke-virtual {v6}, Landroid/app/RemoteInput;->getLabel()Ljava/lang/CharSequence;

    move-result-object v9

    .line 7487
    invoke-virtual {v6}, Landroid/app/RemoteInput;->getChoices()[Ljava/lang/CharSequence;

    move-result-object v10

    .line 7488
    invoke-virtual {v6}, Landroid/app/RemoteInput;->getAllowFreeFormInput()Z

    move-result v11

    .line 7489
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v7, v2, :cond_1

    .line 7490
    invoke-virtual {v6}, Landroid/app/RemoteInput;->getEditChoicesBeforeSending()I

    move-result v7

    move v12, v7

    goto :goto_1

    .line 7491
    :cond_1
    const/4 v12, 0x0

    .line 7492
    :goto_1
    invoke-virtual {v6}, Landroid/app/RemoteInput;->getExtras()Landroid/os/Bundle;

    move-result-object v13

    const/4 v14, 0x0

    move-object v7, v15

    invoke-direct/range {v7 .. v14}, Landroidx/core/app/RemoteInput;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;[Ljava/lang/CharSequence;ZILandroid/os/Bundle;Ljava/util/Set;)V

    aput-object v15, v4, v5

    .line 7482
    .end local v6    # "src":Landroid/app/RemoteInput;
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 7498
    .end local v5    # "i":I
    :cond_2
    :goto_2
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x18

    const-string v7, "android.support.allowGeneratedReplies"

    const/4 v8, 0x1

    if-lt v5, v6, :cond_5

    .line 7499
    invoke-virtual/range {p0 .. p0}, Landroid/app/Notification$Action;->getExtras()Landroid/os/Bundle;

    move-result-object v5

    invoke-virtual {v5, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 7501
    invoke-virtual/range {p0 .. p0}, Landroid/app/Notification$Action;->getAllowGeneratedReplies()Z

    move-result v5

    if-eqz v5, :cond_3

    goto :goto_3

    :cond_3
    const/4 v5, 0x0

    goto :goto_4

    :cond_4
    :goto_3
    const/4 v5, 0x1

    .local v5, "allowGeneratedReplies":Z
    :goto_4
    goto :goto_5

    .line 7503
    .end local v5    # "allowGeneratedReplies":Z
    :cond_5
    invoke-virtual/range {p0 .. p0}, Landroid/app/Notification$Action;->getExtras()Landroid/os/Bundle;

    move-result-object v5

    invoke-virtual {v5, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    .line 7507
    .restart local v5    # "allowGeneratedReplies":Z
    :goto_5
    nop

    .line 7508
    invoke-virtual/range {p0 .. p0}, Landroid/app/Notification$Action;->getExtras()Landroid/os/Bundle;

    move-result-object v6

    const-string v7, "android.support.action.showsUserInterface"

    invoke-virtual {v6, v7, v8}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v30

    .line 7511
    .local v30, "showsUserInterface":Z
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x1c

    if-lt v6, v7, :cond_6

    .line 7512
    invoke-virtual/range {p0 .. p0}, Landroid/app/Notification$Action;->getSemanticAction()I

    move-result v6

    move/from16 v31, v6

    .local v6, "semanticAction":I
    goto :goto_6

    .line 7514
    .end local v6    # "semanticAction":I
    :cond_6
    invoke-virtual/range {p0 .. p0}, Landroid/app/Notification$Action;->getExtras()Landroid/os/Bundle;

    move-result-object v6

    const-string v7, "android.support.action.semanticAction"

    invoke-virtual {v6, v7, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v6

    move/from16 v31, v6

    .line 7518
    .local v31, "semanticAction":I
    :goto_6
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v6, v2, :cond_7

    invoke-virtual/range {p0 .. p0}, Landroid/app/Notification$Action;->isContextual()Z

    move-result v2

    move/from16 v16, v2

    goto :goto_7

    :cond_7
    const/16 v16, 0x0

    .line 7521
    .local v16, "isContextual":Z
    :goto_7
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x1f

    if-lt v2, v6, :cond_8

    invoke-virtual/range {p0 .. p0}, Landroid/app/Notification$Action;->isAuthenticationRequired()Z

    move-result v3

    move/from16 v17, v3

    goto :goto_8

    :cond_8
    const/16 v17, 0x0

    .line 7523
    .local v17, "authRequired":Z
    :goto_8
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x17

    if-lt v2, v3, :cond_b

    .line 7524
    invoke-virtual/range {p0 .. p0}, Landroid/app/Notification$Action;->getIcon()Landroid/graphics/drawable/Icon;

    move-result-object v2

    if-nez v2, :cond_9

    iget v2, v0, Landroid/app/Notification$Action;->icon:I

    if-eqz v2, :cond_9

    .line 7525
    new-instance v2, Landroidx/core/app/NotificationCompat$Action;

    iget v7, v0, Landroid/app/Notification$Action;->icon:I

    iget-object v8, v0, Landroid/app/Notification$Action;->title:Ljava/lang/CharSequence;

    iget-object v9, v0, Landroid/app/Notification$Action;->actionIntent:Landroid/app/PendingIntent;

    .line 7526
    invoke-virtual/range {p0 .. p0}, Landroid/app/Notification$Action;->getExtras()Landroid/os/Bundle;

    move-result-object v10

    const/4 v12, 0x0

    move-object v6, v2

    move-object v11, v4

    move v13, v5

    move/from16 v14, v31

    move/from16 v15, v30

    invoke-direct/range {v6 .. v17}, Landroidx/core/app/NotificationCompat$Action;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;Landroid/os/Bundle;[Landroidx/core/app/RemoteInput;[Landroidx/core/app/RemoteInput;ZIZZZ)V

    .line 7525
    return-object v2

    .line 7529
    :cond_9
    invoke-virtual/range {p0 .. p0}, Landroid/app/Notification$Action;->getIcon()Landroid/graphics/drawable/Icon;

    move-result-object v2

    if-nez v2, :cond_a

    .line 7530
    const/4 v2, 0x0

    goto :goto_9

    :cond_a
    invoke-virtual/range {p0 .. p0}, Landroid/app/Notification$Action;->getIcon()Landroid/graphics/drawable/Icon;

    move-result-object v2

    invoke-static {v2}, Landroidx/core/graphics/drawable/IconCompat;->createFromIconOrNullIfZeroResId(Landroid/graphics/drawable/Icon;)Landroidx/core/graphics/drawable/IconCompat;

    move-result-object v2

    :goto_9
    move-object/from16 v19, v2

    .line 7531
    .local v19, "icon":Landroidx/core/graphics/drawable/IconCompat;
    new-instance v2, Landroidx/core/app/NotificationCompat$Action;

    iget-object v3, v0, Landroid/app/Notification$Action;->title:Ljava/lang/CharSequence;

    iget-object v6, v0, Landroid/app/Notification$Action;->actionIntent:Landroid/app/PendingIntent;

    invoke-virtual/range {p0 .. p0}, Landroid/app/Notification$Action;->getExtras()Landroid/os/Bundle;

    move-result-object v22

    const/16 v24, 0x0

    move-object/from16 v18, v2

    move-object/from16 v20, v3

    move-object/from16 v21, v6

    move-object/from16 v23, v4

    move/from16 v25, v5

    move/from16 v26, v31

    move/from16 v27, v30

    move/from16 v28, v16

    move/from16 v29, v17

    invoke-direct/range {v18 .. v29}, Landroidx/core/app/NotificationCompat$Action;-><init>(Landroidx/core/graphics/drawable/IconCompat;Ljava/lang/CharSequence;Landroid/app/PendingIntent;Landroid/os/Bundle;[Landroidx/core/app/RemoteInput;[Landroidx/core/app/RemoteInput;ZIZZZ)V

    return-object v2

    .line 7535
    .end local v19    # "icon":Landroidx/core/graphics/drawable/IconCompat;
    :cond_b
    new-instance v2, Landroidx/core/app/NotificationCompat$Action;

    iget v3, v0, Landroid/app/Notification$Action;->icon:I

    iget-object v6, v0, Landroid/app/Notification$Action;->title:Ljava/lang/CharSequence;

    iget-object v7, v0, Landroid/app/Notification$Action;->actionIntent:Landroid/app/PendingIntent;

    invoke-virtual/range {p0 .. p0}, Landroid/app/Notification$Action;->getExtras()Landroid/os/Bundle;

    move-result-object v22

    const/16 v24, 0x0

    move-object/from16 v18, v2

    move/from16 v19, v3

    move-object/from16 v20, v6

    move-object/from16 v21, v7

    move-object/from16 v23, v4

    move/from16 v25, v5

    move/from16 v26, v31

    move/from16 v27, v30

    move/from16 v28, v16

    move/from16 v29, v17

    invoke-direct/range {v18 .. v29}, Landroidx/core/app/NotificationCompat$Action;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;Landroid/os/Bundle;[Landroidx/core/app/RemoteInput;[Landroidx/core/app/RemoteInput;ZIZZZ)V

    return-object v2
.end method

.method public static getActionCount(Landroid/app/Notification;)I
    .locals 3
    .param p0, "notification"    # Landroid/app/Notification;

    .line 7421
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x13

    if-lt v0, v2, :cond_1

    .line 7422
    iget-object v0, p0, Landroid/app/Notification;->actions:[Landroid/app/Notification$Action;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/app/Notification;->actions:[Landroid/app/Notification$Action;

    array-length v1, v0

    :cond_0
    return v1

    .line 7423
    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-lt v0, v2, :cond_2

    .line 7424
    invoke-static {p0}, Landroidx/core/app/NotificationCompatJellybean;->getActionCount(Landroid/app/Notification;)I

    move-result v0

    return v0

    .line 7426
    :cond_2
    return v1
.end method

.method public static getAllowSystemGeneratedContextualActions(Landroid/app/Notification;)Z
    .locals 2
    .param p0, "notification"    # Landroid/app/Notification;

    .line 7867
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_0

    .line 7868
    invoke-virtual {p0}, Landroid/app/Notification;->getAllowSystemGeneratedContextualActions()Z

    move-result v0

    return v0

    .line 7870
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static getAutoCancel(Landroid/app/Notification;)Z
    .locals 1
    .param p0, "notification"    # Landroid/app/Notification;

    .line 7686
    iget v0, p0, Landroid/app/Notification;->flags:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static getBadgeIconType(Landroid/app/Notification;)I
    .locals 2
    .param p0, "notification"    # Landroid/app/Notification;

    .line 7800
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    .line 7801
    invoke-virtual {p0}, Landroid/app/Notification;->getBadgeIconType()I

    move-result v0

    return v0

    .line 7803
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static getBubbleMetadata(Landroid/app/Notification;)Landroidx/core/app/NotificationCompat$BubbleMetadata;
    .locals 2
    .param p0, "notification"    # Landroid/app/Notification;

    .line 7466
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_0

    .line 7467
    invoke-virtual {p0}, Landroid/app/Notification;->getBubbleMetadata()Landroid/app/Notification$BubbleMetadata;

    move-result-object v0

    invoke-static {v0}, Landroidx/core/app/NotificationCompat$BubbleMetadata;->fromPlatform(Landroid/app/Notification$BubbleMetadata;)Landroidx/core/app/NotificationCompat$BubbleMetadata;

    move-result-object v0

    return-object v0

    .line 7469
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getCategory(Landroid/app/Notification;)Ljava/lang/String;
    .locals 2
    .param p0, "notification"    # Landroid/app/Notification;

    .line 7620
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 7621
    iget-object v0, p0, Landroid/app/Notification;->category:Ljava/lang/String;

    return-object v0

    .line 7623
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getChannelId(Landroid/app/Notification;)Ljava/lang/String;
    .locals 2
    .param p0, "notification"    # Landroid/app/Notification;

    .line 7775
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    .line 7776
    invoke-virtual {p0}, Landroid/app/Notification;->getChannelId()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 7778
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getColor(Landroid/app/Notification;)I
    .locals 2
    .param p0, "notification"    # Landroid/app/Notification;

    .line 7696
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 7697
    iget v0, p0, Landroid/app/Notification;->color:I

    return v0

    .line 7699
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static getContentInfo(Landroid/app/Notification;)Ljava/lang/CharSequence;
    .locals 2
    .param p0, "notification"    # Landroid/app/Notification;

    .line 7605
    iget-object v0, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v1, "android.infoText"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public static getContentText(Landroid/app/Notification;)Ljava/lang/CharSequence;
    .locals 2
    .param p0, "notification"    # Landroid/app/Notification;

    .line 7599
    iget-object v0, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v1, "android.text"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public static getContentTitle(Landroid/app/Notification;)Ljava/lang/CharSequence;
    .locals 2
    .param p0, "notification"    # Landroid/app/Notification;

    .line 7593
    iget-object v0, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v1, "android.title"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public static getExtras(Landroid/app/Notification;)Landroid/os/Bundle;
    .locals 2
    .param p0, "notification"    # Landroid/app/Notification;

    .line 7407
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    .line 7408
    iget-object v0, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    return-object v0

    .line 7409
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_1

    .line 7410
    invoke-static {p0}, Landroidx/core/app/NotificationCompatJellybean;->getExtras(Landroid/app/Notification;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0

    .line 7412
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getGroup(Landroid/app/Notification;)Ljava/lang/String;
    .locals 3
    .param p0, "notification"    # Landroid/app/Notification;

    .line 7651
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x14

    if-lt v0, v1, :cond_0

    .line 7652
    invoke-virtual {p0}, Landroid/app/Notification;->getGroup()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 7653
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    const-string v2, "android.support.groupKey"

    if-lt v0, v1, :cond_1

    .line 7654
    iget-object v0, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 7655
    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_2

    .line 7656
    invoke-static {p0}, Landroidx/core/app/NotificationCompatJellybean;->getExtras(Landroid/app/Notification;)Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 7659
    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getGroupAlertBehavior(Landroid/app/Notification;)I
    .locals 2
    .param p0, "notification"    # Landroid/app/Notification;

    .line 7854
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    .line 7855
    invoke-virtual {p0}, Landroid/app/Notification;->getGroupAlertBehavior()I

    move-result v0

    return v0

    .line 7857
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method static getHighPriority(Landroid/app/Notification;)Z
    .locals 1
    .param p0, "notification"    # Landroid/app/Notification;

    .line 7724
    iget v0, p0, Landroid/app/Notification;->flags:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static getInvisibleActions(Landroid/app/Notification;)Ljava/util/List;
    .locals 5
    .param p0, "notification"    # Landroid/app/Notification;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Notification;",
            ")",
            "Ljava/util/List<",
            "Landroidx/core/app/NotificationCompat$Action;",
            ">;"
        }
    .end annotation

    .line 7544
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7545
    .local v0, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/core/app/NotificationCompat$Action;>;"
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-lt v1, v2, :cond_1

    .line 7546
    iget-object v1, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    .line 7547
    const-string v2, "android.car.EXTENSIONS"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    .line 7548
    .local v1, "carExtenderBundle":Landroid/os/Bundle;
    if-nez v1, :cond_0

    .line 7549
    return-object v0

    .line 7552
    :cond_0
    const-string v2, "invisible_actions"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    .line 7553
    .local v2, "listBundle":Landroid/os/Bundle;
    if-eqz v2, :cond_1

    .line 7554
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-virtual {v2}, Landroid/os/Bundle;->size()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 7555
    nop

    .line 7556
    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v4

    .line 7555
    invoke-static {v4}, Landroidx/core/app/NotificationCompatJellybean;->getActionFromBundle(Landroid/os/Bundle;)Landroidx/core/app/NotificationCompat$Action;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7554
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 7560
    .end local v1    # "carExtenderBundle":Landroid/os/Bundle;
    .end local v2    # "listBundle":Landroid/os/Bundle;
    .end local v3    # "i":I
    :cond_1
    return-object v0
.end method

.method public static getLocalOnly(Landroid/app/Notification;)Z
    .locals 4
    .param p0, "notification"    # Landroid/app/Notification;

    .line 7634
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x14

    if-lt v0, v2, :cond_1

    .line 7635
    iget v0, p0, Landroid/app/Notification;->flags:I

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    .line 7636
    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    const-string v3, "android.support.localOnly"

    if-lt v0, v2, :cond_2

    .line 7637
    iget-object v0, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0

    .line 7638
    :cond_2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-lt v0, v2, :cond_3

    .line 7639
    invoke-static {p0}, Landroidx/core/app/NotificationCompatJellybean;->getExtras(Landroid/app/Notification;)Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0

    .line 7642
    :cond_3
    return v1
.end method

.method public static getLocusId(Landroid/app/Notification;)Landroidx/core/content/LocusIdCompat;
    .locals 3
    .param p0, "notification"    # Landroid/app/Notification;

    .line 7839
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x1d

    if-lt v0, v2, :cond_1

    .line 7840
    invoke-virtual {p0}, Landroid/app/Notification;->getLocusId()Landroid/content/LocusId;

    move-result-object v0

    .line 7841
    .local v0, "locusId":Landroid/content/LocusId;
    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {v0}, Landroidx/core/content/LocusIdCompat;->toLocusIdCompat(Landroid/content/LocusId;)Landroidx/core/content/LocusIdCompat;

    move-result-object v1

    :goto_0
    return-object v1

    .line 7843
    .end local v0    # "locusId":Landroid/content/LocusId;
    :cond_1
    return-object v1
.end method

.method static getNotificationArrayFromBundle(Landroid/os/Bundle;Ljava/lang/String;)[Landroid/app/Notification;
    .locals 4
    .param p0, "bundle"    # Landroid/os/Bundle;
    .param p1, "key"    # Ljava/lang/String;

    .line 7388
    invoke-virtual {p0, p1}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v0

    .line 7389
    .local v0, "array":[Landroid/os/Parcelable;
    instance-of v1, v0, [Landroid/app/Notification;

    if-nez v1, :cond_2

    if-nez v0, :cond_0

    goto :goto_1

    .line 7392
    :cond_0
    array-length v1, v0

    new-array v1, v1, [Landroid/app/Notification;

    .line 7393
    .local v1, "typedArray":[Landroid/app/Notification;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_1

    .line 7394
    aget-object v3, v0, v2

    check-cast v3, Landroid/app/Notification;

    aput-object v3, v1, v2

    .line 7393
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 7396
    .end local v2    # "i":I
    :cond_1
    invoke-virtual {p0, p1, v1}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    .line 7397
    return-object v1

    .line 7390
    .end local v1    # "typedArray":[Landroid/app/Notification;
    :cond_2
    :goto_1
    move-object v1, v0

    check-cast v1, [Landroid/app/Notification;

    return-object v1
.end method

.method public static getOngoing(Landroid/app/Notification;)Z
    .locals 1
    .param p0, "notification"    # Landroid/app/Notification;

    .line 7691
    iget v0, p0, Landroid/app/Notification;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static getOnlyAlertOnce(Landroid/app/Notification;)Z
    .locals 1
    .param p0, "notification"    # Landroid/app/Notification;

    .line 7681
    iget v0, p0, Landroid/app/Notification;->flags:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static getPeople(Landroid/app/Notification;)Ljava/util/List;
    .locals 6
    .param p0, "notification"    # Landroid/app/Notification;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Notification;",
            ")",
            "Ljava/util/List<",
            "Landroidx/core/app/Person;",
            ">;"
        }
    .end annotation

    .line 7570
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7571
    .local v0, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/core/app/Person;>;"
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1c

    if-lt v1, v2, :cond_0

    .line 7572
    iget-object v1, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    .line 7573
    const-string v2, "android.people.list"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 7574
    .local v1, "peopleList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/Person;>;"
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 7575
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/Person;

    .line 7576
    .local v3, "person":Landroid/app/Person;
    invoke-static {v3}, Landroidx/core/app/Person;->fromAndroidPerson(Landroid/app/Person;)Landroidx/core/app/Person;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7577
    .end local v3    # "person":Landroid/app/Person;
    goto :goto_0

    .line 7579
    .end local v1    # "peopleList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/Person;>;"
    :cond_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-lt v1, v2, :cond_1

    .line 7580
    iget-object v1, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v2, "android.people"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 7581
    .local v1, "peopleArray":[Ljava/lang/String;
    if-eqz v1, :cond_2

    array-length v2, v1

    if-eqz v2, :cond_2

    .line 7582
    array-length v2, v1

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v2, :cond_2

    aget-object v4, v1, v3

    .line 7583
    .local v4, "personUri":Ljava/lang/String;
    new-instance v5, Landroidx/core/app/Person$Builder;

    invoke-direct {v5}, Landroidx/core/app/Person$Builder;-><init>()V

    invoke-virtual {v5, v4}, Landroidx/core/app/Person$Builder;->setUri(Ljava/lang/String;)Landroidx/core/app/Person$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroidx/core/app/Person$Builder;->build()Landroidx/core/app/Person;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7582
    .end local v4    # "personUri":Ljava/lang/String;
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 7579
    .end local v1    # "peopleArray":[Ljava/lang/String;
    :cond_1
    nop

    .line 7587
    :cond_2
    return-object v0
.end method

.method public static getPublicVersion(Landroid/app/Notification;)Landroid/app/Notification;
    .locals 2
    .param p0, "notification"    # Landroid/app/Notification;

    .line 7714
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 7715
    iget-object v0, p0, Landroid/app/Notification;->publicVersion:Landroid/app/Notification;

    return-object v0

    .line 7717
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getSettingsText(Landroid/app/Notification;)Ljava/lang/CharSequence;
    .locals 2
    .param p0, "notification"    # Landroid/app/Notification;

    .line 7823
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    .line 7824
    invoke-virtual {p0}, Landroid/app/Notification;->getSettingsText()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0

    .line 7826
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getShortcutId(Landroid/app/Notification;)Ljava/lang/String;
    .locals 2
    .param p0, "notification"    # Landroid/app/Notification;

    .line 7812
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    .line 7813
    invoke-virtual {p0}, Landroid/app/Notification;->getShortcutId()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 7815
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getShowWhen(Landroid/app/Notification;)Z
    .locals 2
    .param p0, "notification"    # Landroid/app/Notification;

    .line 7668
    iget-object v0, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v1, "android.showWhen"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static getSortKey(Landroid/app/Notification;)Ljava/lang/String;
    .locals 3
    .param p0, "notification"    # Landroid/app/Notification;

    .line 7759
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x14

    if-lt v0, v1, :cond_0

    .line 7760
    invoke-virtual {p0}, Landroid/app/Notification;->getSortKey()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 7761
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    const-string v2, "android.support.sortKey"

    if-lt v0, v1, :cond_1

    .line 7762
    iget-object v0, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 7763
    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_2

    .line 7764
    invoke-static {p0}, Landroidx/core/app/NotificationCompatJellybean;->getExtras(Landroid/app/Notification;)Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 7767
    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getSubText(Landroid/app/Notification;)Ljava/lang/CharSequence;
    .locals 2
    .param p0, "notification"    # Landroid/app/Notification;

    .line 7611
    iget-object v0, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v1, "android.subText"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public static getTimeoutAfter(Landroid/app/Notification;)J
    .locals 2
    .param p0, "notification"    # Landroid/app/Notification;

    .line 7787
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    .line 7788
    invoke-virtual {p0}, Landroid/app/Notification;->getTimeoutAfter()J

    move-result-wide v0

    return-wide v0

    .line 7790
    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public static getUsesChronometer(Landroid/app/Notification;)Z
    .locals 2
    .param p0, "notification"    # Landroid/app/Notification;

    .line 7676
    iget-object v0, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v1, "android.showChronometer"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static getVisibility(Landroid/app/Notification;)I
    .locals 2
    .param p0, "notification"    # Landroid/app/Notification;

    .line 7705
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 7706
    iget v0, p0, Landroid/app/Notification;->visibility:I

    return v0

    .line 7708
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static isGroupSummary(Landroid/app/Notification;)Z
    .locals 4
    .param p0, "notification"    # Landroid/app/Notification;

    .line 7734
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x14

    if-lt v0, v2, :cond_1

    .line 7735
    iget v0, p0, Landroid/app/Notification;->flags:I

    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    .line 7736
    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    const-string v3, "android.support.isGroupSummary"

    if-lt v0, v2, :cond_2

    .line 7737
    iget-object v0, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0

    .line 7738
    :cond_2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-lt v0, v2, :cond_3

    .line 7739
    invoke-static {p0}, Landroidx/core/app/NotificationCompatJellybean;->getExtras(Landroid/app/Notification;)Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0

    .line 7742
    :cond_3
    return v1
.end method
