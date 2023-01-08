.class public final Landroidx/core/widget/EdgeEffectCompat;
.super Ljava/lang/Object;
.source "EdgeEffectCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/widget/EdgeEffectCompat$Api21Impl;,
        Landroidx/core/widget/EdgeEffectCompat$Api31Impl;
    }
.end annotation


# instance fields
.field private final mEdgeEffect:Landroid/widget/EdgeEffect;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    new-instance v0, Landroid/widget/EdgeEffect;

    invoke-direct {v0, p1}, Landroid/widget/EdgeEffect;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroidx/core/widget/EdgeEffectCompat;->mEdgeEffect:Landroid/widget/EdgeEffect;

    .line 58
    return-void
.end method

.method public static create(Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/widget/EdgeEffect;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .line 69
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1f

    if-lt v0, v1, :cond_0

    .line 70
    invoke-static {p0, p1}, Landroidx/core/widget/EdgeEffectCompat$Api31Impl;->create(Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/widget/EdgeEffect;

    move-result-object v0

    return-object v0

    .line 73
    :cond_0
    new-instance v0, Landroid/widget/EdgeEffect;

    invoke-direct {v0, p0}, Landroid/widget/EdgeEffect;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public static getDistance(Landroid/widget/EdgeEffect;)F
    .locals 2
    .param p0, "edgeEffect"    # Landroid/widget/EdgeEffect;

    .line 90
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1f

    if-lt v0, v1, :cond_0

    .line 91
    invoke-static {p0}, Landroidx/core/widget/EdgeEffectCompat$Api31Impl;->getDistance(Landroid/widget/EdgeEffect;)F

    move-result v0

    return v0

    .line 93
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static onPull(Landroid/widget/EdgeEffect;FF)V
    .locals 2
    .param p0, "edgeEffect"    # Landroid/widget/EdgeEffect;
    .param p1, "deltaDistance"    # F
    .param p2, "displacement"    # F

    .line 197
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 198
    invoke-static {p0, p1, p2}, Landroidx/core/widget/EdgeEffectCompat$Api21Impl;->onPull(Landroid/widget/EdgeEffect;FF)V

    goto :goto_0

    .line 200
    :cond_0
    invoke-virtual {p0, p1}, Landroid/widget/EdgeEffect;->onPull(F)V

    .line 202
    :goto_0
    return-void
.end method

.method public static onPullDistance(Landroid/widget/EdgeEffect;FF)F
    .locals 2
    .param p0, "edgeEffect"    # Landroid/widget/EdgeEffect;
    .param p1, "deltaDistance"    # F
    .param p2, "displacement"    # F

    .line 245
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1f

    if-lt v0, v1, :cond_0

    .line 246
    invoke-static {p0, p1, p2}, Landroidx/core/widget/EdgeEffectCompat$Api31Impl;->onPullDistance(Landroid/widget/EdgeEffect;FF)F

    move-result v0

    return v0

    .line 248
    :cond_0
    invoke-static {p0, p1, p2}, Landroidx/core/widget/EdgeEffectCompat;->onPull(Landroid/widget/EdgeEffect;FF)V

    .line 249
    return p1
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)Z
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 301
    iget-object v0, p0, Landroidx/core/widget/EdgeEffectCompat;->mEdgeEffect:Landroid/widget/EdgeEffect;

    invoke-virtual {v0, p1}, Landroid/widget/EdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    move-result v0

    return v0
.end method

.method public finish()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 131
    iget-object v0, p0, Landroidx/core/widget/EdgeEffectCompat;->mEdgeEffect:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->finish()V

    .line 132
    return-void
.end method

.method public isFinished()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 120
    iget-object v0, p0, Landroidx/core/widget/EdgeEffectCompat;->mEdgeEffect:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v0

    return v0
.end method

.method public onAbsorb(I)Z
    .locals 1
    .param p1, "velocity"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 283
    iget-object v0, p0, Landroidx/core/widget/EdgeEffectCompat;->mEdgeEffect:Landroid/widget/EdgeEffect;

    invoke-virtual {v0, p1}, Landroid/widget/EdgeEffect;->onAbsorb(I)V

    .line 284
    const/4 v0, 0x1

    return v0
.end method

.method public onPull(F)Z
    .locals 1
    .param p1, "deltaDistance"    # F
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 149
    iget-object v0, p0, Landroidx/core/widget/EdgeEffectCompat;->mEdgeEffect:Landroid/widget/EdgeEffect;

    invoke-virtual {v0, p1}, Landroid/widget/EdgeEffect;->onPull(F)V

    .line 150
    const/4 v0, 0x1

    return v0
.end method

.method public onPull(FF)Z
    .locals 1
    .param p1, "deltaDistance"    # F
    .param p2, "displacement"    # F
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 174
    iget-object v0, p0, Landroidx/core/widget/EdgeEffectCompat;->mEdgeEffect:Landroid/widget/EdgeEffect;

    invoke-static {v0, p1, p2}, Landroidx/core/widget/EdgeEffectCompat;->onPull(Landroid/widget/EdgeEffect;FF)V

    .line 175
    const/4 v0, 0x1

    return v0
.end method

.method public onRelease()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 264
    iget-object v0, p0, Landroidx/core/widget/EdgeEffectCompat;->mEdgeEffect:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 265
    iget-object v0, p0, Landroidx/core/widget/EdgeEffectCompat;->mEdgeEffect:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v0

    return v0
.end method

.method public setSize(II)V
    .locals 1
    .param p1, "width"    # I
    .param p2, "height"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 106
    iget-object v0, p0, Landroidx/core/widget/EdgeEffectCompat;->mEdgeEffect:Landroid/widget/EdgeEffect;

    invoke-virtual {v0, p1, p2}, Landroid/widget/EdgeEffect;->setSize(II)V

    .line 107
    return-void
.end method
