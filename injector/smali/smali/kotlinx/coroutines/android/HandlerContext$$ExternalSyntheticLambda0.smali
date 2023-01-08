.class public final synthetic Lkotlinx/coroutines/android/HandlerContext$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlinx/coroutines/DisposableHandle;


# instance fields
.field public final synthetic f$0:Lkotlinx/coroutines/android/HandlerContext;

.field public final synthetic f$1:Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>(Lkotlinx/coroutines/android/HandlerContext;Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkotlinx/coroutines/android/HandlerContext$$ExternalSyntheticLambda0;->f$0:Lkotlinx/coroutines/android/HandlerContext;

    iput-object p2, p0, Lkotlinx/coroutines/android/HandlerContext$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final dispose()V
    .locals 2

    iget-object v0, p0, Lkotlinx/coroutines/android/HandlerContext$$ExternalSyntheticLambda0;->f$0:Lkotlinx/coroutines/android/HandlerContext;

    iget-object v1, p0, Lkotlinx/coroutines/android/HandlerContext$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Runnable;

    invoke-static {v0, v1}, Lkotlinx/coroutines/android/HandlerContext;->$r8$lambda$-TOZof2GYGCn1P43qXNY1O5Gvm8(Lkotlinx/coroutines/android/HandlerContext;Ljava/lang/Runnable;)V

    return-void
.end method
