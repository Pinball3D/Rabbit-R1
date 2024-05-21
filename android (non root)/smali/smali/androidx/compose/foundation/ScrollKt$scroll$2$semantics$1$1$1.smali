.class final Landroidx/compose/foundation/ScrollKt$scroll$2$semantics$1$1$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "Scroll.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/foundation/ScrollKt$scroll$2$semantics$1$1;->invoke(FF)Ljava/lang/Boolean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lkotlinx/coroutines/CoroutineScope;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"
    }
    d2 = {
        "<anonymous>",
        "",
        "Lkotlinx/coroutines/CoroutineScope;"
    }
    k = 0x3
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "androidx.compose.foundation.ScrollKt$scroll$2$semantics$1$1$1"
    f = "Scroll.kt"
    i = {}
    l = {
        0x120,
        0x122
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $isVertical:Z

.field final synthetic $state:Landroidx/compose/foundation/ScrollState;

.field final synthetic $x:F

.field final synthetic $y:F

.field label:I


# direct methods
.method constructor <init>(ZLandroidx/compose/foundation/ScrollState;FFLkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Landroidx/compose/foundation/ScrollState;",
            "FF",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Landroidx/compose/foundation/ScrollKt$scroll$2$semantics$1$1$1;",
            ">;)V"
        }
    .end annotation

    iput-boolean p1, p0, Landroidx/compose/foundation/ScrollKt$scroll$2$semantics$1$1$1;->$isVertical:Z

    iput-object p2, p0, Landroidx/compose/foundation/ScrollKt$scroll$2$semantics$1$1$1;->$state:Landroidx/compose/foundation/ScrollState;

    iput p3, p0, Landroidx/compose/foundation/ScrollKt$scroll$2$semantics$1$1$1;->$y:F

    iput p4, p0, Landroidx/compose/foundation/ScrollKt$scroll$2$semantics$1$1$1;->$x:F

    const/4 p1, 0x2

    invoke-direct {p0, p1, p5}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lkotlin/coroutines/Continuation<",
            "*>;)",
            "Lkotlin/coroutines/Continuation<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    new-instance p1, Landroidx/compose/foundation/ScrollKt$scroll$2$semantics$1$1$1;

    iget-boolean v1, p0, Landroidx/compose/foundation/ScrollKt$scroll$2$semantics$1$1$1;->$isVertical:Z

    iget-object v2, p0, Landroidx/compose/foundation/ScrollKt$scroll$2$semantics$1$1$1;->$state:Landroidx/compose/foundation/ScrollState;

    iget v3, p0, Landroidx/compose/foundation/ScrollKt$scroll$2$semantics$1$1$1;->$y:F

    iget v4, p0, Landroidx/compose/foundation/ScrollKt$scroll$2$semantics$1$1$1;->$x:F

    move-object v0, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Landroidx/compose/foundation/ScrollKt$scroll$2$semantics$1$1$1;-><init>(ZLandroidx/compose/foundation/ScrollState;FFLkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlin/coroutines/Continuation;

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Landroidx/compose/foundation/ScrollKt$scroll$2$semantics$1$1$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/CoroutineScope;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Landroidx/compose/foundation/ScrollKt$scroll$2$semantics$1$1$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Landroidx/compose/foundation/ScrollKt$scroll$2$semantics$1$1$1;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Landroidx/compose/foundation/ScrollKt$scroll$2$semantics$1$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Landroidx/compose/foundation/ScrollKt$scroll$2$semantics$1$1$1;->label:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    if-eq v1, v3, :cond_1

    if-ne v1, v2, :cond_0

    goto :goto_0

    .line 65535
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-boolean p1, p0, Landroidx/compose/foundation/ScrollKt$scroll$2$semantics$1$1$1;->$isVertical:Z

    const-string v1, "null cannot be cast to non-null type androidx.compose.foundation.gestures.ScrollableState"

    if-eqz p1, :cond_3

    iget-object p1, p0, Landroidx/compose/foundation/ScrollKt$scroll$2$semantics$1$1$1;->$state:Landroidx/compose/foundation/ScrollState;

    .line 288
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v4, p1

    check-cast v4, Landroidx/compose/foundation/gestures/ScrollableState;

    iget v5, p0, Landroidx/compose/foundation/ScrollKt$scroll$2$semantics$1$1$1;->$y:F

    const/4 v6, 0x0

    move-object v7, p0

    check-cast v7, Lkotlin/coroutines/Continuation;

    const/4 v8, 0x2

    const/4 v9, 0x0

    iput v3, p0, Landroidx/compose/foundation/ScrollKt$scroll$2$semantics$1$1$1;->label:I

    invoke-static/range {v4 .. v9}, Landroidx/compose/foundation/gestures/ScrollExtensionsKt;->animateScrollBy$default(Landroidx/compose/foundation/gestures/ScrollableState;FLandroidx/compose/animation/core/AnimationSpec;Lkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_4

    return-object v0

    :cond_3
    iget-object p1, p0, Landroidx/compose/foundation/ScrollKt$scroll$2$semantics$1$1$1;->$state:Landroidx/compose/foundation/ScrollState;

    .line 290
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v3, p1

    check-cast v3, Landroidx/compose/foundation/gestures/ScrollableState;

    iget v4, p0, Landroidx/compose/foundation/ScrollKt$scroll$2$semantics$1$1$1;->$x:F

    const/4 v5, 0x0

    move-object v6, p0

    check-cast v6, Lkotlin/coroutines/Continuation;

    const/4 v7, 0x2

    const/4 v8, 0x0

    iput v2, p0, Landroidx/compose/foundation/ScrollKt$scroll$2$semantics$1$1$1;->label:I

    invoke-static/range {v3 .. v8}, Landroidx/compose/foundation/gestures/ScrollExtensionsKt;->animateScrollBy$default(Landroidx/compose/foundation/gestures/ScrollableState;FLandroidx/compose/animation/core/AnimationSpec;Lkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_4

    return-object v0

    .line 292
    :cond_4
    :goto_1
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
