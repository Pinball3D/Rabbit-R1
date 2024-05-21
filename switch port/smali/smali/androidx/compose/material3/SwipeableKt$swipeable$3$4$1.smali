.class final Landroidx/compose/material3/SwipeableKt$swipeable$3$4$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "Swipeable.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/material3/SwipeableKt$swipeable$3;->invoke(Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;I)Landroidx/compose/ui/Modifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function3<",
        "Lkotlinx/coroutines/CoroutineScope;",
        "Ljava/lang/Float;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "androidx.compose.material3.SwipeableKt$swipeable$3$4$1"
    f = "Swipeable.kt"
    i = {}
    l = {}
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $state:Landroidx/compose/material3/SwipeableState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/material3/SwipeableState<",
            "TT;>;"
        }
    .end annotation
.end field

.field synthetic F$0:F

.field private synthetic L$0:Ljava/lang/Object;

.field label:I


# direct methods
.method constructor <init>(Landroidx/compose/material3/SwipeableState;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/material3/SwipeableState<",
            "TT;>;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Landroidx/compose/material3/SwipeableKt$swipeable$3$4$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/compose/material3/SwipeableKt$swipeable$3$4$1;->$state:Landroidx/compose/material3/SwipeableState;

    const/4 p1, 0x3

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->floatValue()F

    move-result p2

    check-cast p3, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2, p3}, Landroidx/compose/material3/SwipeableKt$swipeable$3$4$1;->invoke(Lkotlinx/coroutines/CoroutineScope;FLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invoke(Lkotlinx/coroutines/CoroutineScope;FLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/CoroutineScope;",
            "F",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    new-instance v0, Landroidx/compose/material3/SwipeableKt$swipeable$3$4$1;

    iget-object p0, p0, Landroidx/compose/material3/SwipeableKt$swipeable$3$4$1;->$state:Landroidx/compose/material3/SwipeableState;

    invoke-direct {v0, p0, p3}, Landroidx/compose/material3/SwipeableKt$swipeable$3$4$1;-><init>(Landroidx/compose/material3/SwipeableState;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Landroidx/compose/material3/SwipeableKt$swipeable$3$4$1;->L$0:Ljava/lang/Object;

    iput p2, v0, Landroidx/compose/material3/SwipeableKt$swipeable$3$4$1;->F$0:F

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, p0}, Landroidx/compose/material3/SwipeableKt$swipeable$3$4$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    iget v0, p0, Landroidx/compose/material3/SwipeableKt$swipeable$3$4$1;->label:I

    if-nez v0, :cond_0

    .line 65535
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Landroidx/compose/material3/SwipeableKt$swipeable$3$4$1;->L$0:Ljava/lang/Object;

    move-object v0, p1

    check-cast v0, Lkotlinx/coroutines/CoroutineScope;

    iget p1, p0, Landroidx/compose/material3/SwipeableKt$swipeable$3$4$1;->F$0:F

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 612
    new-instance v3, Landroidx/compose/material3/SwipeableKt$swipeable$3$4$1$1;

    iget-object p0, p0, Landroidx/compose/material3/SwipeableKt$swipeable$3$4$1;->$state:Landroidx/compose/material3/SwipeableState;

    const/4 v4, 0x0

    invoke-direct {v3, p0, p1, v4}, Landroidx/compose/material3/SwipeableKt$swipeable$3$4$1$1;-><init>(Landroidx/compose/material3/SwipeableState;FLkotlin/coroutines/Continuation;)V

    check-cast v3, Lkotlin/jvm/functions/Function2;

    const/4 v4, 0x3

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    .line 65535
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
