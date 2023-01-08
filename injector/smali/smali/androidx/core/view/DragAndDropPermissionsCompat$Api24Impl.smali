.class Landroidx/core/view/DragAndDropPermissionsCompat$Api24Impl;
.super Ljava/lang/Object;
.source "DragAndDropPermissionsCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/view/DragAndDropPermissionsCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Api24Impl"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    return-void
.end method

.method static release(Landroid/view/DragAndDropPermissions;)V
    .locals 0
    .param p0, "dragAndDropPermissions"    # Landroid/view/DragAndDropPermissions;

    .line 87
    invoke-virtual {p0}, Landroid/view/DragAndDropPermissions;->release()V

    .line 88
    return-void
.end method

.method static requestDragAndDropPermissions(Landroid/app/Activity;Landroid/view/DragEvent;)Landroid/view/DragAndDropPermissions;
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "event"    # Landroid/view/DragEvent;

    .line 82
    invoke-virtual {p0, p1}, Landroid/app/Activity;->requestDragAndDropPermissions(Landroid/view/DragEvent;)Landroid/view/DragAndDropPermissions;

    move-result-object v0

    return-object v0
.end method
