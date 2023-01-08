.class public final Landroidx/core/view/ContentInfoCompat$Builder;
.super Ljava/lang/Object;
.source "ContentInfoCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/view/ContentInfoCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private final mBuilderCompat:Landroidx/core/view/ContentInfoCompat$BuilderCompat;


# direct methods
.method public constructor <init>(Landroid/content/ClipData;I)V
    .locals 2
    .param p1, "clip"    # Landroid/content/ClipData;
    .param p2, "source"    # I

    .line 517
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 518
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1f

    if-lt v0, v1, :cond_0

    .line 519
    new-instance v0, Landroidx/core/view/ContentInfoCompat$BuilderCompat31Impl;

    invoke-direct {v0, p1, p2}, Landroidx/core/view/ContentInfoCompat$BuilderCompat31Impl;-><init>(Landroid/content/ClipData;I)V

    iput-object v0, p0, Landroidx/core/view/ContentInfoCompat$Builder;->mBuilderCompat:Landroidx/core/view/ContentInfoCompat$BuilderCompat;

    goto :goto_0

    .line 521
    :cond_0
    new-instance v0, Landroidx/core/view/ContentInfoCompat$BuilderCompatImpl;

    invoke-direct {v0, p1, p2}, Landroidx/core/view/ContentInfoCompat$BuilderCompatImpl;-><init>(Landroid/content/ClipData;I)V

    iput-object v0, p0, Landroidx/core/view/ContentInfoCompat$Builder;->mBuilderCompat:Landroidx/core/view/ContentInfoCompat$BuilderCompat;

    .line 523
    :goto_0
    return-void
.end method

.method public constructor <init>(Landroidx/core/view/ContentInfoCompat;)V
    .locals 2
    .param p1, "other"    # Landroidx/core/view/ContentInfoCompat;

    .line 503
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 504
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1f

    if-lt v0, v1, :cond_0

    .line 505
    new-instance v0, Landroidx/core/view/ContentInfoCompat$BuilderCompat31Impl;

    invoke-direct {v0, p1}, Landroidx/core/view/ContentInfoCompat$BuilderCompat31Impl;-><init>(Landroidx/core/view/ContentInfoCompat;)V

    iput-object v0, p0, Landroidx/core/view/ContentInfoCompat$Builder;->mBuilderCompat:Landroidx/core/view/ContentInfoCompat$BuilderCompat;

    goto :goto_0

    .line 507
    :cond_0
    new-instance v0, Landroidx/core/view/ContentInfoCompat$BuilderCompatImpl;

    invoke-direct {v0, p1}, Landroidx/core/view/ContentInfoCompat$BuilderCompatImpl;-><init>(Landroidx/core/view/ContentInfoCompat;)V

    iput-object v0, p0, Landroidx/core/view/ContentInfoCompat$Builder;->mBuilderCompat:Landroidx/core/view/ContentInfoCompat$BuilderCompat;

    .line 509
    :goto_0
    return-void
.end method


# virtual methods
.method public build()Landroidx/core/view/ContentInfoCompat;
    .locals 1

    .line 592
    iget-object v0, p0, Landroidx/core/view/ContentInfoCompat$Builder;->mBuilderCompat:Landroidx/core/view/ContentInfoCompat$BuilderCompat;

    invoke-interface {v0}, Landroidx/core/view/ContentInfoCompat$BuilderCompat;->build()Landroidx/core/view/ContentInfoCompat;

    move-result-object v0

    return-object v0
.end method

.method public setClip(Landroid/content/ClipData;)Landroidx/core/view/ContentInfoCompat$Builder;
    .locals 1
    .param p1, "clip"    # Landroid/content/ClipData;

    .line 533
    iget-object v0, p0, Landroidx/core/view/ContentInfoCompat$Builder;->mBuilderCompat:Landroidx/core/view/ContentInfoCompat$BuilderCompat;

    invoke-interface {v0, p1}, Landroidx/core/view/ContentInfoCompat$BuilderCompat;->setClip(Landroid/content/ClipData;)V

    .line 534
    return-object p0
.end method

.method public setExtras(Landroid/os/Bundle;)Landroidx/core/view/ContentInfoCompat$Builder;
    .locals 1
    .param p1, "extras"    # Landroid/os/Bundle;

    .line 583
    iget-object v0, p0, Landroidx/core/view/ContentInfoCompat$Builder;->mBuilderCompat:Landroidx/core/view/ContentInfoCompat$BuilderCompat;

    invoke-interface {v0, p1}, Landroidx/core/view/ContentInfoCompat$BuilderCompat;->setExtras(Landroid/os/Bundle;)V

    .line 584
    return-object p0
.end method

.method public setFlags(I)Landroidx/core/view/ContentInfoCompat$Builder;
    .locals 1
    .param p1, "flags"    # I

    .line 558
    iget-object v0, p0, Landroidx/core/view/ContentInfoCompat$Builder;->mBuilderCompat:Landroidx/core/view/ContentInfoCompat$BuilderCompat;

    invoke-interface {v0, p1}, Landroidx/core/view/ContentInfoCompat$BuilderCompat;->setFlags(I)V

    .line 559
    return-object p0
.end method

.method public setLinkUri(Landroid/net/Uri;)Landroidx/core/view/ContentInfoCompat$Builder;
    .locals 1
    .param p1, "linkUri"    # Landroid/net/Uri;

    .line 571
    iget-object v0, p0, Landroidx/core/view/ContentInfoCompat$Builder;->mBuilderCompat:Landroidx/core/view/ContentInfoCompat$BuilderCompat;

    invoke-interface {v0, p1}, Landroidx/core/view/ContentInfoCompat$BuilderCompat;->setLinkUri(Landroid/net/Uri;)V

    .line 572
    return-object p0
.end method

.method public setSource(I)Landroidx/core/view/ContentInfoCompat$Builder;
    .locals 1
    .param p1, "source"    # I

    .line 545
    iget-object v0, p0, Landroidx/core/view/ContentInfoCompat$Builder;->mBuilderCompat:Landroidx/core/view/ContentInfoCompat$BuilderCompat;

    invoke-interface {v0, p1}, Landroidx/core/view/ContentInfoCompat$BuilderCompat;->setSource(I)V

    .line 546
    return-object p0
.end method
