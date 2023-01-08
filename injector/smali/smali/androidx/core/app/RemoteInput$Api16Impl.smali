.class Landroidx/core/app/RemoteInput$Api16Impl;
.super Ljava/lang/Object;
.source "RemoteInput.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/app/RemoteInput;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Api16Impl"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 692
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 694
    return-void
.end method

.method static getClipData(Landroid/content/Intent;)Landroid/content/ClipData;
    .locals 1
    .param p0, "intent"    # Landroid/content/Intent;

    .line 698
    invoke-virtual {p0}, Landroid/content/Intent;->getClipData()Landroid/content/ClipData;

    move-result-object v0

    return-object v0
.end method

.method static setClipData(Landroid/content/Intent;Landroid/content/ClipData;)V
    .locals 0
    .param p0, "intent"    # Landroid/content/Intent;
    .param p1, "clip"    # Landroid/content/ClipData;

    .line 703
    invoke-virtual {p0, p1}, Landroid/content/Intent;->setClipData(Landroid/content/ClipData;)V

    .line 704
    return-void
.end method
