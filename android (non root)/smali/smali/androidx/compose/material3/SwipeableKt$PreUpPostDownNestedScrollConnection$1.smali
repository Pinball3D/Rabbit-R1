.class public final Landroidx/compose/material3/SwipeableKt$PreUpPostDownNestedScrollConnection$1;
.super Ljava/lang/Object;
.source "Swipeable.kt"

# interfaces
.implements Landroidx/compose/ui/input/nestedscroll/NestedScrollConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/material3/SwipeableKt;->getPreUpPostDownNestedScrollConnection(Landroidx/compose/material3/SwipeableState;)Landroidx/compose/ui/input/nestedscroll/NestedScrollConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000)\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0010\u0007\n\u0002\u0008\u0004*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J)\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0005\u001a\u00020\u0003H\u0096@\u00f8\u0001\u0000\u00f8\u0001\u0001\u00f8\u0001\u0001\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J-\u0010\u0008\u001a\u00020\t2\u0006\u0010\u0004\u001a\u00020\t2\u0006\u0010\u0005\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000bH\u0016\u00f8\u0001\u0000\u00f8\u0001\u0001\u00a2\u0006\u0004\u0008\u000c\u0010\rJ!\u0010\u000e\u001a\u00020\u00032\u0006\u0010\u0005\u001a\u00020\u0003H\u0096@\u00f8\u0001\u0000\u00f8\u0001\u0001\u00f8\u0001\u0001\u00a2\u0006\u0004\u0008\u000f\u0010\u0010J%\u0010\u0011\u001a\u00020\t2\u0006\u0010\u0005\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000bH\u0016\u00f8\u0001\u0000\u00f8\u0001\u0001\u00a2\u0006\u0004\u0008\u0012\u0010\u0013J\u0017\u0010\u0014\u001a\u00020\u0015*\u00020\tH\u0002\u00f8\u0001\u0000\u00f8\u0001\u0001\u00a2\u0006\u0002\u0010\u0016J\u001a\u0010\u0017\u001a\u00020\t*\u00020\u0015H\u0002\u00f8\u0001\u0002\u00f8\u0001\u0000\u00f8\u0001\u0001\u00a2\u0006\u0002\u0010\u0018\u0082\u0002\u000f\n\u0005\u0008\u00a1\u001e0\u0001\n\u0002\u0008\u0019\n\u0002\u0008!\u00a8\u0006\u0019"
    }
    d2 = {
        "androidx/compose/material3/SwipeableKt$PreUpPostDownNestedScrollConnection$1",
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
        "onPreFling",
        "onPreFling-QWom1Mo",
        "(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "onPreScroll",
        "onPreScroll-OzD1aCk",
        "(JI)J",
        "toFloat",
        "",
        "(J)F",
        "toOffset",
        "(F)J",
        "material3_release"
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
.field final synthetic $this_PreUpPostDownNestedScrollConnection:Landroidx/compose/material3/SwipeableState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/material3/SwipeableState<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroidx/compose/material3/SwipeableState;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/material3/SwipeableState<",
            "TT;>;)V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/compose/material3/SwipeableKt$PreUpPostDownNestedScrollConnection$1;->$this_PreUpPostDownNestedScrollConnection:Landroidx/compose/material3/SwipeableState;

    .line 844
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final toFloat(J)F
    .locals 0

    .line 884
    invoke-static {p1, p2}, Landroidx/compose/ui/geometry/Offset;->getY-impl(J)F

    move-result p0

    return p0
.end method

.method private final toOffset(F)J
    .locals 0

    const/4 p0, 0x0

    .line 882
    invoke-static {p0, p1}, Landroidx/compose/ui/geometry/OffsetKt;->Offset(FF)J

    move-result-wide p0

    return-wide p0
.end method


# virtual methods
.method public onPostFling-RZ2iAVY(JJLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 4
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

    instance-of p1, p5, Landroidx/compose/material3/SwipeableKt$PreUpPostDownNestedScrollConnection$1$onPostFling$1;

    if-eqz p1, :cond_0

    move-object p1, p5

    check-cast p1, Landroidx/compose/material3/SwipeableKt$PreUpPostDownNestedScrollConnection$1$onPostFling$1;

    iget p2, p1, Landroidx/compose/material3/SwipeableKt$PreUpPostDownNestedScrollConnection$1$onPostFling$1;->label:I

    const/high16 v0, -0x80000000

    and-int/2addr p2, v0

    if-eqz p2, :cond_0

    iget p2, p1, Landroidx/compose/material3/SwipeableKt$PreUpPostDownNestedScrollConnection$1$onPostFling$1;->label:I

    sub-int/2addr p2, v0

    iput p2, p1, Landroidx/compose/material3/SwipeableKt$PreUpPostDownNestedScrollConnection$1$onPostFling$1;->label:I

    goto :goto_0

    :cond_0
    new-instance p1, Landroidx/compose/material3/SwipeableKt$PreUpPostDownNestedScrollConnection$1$onPostFling$1;

    invoke-direct {p1, p0, p5}, Landroidx/compose/material3/SwipeableKt$PreUpPostDownNestedScrollConnection$1$onPostFling$1;-><init>(Landroidx/compose/material3/SwipeableKt$PreUpPostDownNestedScrollConnection$1;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p2, p1, Landroidx/compose/material3/SwipeableKt$PreUpPostDownNestedScrollConnection$1$onPostFling$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object p5

    .line 877
    iget v0, p1, Landroidx/compose/material3/SwipeableKt$PreUpPostDownNestedScrollConnection$1$onPostFling$1;->label:I

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    if-ne v0, v1, :cond_1

    iget-wide p3, p1, Landroidx/compose/material3/SwipeableKt$PreUpPostDownNestedScrollConnection$1$onPostFling$1;->J$0:J

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p2, p0, Landroidx/compose/material3/SwipeableKt$PreUpPostDownNestedScrollConnection$1;->$this_PreUpPostDownNestedScrollConnection:Landroidx/compose/material3/SwipeableState;

    .line 878
    invoke-static {p3, p4}, Landroidx/compose/ui/unit/Velocity;->getX-impl(J)F

    move-result v0

    invoke-static {p3, p4}, Landroidx/compose/ui/unit/Velocity;->getY-impl(J)F

    move-result v2

    invoke-static {v0, v2}, Landroidx/compose/ui/geometry/OffsetKt;->Offset(FF)J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Landroidx/compose/material3/SwipeableKt$PreUpPostDownNestedScrollConnection$1;->toFloat(J)F

    move-result p0

    iput-wide p3, p1, Landroidx/compose/material3/SwipeableKt$PreUpPostDownNestedScrollConnection$1$onPostFling$1;->J$0:J

    iput v1, p1, Landroidx/compose/material3/SwipeableKt$PreUpPostDownNestedScrollConnection$1$onPostFling$1;->label:I

    invoke-virtual {p2, p0, p1}, Landroidx/compose/material3/SwipeableState;->performFling$material3_release(FLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, p5, :cond_3

    return-object p5

    .line 879
    :cond_3
    :goto_1
    invoke-static {p3, p4}, Landroidx/compose/ui/unit/Velocity;->box-impl(J)Landroidx/compose/ui/unit/Velocity;

    move-result-object p0

    return-object p0
.end method

.method public onPostScroll-DzOQY0M(JJI)J
    .locals 0

    .line 859
    sget-object p1, Landroidx/compose/ui/input/nestedscroll/NestedScrollSource;->Companion:Landroidx/compose/ui/input/nestedscroll/NestedScrollSource$Companion;

    invoke-virtual {p1}, Landroidx/compose/ui/input/nestedscroll/NestedScrollSource$Companion;->getDrag-WNlRxjI()I

    move-result p1

    invoke-static {p5, p1}, Landroidx/compose/ui/input/nestedscroll/NestedScrollSource;->equals-impl0(II)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Landroidx/compose/material3/SwipeableKt$PreUpPostDownNestedScrollConnection$1;->$this_PreUpPostDownNestedScrollConnection:Landroidx/compose/material3/SwipeableState;

    .line 860
    invoke-direct {p0, p3, p4}, Landroidx/compose/material3/SwipeableKt$PreUpPostDownNestedScrollConnection$1;->toFloat(J)F

    move-result p2

    invoke-virtual {p1, p2}, Landroidx/compose/material3/SwipeableState;->performDrag$material3_release(F)F

    move-result p1

    invoke-direct {p0, p1}, Landroidx/compose/material3/SwipeableKt$PreUpPostDownNestedScrollConnection$1;->toOffset(F)J

    move-result-wide p0

    goto :goto_0

    .line 862
    :cond_0
    sget-object p0, Landroidx/compose/ui/geometry/Offset;->Companion:Landroidx/compose/ui/geometry/Offset$Companion;

    invoke-virtual {p0}, Landroidx/compose/ui/geometry/Offset$Companion;->getZero-F1C5BW0()J

    move-result-wide p0

    :goto_0
    return-wide p0
.end method

.method public onPreFling-QWom1Mo(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Landroidx/compose/ui/unit/Velocity;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p3, Landroidx/compose/material3/SwipeableKt$PreUpPostDownNestedScrollConnection$1$onPreFling$1;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Landroidx/compose/material3/SwipeableKt$PreUpPostDownNestedScrollConnection$1$onPreFling$1;

    iget v1, v0, Landroidx/compose/material3/SwipeableKt$PreUpPostDownNestedScrollConnection$1$onPreFling$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p3, v0, Landroidx/compose/material3/SwipeableKt$PreUpPostDownNestedScrollConnection$1$onPreFling$1;->label:I

    sub-int/2addr p3, v2

    iput p3, v0, Landroidx/compose/material3/SwipeableKt$PreUpPostDownNestedScrollConnection$1$onPreFling$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Landroidx/compose/material3/SwipeableKt$PreUpPostDownNestedScrollConnection$1$onPreFling$1;

    invoke-direct {v0, p0, p3}, Landroidx/compose/material3/SwipeableKt$PreUpPostDownNestedScrollConnection$1$onPreFling$1;-><init>(Landroidx/compose/material3/SwipeableKt$PreUpPostDownNestedScrollConnection$1;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p3, v0, Landroidx/compose/material3/SwipeableKt$PreUpPostDownNestedScrollConnection$1$onPreFling$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 866
    iget v2, v0, Landroidx/compose/material3/SwipeableKt$PreUpPostDownNestedScrollConnection$1$onPreFling$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-wide p1, v0, Landroidx/compose/material3/SwipeableKt$PreUpPostDownNestedScrollConnection$1$onPreFling$1;->J$0:J

    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 867
    invoke-static {p1, p2}, Landroidx/compose/ui/unit/Velocity;->getX-impl(J)F

    move-result p3

    invoke-static {p1, p2}, Landroidx/compose/ui/unit/Velocity;->getY-impl(J)F

    move-result v2

    invoke-static {p3, v2}, Landroidx/compose/ui/geometry/OffsetKt;->Offset(FF)J

    move-result-wide v4

    invoke-direct {p0, v4, v5}, Landroidx/compose/material3/SwipeableKt$PreUpPostDownNestedScrollConnection$1;->toFloat(J)F

    move-result p3

    const/4 v2, 0x0

    cmpg-float v2, p3, v2

    if-gez v2, :cond_3

    iget-object v2, p0, Landroidx/compose/material3/SwipeableKt$PreUpPostDownNestedScrollConnection$1;->$this_PreUpPostDownNestedScrollConnection:Landroidx/compose/material3/SwipeableState;

    .line 868
    invoke-virtual {v2}, Landroidx/compose/material3/SwipeableState;->getOffset()Landroidx/compose/runtime/State;

    move-result-object v2

    invoke-interface {v2}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->floatValue()F

    move-result v2

    iget-object v4, p0, Landroidx/compose/material3/SwipeableKt$PreUpPostDownNestedScrollConnection$1;->$this_PreUpPostDownNestedScrollConnection:Landroidx/compose/material3/SwipeableState;

    invoke-virtual {v4}, Landroidx/compose/material3/SwipeableState;->getMinBound$material3_release()F

    move-result v4

    cmpl-float v2, v2, v4

    if-lez v2, :cond_3

    iget-object p0, p0, Landroidx/compose/material3/SwipeableKt$PreUpPostDownNestedScrollConnection$1;->$this_PreUpPostDownNestedScrollConnection:Landroidx/compose/material3/SwipeableState;

    .line 869
    iput-wide p1, v0, Landroidx/compose/material3/SwipeableKt$PreUpPostDownNestedScrollConnection$1$onPreFling$1;->J$0:J

    iput v3, v0, Landroidx/compose/material3/SwipeableKt$PreUpPostDownNestedScrollConnection$1$onPreFling$1;->label:I

    invoke-virtual {p0, p3, v0}, Landroidx/compose/material3/SwipeableState;->performFling$material3_release(FLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_4

    return-object v1

    .line 873
    :cond_3
    sget-object p0, Landroidx/compose/ui/unit/Velocity;->Companion:Landroidx/compose/ui/unit/Velocity$Companion;

    invoke-virtual {p0}, Landroidx/compose/ui/unit/Velocity$Companion;->getZero-9UxMQ8M()J

    move-result-wide p1

    :cond_4
    :goto_1
    invoke-static {p1, p2}, Landroidx/compose/ui/unit/Velocity;->box-impl(J)Landroidx/compose/ui/unit/Velocity;

    move-result-object p0

    return-object p0
.end method

.method public onPreScroll-OzD1aCk(JI)J
    .locals 0

    .line 846
    invoke-direct {p0, p1, p2}, Landroidx/compose/material3/SwipeableKt$PreUpPostDownNestedScrollConnection$1;->toFloat(J)F

    move-result p1

    const/4 p2, 0x0

    cmpg-float p2, p1, p2

    if-gez p2, :cond_0

    .line 847
    sget-object p2, Landroidx/compose/ui/input/nestedscroll/NestedScrollSource;->Companion:Landroidx/compose/ui/input/nestedscroll/NestedScrollSource$Companion;

    invoke-virtual {p2}, Landroidx/compose/ui/input/nestedscroll/NestedScrollSource$Companion;->getDrag-WNlRxjI()I

    move-result p2

    invoke-static {p3, p2}, Landroidx/compose/ui/input/nestedscroll/NestedScrollSource;->equals-impl0(II)Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Landroidx/compose/material3/SwipeableKt$PreUpPostDownNestedScrollConnection$1;->$this_PreUpPostDownNestedScrollConnection:Landroidx/compose/material3/SwipeableState;

    .line 848
    invoke-virtual {p2, p1}, Landroidx/compose/material3/SwipeableState;->performDrag$material3_release(F)F

    move-result p1

    invoke-direct {p0, p1}, Landroidx/compose/material3/SwipeableKt$PreUpPostDownNestedScrollConnection$1;->toOffset(F)J

    move-result-wide p0

    goto :goto_0

    .line 850
    :cond_0
    sget-object p0, Landroidx/compose/ui/geometry/Offset;->Companion:Landroidx/compose/ui/geometry/Offset$Companion;

    invoke-virtual {p0}, Landroidx/compose/ui/geometry/Offset$Companion;->getZero-F1C5BW0()J

    move-result-wide p0

    :goto_0
    return-wide p0
.end method
