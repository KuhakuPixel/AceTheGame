.class final Landroidx/appcompat/widget/AppCompatReceiveContentHelper$OnDropApi24Impl;
.super Ljava/lang/Object;
.source "AppCompatReceiveContentHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/widget/AppCompatReceiveContentHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "OnDropApi24Impl"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static onDropForTextView(Landroid/view/DragEvent;Landroid/widget/TextView;Landroid/app/Activity;)Z
    .locals 4
    .param p0, "event"    # Landroid/view/DragEvent;
    .param p1, "view"    # Landroid/widget/TextView;
    .param p2, "activity"    # Landroid/app/Activity;

    .line 123
    invoke-virtual {p2, p0}, Landroid/app/Activity;->requestDragAndDropPermissions(Landroid/view/DragEvent;)Landroid/view/DragAndDropPermissions;

    .line 124
    invoke-virtual {p0}, Landroid/view/DragEvent;->getX()F

    move-result v0

    invoke-virtual {p0}, Landroid/view/DragEvent;->getY()F

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/widget/TextView;->getOffsetForPosition(FF)I

    move-result v0

    .line 125
    .local v0, "offset":I
    invoke-virtual {p1}, Landroid/widget/TextView;->beginBatchEdit()V

    .line 127
    :try_start_0
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Landroid/text/Spannable;

    invoke-static {v1, v0}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 128
    new-instance v1, Landroidx/core/view/ContentInfoCompat$Builder;

    .line 129
    invoke-virtual {p0}, Landroid/view/DragEvent;->getClipData()Landroid/content/ClipData;

    move-result-object v2

    const/4 v3, 0x3

    invoke-direct {v1, v2, v3}, Landroidx/core/view/ContentInfoCompat$Builder;-><init>(Landroid/content/ClipData;I)V

    invoke-virtual {v1}, Landroidx/core/view/ContentInfoCompat$Builder;->build()Landroidx/core/view/ContentInfoCompat;

    move-result-object v1

    .line 130
    .local v1, "payload":Landroidx/core/view/ContentInfoCompat;
    invoke-static {p1, v1}, Landroidx/core/view/ViewCompat;->performReceiveContent(Landroid/view/View;Landroidx/core/view/ContentInfoCompat;)Landroidx/core/view/ContentInfoCompat;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 132
    nop

    .end local v1    # "payload":Landroidx/core/view/ContentInfoCompat;
    invoke-virtual {p1}, Landroid/widget/TextView;->endBatchEdit()V

    .line 133
    nop

    .line 134
    const/4 v1, 0x1

    return v1

    .line 132
    :catchall_0
    move-exception v1

    invoke-virtual {p1}, Landroid/widget/TextView;->endBatchEdit()V

    .line 133
    throw v1
.end method

.method static onDropForView(Landroid/view/DragEvent;Landroid/view/View;Landroid/app/Activity;)Z
    .locals 3
    .param p0, "event"    # Landroid/view/DragEvent;
    .param p1, "view"    # Landroid/view/View;
    .param p2, "activity"    # Landroid/app/Activity;

    .line 140
    invoke-virtual {p2, p0}, Landroid/app/Activity;->requestDragAndDropPermissions(Landroid/view/DragEvent;)Landroid/view/DragAndDropPermissions;

    .line 141
    new-instance v0, Landroidx/core/view/ContentInfoCompat$Builder;

    .line 142
    invoke-virtual {p0}, Landroid/view/DragEvent;->getClipData()Landroid/content/ClipData;

    move-result-object v1

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Landroidx/core/view/ContentInfoCompat$Builder;-><init>(Landroid/content/ClipData;I)V

    invoke-virtual {v0}, Landroidx/core/view/ContentInfoCompat$Builder;->build()Landroidx/core/view/ContentInfoCompat;

    move-result-object v0

    .line 143
    .local v0, "payload":Landroidx/core/view/ContentInfoCompat;
    invoke-static {p1, v0}, Landroidx/core/view/ViewCompat;->performReceiveContent(Landroid/view/View;Landroidx/core/view/ContentInfoCompat;)Landroidx/core/view/ContentInfoCompat;

    .line 144
    const/4 v1, 0x1

    return v1
.end method
