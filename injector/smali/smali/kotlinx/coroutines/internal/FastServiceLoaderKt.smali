.class public final Lkotlinx/coroutines/internal/FastServiceLoaderKt;
.super Ljava/lang/Object;
.source "FastServiceLoader.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nFastServiceLoader.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FastServiceLoader.kt\nkotlinx/coroutines/internal/FastServiceLoaderKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,161:1\n1#2:162\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0003\"\u0014\u0010\u0000\u001a\u00020\u0001X\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0002\u0010\u0003\u00a8\u0006\u0004"
    }
    d2 = {
        "ANDROID_DETECTED",
        "",
        "getANDROID_DETECTED",
        "()Z",
        "kotlinx-coroutines-core"
    }
    k = 0x2
    mv = {
        0x1,
        0x6,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field private static final ANDROID_DETECTED:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 17
    :try_start_0
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 162
    const/4 v0, 0x0

    .line 17
    .local v0, "$i$a$-runCatching-FastServiceLoaderKt$ANDROID_DETECTED$1":I
    const-string v1, "android.os.Build"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .end local v0    # "$i$a$-runCatching-FastServiceLoaderKt$ANDROID_DETECTED$1":I
    invoke-static {v1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    invoke-static {v0}, Lkotlin/Result;->isSuccess-impl(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lkotlinx/coroutines/internal/FastServiceLoaderKt;->ANDROID_DETECTED:Z

    return-void
.end method

.method public static final getANDROID_DETECTED()Z
    .locals 1

    .line 17
    sget-boolean v0, Lkotlinx/coroutines/internal/FastServiceLoaderKt;->ANDROID_DETECTED:Z

    return v0
.end method
