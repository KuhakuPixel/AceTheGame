.class public final Landroidx/core/text/SpannedStringKt;
.super Ljava/lang/Object;
.source "SpannedString.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0000\n\u0002\u0010\u0011\n\u0000\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\r\n\u0000\u001a:\u0010\u0000\u001a\n\u0012\u0006\u0008\u0001\u0012\u0002H\u00020\u0001\"\n\u0008\u0000\u0010\u0002\u0018\u0001*\u00020\u0003*\u00020\u00042\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u00062\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0006H\u0086\u0008\u00a2\u0006\u0002\u0010\u0008\u001a\r\u0010\t\u001a\u00020\u0004*\u00020\nH\u0086\u0008\u00a8\u0006\u000b"
    }
    d2 = {
        "getSpans",
        "",
        "T",
        "",
        "Landroid/text/Spanned;",
        "start",
        "",
        "end",
        "(Landroid/text/Spanned;II)[Ljava/lang/Object;",
        "toSpanned",
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
.method public static final synthetic getSpans(Landroid/text/Spanned;II)[Ljava/lang/Object;
    .locals 3
    .param p0, "$this$getSpans"    # Landroid/text/Spanned;
    .param p1, "start"    # I
    .param p2, "end"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/text/Spanned;",
            "II)[TT;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 34
    .local v0, "$i$f$getSpans":I
    const/4 v1, 0x4

    const-string v2, "T"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    const-class v1, Ljava/lang/Object;

    move-object v2, v1

    check-cast v2, Ljava/lang/Class;

    invoke-interface {p0, p1, p2, v1}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    const-string v2, "getSpans(start, end, T::class.java)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, [Ljava/lang/Object;

    return-object v1
.end method

.method public static synthetic getSpans$default(Landroid/text/Spanned;IIILjava/lang/Object;)[Ljava/lang/Object;
    .locals 1
    .param p0, "$this$getSpans_u24default"    # Landroid/text/Spanned;
    .param p1, "start"    # I
    .param p2, "end"    # I

    .line 31
    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    .line 32
    const/4 p1, 0x0

    .line 31
    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    .line 33
    invoke-interface {p0}, Landroid/text/Spanned;->length()I

    move-result p2

    .line 31
    :cond_1
    const-string p3, "<this>"

    invoke-static {p0, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p3, 0x0

    .line 34
    .local p3, "$i$f$getSpans":I
    const/4 p4, 0x4

    const-string v0, "T"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    const-class p4, Ljava/lang/Object;

    move-object v0, p4

    check-cast v0, Ljava/lang/Class;

    invoke-interface {p0, p1, p2, p4}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object p4

    const-string v0, "getSpans(start, end, T::class.java)"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p4, [Ljava/lang/Object;

    return-object p4
.end method

.method public static final toSpanned(Ljava/lang/CharSequence;)Landroid/text/Spanned;
    .locals 3
    .param p0, "$this$toSpanned"    # Ljava/lang/CharSequence;

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 28
    .local v0, "$i$f$toSpanned":I
    invoke-static {p0}, Landroid/text/SpannedString;->valueOf(Ljava/lang/CharSequence;)Landroid/text/SpannedString;

    move-result-object v1

    const-string v2, "valueOf(this)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Landroid/text/Spanned;

    return-object v1
.end method
