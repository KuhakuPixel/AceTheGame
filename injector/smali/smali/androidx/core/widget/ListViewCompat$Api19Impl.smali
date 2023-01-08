.class Landroidx/core/widget/ListViewCompat$Api19Impl;
.super Ljava/lang/Object;
.source "ListViewCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/widget/ListViewCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Api19Impl"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    return-void
.end method

.method static canScrollList(Landroid/widget/ListView;I)Z
    .locals 1
    .param p0, "absListView"    # Landroid/widget/ListView;
    .param p1, "direction"    # I

    .line 108
    invoke-virtual {p0, p1}, Landroid/widget/ListView;->canScrollList(I)Z

    move-result v0

    return v0
.end method

.method static scrollListBy(Landroid/widget/ListView;I)V
    .locals 0
    .param p0, "absListView"    # Landroid/widget/ListView;
    .param p1, "y"    # I

    .line 103
    invoke-virtual {p0, p1}, Landroid/widget/ListView;->scrollListBy(I)V

    .line 104
    return-void
.end method
