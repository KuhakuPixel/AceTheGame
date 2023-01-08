.class public final Landroidx/core/graphics/MatrixKt;
.super Ljava/lang/Object;
.source "Matrix.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nMatrix.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Matrix.kt\nandroidx/core/graphics/MatrixKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,54:1\n1#2:55\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0016\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\u0008\u000b\n\u0002\u0010\u0014\n\u0000\u001a\"\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u0003\u001a\u001a\u0010\u0006\u001a\u00020\u00012\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u0003\u001a\u001a\u0010\t\u001a\u00020\u00012\u0008\u0008\u0002\u0010\n\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u000b\u001a\u00020\u0003\u001a\u0015\u0010\u000c\u001a\u00020\u0001*\u00020\u00012\u0006\u0010\r\u001a\u00020\u0001H\u0086\n\u001a\r\u0010\u000e\u001a\u00020\u000f*\u00020\u0001H\u0086\u0008\u00a8\u0006\u0010"
    }
    d2 = {
        "rotationMatrix",
        "Landroid/graphics/Matrix;",
        "degrees",
        "",
        "px",
        "py",
        "scaleMatrix",
        "sx",
        "sy",
        "translationMatrix",
        "tx",
        "ty",
        "times",
        "m",
        "values",
        "",
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
.method public static final rotationMatrix(FFF)Landroid/graphics/Matrix;
    .locals 3
    .param p0, "degrees"    # F
    .param p1, "px"    # F
    .param p2, "py"    # F

    .line 53
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    move-object v1, v0

    .line 55
    .local v1, "$this$rotationMatrix_u24lambda_u2d4":Landroid/graphics/Matrix;
    const/4 v2, 0x0

    .line 53
    .local v2, "$i$a$-apply-MatrixKt$rotationMatrix$1":I
    invoke-virtual {v1, p0, p1, p2}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .end local v1    # "$this$rotationMatrix_u24lambda_u2d4":Landroid/graphics/Matrix;
    .end local v2    # "$i$a$-apply-MatrixKt$rotationMatrix$1":I
    return-object v0
.end method

.method public static synthetic rotationMatrix$default(FFFILjava/lang/Object;)Landroid/graphics/Matrix;
    .locals 1

    .line 52
    and-int/lit8 p4, p3, 0x2

    const/4 v0, 0x0

    if-eqz p4, :cond_0

    const/4 p1, 0x0

    :cond_0
    and-int/lit8 p3, p3, 0x4

    if-eqz p3, :cond_1

    const/4 p2, 0x0

    :cond_1
    invoke-static {p0, p1, p2}, Landroidx/core/graphics/MatrixKt;->rotationMatrix(FFF)Landroid/graphics/Matrix;

    move-result-object p0

    return-object p0
.end method

.method public static final scaleMatrix(FF)Landroid/graphics/Matrix;
    .locals 3
    .param p0, "sx"    # F
    .param p1, "sy"    # F

    .line 46
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    move-object v1, v0

    .line 55
    .local v1, "$this$scaleMatrix_u24lambda_u2d3":Landroid/graphics/Matrix;
    const/4 v2, 0x0

    .line 46
    .local v2, "$i$a$-apply-MatrixKt$scaleMatrix$1":I
    invoke-virtual {v1, p0, p1}, Landroid/graphics/Matrix;->setScale(FF)V

    .end local v1    # "$this$scaleMatrix_u24lambda_u2d3":Landroid/graphics/Matrix;
    .end local v2    # "$i$a$-apply-MatrixKt$scaleMatrix$1":I
    return-object v0
.end method

.method public static synthetic scaleMatrix$default(FFILjava/lang/Object;)Landroid/graphics/Matrix;
    .locals 1

    .line 45
    and-int/lit8 p3, p2, 0x1

    const/high16 v0, 0x3f800000    # 1.0f

    if-eqz p3, :cond_0

    const/high16 p0, 0x3f800000    # 1.0f

    :cond_0
    and-int/lit8 p2, p2, 0x2

    if-eqz p2, :cond_1

    const/high16 p1, 0x3f800000    # 1.0f

    :cond_1
    invoke-static {p0, p1}, Landroidx/core/graphics/MatrixKt;->scaleMatrix(FF)Landroid/graphics/Matrix;

    move-result-object p0

    return-object p0
.end method

.method public static final times(Landroid/graphics/Matrix;Landroid/graphics/Matrix;)Landroid/graphics/Matrix;
    .locals 4
    .param p0, "$this$times"    # Landroid/graphics/Matrix;
    .param p1, "m"    # Landroid/graphics/Matrix;

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "m"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 27
    .local v0, "$i$f$times":I
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1, p0}, Landroid/graphics/Matrix;-><init>(Landroid/graphics/Matrix;)V

    move-object v2, v1

    .line 55
    .local v2, "$this$times_u24lambda_u2d0":Landroid/graphics/Matrix;
    const/4 v3, 0x0

    .line 27
    .local v3, "$i$a$-apply-MatrixKt$times$1":I
    invoke-virtual {v2, p1}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    .end local v2    # "$this$times_u24lambda_u2d0":Landroid/graphics/Matrix;
    .end local v3    # "$i$a$-apply-MatrixKt$times$1":I
    return-object v1
.end method

.method public static final translationMatrix(FF)Landroid/graphics/Matrix;
    .locals 3
    .param p0, "tx"    # F
    .param p1, "ty"    # F

    .line 39
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    move-object v1, v0

    .line 55
    .local v1, "$this$translationMatrix_u24lambda_u2d2":Landroid/graphics/Matrix;
    const/4 v2, 0x0

    .line 39
    .local v2, "$i$a$-apply-MatrixKt$translationMatrix$1":I
    invoke-virtual {v1, p0, p1}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .end local v1    # "$this$translationMatrix_u24lambda_u2d2":Landroid/graphics/Matrix;
    .end local v2    # "$i$a$-apply-MatrixKt$translationMatrix$1":I
    return-object v0
.end method

.method public static synthetic translationMatrix$default(FFILjava/lang/Object;)Landroid/graphics/Matrix;
    .locals 1

    .line 38
    and-int/lit8 p3, p2, 0x1

    const/4 v0, 0x0

    if-eqz p3, :cond_0

    const/4 p0, 0x0

    :cond_0
    and-int/lit8 p2, p2, 0x2

    if-eqz p2, :cond_1

    const/4 p1, 0x0

    :cond_1
    invoke-static {p0, p1}, Landroidx/core/graphics/MatrixKt;->translationMatrix(FF)Landroid/graphics/Matrix;

    move-result-object p0

    return-object p0
.end method

.method public static final values(Landroid/graphics/Matrix;)[F
    .locals 4
    .param p0, "$this$values"    # Landroid/graphics/Matrix;

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 32
    .local v0, "$i$f$values":I
    const/16 v1, 0x9

    new-array v1, v1, [F

    move-object v2, v1

    .line 55
    .local v2, "$this$values_u24lambda_u2d1":[F
    const/4 v3, 0x0

    .line 32
    .local v3, "$i$a$-apply-MatrixKt$values$1":I
    invoke-virtual {p0, v2}, Landroid/graphics/Matrix;->getValues([F)V

    .end local v2    # "$this$values_u24lambda_u2d1":[F
    .end local v3    # "$i$a$-apply-MatrixKt$values$1":I
    return-object v1
.end method
