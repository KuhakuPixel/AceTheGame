.class public final Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$unsafeFlow$3;
.super Ljava/lang/Object;
.source "SafeCollector.common.kt"

# interfaces
.implements Lkotlinx/coroutines/flow/Flow;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlinx/coroutines/flow/FlowKt__ZipKt;->combine(Ljava/lang/Iterable;Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/flow/Flow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlinx/coroutines/flow/Flow<",
        "TR;>;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSafeCollector.common.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SafeCollector.common.kt\nkotlinx/coroutines/flow/internal/SafeCollector_commonKt$unsafeFlow$1\n+ 2 Zip.kt\nkotlinx/coroutines/flow/FlowKt__ZipKt\n*L\n1#1,112:1\n289#2,5:113\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0019\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u0008\u0012\u0004\u0012\u00028\u00000\u0001J\u001f\u0010\u0002\u001a\u00020\u00032\u000c\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0005H\u0096@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u0006\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006\u0007\u00b8\u0006\u0000"
    }
    d2 = {
        "kotlinx/coroutines/flow/internal/SafeCollector_commonKt$unsafeFlow$1",
        "Lkotlinx/coroutines/flow/Flow;",
        "collect",
        "",
        "collector",
        "Lkotlinx/coroutines/flow/FlowCollector;",
        "(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "kotlinx-coroutines-core"
    }
    k = 0x1
    mv = {
        0x1,
        0x6,
        0x0
    }
    xi = 0xb0
.end annotation


# instance fields
.field final synthetic $flowArray$inlined:[Lkotlinx/coroutines/flow/Flow;

.field final synthetic $transform$inlined:Lkotlin/jvm/functions/Function2;


# direct methods
.method public constructor <init>([Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function2;)V
    .locals 0

    iput-object p1, p0, Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$unsafeFlow$3;->$flowArray$inlined:[Lkotlinx/coroutines/flow/Flow;

    iput-object p2, p0, Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$unsafeFlow$3;->$transform$inlined:Lkotlin/jvm/functions/Function2;

    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public collect(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 8
    .param p1, "collector"    # Lkotlinx/coroutines/flow/FlowCollector;
    .param p2, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/flow/FlowCollector<",
            "-TR;>;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 108
    move-object v0, p1

    .local v0, "$this$combine_u24lambda_u2d11":Lkotlinx/coroutines/flow/FlowCollector;
    move-object v1, p2

    .local v1, "$completion":Lkotlin/coroutines/Continuation;
    const/4 v2, 0x0

    .line 113
    .local v2, "$i$a$-unsafeFlow-FlowKt__ZipKt$combine$6":I
    nop

    .line 114
    iget-object v3, p0, Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$unsafeFlow$3;->$flowArray$inlined:[Lkotlinx/coroutines/flow/Flow;

    .line 113
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->needClassReification()V

    new-instance v4, Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$6$1;

    iget-object v5, p0, Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$unsafeFlow$3;->$flowArray$inlined:[Lkotlinx/coroutines/flow/Flow;

    invoke-direct {v4, v5}, Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$6$1;-><init>([Lkotlinx/coroutines/flow/Flow;)V

    check-cast v4, Lkotlin/jvm/functions/Function0;

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->needClassReification()V

    new-instance v5, Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$6$2;

    iget-object v6, p0, Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$unsafeFlow$3;->$transform$inlined:Lkotlin/jvm/functions/Function2;

    const/4 v7, 0x0

    invoke-direct {v5, v6, v7}, Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$6$2;-><init>(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)V

    check-cast v5, Lkotlin/jvm/functions/Function3;

    invoke-static {v0, v3, v4, v5, p2}, Lkotlinx/coroutines/flow/internal/CombineKt;->combineInternal(Lkotlinx/coroutines/flow/FlowCollector;[Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function3;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v4

    if-ne v3, v4, :cond_0

    return-object v3

    .line 117
    :cond_0
    nop

    .end local v0    # "$this$combine_u24lambda_u2d11":Lkotlinx/coroutines/flow/FlowCollector;
    .end local v1    # "$completion":Lkotlin/coroutines/Continuation;
    .end local v2    # "$i$a$-unsafeFlow-FlowKt__ZipKt$combine$6":I
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 109
    return-object v0
.end method

.method public collect$$forInline(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 8
    .param p1, "collector"    # Lkotlinx/coroutines/flow/FlowCollector;
    .param p2, "$completion"    # Lkotlin/coroutines/Continuation;

    const/4 v0, 0x4

    invoke-static {v0}, Lkotlin/jvm/internal/InlineMarker;->mark(I)V

    new-instance v0, Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$unsafeFlow$3$1;

    invoke-direct {v0, p0, p2}, Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$unsafeFlow$3$1;-><init>(Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$unsafeFlow$3;Lkotlin/coroutines/Continuation;)V

    const/4 v0, 0x5

    invoke-static {v0}, Lkotlin/jvm/internal/InlineMarker;->mark(I)V

    .line 108
    move-object v0, p1

    .local v0, "$this$combine_u24lambda_u2d11":Lkotlinx/coroutines/flow/FlowCollector;
    move-object v1, p2

    .local v1, "$completion":Lkotlin/coroutines/Continuation;
    const/4 v2, 0x0

    .line 113
    .local v2, "$i$a$-unsafeFlow-FlowKt__ZipKt$combine$6":I
    nop

    .line 114
    iget-object v3, p0, Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$unsafeFlow$3;->$flowArray$inlined:[Lkotlinx/coroutines/flow/Flow;

    .line 113
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->needClassReification()V

    new-instance v4, Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$6$1;

    iget-object v5, p0, Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$unsafeFlow$3;->$flowArray$inlined:[Lkotlinx/coroutines/flow/Flow;

    invoke-direct {v4, v5}, Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$6$1;-><init>([Lkotlinx/coroutines/flow/Flow;)V

    check-cast v4, Lkotlin/jvm/functions/Function0;

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->needClassReification()V

    new-instance v5, Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$6$2;

    iget-object v6, p0, Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$unsafeFlow$3;->$transform$inlined:Lkotlin/jvm/functions/Function2;

    const/4 v7, 0x0

    invoke-direct {v5, v6, v7}, Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$6$2;-><init>(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)V

    check-cast v5, Lkotlin/jvm/functions/Function3;

    const/4 v6, 0x0

    invoke-static {v6}, Lkotlin/jvm/internal/InlineMarker;->mark(I)V

    invoke-static {v0, v3, v4, v5, p2}, Lkotlinx/coroutines/flow/internal/CombineKt;->combineInternal(Lkotlinx/coroutines/flow/FlowCollector;[Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function3;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    const/4 v3, 0x1

    invoke-static {v3}, Lkotlin/jvm/internal/InlineMarker;->mark(I)V

    .line 117
    nop

    .end local v0    # "$this$combine_u24lambda_u2d11":Lkotlinx/coroutines/flow/FlowCollector;
    .end local v1    # "$completion":Lkotlin/coroutines/Continuation;
    .end local v2    # "$i$a$-unsafeFlow-FlowKt__ZipKt$combine$6":I
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 109
    return-object v0
.end method
