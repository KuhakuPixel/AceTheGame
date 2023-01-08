.class public final Landroidx/core/graphics/PaintKt;
.super Ljava/lang/Object;
.source "Paint.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0000\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u001a\u0017\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0004H\u0086\u0008\u00a8\u0006\u0005"
    }
    d2 = {
        "setBlendMode",
        "",
        "Landroid/graphics/Paint;",
        "blendModeCompat",
        "Landroidx/core/graphics/BlendModeCompat;",
        "core-ktx_release"
    }
    k = 0x2
    mv = {
        0x1,
        0x6,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static final setBlendMode(Landroid/graphics/Paint;Landroidx/core/graphics/BlendModeCompat;)Z
    .locals 2
    .param p0, "$this$setBlendMode"    # Landroid/graphics/Paint;
    .param p1, "blendModeCompat"    # Landroidx/core/graphics/BlendModeCompat;

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 29
    .local v0, "$i$f$setBlendMode":I
    invoke-static {p0, p1}, Landroidx/core/graphics/PaintCompat;->setBlendMode(Landroid/graphics/Paint;Landroidx/core/graphics/BlendModeCompat;)Z

    move-result v1

    return v1
.end method
