.class Landroidx/core/app/NotificationCompat$BubbleMetadata$Api30Impl;
.super Ljava/lang/Object;
.source "NotificationCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/app/NotificationCompat$BubbleMetadata;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Api30Impl"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 7295
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7296
    return-void
.end method

.method static fromPlatform(Landroid/app/Notification$BubbleMetadata;)Landroidx/core/app/NotificationCompat$BubbleMetadata;
    .locals 4
    .param p0, "platformMetadata"    # Landroid/app/Notification$BubbleMetadata;

    .line 7350
    if-nez p0, :cond_0

    .line 7351
    const/4 v0, 0x0

    return-object v0

    .line 7354
    :cond_0
    const/4 v0, 0x0

    .line 7355
    .local v0, "compatBuilder":Landroidx/core/app/NotificationCompat$BubbleMetadata$Builder;
    invoke-virtual {p0}, Landroid/app/Notification$BubbleMetadata;->getShortcutId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 7356
    new-instance v1, Landroidx/core/app/NotificationCompat$BubbleMetadata$Builder;

    invoke-virtual {p0}, Landroid/app/Notification$BubbleMetadata;->getShortcutId()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroidx/core/app/NotificationCompat$BubbleMetadata$Builder;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_0

    .line 7358
    :cond_1
    new-instance v1, Landroidx/core/app/NotificationCompat$BubbleMetadata$Builder;

    invoke-virtual {p0}, Landroid/app/Notification$BubbleMetadata;->getIntent()Landroid/app/PendingIntent;

    move-result-object v2

    .line 7359
    invoke-virtual {p0}, Landroid/app/Notification$BubbleMetadata;->getIcon()Landroid/graphics/drawable/Icon;

    move-result-object v3

    invoke-static {v3}, Landroidx/core/graphics/drawable/IconCompat;->createFromIcon(Landroid/graphics/drawable/Icon;)Landroidx/core/graphics/drawable/IconCompat;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroidx/core/app/NotificationCompat$BubbleMetadata$Builder;-><init>(Landroid/app/PendingIntent;Landroidx/core/graphics/drawable/IconCompat;)V

    move-object v0, v1

    .line 7361
    :goto_0
    nop

    .line 7362
    invoke-virtual {p0}, Landroid/app/Notification$BubbleMetadata;->getAutoExpandBubble()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/core/app/NotificationCompat$BubbleMetadata$Builder;->setAutoExpandBubble(Z)Landroidx/core/app/NotificationCompat$BubbleMetadata$Builder;

    move-result-object v1

    .line 7363
    invoke-virtual {p0}, Landroid/app/Notification$BubbleMetadata;->getDeleteIntent()Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/core/app/NotificationCompat$BubbleMetadata$Builder;->setDeleteIntent(Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$BubbleMetadata$Builder;

    move-result-object v1

    .line 7365
    invoke-virtual {p0}, Landroid/app/Notification$BubbleMetadata;->isNotificationSuppressed()Z

    move-result v2

    .line 7364
    invoke-virtual {v1, v2}, Landroidx/core/app/NotificationCompat$BubbleMetadata$Builder;->setSuppressNotification(Z)Landroidx/core/app/NotificationCompat$BubbleMetadata$Builder;

    .line 7367
    invoke-virtual {p0}, Landroid/app/Notification$BubbleMetadata;->getDesiredHeight()I

    move-result v1

    if-eqz v1, :cond_2

    .line 7368
    invoke-virtual {p0}, Landroid/app/Notification$BubbleMetadata;->getDesiredHeight()I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/core/app/NotificationCompat$BubbleMetadata$Builder;->setDesiredHeight(I)Landroidx/core/app/NotificationCompat$BubbleMetadata$Builder;

    .line 7371
    :cond_2
    invoke-virtual {p0}, Landroid/app/Notification$BubbleMetadata;->getDesiredHeightResId()I

    move-result v1

    if-eqz v1, :cond_3

    .line 7372
    invoke-virtual {p0}, Landroid/app/Notification$BubbleMetadata;->getDesiredHeightResId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/core/app/NotificationCompat$BubbleMetadata$Builder;->setDesiredHeightResId(I)Landroidx/core/app/NotificationCompat$BubbleMetadata$Builder;

    .line 7375
    :cond_3
    invoke-virtual {v0}, Landroidx/core/app/NotificationCompat$BubbleMetadata$Builder;->build()Landroidx/core/app/NotificationCompat$BubbleMetadata;

    move-result-object v1

    return-object v1
.end method

.method static toPlatform(Landroidx/core/app/NotificationCompat$BubbleMetadata;)Landroid/app/Notification$BubbleMetadata;
    .locals 4
    .param p0, "compatMetadata"    # Landroidx/core/app/NotificationCompat$BubbleMetadata;

    .line 7309
    if-nez p0, :cond_0

    .line 7310
    const/4 v0, 0x0

    return-object v0

    .line 7313
    :cond_0
    const/4 v0, 0x0

    .line 7314
    .local v0, "platformMetadataBuilder":Landroid/app/Notification$BubbleMetadata$Builder;
    invoke-virtual {p0}, Landroidx/core/app/NotificationCompat$BubbleMetadata;->getShortcutId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 7315
    new-instance v1, Landroid/app/Notification$BubbleMetadata$Builder;

    .line 7316
    invoke-virtual {p0}, Landroidx/core/app/NotificationCompat$BubbleMetadata;->getShortcutId()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/Notification$BubbleMetadata$Builder;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_0

    .line 7318
    :cond_1
    new-instance v1, Landroid/app/Notification$BubbleMetadata$Builder;

    .line 7320
    invoke-virtual {p0}, Landroidx/core/app/NotificationCompat$BubbleMetadata;->getIntent()Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {p0}, Landroidx/core/app/NotificationCompat$BubbleMetadata;->getIcon()Landroidx/core/graphics/drawable/IconCompat;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/core/graphics/drawable/IconCompat;->toIcon()Landroid/graphics/drawable/Icon;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/app/Notification$BubbleMetadata$Builder;-><init>(Landroid/app/PendingIntent;Landroid/graphics/drawable/Icon;)V

    move-object v0, v1

    .line 7322
    :goto_0
    nop

    .line 7323
    invoke-virtual {p0}, Landroidx/core/app/NotificationCompat$BubbleMetadata;->getDeleteIntent()Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Notification$BubbleMetadata$Builder;->setDeleteIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$BubbleMetadata$Builder;

    move-result-object v1

    .line 7324
    invoke-virtual {p0}, Landroidx/core/app/NotificationCompat$BubbleMetadata;->getAutoExpandBubble()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/app/Notification$BubbleMetadata$Builder;->setAutoExpandBubble(Z)Landroid/app/Notification$BubbleMetadata$Builder;

    move-result-object v1

    .line 7325
    invoke-virtual {p0}, Landroidx/core/app/NotificationCompat$BubbleMetadata;->isNotificationSuppressed()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/app/Notification$BubbleMetadata$Builder;->setSuppressNotification(Z)Landroid/app/Notification$BubbleMetadata$Builder;

    .line 7327
    invoke-virtual {p0}, Landroidx/core/app/NotificationCompat$BubbleMetadata;->getDesiredHeight()I

    move-result v1

    if-eqz v1, :cond_2

    .line 7328
    invoke-virtual {p0}, Landroidx/core/app/NotificationCompat$BubbleMetadata;->getDesiredHeight()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/Notification$BubbleMetadata$Builder;->setDesiredHeight(I)Landroid/app/Notification$BubbleMetadata$Builder;

    .line 7331
    :cond_2
    invoke-virtual {p0}, Landroidx/core/app/NotificationCompat$BubbleMetadata;->getDesiredHeightResId()I

    move-result v1

    if-eqz v1, :cond_3

    .line 7332
    nop

    .line 7333
    invoke-virtual {p0}, Landroidx/core/app/NotificationCompat$BubbleMetadata;->getDesiredHeightResId()I

    move-result v1

    .line 7332
    invoke-virtual {v0, v1}, Landroid/app/Notification$BubbleMetadata$Builder;->setDesiredHeightResId(I)Landroid/app/Notification$BubbleMetadata$Builder;

    .line 7336
    :cond_3
    invoke-virtual {v0}, Landroid/app/Notification$BubbleMetadata$Builder;->build()Landroid/app/Notification$BubbleMetadata;

    move-result-object v1

    return-object v1
.end method
