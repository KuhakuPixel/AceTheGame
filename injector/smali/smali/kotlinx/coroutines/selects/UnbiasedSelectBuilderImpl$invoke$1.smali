.class final Lkotlinx/coroutines/selects/UnbiasedSelectBuilderImpl$invoke$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SelectUnbiased.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlinx/coroutines/selects/UnbiasedSelectBuilderImpl;->invoke(Lkotlinx/coroutines/selects/SelectClause0;Lkotlin/jvm/functions/Function1;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u0001\"\u0006\u0008\u0000\u0010\u0002 \u0000H\n\u00a2\u0006\u0002\u0008\u0003"
    }
    d2 = {
        "<anonymous>",
        "",
        "R",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x6,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $block:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Lkotlin/coroutines/Continuation<",
            "-TR;>;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $this_invoke:Lkotlinx/coroutines/selects/SelectClause0;

.field final synthetic this$0:Lkotlinx/coroutines/selects/UnbiasedSelectBuilderImpl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/selects/UnbiasedSelectBuilderImpl<",
            "TR;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lkotlinx/coroutines/selects/SelectClause0;Lkotlinx/coroutines/selects/UnbiasedSelectBuilderImpl;Lkotlin/jvm/functions/Function1;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/selects/SelectClause0;",
            "Lkotlinx/coroutines/selects/UnbiasedSelectBuilderImpl<",
            "-TR;>;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lkotlin/coroutines/Continuation<",
            "-TR;>;+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lkotlinx/coroutines/selects/UnbiasedSelectBuilderImpl$invoke$1;->$this_invoke:Lkotlinx/coroutines/selects/SelectClause0;

    iput-object p2, p0, Lkotlinx/coroutines/selects/UnbiasedSelectBuilderImpl$invoke$1;->this$0:Lkotlinx/coroutines/selects/UnbiasedSelectBuilderImpl;

    iput-object p3, p0, Lkotlinx/coroutines/selects/UnbiasedSelectBuilderImpl$invoke$1;->$block:Lkotlin/jvm/functions/Function1;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 55
    invoke-virtual {p0}, Lkotlinx/coroutines/selects/UnbiasedSelectBuilderImpl$invoke$1;->invoke()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke()V
    .locals 3

    .line 55
    iget-object v0, p0, Lkotlinx/coroutines/selects/UnbiasedSelectBuilderImpl$invoke$1;->$this_invoke:Lkotlinx/coroutines/selects/SelectClause0;

    iget-object v1, p0, Lkotlinx/coroutines/selects/UnbiasedSelectBuilderImpl$invoke$1;->this$0:Lkotlinx/coroutines/selects/UnbiasedSelectBuilderImpl;

    invoke-virtual {v1}, Lkotlinx/coroutines/selects/UnbiasedSelectBuilderImpl;->getInstance()Lkotlinx/coroutines/selects/SelectBuilderImpl;

    move-result-object v1

    check-cast v1, Lkotlinx/coroutines/selects/SelectInstance;

    iget-object v2, p0, Lkotlinx/coroutines/selects/UnbiasedSelectBuilderImpl$invoke$1;->$block:Lkotlin/jvm/functions/Function1;

    invoke-interface {v0, v1, v2}, Lkotlinx/coroutines/selects/SelectClause0;->registerSelectClause0(Lkotlinx/coroutines/selects/SelectInstance;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method
