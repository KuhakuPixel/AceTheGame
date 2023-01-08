.class public final Landroidx/core/graphics/RegionKt;
.super Ljava/lang/Object;
.source "Region.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nRegion.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Region.kt\nandroidx/core/graphics/RegionKt\n*L\n1#1,158:1\n71#1,3:159\n35#1,3:162\n44#1,3:165\n*S KotlinDebug\n*F\n+ 1 Region.kt\nandroidx/core/graphics/RegionKt\n*L\n79#1:159,3\n84#1:162,3\n89#1:165,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00004\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010(\n\u0002\u0008\u0007\u001a\u0015\u0010\u0000\u001a\u00020\u0001*\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\u0086\u000c\u001a\u0015\u0010\u0000\u001a\u00020\u0001*\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0001H\u0086\u000c\u001a\u0015\u0010\u0004\u001a\u00020\u0005*\u00020\u00012\u0006\u0010\u0006\u001a\u00020\u0007H\u0086\n\u001a3\u0010\u0008\u001a\u00020\t*\u00020\u00012!\u0010\n\u001a\u001d\u0012\u0013\u0012\u00110\u0003\u00a2\u0006\u000c\u0008\u000c\u0012\u0008\u0008\r\u0012\u0004\u0008\u0008(\u000e\u0012\u0004\u0012\u00020\t0\u000bH\u0086\u0008\u00f8\u0001\u0000\u001a\u0013\u0010\u000f\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u0010*\u00020\u0001H\u0086\u0002\u001a\u0015\u0010\u0011\u001a\u00020\u0001*\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\u0086\n\u001a\u0015\u0010\u0011\u001a\u00020\u0001*\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0001H\u0086\n\u001a\r\u0010\u0012\u001a\u00020\u0001*\u00020\u0001H\u0086\n\u001a\u0015\u0010\u0013\u001a\u00020\u0001*\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\u0086\u000c\u001a\u0015\u0010\u0013\u001a\u00020\u0001*\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0001H\u0086\u000c\u001a\u0015\u0010\u0014\u001a\u00020\u0001*\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\u0086\n\u001a\u0015\u0010\u0014\u001a\u00020\u0001*\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0001H\u0086\n\u001a\r\u0010\u0015\u001a\u00020\u0001*\u00020\u0001H\u0086\n\u001a\u0015\u0010\u0016\u001a\u00020\u0001*\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\u0086\u000c\u001a\u0015\u0010\u0016\u001a\u00020\u0001*\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0001H\u0086\u000c\u0082\u0002\u0007\n\u0005\u0008\u009920\u0001\u00a8\u0006\u0017"
    }
    d2 = {
        "and",
        "Landroid/graphics/Region;",
        "r",
        "Landroid/graphics/Rect;",
        "contains",
        "",
        "p",
        "Landroid/graphics/Point;",
        "forEach",
        "",
        "action",
        "Lkotlin/Function1;",
        "Lkotlin/ParameterName;",
        "name",
        "rect",
        "iterator",
        "",
        "minus",
        "not",
        "or",
        "plus",
        "unaryMinus",
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
.method public static final and(Landroid/graphics/Region;Landroid/graphics/Rect;)Landroid/graphics/Region;
    .locals 5
    .param p0, "$this$and"    # Landroid/graphics/Region;
    .param p1, "r"    # Landroid/graphics/Rect;

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "r"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 95
    .local v0, "$i$f$and":I
    new-instance v1, Landroid/graphics/Region;

    invoke-direct {v1, p0}, Landroid/graphics/Region;-><init>(Landroid/graphics/Region;)V

    move-object v2, v1

    .local v2, "$this$and_u24lambda_u2d5":Landroid/graphics/Region;
    const/4 v3, 0x0

    .line 96
    .local v3, "$i$a$-apply-RegionKt$and$1":I
    sget-object v4, Landroid/graphics/Region$Op;->INTERSECT:Landroid/graphics/Region$Op;

    invoke-virtual {v2, p1, v4}, Landroid/graphics/Region;->op(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    .line 97
    nop

    .line 95
    .end local v2    # "$this$and_u24lambda_u2d5":Landroid/graphics/Region;
    .end local v3    # "$i$a$-apply-RegionKt$and$1":I
    return-object v1
.end method

.method public static final and(Landroid/graphics/Region;Landroid/graphics/Region;)Landroid/graphics/Region;
    .locals 5
    .param p0, "$this$and"    # Landroid/graphics/Region;
    .param p1, "r"    # Landroid/graphics/Region;

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "r"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 104
    .local v0, "$i$f$and":I
    new-instance v1, Landroid/graphics/Region;

    invoke-direct {v1, p0}, Landroid/graphics/Region;-><init>(Landroid/graphics/Region;)V

    move-object v2, v1

    .local v2, "$this$and_u24lambda_u2d6":Landroid/graphics/Region;
    const/4 v3, 0x0

    .line 105
    .local v3, "$i$a$-apply-RegionKt$and$2":I
    sget-object v4, Landroid/graphics/Region$Op;->INTERSECT:Landroid/graphics/Region$Op;

    invoke-virtual {v2, p1, v4}, Landroid/graphics/Region;->op(Landroid/graphics/Region;Landroid/graphics/Region$Op;)Z

    .line 106
    nop

    .line 104
    .end local v2    # "$this$and_u24lambda_u2d6":Landroid/graphics/Region;
    .end local v3    # "$i$a$-apply-RegionKt$and$2":I
    return-object v1
.end method

.method public static final contains(Landroid/graphics/Region;Landroid/graphics/Point;)Z
    .locals 3
    .param p0, "$this$contains"    # Landroid/graphics/Region;
    .param p1, "p"    # Landroid/graphics/Point;

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "p"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 29
    .local v0, "$i$f$contains":I
    iget v1, p1, Landroid/graphics/Point;->x:I

    iget v2, p1, Landroid/graphics/Point;->y:I

    invoke-virtual {p0, v1, v2}, Landroid/graphics/Region;->contains(II)Z

    move-result v1

    return v1
.end method

.method public static final forEach(Landroid/graphics/Region;Lkotlin/jvm/functions/Function1;)V
    .locals 4
    .param p0, "$this$forEach"    # Landroid/graphics/Region;
    .param p1, "action"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Region;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroid/graphics/Rect;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "action"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 131
    .local v0, "$i$f$forEach":I
    new-instance v1, Landroid/graphics/RegionIterator;

    invoke-direct {v1, p0}, Landroid/graphics/RegionIterator;-><init>(Landroid/graphics/Region;)V

    .line 132
    .local v1, "iterator":Landroid/graphics/RegionIterator;
    :goto_0
    nop

    .line 133
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 134
    .local v2, "r":Landroid/graphics/Rect;
    invoke-virtual {v1, v2}, Landroid/graphics/RegionIterator;->next(Landroid/graphics/Rect;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 135
    nop

    .line 139
    .end local v2    # "r":Landroid/graphics/Rect;
    return-void

    .line 137
    .restart local v2    # "r":Landroid/graphics/Rect;
    :cond_0
    invoke-interface {p1, v2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public static final iterator(Landroid/graphics/Region;)Ljava/util/Iterator;
    .locals 1
    .param p0, "$this$iterator"    # Landroid/graphics/Region;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Region;",
            ")",
            "Ljava/util/Iterator<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 142
    new-instance v0, Landroidx/core/graphics/RegionKt$iterator$1;

    invoke-direct {v0, p0}, Landroidx/core/graphics/RegionKt$iterator$1;-><init>(Landroid/graphics/Region;)V

    check-cast v0, Ljava/util/Iterator;

    .line 157
    return-object v0
.end method

.method public static final minus(Landroid/graphics/Region;Landroid/graphics/Rect;)Landroid/graphics/Region;
    .locals 5
    .param p0, "$this$minus"    # Landroid/graphics/Region;
    .param p1, "r"    # Landroid/graphics/Rect;

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "r"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 53
    .local v0, "$i$f$minus":I
    new-instance v1, Landroid/graphics/Region;

    invoke-direct {v1, p0}, Landroid/graphics/Region;-><init>(Landroid/graphics/Region;)V

    move-object v2, v1

    .local v2, "$this$minus_u24lambda_u2d2":Landroid/graphics/Region;
    const/4 v3, 0x0

    .line 54
    .local v3, "$i$a$-apply-RegionKt$minus$1":I
    sget-object v4, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    invoke-virtual {v2, p1, v4}, Landroid/graphics/Region;->op(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    .line 55
    nop

    .line 53
    .end local v2    # "$this$minus_u24lambda_u2d2":Landroid/graphics/Region;
    .end local v3    # "$i$a$-apply-RegionKt$minus$1":I
    return-object v1
.end method

.method public static final minus(Landroid/graphics/Region;Landroid/graphics/Region;)Landroid/graphics/Region;
    .locals 5
    .param p0, "$this$minus"    # Landroid/graphics/Region;
    .param p1, "r"    # Landroid/graphics/Region;

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "r"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 62
    .local v0, "$i$f$minus":I
    new-instance v1, Landroid/graphics/Region;

    invoke-direct {v1, p0}, Landroid/graphics/Region;-><init>(Landroid/graphics/Region;)V

    move-object v2, v1

    .local v2, "$this$minus_u24lambda_u2d3":Landroid/graphics/Region;
    const/4 v3, 0x0

    .line 63
    .local v3, "$i$a$-apply-RegionKt$minus$2":I
    sget-object v4, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    invoke-virtual {v2, p1, v4}, Landroid/graphics/Region;->op(Landroid/graphics/Region;Landroid/graphics/Region$Op;)Z

    .line 64
    nop

    .line 62
    .end local v2    # "$this$minus_u24lambda_u2d3":Landroid/graphics/Region;
    .end local v3    # "$i$a$-apply-RegionKt$minus$2":I
    return-object v1
.end method

.method public static final not(Landroid/graphics/Region;)Landroid/graphics/Region;
    .locals 7
    .param p0, "$this$not"    # Landroid/graphics/Region;

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 79
    .local v0, "$i$f$not":I
    move-object v1, p0

    .local v1, "$this$unaryMinus$iv":Landroid/graphics/Region;
    const/4 v2, 0x0

    .line 159
    .local v2, "$i$f$unaryMinus":I
    new-instance v3, Landroid/graphics/Region;

    invoke-virtual {v1}, Landroid/graphics/Region;->getBounds()Landroid/graphics/Rect;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/graphics/Region;-><init>(Landroid/graphics/Rect;)V

    move-object v4, v3

    .local v4, "$this$unaryMinus_u24lambda_u2d4$iv":Landroid/graphics/Region;
    const/4 v5, 0x0

    .line 160
    .local v5, "$i$a$-apply-RegionKt$unaryMinus$1$iv":I
    sget-object v6, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    invoke-virtual {v4, v1, v6}, Landroid/graphics/Region;->op(Landroid/graphics/Region;Landroid/graphics/Region$Op;)Z

    .line 161
    nop

    .line 159
    .end local v4    # "$this$unaryMinus_u24lambda_u2d4$iv":Landroid/graphics/Region;
    .end local v5    # "$i$a$-apply-RegionKt$unaryMinus$1$iv":I
    nop

    .line 79
    .end local v1    # "$this$unaryMinus$iv":Landroid/graphics/Region;
    .end local v2    # "$i$f$unaryMinus":I
    return-object v3
.end method

.method public static final or(Landroid/graphics/Region;Landroid/graphics/Rect;)Landroid/graphics/Region;
    .locals 6
    .param p0, "$this$or"    # Landroid/graphics/Region;
    .param p1, "r"    # Landroid/graphics/Rect;

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "r"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 84
    .local v0, "$i$f$or":I
    move-object v1, p0

    .local v1, "$this$plus$iv":Landroid/graphics/Region;
    const/4 v2, 0x0

    .line 162
    .local v2, "$i$f$plus":I
    new-instance v3, Landroid/graphics/Region;

    invoke-direct {v3, v1}, Landroid/graphics/Region;-><init>(Landroid/graphics/Region;)V

    move-object v4, v3

    .local v4, "$this$plus_u24lambda_u2d0$iv":Landroid/graphics/Region;
    const/4 v5, 0x0

    .line 163
    .local v5, "$i$a$-apply-RegionKt$plus$1$iv":I
    invoke-virtual {v4, p1}, Landroid/graphics/Region;->union(Landroid/graphics/Rect;)Z

    .line 164
    nop

    .line 162
    .end local v4    # "$this$plus_u24lambda_u2d0$iv":Landroid/graphics/Region;
    .end local v5    # "$i$a$-apply-RegionKt$plus$1$iv":I
    nop

    .line 84
    .end local v1    # "$this$plus$iv":Landroid/graphics/Region;
    .end local v2    # "$i$f$plus":I
    return-object v3
.end method

.method public static final or(Landroid/graphics/Region;Landroid/graphics/Region;)Landroid/graphics/Region;
    .locals 7
    .param p0, "$this$or"    # Landroid/graphics/Region;
    .param p1, "r"    # Landroid/graphics/Region;

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "r"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 89
    .local v0, "$i$f$or":I
    move-object v1, p0

    .local v1, "$this$plus$iv":Landroid/graphics/Region;
    const/4 v2, 0x0

    .line 165
    .local v2, "$i$f$plus":I
    new-instance v3, Landroid/graphics/Region;

    invoke-direct {v3, v1}, Landroid/graphics/Region;-><init>(Landroid/graphics/Region;)V

    move-object v4, v3

    .local v4, "$this$plus_u24lambda_u2d1$iv":Landroid/graphics/Region;
    const/4 v5, 0x0

    .line 166
    .local v5, "$i$a$-apply-RegionKt$plus$2$iv":I
    sget-object v6, Landroid/graphics/Region$Op;->UNION:Landroid/graphics/Region$Op;

    invoke-virtual {v4, p1, v6}, Landroid/graphics/Region;->op(Landroid/graphics/Region;Landroid/graphics/Region$Op;)Z

    .line 167
    nop

    .line 165
    .end local v4    # "$this$plus_u24lambda_u2d1$iv":Landroid/graphics/Region;
    .end local v5    # "$i$a$-apply-RegionKt$plus$2$iv":I
    nop

    .line 89
    .end local v1    # "$this$plus$iv":Landroid/graphics/Region;
    .end local v2    # "$i$f$plus":I
    return-object v3
.end method

.method public static final plus(Landroid/graphics/Region;Landroid/graphics/Rect;)Landroid/graphics/Region;
    .locals 4
    .param p0, "$this$plus"    # Landroid/graphics/Region;
    .param p1, "r"    # Landroid/graphics/Rect;

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "r"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 35
    .local v0, "$i$f$plus":I
    new-instance v1, Landroid/graphics/Region;

    invoke-direct {v1, p0}, Landroid/graphics/Region;-><init>(Landroid/graphics/Region;)V

    move-object v2, v1

    .local v2, "$this$plus_u24lambda_u2d0":Landroid/graphics/Region;
    const/4 v3, 0x0

    .line 36
    .local v3, "$i$a$-apply-RegionKt$plus$1":I
    invoke-virtual {v2, p1}, Landroid/graphics/Region;->union(Landroid/graphics/Rect;)Z

    .line 37
    nop

    .line 35
    .end local v2    # "$this$plus_u24lambda_u2d0":Landroid/graphics/Region;
    .end local v3    # "$i$a$-apply-RegionKt$plus$1":I
    return-object v1
.end method

.method public static final plus(Landroid/graphics/Region;Landroid/graphics/Region;)Landroid/graphics/Region;
    .locals 5
    .param p0, "$this$plus"    # Landroid/graphics/Region;
    .param p1, "r"    # Landroid/graphics/Region;

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "r"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 44
    .local v0, "$i$f$plus":I
    new-instance v1, Landroid/graphics/Region;

    invoke-direct {v1, p0}, Landroid/graphics/Region;-><init>(Landroid/graphics/Region;)V

    move-object v2, v1

    .local v2, "$this$plus_u24lambda_u2d1":Landroid/graphics/Region;
    const/4 v3, 0x0

    .line 45
    .local v3, "$i$a$-apply-RegionKt$plus$2":I
    sget-object v4, Landroid/graphics/Region$Op;->UNION:Landroid/graphics/Region$Op;

    invoke-virtual {v2, p1, v4}, Landroid/graphics/Region;->op(Landroid/graphics/Region;Landroid/graphics/Region$Op;)Z

    .line 46
    nop

    .line 44
    .end local v2    # "$this$plus_u24lambda_u2d1":Landroid/graphics/Region;
    .end local v3    # "$i$a$-apply-RegionKt$plus$2":I
    return-object v1
.end method

.method public static final unaryMinus(Landroid/graphics/Region;)Landroid/graphics/Region;
    .locals 5
    .param p0, "$this$unaryMinus"    # Landroid/graphics/Region;

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 71
    .local v0, "$i$f$unaryMinus":I
    new-instance v1, Landroid/graphics/Region;

    invoke-virtual {p0}, Landroid/graphics/Region;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/graphics/Region;-><init>(Landroid/graphics/Rect;)V

    move-object v2, v1

    .local v2, "$this$unaryMinus_u24lambda_u2d4":Landroid/graphics/Region;
    const/4 v3, 0x0

    .line 72
    .local v3, "$i$a$-apply-RegionKt$unaryMinus$1":I
    sget-object v4, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    invoke-virtual {v2, p0, v4}, Landroid/graphics/Region;->op(Landroid/graphics/Region;Landroid/graphics/Region$Op;)Z

    .line 73
    nop

    .line 71
    .end local v2    # "$this$unaryMinus_u24lambda_u2d4":Landroid/graphics/Region;
    .end local v3    # "$i$a$-apply-RegionKt$unaryMinus$1":I
    return-object v1
.end method

.method public static final xor(Landroid/graphics/Region;Landroid/graphics/Rect;)Landroid/graphics/Region;
    .locals 5
    .param p0, "$this$xor"    # Landroid/graphics/Region;
    .param p1, "r"    # Landroid/graphics/Rect;

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "r"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 114
    .local v0, "$i$f$xor":I
    new-instance v1, Landroid/graphics/Region;

    invoke-direct {v1, p0}, Landroid/graphics/Region;-><init>(Landroid/graphics/Region;)V

    move-object v2, v1

    .local v2, "$this$xor_u24lambda_u2d7":Landroid/graphics/Region;
    const/4 v3, 0x0

    .line 115
    .local v3, "$i$a$-apply-RegionKt$xor$1":I
    sget-object v4, Landroid/graphics/Region$Op;->XOR:Landroid/graphics/Region$Op;

    invoke-virtual {v2, p1, v4}, Landroid/graphics/Region;->op(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    .line 116
    nop

    .line 114
    .end local v2    # "$this$xor_u24lambda_u2d7":Landroid/graphics/Region;
    .end local v3    # "$i$a$-apply-RegionKt$xor$1":I
    return-object v1
.end method

.method public static final xor(Landroid/graphics/Region;Landroid/graphics/Region;)Landroid/graphics/Region;
    .locals 5
    .param p0, "$this$xor"    # Landroid/graphics/Region;
    .param p1, "r"    # Landroid/graphics/Region;

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "r"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 124
    .local v0, "$i$f$xor":I
    new-instance v1, Landroid/graphics/Region;

    invoke-direct {v1, p0}, Landroid/graphics/Region;-><init>(Landroid/graphics/Region;)V

    move-object v2, v1

    .local v2, "$this$xor_u24lambda_u2d8":Landroid/graphics/Region;
    const/4 v3, 0x0

    .line 125
    .local v3, "$i$a$-apply-RegionKt$xor$2":I
    sget-object v4, Landroid/graphics/Region$Op;->XOR:Landroid/graphics/Region$Op;

    invoke-virtual {v2, p1, v4}, Landroid/graphics/Region;->op(Landroid/graphics/Region;Landroid/graphics/Region$Op;)Z

    .line 126
    nop

    .line 124
    .end local v2    # "$this$xor_u24lambda_u2d8":Landroid/graphics/Region;
    .end local v3    # "$i$a$-apply-RegionKt$xor$2":I
    return-object v1
.end method
