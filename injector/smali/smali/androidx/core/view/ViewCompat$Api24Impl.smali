.class Landroidx/core/view/ViewCompat$Api24Impl;
.super Ljava/lang/Object;
.source "ViewCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/view/ViewCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Api24Impl"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 5263
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5265
    return-void
.end method

.method static cancelDragAndDrop(Landroid/view/View;)V
    .locals 0
    .param p0, "view"    # Landroid/view/View;

    .line 5281
    invoke-virtual {p0}, Landroid/view/View;->cancelDragAndDrop()V

    .line 5282
    return-void
.end method

.method static dispatchFinishTemporaryDetach(Landroid/view/View;)V
    .locals 0
    .param p0, "view"    # Landroid/view/View;

    .line 5297
    invoke-virtual {p0}, Landroid/view/View;->dispatchFinishTemporaryDetach()V

    .line 5298
    return-void
.end method

.method static dispatchStartTemporaryDetach(Landroid/view/View;)V
    .locals 0
    .param p0, "view"    # Landroid/view/View;

    .line 5292
    invoke-virtual {p0}, Landroid/view/View;->dispatchStartTemporaryDetach()V

    .line 5293
    return-void
.end method

.method static setPointerIcon(Landroid/view/View;Landroid/view/PointerIcon;)V
    .locals 0
    .param p0, "view"    # Landroid/view/View;
    .param p1, "pointerIcon"    # Landroid/view/PointerIcon;

    .line 5269
    invoke-virtual {p0, p1}, Landroid/view/View;->setPointerIcon(Landroid/view/PointerIcon;)V

    .line 5270
    return-void
.end method

.method static startDragAndDrop(Landroid/view/View;Landroid/content/ClipData;Landroid/view/View$DragShadowBuilder;Ljava/lang/Object;I)Z
    .locals 1
    .param p0, "view"    # Landroid/view/View;
    .param p1, "data"    # Landroid/content/ClipData;
    .param p2, "shadowBuilder"    # Landroid/view/View$DragShadowBuilder;
    .param p3, "myLocalState"    # Ljava/lang/Object;
    .param p4, "flags"    # I

    .line 5276
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/view/View;->startDragAndDrop(Landroid/content/ClipData;Landroid/view/View$DragShadowBuilder;Ljava/lang/Object;I)Z

    move-result v0

    return v0
.end method

.method static updateDragShadow(Landroid/view/View;Landroid/view/View$DragShadowBuilder;)V
    .locals 0
    .param p0, "view"    # Landroid/view/View;
    .param p1, "shadowBuilder"    # Landroid/view/View$DragShadowBuilder;

    .line 5287
    invoke-virtual {p0, p1}, Landroid/view/View;->updateDragShadow(Landroid/view/View$DragShadowBuilder;)V

    .line 5288
    return-void
.end method
