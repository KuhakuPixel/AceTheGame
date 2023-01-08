.class public final Lkotlinx/coroutines/TimeoutCancellationException;
.super Ljava/util/concurrent/CancellationException;
.source "Timeout.kt"

# interfaces
.implements Lkotlinx/coroutines/CopyableThrowable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/concurrent/CancellationException;",
        "Lkotlinx/coroutines/CopyableThrowable<",
        "Lkotlinx/coroutines/TimeoutCancellationException;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTimeout.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Timeout.kt\nkotlinx/coroutines/TimeoutCancellationException\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,185:1\n1#2:186\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u00002\u00060\u0001j\u0002`\u00022\u0008\u0012\u0004\u0012\u00020\u00000\u0003B\u000f\u0008\u0010\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006B\u0019\u0008\u0000\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0008\u00a2\u0006\u0002\u0010\tJ\n\u0010\n\u001a\u0004\u0018\u00010\u0000H\u0016R\u0012\u0010\u0007\u001a\u0004\u0018\u00010\u00088\u0000X\u0081\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000b"
    }
    d2 = {
        "Lkotlinx/coroutines/TimeoutCancellationException;",
        "Ljava/util/concurrent/CancellationException;",
        "Lkotlinx/coroutines/CancellationException;",
        "Lkotlinx/coroutines/CopyableThrowable;",
        "message",
        "",
        "(Ljava/lang/String;)V",
        "coroutine",
        "Lkotlinx/coroutines/Job;",
        "(Ljava/lang/String;Lkotlinx/coroutines/Job;)V",
        "createCopy",
        "kotlinx-coroutines-core"
    }
    k = 0x1
    mv = {
        0x1,
        0x6,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field public final coroutine:Lkotlinx/coroutines/Job;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;

    .line 173
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lkotlinx/coroutines/TimeoutCancellationException;-><init>(Ljava/lang/String;Lkotlinx/coroutines/Job;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lkotlinx/coroutines/Job;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "coroutine"    # Lkotlinx/coroutines/Job;

    .line 167
    invoke-direct {p0, p1}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    .line 166
    iput-object p2, p0, Lkotlinx/coroutines/TimeoutCancellationException;->coroutine:Lkotlinx/coroutines/Job;

    .line 164
    return-void
.end method


# virtual methods
.method public bridge synthetic createCopy()Ljava/lang/Throwable;
    .locals 1

    .line 164
    invoke-virtual {p0}, Lkotlinx/coroutines/TimeoutCancellationException;->createCopy()Lkotlinx/coroutines/TimeoutCancellationException;

    move-result-object v0

    check-cast v0, Ljava/lang/Throwable;

    return-object v0
.end method

.method public createCopy()Lkotlinx/coroutines/TimeoutCancellationException;
    .locals 4

    .line 177
    new-instance v0, Lkotlinx/coroutines/TimeoutCancellationException;

    invoke-virtual {p0}, Lkotlinx/coroutines/TimeoutCancellationException;->getMessage()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    const-string v1, ""

    :cond_0
    iget-object v2, p0, Lkotlinx/coroutines/TimeoutCancellationException;->coroutine:Lkotlinx/coroutines/Job;

    invoke-direct {v0, v1, v2}, Lkotlinx/coroutines/TimeoutCancellationException;-><init>(Ljava/lang/String;Lkotlinx/coroutines/Job;)V

    move-object v1, v0

    .line 186
    .local v1, "it":Lkotlinx/coroutines/TimeoutCancellationException;
    const/4 v2, 0x0

    .line 177
    .local v2, "$i$a$-also-TimeoutCancellationException$createCopy$1":I
    move-object v3, p0

    check-cast v3, Ljava/lang/Throwable;

    invoke-virtual {v1, v3}, Lkotlinx/coroutines/TimeoutCancellationException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .end local v1    # "it":Lkotlinx/coroutines/TimeoutCancellationException;
    .end local v2    # "$i$a$-also-TimeoutCancellationException$createCopy$1":I
    return-object v0
.end method
