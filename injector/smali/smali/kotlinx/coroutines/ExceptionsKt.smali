.class public final Lkotlinx/coroutines/ExceptionsKt;
.super Ljava/lang/Object;
.source "Exceptions.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nExceptions.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Exceptions.kt\nkotlinx/coroutines/ExceptionsKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,76:1\n1#2:77\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0003\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u001a\u001e\u0010\u0000\u001a\u00060\u0001j\u0002`\u00022\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u00042\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u001a\u0015\u0010\u0007\u001a\u00020\u0008*\u00020\u00062\u0006\u0010\t\u001a\u00020\u0006H\u0080\u0008*\n\u0010\u0000\"\u00020\u00012\u00020\u0001\u00a8\u0006\n"
    }
    d2 = {
        "CancellationException",
        "Ljava/util/concurrent/CancellationException;",
        "Lkotlinx/coroutines/CancellationException;",
        "message",
        "",
        "cause",
        "",
        "addSuppressedThrowable",
        "",
        "other",
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


# direct methods
.method public static final CancellationException(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/util/concurrent/CancellationException;
    .locals 3
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "cause"    # Ljava/lang/Throwable;

    .line 22
    new-instance v0, Ljava/util/concurrent/CancellationException;

    invoke-direct {v0, p0}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    move-object v1, v0

    .line 77
    .local v1, "$this$CancellationException_u24lambda_u2d0":Ljava/util/concurrent/CancellationException;
    const/4 v2, 0x0

    .line 22
    .local v2, "$i$a$-apply-ExceptionsKt$CancellationException$1":I
    invoke-virtual {v1, p1}, Ljava/util/concurrent/CancellationException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .end local v1    # "$this$CancellationException_u24lambda_u2d0":Ljava/util/concurrent/CancellationException;
    .end local v2    # "$i$a$-apply-ExceptionsKt$CancellationException$1":I
    return-object v0
.end method

.method public static final addSuppressedThrowable(Ljava/lang/Throwable;Ljava/lang/Throwable;)V
    .locals 1
    .param p0, "$this$addSuppressedThrowable"    # Ljava/lang/Throwable;
    .param p1, "other"    # Ljava/lang/Throwable;

    const/4 v0, 0x0

    .line 75
    .local v0, "$i$f$addSuppressedThrowable":I
    invoke-static {p0, p1}, Lkotlin/ExceptionsKt;->addSuppressed(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    return-void
.end method
