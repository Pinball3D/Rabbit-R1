.class final Landroidx/compose/foundation/gestures/DraggableKt$awaitDownAndSlop$postPointerSlop$1;
.super Lkotlin/jvm/internal/Lambda;
.source "Draggable.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/foundation/gestures/DraggableKt;->awaitDownAndSlop(Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/input/pointer/util/VelocityTracker;Landroidx/compose/foundation/gestures/Orientation;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Landroidx/compose/ui/input/pointer/PointerInputChange;",
        "Landroidx/compose/ui/geometry/Offset;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0016\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\n\u00a2\u0006\u0004\u0008\u0006\u0010\u0007"
    }
    d2 = {
        "<anonymous>",
        "",
        "event",
        "Landroidx/compose/ui/input/pointer/PointerInputChange;",
        "offset",
        "Landroidx/compose/ui/geometry/Offset;",
        "invoke-Uv8p0NA",
        "(Landroidx/compose/ui/input/pointer/PointerInputChange;J)V"
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
.field final synthetic $initialDelta:Lkotlin/jvm/internal/Ref$LongRef;

.field final synthetic $velocityTracker:Landroidx/compose/ui/input/pointer/util/VelocityTracker;


# direct methods
.method constructor <init>(Landroidx/compose/ui/input/pointer/util/VelocityTracker;Lkotlin/jvm/internal/Ref$LongRef;)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/foundation/gestures/DraggableKt$awaitDownAndSlop$postPointerSlop$1;->$velocityTracker:Landroidx/compose/ui/input/pointer/util/VelocityTracker;

    iput-object p2, p0, Landroidx/compose/foundation/gestures/DraggableKt$awaitDownAndSlop$postPointerSlop$1;->$initialDelta:Lkotlin/jvm/internal/Ref$LongRef;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 484
    check-cast p1, Landroidx/compose/ui/input/pointer/PointerInputChange;

    check-cast p2, Landroidx/compose/ui/geometry/Offset;

    invoke-virtual {p2}, Landroidx/compose/ui/geometry/Offset;->unbox-impl()J

    move-result-wide v0

    invoke-virtual {p0, p1, v0, v1}, Landroidx/compose/foundation/gestures/DraggableKt$awaitDownAndSlop$postPointerSlop$1;->invoke-Uv8p0NA(Landroidx/compose/ui/input/pointer/PointerInputChange;J)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final invoke-Uv8p0NA(Landroidx/compose/ui/input/pointer/PointerInputChange;J)V
    .locals 1

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/compose/foundation/gestures/DraggableKt$awaitDownAndSlop$postPointerSlop$1;->$velocityTracker:Landroidx/compose/ui/input/pointer/util/VelocityTracker;

    .line 485
    invoke-static {v0, p1}, Landroidx/compose/ui/input/pointer/util/VelocityTrackerKt;->addPointerInputChange(Landroidx/compose/ui/input/pointer/util/VelocityTracker;Landroidx/compose/ui/input/pointer/PointerInputChange;)V

    .line 486
    invoke-virtual {p1}, Landroidx/compose/ui/input/pointer/PointerInputChange;->consume()V

    iget-object p0, p0, Landroidx/compose/foundation/gestures/DraggableKt$awaitDownAndSlop$postPointerSlop$1;->$initialDelta:Lkotlin/jvm/internal/Ref$LongRef;

    .line 487
    iput-wide p2, p0, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    return-void
.end method
