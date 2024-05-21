.class public final Landroidx/compose/foundation/gestures/ScrollableKt$scrollableNestedScrollConnection$1;
.super Ljava/lang/Object;
.source "Scrollable.kt"

# interfaces
.implements Landroidx/compose/ui/input/nestedscroll/NestedScrollConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/foundation/gestures/ScrollableKt;->scrollableNestedScrollConnection(Landroidx/compose/runtime/State;Z)Landroidx/compose/ui/input/nestedscroll/NestedScrollConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000!\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J)\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0005\u001a\u00020\u0003H\u0096@\u00f8\u0001\u0000\u00f8\u0001\u0001\u00f8\u0001\u0001\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J-\u0010\u0008\u001a\u00020\t2\u0006\u0010\u0004\u001a\u00020\t2\u0006\u0010\u0005\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000bH\u0016\u00f8\u0001\u0000\u00f8\u0001\u0001\u00a2\u0006\u0004\u0008\u000c\u0010\rJ%\u0010\u000e\u001a\u00020\t2\u0006\u0010\u0005\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000bH\u0016\u00f8\u0001\u0000\u00f8\u0001\u0001\u00a2\u0006\u0004\u0008\u000f\u0010\u0010\u0082\u0002\u000b\n\u0005\u0008\u00a1\u001e0\u0001\n\u0002\u0008\u0019\u00a8\u0006\u0011"
    }
    d2 = {
        "androidx/compose/foundation/gestures/ScrollableKt$scrollableNestedScrollConnection$1",
        "Landroidx/compose/ui/input/nestedscroll/NestedScrollConnection;",
        "onPostFling",
        "Landroidx/compose/ui/unit/Velocity;",
        "consumed",
        "available",
        "onPostFling-RZ2iAVY",
        "(JJLkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "onPostScroll",
        "Landroidx/compose/ui/geometry/Offset;",
        "source",
        "Landroidx/compose/ui/input/nestedscroll/NestedScrollSource;",
        "onPostScroll-DzOQY0M",
        "(JJI)J",
        "onPreScroll",
        "onPreScroll-OzD1aCk",
        "(JI)J",
        "foundation_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $enabled:Z

.field final synthetic $scrollLogic:Landroidx/compose/runtime/State;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/State<",
            "Landroidx/compose/foundation/gestures/ScrollingLogic;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroidx/compose/runtime/State;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/State<",
            "Landroidx/compose/foundation/gestures/ScrollingLogic;",
            ">;Z)V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/compose/foundation/gestures/ScrollableKt$scrollableNestedScrollConnection$1;->$scrollLogic:Landroidx/compose/runtime/State;

    iput-boolean p2, p0, Landroidx/compose/foundation/gestures/ScrollableKt$scrollableNestedScrollConnection$1;->$enabled:Z

    .line 550
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPostFling-RZ2iAVY(JJLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Landroidx/compose/ui/unit/Velocity;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of p1, p5, Landroidx/compose/foundation/gestures/ScrollableKt$scrollableNestedScrollConnection$1$onPostFling$1;

    if-eqz p1, :cond_0

    move-object p1, p5

    check-cast p1, Landroidx/compose/foundation/gestures/ScrollableKt$scrollableNestedScrollConnection$1$onPostFling$1;

    iget p2, p1, Landroidx/compose/foundation/gestures/ScrollableKt$scrollableNestedScrollConnection$1$onPostFling$1;->label:I

    const/high16 v0, -0x80000000

    and-int/2addr p2, v0

    if-eqz p2, :cond_0

    iget p2, p1, Landroidx/compose/foundation/gestures/ScrollableKt$scrollableNestedScrollConnection$1$onPostFling$1;->label:I

    sub-int/2addr p2, v0

    iput p2, p1, Landroidx/compose/foundation/gestures/ScrollableKt$scrollableNestedScrollConnection$1$onPostFling$1;->label:I

    goto :goto_0

    :cond_0
    new-instance p1, Landroidx/compose/foundation/gestures/ScrollableKt$scrollableNestedScrollConnection$1$onPostFling$1;

    invoke-direct {p1, p0, p5}, Landroidx/compose/foundation/gestures/ScrollableKt$scrollableNestedScrollConnection$1$onPostFling$1;-><init>(Landroidx/compose/foundation/gestures/ScrollableKt$scrollableNestedScrollConnection$1;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p2, p1, Landroidx/compose/foundation/gestures/ScrollableKt$scrollableNestedScrollConnection$1$onPostFling$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object p5

    .line 569
    iget v0, p1, Landroidx/compose/foundation/gestures/ScrollableKt$scrollableNestedScrollConnection$1$onPostFling$1;->label:I

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    if-ne v0, v1, :cond_1

    iget-wide p3, p1, Landroidx/compose/foundation/gestures/ScrollableKt$scrollableNestedScrollConnection$1$onPostFling$1;->J$0:J

    iget-object p0, p1, Landroidx/compose/foundation/gestures/ScrollableKt$scrollableNestedScrollConnection$1$onPostFling$1;->L$0:Ljava/lang/Object;

    check-cast p0, Landroidx/compose/foundation/gestures/ScrollableKt$scrollableNestedScrollConnection$1;

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-boolean p2, p0, Landroidx/compose/foundation/gestures/ScrollableKt$scrollableNestedScrollConnection$1;->$enabled:Z

    if-eqz p2, :cond_4

    iget-object p2, p0, Landroidx/compose/foundation/gestures/ScrollableKt$scrollableNestedScrollConnection$1;->$scrollLogic:Landroidx/compose/runtime/State;

    .line 574
    invoke-interface {p2}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroidx/compose/foundation/gestures/ScrollingLogic;

    iput-object p0, p1, Landroidx/compose/foundation/gestures/ScrollableKt$scrollableNestedScrollConnection$1$onPostFling$1;->L$0:Ljava/lang/Object;

    iput-wide p3, p1, Landroidx/compose/foundation/gestures/ScrollableKt$scrollableNestedScrollConnection$1$onPostFling$1;->J$0:J

    iput v1, p1, Landroidx/compose/foundation/gestures/ScrollableKt$scrollableNestedScrollConnection$1$onPostFling$1;->label:I

    invoke-virtual {p2, p3, p4, p1}, Landroidx/compose/foundation/gestures/ScrollingLogic;->doFlingAnimation-QWom1Mo(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, p5, :cond_3

    return-object p5

    :cond_3
    :goto_1
    check-cast p2, Landroidx/compose/ui/unit/Velocity;

    invoke-virtual {p2}, Landroidx/compose/ui/unit/Velocity;->unbox-impl()J

    move-result-wide p1

    .line 575
    invoke-static {p3, p4, p1, p2}, Landroidx/compose/ui/unit/Velocity;->minus-AH228Gc(JJ)J

    move-result-wide p1

    goto :goto_2

    .line 577
    :cond_4
    sget-object p1, Landroidx/compose/ui/unit/Velocity;->Companion:Landroidx/compose/ui/unit/Velocity$Companion;

    invoke-virtual {p1}, Landroidx/compose/ui/unit/Velocity$Companion;->getZero-9UxMQ8M()J

    move-result-wide p1

    :goto_2
    invoke-static {p1, p2}, Landroidx/compose/ui/unit/Velocity;->box-impl(J)Landroidx/compose/ui/unit/Velocity;

    move-result-object p1

    .line 578
    iget-object p0, p0, Landroidx/compose/foundation/gestures/ScrollableKt$scrollableNestedScrollConnection$1;->$scrollLogic:Landroidx/compose/runtime/State;

    invoke-virtual {p1}, Landroidx/compose/ui/unit/Velocity;->unbox-impl()J

    .line 580
    invoke-interface {p0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/compose/foundation/gestures/ScrollingLogic;

    const/4 p2, 0x0

    invoke-virtual {p0, p2}, Landroidx/compose/foundation/gestures/ScrollingLogic;->registerNestedFling(Z)V

    return-object p1
.end method

.method public onPostScroll-DzOQY0M(JJI)J
    .locals 0

    iget-boolean p1, p0, Landroidx/compose/foundation/gestures/ScrollableKt$scrollableNestedScrollConnection$1;->$enabled:Z

    if-eqz p1, :cond_0

    iget-object p0, p0, Landroidx/compose/foundation/gestures/ScrollableKt$scrollableNestedScrollConnection$1;->$scrollLogic:Landroidx/compose/runtime/State;

    .line 564
    invoke-interface {p0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/compose/foundation/gestures/ScrollingLogic;

    invoke-virtual {p0, p3, p4}, Landroidx/compose/foundation/gestures/ScrollingLogic;->performRawScroll-MK-Hz9U(J)J

    move-result-wide p0

    goto :goto_0

    .line 566
    :cond_0
    sget-object p0, Landroidx/compose/ui/geometry/Offset;->Companion:Landroidx/compose/ui/geometry/Offset$Companion;

    invoke-virtual {p0}, Landroidx/compose/ui/geometry/Offset$Companion;->getZero-F1C5BW0()J

    move-result-wide p0

    :goto_0
    return-wide p0
.end method

.method public onPreScroll-OzD1aCk(JI)J
    .locals 0

    .line 553
    sget-object p1, Landroidx/compose/ui/input/nestedscroll/NestedScrollSource;->Companion:Landroidx/compose/ui/input/nestedscroll/NestedScrollSource$Companion;

    invoke-virtual {p1}, Landroidx/compose/ui/input/nestedscroll/NestedScrollSource$Companion;->getFling-WNlRxjI()I

    move-result p1

    invoke-static {p3, p1}, Landroidx/compose/ui/input/nestedscroll/NestedScrollSource;->equals-impl0(II)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Landroidx/compose/foundation/gestures/ScrollableKt$scrollableNestedScrollConnection$1;->$scrollLogic:Landroidx/compose/runtime/State;

    .line 554
    invoke-interface {p0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/compose/foundation/gestures/ScrollingLogic;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroidx/compose/foundation/gestures/ScrollingLogic;->registerNestedFling(Z)V

    .line 556
    :cond_0
    sget-object p0, Landroidx/compose/ui/geometry/Offset;->Companion:Landroidx/compose/ui/geometry/Offset$Companion;

    invoke-virtual {p0}, Landroidx/compose/ui/geometry/Offset$Companion;->getZero-F1C5BW0()J

    move-result-wide p0

    return-wide p0
.end method
