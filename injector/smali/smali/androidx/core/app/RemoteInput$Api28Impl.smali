.class Landroidx/core/app/RemoteInput$Api28Impl;
.super Ljava/lang/Object;
.source "RemoteInput.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/app/RemoteInput;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Api28Impl"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 727
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 729
    return-void
.end method

.method static getResultsSource(Landroid/content/Intent;)I
    .locals 1
    .param p0, "intent"    # Landroid/content/Intent;

    .line 738
    invoke-static {p0}, Landroid/app/RemoteInput;->getResultsSource(Landroid/content/Intent;)I

    move-result v0

    return v0
.end method

.method static setResultsSource(Landroid/content/Intent;I)V
    .locals 0
    .param p0, "intent"    # Landroid/content/Intent;
    .param p1, "source"    # I

    .line 733
    invoke-static {p0, p1}, Landroid/app/RemoteInput;->setResultsSource(Landroid/content/Intent;I)V

    .line 734
    return-void
.end method
