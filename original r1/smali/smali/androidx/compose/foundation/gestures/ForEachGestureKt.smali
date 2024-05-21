.class public final Landroidx/compose/foundation/gestures/ForEachGestureKt;
.super Ljava/lang/Object;
.source "ForEachGesture.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nForEachGesture.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ForEachGesture.kt\nandroidx/compose/foundation/gestures/ForEachGestureKt\n+ 2 CoroutineScope.kt\nkotlinx/coroutines/CoroutineScopeKt\n+ 3 ListUtils.kt\nandroidx/compose/ui/util/ListUtilsKt\n*L\n1#1,121:1\n329#2:122\n329#2:141\n101#3,2:123\n33#3,6:125\n103#3:131\n101#3,2:132\n33#3,6:134\n103#3:140\n*S KotlinDebug\n*F\n+ 1 ForEachGesture.kt\nandroidx/compose/foundation/gestures/ForEachGestureKt\n*L\n45#1:122\n100#1:141\n71#1:123,2\n71#1:125,6\n71#1:131\n87#1:132,2\n87#1:134,6\n87#1:140\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0000\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u001a\u000c\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u0000\u001a\u0015\u0010\u0003\u001a\u00020\u0004*\u00020\u0002H\u0080@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u0005\u001a\u0015\u0010\u0003\u001a\u00020\u0004*\u00020\u0006H\u0080@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u0007\u001a>\u0010\u0008\u001a\u00020\u0004*\u00020\u00062\'\u0010\t\u001a#\u0008\u0001\u0012\u0004\u0012\u00020\u0002\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00040\u000b\u0012\u0006\u0012\u0004\u0018\u00010\u000c0\n\u00a2\u0006\u0002\u0008\rH\u0086@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u000e\u001a>\u0010\u000f\u001a\u00020\u0004*\u00020\u00062\'\u0010\t\u001a#\u0008\u0001\u0012\u0004\u0012\u00020\u0006\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00040\u000b\u0012\u0006\u0012\u0004\u0018\u00010\u000c0\n\u00a2\u0006\u0002\u0008\rH\u0087@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u000e\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006\u0010"
    }
    d2 = {
        "allPointersUp",
        "",
        "Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;",
        "awaitAllPointersUp",
        "",
        "(Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "Landroidx/compose/ui/input/pointer/PointerInputScope;",
        "(Landroidx/compose/ui/input/pointer/PointerInputScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "awaitEachGesture",
        "block",
        "Lkotlin/Function2;",
        "Lkotlin/coroutines/Continuation;",
        "",
        "Lkotlin/ExtensionFunctionType;",
        "(Landroidx/compose/ui/input/pointer/PointerInputScope;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "forEachGesture",
        "foundation_release"
    }
    k = 0x2
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static final allPointersUp(Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;)Z
    .locals 5

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 71
    invoke-interface {p0}, Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;->getCurrentEvent()Landroidx/compose/ui/input/pointer/PointerEvent;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/compose/ui/input/pointer/PointerEvent;->getChanges()Ljava/util/List;

    move-result-object p0

    .line 126
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    const/4 v3, 0x1

    if-ge v2, v0, :cond_1

    .line 127
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    .line 124
    check-cast v4, Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 71
    invoke-virtual {v4}, Landroidx/compose/ui/input/pointer/PointerInputChange;->getPressed()Z

    move-result v4

    if-eqz v4, :cond_0

    move v1, v3

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    xor-int/lit8 p0, v1, 0x1

    return p0
.end method

.method public static final awaitAllPointersUp(Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 6
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

    instance-of v0, p1, Landroidx/compose/foundation/gestures/ForEachGestureKt$awaitAllPointersUp$3;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Landroidx/compose/foundation/gestures/ForEachGestureKt$awaitAllPointersUp$3;

    iget v1, v0, Landroidx/compose/foundation/gestures/ForEachGestureKt$awaitAllPointersUp$3;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p1, v0, Landroidx/compose/foundation/gestures/ForEachGestureKt$awaitAllPointersUp$3;->label:I

    sub-int/2addr p1, v2

    iput p1, v0, Landroidx/compose/foundation/gestures/ForEachGestureKt$awaitAllPointersUp$3;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Landroidx/compose/foundation/gestures/ForEachGestureKt$awaitAllPointersUp$3;

    invoke-direct {v0, p1}, Landroidx/compose/foundation/gestures/ForEachGestureKt$awaitAllPointersUp$3;-><init>(Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p1, v0, Landroidx/compose/foundation/gestures/ForEachGestureKt$awaitAllPointersUp$3;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 83
    iget v2, v0, Landroidx/compose/foundation/gestures/ForEachGestureKt$awaitAllPointersUp$3;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p0, v0, Landroidx/compose/foundation/gestures/ForEachGestureKt$awaitAllPointersUp$3;->L$0:Ljava/lang/Object;

    check-cast p0, Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_2

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 84
    invoke-static {p0}, Landroidx/compose/foundation/gestures/ForEachGestureKt;->allPointersUp(Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;)Z

    move-result p1

    if-nez p1, :cond_5

    .line 86
    :goto_1
    sget-object p1, Landroidx/compose/ui/input/pointer/PointerEventPass;->Final:Landroidx/compose/ui/input/pointer/PointerEventPass;

    iput-object p0, v0, Landroidx/compose/foundation/gestures/ForEachGestureKt$awaitAllPointersUp$3;->L$0:Ljava/lang/Object;

    iput v3, v0, Landroidx/compose/foundation/gestures/ForEachGestureKt$awaitAllPointersUp$3;->label:I

    invoke-interface {p0, p1, v0}, Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;->awaitPointerEvent(Landroidx/compose/ui/input/pointer/PointerEventPass;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_3

    return-object v1

    .line 83
    :cond_3
    :goto_2
    check-cast p1, Landroidx/compose/ui/input/pointer/PointerEvent;

    .line 87
    invoke-virtual {p1}, Landroidx/compose/ui/input/pointer/PointerEvent;->getChanges()Ljava/util/List;

    move-result-object p1

    .line 135
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v4, 0x0

    :goto_3
    if-ge v4, v2, :cond_5

    .line 136
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    .line 133
    check-cast v5, Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 87
    invoke-virtual {v5}, Landroidx/compose/ui/input/pointer/PointerInputChange;->getPressed()Z

    move-result v5

    if-eqz v5, :cond_4

    goto :goto_1

    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 89
    :cond_5
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public static final awaitAllPointersUp(Landroidx/compose/ui/input/pointer/PointerInputScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/input/pointer/PointerInputScope;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 77
    new-instance v0, Landroidx/compose/foundation/gestures/ForEachGestureKt$awaitAllPointersUp$2;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/compose/foundation/gestures/ForEachGestureKt$awaitAllPointersUp$2;-><init>(Lkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/jvm/functions/Function2;

    invoke-interface {p0, v0, p1}, Landroidx/compose/ui/input/pointer/PointerInputScope;->awaitPointerEventScope(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object p1

    if-ne p0, p1, :cond_0

    return-object p0

    :cond_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public static final awaitEachGesture(Landroidx/compose/ui/input/pointer/PointerInputScope;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/input/pointer/PointerInputScope;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;",
            "-",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;+",
            "Ljava/lang/Object;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 141
    invoke-interface {p2}, Lkotlin/coroutines/Continuation;->getContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object v0

    .line 101
    new-instance v1, Landroidx/compose/foundation/gestures/ForEachGestureKt$awaitEachGesture$2;

    const/4 v2, 0x0

    invoke-direct {v1, v0, p1, v2}, Landroidx/compose/foundation/gestures/ForEachGestureKt$awaitEachGesture$2;-><init>(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    invoke-interface {p0, v1, p2}, Landroidx/compose/ui/input/pointer/PointerInputScope;->awaitPointerEventScope(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object p1

    if-ne p0, p1, :cond_0

    return-object p0

    :cond_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public static final forEachGesture(Landroidx/compose/ui/input/pointer/PointerInputScope;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/input/pointer/PointerInputScope;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroidx/compose/ui/input/pointer/PointerInputScope;",
            "-",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;+",
            "Ljava/lang/Object;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation runtime Lkotlin/Deprecated;
        message = "Use awaitEachGesture instead. forEachGesture() can drop events between gestures."
        replaceWith = .subannotation Lkotlin/ReplaceWith;
            expression = "awaitEachGesture(block)"
            imports = {}
        .end subannotation
    .end annotation

    instance-of v0, p2, Landroidx/compose/foundation/gestures/ForEachGestureKt$forEachGesture$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Landroidx/compose/foundation/gestures/ForEachGestureKt$forEachGesture$1;

    iget v1, v0, Landroidx/compose/foundation/gestures/ForEachGestureKt$forEachGesture$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p2, v0, Landroidx/compose/foundation/gestures/ForEachGestureKt$forEachGesture$1;->label:I

    sub-int/2addr p2, v2

    iput p2, v0, Landroidx/compose/foundation/gestures/ForEachGestureKt$forEachGesture$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Landroidx/compose/foundation/gestures/ForEachGestureKt$forEachGesture$1;

    invoke-direct {v0, p2}, Landroidx/compose/foundation/gestures/ForEachGestureKt$forEachGesture$1;-><init>(Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p2, v0, Landroidx/compose/foundation/gestures/ForEachGestureKt$forEachGesture$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 44
    iget v2, v0, Landroidx/compose/foundation/gestures/ForEachGestureKt$forEachGesture$1;->label:I

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eqz v2, :cond_5

    if-eq v2, v5, :cond_4

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p0, v0, Landroidx/compose/foundation/gestures/ForEachGestureKt$forEachGesture$1;->L$2:Ljava/lang/Object;

    check-cast p0, Lkotlin/coroutines/CoroutineContext;

    iget-object p1, v0, Landroidx/compose/foundation/gestures/ForEachGestureKt$forEachGesture$1;->L$1:Ljava/lang/Object;

    check-cast p1, Lkotlin/jvm/functions/Function2;

    iget-object v2, v0, Landroidx/compose/foundation/gestures/ForEachGestureKt$forEachGesture$1;->L$0:Ljava/lang/Object;

    check-cast v2, Landroidx/compose/ui/input/pointer/PointerInputScope;

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    iget-object p0, v0, Landroidx/compose/foundation/gestures/ForEachGestureKt$forEachGesture$1;->L$2:Ljava/lang/Object;

    check-cast p0, Lkotlin/coroutines/CoroutineContext;

    iget-object p1, v0, Landroidx/compose/foundation/gestures/ForEachGestureKt$forEachGesture$1;->L$1:Ljava/lang/Object;

    check-cast p1, Lkotlin/jvm/functions/Function2;

    iget-object v2, v0, Landroidx/compose/foundation/gestures/ForEachGestureKt$forEachGesture$1;->L$0:Ljava/lang/Object;

    check-cast v2, Landroidx/compose/ui/input/pointer/PointerInputScope;

    :try_start_0
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    :goto_1
    move-object p2, p0

    move-object p0, v2

    goto :goto_2

    :cond_4
    iget-object p0, v0, Landroidx/compose/foundation/gestures/ForEachGestureKt$forEachGesture$1;->L$2:Ljava/lang/Object;

    check-cast p0, Lkotlin/coroutines/CoroutineContext;

    iget-object p1, v0, Landroidx/compose/foundation/gestures/ForEachGestureKt$forEachGesture$1;->L$1:Ljava/lang/Object;

    check-cast p1, Lkotlin/jvm/functions/Function2;

    iget-object v2, v0, Landroidx/compose/foundation/gestures/ForEachGestureKt$forEachGesture$1;->L$0:Ljava/lang/Object;

    check-cast v2, Landroidx/compose/ui/input/pointer/PointerInputScope;

    :try_start_1
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/util/concurrent/CancellationException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    :catch_0
    move-exception p2

    goto :goto_4

    :cond_5
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 122
    invoke-interface {v0}, Lkotlin/coroutines/Continuation;->getContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object p2

    .line 46
    :goto_2
    invoke-static {p2}, Lkotlinx/coroutines/JobKt;->isActive(Lkotlin/coroutines/CoroutineContext;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 48
    :try_start_2
    iput-object p0, v0, Landroidx/compose/foundation/gestures/ForEachGestureKt$forEachGesture$1;->L$0:Ljava/lang/Object;

    iput-object p1, v0, Landroidx/compose/foundation/gestures/ForEachGestureKt$forEachGesture$1;->L$1:Ljava/lang/Object;

    iput-object p2, v0, Landroidx/compose/foundation/gestures/ForEachGestureKt$forEachGesture$1;->L$2:Ljava/lang/Object;

    iput v5, v0, Landroidx/compose/foundation/gestures/ForEachGestureKt$forEachGesture$1;->label:I

    invoke-interface {p1, p0, v0}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2
    :try_end_2
    .catch Ljava/util/concurrent/CancellationException; {:try_start_2 .. :try_end_2} :catch_1

    if-ne v2, v1, :cond_6

    return-object v1

    :cond_6
    move-object v2, p0

    move-object p0, p2

    .line 51
    :goto_3
    :try_start_3
    iput-object v2, v0, Landroidx/compose/foundation/gestures/ForEachGestureKt$forEachGesture$1;->L$0:Ljava/lang/Object;

    iput-object p1, v0, Landroidx/compose/foundation/gestures/ForEachGestureKt$forEachGesture$1;->L$1:Ljava/lang/Object;

    iput-object p0, v0, Landroidx/compose/foundation/gestures/ForEachGestureKt$forEachGesture$1;->L$2:Ljava/lang/Object;

    iput v4, v0, Landroidx/compose/foundation/gestures/ForEachGestureKt$forEachGesture$1;->label:I

    invoke-static {v2, v0}, Landroidx/compose/foundation/gestures/ForEachGestureKt;->awaitAllPointersUp(Landroidx/compose/ui/input/pointer/PointerInputScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2
    :try_end_3
    .catch Ljava/util/concurrent/CancellationException; {:try_start_3 .. :try_end_3} :catch_0

    if-ne p2, v1, :cond_3

    return-object v1

    :catch_1
    move-exception v2

    move-object v7, v2

    move-object v2, p0

    move-object p0, p2

    move-object p2, v7

    .line 53
    :goto_4
    invoke-static {p0}, Lkotlinx/coroutines/JobKt;->isActive(Lkotlin/coroutines/CoroutineContext;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 56
    iput-object v2, v0, Landroidx/compose/foundation/gestures/ForEachGestureKt$forEachGesture$1;->L$0:Ljava/lang/Object;

    iput-object p1, v0, Landroidx/compose/foundation/gestures/ForEachGestureKt$forEachGesture$1;->L$1:Ljava/lang/Object;

    iput-object p0, v0, Landroidx/compose/foundation/gestures/ForEachGestureKt$forEachGesture$1;->L$2:Ljava/lang/Object;

    iput v3, v0, Landroidx/compose/foundation/gestures/ForEachGestureKt$forEachGesture$1;->label:I

    invoke-static {v2, v0}, Landroidx/compose/foundation/gestures/ForEachGestureKt;->awaitAllPointersUp(Landroidx/compose/ui/input/pointer/PointerInputScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_3

    return-object v1

    .line 60
    :cond_7
    throw p2

    .line 64
    :cond_8
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
