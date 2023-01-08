.class public final Landroidx/core/os/HandlerKt;
.super Ljava/lang/Object;
.source "Handler.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0003\u001a4\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u00042\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00062\u000e\u0008\u0004\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\t0\u0008H\u0086\u0008\u00f8\u0001\u0000\u001a4\u0010\n\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u000b\u001a\u00020\u00042\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00062\u000e\u0008\u0004\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\t0\u0008H\u0086\u0008\u00f8\u0001\u0000\u0082\u0002\u0007\n\u0005\u0008\u009920\u0001\u00a8\u0006\u000c"
    }
    d2 = {
        "postAtTime",
        "Ljava/lang/Runnable;",
        "Landroid/os/Handler;",
        "uptimeMillis",
        "",
        "token",
        "",
        "action",
        "Lkotlin/Function0;",
        "",
        "postDelayed",
        "delayInMillis",
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
.method public static final postAtTime(Landroid/os/Handler;JLjava/lang/Object;Lkotlin/jvm/functions/Function0;)Ljava/lang/Runnable;
    .locals 2
    .param p0, "$this$postAtTime"    # Landroid/os/Handler;
    .param p1, "uptimeMillis"    # J
    .param p3, "token"    # Ljava/lang/Object;
    .param p4, "action"    # Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Handler;",
            "J",
            "Ljava/lang/Object;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Runnable;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "action"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 65
    .local v0, "$i$f$postAtTime":I
    new-instance v1, Landroidx/core/os/HandlerKt$postAtTime$runnable$1;

    invoke-direct {v1, p4}, Landroidx/core/os/HandlerKt$postAtTime$runnable$1;-><init>(Lkotlin/jvm/functions/Function0;)V

    check-cast v1, Ljava/lang/Runnable;

    .line 66
    .local v1, "runnable":Ljava/lang/Runnable;
    invoke-virtual {p0, v1, p3, p1, p2}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;Ljava/lang/Object;J)Z

    .line 67
    return-object v1
.end method

.method public static synthetic postAtTime$default(Landroid/os/Handler;JLjava/lang/Object;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)Ljava/lang/Runnable;
    .locals 0
    .param p0, "$this$postAtTime_u24default"    # Landroid/os/Handler;
    .param p1, "uptimeMillis"    # J
    .param p3, "token"    # Ljava/lang/Object;
    .param p4, "action"    # Lkotlin/jvm/functions/Function0;

    .line 60
    and-int/lit8 p5, p5, 0x2

    if-eqz p5, :cond_0

    .line 62
    const/4 p3, 0x0

    .line 60
    :cond_0
    const-string p5, "<this>"

    invoke-static {p0, p5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p5, "action"

    invoke-static {p4, p5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p5, 0x0

    .line 65
    .local p5, "$i$f$postAtTime":I
    new-instance p6, Landroidx/core/os/HandlerKt$postAtTime$runnable$1;

    invoke-direct {p6, p4}, Landroidx/core/os/HandlerKt$postAtTime$runnable$1;-><init>(Lkotlin/jvm/functions/Function0;)V

    check-cast p6, Ljava/lang/Runnable;

    .line 66
    .local p6, "runnable":Ljava/lang/Runnable;
    invoke-virtual {p0, p6, p3, p1, p2}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;Ljava/lang/Object;J)Z

    .line 67
    return-object p6
.end method

.method public static final postDelayed(Landroid/os/Handler;JLjava/lang/Object;Lkotlin/jvm/functions/Function0;)Ljava/lang/Runnable;
    .locals 2
    .param p0, "$this$postDelayed"    # Landroid/os/Handler;
    .param p1, "delayInMillis"    # J
    .param p3, "token"    # Ljava/lang/Object;
    .param p4, "action"    # Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Handler;",
            "J",
            "Ljava/lang/Object;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Runnable;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "action"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 38
    .local v0, "$i$f$postDelayed":I
    new-instance v1, Landroidx/core/os/HandlerKt$postDelayed$runnable$1;

    invoke-direct {v1, p4}, Landroidx/core/os/HandlerKt$postDelayed$runnable$1;-><init>(Lkotlin/jvm/functions/Function0;)V

    check-cast v1, Ljava/lang/Runnable;

    .line 39
    .local v1, "runnable":Ljava/lang/Runnable;
    if-nez p3, :cond_0

    .line 40
    invoke-virtual {p0, v1, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 42
    :cond_0
    invoke-static {p0, v1, p3, p1, p2}, Landroidx/core/os/HandlerCompat;->postDelayed(Landroid/os/Handler;Ljava/lang/Runnable;Ljava/lang/Object;J)Z

    .line 44
    :goto_0
    return-object v1
.end method

.method public static synthetic postDelayed$default(Landroid/os/Handler;JLjava/lang/Object;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)Ljava/lang/Runnable;
    .locals 0
    .param p0, "$this$postDelayed_u24default"    # Landroid/os/Handler;
    .param p1, "delayInMillis"    # J
    .param p3, "token"    # Ljava/lang/Object;
    .param p4, "action"    # Lkotlin/jvm/functions/Function0;

    .line 33
    and-int/lit8 p5, p5, 0x2

    if-eqz p5, :cond_0

    .line 35
    const/4 p3, 0x0

    .line 33
    :cond_0
    const-string p5, "<this>"

    invoke-static {p0, p5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p5, "action"

    invoke-static {p4, p5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p5, 0x0

    .line 38
    .local p5, "$i$f$postDelayed":I
    new-instance p6, Landroidx/core/os/HandlerKt$postDelayed$runnable$1;

    invoke-direct {p6, p4}, Landroidx/core/os/HandlerKt$postDelayed$runnable$1;-><init>(Lkotlin/jvm/functions/Function0;)V

    check-cast p6, Ljava/lang/Runnable;

    .line 39
    .local p6, "runnable":Ljava/lang/Runnable;
    if-nez p3, :cond_1

    .line 40
    invoke-virtual {p0, p6, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 42
    :cond_1
    invoke-static {p0, p6, p3, p1, p2}, Landroidx/core/os/HandlerCompat;->postDelayed(Landroid/os/Handler;Ljava/lang/Runnable;Ljava/lang/Object;J)Z

    .line 44
    :goto_0
    return-object p6
.end method
