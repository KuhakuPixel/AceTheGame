.class public final Lkotlinx/coroutines/test/TestCoroutineContext;
.super Ljava/lang/Object;
.source "TestCoroutineContext.kt"

# interfaces
.implements Lkotlin/coroutines/CoroutineContext;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlinx/coroutines/test/TestCoroutineContext$Dispatcher;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTestCoroutineContext.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TestCoroutineContext.kt\nkotlinx/coroutines/test/TestCoroutineContext\n+ 2 CoroutineExceptionHandler.kt\nkotlinx/coroutines/CoroutineExceptionHandlerKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 4 ThreadSafeHeap.kt\nkotlinx/coroutines/internal/ThreadSafeHeap\n+ 5 Synchronized.kt\nkotlinx/coroutines/internal/SynchronizedKt\n*L\n1#1,261:1\n49#2,4:262\n1720#3,3:266\n1741#3,3:269\n51#4:272\n52#4,7:274\n20#5:273\n*S KotlinDebug\n*F\n+ 1 TestCoroutineContext.kt\nkotlinx/coroutines/test/TestCoroutineContext\n*L\n22#1:262,4\n135#1:266,3\n149#1:269,3\n187#1:272\n187#1:274,7\n187#1:273\n*E\n"
.end annotation

.annotation runtime Lkotlin/Deprecated;
    level = .enum Lkotlin/DeprecationLevel;->ERROR:Lkotlin/DeprecationLevel;
    message = "This API has been deprecated to integrate with Structured Concurrency."
    replaceWith = .subannotation Lkotlin/ReplaceWith;
        expression = "TestCoroutineScope"
        imports = {
            "kotlin.coroutines.test"
        }
    .end subannotation
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000~\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0010\u0003\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010!\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\t\u0008\u0007\u0018\u00002\u00020\u0001:\u0001<B\u0011\u0012\n\u0008\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0002\u0010\u0004J\u0018\u0010\u0016\u001a\u00020\u00062\u0006\u0010\u0017\u001a\u00020\u00062\u0008\u0008\u0002\u0010\u0018\u001a\u00020\u0019J\u0018\u0010\u001a\u001a\u00020\u001b2\u0006\u0010\u001c\u001a\u00020\u00062\u0008\u0008\u0002\u0010\u0018\u001a\u00020\u0019J$\u0010\u001d\u001a\u00020\u001b2\u0008\u0008\u0002\u0010\u001e\u001a\u00020\u00032\u0012\u0010\u001f\u001a\u000e\u0012\u0004\u0012\u00020\r\u0012\u0004\u0012\u00020!0 J$\u0010\"\u001a\u00020\u001b2\u0008\u0008\u0002\u0010\u001e\u001a\u00020\u00032\u0012\u0010\u001f\u001a\u000e\u0012\u0004\u0012\u00020\r\u0012\u0004\u0012\u00020!0 J*\u0010#\u001a\u00020\u001b2\u0008\u0008\u0002\u0010\u001e\u001a\u00020\u00032\u0018\u0010\u001f\u001a\u0014\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\r0\u000c\u0012\u0004\u0012\u00020!0 J$\u0010$\u001a\u00020\u001b2\u0008\u0008\u0002\u0010\u001e\u001a\u00020\u00032\u0012\u0010\u001f\u001a\u000e\u0012\u0004\u0012\u00020\r\u0012\u0004\u0012\u00020!0 J\u0006\u0010%\u001a\u00020\u001bJ\u0014\u0010&\u001a\u00020\u001b2\n\u0010\'\u001a\u00060(j\u0002`)H\u0002J5\u0010*\u001a\u0002H+\"\u0004\u0008\u0000\u0010+2\u0006\u0010,\u001a\u0002H+2\u0018\u0010-\u001a\u0014\u0012\u0004\u0012\u0002H+\u0012\u0004\u0012\u00020/\u0012\u0004\u0012\u0002H+0.H\u0016\u00a2\u0006\u0002\u00100J(\u00101\u001a\u0004\u0018\u0001H2\"\u0008\u0008\u0000\u00102*\u00020/2\u000c\u00103\u001a\u0008\u0012\u0004\u0012\u0002H204H\u0096\u0002\u00a2\u0006\u0002\u00105J\u0014\u00106\u001a\u00020\u00012\n\u00103\u001a\u0006\u0012\u0002\u0008\u000304H\u0016J\u0010\u00107\u001a\u00020\u00062\u0008\u0008\u0002\u0010\u0018\u001a\u00020\u0019J\u001c\u00108\u001a\u00020\u00122\n\u0010\'\u001a\u00060(j\u0002`)2\u0006\u0010\u0017\u001a\u00020\u0006H\u0002J\u0008\u00109\u001a\u00020\u0006H\u0002J\u0008\u0010:\u001a\u00020\u0003H\u0016J\u0006\u0010;\u001a\u00020\u001bJ\u0010\u0010;\u001a\u00020\u001b2\u0006\u0010\u001c\u001a\u00020\u0006H\u0002R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0007\u001a\u00060\u0008R\u00020\u0000X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\nX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0017\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00020\r0\u000c8F\u00a2\u0006\u0006\u001a\u0004\u0008\u000e\u0010\u000fR\u0010\u0010\u0002\u001a\u0004\u0018\u00010\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0010\u001a\u0008\u0012\u0004\u0012\u00020\u00120\u0011X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0013\u001a\u00020\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0014\u001a\u0008\u0012\u0004\u0012\u00020\r0\u0015X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006="
    }
    d2 = {
        "Lkotlinx/coroutines/test/TestCoroutineContext;",
        "Lkotlin/coroutines/CoroutineContext;",
        "name",
        "",
        "(Ljava/lang/String;)V",
        "counter",
        "",
        "ctxDispatcher",
        "Lkotlinx/coroutines/test/TestCoroutineContext$Dispatcher;",
        "ctxHandler",
        "Lkotlinx/coroutines/CoroutineExceptionHandler;",
        "exceptions",
        "",
        "",
        "getExceptions",
        "()Ljava/util/List;",
        "queue",
        "Lkotlinx/coroutines/internal/ThreadSafeHeap;",
        "Lkotlinx/coroutines/test/TimedRunnableObsolete;",
        "time",
        "uncaughtExceptions",
        "",
        "advanceTimeBy",
        "delayTime",
        "unit",
        "Ljava/util/concurrent/TimeUnit;",
        "advanceTimeTo",
        "",
        "targetTime",
        "assertAllUnhandledExceptions",
        "message",
        "predicate",
        "Lkotlin/Function1;",
        "",
        "assertAnyUnhandledException",
        "assertExceptions",
        "assertUnhandledException",
        "cancelAllActions",
        "enqueue",
        "block",
        "Ljava/lang/Runnable;",
        "Lkotlinx/coroutines/Runnable;",
        "fold",
        "R",
        "initial",
        "operation",
        "Lkotlin/Function2;",
        "Lkotlin/coroutines/CoroutineContext$Element;",
        "(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)Ljava/lang/Object;",
        "get",
        "E",
        "key",
        "Lkotlin/coroutines/CoroutineContext$Key;",
        "(Lkotlin/coroutines/CoroutineContext$Key;)Lkotlin/coroutines/CoroutineContext$Element;",
        "minusKey",
        "now",
        "postDelayed",
        "processNextEvent",
        "toString",
        "triggerActions",
        "Dispatcher",
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
.field private counter:J

.field private final ctxDispatcher:Lkotlinx/coroutines/test/TestCoroutineContext$Dispatcher;

.field private final ctxHandler:Lkotlinx/coroutines/CoroutineExceptionHandler;

.field private final name:Ljava/lang/String;

.field private final queue:Lkotlinx/coroutines/internal/ThreadSafeHeap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/internal/ThreadSafeHeap<",
            "Lkotlinx/coroutines/test/TimedRunnableObsolete;",
            ">;"
        }
    .end annotation
.end field

.field private time:J

.field private final uncaughtExceptions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, v0}, Lkotlinx/coroutines/test/TestCoroutineContext;-><init>(Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lkotlinx/coroutines/test/TestCoroutineContext;->name:Ljava/lang/String;

    .line 18
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lkotlinx/coroutines/test/TestCoroutineContext;->uncaughtExceptions:Ljava/util/List;

    .line 20
    new-instance v0, Lkotlinx/coroutines/test/TestCoroutineContext$Dispatcher;

    invoke-direct {v0, p0}, Lkotlinx/coroutines/test/TestCoroutineContext$Dispatcher;-><init>(Lkotlinx/coroutines/test/TestCoroutineContext;)V

    iput-object v0, p0, Lkotlinx/coroutines/test/TestCoroutineContext;->ctxDispatcher:Lkotlinx/coroutines/test/TestCoroutineContext$Dispatcher;

    .line 22
    const/4 v0, 0x0

    .line 262
    .local v0, "$i$f$CoroutineExceptionHandler":I
    sget-object v1, Lkotlinx/coroutines/CoroutineExceptionHandler;->Key:Lkotlinx/coroutines/CoroutineExceptionHandler$Key;

    new-instance v2, Lkotlinx/coroutines/test/TestCoroutineContext$special$$inlined$CoroutineExceptionHandler$1;

    invoke-direct {v2, v1, p0}, Lkotlinx/coroutines/test/TestCoroutineContext$special$$inlined$CoroutineExceptionHandler$1;-><init>(Lkotlinx/coroutines/CoroutineExceptionHandler$Key;Lkotlinx/coroutines/test/TestCoroutineContext;)V

    check-cast v2, Lkotlinx/coroutines/CoroutineExceptionHandler;

    .line 265
    nop

    .line 22
    .end local v0    # "$i$f$CoroutineExceptionHandler":I
    iput-object v2, p0, Lkotlinx/coroutines/test/TestCoroutineContext;->ctxHandler:Lkotlinx/coroutines/CoroutineExceptionHandler;

    .line 27
    new-instance v0, Lkotlinx/coroutines/internal/ThreadSafeHeap;

    invoke-direct {v0}, Lkotlinx/coroutines/internal/ThreadSafeHeap;-><init>()V

    iput-object v0, p0, Lkotlinx/coroutines/test/TestCoroutineContext;->queue:Lkotlinx/coroutines/internal/ThreadSafeHeap;

    .line 17
    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 17
    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    :cond_0
    invoke-direct {p0, p1}, Lkotlinx/coroutines/test/TestCoroutineContext;-><init>(Ljava/lang/String;)V

    .line 227
    return-void
.end method

.method public static final synthetic access$enqueue(Lkotlinx/coroutines/test/TestCoroutineContext;Ljava/lang/Runnable;)V
    .locals 0
    .param p0, "$this"    # Lkotlinx/coroutines/test/TestCoroutineContext;
    .param p1, "block"    # Ljava/lang/Runnable;

    .line 14
    invoke-direct {p0, p1}, Lkotlinx/coroutines/test/TestCoroutineContext;->enqueue(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static final synthetic access$getQueue$p(Lkotlinx/coroutines/test/TestCoroutineContext;)Lkotlinx/coroutines/internal/ThreadSafeHeap;
    .locals 1
    .param p0, "$this"    # Lkotlinx/coroutines/test/TestCoroutineContext;

    .line 14
    iget-object v0, p0, Lkotlinx/coroutines/test/TestCoroutineContext;->queue:Lkotlinx/coroutines/internal/ThreadSafeHeap;

    return-object v0
.end method

.method public static final synthetic access$getUncaughtExceptions$p(Lkotlinx/coroutines/test/TestCoroutineContext;)Ljava/util/List;
    .locals 1
    .param p0, "$this"    # Lkotlinx/coroutines/test/TestCoroutineContext;

    .line 14
    iget-object v0, p0, Lkotlinx/coroutines/test/TestCoroutineContext;->uncaughtExceptions:Ljava/util/List;

    return-object v0
.end method

.method public static final synthetic access$postDelayed(Lkotlinx/coroutines/test/TestCoroutineContext;Ljava/lang/Runnable;J)Lkotlinx/coroutines/test/TimedRunnableObsolete;
    .locals 1
    .param p0, "$this"    # Lkotlinx/coroutines/test/TestCoroutineContext;
    .param p1, "block"    # Ljava/lang/Runnable;
    .param p2, "delayTime"    # J

    .line 14
    invoke-direct {p0, p1, p2, p3}, Lkotlinx/coroutines/test/TestCoroutineContext;->postDelayed(Ljava/lang/Runnable;J)Lkotlinx/coroutines/test/TimedRunnableObsolete;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic access$processNextEvent(Lkotlinx/coroutines/test/TestCoroutineContext;)J
    .locals 2
    .param p0, "$this"    # Lkotlinx/coroutines/test/TestCoroutineContext;

    .line 14
    invoke-direct {p0}, Lkotlinx/coroutines/test/TestCoroutineContext;->processNextEvent()J

    move-result-wide v0

    return-wide v0
.end method

.method public static synthetic advanceTimeBy$default(Lkotlinx/coroutines/test/TestCoroutineContext;JLjava/util/concurrent/TimeUnit;ILjava/lang/Object;)J
    .locals 0

    .line 77
    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_0

    sget-object p3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lkotlinx/coroutines/test/TestCoroutineContext;->advanceTimeBy(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide p0

    return-wide p0
.end method

.method public static synthetic advanceTimeTo$default(Lkotlinx/coroutines/test/TestCoroutineContext;JLjava/util/concurrent/TimeUnit;ILjava/lang/Object;)V
    .locals 0

    .line 89
    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_0

    sget-object p3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lkotlinx/coroutines/test/TestCoroutineContext;->advanceTimeTo(JLjava/util/concurrent/TimeUnit;)V

    return-void
.end method

.method public static synthetic assertAllUnhandledExceptions$default(Lkotlinx/coroutines/test/TestCoroutineContext;Ljava/lang/String;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)V
    .locals 0

    .line 134
    and-int/lit8 p3, p3, 0x1

    if-eqz p3, :cond_0

    const-string p1, ""

    :cond_0
    invoke-virtual {p0, p1, p2}, Lkotlinx/coroutines/test/TestCoroutineContext;->assertAllUnhandledExceptions(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public static synthetic assertAnyUnhandledException$default(Lkotlinx/coroutines/test/TestCoroutineContext;Ljava/lang/String;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)V
    .locals 0

    .line 148
    and-int/lit8 p3, p3, 0x1

    if-eqz p3, :cond_0

    const-string p1, ""

    :cond_0
    invoke-virtual {p0, p1, p2}, Lkotlinx/coroutines/test/TestCoroutineContext;->assertAnyUnhandledException(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public static synthetic assertExceptions$default(Lkotlinx/coroutines/test/TestCoroutineContext;Ljava/lang/String;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)V
    .locals 0

    .line 162
    and-int/lit8 p3, p3, 0x1

    if-eqz p3, :cond_0

    const-string p1, ""

    :cond_0
    invoke-virtual {p0, p1, p2}, Lkotlinx/coroutines/test/TestCoroutineContext;->assertExceptions(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public static synthetic assertUnhandledException$default(Lkotlinx/coroutines/test/TestCoroutineContext;Ljava/lang/String;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)V
    .locals 0

    .line 120
    and-int/lit8 p3, p3, 0x1

    if-eqz p3, :cond_0

    const-string p1, ""

    :cond_0
    invoke-virtual {p0, p1, p2}, Lkotlinx/coroutines/test/TestCoroutineContext;->assertUnhandledException(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method private final enqueue(Ljava/lang/Runnable;)V
    .locals 10
    .param p1, "block"    # Ljava/lang/Runnable;

    .line 168
    iget-object v0, p0, Lkotlinx/coroutines/test/TestCoroutineContext;->queue:Lkotlinx/coroutines/internal/ThreadSafeHeap;

    new-instance v9, Lkotlinx/coroutines/test/TimedRunnableObsolete;

    iget-wide v3, p0, Lkotlinx/coroutines/test/TestCoroutineContext;->counter:J

    const-wide/16 v1, 0x1

    add-long/2addr v1, v3

    iput-wide v1, p0, Lkotlinx/coroutines/test/TestCoroutineContext;->counter:J

    const-wide/16 v5, 0x0

    const/4 v7, 0x4

    const/4 v8, 0x0

    move-object v1, v9

    move-object v2, p1

    invoke-direct/range {v1 .. v8}, Lkotlinx/coroutines/test/TimedRunnableObsolete;-><init>(Ljava/lang/Runnable;JJILkotlin/jvm/internal/DefaultConstructorMarker;)V

    check-cast v9, Lkotlinx/coroutines/internal/ThreadSafeHeapNode;

    invoke-virtual {v0, v9}, Lkotlinx/coroutines/internal/ThreadSafeHeap;->addLast(Lkotlinx/coroutines/internal/ThreadSafeHeapNode;)V

    return-void
.end method

.method public static synthetic now$default(Lkotlinx/coroutines/test/TestCoroutineContext;Ljava/util/concurrent/TimeUnit;ILjava/lang/Object;)J
    .locals 0

    .line 64
    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    sget-object p1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    :cond_0
    invoke-virtual {p0, p1}, Lkotlinx/coroutines/test/TestCoroutineContext;->now(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide p0

    return-wide p0
.end method

.method private final postDelayed(Ljava/lang/Runnable;J)Lkotlinx/coroutines/test/TimedRunnableObsolete;
    .locals 7
    .param p1, "block"    # Ljava/lang/Runnable;
    .param p2, "delayTime"    # J

    .line 171
    new-instance v6, Lkotlinx/coroutines/test/TimedRunnableObsolete;

    iget-wide v2, p0, Lkotlinx/coroutines/test/TestCoroutineContext;->counter:J

    const-wide/16 v0, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lkotlinx/coroutines/test/TestCoroutineContext;->counter:J

    iget-wide v0, p0, Lkotlinx/coroutines/test/TestCoroutineContext;->time:J

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v4, p2, p3}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v4

    add-long/2addr v4, v0

    move-object v0, v6

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lkotlinx/coroutines/test/TimedRunnableObsolete;-><init>(Ljava/lang/Runnable;JJ)V

    .line 172
    nop

    .local v0, "it":Lkotlinx/coroutines/test/TimedRunnableObsolete;
    const/4 v1, 0x0

    .line 173
    .local v1, "$i$a$-also-TestCoroutineContext$postDelayed$1":I
    iget-object v2, p0, Lkotlinx/coroutines/test/TestCoroutineContext;->queue:Lkotlinx/coroutines/internal/ThreadSafeHeap;

    move-object v3, v0

    check-cast v3, Lkotlinx/coroutines/internal/ThreadSafeHeapNode;

    invoke-virtual {v2, v3}, Lkotlinx/coroutines/internal/ThreadSafeHeap;->addLast(Lkotlinx/coroutines/internal/ThreadSafeHeapNode;)V

    .line 174
    nop

    .line 172
    .end local v0    # "it":Lkotlinx/coroutines/test/TimedRunnableObsolete;
    .end local v1    # "$i$a$-also-TestCoroutineContext$postDelayed$1":I
    nop

    .line 174
    return-object v6
.end method

.method private final processNextEvent()J
    .locals 3

    .line 177
    iget-object v0, p0, Lkotlinx/coroutines/test/TestCoroutineContext;->queue:Lkotlinx/coroutines/internal/ThreadSafeHeap;

    invoke-virtual {v0}, Lkotlinx/coroutines/internal/ThreadSafeHeap;->peek()Lkotlinx/coroutines/internal/ThreadSafeHeapNode;

    move-result-object v0

    check-cast v0, Lkotlinx/coroutines/test/TimedRunnableObsolete;

    .line 178
    .local v0, "current":Lkotlinx/coroutines/test/TimedRunnableObsolete;
    if-eqz v0, :cond_0

    .line 180
    iget-wide v1, v0, Lkotlinx/coroutines/test/TimedRunnableObsolete;->time:J

    invoke-direct {p0, v1, v2}, Lkotlinx/coroutines/test/TestCoroutineContext;->triggerActions(J)V

    .line 182
    :cond_0
    iget-object v1, p0, Lkotlinx/coroutines/test/TestCoroutineContext;->queue:Lkotlinx/coroutines/internal/ThreadSafeHeap;

    invoke-virtual {v1}, Lkotlinx/coroutines/internal/ThreadSafeHeap;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    const-wide v1, 0x7fffffffffffffffL

    goto :goto_0

    :cond_1
    const-wide/16 v1, 0x0

    :goto_0
    return-wide v1
.end method

.method private final triggerActions(J)V
    .locals 12
    .param p1, "targetTime"    # J

    .line 186
    :goto_0
    nop

    .line 187
    iget-object v0, p0, Lkotlinx/coroutines/test/TestCoroutineContext;->queue:Lkotlinx/coroutines/internal/ThreadSafeHeap;

    .local v0, "this_$iv":Lkotlinx/coroutines/internal/ThreadSafeHeap;
    const/4 v1, 0x0

    .line 272
    .local v1, "$i$f$removeFirstIf":I
    const/4 v2, 0x0

    .line 273
    .local v2, "$i$f$synchronized":I
    monitor-enter v0

    const/4 v3, 0x0

    .line 274
    .local v3, "$i$a$-synchronized-ThreadSafeHeap$removeFirstIf$1$iv":I
    :try_start_0
    invoke-virtual {v0}, Lkotlinx/coroutines/internal/ThreadSafeHeap;->firstImpl()Lkotlinx/coroutines/internal/ThreadSafeHeapNode;

    move-result-object v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v5, 0x0

    if-nez v4, :cond_0

    .end local v2    # "$i$f$synchronized":I
    .end local v3    # "$i$a$-synchronized-ThreadSafeHeap$removeFirstIf$1$iv":I
    monitor-exit v0

    goto :goto_3

    .line 275
    .restart local v2    # "$i$f$synchronized":I
    .restart local v3    # "$i$a$-synchronized-ThreadSafeHeap$removeFirstIf$1$iv":I
    .local v4, "first$iv":Lkotlinx/coroutines/internal/ThreadSafeHeapNode;
    :cond_0
    :try_start_1
    move-object v6, v4

    check-cast v6, Lkotlinx/coroutines/test/TimedRunnableObsolete;

    .local v6, "it":Lkotlinx/coroutines/test/TimedRunnableObsolete;
    const/4 v7, 0x0

    .line 187
    .local v7, "$i$a$-removeFirstIf-TestCoroutineContext$triggerActions$current$1":I
    iget-wide v8, v6, Lkotlinx/coroutines/test/TimedRunnableObsolete;->time:J

    const/4 v10, 0x0

    cmp-long v11, v8, p1

    if-gtz v11, :cond_1

    const/4 v8, 0x1

    goto :goto_1

    :cond_1
    const/4 v8, 0x0

    .end local v6    # "it":Lkotlinx/coroutines/test/TimedRunnableObsolete;
    .end local v7    # "$i$a$-removeFirstIf-TestCoroutineContext$triggerActions$current$1":I
    :goto_1
    if-eqz v8, :cond_2

    .line 276
    invoke-virtual {v0, v10}, Lkotlinx/coroutines/internal/ThreadSafeHeap;->removeAtImpl(I)Lkotlinx/coroutines/internal/ThreadSafeHeapNode;

    move-result-object v5

    goto :goto_2

    .line 278
    :cond_2
    move-object v6, v5

    check-cast v6, Lkotlinx/coroutines/internal/ThreadSafeHeapNode;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 275
    :goto_2
    nop

    .end local v3    # "$i$a$-synchronized-ThreadSafeHeap$removeFirstIf$1$iv":I
    .end local v4    # "first$iv":Lkotlinx/coroutines/internal/ThreadSafeHeapNode;
    monitor-exit v0

    .line 273
    nop

    .line 280
    .end local v2    # "$i$f$synchronized":I
    nop

    .line 187
    .end local v0    # "this_$iv":Lkotlinx/coroutines/internal/ThreadSafeHeap;
    .end local v1    # "$i$f$removeFirstIf":I
    :goto_3
    check-cast v5, Lkotlinx/coroutines/test/TimedRunnableObsolete;

    if-nez v5, :cond_3

    .line 192
    return-void

    .line 187
    :cond_3
    move-object v0, v5

    .line 189
    .local v0, "current":Lkotlinx/coroutines/test/TimedRunnableObsolete;
    iget-wide v1, v0, Lkotlinx/coroutines/test/TimedRunnableObsolete;->time:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-eqz v5, :cond_4

    iget-wide v1, v0, Lkotlinx/coroutines/test/TimedRunnableObsolete;->time:J

    iput-wide v1, p0, Lkotlinx/coroutines/test/TestCoroutineContext;->time:J

    .line 190
    :cond_4
    invoke-virtual {v0}, Lkotlinx/coroutines/test/TimedRunnableObsolete;->run()V

    .end local v0    # "current":Lkotlinx/coroutines/test/TimedRunnableObsolete;
    goto :goto_0

    .line 275
    .local v0, "this_$iv":Lkotlinx/coroutines/internal/ThreadSafeHeap;
    .restart local v1    # "$i$f$removeFirstIf":I
    .restart local v2    # "$i$f$synchronized":I
    :catchall_0
    move-exception v3

    monitor-exit v0

    goto :goto_5

    :goto_4
    throw v3

    :goto_5
    goto :goto_4
.end method


# virtual methods
.method public final advanceTimeBy(JLjava/util/concurrent/TimeUnit;)J
    .locals 5
    .param p1, "delayTime"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;

    .line 78
    iget-wide v0, p0, Lkotlinx/coroutines/test/TestCoroutineContext;->time:J

    .line 79
    .local v0, "oldTime":J
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v2

    add-long/2addr v2, v0

    sget-object v4, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p0, v2, v3, v4}, Lkotlinx/coroutines/test/TestCoroutineContext;->advanceTimeTo(JLjava/util/concurrent/TimeUnit;)V

    .line 80
    iget-wide v2, p0, Lkotlinx/coroutines/test/TestCoroutineContext;->time:J

    sub-long/2addr v2, v0

    sget-object v4, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p3, v2, v3, v4}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v2

    return-wide v2
.end method

.method public final advanceTimeTo(JLjava/util/concurrent/TimeUnit;)V
    .locals 5
    .param p1, "targetTime"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;

    .line 90
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    .line 91
    .local v0, "nanoTime":J
    invoke-direct {p0, v0, v1}, Lkotlinx/coroutines/test/TestCoroutineContext;->triggerActions(J)V

    .line 92
    iget-wide v2, p0, Lkotlinx/coroutines/test/TestCoroutineContext;->time:J

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    iput-wide v0, p0, Lkotlinx/coroutines/test/TestCoroutineContext;->time:J

    .line 93
    :cond_0
    return-void
.end method

.method public final assertAllUnhandledExceptions(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V
    .locals 6
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "predicate"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Throwable;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 135
    iget-object v0, p0, Lkotlinx/coroutines/test/TestCoroutineContext;->uncaughtExceptions:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    .local v0, "$this$all$iv":Ljava/lang/Iterable;
    const/4 v1, 0x0

    .line 266
    .local v1, "$i$f$all":I
    instance-of v2, v0, Ljava/util/Collection;

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    move-object v2, v0

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 267
    :cond_0
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .local v4, "element$iv":Ljava/lang/Object;
    invoke-interface {p2, v4}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-nez v5, :cond_1

    const/4 v3, 0x0

    goto :goto_0

    .line 268
    .end local v4    # "element$iv":Ljava/lang/Object;
    :cond_2
    nop

    .line 135
    .end local v0    # "$this$all$iv":Ljava/lang/Iterable;
    .end local v1    # "$i$f$all":I
    :goto_0
    if-eqz v3, :cond_3

    .line 136
    iget-object v0, p0, Lkotlinx/coroutines/test/TestCoroutineContext;->uncaughtExceptions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 137
    return-void

    .line 135
    :cond_3
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method

.method public final assertAnyUnhandledException(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V
    .locals 6
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "predicate"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Throwable;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 149
    iget-object v0, p0, Lkotlinx/coroutines/test/TestCoroutineContext;->uncaughtExceptions:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    .local v0, "$this$any$iv":Ljava/lang/Iterable;
    const/4 v1, 0x0

    .line 269
    .local v1, "$i$f$any":I
    instance-of v2, v0, Ljava/util/Collection;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    move-object v2, v0

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 270
    :cond_0
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .local v4, "element$iv":Ljava/lang/Object;
    invoke-interface {p2, v4}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v3, 0x1

    goto :goto_0

    .line 271
    .end local v4    # "element$iv":Ljava/lang/Object;
    :cond_2
    nop

    .line 149
    .end local v0    # "$this$any$iv":Ljava/lang/Iterable;
    .end local v1    # "$i$f$any":I
    :goto_0
    if-eqz v3, :cond_3

    .line 150
    iget-object v0, p0, Lkotlinx/coroutines/test/TestCoroutineContext;->uncaughtExceptions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 151
    return-void

    .line 149
    :cond_3
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method

.method public final assertExceptions(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "predicate"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/util/List<",
            "+",
            "Ljava/lang/Throwable;",
            ">;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 163
    iget-object v0, p0, Lkotlinx/coroutines/test/TestCoroutineContext;->uncaughtExceptions:Ljava/util/List;

    invoke-interface {p2, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 164
    iget-object v0, p0, Lkotlinx/coroutines/test/TestCoroutineContext;->uncaughtExceptions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 165
    return-void

    .line 163
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public final assertUnhandledException(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V
    .locals 2
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "predicate"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Throwable;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 121
    iget-object v0, p0, Lkotlinx/coroutines/test/TestCoroutineContext;->uncaughtExceptions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lkotlinx/coroutines/test/TestCoroutineContext;->uncaughtExceptions:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p2, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 122
    iget-object v0, p0, Lkotlinx/coroutines/test/TestCoroutineContext;->uncaughtExceptions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 123
    return-void

    .line 121
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public final cancelAllActions()V
    .locals 1

    .line 108
    iget-object v0, p0, Lkotlinx/coroutines/test/TestCoroutineContext;->queue:Lkotlinx/coroutines/internal/ThreadSafeHeap;

    invoke-virtual {v0}, Lkotlinx/coroutines/internal/ThreadSafeHeap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lkotlinx/coroutines/test/TestCoroutineContext;->queue:Lkotlinx/coroutines/internal/ThreadSafeHeap;

    invoke-virtual {v0}, Lkotlinx/coroutines/internal/ThreadSafeHeap;->clear()V

    .line 109
    :cond_0
    return-void
.end method

.method public fold(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)Ljava/lang/Object;
    .locals 2
    .param p1, "initial"    # Ljava/lang/Object;
    .param p2, "operation"    # Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(TR;",
            "Lkotlin/jvm/functions/Function2<",
            "-TR;-",
            "Lkotlin/coroutines/CoroutineContext$Element;",
            "+TR;>;)TR;"
        }
    .end annotation

    .line 43
    iget-object v0, p0, Lkotlinx/coroutines/test/TestCoroutineContext;->ctxDispatcher:Lkotlinx/coroutines/test/TestCoroutineContext$Dispatcher;

    invoke-interface {p2, p1, v0}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lkotlinx/coroutines/test/TestCoroutineContext;->ctxHandler:Lkotlinx/coroutines/CoroutineExceptionHandler;

    invoke-interface {p2, v0, v1}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public get(Lkotlin/coroutines/CoroutineContext$Key;)Lkotlin/coroutines/CoroutineContext$Element;
    .locals 1
    .param p1, "key"    # Lkotlin/coroutines/CoroutineContext$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Lkotlin/coroutines/CoroutineContext$Element;",
            ">(",
            "Lkotlin/coroutines/CoroutineContext$Key<",
            "TE;>;)TE;"
        }
    .end annotation

    .line 46
    nop

    .line 47
    sget-object v0, Lkotlin/coroutines/ContinuationInterceptor;->Key:Lkotlin/coroutines/ContinuationInterceptor$Key;

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lkotlinx/coroutines/test/TestCoroutineContext;->ctxDispatcher:Lkotlinx/coroutines/test/TestCoroutineContext$Dispatcher;

    check-cast v0, Lkotlin/coroutines/CoroutineContext$Element;

    goto :goto_0

    .line 48
    :cond_0
    sget-object v0, Lkotlinx/coroutines/CoroutineExceptionHandler;->Key:Lkotlinx/coroutines/CoroutineExceptionHandler$Key;

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lkotlinx/coroutines/test/TestCoroutineContext;->ctxHandler:Lkotlinx/coroutines/CoroutineExceptionHandler;

    check-cast v0, Lkotlin/coroutines/CoroutineContext$Element;

    goto :goto_0

    .line 49
    :cond_1
    const/4 v0, 0x0

    .line 50
    :goto_0
    return-object v0
.end method

.method public final getExceptions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation

    .line 38
    iget-object v0, p0, Lkotlinx/coroutines/test/TestCoroutineContext;->uncaughtExceptions:Ljava/util/List;

    return-object v0
.end method

.method public minusKey(Lkotlin/coroutines/CoroutineContext$Key;)Lkotlin/coroutines/CoroutineContext;
    .locals 1
    .param p1, "key"    # Lkotlin/coroutines/CoroutineContext$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/CoroutineContext$Key<",
            "*>;)",
            "Lkotlin/coroutines/CoroutineContext;"
        }
    .end annotation

    .line 52
    nop

    .line 53
    sget-object v0, Lkotlin/coroutines/ContinuationInterceptor;->Key:Lkotlin/coroutines/ContinuationInterceptor$Key;

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lkotlinx/coroutines/test/TestCoroutineContext;->ctxHandler:Lkotlinx/coroutines/CoroutineExceptionHandler;

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    goto :goto_0

    .line 54
    :cond_0
    sget-object v0, Lkotlinx/coroutines/CoroutineExceptionHandler;->Key:Lkotlinx/coroutines/CoroutineExceptionHandler$Key;

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lkotlinx/coroutines/test/TestCoroutineContext;->ctxDispatcher:Lkotlinx/coroutines/test/TestCoroutineContext$Dispatcher;

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    goto :goto_0

    .line 55
    :cond_1
    move-object v0, p0

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    .line 56
    :goto_0
    return-object v0
.end method

.method public final now(Ljava/util/concurrent/TimeUnit;)J
    .locals 3
    .param p1, "unit"    # Ljava/util/concurrent/TimeUnit;

    .line 65
    iget-wide v0, p0, Lkotlinx/coroutines/test/TestCoroutineContext;->time:J

    sget-object v2, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    return-wide v0
.end method

.method public plus(Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;
    .locals 1
    .param p1, "context"    # Lkotlin/coroutines/CoroutineContext;

    .line 14
    move-object v0, p0

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    invoke-static {v0, p1}, Lkotlin/coroutines/CoroutineContext$DefaultImpls;->plus(Lkotlin/coroutines/CoroutineContext;Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 194
    iget-object v0, p0, Lkotlinx/coroutines/test/TestCoroutineContext;->name:Ljava/lang/String;

    if-nez v0, :cond_0

    invoke-static {p0}, Lkotlinx/coroutines/DebugStringsKt;->getHexAddress(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "TestCoroutineContext@"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public final triggerActions()V
    .locals 2

    .line 99
    iget-wide v0, p0, Lkotlinx/coroutines/test/TestCoroutineContext;->time:J

    invoke-direct {p0, v0, v1}, Lkotlinx/coroutines/test/TestCoroutineContext;->triggerActions(J)V

    return-void
.end method
