.class public Lkotlinx/coroutines/CancellableContinuationImpl;
.super Lkotlinx/coroutines/DispatchedTask;
.source "CancellableContinuationImpl.kt"

# interfaces
.implements Lkotlinx/coroutines/CancellableContinuation;
.implements Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lkotlinx/coroutines/DispatchedTask<",
        "TT;>;",
        "Lkotlinx/coroutines/CancellableContinuation<",
        "TT;>;",
        "Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCancellableContinuationImpl.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CancellableContinuationImpl.kt\nkotlinx/coroutines/CancellableContinuationImpl\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 AtomicFU.common.kt\nkotlinx/atomicfu/AtomicFU_commonKt\n+ 4 CompletionHandler.kt\nkotlinx/coroutines/CompletionHandlerKt\n+ 5 StackTraceRecovery.kt\nkotlinx/coroutines/internal/StackTraceRecoveryKt\n*L\n1#1,593:1\n196#1,2:599\n198#1,8:602\n196#1,10:610\n1#2:594\n155#3,2:595\n155#3,2:597\n351#3,2:620\n351#3,2:622\n155#3,2:629\n155#3,2:631\n155#3,2:633\n22#4:601\n13#4:628\n57#5,2:624\n57#5,2:626\n57#5,2:635\n*S KotlinDebug\n*F\n+ 1 CancellableContinuationImpl.kt\nkotlinx/coroutines/CancellableContinuationImpl\n*L\n212#1:599,2\n212#1:602,8\n215#1:610,10\n141#1:595,2\n174#1:597,2\n236#1:620,2\n246#1:622,2\n335#1:629,2\n425#1:631,2\n460#1:633,2\n212#1:601\n310#1:628\n289#1:624,2\n299#1:626,2\n536#1:635,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u00b6\u0001\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0001\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0003\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008\u0011\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0010\u000e\n\u0002\u0008\u000c\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0008\u0011\u0018\u0000*\u0006\u0008\u0000\u0010\u0001 \u00002\t\u0012\u0004\u0012\u00028\u00000\u008a\u00012\t\u0012\u0004\u0012\u00028\u00000\u008b\u00012\u00060tj\u0002`uB\u001d\u0012\u000c\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u0019\u0010\u000b\u001a\u00020\n2\u0008\u0010\t\u001a\u0004\u0018\u00010\u0008H\u0002\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ\u001f\u0010\u0012\u001a\u00020\u00112\u0006\u0010\u000e\u001a\u00020\r2\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u000f\u00a2\u0006\u0004\u0008\u0012\u0010\u0013JB\u0010\u0012\u001a\u00020\u00112\'\u0010\u000e\u001a#\u0012\u0015\u0012\u0013\u0018\u00010\u000f\u00a2\u0006\u000c\u0008\u0015\u0012\u0008\u0008\u0016\u0012\u0004\u0008\u0008(\u0010\u0012\u0004\u0012\u00020\u00110\u0014j\u0002`\u00172\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u000fH\u0002\u00a2\u0006\u0004\u0008\u0012\u0010\u0018J\u001e\u0010\u001b\u001a\u00020\u00112\u000c\u0010\u001a\u001a\u0008\u0012\u0004\u0012\u00020\u00110\u0019H\u0082\u0008\u00a2\u0006\u0004\u0008\u001b\u0010\u001cJ8\u0010\u001e\u001a\u00020\u00112!\u0010\u001d\u001a\u001d\u0012\u0013\u0012\u00110\u000f\u00a2\u0006\u000c\u0008\u0015\u0012\u0008\u0008\u0016\u0012\u0004\u0008\u0008(\u0010\u0012\u0004\u0012\u00020\u00110\u00142\u0006\u0010\u0010\u001a\u00020\u000f\u00a2\u0006\u0004\u0008\u001e\u0010\u0018J\u0019\u0010 \u001a\u00020\u001f2\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u000fH\u0016\u00a2\u0006\u0004\u0008 \u0010!J!\u0010%\u001a\u00020\u00112\u0008\u0010\"\u001a\u0004\u0018\u00010\u00082\u0006\u0010\u0010\u001a\u00020\u000fH\u0010\u00a2\u0006\u0004\u0008#\u0010$J\u0017\u0010&\u001a\u00020\u001f2\u0006\u0010\u0010\u001a\u00020\u000fH\u0002\u00a2\u0006\u0004\u0008&\u0010!J\u0017\u0010(\u001a\u00020\u00112\u0006\u0010\'\u001a\u00020\u0008H\u0016\u00a2\u0006\u0004\u0008(\u0010)J\u000f\u0010,\u001a\u00020\u0011H\u0000\u00a2\u0006\u0004\u0008*\u0010+J\u000f\u0010-\u001a\u00020\u0011H\u0002\u00a2\u0006\u0004\u0008-\u0010+J\u0017\u0010/\u001a\u00020\u00112\u0006\u0010.\u001a\u00020\u0004H\u0002\u00a2\u0006\u0004\u0008/\u00100J\u0017\u00103\u001a\u00020\u000f2\u0006\u00102\u001a\u000201H\u0016\u00a2\u0006\u0004\u00083\u00104J\u001b\u00108\u001a\u0004\u0018\u00010\u000f2\u0008\u00105\u001a\u0004\u0018\u00010\u0008H\u0010\u00a2\u0006\u0004\u00086\u00107J\u0011\u00109\u001a\u0004\u0018\u00010\u0008H\u0001\u00a2\u0006\u0004\u00089\u0010:J\u0017\u0010=\u001a\n\u0018\u00010;j\u0004\u0018\u0001`<H\u0016\u00a2\u0006\u0004\u0008=\u0010>J\u001f\u0010A\u001a\u00028\u0001\"\u0004\u0008\u0001\u0010\u00012\u0008\u00105\u001a\u0004\u0018\u00010\u0008H\u0010\u00a2\u0006\u0004\u0008?\u0010@J\u000f\u0010B\u001a\u00020\u0011H\u0016\u00a2\u0006\u0004\u0008B\u0010+J\u0011\u0010D\u001a\u0004\u0018\u00010CH\u0002\u00a2\u0006\u0004\u0008D\u0010EJ8\u0010F\u001a\u00020\u00112\'\u0010\u000e\u001a#\u0012\u0015\u0012\u0013\u0018\u00010\u000f\u00a2\u0006\u000c\u0008\u0015\u0012\u0008\u0008\u0016\u0012\u0004\u0008\u0008(\u0010\u0012\u0004\u0012\u00020\u00110\u0014j\u0002`\u0017H\u0016\u00a2\u0006\u0004\u0008F\u0010GJ\u000f\u0010H\u001a\u00020\u001fH\u0002\u00a2\u0006\u0004\u0008H\u0010IJ8\u0010J\u001a\u00020\r2\'\u0010\u000e\u001a#\u0012\u0015\u0012\u0013\u0018\u00010\u000f\u00a2\u0006\u000c\u0008\u0015\u0012\u0008\u0008\u0016\u0012\u0004\u0008\u0008(\u0010\u0012\u0004\u0012\u00020\u00110\u0014j\u0002`\u0017H\u0002\u00a2\u0006\u0004\u0008J\u0010KJB\u0010L\u001a\u00020\u00112\'\u0010\u000e\u001a#\u0012\u0015\u0012\u0013\u0018\u00010\u000f\u00a2\u0006\u000c\u0008\u0015\u0012\u0008\u0008\u0016\u0012\u0004\u0008\u0008(\u0010\u0012\u0004\u0012\u00020\u00110\u0014j\u0002`\u00172\u0008\u00105\u001a\u0004\u0018\u00010\u0008H\u0002\u00a2\u0006\u0004\u0008L\u0010MJ\u000f\u0010O\u001a\u00020NH\u0014\u00a2\u0006\u0004\u0008O\u0010PJ\u0017\u0010S\u001a\u00020\u00112\u0006\u0010\u0010\u001a\u00020\u000fH\u0000\u00a2\u0006\u0004\u0008Q\u0010RJ\u000f\u0010T\u001a\u00020\u0011H\u0002\u00a2\u0006\u0004\u0008T\u0010+J\u000f\u0010U\u001a\u00020\u001fH\u0001\u00a2\u0006\u0004\u0008U\u0010IJ<\u0010W\u001a\u00020\u00112\u0006\u0010V\u001a\u00028\u00002#\u0010\u001d\u001a\u001f\u0012\u0013\u0012\u00110\u000f\u00a2\u0006\u000c\u0008\u0015\u0012\u0008\u0008\u0016\u0012\u0004\u0008\u0008(\u0010\u0012\u0004\u0012\u00020\u0011\u0018\u00010\u0014H\u0016\u00a2\u0006\u0004\u0008W\u0010XJH\u0010Y\u001a\u00020\u00112\u0008\u0010\t\u001a\u0004\u0018\u00010\u00082\u0006\u0010\u0005\u001a\u00020\u00042%\u0008\u0002\u0010\u001d\u001a\u001f\u0012\u0013\u0012\u00110\u000f\u00a2\u0006\u000c\u0008\u0015\u0012\u0008\u0008\u0016\u0012\u0004\u0008\u0008(\u0010\u0012\u0004\u0012\u00020\u0011\u0018\u00010\u0014H\u0002\u00a2\u0006\u0004\u0008Y\u0010ZJ \u0010]\u001a\u00020\u00112\u000c\u0010\\\u001a\u0008\u0012\u0004\u0012\u00028\u00000[H\u0016\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008]\u0010)JZ\u0010`\u001a\u0004\u0018\u00010\u00082\u0006\u00105\u001a\u00020^2\u0008\u0010\t\u001a\u0004\u0018\u00010\u00082\u0006\u0010\u0005\u001a\u00020\u00042#\u0010\u001d\u001a\u001f\u0012\u0013\u0012\u00110\u000f\u00a2\u0006\u000c\u0008\u0015\u0012\u0008\u0008\u0016\u0012\u0004\u0008\u0008(\u0010\u0012\u0004\u0012\u00020\u0011\u0018\u00010\u00142\u0008\u0010_\u001a\u0004\u0018\u00010\u0008H\u0002\u00a2\u0006\u0004\u0008`\u0010aJ\u0011\u0010c\u001a\u0004\u0018\u00010\u0008H\u0010\u00a2\u0006\u0004\u0008b\u0010:J\u000f\u0010d\u001a\u00020NH\u0016\u00a2\u0006\u0004\u0008d\u0010PJ\u000f\u0010e\u001a\u00020\u001fH\u0002\u00a2\u0006\u0004\u0008e\u0010IJ#\u0010e\u001a\u0004\u0018\u00010\u00082\u0006\u0010V\u001a\u00028\u00002\u0008\u0010_\u001a\u0004\u0018\u00010\u0008H\u0016\u00a2\u0006\u0004\u0008e\u0010fJH\u0010e\u001a\u0004\u0018\u00010\u00082\u0006\u0010V\u001a\u00028\u00002\u0008\u0010_\u001a\u0004\u0018\u00010\u00082#\u0010\u001d\u001a\u001f\u0012\u0013\u0012\u00110\u000f\u00a2\u0006\u000c\u0008\u0015\u0012\u0008\u0008\u0016\u0012\u0004\u0008\u0008(\u0010\u0012\u0004\u0012\u00020\u0011\u0018\u00010\u0014H\u0016\u00a2\u0006\u0004\u0008e\u0010gJJ\u0010i\u001a\u0004\u0018\u00010h2\u0008\u0010\t\u001a\u0004\u0018\u00010\u00082\u0008\u0010_\u001a\u0004\u0018\u00010\u00082#\u0010\u001d\u001a\u001f\u0012\u0013\u0012\u00110\u000f\u00a2\u0006\u000c\u0008\u0015\u0012\u0008\u0008\u0016\u0012\u0004\u0008\u0008(\u0010\u0012\u0004\u0012\u00020\u0011\u0018\u00010\u0014H\u0002\u00a2\u0006\u0004\u0008i\u0010jJ\u0019\u0010l\u001a\u0004\u0018\u00010\u00082\u0006\u0010k\u001a\u00020\u000fH\u0016\u00a2\u0006\u0004\u0008l\u0010mJ\u000f\u0010n\u001a\u00020\u001fH\u0002\u00a2\u0006\u0004\u0008n\u0010IJ\u001b\u0010p\u001a\u00020\u0011*\u00020o2\u0006\u0010V\u001a\u00028\u0000H\u0016\u00a2\u0006\u0004\u0008p\u0010qJ\u001b\u0010r\u001a\u00020\u0011*\u00020o2\u0006\u0010k\u001a\u00020\u000fH\u0016\u00a2\u0006\u0004\u0008r\u0010sR\u001c\u0010x\u001a\n\u0018\u00010tj\u0004\u0018\u0001`u8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008v\u0010wR\u001a\u0010z\u001a\u00020y8\u0016X\u0096\u0004\u00a2\u0006\u000c\n\u0004\u0008z\u0010{\u001a\u0004\u0008|\u0010}R!\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u00028\u0000X\u0080\u0004\u00a2\u0006\r\n\u0004\u0008\u0003\u0010~\u001a\u0005\u0008\u007f\u0010\u0080\u0001R\u0016\u0010\u0081\u0001\u001a\u00020\u001f8VX\u0096\u0004\u00a2\u0006\u0007\u001a\u0005\u0008\u0081\u0001\u0010IR\u0016\u0010\u0082\u0001\u001a\u00020\u001f8VX\u0096\u0004\u00a2\u0006\u0007\u001a\u0005\u0008\u0082\u0001\u0010IR\u0016\u0010\u0083\u0001\u001a\u00020\u001f8VX\u0096\u0004\u00a2\u0006\u0007\u001a\u0005\u0008\u0083\u0001\u0010IR\u001b\u0010\u0084\u0001\u001a\u0004\u0018\u00010C8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u0084\u0001\u0010\u0085\u0001R\u0017\u00105\u001a\u0004\u0018\u00010\u00088@X\u0080\u0004\u00a2\u0006\u0007\u001a\u0005\u0008\u0086\u0001\u0010:R\u0016\u0010\u0088\u0001\u001a\u00020N8BX\u0082\u0004\u00a2\u0006\u0007\u001a\u0005\u0008\u0087\u0001\u0010P\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006\u0089\u0001"
    }
    d2 = {
        "Lkotlinx/coroutines/CancellableContinuationImpl;",
        "T",
        "Lkotlin/coroutines/Continuation;",
        "delegate",
        "",
        "resumeMode",
        "<init>",
        "(Lkotlin/coroutines/Continuation;I)V",
        "",
        "proposedUpdate",
        "",
        "alreadyResumedError",
        "(Ljava/lang/Object;)Ljava/lang/Void;",
        "Lkotlinx/coroutines/CancelHandler;",
        "handler",
        "",
        "cause",
        "",
        "callCancelHandler",
        "(Lkotlinx/coroutines/CancelHandler;Ljava/lang/Throwable;)V",
        "Lkotlin/Function1;",
        "Lkotlin/ParameterName;",
        "name",
        "Lkotlinx/coroutines/CompletionHandler;",
        "(Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)V",
        "Lkotlin/Function0;",
        "block",
        "callCancelHandlerSafely",
        "(Lkotlin/jvm/functions/Function0;)V",
        "onCancellation",
        "callOnCancellation",
        "",
        "cancel",
        "(Ljava/lang/Throwable;)Z",
        "takenState",
        "cancelCompletedResult$kotlinx_coroutines_core",
        "(Ljava/lang/Object;Ljava/lang/Throwable;)V",
        "cancelCompletedResult",
        "cancelLater",
        "token",
        "completeResume",
        "(Ljava/lang/Object;)V",
        "detachChild$kotlinx_coroutines_core",
        "()V",
        "detachChild",
        "detachChildIfNonResuable",
        "mode",
        "dispatchResume",
        "(I)V",
        "Lkotlinx/coroutines/Job;",
        "parent",
        "getContinuationCancellationCause",
        "(Lkotlinx/coroutines/Job;)Ljava/lang/Throwable;",
        "state",
        "getExceptionalResult$kotlinx_coroutines_core",
        "(Ljava/lang/Object;)Ljava/lang/Throwable;",
        "getExceptionalResult",
        "getResult",
        "()Ljava/lang/Object;",
        "Ljava/lang/StackTraceElement;",
        "Lkotlinx/coroutines/internal/StackTraceElement;",
        "getStackTraceElement",
        "()Ljava/lang/StackTraceElement;",
        "getSuccessfulResult$kotlinx_coroutines_core",
        "(Ljava/lang/Object;)Ljava/lang/Object;",
        "getSuccessfulResult",
        "initCancellability",
        "Lkotlinx/coroutines/DisposableHandle;",
        "installParentHandle",
        "()Lkotlinx/coroutines/DisposableHandle;",
        "invokeOnCancellation",
        "(Lkotlin/jvm/functions/Function1;)V",
        "isReusable",
        "()Z",
        "makeCancelHandler",
        "(Lkotlin/jvm/functions/Function1;)Lkotlinx/coroutines/CancelHandler;",
        "multipleHandlersError",
        "(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V",
        "",
        "nameString",
        "()Ljava/lang/String;",
        "parentCancelled$kotlinx_coroutines_core",
        "(Ljava/lang/Throwable;)V",
        "parentCancelled",
        "releaseClaimedReusableContinuation",
        "resetStateReusable",
        "value",
        "resume",
        "(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)V",
        "resumeImpl",
        "(Ljava/lang/Object;ILkotlin/jvm/functions/Function1;)V",
        "Lkotlin/Result;",
        "result",
        "resumeWith",
        "Lkotlinx/coroutines/NotCompleted;",
        "idempotent",
        "resumedState",
        "(Lkotlinx/coroutines/NotCompleted;Ljava/lang/Object;ILkotlin/jvm/functions/Function1;Ljava/lang/Object;)Ljava/lang/Object;",
        "takeState$kotlinx_coroutines_core",
        "takeState",
        "toString",
        "tryResume",
        "(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;",
        "(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;",
        "Lkotlinx/coroutines/internal/Symbol;",
        "tryResumeImpl",
        "(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Lkotlinx/coroutines/internal/Symbol;",
        "exception",
        "tryResumeWithException",
        "(Ljava/lang/Throwable;)Ljava/lang/Object;",
        "trySuspend",
        "Lkotlinx/coroutines/CoroutineDispatcher;",
        "resumeUndispatched",
        "(Lkotlinx/coroutines/CoroutineDispatcher;Ljava/lang/Object;)V",
        "resumeUndispatchedWithException",
        "(Lkotlinx/coroutines/CoroutineDispatcher;Ljava/lang/Throwable;)V",
        "Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;",
        "Lkotlinx/coroutines/internal/CoroutineStackFrame;",
        "getCallerFrame",
        "()Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;",
        "callerFrame",
        "Lkotlin/coroutines/CoroutineContext;",
        "context",
        "Lkotlin/coroutines/CoroutineContext;",
        "getContext",
        "()Lkotlin/coroutines/CoroutineContext;",
        "Lkotlin/coroutines/Continuation;",
        "getDelegate$kotlinx_coroutines_core",
        "()Lkotlin/coroutines/Continuation;",
        "isActive",
        "isCancelled",
        "isCompleted",
        "parentHandle",
        "Lkotlinx/coroutines/DisposableHandle;",
        "getState$kotlinx_coroutines_core",
        "getStateDebugRepresentation",
        "stateDebugRepresentation",
        "kotlinx-coroutines-core",
        "Lkotlinx/coroutines/DispatchedTask;",
        "Lkotlinx/coroutines/CancellableContinuation;"
    }
    k = 0x1
    mv = {
        0x1,
        0x6,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field private static final synthetic _decision$FU:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

.field private static final synthetic _state$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;


# instance fields
.field private volatile synthetic _decision:I

.field private volatile synthetic _state:Ljava/lang/Object;

.field private final context:Lkotlin/coroutines/CoroutineContext;

.field private final delegate:Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/coroutines/Continuation<",
            "TT;>;"
        }
    .end annotation
.end field

.field private parentHandle:Lkotlinx/coroutines/DisposableHandle;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-class v0, Lkotlinx/coroutines/CancellableContinuationImpl;

    const-string v1, "_decision"

    invoke-static {v0, v1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v1

    sput-object v1, Lkotlinx/coroutines/CancellableContinuationImpl;->_decision$FU:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    const-class v1, Ljava/lang/Object;

    const-string v2, "_state"

    invoke-static {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    sput-object v0, Lkotlinx/coroutines/CancellableContinuationImpl;->_state$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    return-void
.end method

.method public constructor <init>(Lkotlin/coroutines/Continuation;I)V
    .locals 3
    .param p1, "delegate"    # Lkotlin/coroutines/Continuation;
    .param p2, "resumeMode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-TT;>;I)V"
        }
    .end annotation

    .line 29
    invoke-direct {p0, p2}, Lkotlinx/coroutines/DispatchedTask;-><init>(I)V

    .line 27
    iput-object p1, p0, Lkotlinx/coroutines/CancellableContinuationImpl;->delegate:Lkotlin/coroutines/Continuation;

    .line 30
    nop

    .line 31
    invoke-static {}, Lkotlinx/coroutines/DebugKt;->getASSERTIONS_ENABLED()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 594
    const/4 v0, 0x0

    .line 31
    .local v0, "$i$a$-assert-CancellableContinuationImpl$1":I
    const/4 v2, -0x1

    if-eq p2, v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .end local v0    # "$i$a$-assert-CancellableContinuationImpl$1":I
    :goto_0
    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 32
    :cond_2
    :goto_1
    nop

    .line 34
    invoke-interface {p1}, Lkotlin/coroutines/Continuation;->getContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object v0

    iput-object v0, p0, Lkotlinx/coroutines/CancellableContinuationImpl;->context:Lkotlin/coroutines/CoroutineContext;

    .line 62
    iput v1, p0, Lkotlinx/coroutines/CancellableContinuationImpl;->_decision:I

    .line 73
    sget-object v0, Lkotlinx/coroutines/Active;->INSTANCE:Lkotlinx/coroutines/Active;

    iput-object v0, p0, Lkotlinx/coroutines/CancellableContinuationImpl;->_state:Ljava/lang/Object;

    .line 26
    return-void
.end method

.method private final alreadyResumedError(Ljava/lang/Object;)Ljava/lang/Void;
    .locals 2
    .param p1, "proposedUpdate"    # Ljava/lang/Object;

    new-instance v0, Ljava/lang/IllegalStateException;

    .line 482
    const-string v1, "Already resumed, but proposed with update "

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private final callCancelHandler(Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)V
    .locals 6
    .param p1, "handler"    # Lkotlin/jvm/functions/Function1;
    .param p2, "cause"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Throwable;",
            "Lkotlin/Unit;",
            ">;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .line 212
    move-object v0, p0

    .local v0, "this_$iv":Lkotlinx/coroutines/CancellableContinuationImpl;
    const/4 v1, 0x0

    .line 599
    .local v1, "$i$f$callCancelHandlerSafely":I
    nop

    .line 600
    const/4 v2, 0x0

    .line 212
    .local v2, "$i$a$-callCancelHandlerSafely-CancellableContinuationImpl$callCancelHandler$1":I
    move-object v3, p1

    .local v3, "$this$invokeIt$iv":Lkotlin/jvm/functions/Function1;
    const/4 v4, 0x0

    .line 601
    .local v4, "$i$f$invokeIt":I
    :try_start_0
    invoke-interface {v3, p2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 212
    nop

    .end local v2    # "$i$a$-callCancelHandlerSafely-CancellableContinuationImpl$callCancelHandler$1":I
    .end local v3    # "$this$invokeIt$iv":Lkotlin/jvm/functions/Function1;
    .end local v4    # "$i$f$invokeIt":I
    goto :goto_0

    .line 602
    :catchall_0
    move-exception v2

    .line 605
    .local v2, "ex$iv":Ljava/lang/Throwable;
    invoke-virtual {v0}, Lkotlinx/coroutines/CancellableContinuationImpl;->getContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object v3

    .line 606
    new-instance v4, Lkotlinx/coroutines/CompletionHandlerException;

    const-string v5, "Exception in invokeOnCancellation handler for "

    invoke-static {v5, v0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v2}, Lkotlinx/coroutines/CompletionHandlerException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    check-cast v4, Ljava/lang/Throwable;

    .line 604
    invoke-static {v3, v4}, Lkotlinx/coroutines/CoroutineExceptionHandlerKt;->handleCoroutineException(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Throwable;)V

    .line 609
    .end local v2    # "ex$iv":Ljava/lang/Throwable;
    :goto_0
    nop

    .line 212
    .end local v0    # "this_$iv":Lkotlinx/coroutines/CancellableContinuationImpl;
    .end local v1    # "$i$f$callCancelHandlerSafely":I
    return-void
.end method

.method private final callCancelHandlerSafely(Lkotlin/jvm/functions/Function0;)V
    .locals 5
    .param p1, "block"    # Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 196
    .local v0, "$i$f$callCancelHandlerSafely":I
    nop

    .line 197
    :try_start_0
    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 198
    :catchall_0
    move-exception v1

    .line 201
    .local v1, "ex":Ljava/lang/Throwable;
    invoke-virtual {p0}, Lkotlinx/coroutines/CancellableContinuationImpl;->getContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object v2

    .line 202
    new-instance v3, Lkotlinx/coroutines/CompletionHandlerException;

    const-string v4, "Exception in invokeOnCancellation handler for "

    invoke-static {v4, p0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v1}, Lkotlinx/coroutines/CompletionHandlerException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    check-cast v3, Ljava/lang/Throwable;

    .line 200
    invoke-static {v2, v3}, Lkotlinx/coroutines/CoroutineExceptionHandlerKt;->handleCoroutineException(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Throwable;)V

    .line 205
    .end local v1    # "ex":Ljava/lang/Throwable;
    :goto_0
    return-void
.end method

.method private final cancelLater(Ljava/lang/Throwable;)Z
    .locals 2
    .param p1, "cause"    # Ljava/lang/Throwable;

    .line 168
    invoke-direct {p0}, Lkotlinx/coroutines/CancellableContinuationImpl;->isReusable()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 169
    :cond_0
    iget-object v0, p0, Lkotlinx/coroutines/CancellableContinuationImpl;->delegate:Lkotlin/coroutines/Continuation;

    check-cast v0, Lkotlinx/coroutines/internal/DispatchedContinuation;

    .line 170
    .local v0, "dispatched":Lkotlinx/coroutines/internal/DispatchedContinuation;
    invoke-virtual {v0, p1}, Lkotlinx/coroutines/internal/DispatchedContinuation;->postponeCancellation(Ljava/lang/Throwable;)Z

    move-result v1

    return v1
.end method

.method private final detachChildIfNonResuable()V
    .locals 1

    .line 488
    invoke-direct {p0}, Lkotlinx/coroutines/CancellableContinuationImpl;->isReusable()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lkotlinx/coroutines/CancellableContinuationImpl;->detachChild$kotlinx_coroutines_core()V

    .line 489
    :cond_0
    return-void
.end method

.method private final dispatchResume(I)V
    .locals 1
    .param p1, "mode"    # I

    .line 395
    invoke-direct {p0}, Lkotlinx/coroutines/CancellableContinuationImpl;->tryResume()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 397
    :cond_0
    move-object v0, p0

    check-cast v0, Lkotlinx/coroutines/DispatchedTask;

    invoke-static {v0, p1}, Lkotlinx/coroutines/DispatchedTaskKt;->dispatch(Lkotlinx/coroutines/DispatchedTask;I)V

    .line 398
    return-void
.end method

.method private final getStateDebugRepresentation()Ljava/lang/String;
    .locals 2

    .line 86
    invoke-virtual {p0}, Lkotlinx/coroutines/CancellableContinuationImpl;->getState$kotlinx_coroutines_core()Ljava/lang/Object;

    move-result-object v0

    .line 87
    instance-of v1, v0, Lkotlinx/coroutines/NotCompleted;

    if-eqz v1, :cond_0

    const-string v0, "Active"

    goto :goto_0

    .line 88
    :cond_0
    instance-of v0, v0, Lkotlinx/coroutines/CancelledContinuation;

    if-eqz v0, :cond_1

    const-string v0, "Cancelled"

    goto :goto_0

    .line 89
    :cond_1
    const-string v0, "Completed"

    .line 90
    :goto_0
    return-object v0
.end method

.method private final installParentHandle()Lkotlinx/coroutines/DisposableHandle;
    .locals 7

    .line 306
    invoke-virtual {p0}, Lkotlinx/coroutines/CancellableContinuationImpl;->getContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object v0

    sget-object v1, Lkotlinx/coroutines/Job;->Key:Lkotlinx/coroutines/Job$Key;

    check-cast v1, Lkotlin/coroutines/CoroutineContext$Key;

    invoke-interface {v0, v1}, Lkotlin/coroutines/CoroutineContext;->get(Lkotlin/coroutines/CoroutineContext$Key;)Lkotlin/coroutines/CoroutineContext$Element;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lkotlinx/coroutines/Job;

    if-nez v1, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 308
    .local v1, "parent":Lkotlinx/coroutines/Job;
    :cond_0
    nop

    .line 309
    const/4 v2, 0x1

    .line 308
    const/4 v3, 0x0

    .line 310
    new-instance v0, Lkotlinx/coroutines/ChildContinuation;

    invoke-direct {v0, p0}, Lkotlinx/coroutines/ChildContinuation;-><init>(Lkotlinx/coroutines/CancellableContinuationImpl;)V

    check-cast v0, Lkotlinx/coroutines/CompletionHandlerBase;

    .local v0, "$this$asHandler$iv":Lkotlinx/coroutines/CompletionHandlerBase;
    const/4 v4, 0x0

    .line 628
    .local v4, "$i$f$getAsHandler":I
    move-object v4, v0

    check-cast v4, Lkotlin/jvm/functions/Function1;

    .line 308
    .end local v0    # "$this$asHandler$iv":Lkotlinx/coroutines/CompletionHandlerBase;
    .end local v4    # "$i$f$getAsHandler":I
    const/4 v5, 0x2

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/Job$DefaultImpls;->invokeOnCompletion$default(Lkotlinx/coroutines/Job;ZZLkotlin/jvm/functions/Function1;ILjava/lang/Object;)Lkotlinx/coroutines/DisposableHandle;

    move-result-object v0

    .line 312
    .local v0, "handle":Lkotlinx/coroutines/DisposableHandle;
    iput-object v0, p0, Lkotlinx/coroutines/CancellableContinuationImpl;->parentHandle:Lkotlinx/coroutines/DisposableHandle;

    .line 313
    return-object v0
.end method

.method private final isReusable()Z
    .locals 1

    .line 110
    iget v0, p0, Lkotlinx/coroutines/CancellableContinuationImpl;->resumeMode:I

    invoke-static {v0}, Lkotlinx/coroutines/DispatchedTaskKt;->isReusableMode(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lkotlinx/coroutines/CancellableContinuationImpl;->delegate:Lkotlin/coroutines/Continuation;

    check-cast v0, Lkotlinx/coroutines/internal/DispatchedContinuation;

    invoke-virtual {v0}, Lkotlinx/coroutines/internal/DispatchedContinuation;->isReusable()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private final makeCancelHandler(Lkotlin/jvm/functions/Function1;)Lkotlinx/coroutines/CancelHandler;
    .locals 1
    .param p1, "handler"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Throwable;",
            "Lkotlin/Unit;",
            ">;)",
            "Lkotlinx/coroutines/CancelHandler;"
        }
    .end annotation

    .line 392
    instance-of v0, p1, Lkotlinx/coroutines/CancelHandler;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lkotlinx/coroutines/CancelHandler;

    goto :goto_0

    :cond_0
    new-instance v0, Lkotlinx/coroutines/InvokeOnCancel;

    invoke-direct {v0, p1}, Lkotlinx/coroutines/InvokeOnCancel;-><init>(Lkotlin/jvm/functions/Function1;)V

    check-cast v0, Lkotlinx/coroutines/CancelHandler;

    :goto_0
    return-object v0
.end method

.method private final multipleHandlersError(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V
    .locals 3
    .param p1, "handler"    # Lkotlin/jvm/functions/Function1;
    .param p2, "state"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Throwable;",
            "Lkotlin/Unit;",
            ">;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    new-instance v0, Ljava/lang/IllegalStateException;

    .line 388
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "It\'s prohibited to register multiple handlers, tried to register "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", already has "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private final releaseClaimedReusableContinuation()V
    .locals 3

    .line 322
    iget-object v0, p0, Lkotlinx/coroutines/CancellableContinuationImpl;->delegate:Lkotlin/coroutines/Continuation;

    instance-of v1, v0, Lkotlinx/coroutines/internal/DispatchedContinuation;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    check-cast v0, Lkotlinx/coroutines/internal/DispatchedContinuation;

    goto :goto_0

    :cond_0
    move-object v0, v2

    :goto_0
    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    move-object v1, p0

    check-cast v1, Lkotlinx/coroutines/CancellableContinuation;

    invoke-virtual {v0, v1}, Lkotlinx/coroutines/internal/DispatchedContinuation;->tryReleaseClaimedContinuation(Lkotlinx/coroutines/CancellableContinuation;)Ljava/lang/Throwable;

    move-result-object v2

    :goto_1
    if-nez v2, :cond_2

    return-void

    :cond_2
    move-object v0, v2

    .line 323
    .local v0, "cancellationCause":Ljava/lang/Throwable;
    invoke-virtual {p0}, Lkotlinx/coroutines/CancellableContinuationImpl;->detachChild$kotlinx_coroutines_core()V

    .line 324
    invoke-virtual {p0, v0}, Lkotlinx/coroutines/CancellableContinuationImpl;->cancel(Ljava/lang/Throwable;)Z

    .line 325
    return-void
.end method

.method private final resumeImpl(Ljava/lang/Object;ILkotlin/jvm/functions/Function1;)V
    .locals 11
    .param p1, "proposedUpdate"    # Ljava/lang/Object;
    .param p2, "resumeMode"    # I
    .param p3, "onCancellation"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "I",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Throwable;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 425
    move-object v0, p0

    .local v0, "$this$loop$iv":Lkotlinx/coroutines/CancellableContinuationImpl;
    const/4 v1, 0x0

    .line 631
    .local v1, "$i$f$loop":I
    :goto_0
    nop

    .line 632
    iget-object v2, v0, Lkotlinx/coroutines/CancellableContinuationImpl;->_state:Ljava/lang/Object;

    .local v2, "state":Ljava/lang/Object;
    const/4 v3, 0x0

    .line 426
    .local v3, "$i$a$-loop-CancellableContinuationImpl$resumeImpl$1":I
    nop

    .line 427
    instance-of v4, v2, Lkotlinx/coroutines/NotCompleted;

    if-eqz v4, :cond_1

    .line 428
    move-object v6, v2

    check-cast v6, Lkotlinx/coroutines/NotCompleted;

    const/4 v10, 0x0

    move-object v5, p0

    move-object v7, p1

    move v8, p2

    move-object v9, p3

    invoke-direct/range {v5 .. v10}, Lkotlinx/coroutines/CancellableContinuationImpl;->resumedState(Lkotlinx/coroutines/NotCompleted;Ljava/lang/Object;ILkotlin/jvm/functions/Function1;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 429
    .local v4, "update":Ljava/lang/Object;
    sget-object v5, Lkotlinx/coroutines/CancellableContinuationImpl;->_state$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-static {v5, p0, v2, v4}, Landroidx/concurrent/futures/AbstractResolvableFuture$SafeAtomicHelper$$ExternalSyntheticBackportWithForwarding0;->m(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 631
    .end local v2    # "state":Ljava/lang/Object;
    .end local v3    # "$i$a$-loop-CancellableContinuationImpl$resumeImpl$1":I
    .end local v4    # "update":Ljava/lang/Object;
    goto :goto_0

    .line 430
    .restart local v2    # "state":Ljava/lang/Object;
    .restart local v3    # "$i$a$-loop-CancellableContinuationImpl$resumeImpl$1":I
    .restart local v4    # "update":Ljava/lang/Object;
    :cond_0
    invoke-direct {p0}, Lkotlinx/coroutines/CancellableContinuationImpl;->detachChildIfNonResuable()V

    .line 431
    invoke-direct {p0, p2}, Lkotlinx/coroutines/CancellableContinuationImpl;->dispatchResume(I)V

    .line 432
    return-void

    .line 434
    .end local v4    # "update":Ljava/lang/Object;
    :cond_1
    instance-of v4, v2, Lkotlinx/coroutines/CancelledContinuation;

    if-eqz v4, :cond_3

    .line 440
    move-object v4, v2

    check-cast v4, Lkotlinx/coroutines/CancelledContinuation;

    invoke-virtual {v4}, Lkotlinx/coroutines/CancelledContinuation;->makeResumed()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 442
    if-nez p3, :cond_2

    goto :goto_1

    :cond_2
    move-object v4, p3

    .line 594
    .local v4, "it":Lkotlin/jvm/functions/Function1;
    const/4 v5, 0x0

    .line 442
    .local v5, "$i$a$-let-CancellableContinuationImpl$resumeImpl$1$1":I
    move-object v6, v2

    check-cast v6, Lkotlinx/coroutines/CancelledContinuation;

    iget-object v6, v6, Lkotlinx/coroutines/CancelledContinuation;->cause:Ljava/lang/Throwable;

    invoke-virtual {p0, v4, v6}, Lkotlinx/coroutines/CancellableContinuationImpl;->callOnCancellation(Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)V

    .line 443
    .end local v4    # "it":Lkotlin/jvm/functions/Function1;
    .end local v5    # "$i$a$-let-CancellableContinuationImpl$resumeImpl$1$1":I
    :goto_1
    return-void

    .line 447
    :cond_3
    invoke-direct {p0, p1}, Lkotlinx/coroutines/CancellableContinuationImpl;->alreadyResumedError(Ljava/lang/Object;)Ljava/lang/Void;

    new-instance v4, Lkotlin/KotlinNothingValueException;

    invoke-direct {v4}, Lkotlin/KotlinNothingValueException;-><init>()V

    goto :goto_3

    :goto_2
    throw v4

    :goto_3
    goto :goto_2
.end method

.method static synthetic resumeImpl$default(Lkotlinx/coroutines/CancellableContinuationImpl;Ljava/lang/Object;ILkotlin/jvm/functions/Function1;ILjava/lang/Object;)V
    .locals 0

    .line 420
    if-nez p5, :cond_1

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    .line 423
    const/4 p3, 0x0

    .line 420
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lkotlinx/coroutines/CancellableContinuationImpl;->resumeImpl(Ljava/lang/Object;ILkotlin/jvm/functions/Function1;)V

    return-void

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: resumeImpl"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private final resumedState(Lkotlinx/coroutines/NotCompleted;Ljava/lang/Object;ILkotlin/jvm/functions/Function1;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9
    .param p1, "state"    # Lkotlinx/coroutines/NotCompleted;
    .param p2, "proposedUpdate"    # Ljava/lang/Object;
    .param p3, "resumeMode"    # I
    .param p4, "onCancellation"    # Lkotlin/jvm/functions/Function1;
    .param p5, "idempotent"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/NotCompleted;",
            "Ljava/lang/Object;",
            "I",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Throwable;",
            "Lkotlin/Unit;",
            ">;",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 406
    nop

    .line 407
    instance-of v0, p2, Lkotlinx/coroutines/CompletedExceptionally;

    if-eqz v0, :cond_6

    .line 408
    invoke-static {}, Lkotlinx/coroutines/DebugKt;->getASSERTIONS_ENABLED()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 594
    const/4 v0, 0x0

    .line 408
    .local v0, "$i$a$-assert-CancellableContinuationImpl$resumedState$1":I
    if-nez p5, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .end local v0    # "$i$a$-assert-CancellableContinuationImpl$resumedState$1":I
    :goto_0
    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 409
    :cond_2
    :goto_1
    invoke-static {}, Lkotlinx/coroutines/DebugKt;->getASSERTIONS_ENABLED()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 594
    const/4 v0, 0x0

    .line 409
    .local v0, "$i$a$-assert-CancellableContinuationImpl$resumedState$2":I
    if-nez p4, :cond_3

    goto :goto_2

    :cond_3
    const/4 v1, 0x0

    .end local v0    # "$i$a$-assert-CancellableContinuationImpl$resumedState$2":I
    :goto_2
    if-eqz v1, :cond_4

    goto :goto_3

    :cond_4
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 410
    :cond_5
    :goto_3
    goto :goto_4

    .line 412
    :cond_6
    invoke-static {p3}, Lkotlinx/coroutines/DispatchedTaskKt;->isCancellableMode(I)Z

    move-result v0

    if-nez v0, :cond_7

    if-nez p5, :cond_7

    goto :goto_4

    .line 413
    :cond_7
    if-nez p4, :cond_a

    instance-of v0, p1, Lkotlinx/coroutines/CancelHandler;

    if-eqz v0, :cond_8

    instance-of v0, p1, Lkotlinx/coroutines/BeforeResumeCancelHandler;

    if-eqz v0, :cond_a

    :cond_8
    if-eqz p5, :cond_9

    goto :goto_5

    .line 417
    :cond_9
    nop

    .line 418
    :goto_4
    move-object v0, p2

    goto :goto_7

    .line 416
    :cond_a
    :goto_5
    new-instance v0, Lkotlinx/coroutines/CompletedContinuation;

    instance-of v1, p1, Lkotlinx/coroutines/CancelHandler;

    if-eqz v1, :cond_b

    move-object v1, p1

    check-cast v1, Lkotlinx/coroutines/CancelHandler;

    goto :goto_6

    :cond_b
    const/4 v1, 0x0

    :goto_6
    move-object v3, v1

    const/4 v6, 0x0

    const/16 v7, 0x10

    const/4 v8, 0x0

    move-object v1, v0

    move-object v2, p2

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v1 .. v8}, Lkotlinx/coroutines/CompletedContinuation;-><init>(Ljava/lang/Object;Lkotlinx/coroutines/CancelHandler;Lkotlin/jvm/functions/Function1;Ljava/lang/Object;Ljava/lang/Throwable;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 418
    :goto_7
    return-object v0
.end method

.method private final tryResume()Z
    .locals 7

    .line 246
    move-object v0, p0

    .local v0, "$this$loop$iv":Lkotlinx/coroutines/CancellableContinuationImpl;
    const/4 v1, 0x0

    .line 622
    .local v1, "$i$f$loop":I
    :goto_0
    nop

    .line 623
    iget v2, v0, Lkotlinx/coroutines/CancellableContinuationImpl;->_decision:I

    .local v2, "decision":I
    const/4 v3, 0x0

    .line 247
    .local v3, "$i$a$-loop-CancellableContinuationImpl$tryResume$1":I
    const/4 v4, 0x0

    packed-switch v2, :pswitch_data_0

    .line 249
    new-instance v4, Ljava/lang/IllegalStateException;

    .line 250
    const-string v5, "Already resumed"

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 249
    :pswitch_0
    return v4

    .line 248
    :pswitch_1
    sget-object v5, Lkotlinx/coroutines/CancellableContinuationImpl;->_decision$FU:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    const/4 v6, 0x2

    invoke-virtual {v5, p0, v4, v6}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x1

    return v4

    .line 252
    :cond_0
    nop

    .line 622
    .end local v2    # "decision":I
    .end local v3    # "$i$a$-loop-CancellableContinuationImpl$tryResume$1":I
    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private final tryResumeImpl(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Lkotlinx/coroutines/internal/Symbol;
    .locals 11
    .param p1, "proposedUpdate"    # Ljava/lang/Object;
    .param p2, "idempotent"    # Ljava/lang/Object;
    .param p3, "onCancellation"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Throwable;",
            "Lkotlin/Unit;",
            ">;)",
            "Lkotlinx/coroutines/internal/Symbol;"
        }
    .end annotation

    .line 460
    move-object v0, p0

    .local v0, "$this$loop$iv":Lkotlinx/coroutines/CancellableContinuationImpl;
    const/4 v1, 0x0

    .line 633
    .local v1, "$i$f$loop":I
    :goto_0
    nop

    .line 634
    iget-object v2, v0, Lkotlinx/coroutines/CancellableContinuationImpl;->_state:Ljava/lang/Object;

    .local v2, "state":Ljava/lang/Object;
    const/4 v3, 0x0

    .line 461
    .local v3, "$i$a$-loop-CancellableContinuationImpl$tryResumeImpl$1":I
    nop

    .line 462
    instance-of v4, v2, Lkotlinx/coroutines/NotCompleted;

    if-eqz v4, :cond_1

    .line 463
    move-object v6, v2

    check-cast v6, Lkotlinx/coroutines/NotCompleted;

    iget v8, p0, Lkotlinx/coroutines/CancellableContinuationImpl;->resumeMode:I

    move-object v5, p0

    move-object v7, p1

    move-object v9, p3

    move-object v10, p2

    invoke-direct/range {v5 .. v10}, Lkotlinx/coroutines/CancellableContinuationImpl;->resumedState(Lkotlinx/coroutines/NotCompleted;Ljava/lang/Object;ILkotlin/jvm/functions/Function1;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 464
    .local v4, "update":Ljava/lang/Object;
    sget-object v5, Lkotlinx/coroutines/CancellableContinuationImpl;->_state$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-static {v5, p0, v2, v4}, Landroidx/concurrent/futures/AbstractResolvableFuture$SafeAtomicHelper$$ExternalSyntheticBackportWithForwarding0;->m(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 633
    .end local v2    # "state":Ljava/lang/Object;
    .end local v3    # "$i$a$-loop-CancellableContinuationImpl$tryResumeImpl$1":I
    .end local v4    # "update":Ljava/lang/Object;
    goto :goto_0

    .line 465
    .restart local v2    # "state":Ljava/lang/Object;
    .restart local v3    # "$i$a$-loop-CancellableContinuationImpl$tryResumeImpl$1":I
    .restart local v4    # "update":Ljava/lang/Object;
    :cond_0
    invoke-direct {p0}, Lkotlinx/coroutines/CancellableContinuationImpl;->detachChildIfNonResuable()V

    .line 466
    sget-object v5, Lkotlinx/coroutines/CancellableContinuationImplKt;->RESUME_TOKEN:Lkotlinx/coroutines/internal/Symbol;

    return-object v5

    .line 468
    .end local v4    # "update":Ljava/lang/Object;
    :cond_1
    instance-of v4, v2, Lkotlinx/coroutines/CompletedContinuation;

    const/4 v5, 0x0

    if-eqz v4, :cond_5

    .line 469
    if-eqz p2, :cond_4

    move-object v4, v2

    check-cast v4, Lkotlinx/coroutines/CompletedContinuation;

    iget-object v4, v4, Lkotlinx/coroutines/CompletedContinuation;->idempotentResume:Ljava/lang/Object;

    if-ne v4, p2, :cond_4

    .line 470
    invoke-static {}, Lkotlinx/coroutines/DebugKt;->getASSERTIONS_ENABLED()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 594
    const/4 v4, 0x0

    .line 470
    .local v4, "$i$a$-assert-CancellableContinuationImpl$tryResumeImpl$1$1":I
    move-object v5, v2

    check-cast v5, Lkotlinx/coroutines/CompletedContinuation;

    iget-object v5, v5, Lkotlinx/coroutines/CompletedContinuation;->result:Ljava/lang/Object;

    invoke-static {v5, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    .end local v4    # "$i$a$-assert-CancellableContinuationImpl$tryResumeImpl$1$1":I
    if-eqz v4, :cond_2

    goto :goto_1

    :cond_2
    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    .line 471
    :cond_3
    :goto_1
    sget-object v5, Lkotlinx/coroutines/CancellableContinuationImplKt;->RESUME_TOKEN:Lkotlinx/coroutines/internal/Symbol;

    goto :goto_2

    .line 473
    :cond_4
    move-object v4, v5

    check-cast v4, Lkotlinx/coroutines/internal/Symbol;

    .line 469
    :goto_2
    return-object v5

    .line 476
    :cond_5
    return-object v5
.end method

.method private final trySuspend()Z
    .locals 7

    .line 236
    move-object v0, p0

    .local v0, "$this$loop$iv":Lkotlinx/coroutines/CancellableContinuationImpl;
    const/4 v1, 0x0

    .line 620
    .local v1, "$i$f$loop":I
    :goto_0
    nop

    .line 621
    iget v2, v0, Lkotlinx/coroutines/CancellableContinuationImpl;->_decision:I

    .local v2, "decision":I
    const/4 v3, 0x0

    .line 237
    .local v3, "$i$a$-loop-CancellableContinuationImpl$trySuspend$1":I
    const/4 v4, 0x0

    packed-switch v2, :pswitch_data_0

    .line 239
    :pswitch_0
    new-instance v4, Ljava/lang/IllegalStateException;

    .line 240
    const-string v5, "Already suspended"

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 239
    :pswitch_1
    return v4

    .line 238
    :pswitch_2
    sget-object v5, Lkotlinx/coroutines/CancellableContinuationImpl;->_decision$FU:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    const/4 v6, 0x1

    invoke-virtual {v5, p0, v4, v6}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_0

    return v6

    .line 242
    :cond_0
    nop

    .line 620
    .end local v2    # "decision":I
    .end local v3    # "$i$a$-loop-CancellableContinuationImpl$trySuspend$1":I
    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public final callCancelHandler(Lkotlinx/coroutines/CancelHandler;Ljava/lang/Throwable;)V
    .locals 6
    .param p1, "handler"    # Lkotlinx/coroutines/CancelHandler;
    .param p2, "cause"    # Ljava/lang/Throwable;

    .line 215
    move-object v0, p0

    .local v0, "this_$iv":Lkotlinx/coroutines/CancellableContinuationImpl;
    const/4 v1, 0x0

    .line 610
    .local v1, "$i$f$callCancelHandlerSafely":I
    nop

    .line 611
    const/4 v2, 0x0

    .line 215
    .local v2, "$i$a$-callCancelHandlerSafely-CancellableContinuationImpl$callCancelHandler$2":I
    :try_start_0
    invoke-virtual {p1, p2}, Lkotlinx/coroutines/CancelHandler;->invoke(Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v2    # "$i$a$-callCancelHandlerSafely-CancellableContinuationImpl$callCancelHandler$2":I
    goto :goto_0

    .line 612
    :catchall_0
    move-exception v2

    .line 615
    .local v2, "ex$iv":Ljava/lang/Throwable;
    invoke-virtual {v0}, Lkotlinx/coroutines/CancellableContinuationImpl;->getContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object v3

    .line 616
    new-instance v4, Lkotlinx/coroutines/CompletionHandlerException;

    const-string v5, "Exception in invokeOnCancellation handler for "

    invoke-static {v5, v0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v2}, Lkotlinx/coroutines/CompletionHandlerException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    check-cast v4, Ljava/lang/Throwable;

    .line 614
    invoke-static {v3, v4}, Lkotlinx/coroutines/CoroutineExceptionHandlerKt;->handleCoroutineException(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Throwable;)V

    .line 619
    .end local v2    # "ex$iv":Ljava/lang/Throwable;
    :goto_0
    nop

    .line 215
    .end local v0    # "this_$iv":Lkotlinx/coroutines/CancellableContinuationImpl;
    .end local v1    # "$i$f$callCancelHandlerSafely":I
    return-void
.end method

.method public final callOnCancellation(Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)V
    .locals 4
    .param p1, "onCancellation"    # Lkotlin/jvm/functions/Function1;
    .param p2, "cause"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Throwable;",
            "Lkotlin/Unit;",
            ">;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .line 218
    nop

    .line 219
    :try_start_0
    invoke-interface {p1, p2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 220
    :catchall_0
    move-exception v0

    .line 223
    .local v0, "ex":Ljava/lang/Throwable;
    invoke-virtual {p0}, Lkotlinx/coroutines/CancellableContinuationImpl;->getContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object v1

    .line 224
    new-instance v2, Lkotlinx/coroutines/CompletionHandlerException;

    const-string v3, "Exception in resume onCancellation handler for "

    invoke-static {v3, p0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Lkotlinx/coroutines/CompletionHandlerException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    check-cast v2, Ljava/lang/Throwable;

    .line 222
    invoke-static {v1, v2}, Lkotlinx/coroutines/CoroutineExceptionHandlerKt;->handleCoroutineException(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Throwable;)V

    .line 227
    .end local v0    # "ex":Ljava/lang/Throwable;
    :goto_0
    return-void
.end method

.method public cancel(Ljava/lang/Throwable;)Z
    .locals 7
    .param p1, "cause"    # Ljava/lang/Throwable;

    .line 174
    move-object v0, p0

    .local v0, "$this$loop$iv":Lkotlinx/coroutines/CancellableContinuationImpl;
    const/4 v1, 0x0

    .line 597
    .local v1, "$i$f$loop":I
    :goto_0
    nop

    .line 598
    iget-object v2, v0, Lkotlinx/coroutines/CancellableContinuationImpl;->_state:Ljava/lang/Object;

    .local v2, "state":Ljava/lang/Object;
    const/4 v3, 0x0

    .line 175
    .local v3, "$i$a$-loop-CancellableContinuationImpl$cancel$1":I
    instance-of v4, v2, Lkotlinx/coroutines/NotCompleted;

    if-nez v4, :cond_0

    const/4 v4, 0x0

    return v4

    .line 177
    :cond_0
    new-instance v4, Lkotlinx/coroutines/CancelledContinuation;

    move-object v5, p0

    check-cast v5, Lkotlin/coroutines/Continuation;

    instance-of v6, v2, Lkotlinx/coroutines/CancelHandler;

    invoke-direct {v4, v5, p1, v6}, Lkotlinx/coroutines/CancelledContinuation;-><init>(Lkotlin/coroutines/Continuation;Ljava/lang/Throwable;Z)V

    .line 178
    .local v4, "update":Lkotlinx/coroutines/CancelledContinuation;
    sget-object v5, Lkotlinx/coroutines/CancellableContinuationImpl;->_state$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-static {v5, p0, v2, v4}, Landroidx/concurrent/futures/AbstractResolvableFuture$SafeAtomicHelper$$ExternalSyntheticBackportWithForwarding0;->m(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 597
    .end local v2    # "state":Ljava/lang/Object;
    .end local v3    # "$i$a$-loop-CancellableContinuationImpl$cancel$1":I
    .end local v4    # "update":Lkotlinx/coroutines/CancelledContinuation;
    goto :goto_0

    .line 180
    .restart local v2    # "state":Ljava/lang/Object;
    .restart local v3    # "$i$a$-loop-CancellableContinuationImpl$cancel$1":I
    .restart local v4    # "update":Lkotlinx/coroutines/CancelledContinuation;
    :cond_1
    instance-of v5, v2, Lkotlinx/coroutines/CancelHandler;

    if-eqz v5, :cond_2

    move-object v5, v2

    check-cast v5, Lkotlinx/coroutines/CancelHandler;

    goto :goto_1

    :cond_2
    const/4 v5, 0x0

    :goto_1
    if-nez v5, :cond_3

    goto :goto_2

    .line 594
    .local v5, "it":Lkotlinx/coroutines/CancelHandler;
    :cond_3
    const/4 v6, 0x0

    .line 180
    .local v6, "$i$a$-let-CancellableContinuationImpl$cancel$1$1":I
    invoke-virtual {p0, v5, p1}, Lkotlinx/coroutines/CancellableContinuationImpl;->callCancelHandler(Lkotlinx/coroutines/CancelHandler;Ljava/lang/Throwable;)V

    .line 182
    .end local v5    # "it":Lkotlinx/coroutines/CancelHandler;
    .end local v6    # "$i$a$-let-CancellableContinuationImpl$cancel$1$1":I
    :goto_2
    invoke-direct {p0}, Lkotlinx/coroutines/CancellableContinuationImpl;->detachChildIfNonResuable()V

    .line 183
    iget v5, p0, Lkotlinx/coroutines/CancellableContinuationImpl;->resumeMode:I

    invoke-direct {p0, v5}, Lkotlinx/coroutines/CancellableContinuationImpl;->dispatchResume(I)V

    .line 184
    const/4 v5, 0x1

    return v5
.end method

.method public cancelCompletedResult$kotlinx_coroutines_core(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 21
    .param p1, "takenState"    # Ljava/lang/Object;
    .param p2, "cause"    # Ljava/lang/Throwable;

    .line 141
    move-object/from16 v0, p0

    move-object/from16 v1, p0

    .local v1, "$this$loop$iv":Lkotlinx/coroutines/CancellableContinuationImpl;
    const/4 v2, 0x0

    .line 595
    .local v2, "$i$f$loop":I
    :goto_0
    nop

    .line 596
    iget-object v11, v1, Lkotlinx/coroutines/CancellableContinuationImpl;->_state:Ljava/lang/Object;

    .local v11, "state":Ljava/lang/Object;
    const/4 v12, 0x0

    .line 142
    .local v12, "$i$a$-loop-CancellableContinuationImpl$cancelCompletedResult$1":I
    nop

    .line 143
    instance-of v3, v11, Lkotlinx/coroutines/NotCompleted;

    if-nez v3, :cond_5

    .line 144
    instance-of v3, v11, Lkotlinx/coroutines/CompletedExceptionally;

    if-eqz v3, :cond_0

    return-void

    .line 145
    :cond_0
    instance-of v3, v11, Lkotlinx/coroutines/CompletedContinuation;

    if-eqz v3, :cond_3

    .line 146
    move-object v3, v11

    check-cast v3, Lkotlinx/coroutines/CompletedContinuation;

    invoke-virtual {v3}, Lkotlinx/coroutines/CompletedContinuation;->getCancelled()Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_2

    .line 147
    move-object v13, v11

    check-cast v13, Lkotlinx/coroutines/CompletedContinuation;

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v19, 0xf

    const/16 v20, 0x0

    move-object/from16 v18, p2

    invoke-static/range {v13 .. v20}, Lkotlinx/coroutines/CompletedContinuation;->copy$default(Lkotlinx/coroutines/CompletedContinuation;Ljava/lang/Object;Lkotlinx/coroutines/CancelHandler;Lkotlin/jvm/functions/Function1;Ljava/lang/Object;Ljava/lang/Throwable;ILjava/lang/Object;)Lkotlinx/coroutines/CompletedContinuation;

    move-result-object v3

    .line 148
    .local v3, "update":Lkotlinx/coroutines/CompletedContinuation;
    sget-object v4, Lkotlinx/coroutines/CancellableContinuationImpl;->_state$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-static {v4, v0, v11, v3}, Landroidx/concurrent/futures/AbstractResolvableFuture$SafeAtomicHelper$$ExternalSyntheticBackportWithForwarding0;->m(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 149
    move-object v4, v11

    check-cast v4, Lkotlinx/coroutines/CompletedContinuation;

    move-object/from16 v13, p2

    invoke-virtual {v4, v0, v13}, Lkotlinx/coroutines/CompletedContinuation;->invokeHandlers(Lkotlinx/coroutines/CancellableContinuationImpl;Ljava/lang/Throwable;)V

    .line 150
    return-void

    .line 148
    :cond_1
    move-object/from16 v13, p2

    goto :goto_1

    .line 594
    .end local v3    # "update":Lkotlinx/coroutines/CompletedContinuation;
    :cond_2
    move-object/from16 v13, p2

    const/4 v3, 0x0

    .line 146
    .local v3, "$i$a$-check-CancellableContinuationImpl$cancelCompletedResult$1$1":I
    nop

    .end local v3    # "$i$a$-check-CancellableContinuationImpl$cancelCompletedResult$1$1":I
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "Must be called at most once"

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 156
    :cond_3
    move-object/from16 v13, p2

    sget-object v14, Lkotlinx/coroutines/CancellableContinuationImpl;->_state$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    new-instance v15, Lkotlinx/coroutines/CompletedContinuation;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v9, 0xe

    const/4 v10, 0x0

    move-object v3, v15

    move-object v4, v11

    move-object/from16 v8, p2

    invoke-direct/range {v3 .. v10}, Lkotlinx/coroutines/CompletedContinuation;-><init>(Ljava/lang/Object;Lkotlinx/coroutines/CancelHandler;Lkotlin/jvm/functions/Function1;Ljava/lang/Object;Ljava/lang/Throwable;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-static {v14, v0, v11, v15}, Landroidx/concurrent/futures/AbstractResolvableFuture$SafeAtomicHelper$$ExternalSyntheticBackportWithForwarding0;->m(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 157
    return-void

    .line 161
    :cond_4
    :goto_1
    nop

    .line 595
    .end local v11    # "state":Ljava/lang/Object;
    .end local v12    # "$i$a$-loop-CancellableContinuationImpl$cancelCompletedResult$1":I
    goto :goto_0

    .line 143
    .restart local v11    # "state":Ljava/lang/Object;
    .restart local v12    # "$i$a$-loop-CancellableContinuationImpl$cancelCompletedResult$1":I
    :cond_5
    move-object/from16 v13, p2

    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "Not completed"

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto :goto_3

    :goto_2
    throw v3

    :goto_3
    goto :goto_2
.end method

.method public completeResume(Ljava/lang/Object;)V
    .locals 2
    .param p1, "token"    # Ljava/lang/Object;

    .line 512
    invoke-static {}, Lkotlinx/coroutines/DebugKt;->getASSERTIONS_ENABLED()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 594
    const/4 v0, 0x0

    .line 512
    .local v0, "$i$a$-assert-CancellableContinuationImpl$completeResume$1":I
    sget-object v1, Lkotlinx/coroutines/CancellableContinuationImplKt;->RESUME_TOKEN:Lkotlinx/coroutines/internal/Symbol;

    if-ne p1, v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .end local v0    # "$i$a$-assert-CancellableContinuationImpl$completeResume$1":I
    :goto_0
    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 513
    :cond_2
    :goto_1
    iget v0, p0, Lkotlinx/coroutines/CancellableContinuationImpl;->resumeMode:I

    invoke-direct {p0, v0}, Lkotlinx/coroutines/CancellableContinuationImpl;->dispatchResume(I)V

    .line 514
    return-void
.end method

.method public final detachChild$kotlinx_coroutines_core()V
    .locals 2

    .line 495
    iget-object v0, p0, Lkotlinx/coroutines/CancellableContinuationImpl;->parentHandle:Lkotlinx/coroutines/DisposableHandle;

    if-nez v0, :cond_0

    return-void

    .line 496
    .local v0, "handle":Lkotlinx/coroutines/DisposableHandle;
    :cond_0
    invoke-interface {v0}, Lkotlinx/coroutines/DisposableHandle;->dispose()V

    .line 497
    sget-object v1, Lkotlinx/coroutines/NonDisposableHandle;->INSTANCE:Lkotlinx/coroutines/NonDisposableHandle;

    check-cast v1, Lkotlinx/coroutines/DisposableHandle;

    iput-object v1, p0, Lkotlinx/coroutines/CancellableContinuationImpl;->parentHandle:Lkotlinx/coroutines/DisposableHandle;

    .line 498
    return-void
.end method

.method public getCallerFrame()Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;
    .locals 2

    .line 133
    iget-object v0, p0, Lkotlinx/coroutines/CancellableContinuationImpl;->delegate:Lkotlin/coroutines/Continuation;

    instance-of v1, v0, Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;

    if-eqz v1, :cond_0

    check-cast v0, Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getContext()Lkotlin/coroutines/CoroutineContext;
    .locals 1

    .line 34
    iget-object v0, p0, Lkotlinx/coroutines/CancellableContinuationImpl;->context:Lkotlin/coroutines/CoroutineContext;

    return-object v0
.end method

.method public getContinuationCancellationCause(Lkotlinx/coroutines/Job;)Ljava/lang/Throwable;
    .locals 1
    .param p1, "parent"    # Lkotlinx/coroutines/Job;

    .line 233
    invoke-interface {p1}, Lkotlinx/coroutines/Job;->getCancellationException()Ljava/util/concurrent/CancellationException;

    move-result-object v0

    check-cast v0, Ljava/lang/Throwable;

    return-object v0
.end method

.method public final getDelegate$kotlinx_coroutines_core()Lkotlin/coroutines/Continuation;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/coroutines/Continuation<",
            "TT;>;"
        }
    .end annotation

    .line 27
    iget-object v0, p0, Lkotlinx/coroutines/CancellableContinuationImpl;->delegate:Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public getExceptionalResult$kotlinx_coroutines_core(Ljava/lang/Object;)Ljava/lang/Throwable;
    .locals 5
    .param p1, "state"    # Ljava/lang/Object;

    .line 536
    invoke-super {p0, p1}, Lkotlinx/coroutines/DispatchedTask;->getExceptionalResult$kotlinx_coroutines_core(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_2

    .line 594
    .local v0, "it":Ljava/lang/Throwable;
    :cond_0
    const/4 v1, 0x0

    .line 536
    .local v1, "$i$a$-let-CancellableContinuationImpl$getExceptionalResult$1":I
    invoke-virtual {p0}, Lkotlinx/coroutines/CancellableContinuationImpl;->getDelegate$kotlinx_coroutines_core()Lkotlin/coroutines/Continuation;

    move-result-object v2

    .local v2, "continuation$iv":Lkotlin/coroutines/Continuation;
    const/4 v3, 0x0

    .line 635
    .local v3, "$i$f$recoverStackTrace":I
    invoke-static {}, Lkotlinx/coroutines/DebugKt;->getRECOVER_STACK_TRACES()Z

    move-result v4

    if-eqz v4, :cond_2

    instance-of v4, v2, Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;

    if-nez v4, :cond_1

    goto :goto_0

    .line 636
    :cond_1
    move-object v4, v2

    check-cast v4, Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;

    invoke-static {v0, v4}, Lkotlinx/coroutines/internal/StackTraceRecoveryKt;->access$recoverFromStackFrame(Ljava/lang/Throwable;Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;)Ljava/lang/Throwable;

    move-result-object v4

    goto :goto_1

    .line 635
    :cond_2
    :goto_0
    move-object v4, v0

    .line 536
    .end local v2    # "continuation$iv":Lkotlin/coroutines/Continuation;
    .end local v3    # "$i$f$recoverStackTrace":I
    :goto_1
    move-object v0, v4

    .end local v0    # "it":Ljava/lang/Throwable;
    .end local v1    # "$i$a$-let-CancellableContinuationImpl$getExceptionalResult$1":I
    :goto_2
    return-object v0
.end method

.method public final getResult()Ljava/lang/Object;
    .locals 7

    .line 257
    invoke-direct {p0}, Lkotlinx/coroutines/CancellableContinuationImpl;->isReusable()Z

    move-result v0

    .line 260
    .local v0, "isReusable":Z
    invoke-direct {p0}, Lkotlinx/coroutines/CancellableContinuationImpl;->trySuspend()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 270
    iget-object v1, p0, Lkotlinx/coroutines/CancellableContinuationImpl;->parentHandle:Lkotlinx/coroutines/DisposableHandle;

    if-nez v1, :cond_0

    .line 271
    invoke-direct {p0}, Lkotlinx/coroutines/CancellableContinuationImpl;->installParentHandle()Lkotlinx/coroutines/DisposableHandle;

    .line 278
    :cond_0
    if-eqz v0, :cond_1

    .line 279
    invoke-direct {p0}, Lkotlinx/coroutines/CancellableContinuationImpl;->releaseClaimedReusableContinuation()V

    .line 281
    :cond_1
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 284
    :cond_2
    if-eqz v0, :cond_3

    .line 286
    invoke-direct {p0}, Lkotlinx/coroutines/CancellableContinuationImpl;->releaseClaimedReusableContinuation()V

    .line 288
    :cond_3
    invoke-virtual {p0}, Lkotlinx/coroutines/CancellableContinuationImpl;->getState$kotlinx_coroutines_core()Ljava/lang/Object;

    move-result-object v1

    .line 289
    .local v1, "state":Ljava/lang/Object;
    instance-of v2, v1, Lkotlinx/coroutines/CompletedExceptionally;

    if-eqz v2, :cond_6

    move-object v2, v1

    check-cast v2, Lkotlinx/coroutines/CompletedExceptionally;

    iget-object v2, v2, Lkotlinx/coroutines/CompletedExceptionally;->cause:Ljava/lang/Throwable;

    .local v2, "exception$iv":Ljava/lang/Throwable;
    const/4 v3, 0x0

    .line 624
    .local v3, "$i$f$recoverStackTrace":I
    invoke-static {}, Lkotlinx/coroutines/DebugKt;->getRECOVER_STACK_TRACES()Z

    move-result v4

    if-eqz v4, :cond_5

    move-object v4, p0

    check-cast v4, Lkotlin/coroutines/Continuation;

    instance-of v4, v4, Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;

    if-nez v4, :cond_4

    goto :goto_0

    .line 625
    :cond_4
    move-object v4, p0

    check-cast v4, Lkotlin/coroutines/Continuation;

    check-cast v4, Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;

    invoke-static {v2, v4}, Lkotlinx/coroutines/internal/StackTraceRecoveryKt;->access$recoverFromStackFrame(Ljava/lang/Throwable;Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;)Ljava/lang/Throwable;

    move-result-object v4

    move-object v2, v4

    .end local v2    # "exception$iv":Ljava/lang/Throwable;
    .end local v3    # "$i$f$recoverStackTrace":I
    :cond_5
    :goto_0
    throw v2

    .line 294
    :cond_6
    iget v2, p0, Lkotlinx/coroutines/CancellableContinuationImpl;->resumeMode:I

    invoke-static {v2}, Lkotlinx/coroutines/DispatchedTaskKt;->isCancellableMode(I)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 295
    invoke-virtual {p0}, Lkotlinx/coroutines/CancellableContinuationImpl;->getContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object v2

    sget-object v3, Lkotlinx/coroutines/Job;->Key:Lkotlinx/coroutines/Job$Key;

    check-cast v3, Lkotlin/coroutines/CoroutineContext$Key;

    invoke-interface {v2, v3}, Lkotlin/coroutines/CoroutineContext;->get(Lkotlin/coroutines/CoroutineContext$Key;)Lkotlin/coroutines/CoroutineContext$Element;

    move-result-object v2

    check-cast v2, Lkotlinx/coroutines/Job;

    .line 296
    .local v2, "job":Lkotlinx/coroutines/Job;
    if-eqz v2, :cond_9

    invoke-interface {v2}, Lkotlinx/coroutines/Job;->isActive()Z

    move-result v3

    if-nez v3, :cond_9

    .line 297
    invoke-interface {v2}, Lkotlinx/coroutines/Job;->getCancellationException()Ljava/util/concurrent/CancellationException;

    move-result-object v3

    .line 298
    .local v3, "cause":Ljava/util/concurrent/CancellationException;
    move-object v4, v3

    check-cast v4, Ljava/lang/Throwable;

    invoke-virtual {p0, v1, v4}, Lkotlinx/coroutines/CancellableContinuationImpl;->cancelCompletedResult$kotlinx_coroutines_core(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 299
    const/4 v4, 0x0

    .line 626
    .local v4, "$i$f$recoverStackTrace":I
    invoke-static {}, Lkotlinx/coroutines/DebugKt;->getRECOVER_STACK_TRACES()Z

    move-result v5

    if-eqz v5, :cond_8

    move-object v5, p0

    check-cast v5, Lkotlin/coroutines/Continuation;

    instance-of v5, v5, Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;

    if-nez v5, :cond_7

    goto :goto_1

    .line 627
    :cond_7
    move-object v5, v3

    check-cast v5, Ljava/lang/Throwable;

    move-object v6, p0

    check-cast v6, Lkotlin/coroutines/Continuation;

    check-cast v6, Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;

    invoke-static {v5, v6}, Lkotlinx/coroutines/internal/StackTraceRecoveryKt;->access$recoverFromStackFrame(Ljava/lang/Throwable;Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;)Ljava/lang/Throwable;

    move-result-object v5

    goto :goto_2

    .line 626
    :cond_8
    :goto_1
    move-object v5, v3

    check-cast v5, Ljava/lang/Throwable;

    .line 627
    .end local v4    # "$i$f$recoverStackTrace":I
    :goto_2
    throw v5

    .line 302
    .end local v2    # "job":Lkotlinx/coroutines/Job;
    .end local v3    # "cause":Ljava/util/concurrent/CancellationException;
    :cond_9
    invoke-virtual {p0, v1}, Lkotlinx/coroutines/CancellableContinuationImpl;->getSuccessfulResult$kotlinx_coroutines_core(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    return-object v2
.end method

.method public getStackTraceElement()Ljava/lang/StackTraceElement;
    .locals 1

    .line 135
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getState$kotlinx_coroutines_core()Ljava/lang/Object;
    .locals 1

    .line 77
    iget-object v0, p0, Lkotlinx/coroutines/CancellableContinuationImpl;->_state:Ljava/lang/Object;

    return-object v0
.end method

.method public getSuccessfulResult$kotlinx_coroutines_core(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "state"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .line 528
    nop

    .line 529
    instance-of v0, p1, Lkotlinx/coroutines/CompletedContinuation;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lkotlinx/coroutines/CompletedContinuation;

    iget-object v0, v0, Lkotlinx/coroutines/CompletedContinuation;->result:Ljava/lang/Object;

    goto :goto_0

    .line 530
    :cond_0
    move-object v0, p1

    .line 531
    :goto_0
    return-object v0
.end method

.method public initCancellability()V
    .locals 2

    .line 98
    invoke-direct {p0}, Lkotlinx/coroutines/CancellableContinuationImpl;->installParentHandle()Lkotlinx/coroutines/DisposableHandle;

    move-result-object v0

    if-nez v0, :cond_0

    .line 99
    return-void

    .line 103
    .local v0, "handle":Lkotlinx/coroutines/DisposableHandle;
    :cond_0
    invoke-virtual {p0}, Lkotlinx/coroutines/CancellableContinuationImpl;->isCompleted()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 105
    invoke-interface {v0}, Lkotlinx/coroutines/DisposableHandle;->dispose()V

    .line 106
    sget-object v1, Lkotlinx/coroutines/NonDisposableHandle;->INSTANCE:Lkotlinx/coroutines/NonDisposableHandle;

    check-cast v1, Lkotlinx/coroutines/DisposableHandle;

    iput-object v1, p0, Lkotlinx/coroutines/CancellableContinuationImpl;->parentHandle:Lkotlinx/coroutines/DisposableHandle;

    .line 108
    :cond_1
    return-void
.end method

.method public invokeOnCancellation(Lkotlin/jvm/functions/Function1;)V
    .locals 14
    .param p1, "handler"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Throwable;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 334
    invoke-direct {p0, p1}, Lkotlinx/coroutines/CancellableContinuationImpl;->makeCancelHandler(Lkotlin/jvm/functions/Function1;)Lkotlinx/coroutines/CancelHandler;

    move-result-object v8

    .line 335
    .local v8, "cancelHandler":Lkotlinx/coroutines/CancelHandler;
    move-object v9, p0

    .local v9, "$this$loop$iv":Lkotlinx/coroutines/CancellableContinuationImpl;
    const/4 v10, 0x0

    .line 629
    .local v10, "$i$f$loop":I
    :goto_0
    nop

    .line 630
    iget-object v11, v9, Lkotlinx/coroutines/CancellableContinuationImpl;->_state:Ljava/lang/Object;

    .local v11, "state":Ljava/lang/Object;
    const/4 v12, 0x0

    .line 336
    .local v12, "$i$a$-loop-CancellableContinuationImpl$invokeOnCancellation$1":I
    nop

    .line 337
    instance-of v0, v11, Lkotlinx/coroutines/Active;

    if-eqz v0, :cond_0

    .line 338
    sget-object v0, Lkotlinx/coroutines/CancellableContinuationImpl;->_state$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-static {v0, p0, v11, v8}, Landroidx/concurrent/futures/AbstractResolvableFuture$SafeAtomicHelper$$ExternalSyntheticBackportWithForwarding0;->m(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    return-void

    .line 340
    :cond_0
    instance-of v0, v11, Lkotlinx/coroutines/CancelHandler;

    if-eqz v0, :cond_1

    invoke-direct {p0, p1, v11}, Lkotlinx/coroutines/CancellableContinuationImpl;->multipleHandlersError(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V

    goto/16 :goto_3

    .line 341
    :cond_1
    instance-of v0, v11, Lkotlinx/coroutines/CompletedExceptionally;

    if-eqz v0, :cond_6

    .line 347
    move-object v0, v11

    check-cast v0, Lkotlinx/coroutines/CompletedExceptionally;

    invoke-virtual {v0}, Lkotlinx/coroutines/CompletedExceptionally;->makeHandled()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-direct {p0, p1, v11}, Lkotlinx/coroutines/CancellableContinuationImpl;->multipleHandlersError(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V

    .line 353
    :cond_2
    instance-of v0, v11, Lkotlinx/coroutines/CancelledContinuation;

    if-eqz v0, :cond_5

    .line 354
    instance-of v0, v11, Lkotlinx/coroutines/CompletedExceptionally;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    move-object v0, v11

    check-cast v0, Lkotlinx/coroutines/CompletedExceptionally;

    goto :goto_1

    :cond_3
    move-object v0, v1

    :goto_1
    if-nez v0, :cond_4

    goto :goto_2

    :cond_4
    iget-object v1, v0, Lkotlinx/coroutines/CompletedExceptionally;->cause:Ljava/lang/Throwable;

    :goto_2
    invoke-direct {p0, p1, v1}, Lkotlinx/coroutines/CancellableContinuationImpl;->callCancelHandler(Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)V

    .line 356
    :cond_5
    return-void

    .line 358
    :cond_6
    instance-of v0, v11, Lkotlinx/coroutines/CompletedContinuation;

    if-eqz v0, :cond_a

    .line 362
    move-object v0, v11

    check-cast v0, Lkotlinx/coroutines/CompletedContinuation;

    iget-object v0, v0, Lkotlinx/coroutines/CompletedContinuation;->cancelHandler:Lkotlinx/coroutines/CancelHandler;

    if-eqz v0, :cond_7

    invoke-direct {p0, p1, v11}, Lkotlinx/coroutines/CancellableContinuationImpl;->multipleHandlersError(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V

    .line 364
    :cond_7
    instance-of v0, v8, Lkotlinx/coroutines/BeforeResumeCancelHandler;

    if-eqz v0, :cond_8

    return-void

    .line 365
    :cond_8
    move-object v0, v11

    check-cast v0, Lkotlinx/coroutines/CompletedContinuation;

    invoke-virtual {v0}, Lkotlinx/coroutines/CompletedContinuation;->getCancelled()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 367
    move-object v0, v11

    check-cast v0, Lkotlinx/coroutines/CompletedContinuation;

    iget-object v0, v0, Lkotlinx/coroutines/CompletedContinuation;->cancelCause:Ljava/lang/Throwable;

    invoke-direct {p0, p1, v0}, Lkotlinx/coroutines/CancellableContinuationImpl;->callCancelHandler(Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)V

    .line 368
    return-void

    .line 370
    :cond_9
    move-object v0, v11

    check-cast v0, Lkotlinx/coroutines/CompletedContinuation;

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0x1d

    const/4 v7, 0x0

    move-object v2, v8

    invoke-static/range {v0 .. v7}, Lkotlinx/coroutines/CompletedContinuation;->copy$default(Lkotlinx/coroutines/CompletedContinuation;Ljava/lang/Object;Lkotlinx/coroutines/CancelHandler;Lkotlin/jvm/functions/Function1;Ljava/lang/Object;Ljava/lang/Throwable;ILjava/lang/Object;)Lkotlinx/coroutines/CompletedContinuation;

    move-result-object v0

    .line 371
    .local v0, "update":Lkotlinx/coroutines/CompletedContinuation;
    sget-object v1, Lkotlinx/coroutines/CancellableContinuationImpl;->_state$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-static {v1, p0, v11, v0}, Landroidx/concurrent/futures/AbstractResolvableFuture$SafeAtomicHelper$$ExternalSyntheticBackportWithForwarding0;->m(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    return-void

    .line 379
    .end local v0    # "update":Lkotlinx/coroutines/CompletedContinuation;
    :cond_a
    instance-of v0, v8, Lkotlinx/coroutines/BeforeResumeCancelHandler;

    if-eqz v0, :cond_b

    return-void

    .line 380
    :cond_b
    new-instance v13, Lkotlinx/coroutines/CompletedContinuation;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0x1c

    const/4 v7, 0x0

    move-object v0, v13

    move-object v1, v11

    move-object v2, v8

    invoke-direct/range {v0 .. v7}, Lkotlinx/coroutines/CompletedContinuation;-><init>(Ljava/lang/Object;Lkotlinx/coroutines/CancelHandler;Lkotlin/jvm/functions/Function1;Ljava/lang/Object;Ljava/lang/Throwable;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 381
    .restart local v0    # "update":Lkotlinx/coroutines/CompletedContinuation;
    sget-object v1, Lkotlinx/coroutines/CancellableContinuationImpl;->_state$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-static {v1, p0, v11, v0}, Landroidx/concurrent/futures/AbstractResolvableFuture$SafeAtomicHelper$$ExternalSyntheticBackportWithForwarding0;->m(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    return-void

    .line 384
    .end local v0    # "update":Lkotlinx/coroutines/CompletedContinuation;
    :cond_c
    :goto_3
    nop

    .line 629
    .end local v11    # "state":Ljava/lang/Object;
    .end local v12    # "$i$a$-loop-CancellableContinuationImpl$invokeOnCancellation$1":I
    goto/16 :goto_0
.end method

.method public isActive()Z
    .locals 1

    .line 79
    invoke-virtual {p0}, Lkotlinx/coroutines/CancellableContinuationImpl;->getState$kotlinx_coroutines_core()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lkotlinx/coroutines/NotCompleted;

    return v0
.end method

.method public isCancelled()Z
    .locals 1

    .line 83
    invoke-virtual {p0}, Lkotlinx/coroutines/CancellableContinuationImpl;->getState$kotlinx_coroutines_core()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lkotlinx/coroutines/CancelledContinuation;

    return v0
.end method

.method public isCompleted()Z
    .locals 1

    .line 81
    invoke-virtual {p0}, Lkotlinx/coroutines/CancellableContinuationImpl;->getState$kotlinx_coroutines_core()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lkotlinx/coroutines/NotCompleted;

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method protected nameString()Ljava/lang/String;
    .locals 1

    .line 543
    const-string v0, "CancellableContinuation"

    return-object v0
.end method

.method public final parentCancelled$kotlinx_coroutines_core(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "cause"    # Ljava/lang/Throwable;

    .line 189
    invoke-direct {p0, p1}, Lkotlinx/coroutines/CancellableContinuationImpl;->cancelLater(Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 190
    :cond_0
    invoke-virtual {p0, p1}, Lkotlinx/coroutines/CancellableContinuationImpl;->cancel(Ljava/lang/Throwable;)Z

    .line 192
    invoke-direct {p0}, Lkotlinx/coroutines/CancellableContinuationImpl;->detachChildIfNonResuable()V

    .line 193
    return-void
.end method

.method public final resetStateReusable()Z
    .locals 5

    .line 118
    invoke-static {}, Lkotlinx/coroutines/DebugKt;->getASSERTIONS_ENABLED()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 594
    const/4 v0, 0x0

    .line 118
    .local v0, "$i$a$-assert-CancellableContinuationImpl$resetStateReusable$1":I
    iget v3, p0, Lkotlinx/coroutines/CancellableContinuationImpl;->resumeMode:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .end local v0    # "$i$a$-assert-CancellableContinuationImpl$resetStateReusable$1":I
    :goto_0
    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 119
    :cond_2
    :goto_1
    invoke-static {}, Lkotlinx/coroutines/DebugKt;->getASSERTIONS_ENABLED()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 594
    const/4 v0, 0x0

    .line 119
    .local v0, "$i$a$-assert-CancellableContinuationImpl$resetStateReusable$2":I
    iget-object v3, p0, Lkotlinx/coroutines/CancellableContinuationImpl;->parentHandle:Lkotlinx/coroutines/DisposableHandle;

    sget-object v4, Lkotlinx/coroutines/NonDisposableHandle;->INSTANCE:Lkotlinx/coroutines/NonDisposableHandle;

    if-eq v3, v4, :cond_3

    const/4 v0, 0x1

    goto :goto_2

    :cond_3
    const/4 v0, 0x0

    .end local v0    # "$i$a$-assert-CancellableContinuationImpl$resetStateReusable$2":I
    :goto_2
    if-eqz v0, :cond_4

    goto :goto_3

    :cond_4
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 120
    :cond_5
    :goto_3
    iget-object v0, p0, Lkotlinx/coroutines/CancellableContinuationImpl;->_state:Ljava/lang/Object;

    .line 121
    .local v0, "state":Ljava/lang/Object;
    invoke-static {}, Lkotlinx/coroutines/DebugKt;->getASSERTIONS_ENABLED()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 594
    const/4 v3, 0x0

    .line 121
    .local v3, "$i$a$-assert-CancellableContinuationImpl$resetStateReusable$3":I
    instance-of v4, v0, Lkotlinx/coroutines/NotCompleted;

    .end local v3    # "$i$a$-assert-CancellableContinuationImpl$resetStateReusable$3":I
    xor-int/lit8 v3, v4, 0x1

    if-eqz v3, :cond_6

    goto :goto_4

    :cond_6
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 122
    :cond_7
    :goto_4
    instance-of v3, v0, Lkotlinx/coroutines/CompletedContinuation;

    if-eqz v3, :cond_8

    move-object v3, v0

    check-cast v3, Lkotlinx/coroutines/CompletedContinuation;

    iget-object v3, v3, Lkotlinx/coroutines/CompletedContinuation;->idempotentResume:Ljava/lang/Object;

    if-eqz v3, :cond_8

    .line 124
    invoke-virtual {p0}, Lkotlinx/coroutines/CancellableContinuationImpl;->detachChild$kotlinx_coroutines_core()V

    .line 125
    return v2

    .line 127
    :cond_8
    iput v2, p0, Lkotlinx/coroutines/CancellableContinuationImpl;->_decision:I

    .line 128
    sget-object v2, Lkotlinx/coroutines/Active;->INSTANCE:Lkotlinx/coroutines/Active;

    iput-object v2, p0, Lkotlinx/coroutines/CancellableContinuationImpl;->_state:Ljava/lang/Object;

    .line 129
    return v1
.end method

.method public resume(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/Object;
    .param p2, "onCancellation"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Throwable;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 331
    iget v0, p0, Lkotlinx/coroutines/CancellableContinuationImpl;->resumeMode:I

    invoke-direct {p0, p1, v0, p2}, Lkotlinx/coroutines/CancellableContinuationImpl;->resumeImpl(Ljava/lang/Object;ILkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public resumeUndispatched(Lkotlinx/coroutines/CoroutineDispatcher;Ljava/lang/Object;)V
    .locals 8
    .param p1, "$this$resumeUndispatched"    # Lkotlinx/coroutines/CoroutineDispatcher;
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/CoroutineDispatcher;",
            "TT;)V"
        }
    .end annotation

    .line 517
    iget-object v0, p0, Lkotlinx/coroutines/CancellableContinuationImpl;->delegate:Lkotlin/coroutines/Continuation;

    instance-of v1, v0, Lkotlinx/coroutines/internal/DispatchedContinuation;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    check-cast v0, Lkotlinx/coroutines/internal/DispatchedContinuation;

    goto :goto_0

    :cond_0
    move-object v0, v2

    .line 518
    .local v0, "dc":Lkotlinx/coroutines/internal/DispatchedContinuation;
    :goto_0
    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    iget-object v2, v0, Lkotlinx/coroutines/internal/DispatchedContinuation;->dispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    :goto_1
    if-ne v2, p1, :cond_2

    const/4 v1, 0x4

    const/4 v4, 0x4

    goto :goto_2

    :cond_2
    iget v1, p0, Lkotlinx/coroutines/CancellableContinuationImpl;->resumeMode:I

    move v4, v1

    :goto_2
    const/4 v5, 0x0

    const/4 v6, 0x4

    const/4 v7, 0x0

    move-object v2, p0

    move-object v3, p2

    invoke-static/range {v2 .. v7}, Lkotlinx/coroutines/CancellableContinuationImpl;->resumeImpl$default(Lkotlinx/coroutines/CancellableContinuationImpl;Ljava/lang/Object;ILkotlin/jvm/functions/Function1;ILjava/lang/Object;)V

    .line 519
    return-void
.end method

.method public resumeUndispatchedWithException(Lkotlinx/coroutines/CoroutineDispatcher;Ljava/lang/Throwable;)V
    .locals 9
    .param p1, "$this$resumeUndispatchedWithException"    # Lkotlinx/coroutines/CoroutineDispatcher;
    .param p2, "exception"    # Ljava/lang/Throwable;

    .line 522
    iget-object v0, p0, Lkotlinx/coroutines/CancellableContinuationImpl;->delegate:Lkotlin/coroutines/Continuation;

    instance-of v1, v0, Lkotlinx/coroutines/internal/DispatchedContinuation;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    check-cast v0, Lkotlinx/coroutines/internal/DispatchedContinuation;

    goto :goto_0

    :cond_0
    move-object v0, v2

    .line 523
    .local v0, "dc":Lkotlinx/coroutines/internal/DispatchedContinuation;
    :goto_0
    new-instance v4, Lkotlinx/coroutines/CompletedExceptionally;

    const/4 v1, 0x0

    const/4 v3, 0x2

    invoke-direct {v4, p2, v1, v3, v2}, Lkotlinx/coroutines/CompletedExceptionally;-><init>(Ljava/lang/Throwable;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    iget-object v2, v0, Lkotlinx/coroutines/internal/DispatchedContinuation;->dispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    :goto_1
    if-ne v2, p1, :cond_2

    const/4 v1, 0x4

    const/4 v5, 0x4

    goto :goto_2

    :cond_2
    iget v1, p0, Lkotlinx/coroutines/CancellableContinuationImpl;->resumeMode:I

    move v5, v1

    :goto_2
    const/4 v6, 0x0

    const/4 v7, 0x4

    const/4 v8, 0x0

    move-object v3, p0

    invoke-static/range {v3 .. v8}, Lkotlinx/coroutines/CancellableContinuationImpl;->resumeImpl$default(Lkotlinx/coroutines/CancellableContinuationImpl;Ljava/lang/Object;ILkotlin/jvm/functions/Function1;ILjava/lang/Object;)V

    .line 524
    return-void
.end method

.method public resumeWith(Ljava/lang/Object;)V
    .locals 7
    .param p1, "result"    # Ljava/lang/Object;

    .line 328
    move-object v0, p0

    check-cast v0, Lkotlinx/coroutines/CancellableContinuation;

    invoke-static {p1, v0}, Lkotlinx/coroutines/CompletionStateKt;->toState(Ljava/lang/Object;Lkotlinx/coroutines/CancellableContinuation;)Ljava/lang/Object;

    move-result-object v2

    iget v3, p0, Lkotlinx/coroutines/CancellableContinuationImpl;->resumeMode:I

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    move-object v1, p0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/CancellableContinuationImpl;->resumeImpl$default(Lkotlinx/coroutines/CancellableContinuationImpl;Ljava/lang/Object;ILkotlin/jvm/functions/Function1;ILjava/lang/Object;)V

    return-void
.end method

.method public takeState$kotlinx_coroutines_core()Ljava/lang/Object;
    .locals 1

    .line 137
    invoke-virtual {p0}, Lkotlinx/coroutines/CancellableContinuationImpl;->getState$kotlinx_coroutines_core()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 540
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lkotlinx/coroutines/CancellableContinuationImpl;->nameString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lkotlinx/coroutines/CancellableContinuationImpl;->delegate:Lkotlin/coroutines/Continuation;

    invoke-static {v1}, Lkotlinx/coroutines/DebugStringsKt;->toDebugString(Lkotlin/coroutines/Continuation;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "){"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lkotlinx/coroutines/CancellableContinuationImpl;->getStateDebugRepresentation()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Lkotlinx/coroutines/DebugStringsKt;->getHexAddress(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public tryResume(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "value"    # Ljava/lang/Object;
    .param p2, "idempotent"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 502
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lkotlinx/coroutines/CancellableContinuationImpl;->tryResumeImpl(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Lkotlinx/coroutines/internal/Symbol;

    move-result-object v0

    return-object v0
.end method

.method public tryResume(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;
    .locals 1
    .param p1, "value"    # Ljava/lang/Object;
    .param p2, "idempotent"    # Ljava/lang/Object;
    .param p3, "onCancellation"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/lang/Object;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Throwable;",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 505
    invoke-direct {p0, p1, p2, p3}, Lkotlinx/coroutines/CancellableContinuationImpl;->tryResumeImpl(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Lkotlinx/coroutines/internal/Symbol;

    move-result-object v0

    return-object v0
.end method

.method public tryResumeWithException(Ljava/lang/Throwable;)Ljava/lang/Object;
    .locals 4
    .param p1, "exception"    # Ljava/lang/Throwable;

    .line 508
    new-instance v0, Lkotlinx/coroutines/CompletedExceptionally;

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-direct {v0, p1, v1, v2, v3}, Lkotlinx/coroutines/CompletedExceptionally;-><init>(Ljava/lang/Throwable;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-direct {p0, v0, v3, v3}, Lkotlinx/coroutines/CancellableContinuationImpl;->tryResumeImpl(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Lkotlinx/coroutines/internal/Symbol;

    move-result-object v0

    return-object v0
.end method
