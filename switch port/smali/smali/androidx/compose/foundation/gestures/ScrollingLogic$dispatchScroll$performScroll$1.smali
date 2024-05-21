.class final Landroidx/compose/foundation/gestures/ScrollingLogic$dispatchScroll$performScroll$1;
.super Lkotlin/jvm/internal/Lambda;
.source "Scrollable.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/foundation/gestures/ScrollingLogic;->dispatchScroll-3eAAhYA(Landroidx/compose/foundation/gestures/ScrollScope;JI)J
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Landroidx/compose/ui/geometry/Offset;",
        "Landroidx/compose/ui/geometry/Offset;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0001H\n\u00a2\u0006\u0004\u0008\u0003\u0010\u0004"
    }
    d2 = {
        "<anonymous>",
        "Landroidx/compose/ui/geometry/Offset;",
        "delta",
        "invoke-MK-Hz9U",
        "(J)J"
    }
    k = 0x3
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $source:I

.field final synthetic $this_dispatchScroll:Landroidx/compose/foundation/gestures/ScrollScope;

.field final synthetic this$0:Landroidx/compose/foundation/gestures/ScrollingLogic;


# direct methods
.method constructor <init>(Landroidx/compose/foundation/gestures/ScrollingLogic;ILandroidx/compose/foundation/gestures/ScrollScope;)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/foundation/gestures/ScrollingLogic$dispatchScroll$performScroll$1;->this$0:Landroidx/compose/foundation/gestures/ScrollingLogic;

    iput p2, p0, Landroidx/compose/foundation/gestures/ScrollingLogic$dispatchScroll$performScroll$1;->$source:I

    iput-object p3, p0, Landroidx/compose/foundation/gestures/ScrollingLogic$dispatchScroll$performScroll$1;->$this_dispatchScroll:Landroidx/compose/foundation/gestures/ScrollScope;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 417
    check-cast p1, Landroidx/compose/ui/geometry/Offset;

    invoke-virtual {p1}, Landroidx/compose/ui/geometry/Offset;->unbox-impl()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Landroidx/compose/foundation/gestures/ScrollingLogic$dispatchScroll$performScroll$1;->invoke-MK-Hz9U(J)J

    move-result-wide p0

    invoke-static {p0, p1}, Landroidx/compose/ui/geometry/Offset;->box-impl(J)Landroidx/compose/ui/geometry/Offset;

    move-result-object p0

    return-object p0
.end method

.method public final invoke-MK-Hz9U(J)J
    .locals 11

    iget-object v0, p0, Landroidx/compose/foundation/gestures/ScrollingLogic$dispatchScroll$performScroll$1;->this$0:Landroidx/compose/foundation/gestures/ScrollingLogic;

    .line 418
    invoke-virtual {v0}, Landroidx/compose/foundation/gestures/ScrollingLogic;->getNestedScrollDispatcher()Landroidx/compose/runtime/State;

    move-result-object v0

    invoke-interface {v0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroidx/compose/ui/input/nestedscroll/NestedScrollDispatcher;

    iget v0, p0, Landroidx/compose/foundation/gestures/ScrollingLogic$dispatchScroll$performScroll$1;->$source:I

    .line 420
    invoke-virtual {v1, p1, p2, v0}, Landroidx/compose/ui/input/nestedscroll/NestedScrollDispatcher;->dispatchPreScroll-OzD1aCk(JI)J

    move-result-wide v7

    .line 422
    invoke-static {p1, p2, v7, v8}, Landroidx/compose/ui/geometry/Offset;->minus-MK-Hz9U(JJ)J

    move-result-wide p1

    iget-object v0, p0, Landroidx/compose/foundation/gestures/ScrollingLogic$dispatchScroll$performScroll$1;->this$0:Landroidx/compose/foundation/gestures/ScrollingLogic;

    iget-object v2, p0, Landroidx/compose/foundation/gestures/ScrollingLogic$dispatchScroll$performScroll$1;->$this_dispatchScroll:Landroidx/compose/foundation/gestures/ScrollScope;

    .line 425
    invoke-virtual {v0, p1, p2}, Landroidx/compose/foundation/gestures/ScrollingLogic;->reverseIfNeeded-MK-Hz9U(J)J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Landroidx/compose/foundation/gestures/ScrollingLogic;->toFloat-k-4lQ0M(J)F

    move-result v3

    invoke-interface {v2, v3}, Landroidx/compose/foundation/gestures/ScrollScope;->scrollBy(F)F

    move-result v2

    invoke-virtual {v0, v2}, Landroidx/compose/foundation/gestures/ScrollingLogic;->toOffset-tuRUvjQ(F)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Landroidx/compose/foundation/gestures/ScrollingLogic;->reverseIfNeeded-MK-Hz9U(J)J

    move-result-wide v9

    .line 427
    invoke-static {p1, p2, v9, v10}, Landroidx/compose/ui/geometry/Offset;->minus-MK-Hz9U(JJ)J

    move-result-wide v4

    iget v6, p0, Landroidx/compose/foundation/gestures/ScrollingLogic$dispatchScroll$performScroll$1;->$source:I

    move-wide v2, v9

    .line 428
    invoke-virtual/range {v1 .. v6}, Landroidx/compose/ui/input/nestedscroll/NestedScrollDispatcher;->dispatchPostScroll-DzOQY0M(JJI)J

    move-result-wide p0

    .line 434
    invoke-static {v7, v8, v9, v10}, Landroidx/compose/ui/geometry/Offset;->plus-MK-Hz9U(JJ)J

    move-result-wide v0

    invoke-static {v0, v1, p0, p1}, Landroidx/compose/ui/geometry/Offset;->plus-MK-Hz9U(JJ)J

    move-result-wide p0

    return-wide p0
.end method
