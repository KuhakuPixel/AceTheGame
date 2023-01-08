.class public final Landroidx/core/graphics/RectKt;
.super Ljava/lang/Object;
.source "Rect.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nRect.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Rect.kt\nandroidx/core/graphics/RectKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,365:1\n344#1,3:366\n344#1,3:369\n257#1,6:372\n122#1,3:378\n132#1,3:381\n344#1,3:384\n344#1,3:387\n344#1,3:390\n1#2:393\n*S KotlinDebug\n*F\n+ 1 Rect.kt\nandroidx/core/graphics/RectKt\n*L\n191#1:366,3\n192#1:369,3\n251#1:372,6\n268#1:378,3\n273#1:381,3\n313#1:384,3\n314#1:387,3\n358#1:390,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000<\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0010\u0007\n\u0002\u0008\u0004\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u001a\u0015\u0010\u0000\u001a\u00020\u0001*\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0001H\u0087\u000c\u001a\u0015\u0010\u0000\u001a\u00020\u0003*\u00020\u00032\u0006\u0010\u0002\u001a\u00020\u0003H\u0087\u000c\u001a\r\u0010\u0004\u001a\u00020\u0005*\u00020\u0001H\u0086\n\u001a\r\u0010\u0004\u001a\u00020\u0006*\u00020\u0003H\u0086\n\u001a\r\u0010\u0007\u001a\u00020\u0005*\u00020\u0001H\u0086\n\u001a\r\u0010\u0007\u001a\u00020\u0006*\u00020\u0003H\u0086\n\u001a\r\u0010\u0008\u001a\u00020\u0005*\u00020\u0001H\u0086\n\u001a\r\u0010\u0008\u001a\u00020\u0006*\u00020\u0003H\u0086\n\u001a\r\u0010\t\u001a\u00020\u0005*\u00020\u0001H\u0086\n\u001a\r\u0010\t\u001a\u00020\u0006*\u00020\u0003H\u0086\n\u001a\u0015\u0010\n\u001a\u00020\u000b*\u00020\u00012\u0006\u0010\u000c\u001a\u00020\rH\u0086\n\u001a\u0015\u0010\n\u001a\u00020\u000b*\u00020\u00032\u0006\u0010\u000c\u001a\u00020\u000eH\u0086\n\u001a\u0015\u0010\u000f\u001a\u00020\u0001*\u00020\u00012\u0006\u0010\u0010\u001a\u00020\rH\u0086\n\u001a\u0015\u0010\u000f\u001a\u00020\u0011*\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0001H\u0086\n\u001a\u0015\u0010\u000f\u001a\u00020\u0001*\u00020\u00012\u0006\u0010\u0010\u001a\u00020\u0005H\u0086\n\u001a\u0015\u0010\u000f\u001a\u00020\u0003*\u00020\u00032\u0006\u0010\u0010\u001a\u00020\u000eH\u0086\n\u001a\u0015\u0010\u000f\u001a\u00020\u0011*\u00020\u00032\u0006\u0010\u0002\u001a\u00020\u0003H\u0086\n\u001a\u0015\u0010\u000f\u001a\u00020\u0003*\u00020\u00032\u0006\u0010\u0010\u001a\u00020\u0006H\u0086\n\u001a\u0015\u0010\u0012\u001a\u00020\u0001*\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0001H\u0086\u000c\u001a\u0015\u0010\u0012\u001a\u00020\u0003*\u00020\u00032\u0006\u0010\u0002\u001a\u00020\u0003H\u0086\u000c\u001a\u0015\u0010\u0013\u001a\u00020\u0001*\u00020\u00012\u0006\u0010\u0010\u001a\u00020\rH\u0086\n\u001a\u0015\u0010\u0013\u001a\u00020\u0001*\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0001H\u0086\n\u001a\u0015\u0010\u0013\u001a\u00020\u0001*\u00020\u00012\u0006\u0010\u0010\u001a\u00020\u0005H\u0086\n\u001a\u0015\u0010\u0013\u001a\u00020\u0003*\u00020\u00032\u0006\u0010\u0010\u001a\u00020\u000eH\u0086\n\u001a\u0015\u0010\u0013\u001a\u00020\u0003*\u00020\u00032\u0006\u0010\u0002\u001a\u00020\u0003H\u0086\n\u001a\u0015\u0010\u0013\u001a\u00020\u0003*\u00020\u00032\u0006\u0010\u0010\u001a\u00020\u0006H\u0086\n\u001a\u0015\u0010\u0014\u001a\u00020\u0001*\u00020\u00012\u0006\u0010\u0015\u001a\u00020\u0005H\u0086\n\u001a\u0015\u0010\u0014\u001a\u00020\u0003*\u00020\u00032\u0006\u0010\u0015\u001a\u00020\u0006H\u0086\n\u001a\u0015\u0010\u0014\u001a\u00020\u0003*\u00020\u00032\u0006\u0010\u0015\u001a\u00020\u0005H\u0086\n\u001a\r\u0010\u0016\u001a\u00020\u0001*\u00020\u0003H\u0086\u0008\u001a\r\u0010\u0017\u001a\u00020\u0003*\u00020\u0001H\u0086\u0008\u001a\r\u0010\u0018\u001a\u00020\u0011*\u00020\u0001H\u0086\u0008\u001a\r\u0010\u0018\u001a\u00020\u0011*\u00020\u0003H\u0086\u0008\u001a\u0015\u0010\u0019\u001a\u00020\u0003*\u00020\u00032\u0006\u0010\u001a\u001a\u00020\u001bH\u0086\u0008\u001a\u0015\u0010\u001c\u001a\u00020\u0011*\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0001H\u0086\u000c\u001a\u0015\u0010\u001c\u001a\u00020\u0011*\u00020\u00032\u0006\u0010\u0002\u001a\u00020\u0003H\u0086\u000c\u00a8\u0006\u001d"
    }
    d2 = {
        "and",
        "Landroid/graphics/Rect;",
        "r",
        "Landroid/graphics/RectF;",
        "component1",
        "",
        "",
        "component2",
        "component3",
        "component4",
        "contains",
        "",
        "p",
        "Landroid/graphics/Point;",
        "Landroid/graphics/PointF;",
        "minus",
        "xy",
        "Landroid/graphics/Region;",
        "or",
        "plus",
        "times",
        "factor",
        "toRect",
        "toRectF",
        "toRegion",
        "transform",
        "m",
        "Landroid/graphics/Matrix;",
        "xor",
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
.method public static final and(Landroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 4
    .param p0, "$this$and"    # Landroid/graphics/Rect;
    .param p1, "r"    # Landroid/graphics/Rect;

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "r"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 282
    .local v0, "$i$f$and":I
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1, p0}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    move-object v2, v1

    .local v2, "$this$and_u24lambda_u2d14":Landroid/graphics/Rect;
    const/4 v3, 0x0

    .line 283
    .local v3, "$i$a$-apply-RectKt$and$1":I
    invoke-virtual {v2, p1}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    .line 284
    nop

    .line 282
    .end local v2    # "$this$and_u24lambda_u2d14":Landroid/graphics/Rect;
    .end local v3    # "$i$a$-apply-RectKt$and$1":I
    return-object v1
.end method

.method public static final and(Landroid/graphics/RectF;Landroid/graphics/RectF;)Landroid/graphics/RectF;
    .locals 4
    .param p0, "$this$and"    # Landroid/graphics/RectF;
    .param p1, "r"    # Landroid/graphics/RectF;

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "r"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 294
    .local v0, "$i$f$and":I
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1, p0}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    move-object v2, v1

    .local v2, "$this$and_u24lambda_u2d15":Landroid/graphics/RectF;
    const/4 v3, 0x0

    .line 295
    .local v3, "$i$a$-apply-RectKt$and$2":I
    invoke-virtual {v2, p1}, Landroid/graphics/RectF;->intersect(Landroid/graphics/RectF;)Z

    .line 296
    nop

    .line 294
    .end local v2    # "$this$and_u24lambda_u2d15":Landroid/graphics/RectF;
    .end local v3    # "$i$a$-apply-RectKt$and$2":I
    return-object v1
.end method

.method public static final component1(Landroid/graphics/RectF;)F
    .locals 2
    .param p0, "$this$component1"    # Landroid/graphics/RectF;

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 82
    .local v0, "$i$f$component1":I
    iget v1, p0, Landroid/graphics/RectF;->left:F

    return v1
.end method

.method public static final component1(Landroid/graphics/Rect;)I
    .locals 2
    .param p0, "$this$component1"    # Landroid/graphics/Rect;

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 38
    .local v0, "$i$f$component1":I
    iget v1, p0, Landroid/graphics/Rect;->left:I

    return v1
.end method

.method public static final component2(Landroid/graphics/RectF;)F
    .locals 2
    .param p0, "$this$component2"    # Landroid/graphics/RectF;

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 93
    .local v0, "$i$f$component2":I
    iget v1, p0, Landroid/graphics/RectF;->top:F

    return v1
.end method

.method public static final component2(Landroid/graphics/Rect;)I
    .locals 2
    .param p0, "$this$component2"    # Landroid/graphics/Rect;

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 49
    .local v0, "$i$f$component2":I
    iget v1, p0, Landroid/graphics/Rect;->top:I

    return v1
.end method

.method public static final component3(Landroid/graphics/RectF;)F
    .locals 2
    .param p0, "$this$component3"    # Landroid/graphics/RectF;

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 104
    .local v0, "$i$f$component3":I
    iget v1, p0, Landroid/graphics/RectF;->right:F

    return v1
.end method

.method public static final component3(Landroid/graphics/Rect;)I
    .locals 2
    .param p0, "$this$component3"    # Landroid/graphics/Rect;

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 60
    .local v0, "$i$f$component3":I
    iget v1, p0, Landroid/graphics/Rect;->right:I

    return v1
.end method

.method public static final component4(Landroid/graphics/RectF;)F
    .locals 2
    .param p0, "$this$component4"    # Landroid/graphics/RectF;

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 115
    .local v0, "$i$f$component4":I
    iget v1, p0, Landroid/graphics/RectF;->bottom:F

    return v1
.end method

.method public static final component4(Landroid/graphics/Rect;)I
    .locals 2
    .param p0, "$this$component4"    # Landroid/graphics/Rect;

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 71
    .local v0, "$i$f$component4":I
    iget v1, p0, Landroid/graphics/Rect;->bottom:I

    return v1
.end method

.method public static final contains(Landroid/graphics/Rect;Landroid/graphics/Point;)Z
    .locals 3
    .param p0, "$this$contains"    # Landroid/graphics/Rect;
    .param p1, "p"    # Landroid/graphics/Point;

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "p"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 324
    .local v0, "$i$f$contains":I
    iget v1, p1, Landroid/graphics/Point;->x:I

    iget v2, p1, Landroid/graphics/Point;->y:I

    invoke-virtual {p0, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v1

    return v1
.end method

.method public static final contains(Landroid/graphics/RectF;Landroid/graphics/PointF;)Z
    .locals 3
    .param p0, "$this$contains"    # Landroid/graphics/RectF;
    .param p1, "p"    # Landroid/graphics/PointF;

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "p"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 332
    .local v0, "$i$f$contains":I
    iget v1, p1, Landroid/graphics/PointF;->x:F

    iget v2, p1, Landroid/graphics/PointF;->y:F

    invoke-virtual {p0, v1, v2}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v1

    return v1
.end method

.method public static final minus(Landroid/graphics/Rect;I)Landroid/graphics/Rect;
    .locals 6
    .param p0, "$this$minus"    # Landroid/graphics/Rect;
    .param p1, "xy"    # I

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 201
    .local v0, "$i$f$minus":I
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1, p0}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    move-object v2, v1

    .local v2, "$this$minus_u24lambda_u2d8":Landroid/graphics/Rect;
    const/4 v3, 0x0

    .line 202
    .local v3, "$i$a$-apply-RectKt$minus$3":I
    neg-int v4, p1

    neg-int v5, p1

    invoke-virtual {v2, v4, v5}, Landroid/graphics/Rect;->offset(II)V

    .line 203
    nop

    .line 201
    .end local v2    # "$this$minus_u24lambda_u2d8":Landroid/graphics/Rect;
    .end local v3    # "$i$a$-apply-RectKt$minus$3":I
    return-object v1
.end method

.method public static final minus(Landroid/graphics/Rect;Landroid/graphics/Point;)Landroid/graphics/Rect;
    .locals 6
    .param p0, "$this$minus"    # Landroid/graphics/Rect;
    .param p1, "xy"    # Landroid/graphics/Point;

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "xy"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 221
    .local v0, "$i$f$minus":I
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1, p0}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    move-object v2, v1

    .local v2, "$this$minus_u24lambda_u2d10":Landroid/graphics/Rect;
    const/4 v3, 0x0

    .line 222
    .local v3, "$i$a$-apply-RectKt$minus$5":I
    iget v4, p1, Landroid/graphics/Point;->x:I

    neg-int v4, v4

    iget v5, p1, Landroid/graphics/Point;->y:I

    neg-int v5, v5

    invoke-virtual {v2, v4, v5}, Landroid/graphics/Rect;->offset(II)V

    .line 223
    nop

    .line 221
    .end local v2    # "$this$minus_u24lambda_u2d10":Landroid/graphics/Rect;
    .end local v3    # "$i$a$-apply-RectKt$minus$5":I
    return-object v1
.end method

.method public static final minus(Landroid/graphics/RectF;F)Landroid/graphics/RectF;
    .locals 6
    .param p0, "$this$minus"    # Landroid/graphics/RectF;
    .param p1, "xy"    # F

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 211
    .local v0, "$i$f$minus":I
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1, p0}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    move-object v2, v1

    .local v2, "$this$minus_u24lambda_u2d9":Landroid/graphics/RectF;
    const/4 v3, 0x0

    .line 212
    .local v3, "$i$a$-apply-RectKt$minus$4":I
    neg-float v4, p1

    neg-float v5, p1

    invoke-virtual {v2, v4, v5}, Landroid/graphics/RectF;->offset(FF)V

    .line 213
    nop

    .line 211
    .end local v2    # "$this$minus_u24lambda_u2d9":Landroid/graphics/RectF;
    .end local v3    # "$i$a$-apply-RectKt$minus$4":I
    return-object v1
.end method

.method public static final minus(Landroid/graphics/RectF;Landroid/graphics/PointF;)Landroid/graphics/RectF;
    .locals 6
    .param p0, "$this$minus"    # Landroid/graphics/RectF;
    .param p1, "xy"    # Landroid/graphics/PointF;

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "xy"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 231
    .local v0, "$i$f$minus":I
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1, p0}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    move-object v2, v1

    .local v2, "$this$minus_u24lambda_u2d11":Landroid/graphics/RectF;
    const/4 v3, 0x0

    .line 232
    .local v3, "$i$a$-apply-RectKt$minus$6":I
    iget v4, p1, Landroid/graphics/PointF;->x:F

    neg-float v4, v4

    iget v5, p1, Landroid/graphics/PointF;->y:F

    neg-float v5, v5

    invoke-virtual {v2, v4, v5}, Landroid/graphics/RectF;->offset(FF)V

    .line 233
    nop

    .line 231
    .end local v2    # "$this$minus_u24lambda_u2d11":Landroid/graphics/RectF;
    .end local v3    # "$i$a$-apply-RectKt$minus$6":I
    return-object v1
.end method

.method public static final minus(Landroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/graphics/Region;
    .locals 5
    .param p0, "$this$minus"    # Landroid/graphics/Rect;
    .param p1, "r"    # Landroid/graphics/Rect;

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "r"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 181
    .local v0, "$i$f$minus":I
    new-instance v1, Landroid/graphics/Region;

    invoke-direct {v1, p0}, Landroid/graphics/Region;-><init>(Landroid/graphics/Rect;)V

    move-object v2, v1

    .local v2, "$this$minus_u24lambda_u2d6":Landroid/graphics/Region;
    const/4 v3, 0x0

    .line 182
    .local v3, "$i$a$-apply-RectKt$minus$1":I
    sget-object v4, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    invoke-virtual {v2, p1, v4}, Landroid/graphics/Region;->op(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    .line 183
    nop

    .line 181
    .end local v2    # "$this$minus_u24lambda_u2d6":Landroid/graphics/Region;
    .end local v3    # "$i$a$-apply-RectKt$minus$1":I
    return-object v1
.end method

.method public static final minus(Landroid/graphics/RectF;Landroid/graphics/RectF;)Landroid/graphics/Region;
    .locals 7
    .param p0, "$this$minus"    # Landroid/graphics/RectF;
    .param p1, "r"    # Landroid/graphics/RectF;

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "r"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 191
    .local v0, "$i$f$minus":I
    new-instance v1, Landroid/graphics/Region;

    move-object v2, p0

    .local v2, "$this$toRect$iv":Landroid/graphics/RectF;
    const/4 v3, 0x0

    .line 366
    .local v3, "$i$f$toRect":I
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    .line 367
    .local v4, "r$iv":Landroid/graphics/Rect;
    invoke-virtual {v2, v4}, Landroid/graphics/RectF;->roundOut(Landroid/graphics/Rect;)V

    .line 368
    nop

    .line 191
    .end local v2    # "$this$toRect$iv":Landroid/graphics/RectF;
    .end local v3    # "$i$f$toRect":I
    .end local v4    # "r$iv":Landroid/graphics/Rect;
    invoke-direct {v1, v4}, Landroid/graphics/Region;-><init>(Landroid/graphics/Rect;)V

    move-object v2, v1

    .local v2, "$this$minus_u24lambda_u2d7":Landroid/graphics/Region;
    const/4 v3, 0x0

    .line 192
    .local v3, "$i$a$-apply-RectKt$minus$2":I
    move-object v4, p1

    .local v4, "$this$toRect$iv":Landroid/graphics/RectF;
    const/4 v5, 0x0

    .line 369
    .local v5, "$i$f$toRect":I
    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    .line 370
    .local v6, "r$iv":Landroid/graphics/Rect;
    invoke-virtual {v4, v6}, Landroid/graphics/RectF;->roundOut(Landroid/graphics/Rect;)V

    .line 371
    nop

    .line 192
    .end local v4    # "$this$toRect$iv":Landroid/graphics/RectF;
    .end local v5    # "$i$f$toRect":I
    .end local v6    # "r$iv":Landroid/graphics/Rect;
    sget-object v4, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    invoke-virtual {v2, v6, v4}, Landroid/graphics/Region;->op(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    .line 193
    nop

    .line 191
    .end local v2    # "$this$minus_u24lambda_u2d7":Landroid/graphics/Region;
    .end local v3    # "$i$a$-apply-RectKt$minus$2":I
    return-object v1
.end method

.method public static final or(Landroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 6
    .param p0, "$this$or"    # Landroid/graphics/Rect;
    .param p1, "r"    # Landroid/graphics/Rect;

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "r"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 268
    .local v0, "$i$f$or":I
    move-object v1, p0

    .local v1, "$this$plus$iv":Landroid/graphics/Rect;
    const/4 v2, 0x0

    .line 378
    .local v2, "$i$f$plus":I
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    move-object v4, v3

    .local v4, "$this$plus_u24lambda_u2d0$iv":Landroid/graphics/Rect;
    const/4 v5, 0x0

    .line 379
    .local v5, "$i$a$-apply-RectKt$plus$1$iv":I
    invoke-virtual {v4, p1}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    .line 380
    nop

    .line 378
    .end local v4    # "$this$plus_u24lambda_u2d0$iv":Landroid/graphics/Rect;
    .end local v5    # "$i$a$-apply-RectKt$plus$1$iv":I
    nop

    .line 268
    .end local v1    # "$this$plus$iv":Landroid/graphics/Rect;
    .end local v2    # "$i$f$plus":I
    return-object v3
.end method

.method public static final or(Landroid/graphics/RectF;Landroid/graphics/RectF;)Landroid/graphics/RectF;
    .locals 6
    .param p0, "$this$or"    # Landroid/graphics/RectF;
    .param p1, "r"    # Landroid/graphics/RectF;

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "r"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 273
    .local v0, "$i$f$or":I
    move-object v1, p0

    .local v1, "$this$plus$iv":Landroid/graphics/RectF;
    const/4 v2, 0x0

    .line 381
    .local v2, "$i$f$plus":I
    new-instance v3, Landroid/graphics/RectF;

    invoke-direct {v3, v1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    move-object v4, v3

    .local v4, "$this$plus_u24lambda_u2d1$iv":Landroid/graphics/RectF;
    const/4 v5, 0x0

    .line 382
    .local v5, "$i$a$-apply-RectKt$plus$2$iv":I
    invoke-virtual {v4, p1}, Landroid/graphics/RectF;->union(Landroid/graphics/RectF;)V

    .line 383
    nop

    .line 381
    .end local v4    # "$this$plus_u24lambda_u2d1$iv":Landroid/graphics/RectF;
    .end local v5    # "$i$a$-apply-RectKt$plus$2$iv":I
    nop

    .line 273
    .end local v1    # "$this$plus$iv":Landroid/graphics/RectF;
    .end local v2    # "$i$f$plus":I
    return-object v3
.end method

.method public static final plus(Landroid/graphics/Rect;I)Landroid/graphics/Rect;
    .locals 4
    .param p0, "$this$plus"    # Landroid/graphics/Rect;
    .param p1, "xy"    # I

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 142
    .local v0, "$i$f$plus":I
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1, p0}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    move-object v2, v1

    .local v2, "$this$plus_u24lambda_u2d2":Landroid/graphics/Rect;
    const/4 v3, 0x0

    .line 143
    .local v3, "$i$a$-apply-RectKt$plus$3":I
    invoke-virtual {v2, p1, p1}, Landroid/graphics/Rect;->offset(II)V

    .line 144
    nop

    .line 142
    .end local v2    # "$this$plus_u24lambda_u2d2":Landroid/graphics/Rect;
    .end local v3    # "$i$a$-apply-RectKt$plus$3":I
    return-object v1
.end method

.method public static final plus(Landroid/graphics/Rect;Landroid/graphics/Point;)Landroid/graphics/Rect;
    .locals 6
    .param p0, "$this$plus"    # Landroid/graphics/Rect;
    .param p1, "xy"    # Landroid/graphics/Point;

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "xy"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 162
    .local v0, "$i$f$plus":I
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1, p0}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    move-object v2, v1

    .local v2, "$this$plus_u24lambda_u2d4":Landroid/graphics/Rect;
    const/4 v3, 0x0

    .line 163
    .local v3, "$i$a$-apply-RectKt$plus$5":I
    iget v4, p1, Landroid/graphics/Point;->x:I

    iget v5, p1, Landroid/graphics/Point;->y:I

    invoke-virtual {v2, v4, v5}, Landroid/graphics/Rect;->offset(II)V

    .line 164
    nop

    .line 162
    .end local v2    # "$this$plus_u24lambda_u2d4":Landroid/graphics/Rect;
    .end local v3    # "$i$a$-apply-RectKt$plus$5":I
    return-object v1
.end method

.method public static final plus(Landroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 4
    .param p0, "$this$plus"    # Landroid/graphics/Rect;
    .param p1, "r"    # Landroid/graphics/Rect;

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "r"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 122
    .local v0, "$i$f$plus":I
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1, p0}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    move-object v2, v1

    .local v2, "$this$plus_u24lambda_u2d0":Landroid/graphics/Rect;
    const/4 v3, 0x0

    .line 123
    .local v3, "$i$a$-apply-RectKt$plus$1":I
    invoke-virtual {v2, p1}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    .line 124
    nop

    .line 122
    .end local v2    # "$this$plus_u24lambda_u2d0":Landroid/graphics/Rect;
    .end local v3    # "$i$a$-apply-RectKt$plus$1":I
    return-object v1
.end method

.method public static final plus(Landroid/graphics/RectF;F)Landroid/graphics/RectF;
    .locals 4
    .param p0, "$this$plus"    # Landroid/graphics/RectF;
    .param p1, "xy"    # F

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 152
    .local v0, "$i$f$plus":I
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1, p0}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    move-object v2, v1

    .local v2, "$this$plus_u24lambda_u2d3":Landroid/graphics/RectF;
    const/4 v3, 0x0

    .line 153
    .local v3, "$i$a$-apply-RectKt$plus$4":I
    invoke-virtual {v2, p1, p1}, Landroid/graphics/RectF;->offset(FF)V

    .line 154
    nop

    .line 152
    .end local v2    # "$this$plus_u24lambda_u2d3":Landroid/graphics/RectF;
    .end local v3    # "$i$a$-apply-RectKt$plus$4":I
    return-object v1
.end method

.method public static final plus(Landroid/graphics/RectF;Landroid/graphics/PointF;)Landroid/graphics/RectF;
    .locals 6
    .param p0, "$this$plus"    # Landroid/graphics/RectF;
    .param p1, "xy"    # Landroid/graphics/PointF;

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "xy"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 172
    .local v0, "$i$f$plus":I
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1, p0}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    move-object v2, v1

    .local v2, "$this$plus_u24lambda_u2d5":Landroid/graphics/RectF;
    const/4 v3, 0x0

    .line 173
    .local v3, "$i$a$-apply-RectKt$plus$6":I
    iget v4, p1, Landroid/graphics/PointF;->x:F

    iget v5, p1, Landroid/graphics/PointF;->y:F

    invoke-virtual {v2, v4, v5}, Landroid/graphics/RectF;->offset(FF)V

    .line 174
    nop

    .line 172
    .end local v2    # "$this$plus_u24lambda_u2d5":Landroid/graphics/RectF;
    .end local v3    # "$i$a$-apply-RectKt$plus$6":I
    return-object v1
.end method

.method public static final plus(Landroid/graphics/RectF;Landroid/graphics/RectF;)Landroid/graphics/RectF;
    .locals 4
    .param p0, "$this$plus"    # Landroid/graphics/RectF;
    .param p1, "r"    # Landroid/graphics/RectF;

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "r"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 132
    .local v0, "$i$f$plus":I
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1, p0}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    move-object v2, v1

    .local v2, "$this$plus_u24lambda_u2d1":Landroid/graphics/RectF;
    const/4 v3, 0x0

    .line 133
    .local v3, "$i$a$-apply-RectKt$plus$2":I
    invoke-virtual {v2, p1}, Landroid/graphics/RectF;->union(Landroid/graphics/RectF;)V

    .line 134
    nop

    .line 132
    .end local v2    # "$this$plus_u24lambda_u2d1":Landroid/graphics/RectF;
    .end local v3    # "$i$a$-apply-RectKt$plus$2":I
    return-object v1
.end method

.method public static final times(Landroid/graphics/Rect;I)Landroid/graphics/Rect;
    .locals 5
    .param p0, "$this$times"    # Landroid/graphics/Rect;
    .param p1, "factor"    # I

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 240
    .local v0, "$i$f$times":I
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1, p0}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    move-object v2, v1

    .local v2, "$this$times_u24lambda_u2d12":Landroid/graphics/Rect;
    const/4 v3, 0x0

    .line 241
    .local v3, "$i$a$-apply-RectKt$times$1":I
    iget v4, v2, Landroid/graphics/Rect;->top:I

    mul-int v4, v4, p1

    iput v4, v2, Landroid/graphics/Rect;->top:I

    .line 242
    iget v4, v2, Landroid/graphics/Rect;->left:I

    mul-int v4, v4, p1

    iput v4, v2, Landroid/graphics/Rect;->left:I

    .line 243
    iget v4, v2, Landroid/graphics/Rect;->right:I

    mul-int v4, v4, p1

    iput v4, v2, Landroid/graphics/Rect;->right:I

    .line 244
    iget v4, v2, Landroid/graphics/Rect;->bottom:I

    mul-int v4, v4, p1

    iput v4, v2, Landroid/graphics/Rect;->bottom:I

    .line 245
    nop

    .line 240
    .end local v2    # "$this$times_u24lambda_u2d12":Landroid/graphics/Rect;
    .end local v3    # "$i$a$-apply-RectKt$times$1":I
    return-object v1
.end method

.method public static final times(Landroid/graphics/RectF;F)Landroid/graphics/RectF;
    .locals 5
    .param p0, "$this$times"    # Landroid/graphics/RectF;
    .param p1, "factor"    # F

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 257
    .local v0, "$i$f$times":I
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1, p0}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    move-object v2, v1

    .local v2, "$this$times_u24lambda_u2d13":Landroid/graphics/RectF;
    const/4 v3, 0x0

    .line 258
    .local v3, "$i$a$-apply-RectKt$times$2":I
    iget v4, v2, Landroid/graphics/RectF;->top:F

    mul-float v4, v4, p1

    iput v4, v2, Landroid/graphics/RectF;->top:F

    .line 259
    iget v4, v2, Landroid/graphics/RectF;->left:F

    mul-float v4, v4, p1

    iput v4, v2, Landroid/graphics/RectF;->left:F

    .line 260
    iget v4, v2, Landroid/graphics/RectF;->right:F

    mul-float v4, v4, p1

    iput v4, v2, Landroid/graphics/RectF;->right:F

    .line 261
    iget v4, v2, Landroid/graphics/RectF;->bottom:F

    mul-float v4, v4, p1

    iput v4, v2, Landroid/graphics/RectF;->bottom:F

    .line 262
    nop

    .line 257
    .end local v2    # "$this$times_u24lambda_u2d13":Landroid/graphics/RectF;
    .end local v3    # "$i$a$-apply-RectKt$times$2":I
    return-object v1
.end method

.method public static final times(Landroid/graphics/RectF;I)Landroid/graphics/RectF;
    .locals 8
    .param p0, "$this$times"    # Landroid/graphics/RectF;
    .param p1, "factor"    # I

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 251
    .local v0, "$i$f$times":I
    int-to-float v1, p1

    .local v1, "factor$iv":F
    move-object v2, p0

    .local v2, "$this$times$iv":Landroid/graphics/RectF;
    const/4 v3, 0x0

    .line 372
    .local v3, "$i$f$times":I
    new-instance v4, Landroid/graphics/RectF;

    invoke-direct {v4, v2}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    move-object v5, v4

    .local v5, "$this$times_u24lambda_u2d13$iv":Landroid/graphics/RectF;
    const/4 v6, 0x0

    .line 373
    .local v6, "$i$a$-apply-RectKt$times$2$iv":I
    iget v7, v5, Landroid/graphics/RectF;->top:F

    mul-float v7, v7, v1

    iput v7, v5, Landroid/graphics/RectF;->top:F

    .line 374
    iget v7, v5, Landroid/graphics/RectF;->left:F

    mul-float v7, v7, v1

    iput v7, v5, Landroid/graphics/RectF;->left:F

    .line 375
    iget v7, v5, Landroid/graphics/RectF;->right:F

    mul-float v7, v7, v1

    iput v7, v5, Landroid/graphics/RectF;->right:F

    .line 376
    iget v7, v5, Landroid/graphics/RectF;->bottom:F

    mul-float v7, v7, v1

    iput v7, v5, Landroid/graphics/RectF;->bottom:F

    .line 377
    nop

    .line 372
    .end local v5    # "$this$times_u24lambda_u2d13$iv":Landroid/graphics/RectF;
    .end local v6    # "$i$a$-apply-RectKt$times$2$iv":I
    nop

    .line 251
    .end local v1    # "factor$iv":F
    .end local v2    # "$this$times$iv":Landroid/graphics/RectF;
    .end local v3    # "$i$f$times":I
    return-object v4
.end method

.method public static final toRect(Landroid/graphics/RectF;)Landroid/graphics/Rect;
    .locals 2
    .param p0, "$this$toRect"    # Landroid/graphics/RectF;

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 344
    .local v0, "$i$f$toRect":I
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 345
    .local v1, "r":Landroid/graphics/Rect;
    invoke-virtual {p0, v1}, Landroid/graphics/RectF;->roundOut(Landroid/graphics/Rect;)V

    .line 346
    return-object v1
.end method

.method public static final toRectF(Landroid/graphics/Rect;)Landroid/graphics/RectF;
    .locals 2
    .param p0, "$this$toRectF"    # Landroid/graphics/Rect;

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 337
    .local v0, "$i$f$toRectF":I
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1, p0}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    return-object v1
.end method

.method public static final toRegion(Landroid/graphics/Rect;)Landroid/graphics/Region;
    .locals 2
    .param p0, "$this$toRegion"    # Landroid/graphics/Rect;

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 352
    .local v0, "$i$f$toRegion":I
    new-instance v1, Landroid/graphics/Region;

    invoke-direct {v1, p0}, Landroid/graphics/Region;-><init>(Landroid/graphics/Rect;)V

    return-object v1
.end method

.method public static final toRegion(Landroid/graphics/RectF;)Landroid/graphics/Region;
    .locals 5
    .param p0, "$this$toRegion"    # Landroid/graphics/RectF;

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 358
    .local v0, "$i$f$toRegion":I
    new-instance v1, Landroid/graphics/Region;

    move-object v2, p0

    .local v2, "$this$toRect$iv":Landroid/graphics/RectF;
    const/4 v3, 0x0

    .line 390
    .local v3, "$i$f$toRect":I
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    .line 391
    .local v4, "r$iv":Landroid/graphics/Rect;
    invoke-virtual {v2, v4}, Landroid/graphics/RectF;->roundOut(Landroid/graphics/Rect;)V

    .line 392
    nop

    .line 358
    .end local v2    # "$this$toRect$iv":Landroid/graphics/RectF;
    .end local v3    # "$i$f$toRect":I
    .end local v4    # "r$iv":Landroid/graphics/Rect;
    invoke-direct {v1, v4}, Landroid/graphics/Region;-><init>(Landroid/graphics/Rect;)V

    return-object v1
.end method

.method public static final transform(Landroid/graphics/RectF;Landroid/graphics/Matrix;)Landroid/graphics/RectF;
    .locals 3
    .param p0, "$this$transform"    # Landroid/graphics/RectF;
    .param p1, "m"    # Landroid/graphics/Matrix;

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "m"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 364
    .local v0, "$i$f$transform":I
    move-object v1, p0

    .line 393
    .local v1, "$this$transform_u24lambda_u2d18":Landroid/graphics/RectF;
    const/4 v2, 0x0

    .line 364
    .local v2, "$i$a$-apply-RectKt$transform$1":I
    invoke-virtual {p1, p0}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .end local v1    # "$this$transform_u24lambda_u2d18":Landroid/graphics/RectF;
    .end local v2    # "$i$a$-apply-RectKt$transform$1":I
    return-object p0
.end method

.method public static final xor(Landroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/graphics/Region;
    .locals 5
    .param p0, "$this$xor"    # Landroid/graphics/Rect;
    .param p1, "r"    # Landroid/graphics/Rect;

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "r"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 303
    .local v0, "$i$f$xor":I
    new-instance v1, Landroid/graphics/Region;

    invoke-direct {v1, p0}, Landroid/graphics/Region;-><init>(Landroid/graphics/Rect;)V

    move-object v2, v1

    .local v2, "$this$xor_u24lambda_u2d16":Landroid/graphics/Region;
    const/4 v3, 0x0

    .line 304
    .local v3, "$i$a$-apply-RectKt$xor$1":I
    sget-object v4, Landroid/graphics/Region$Op;->XOR:Landroid/graphics/Region$Op;

    invoke-virtual {v2, p1, v4}, Landroid/graphics/Region;->op(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    .line 305
    nop

    .line 303
    .end local v2    # "$this$xor_u24lambda_u2d16":Landroid/graphics/Region;
    .end local v3    # "$i$a$-apply-RectKt$xor$1":I
    return-object v1
.end method

.method public static final xor(Landroid/graphics/RectF;Landroid/graphics/RectF;)Landroid/graphics/Region;
    .locals 7
    .param p0, "$this$xor"    # Landroid/graphics/RectF;
    .param p1, "r"    # Landroid/graphics/RectF;

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "r"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 313
    .local v0, "$i$f$xor":I
    new-instance v1, Landroid/graphics/Region;

    move-object v2, p0

    .local v2, "$this$toRect$iv":Landroid/graphics/RectF;
    const/4 v3, 0x0

    .line 384
    .local v3, "$i$f$toRect":I
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    .line 385
    .local v4, "r$iv":Landroid/graphics/Rect;
    invoke-virtual {v2, v4}, Landroid/graphics/RectF;->roundOut(Landroid/graphics/Rect;)V

    .line 386
    nop

    .line 313
    .end local v2    # "$this$toRect$iv":Landroid/graphics/RectF;
    .end local v3    # "$i$f$toRect":I
    .end local v4    # "r$iv":Landroid/graphics/Rect;
    invoke-direct {v1, v4}, Landroid/graphics/Region;-><init>(Landroid/graphics/Rect;)V

    move-object v2, v1

    .local v2, "$this$xor_u24lambda_u2d17":Landroid/graphics/Region;
    const/4 v3, 0x0

    .line 314
    .local v3, "$i$a$-apply-RectKt$xor$2":I
    move-object v4, p1

    .local v4, "$this$toRect$iv":Landroid/graphics/RectF;
    const/4 v5, 0x0

    .line 387
    .local v5, "$i$f$toRect":I
    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    .line 388
    .local v6, "r$iv":Landroid/graphics/Rect;
    invoke-virtual {v4, v6}, Landroid/graphics/RectF;->roundOut(Landroid/graphics/Rect;)V

    .line 389
    nop

    .line 314
    .end local v4    # "$this$toRect$iv":Landroid/graphics/RectF;
    .end local v5    # "$i$f$toRect":I
    .end local v6    # "r$iv":Landroid/graphics/Rect;
    sget-object v4, Landroid/graphics/Region$Op;->XOR:Landroid/graphics/Region$Op;

    invoke-virtual {v2, v6, v4}, Landroid/graphics/Region;->op(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    .line 315
    nop

    .line 313
    .end local v2    # "$this$xor_u24lambda_u2d17":Landroid/graphics/Region;
    .end local v3    # "$i$a$-apply-RectKt$xor$2":I
    return-object v1
.end method
