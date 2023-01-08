.class public final Landroidx/core/text/HtmlKt;
.super Ljava/lang/Object;
.source "Html.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u001a/\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\u0008\u0008\u0002\u0010\u0003\u001a\u00020\u00042\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00062\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0008H\u0086\u0008\u001a\u0017\u0010\t\u001a\u00020\u0002*\u00020\u00012\u0008\u0008\u0002\u0010\n\u001a\u00020\u0004H\u0086\u0008\u00a8\u0006\u000b"
    }
    d2 = {
        "parseAsHtml",
        "Landroid/text/Spanned;",
        "",
        "flags",
        "",
        "imageGetter",
        "Landroid/text/Html$ImageGetter;",
        "tagHandler",
        "Landroid/text/Html$TagHandler;",
        "toHtml",
        "option",
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
.method public static final parseAsHtml(Ljava/lang/String;ILandroid/text/Html$ImageGetter;Landroid/text/Html$TagHandler;)Landroid/text/Spanned;
    .locals 3
    .param p0, "$this$parseAsHtml"    # Ljava/lang/String;
    .param p1, "flags"    # I
    .param p2, "imageGetter"    # Landroid/text/Html$ImageGetter;
    .param p3, "tagHandler"    # Landroid/text/Html$TagHandler;

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 43
    .local v0, "$i$f$parseAsHtml":I
    invoke-static {p0, p1, p2, p3}, Landroidx/core/text/HtmlCompat;->fromHtml(Ljava/lang/String;ILandroid/text/Html$ImageGetter;Landroid/text/Html$TagHandler;)Landroid/text/Spanned;

    move-result-object v1

    const-string v2, "fromHtml(this, flags, imageGetter, tagHandler)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v1
.end method

.method public static synthetic parseAsHtml$default(Ljava/lang/String;ILandroid/text/Html$ImageGetter;Landroid/text/Html$TagHandler;ILjava/lang/Object;)Landroid/text/Spanned;
    .locals 1
    .param p0, "$this$parseAsHtml_u24default"    # Ljava/lang/String;
    .param p1, "flags"    # I
    .param p2, "imageGetter"    # Landroid/text/Html$ImageGetter;
    .param p3, "tagHandler"    # Landroid/text/Html$TagHandler;

    .line 39
    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    .line 40
    const/4 p1, 0x0

    .line 39
    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    .line 41
    const/4 p2, 0x0

    .line 39
    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    .line 42
    const/4 p3, 0x0

    .line 39
    :cond_2
    const-string p4, "<this>"

    invoke-static {p0, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p4, 0x0

    .line 43
    .local p4, "$i$f$parseAsHtml":I
    invoke-static {p0, p1, p2, p3}, Landroidx/core/text/HtmlCompat;->fromHtml(Ljava/lang/String;ILandroid/text/Html$ImageGetter;Landroid/text/Html$TagHandler;)Landroid/text/Spanned;

    move-result-object p5

    const-string v0, "fromHtml(this, flags, imageGetter, tagHandler)"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p5
.end method

.method public static final toHtml(Landroid/text/Spanned;I)Ljava/lang/String;
    .locals 3
    .param p0, "$this$toHtml"    # Landroid/text/Spanned;
    .param p1, "option"    # I

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 52
    .local v0, "$i$f$toHtml":I
    invoke-static {p0, p1}, Landroidx/core/text/HtmlCompat;->toHtml(Landroid/text/Spanned;I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "toHtml(this, option)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v1
.end method

.method public static synthetic toHtml$default(Landroid/text/Spanned;IILjava/lang/Object;)Ljava/lang/String;
    .locals 1
    .param p0, "$this$toHtml_u24default"    # Landroid/text/Spanned;
    .param p1, "option"    # I

    .line 50
    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    .line 51
    const/4 p1, 0x0

    .line 50
    :cond_0
    const-string p2, "<this>"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p2, 0x0

    .line 52
    .local p2, "$i$f$toHtml":I
    invoke-static {p0, p1}, Landroidx/core/text/HtmlCompat;->toHtml(Landroid/text/Spanned;I)Ljava/lang/String;

    move-result-object p3

    const-string v0, "toHtml(this, option)"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p3
.end method
