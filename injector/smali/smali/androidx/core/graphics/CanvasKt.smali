.class public final Landroidx/core/graphics/CanvasKt;
.super Ljava/lang/Object;
.source "Canvas.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000>\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u000b\u001a1\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u00042\u0017\u0010\u0005\u001a\u0013\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00010\u0006\u00a2\u0006\u0002\u0008\u0007H\u0086\u0008\u00f8\u0001\u0000\u001a1\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0008\u001a\u00020\t2\u0017\u0010\u0005\u001a\u0013\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00010\u0006\u00a2\u0006\u0002\u0008\u0007H\u0086\u0008\u00f8\u0001\u0000\u001a1\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0008\u001a\u00020\n2\u0017\u0010\u0005\u001a\u0013\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00010\u0006\u00a2\u0006\u0002\u0008\u0007H\u0086\u0008\u00f8\u0001\u0000\u001aI\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u000c2\u0006\u0010\u000e\u001a\u00020\u000c2\u0006\u0010\u000f\u001a\u00020\u000c2\u0017\u0010\u0005\u001a\u0013\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00010\u0006\u00a2\u0006\u0002\u0008\u0007H\u0086\u0008\u00f8\u0001\u0000\u001aI\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u000b\u001a\u00020\u00102\u0006\u0010\r\u001a\u00020\u00102\u0006\u0010\u000e\u001a\u00020\u00102\u0006\u0010\u000f\u001a\u00020\u00102\u0017\u0010\u0005\u001a\u0013\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00010\u0006\u00a2\u0006\u0002\u0008\u0007H\u0086\u0008\u00f8\u0001\u0000\u001a3\u0010\u0011\u001a\u00020\u0001*\u00020\u00022\u0008\u0008\u0002\u0010\u0012\u001a\u00020\u00132\u0017\u0010\u0005\u001a\u0013\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00010\u0006\u00a2\u0006\u0002\u0008\u0007H\u0086\u0008\u00f8\u0001\u0000\u001aG\u0010\u0014\u001a\u00020\u0001*\u00020\u00022\u0008\u0008\u0002\u0010\u0015\u001a\u00020\u000c2\u0008\u0008\u0002\u0010\u0016\u001a\u00020\u000c2\u0008\u0008\u0002\u0010\u0017\u001a\u00020\u000c2\u0017\u0010\u0005\u001a\u0013\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00010\u0006\u00a2\u0006\u0002\u0008\u0007H\u0086\u0008\u00f8\u0001\u0000\u001a)\u0010\u0018\u001a\u00020\u0001*\u00020\u00022\u0017\u0010\u0005\u001a\u0013\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00010\u0006\u00a2\u0006\u0002\u0008\u0007H\u0086\u0008\u00f8\u0001\u0000\u001aQ\u0010\u0019\u001a\u00020\u0001*\u00020\u00022\u0008\u0008\u0002\u0010\u001a\u001a\u00020\u000c2\u0008\u0008\u0002\u0010\u001b\u001a\u00020\u000c2\u0008\u0008\u0002\u0010\u0016\u001a\u00020\u000c2\u0008\u0008\u0002\u0010\u0017\u001a\u00020\u000c2\u0017\u0010\u0005\u001a\u0013\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00010\u0006\u00a2\u0006\u0002\u0008\u0007H\u0086\u0008\u00f8\u0001\u0000\u001a=\u0010\u001c\u001a\u00020\u0001*\u00020\u00022\u0008\u0008\u0002\u0010\u001a\u001a\u00020\u000c2\u0008\u0008\u0002\u0010\u001b\u001a\u00020\u000c2\u0017\u0010\u0005\u001a\u0013\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00010\u0006\u00a2\u0006\u0002\u0008\u0007H\u0086\u0008\u00f8\u0001\u0000\u001a=\u0010\u001d\u001a\u00020\u0001*\u00020\u00022\u0008\u0008\u0002\u0010\u001a\u001a\u00020\u000c2\u0008\u0008\u0002\u0010\u001b\u001a\u00020\u000c2\u0017\u0010\u0005\u001a\u0013\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00010\u0006\u00a2\u0006\u0002\u0008\u0007H\u0086\u0008\u00f8\u0001\u0000\u0082\u0002\u0007\n\u0005\u0008\u009920\u0001\u00a8\u0006\u001e"
    }
    d2 = {
        "withClip",
        "",
        "Landroid/graphics/Canvas;",
        "clipPath",
        "Landroid/graphics/Path;",
        "block",
        "Lkotlin/Function1;",
        "Lkotlin/ExtensionFunctionType;",
        "clipRect",
        "Landroid/graphics/Rect;",
        "Landroid/graphics/RectF;",
        "left",
        "",
        "top",
        "right",
        "bottom",
        "",
        "withMatrix",
        "matrix",
        "Landroid/graphics/Matrix;",
        "withRotation",
        "degrees",
        "pivotX",
        "pivotY",
        "withSave",
        "withScale",
        "x",
        "y",
        "withSkew",
        "withTranslation",
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
.method public static final withClip(Landroid/graphics/Canvas;FFFFLkotlin/jvm/functions/Function1;)V
    .locals 4
    .param p0, "$this$withClip"    # Landroid/graphics/Canvas;
    .param p1, "left"    # F
    .param p2, "top"    # F
    .param p3, "right"    # F
    .param p4, "bottom"    # F
    .param p5, "block"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Canvas;",
            "FFFF",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroid/graphics/Canvas;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "block"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 195
    .local v0, "$i$f$withClip":I
    invoke-virtual {p0}, Landroid/graphics/Canvas;->save()I

    move-result v1

    .line 196
    .local v1, "checkpoint":I
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    .line 197
    nop

    .line 198
    const/4 v2, 0x1

    :try_start_0
    invoke-interface {p5, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v2}, Lkotlin/jvm/internal/InlineMarker;->finallyStart(I)V

    .line 200
    invoke-virtual {p0, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    invoke-static {v2}, Lkotlin/jvm/internal/InlineMarker;->finallyEnd(I)V

    .line 201
    nop

    .line 202
    return-void

    .line 199
    :catchall_0
    move-exception v3

    invoke-static {v2}, Lkotlin/jvm/internal/InlineMarker;->finallyStart(I)V

    .line 200
    invoke-virtual {p0, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    invoke-static {v2}, Lkotlin/jvm/internal/InlineMarker;->finallyEnd(I)V

    throw v3
.end method

.method public static final withClip(Landroid/graphics/Canvas;IIIILkotlin/jvm/functions/Function1;)V
    .locals 4
    .param p0, "$this$withClip"    # Landroid/graphics/Canvas;
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I
    .param p5, "block"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Canvas;",
            "IIII",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroid/graphics/Canvas;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "block"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 175
    .local v0, "$i$f$withClip":I
    invoke-virtual {p0}, Landroid/graphics/Canvas;->save()I

    move-result v1

    .line 176
    .local v1, "checkpoint":I
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 177
    nop

    .line 178
    const/4 v2, 0x1

    :try_start_0
    invoke-interface {p5, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v2}, Lkotlin/jvm/internal/InlineMarker;->finallyStart(I)V

    .line 180
    invoke-virtual {p0, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    invoke-static {v2}, Lkotlin/jvm/internal/InlineMarker;->finallyEnd(I)V

    .line 181
    nop

    .line 182
    return-void

    .line 179
    :catchall_0
    move-exception v3

    invoke-static {v2}, Lkotlin/jvm/internal/InlineMarker;->finallyStart(I)V

    .line 180
    invoke-virtual {p0, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    invoke-static {v2}, Lkotlin/jvm/internal/InlineMarker;->finallyEnd(I)V

    throw v3
.end method

.method public static final withClip(Landroid/graphics/Canvas;Landroid/graphics/Path;Lkotlin/jvm/functions/Function1;)V
    .locals 4
    .param p0, "$this$withClip"    # Landroid/graphics/Canvas;
    .param p1, "clipPath"    # Landroid/graphics/Path;
    .param p2, "block"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Canvas;",
            "Landroid/graphics/Path;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroid/graphics/Canvas;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "clipPath"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "block"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 212
    .local v0, "$i$f$withClip":I
    invoke-virtual {p0}, Landroid/graphics/Canvas;->save()I

    move-result v1

    .line 213
    .local v1, "checkpoint":I
    invoke-virtual {p0, p1}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 214
    nop

    .line 215
    const/4 v2, 0x1

    :try_start_0
    invoke-interface {p2, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v2}, Lkotlin/jvm/internal/InlineMarker;->finallyStart(I)V

    .line 217
    invoke-virtual {p0, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    invoke-static {v2}, Lkotlin/jvm/internal/InlineMarker;->finallyEnd(I)V

    .line 218
    nop

    .line 219
    return-void

    .line 216
    :catchall_0
    move-exception v3

    invoke-static {v2}, Lkotlin/jvm/internal/InlineMarker;->finallyStart(I)V

    .line 217
    invoke-virtual {p0, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    invoke-static {v2}, Lkotlin/jvm/internal/InlineMarker;->finallyEnd(I)V

    throw v3
.end method

.method public static final withClip(Landroid/graphics/Canvas;Landroid/graphics/Rect;Lkotlin/jvm/functions/Function1;)V
    .locals 4
    .param p0, "$this$withClip"    # Landroid/graphics/Canvas;
    .param p1, "clipRect"    # Landroid/graphics/Rect;
    .param p2, "block"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Canvas;",
            "Landroid/graphics/Rect;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroid/graphics/Canvas;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "clipRect"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "block"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 138
    .local v0, "$i$f$withClip":I
    invoke-virtual {p0}, Landroid/graphics/Canvas;->save()I

    move-result v1

    .line 139
    .local v1, "checkpoint":I
    invoke-virtual {p0, p1}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    .line 140
    nop

    .line 141
    const/4 v2, 0x1

    :try_start_0
    invoke-interface {p2, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v2}, Lkotlin/jvm/internal/InlineMarker;->finallyStart(I)V

    .line 143
    invoke-virtual {p0, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    invoke-static {v2}, Lkotlin/jvm/internal/InlineMarker;->finallyEnd(I)V

    .line 144
    nop

    .line 145
    return-void

    .line 142
    :catchall_0
    move-exception v3

    invoke-static {v2}, Lkotlin/jvm/internal/InlineMarker;->finallyStart(I)V

    .line 143
    invoke-virtual {p0, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    invoke-static {v2}, Lkotlin/jvm/internal/InlineMarker;->finallyEnd(I)V

    throw v3
.end method

.method public static final withClip(Landroid/graphics/Canvas;Landroid/graphics/RectF;Lkotlin/jvm/functions/Function1;)V
    .locals 4
    .param p0, "$this$withClip"    # Landroid/graphics/Canvas;
    .param p1, "clipRect"    # Landroid/graphics/RectF;
    .param p2, "block"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Canvas;",
            "Landroid/graphics/RectF;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroid/graphics/Canvas;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "clipRect"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "block"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 155
    .local v0, "$i$f$withClip":I
    invoke-virtual {p0}, Landroid/graphics/Canvas;->save()I

    move-result v1

    .line 156
    .local v1, "checkpoint":I
    invoke-virtual {p0, p1}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/RectF;)Z

    .line 157
    nop

    .line 158
    const/4 v2, 0x1

    :try_start_0
    invoke-interface {p2, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v2}, Lkotlin/jvm/internal/InlineMarker;->finallyStart(I)V

    .line 160
    invoke-virtual {p0, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    invoke-static {v2}, Lkotlin/jvm/internal/InlineMarker;->finallyEnd(I)V

    .line 161
    nop

    .line 162
    return-void

    .line 159
    :catchall_0
    move-exception v3

    invoke-static {v2}, Lkotlin/jvm/internal/InlineMarker;->finallyStart(I)V

    .line 160
    invoke-virtual {p0, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    invoke-static {v2}, Lkotlin/jvm/internal/InlineMarker;->finallyEnd(I)V

    throw v3
.end method

.method public static final withMatrix(Landroid/graphics/Canvas;Landroid/graphics/Matrix;Lkotlin/jvm/functions/Function1;)V
    .locals 4
    .param p0, "$this$withMatrix"    # Landroid/graphics/Canvas;
    .param p1, "matrix"    # Landroid/graphics/Matrix;
    .param p2, "block"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Canvas;",
            "Landroid/graphics/Matrix;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroid/graphics/Canvas;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "matrix"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "block"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 121
    .local v0, "$i$f$withMatrix":I
    invoke-virtual {p0}, Landroid/graphics/Canvas;->save()I

    move-result v1

    .line 122
    .local v1, "checkpoint":I
    invoke-virtual {p0, p1}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 123
    nop

    .line 124
    const/4 v2, 0x1

    :try_start_0
    invoke-interface {p2, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v2}, Lkotlin/jvm/internal/InlineMarker;->finallyStart(I)V

    .line 126
    invoke-virtual {p0, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    invoke-static {v2}, Lkotlin/jvm/internal/InlineMarker;->finallyEnd(I)V

    .line 127
    nop

    .line 128
    return-void

    .line 125
    :catchall_0
    move-exception v3

    invoke-static {v2}, Lkotlin/jvm/internal/InlineMarker;->finallyStart(I)V

    .line 126
    invoke-virtual {p0, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    invoke-static {v2}, Lkotlin/jvm/internal/InlineMarker;->finallyEnd(I)V

    throw v3
.end method

.method public static synthetic withMatrix$default(Landroid/graphics/Canvas;Landroid/graphics/Matrix;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)V
    .locals 2
    .param p0, "$this$withMatrix_u24default"    # Landroid/graphics/Canvas;
    .param p1, "matrix"    # Landroid/graphics/Matrix;
    .param p2, "block"    # Lkotlin/jvm/functions/Function1;

    .line 117
    const/4 p4, 0x1

    and-int/2addr p3, p4

    if-eqz p3, :cond_0

    .line 118
    new-instance p3, Landroid/graphics/Matrix;

    invoke-direct {p3}, Landroid/graphics/Matrix;-><init>()V

    move-object p1, p3

    .line 117
    :cond_0
    const-string p3, "<this>"

    invoke-static {p0, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "matrix"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "block"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p3, 0x0

    .line 121
    .local p3, "$i$f$withMatrix":I
    invoke-virtual {p0}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 122
    .local v0, "checkpoint":I
    invoke-virtual {p0, p1}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 123
    nop

    .line 124
    :try_start_0
    invoke-interface {p2, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {p4}, Lkotlin/jvm/internal/InlineMarker;->finallyStart(I)V

    .line 126
    invoke-virtual {p0, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    invoke-static {p4}, Lkotlin/jvm/internal/InlineMarker;->finallyEnd(I)V

    .line 127
    nop

    .line 128
    return-void

    .line 125
    :catchall_0
    move-exception v1

    invoke-static {p4}, Lkotlin/jvm/internal/InlineMarker;->finallyStart(I)V

    .line 126
    invoke-virtual {p0, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    invoke-static {p4}, Lkotlin/jvm/internal/InlineMarker;->finallyEnd(I)V

    throw v1
.end method

.method public static final withRotation(Landroid/graphics/Canvas;FFFLkotlin/jvm/functions/Function1;)V
    .locals 4
    .param p0, "$this$withRotation"    # Landroid/graphics/Canvas;
    .param p1, "degrees"    # F
    .param p2, "pivotX"    # F
    .param p3, "pivotY"    # F
    .param p4, "block"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Canvas;",
            "FFF",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroid/graphics/Canvas;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "block"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 66
    .local v0, "$i$f$withRotation":I
    invoke-virtual {p0}, Landroid/graphics/Canvas;->save()I

    move-result v1

    .line 67
    .local v1, "checkpoint":I
    invoke-virtual {p0, p1, p2, p3}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 68
    nop

    .line 69
    const/4 v2, 0x1

    :try_start_0
    invoke-interface {p4, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v2}, Lkotlin/jvm/internal/InlineMarker;->finallyStart(I)V

    .line 71
    invoke-virtual {p0, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    invoke-static {v2}, Lkotlin/jvm/internal/InlineMarker;->finallyEnd(I)V

    .line 72
    nop

    .line 73
    return-void

    .line 70
    :catchall_0
    move-exception v3

    invoke-static {v2}, Lkotlin/jvm/internal/InlineMarker;->finallyStart(I)V

    .line 71
    invoke-virtual {p0, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    invoke-static {v2}, Lkotlin/jvm/internal/InlineMarker;->finallyEnd(I)V

    throw v3
.end method

.method public static synthetic withRotation$default(Landroid/graphics/Canvas;FFFLkotlin/jvm/functions/Function1;ILjava/lang/Object;)V
    .locals 2
    .param p0, "$this$withRotation_u24default"    # Landroid/graphics/Canvas;
    .param p1, "degrees"    # F
    .param p2, "pivotX"    # F
    .param p3, "pivotY"    # F
    .param p4, "block"    # Lkotlin/jvm/functions/Function1;

    .line 60
    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_0

    .line 61
    const/4 p1, 0x0

    .line 60
    :cond_0
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_1

    .line 62
    const/4 p2, 0x0

    .line 60
    :cond_1
    and-int/lit8 p5, p5, 0x4

    if-eqz p5, :cond_2

    .line 63
    const/4 p3, 0x0

    .line 60
    :cond_2
    const-string p5, "<this>"

    invoke-static {p0, p5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p5, "block"

    invoke-static {p4, p5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p5, 0x0

    .line 66
    .local p5, "$i$f$withRotation":I
    invoke-virtual {p0}, Landroid/graphics/Canvas;->save()I

    move-result p6

    .line 67
    .local p6, "checkpoint":I
    invoke-virtual {p0, p1, p2, p3}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 68
    nop

    .line 69
    const/4 v0, 0x1

    :try_start_0
    invoke-interface {p4, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0}, Lkotlin/jvm/internal/InlineMarker;->finallyStart(I)V

    .line 71
    invoke-virtual {p0, p6}, Landroid/graphics/Canvas;->restoreToCount(I)V

    invoke-static {v0}, Lkotlin/jvm/internal/InlineMarker;->finallyEnd(I)V

    .line 72
    nop

    .line 73
    return-void

    .line 70
    :catchall_0
    move-exception v1

    invoke-static {v0}, Lkotlin/jvm/internal/InlineMarker;->finallyStart(I)V

    .line 71
    invoke-virtual {p0, p6}, Landroid/graphics/Canvas;->restoreToCount(I)V

    invoke-static {v0}, Lkotlin/jvm/internal/InlineMarker;->finallyEnd(I)V

    throw v1
.end method

.method public static final withSave(Landroid/graphics/Canvas;Lkotlin/jvm/functions/Function1;)V
    .locals 4
    .param p0, "$this$withSave"    # Landroid/graphics/Canvas;
    .param p1, "block"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Canvas;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroid/graphics/Canvas;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "block"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 30
    .local v0, "$i$f$withSave":I
    invoke-virtual {p0}, Landroid/graphics/Canvas;->save()I

    move-result v1

    .line 31
    .local v1, "checkpoint":I
    nop

    .line 32
    const/4 v2, 0x1

    :try_start_0
    invoke-interface {p1, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v2}, Lkotlin/jvm/internal/InlineMarker;->finallyStart(I)V

    .line 34
    invoke-virtual {p0, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    invoke-static {v2}, Lkotlin/jvm/internal/InlineMarker;->finallyEnd(I)V

    .line 35
    nop

    .line 36
    return-void

    .line 33
    :catchall_0
    move-exception v3

    invoke-static {v2}, Lkotlin/jvm/internal/InlineMarker;->finallyStart(I)V

    .line 34
    invoke-virtual {p0, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    invoke-static {v2}, Lkotlin/jvm/internal/InlineMarker;->finallyEnd(I)V

    throw v3
.end method

.method public static final withScale(Landroid/graphics/Canvas;FFFFLkotlin/jvm/functions/Function1;)V
    .locals 4
    .param p0, "$this$withScale"    # Landroid/graphics/Canvas;
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "pivotX"    # F
    .param p4, "pivotY"    # F
    .param p5, "block"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Canvas;",
            "FFFF",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroid/graphics/Canvas;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "block"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 86
    .local v0, "$i$f$withScale":I
    invoke-virtual {p0}, Landroid/graphics/Canvas;->save()I

    move-result v1

    .line 87
    .local v1, "checkpoint":I
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 88
    nop

    .line 89
    const/4 v2, 0x1

    :try_start_0
    invoke-interface {p5, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v2}, Lkotlin/jvm/internal/InlineMarker;->finallyStart(I)V

    .line 91
    invoke-virtual {p0, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    invoke-static {v2}, Lkotlin/jvm/internal/InlineMarker;->finallyEnd(I)V

    .line 92
    nop

    .line 93
    return-void

    .line 90
    :catchall_0
    move-exception v3

    invoke-static {v2}, Lkotlin/jvm/internal/InlineMarker;->finallyStart(I)V

    .line 91
    invoke-virtual {p0, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    invoke-static {v2}, Lkotlin/jvm/internal/InlineMarker;->finallyEnd(I)V

    throw v3
.end method

.method public static synthetic withScale$default(Landroid/graphics/Canvas;FFFFLkotlin/jvm/functions/Function1;ILjava/lang/Object;)V
    .locals 2
    .param p0, "$this$withScale_u24default"    # Landroid/graphics/Canvas;
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "pivotX"    # F
    .param p4, "pivotY"    # F
    .param p5, "block"    # Lkotlin/jvm/functions/Function1;

    .line 79
    and-int/lit8 p7, p6, 0x1

    if-eqz p7, :cond_0

    .line 80
    const/high16 p1, 0x3f800000    # 1.0f

    .line 79
    :cond_0
    and-int/lit8 p7, p6, 0x2

    if-eqz p7, :cond_1

    .line 81
    const/high16 p2, 0x3f800000    # 1.0f

    .line 79
    :cond_1
    and-int/lit8 p7, p6, 0x4

    if-eqz p7, :cond_2

    .line 82
    const/4 p3, 0x0

    .line 79
    :cond_2
    and-int/lit8 p6, p6, 0x8

    if-eqz p6, :cond_3

    .line 83
    const/4 p4, 0x0

    .line 79
    :cond_3
    const-string p6, "<this>"

    invoke-static {p0, p6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p6, "block"

    invoke-static {p5, p6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p6, 0x0

    .line 86
    .local p6, "$i$f$withScale":I
    invoke-virtual {p0}, Landroid/graphics/Canvas;->save()I

    move-result p7

    .line 87
    .local p7, "checkpoint":I
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 88
    nop

    .line 89
    const/4 v0, 0x1

    :try_start_0
    invoke-interface {p5, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0}, Lkotlin/jvm/internal/InlineMarker;->finallyStart(I)V

    .line 91
    invoke-virtual {p0, p7}, Landroid/graphics/Canvas;->restoreToCount(I)V

    invoke-static {v0}, Lkotlin/jvm/internal/InlineMarker;->finallyEnd(I)V

    .line 92
    nop

    .line 93
    return-void

    .line 90
    :catchall_0
    move-exception v1

    invoke-static {v0}, Lkotlin/jvm/internal/InlineMarker;->finallyStart(I)V

    .line 91
    invoke-virtual {p0, p7}, Landroid/graphics/Canvas;->restoreToCount(I)V

    invoke-static {v0}, Lkotlin/jvm/internal/InlineMarker;->finallyEnd(I)V

    throw v1
.end method

.method public static final withSkew(Landroid/graphics/Canvas;FFLkotlin/jvm/functions/Function1;)V
    .locals 4
    .param p0, "$this$withSkew"    # Landroid/graphics/Canvas;
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "block"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Canvas;",
            "FF",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroid/graphics/Canvas;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "block"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 104
    .local v0, "$i$f$withSkew":I
    invoke-virtual {p0}, Landroid/graphics/Canvas;->save()I

    move-result v1

    .line 105
    .local v1, "checkpoint":I
    invoke-virtual {p0, p1, p2}, Landroid/graphics/Canvas;->skew(FF)V

    .line 106
    nop

    .line 107
    const/4 v2, 0x1

    :try_start_0
    invoke-interface {p3, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v2}, Lkotlin/jvm/internal/InlineMarker;->finallyStart(I)V

    .line 109
    invoke-virtual {p0, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    invoke-static {v2}, Lkotlin/jvm/internal/InlineMarker;->finallyEnd(I)V

    .line 110
    nop

    .line 111
    return-void

    .line 108
    :catchall_0
    move-exception v3

    invoke-static {v2}, Lkotlin/jvm/internal/InlineMarker;->finallyStart(I)V

    .line 109
    invoke-virtual {p0, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    invoke-static {v2}, Lkotlin/jvm/internal/InlineMarker;->finallyEnd(I)V

    throw v3
.end method

.method public static synthetic withSkew$default(Landroid/graphics/Canvas;FFLkotlin/jvm/functions/Function1;ILjava/lang/Object;)V
    .locals 2
    .param p0, "$this$withSkew_u24default"    # Landroid/graphics/Canvas;
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "block"    # Lkotlin/jvm/functions/Function1;

    .line 99
    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    .line 100
    const/4 p1, 0x0

    .line 99
    :cond_0
    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_1

    .line 101
    const/4 p2, 0x0

    .line 99
    :cond_1
    const-string p4, "<this>"

    invoke-static {p0, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p4, "block"

    invoke-static {p3, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p4, 0x0

    .line 104
    .local p4, "$i$f$withSkew":I
    invoke-virtual {p0}, Landroid/graphics/Canvas;->save()I

    move-result p5

    .line 105
    .local p5, "checkpoint":I
    invoke-virtual {p0, p1, p2}, Landroid/graphics/Canvas;->skew(FF)V

    .line 106
    nop

    .line 107
    const/4 v0, 0x1

    :try_start_0
    invoke-interface {p3, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0}, Lkotlin/jvm/internal/InlineMarker;->finallyStart(I)V

    .line 109
    invoke-virtual {p0, p5}, Landroid/graphics/Canvas;->restoreToCount(I)V

    invoke-static {v0}, Lkotlin/jvm/internal/InlineMarker;->finallyEnd(I)V

    .line 110
    nop

    .line 111
    return-void

    .line 108
    :catchall_0
    move-exception v1

    invoke-static {v0}, Lkotlin/jvm/internal/InlineMarker;->finallyStart(I)V

    .line 109
    invoke-virtual {p0, p5}, Landroid/graphics/Canvas;->restoreToCount(I)V

    invoke-static {v0}, Lkotlin/jvm/internal/InlineMarker;->finallyEnd(I)V

    throw v1
.end method

.method public static final withTranslation(Landroid/graphics/Canvas;FFLkotlin/jvm/functions/Function1;)V
    .locals 4
    .param p0, "$this$withTranslation"    # Landroid/graphics/Canvas;
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "block"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Canvas;",
            "FF",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroid/graphics/Canvas;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "block"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 47
    .local v0, "$i$f$withTranslation":I
    invoke-virtual {p0}, Landroid/graphics/Canvas;->save()I

    move-result v1

    .line 48
    .local v1, "checkpoint":I
    invoke-virtual {p0, p1, p2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 49
    nop

    .line 50
    const/4 v2, 0x1

    :try_start_0
    invoke-interface {p3, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v2}, Lkotlin/jvm/internal/InlineMarker;->finallyStart(I)V

    .line 52
    invoke-virtual {p0, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    invoke-static {v2}, Lkotlin/jvm/internal/InlineMarker;->finallyEnd(I)V

    .line 53
    nop

    .line 54
    return-void

    .line 51
    :catchall_0
    move-exception v3

    invoke-static {v2}, Lkotlin/jvm/internal/InlineMarker;->finallyStart(I)V

    .line 52
    invoke-virtual {p0, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    invoke-static {v2}, Lkotlin/jvm/internal/InlineMarker;->finallyEnd(I)V

    throw v3
.end method

.method public static synthetic withTranslation$default(Landroid/graphics/Canvas;FFLkotlin/jvm/functions/Function1;ILjava/lang/Object;)V
    .locals 2
    .param p0, "$this$withTranslation_u24default"    # Landroid/graphics/Canvas;
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "block"    # Lkotlin/jvm/functions/Function1;

    .line 42
    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    .line 43
    const/4 p1, 0x0

    .line 42
    :cond_0
    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_1

    .line 44
    const/4 p2, 0x0

    .line 42
    :cond_1
    const-string p4, "<this>"

    invoke-static {p0, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p4, "block"

    invoke-static {p3, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p4, 0x0

    .line 47
    .local p4, "$i$f$withTranslation":I
    invoke-virtual {p0}, Landroid/graphics/Canvas;->save()I

    move-result p5

    .line 48
    .local p5, "checkpoint":I
    invoke-virtual {p0, p1, p2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 49
    nop

    .line 50
    const/4 v0, 0x1

    :try_start_0
    invoke-interface {p3, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0}, Lkotlin/jvm/internal/InlineMarker;->finallyStart(I)V

    .line 52
    invoke-virtual {p0, p5}, Landroid/graphics/Canvas;->restoreToCount(I)V

    invoke-static {v0}, Lkotlin/jvm/internal/InlineMarker;->finallyEnd(I)V

    .line 53
    nop

    .line 54
    return-void

    .line 51
    :catchall_0
    move-exception v1

    invoke-static {v0}, Lkotlin/jvm/internal/InlineMarker;->finallyStart(I)V

    .line 52
    invoke-virtual {p0, p5}, Landroid/graphics/Canvas;->restoreToCount(I)V

    invoke-static {v0}, Lkotlin/jvm/internal/InlineMarker;->finallyEnd(I)V

    throw v1
.end method
