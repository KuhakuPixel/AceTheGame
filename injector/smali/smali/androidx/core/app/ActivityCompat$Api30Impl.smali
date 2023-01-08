.class Landroidx/core/app/ActivityCompat$Api30Impl;
.super Ljava/lang/Object;
.source "ActivityCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/app/ActivityCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Api30Impl"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 729
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 731
    return-void
.end method

.method static getDisplay(Landroid/content/ContextWrapper;)Landroid/view/Display;
    .locals 1
    .param p0, "contextWrapper"    # Landroid/content/ContextWrapper;

    .line 741
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getDisplay()Landroid/view/Display;

    move-result-object v0

    return-object v0
.end method

.method static setLocusContext(Landroid/app/Activity;Landroidx/core/content/LocusIdCompat;Landroid/os/Bundle;)V
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "locusId"    # Landroidx/core/content/LocusIdCompat;
    .param p2, "bundle"    # Landroid/os/Bundle;

    .line 736
    if-nez p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroidx/core/content/LocusIdCompat;->toLocusId()Landroid/content/LocusId;

    move-result-object v0

    :goto_0
    invoke-virtual {p0, v0, p2}, Landroid/app/Activity;->setLocusContext(Landroid/content/LocusId;Landroid/os/Bundle;)V

    .line 737
    return-void
.end method
