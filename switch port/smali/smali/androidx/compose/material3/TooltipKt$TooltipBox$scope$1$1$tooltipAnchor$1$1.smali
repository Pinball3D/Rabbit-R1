.class final Landroidx/compose/material3/TooltipKt$TooltipBox$scope$1$1$tooltipAnchor$1$1;
.super Lkotlin/coroutines/jvm/internal/RestrictedSuspendLambda;
.source "Tooltip.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/material3/TooltipKt$TooltipBox$scope$1$1$tooltipAnchor$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/RestrictedSuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTooltip.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Tooltip.kt\nandroidx/compose/material3/TooltipKt$TooltipBox$scope$1$1$tooltipAnchor$1$1\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,770:1\n1855#2,2:771\n*S KotlinDebug\n*F\n+ 1 Tooltip.kt\nandroidx/compose/material3/TooltipKt$TooltipBox$scope$1$1$tooltipAnchor$1$1\n*L\n230#1:771,2\n*E\n"
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
    c = "androidx.compose.material3.TooltipKt$TooltipBox$scope$1$1$tooltipAnchor$1$1"
    f = "Tooltip.kt"
    i = {
        0x0,
        0x0,
        0x0,
        0x1,
        0x1
    }
    l = {
        0xd9,
        0xdd,
        0xe5
    }
    m = "invokeSuspend"
    n = {
        "$this$awaitEachGesture",
        "pass",
        "longPressTimeout",
        "$this$awaitEachGesture",
        "pass"
    }
    s = {
        "L$0",
        "L$1",
        "J$0",
        "L$0",
        "L$1"
    }
.end annotation


# instance fields
.field final synthetic $onLongPress:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlinx/coroutines/Job;",
            ">;"
        }
    .end annotation
.end field

.field J$0:J

.field private synthetic L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field label:I


# direct methods
.method constructor <init>(Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "+",
            "Lkotlinx/coroutines/Job;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Landroidx/compose/material3/TooltipKt$TooltipBox$scope$1$1$tooltipAnchor$1$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/compose/material3/TooltipKt$TooltipBox$scope$1$1$tooltipAnchor$1$1;->$onLongPress:Lkotlin/jvm/functions/Function0;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/RestrictedSuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 1
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

    new-instance v0, Landroidx/compose/material3/TooltipKt$TooltipBox$scope$1$1$tooltipAnchor$1$1;

    iget-object p0, p0, Landroidx/compose/material3/TooltipKt$TooltipBox$scope$1$1$tooltipAnchor$1$1;->$onLongPress:Lkotlin/jvm/functions/Function0;

    invoke-direct {v0, p0, p2}, Landroidx/compose/material3/TooltipKt$TooltipBox$scope$1$1$tooltipAnchor$1$1;-><init>(Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Landroidx/compose/material3/TooltipKt$TooltipBox$scope$1$1$tooltipAnchor$1$1;->L$0:Ljava/lang/Object;

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public final invoke(Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Landroidx/compose/material3/TooltipKt$TooltipBox$scope$1$1$tooltipAnchor$1$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Landroidx/compose/material3/TooltipKt$TooltipBox$scope$1$1$tooltipAnchor$1$1;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Landroidx/compose/material3/TooltipKt$TooltipBox$scope$1$1$tooltipAnchor$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Landroidx/compose/material3/TooltipKt$TooltipBox$scope$1$1$tooltipAnchor$1$1;->invoke(Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 14

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Landroidx/compose/material3/TooltipKt$TooltipBox$scope$1$1$tooltipAnchor$1$1;->label:I

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v1, :cond_3

    if-eq v1, v4, :cond_2

    if-eq v1, v3, :cond_1

    if-ne v1, v2, :cond_0

    .line 65535
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_1

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    iget-object v1, p0, Landroidx/compose/material3/TooltipKt$TooltipBox$scope$1$1$tooltipAnchor$1$1;->L$1:Ljava/lang/Object;

    check-cast v1, Landroidx/compose/ui/input/pointer/PointerEventPass;

    iget-object v3, p0, Landroidx/compose/material3/TooltipKt$TooltipBox$scope$1$1$tooltipAnchor$1$1;->L$0:Ljava/lang/Object;

    check-cast v3, Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;

    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catch Landroidx/compose/ui/input/pointer/PointerEventTimeoutCancellationException; {:try_start_0 .. :try_end_0} :catch_1

    goto/16 :goto_3

    :cond_2
    iget-wide v6, p0, Landroidx/compose/material3/TooltipKt$TooltipBox$scope$1$1$tooltipAnchor$1$1;->J$0:J

    iget-object v1, p0, Landroidx/compose/material3/TooltipKt$TooltipBox$scope$1$1$tooltipAnchor$1$1;->L$1:Ljava/lang/Object;

    check-cast v1, Landroidx/compose/ui/input/pointer/PointerEventPass;

    iget-object v4, p0, Landroidx/compose/material3/TooltipKt$TooltipBox$scope$1$1$tooltipAnchor$1$1;->L$0:Ljava/lang/Object;

    check-cast v4, Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object p1, v4

    goto :goto_0

    :cond_3
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Landroidx/compose/material3/TooltipKt$TooltipBox$scope$1$1$tooltipAnchor$1$1;->L$0:Ljava/lang/Object;

    check-cast p1, Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;

    .line 213
    invoke-interface {p1}, Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;->getViewConfiguration()Landroidx/compose/ui/platform/ViewConfiguration;

    move-result-object v1

    invoke-interface {v1}, Landroidx/compose/ui/platform/ViewConfiguration;->getLongPressTimeoutMillis()J

    move-result-wide v12

    .line 214
    sget-object v1, Landroidx/compose/ui/input/pointer/PointerEventPass;->Initial:Landroidx/compose/ui/input/pointer/PointerEventPass;

    const/4 v7, 0x0

    .line 217
    move-object v9, p0

    check-cast v9, Lkotlin/coroutines/Continuation;

    const/4 v10, 0x1

    const/4 v11, 0x0

    iput-object p1, p0, Landroidx/compose/material3/TooltipKt$TooltipBox$scope$1$1$tooltipAnchor$1$1;->L$0:Ljava/lang/Object;

    iput-object v1, p0, Landroidx/compose/material3/TooltipKt$TooltipBox$scope$1$1$tooltipAnchor$1$1;->L$1:Ljava/lang/Object;

    iput-wide v12, p0, Landroidx/compose/material3/TooltipKt$TooltipBox$scope$1$1$tooltipAnchor$1$1;->J$0:J

    iput v4, p0, Landroidx/compose/material3/TooltipKt$TooltipBox$scope$1$1$tooltipAnchor$1$1;->label:I

    move-object v6, p1

    move-object v8, v1

    invoke-static/range {v6 .. v11}, Landroidx/compose/foundation/gestures/TapGestureDetectorKt;->awaitFirstDown$default(Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;ZLandroidx/compose/ui/input/pointer/PointerEventPass;Lkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v0, :cond_4

    return-object v0

    :cond_4
    move-wide v6, v12

    .line 221
    :goto_0
    :try_start_1
    new-instance v4, Landroidx/compose/material3/TooltipKt$TooltipBox$scope$1$1$tooltipAnchor$1$1$1;

    invoke-direct {v4, v1, v5}, Landroidx/compose/material3/TooltipKt$TooltipBox$scope$1$1$tooltipAnchor$1$1$1;-><init>(Landroidx/compose/ui/input/pointer/PointerEventPass;Lkotlin/coroutines/Continuation;)V

    check-cast v4, Lkotlin/jvm/functions/Function2;

    move-object v8, p0

    check-cast v8, Lkotlin/coroutines/Continuation;

    iput-object p1, p0, Landroidx/compose/material3/TooltipKt$TooltipBox$scope$1$1$tooltipAnchor$1$1;->L$0:Ljava/lang/Object;

    iput-object v1, p0, Landroidx/compose/material3/TooltipKt$TooltipBox$scope$1$1$tooltipAnchor$1$1;->L$1:Ljava/lang/Object;

    iput v3, p0, Landroidx/compose/material3/TooltipKt$TooltipBox$scope$1$1$tooltipAnchor$1$1;->label:I

    invoke-interface {p1, v6, v7, v4, v8}, Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;->withTimeout(JLkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0
    :try_end_1
    .catch Landroidx/compose/ui/input/pointer/PointerEventTimeoutCancellationException; {:try_start_1 .. :try_end_1} :catch_0

    if-ne p0, v0, :cond_6

    return-object v0

    :catch_0
    move-object v3, p1

    :catch_1
    iget-object p1, p0, Landroidx/compose/material3/TooltipKt$TooltipBox$scope$1$1$tooltipAnchor$1$1;->$onLongPress:Lkotlin/jvm/functions/Function0;

    .line 226
    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 229
    move-object p1, p0

    check-cast p1, Lkotlin/coroutines/Continuation;

    iput-object v5, p0, Landroidx/compose/material3/TooltipKt$TooltipBox$scope$1$1$tooltipAnchor$1$1;->L$0:Ljava/lang/Object;

    iput-object v5, p0, Landroidx/compose/material3/TooltipKt$TooltipBox$scope$1$1$tooltipAnchor$1$1;->L$1:Ljava/lang/Object;

    iput v2, p0, Landroidx/compose/material3/TooltipKt$TooltipBox$scope$1$1$tooltipAnchor$1$1;->label:I

    invoke-interface {v3, v1, p1}, Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;->awaitPointerEvent(Landroidx/compose/ui/input/pointer/PointerEventPass;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_5

    return-object v0

    .line 65535
    :cond_5
    :goto_1
    check-cast p1, Landroidx/compose/ui/input/pointer/PointerEvent;

    .line 230
    invoke-virtual {p1}, Landroidx/compose/ui/input/pointer/PointerEvent;->getChanges()Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/lang/Iterable;

    .line 771
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_6

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 230
    invoke-virtual {p1}, Landroidx/compose/ui/input/pointer/PointerInputChange;->consume()V

    goto :goto_2

    .line 232
    :cond_6
    :goto_3
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
