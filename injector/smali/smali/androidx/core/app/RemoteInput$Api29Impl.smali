.class Landroidx/core/app/RemoteInput$Api29Impl;
.super Ljava/lang/Object;
.source "RemoteInput.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/app/RemoteInput;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Api29Impl"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 709
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 711
    return-void
.end method

.method static getEditChoicesBeforeSending(Ljava/lang/Object;)I
    .locals 1
    .param p0, "remoteInput"    # Ljava/lang/Object;

    .line 715
    move-object v0, p0

    check-cast v0, Landroid/app/RemoteInput;

    invoke-virtual {v0}, Landroid/app/RemoteInput;->getEditChoicesBeforeSending()I

    move-result v0

    return v0
.end method

.method static setEditChoicesBeforeSending(Landroid/app/RemoteInput$Builder;I)Landroid/app/RemoteInput$Builder;
    .locals 1
    .param p0, "builder"    # Landroid/app/RemoteInput$Builder;
    .param p1, "editChoicesBeforeSending"    # I

    .line 721
    invoke-virtual {p0, p1}, Landroid/app/RemoteInput$Builder;->setEditChoicesBeforeSending(I)Landroid/app/RemoteInput$Builder;

    move-result-object v0

    return-object v0
.end method
