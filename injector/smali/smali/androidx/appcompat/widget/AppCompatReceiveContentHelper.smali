.class final Landroidx/appcompat/widget/AppCompatReceiveContentHelper;
.super Ljava/lang/Object;
.source "AppCompatReceiveContentHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/appcompat/widget/AppCompatReceiveContentHelper$OnDropApi24Impl;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "ReceiveContent"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static maybeHandleDragEventViaPerformReceiveContent(Landroid/view/View;Landroid/view/DragEvent;)Z
    .locals 4
    .param p0, "view"    # Landroid/view/View;
    .param p1, "event"    # Landroid/view/DragEvent;

    .line 85
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x1f

    if-ge v0, v2, :cond_5

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x18

    if-lt v0, v2, :cond_5

    .line 87
    invoke-virtual {p1}, Landroid/view/DragEvent;->getLocalState()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_5

    .line 88
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->getOnReceiveContentMimeTypes(Landroid/view/View;)[Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 95
    :cond_0
    invoke-static {p0}, Landroidx/appcompat/widget/AppCompatReceiveContentHelper;->tryGetActivity(Landroid/view/View;)Landroid/app/Activity;

    move-result-object v0

    .line 96
    .local v0, "activity":Landroid/app/Activity;
    if-nez v0, :cond_1

    .line 97
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can\'t handle drop: no activity: view="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ReceiveContent"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    return v1

    .line 100
    :cond_1
    invoke-virtual {p1}, Landroid/view/DragEvent;->getAction()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    .line 106
    instance-of v1, p0, Landroid/widget/TextView;

    xor-int/2addr v1, v3

    return v1

    .line 108
    :cond_2
    invoke-virtual {p1}, Landroid/view/DragEvent;->getAction()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_4

    .line 109
    instance-of v1, p0, Landroid/widget/TextView;

    if-eqz v1, :cond_3

    .line 110
    move-object v1, p0

    check-cast v1, Landroid/widget/TextView;

    invoke-static {p1, v1, v0}, Landroidx/appcompat/widget/AppCompatReceiveContentHelper$OnDropApi24Impl;->onDropForTextView(Landroid/view/DragEvent;Landroid/widget/TextView;Landroid/app/Activity;)Z

    move-result v1

    goto :goto_0

    .line 111
    :cond_3
    invoke-static {p1, p0, v0}, Landroidx/appcompat/widget/AppCompatReceiveContentHelper$OnDropApi24Impl;->onDropForView(Landroid/view/DragEvent;Landroid/view/View;Landroid/app/Activity;)Z

    move-result v1

    .line 109
    :goto_0
    return v1

    .line 113
    :cond_4
    return v1

    .line 89
    .end local v0    # "activity":Landroid/app/Activity;
    :cond_5
    :goto_1
    return v1
.end method

.method static maybeHandleMenuActionViaPerformReceiveContent(Landroid/widget/TextView;I)Z
    .locals 6
    .param p0, "view"    # Landroid/widget/TextView;
    .param p1, "actionId"    # I

    .line 59
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x1f

    if-ge v0, v2, :cond_4

    .line 60
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->getOnReceiveContentMimeTypes(Landroid/view/View;)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    const v0, 0x1020022

    if-eq p1, v0, :cond_0

    const v2, 0x1020031

    if-eq p1, v2, :cond_0

    goto :goto_2

    .line 64
    :cond_0
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "clipboard"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ClipboardManager;

    .line 66
    .local v2, "cm":Landroid/content/ClipboardManager;
    if-nez v2, :cond_1

    const/4 v3, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Landroid/content/ClipboardManager;->getPrimaryClip()Landroid/content/ClipData;

    move-result-object v3

    .line 67
    .local v3, "clip":Landroid/content/ClipData;
    :goto_0
    const/4 v4, 0x1

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Landroid/content/ClipData;->getItemCount()I

    move-result v5

    if-lez v5, :cond_3

    .line 68
    new-instance v5, Landroidx/core/view/ContentInfoCompat$Builder;

    invoke-direct {v5, v3, v4}, Landroidx/core/view/ContentInfoCompat$Builder;-><init>(Landroid/content/ClipData;I)V

    .line 69
    if-ne p1, v0, :cond_2

    goto :goto_1

    :cond_2
    const/4 v1, 0x1

    :goto_1
    invoke-virtual {v5, v1}, Landroidx/core/view/ContentInfoCompat$Builder;->setFlags(I)Landroidx/core/view/ContentInfoCompat$Builder;

    move-result-object v0

    .line 70
    invoke-virtual {v0}, Landroidx/core/view/ContentInfoCompat$Builder;->build()Landroidx/core/view/ContentInfoCompat;

    move-result-object v0

    .line 71
    .local v0, "payload":Landroidx/core/view/ContentInfoCompat;
    invoke-static {p0, v0}, Landroidx/core/view/ViewCompat;->performReceiveContent(Landroid/view/View;Landroidx/core/view/ContentInfoCompat;)Landroidx/core/view/ContentInfoCompat;

    .line 73
    .end local v0    # "payload":Landroidx/core/view/ContentInfoCompat;
    :cond_3
    return v4

    .line 62
    .end local v2    # "cm":Landroid/content/ClipboardManager;
    .end local v3    # "clip":Landroid/content/ClipData;
    :cond_4
    :goto_2
    return v1
.end method

.method static tryGetActivity(Landroid/view/View;)Landroid/app/Activity;
    .locals 2
    .param p0, "view"    # Landroid/view/View;

    .line 158
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 159
    .local v0, "context":Landroid/content/Context;
    :goto_0
    instance-of v1, v0, Landroid/content/ContextWrapper;

    if-eqz v1, :cond_1

    .line 160
    instance-of v1, v0, Landroid/app/Activity;

    if-eqz v1, :cond_0

    .line 161
    move-object v1, v0

    check-cast v1, Landroid/app/Activity;

    return-object v1

    .line 163
    :cond_0
    move-object v1, v0

    check-cast v1, Landroid/content/ContextWrapper;

    invoke-virtual {v1}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    goto :goto_0

    .line 165
    :cond_1
    const/4 v1, 0x0

    return-object v1
.end method
