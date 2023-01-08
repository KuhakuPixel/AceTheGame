.class public final Landroidx/core/graphics/PointKt;
.super Ljava/lang/Object;
.source "Point.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0016\n\u0000\n\u0002\u0010\u0008\n\u0002\u0018\u0002\n\u0002\u0010\u0007\n\u0002\u0018\u0002\n\u0002\u0008\t\u001a\r\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u0086\n\u001a\r\u0010\u0000\u001a\u00020\u0003*\u00020\u0004H\u0086\n\u001a\r\u0010\u0005\u001a\u00020\u0001*\u00020\u0002H\u0086\n\u001a\r\u0010\u0005\u001a\u00020\u0003*\u00020\u0004H\u0086\n\u001a\u0015\u0010\u0006\u001a\u00020\u0002*\u00020\u00022\u0006\u0010\u0007\u001a\u00020\u0002H\u0086\n\u001a\u0015\u0010\u0006\u001a\u00020\u0002*\u00020\u00022\u0006\u0010\u0008\u001a\u00020\u0001H\u0086\n\u001a\u0015\u0010\u0006\u001a\u00020\u0004*\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0004H\u0086\n\u001a\u0015\u0010\u0006\u001a\u00020\u0004*\u00020\u00042\u0006\u0010\u0008\u001a\u00020\u0003H\u0086\n\u001a\u0015\u0010\t\u001a\u00020\u0002*\u00020\u00022\u0006\u0010\u0007\u001a\u00020\u0002H\u0086\n\u001a\u0015\u0010\t\u001a\u00020\u0002*\u00020\u00022\u0006\u0010\u0008\u001a\u00020\u0001H\u0086\n\u001a\u0015\u0010\t\u001a\u00020\u0004*\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0004H\u0086\n\u001a\u0015\u0010\t\u001a\u00020\u0004*\u00020\u00042\u0006\u0010\u0008\u001a\u00020\u0003H\u0086\n\u001a\r\u0010\n\u001a\u00020\u0002*\u00020\u0004H\u0086\u0008\u001a\r\u0010\u000b\u001a\u00020\u0004*\u00020\u0002H\u0086\u0008\u001a\r\u0010\u000c\u001a\u00020\u0002*\u00020\u0002H\u0086\n\u001a\r\u0010\u000c\u001a\u00020\u0004*\u00020\u0004H\u0086\n\u00a8\u0006\r"
    }
    d2 = {
        "component1",
        "",
        "Landroid/graphics/Point;",
        "",
        "Landroid/graphics/PointF;",
        "component2",
        "minus",
        "p",
        "xy",
        "plus",
        "toPoint",
        "toPointF",
        "unaryMinus",
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
.method public static final component1(Landroid/graphics/PointF;)F
    .locals 2
    .param p0, "$this$component1"    # Landroid/graphics/PointF;

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 55
    .local v0, "$i$f$component1":I
    iget v1, p0, Landroid/graphics/PointF;->x:F

    return v1
.end method

.method public static final component1(Landroid/graphics/Point;)I
    .locals 2
    .param p0, "$this$component1"    # Landroid/graphics/Point;

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 33
    .local v0, "$i$f$component1":I
    iget v1, p0, Landroid/graphics/Point;->x:I

    return v1
.end method

.method public static final component2(Landroid/graphics/PointF;)F
    .locals 2
    .param p0, "$this$component2"    # Landroid/graphics/PointF;

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 66
    .local v0, "$i$f$component2":I
    iget v1, p0, Landroid/graphics/PointF;->y:F

    return v1
.end method

.method public static final component2(Landroid/graphics/Point;)I
    .locals 2
    .param p0, "$this$component2"    # Landroid/graphics/Point;

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 44
    .local v0, "$i$f$component2":I
    iget v1, p0, Landroid/graphics/Point;->y:I

    return v1
.end method

.method public static final minus(Landroid/graphics/Point;I)Landroid/graphics/Point;
    .locals 6
    .param p0, "$this$minus"    # Landroid/graphics/Point;
    .param p1, "xy"    # I

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 131
    .local v0, "$i$f$minus":I
    new-instance v1, Landroid/graphics/Point;

    iget v2, p0, Landroid/graphics/Point;->x:I

    iget v3, p0, Landroid/graphics/Point;->y:I

    invoke-direct {v1, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    move-object v2, v1

    .local v2, "$this$minus_u24lambda_u2d6":Landroid/graphics/Point;
    const/4 v3, 0x0

    .line 132
    .local v3, "$i$a$-apply-PointKt$minus$3":I
    neg-int v4, p1

    neg-int v5, p1

    invoke-virtual {v2, v4, v5}, Landroid/graphics/Point;->offset(II)V

    .line 133
    nop

    .line 131
    .end local v2    # "$this$minus_u24lambda_u2d6":Landroid/graphics/Point;
    .end local v3    # "$i$a$-apply-PointKt$minus$3":I
    return-object v1
.end method

.method public static final minus(Landroid/graphics/Point;Landroid/graphics/Point;)Landroid/graphics/Point;
    .locals 6
    .param p0, "$this$minus"    # Landroid/graphics/Point;
    .param p1, "p"    # Landroid/graphics/Point;

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "p"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 111
    .local v0, "$i$f$minus":I
    new-instance v1, Landroid/graphics/Point;

    iget v2, p0, Landroid/graphics/Point;->x:I

    iget v3, p0, Landroid/graphics/Point;->y:I

    invoke-direct {v1, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    move-object v2, v1

    .local v2, "$this$minus_u24lambda_u2d4":Landroid/graphics/Point;
    const/4 v3, 0x0

    .line 112
    .local v3, "$i$a$-apply-PointKt$minus$1":I
    iget v4, p1, Landroid/graphics/Point;->x:I

    neg-int v4, v4

    iget v5, p1, Landroid/graphics/Point;->y:I

    neg-int v5, v5

    invoke-virtual {v2, v4, v5}, Landroid/graphics/Point;->offset(II)V

    .line 113
    nop

    .line 111
    .end local v2    # "$this$minus_u24lambda_u2d4":Landroid/graphics/Point;
    .end local v3    # "$i$a$-apply-PointKt$minus$1":I
    return-object v1
.end method

.method public static final minus(Landroid/graphics/PointF;F)Landroid/graphics/PointF;
    .locals 6
    .param p0, "$this$minus"    # Landroid/graphics/PointF;
    .param p1, "xy"    # F

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 141
    .local v0, "$i$f$minus":I
    new-instance v1, Landroid/graphics/PointF;

    iget v2, p0, Landroid/graphics/PointF;->x:F

    iget v3, p0, Landroid/graphics/PointF;->y:F

    invoke-direct {v1, v2, v3}, Landroid/graphics/PointF;-><init>(FF)V

    move-object v2, v1

    .local v2, "$this$minus_u24lambda_u2d7":Landroid/graphics/PointF;
    const/4 v3, 0x0

    .line 142
    .local v3, "$i$a$-apply-PointKt$minus$4":I
    neg-float v4, p1

    neg-float v5, p1

    invoke-virtual {v2, v4, v5}, Landroid/graphics/PointF;->offset(FF)V

    .line 143
    nop

    .line 141
    .end local v2    # "$this$minus_u24lambda_u2d7":Landroid/graphics/PointF;
    .end local v3    # "$i$a$-apply-PointKt$minus$4":I
    return-object v1
.end method

.method public static final minus(Landroid/graphics/PointF;Landroid/graphics/PointF;)Landroid/graphics/PointF;
    .locals 6
    .param p0, "$this$minus"    # Landroid/graphics/PointF;
    .param p1, "p"    # Landroid/graphics/PointF;

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "p"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 121
    .local v0, "$i$f$minus":I
    new-instance v1, Landroid/graphics/PointF;

    iget v2, p0, Landroid/graphics/PointF;->x:F

    iget v3, p0, Landroid/graphics/PointF;->y:F

    invoke-direct {v1, v2, v3}, Landroid/graphics/PointF;-><init>(FF)V

    move-object v2, v1

    .local v2, "$this$minus_u24lambda_u2d5":Landroid/graphics/PointF;
    const/4 v3, 0x0

    .line 122
    .local v3, "$i$a$-apply-PointKt$minus$2":I
    iget v4, p1, Landroid/graphics/PointF;->x:F

    neg-float v4, v4

    iget v5, p1, Landroid/graphics/PointF;->y:F

    neg-float v5, v5

    invoke-virtual {v2, v4, v5}, Landroid/graphics/PointF;->offset(FF)V

    .line 123
    nop

    .line 121
    .end local v2    # "$this$minus_u24lambda_u2d5":Landroid/graphics/PointF;
    .end local v3    # "$i$a$-apply-PointKt$minus$2":I
    return-object v1
.end method

.method public static final plus(Landroid/graphics/Point;I)Landroid/graphics/Point;
    .locals 4
    .param p0, "$this$plus"    # Landroid/graphics/Point;
    .param p1, "xy"    # I

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 91
    .local v0, "$i$f$plus":I
    new-instance v1, Landroid/graphics/Point;

    iget v2, p0, Landroid/graphics/Point;->x:I

    iget v3, p0, Landroid/graphics/Point;->y:I

    invoke-direct {v1, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    move-object v2, v1

    .local v2, "$this$plus_u24lambda_u2d2":Landroid/graphics/Point;
    const/4 v3, 0x0

    .line 92
    .local v3, "$i$a$-apply-PointKt$plus$3":I
    invoke-virtual {v2, p1, p1}, Landroid/graphics/Point;->offset(II)V

    .line 93
    nop

    .line 91
    .end local v2    # "$this$plus_u24lambda_u2d2":Landroid/graphics/Point;
    .end local v3    # "$i$a$-apply-PointKt$plus$3":I
    return-object v1
.end method

.method public static final plus(Landroid/graphics/Point;Landroid/graphics/Point;)Landroid/graphics/Point;
    .locals 6
    .param p0, "$this$plus"    # Landroid/graphics/Point;
    .param p1, "p"    # Landroid/graphics/Point;

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "p"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 72
    .local v0, "$i$f$plus":I
    new-instance v1, Landroid/graphics/Point;

    iget v2, p0, Landroid/graphics/Point;->x:I

    iget v3, p0, Landroid/graphics/Point;->y:I

    invoke-direct {v1, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    move-object v2, v1

    .local v2, "$this$plus_u24lambda_u2d0":Landroid/graphics/Point;
    const/4 v3, 0x0

    .line 73
    .local v3, "$i$a$-apply-PointKt$plus$1":I
    iget v4, p1, Landroid/graphics/Point;->x:I

    iget v5, p1, Landroid/graphics/Point;->y:I

    invoke-virtual {v2, v4, v5}, Landroid/graphics/Point;->offset(II)V

    .line 74
    nop

    .line 72
    .end local v2    # "$this$plus_u24lambda_u2d0":Landroid/graphics/Point;
    .end local v3    # "$i$a$-apply-PointKt$plus$1":I
    return-object v1
.end method

.method public static final plus(Landroid/graphics/PointF;F)Landroid/graphics/PointF;
    .locals 4
    .param p0, "$this$plus"    # Landroid/graphics/PointF;
    .param p1, "xy"    # F

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 101
    .local v0, "$i$f$plus":I
    new-instance v1, Landroid/graphics/PointF;

    iget v2, p0, Landroid/graphics/PointF;->x:F

    iget v3, p0, Landroid/graphics/PointF;->y:F

    invoke-direct {v1, v2, v3}, Landroid/graphics/PointF;-><init>(FF)V

    move-object v2, v1

    .local v2, "$this$plus_u24lambda_u2d3":Landroid/graphics/PointF;
    const/4 v3, 0x0

    .line 102
    .local v3, "$i$a$-apply-PointKt$plus$4":I
    invoke-virtual {v2, p1, p1}, Landroid/graphics/PointF;->offset(FF)V

    .line 103
    nop

    .line 101
    .end local v2    # "$this$plus_u24lambda_u2d3":Landroid/graphics/PointF;
    .end local v3    # "$i$a$-apply-PointKt$plus$4":I
    return-object v1
.end method

.method public static final plus(Landroid/graphics/PointF;Landroid/graphics/PointF;)Landroid/graphics/PointF;
    .locals 6
    .param p0, "$this$plus"    # Landroid/graphics/PointF;
    .param p1, "p"    # Landroid/graphics/PointF;

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "p"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 81
    .local v0, "$i$f$plus":I
    new-instance v1, Landroid/graphics/PointF;

    iget v2, p0, Landroid/graphics/PointF;->x:F

    iget v3, p0, Landroid/graphics/PointF;->y:F

    invoke-direct {v1, v2, v3}, Landroid/graphics/PointF;-><init>(FF)V

    move-object v2, v1

    .local v2, "$this$plus_u24lambda_u2d1":Landroid/graphics/PointF;
    const/4 v3, 0x0

    .line 82
    .local v3, "$i$a$-apply-PointKt$plus$2":I
    iget v4, p1, Landroid/graphics/PointF;->x:F

    iget v5, p1, Landroid/graphics/PointF;->y:F

    invoke-virtual {v2, v4, v5}, Landroid/graphics/PointF;->offset(FF)V

    .line 83
    nop

    .line 81
    .end local v2    # "$this$plus_u24lambda_u2d1":Landroid/graphics/PointF;
    .end local v3    # "$i$a$-apply-PointKt$plus$2":I
    return-object v1
.end method

.method public static final toPoint(Landroid/graphics/PointF;)Landroid/graphics/Point;
    .locals 4
    .param p0, "$this$toPoint"    # Landroid/graphics/PointF;

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 164
    .local v0, "$i$f$toPoint":I
    new-instance v1, Landroid/graphics/Point;

    iget v2, p0, Landroid/graphics/PointF;->x:F

    float-to-int v2, v2

    iget v3, p0, Landroid/graphics/PointF;->y:F

    float-to-int v3, v3

    invoke-direct {v1, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    return-object v1
.end method

.method public static final toPointF(Landroid/graphics/Point;)Landroid/graphics/PointF;
    .locals 2
    .param p0, "$this$toPointF"    # Landroid/graphics/Point;

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 159
    .local v0, "$i$f$toPointF":I
    new-instance v1, Landroid/graphics/PointF;

    invoke-direct {v1, p0}, Landroid/graphics/PointF;-><init>(Landroid/graphics/Point;)V

    return-object v1
.end method

.method public static final unaryMinus(Landroid/graphics/Point;)Landroid/graphics/Point;
    .locals 4
    .param p0, "$this$unaryMinus"    # Landroid/graphics/Point;

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 149
    .local v0, "$i$f$unaryMinus":I
    new-instance v1, Landroid/graphics/Point;

    iget v2, p0, Landroid/graphics/Point;->x:I

    neg-int v2, v2

    iget v3, p0, Landroid/graphics/Point;->y:I

    neg-int v3, v3

    invoke-direct {v1, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    return-object v1
.end method

.method public static final unaryMinus(Landroid/graphics/PointF;)Landroid/graphics/PointF;
    .locals 4
    .param p0, "$this$unaryMinus"    # Landroid/graphics/PointF;

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 154
    .local v0, "$i$f$unaryMinus":I
    new-instance v1, Landroid/graphics/PointF;

    iget v2, p0, Landroid/graphics/PointF;->x:F

    neg-float v2, v2

    iget v3, p0, Landroid/graphics/PointF;->y:F

    neg-float v3, v3

    invoke-direct {v1, v2, v3}, Landroid/graphics/PointF;-><init>(FF)V

    return-object v1
.end method
