.class public final Landroidx/core/graphics/drawable/IconKt;
.super Ljava/lang/Object;
.source "Icon.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0016\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0012\n\u0000\u001a\r\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u0087\u0008\u001a\r\u0010\u0003\u001a\u00020\u0001*\u00020\u0002H\u0087\u0008\u001a\r\u0010\u0003\u001a\u00020\u0001*\u00020\u0004H\u0087\u0008\u001a\r\u0010\u0003\u001a\u00020\u0001*\u00020\u0005H\u0087\u0008\u00a8\u0006\u0006"
    }
    d2 = {
        "toAdaptiveIcon",
        "Landroid/graphics/drawable/Icon;",
        "Landroid/graphics/Bitmap;",
        "toIcon",
        "Landroid/net/Uri;",
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
.method public static final toAdaptiveIcon(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Icon;
    .locals 3
    .param p0, "$this$toAdaptiveIcon"    # Landroid/graphics/Bitmap;

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 34
    .local v0, "$i$f$toAdaptiveIcon":I
    invoke-static {p0}, Landroid/graphics/drawable/Icon;->createWithAdaptiveBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Icon;

    move-result-object v1

    const-string v2, "createWithAdaptiveBitmap(this)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v1
.end method

.method public static final toIcon(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Icon;
    .locals 3
    .param p0, "$this$toIcon"    # Landroid/graphics/Bitmap;

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 42
    .local v0, "$i$f$toIcon":I
    invoke-static {p0}, Landroid/graphics/drawable/Icon;->createWithBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Icon;

    move-result-object v1

    const-string v2, "createWithBitmap(this)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v1
.end method

.method public static final toIcon(Landroid/net/Uri;)Landroid/graphics/drawable/Icon;
    .locals 3
    .param p0, "$this$toIcon"    # Landroid/net/Uri;

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 50
    .local v0, "$i$f$toIcon":I
    invoke-static {p0}, Landroid/graphics/drawable/Icon;->createWithContentUri(Landroid/net/Uri;)Landroid/graphics/drawable/Icon;

    move-result-object v1

    const-string v2, "createWithContentUri(this)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v1
.end method

.method public static final toIcon([B)Landroid/graphics/drawable/Icon;
    .locals 3
    .param p0, "$this$toIcon"    # [B

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 58
    .local v0, "$i$f$toIcon":I
    array-length v1, p0

    const/4 v2, 0x0

    invoke-static {p0, v2, v1}, Landroid/graphics/drawable/Icon;->createWithData([BII)Landroid/graphics/drawable/Icon;

    move-result-object v1

    const-string v2, "createWithData(this, 0, size)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v1
.end method
