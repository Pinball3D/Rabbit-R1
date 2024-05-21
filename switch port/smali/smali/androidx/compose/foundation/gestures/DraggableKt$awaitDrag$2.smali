.class final Landroidx/compose/foundation/gestures/DraggableKt$awaitDrag$2;
.super Lkotlin/jvm/internal/Lambda;
.source "Draggable.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/foundation/gestures/DraggableKt;->awaitDrag-Su4bsnU(Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;Landroidx/compose/ui/input/pointer/PointerInputChange;JLandroidx/compose/ui/input/pointer/util/VelocityTracker;Lkotlinx/coroutines/channels/SendChannel;ZLandroidx/compose/foundation/gestures/Orientation;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Landroidx/compose/ui/input/pointer/PointerInputChange;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<anonymous>",
        "",
        "event",
        "Landroidx/compose/ui/input/pointer/PointerInputChange;",
        "invoke"
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
.field final synthetic $channel:Lkotlinx/coroutines/channels/SendChannel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/channels/SendChannel<",
            "Landroidx/compose/foundation/gestures/DragEvent;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $reverseDirection:Z

.field final synthetic $velocityTracker:Landroidx/compose/ui/input/pointer/util/VelocityTracker;


# direct methods
.method constructor <init>(Landroidx/compose/ui/input/pointer/util/VelocityTracker;Lkotlinx/coroutines/channels/SendChannel;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/input/pointer/util/VelocityTracker;",
            "Lkotlinx/coroutines/channels/SendChannel<",
            "-",
            "Landroidx/compose/foundation/gestures/DragEvent;",
            ">;Z)V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/compose/foundation/gestures/DraggableKt$awaitDrag$2;->$velocityTracker:Landroidx/compose/ui/input/pointer/util/VelocityTracker;

    iput-object p2, p0, Landroidx/compose/foundation/gestures/DraggableKt$awaitDrag$2;->$channel:Lkotlinx/coroutines/channels/SendChannel;

    iput-boolean p3, p0, Landroidx/compose/foundation/gestures/DraggableKt$awaitDrag$2;->$reverseDirection:Z

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 519
    check-cast p1, Landroidx/compose/ui/input/pointer/PointerInputChange;

    invoke-virtual {p0, p1}, Landroidx/compose/foundation/gestures/DraggableKt$awaitDrag$2;->invoke(Landroidx/compose/ui/input/pointer/PointerInputChange;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final invoke(Landroidx/compose/ui/input/pointer/PointerInputChange;)V
    .locals 3

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/compose/foundation/gestures/DraggableKt$awaitDrag$2;->$velocityTracker:Landroidx/compose/ui/input/pointer/util/VelocityTracker;

    .line 521
    invoke-static {v0, p1}, Landroidx/compose/ui/input/pointer/util/VelocityTrackerKt;->addPointerInputChange(Landroidx/compose/ui/input/pointer/util/VelocityTracker;Landroidx/compose/ui/input/pointer/PointerInputChange;)V

    .line 524
    invoke-static {p1}, Landroidx/compose/ui/input/pointer/PointerEventKt;->changedToUpIgnoreConsumed(Landroidx/compose/ui/input/pointer/PointerInputChange;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 525
    invoke-static {p1}, Landroidx/compose/ui/input/pointer/PointerEventKt;->positionChange(Landroidx/compose/ui/input/pointer/PointerInputChange;)J

    move-result-wide v0

    .line 526
    invoke-virtual {p1}, Landroidx/compose/ui/input/pointer/PointerInputChange;->consume()V

    iget-object p1, p0, Landroidx/compose/foundation/gestures/DraggableKt$awaitDrag$2;->$channel:Lkotlinx/coroutines/channels/SendChannel;

    .line 527
    new-instance v2, Landroidx/compose/foundation/gestures/DragEvent$DragDelta;

    iget-boolean p0, p0, Landroidx/compose/foundation/gestures/DraggableKt$awaitDrag$2;->$reverseDirection:Z

    if-eqz p0, :cond_0

    const/high16 p0, -0x40800000    # -1.0f

    invoke-static {v0, v1, p0}, Landroidx/compose/ui/geometry/Offset;->times-tuRUvjQ(JF)J

    move-result-wide v0

    :cond_0
    const/4 p0, 0x0

    invoke-direct {v2, v0, v1, p0}, Landroidx/compose/foundation/gestures/DragEvent$DragDelta;-><init>(JLkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-interface {p1, v2}, Lkotlinx/coroutines/channels/SendChannel;->trySend-JP2dKIU(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void
.end method
