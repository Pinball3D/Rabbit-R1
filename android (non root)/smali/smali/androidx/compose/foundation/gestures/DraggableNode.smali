.class public final Landroidx/compose/foundation/gestures/DraggableNode;
.super Landroidx/compose/ui/node/DelegatingNode;
.source "Draggable.kt"

# interfaces
.implements Landroidx/compose/ui/node/PointerInputModifierNode;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u00a8\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0000\u0018\u00002\u00020\u00012\u00020\u0002B\u00d3\u0001\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0012\u0010\u0005\u001a\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u00080\u0006\u0012\u0006\u0010\t\u001a\u00020\n\u0012\u0006\u0010\u000b\u001a\u00020\u0008\u0012\u0008\u0010\u000c\u001a\u0004\u0018\u00010\r\u0012\u000c\u0010\u000e\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u000f\u0012<\u0010\u0010\u001a8\u0008\u0001\u0012\u0004\u0012\u00020\u0012\u0012\u0013\u0012\u00110\u0013\u00a2\u0006\u000c\u0008\u0014\u0012\u0008\u0008\u0015\u0012\u0004\u0008\u0008(\u0016\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00180\u0017\u0012\u0006\u0012\u0004\u0018\u00010\u00190\u0011\u00a2\u0006\u0002\u0008\u001a\u0012<\u0010\u001b\u001a8\u0008\u0001\u0012\u0004\u0012\u00020\u0012\u0012\u0013\u0012\u00110\u001c\u00a2\u0006\u000c\u0008\u0014\u0012\u0008\u0008\u0015\u0012\u0004\u0008\u0008(\u001d\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00180\u0017\u0012\u0006\u0012\u0004\u0018\u00010\u00190\u0011\u00a2\u0006\u0002\u0008\u001a\u0012\u0006\u0010\u001e\u001a\u00020\u0008\u00f8\u0001\u0000\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u001fJ\u0008\u0010,\u001a\u00020\u0018H\u0002J\u0008\u0010-\u001a\u00020\u0018H\u0016J\u0008\u0010.\u001a\u00020\u0018H\u0016J-\u0010/\u001a\u00020\u00182\u0006\u00100\u001a\u0002012\u0006\u00102\u001a\u0002032\u0006\u00104\u001a\u000205H\u0016\u00f8\u0001\u0001\u00f8\u0001\u0000\u00a2\u0006\u0004\u00086\u00107J\u00d9\u0001\u00108\u001a\u00020\u00182\u0006\u0010\u0003\u001a\u00020\u00042\u0012\u0010\u0005\u001a\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u00080\u00062\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u00082\u0008\u0010\u000c\u001a\u0004\u0018\u00010\r2\u000c\u0010\u000e\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u000f2<\u0010\u0010\u001a8\u0008\u0001\u0012\u0004\u0012\u00020\u0012\u0012\u0013\u0012\u00110\u0013\u00a2\u0006\u000c\u0008\u0014\u0012\u0008\u0008\u0015\u0012\u0004\u0008\u0008(\u0016\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00180\u0017\u0012\u0006\u0012\u0004\u0018\u00010\u00190\u0011\u00a2\u0006\u0002\u0008\u001a2<\u0010\u001b\u001a8\u0008\u0001\u0012\u0004\u0012\u00020\u0012\u0012\u0013\u0012\u00110\u001c\u00a2\u0006\u000c\u0008\u0014\u0012\u0008\u0008\u0015\u0012\u0004\u0008\u0008(\u001d\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00180\u0017\u0012\u0006\u0012\u0004\u0018\u00010\u00190\u0011\u00a2\u0006\u0002\u0008\u001a2\u0006\u0010\u001e\u001a\u00020\u0008\u00f8\u0001\u0000\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u001fJ\u0015\u00109\u001a\u00020\u0018*\u00020\u0012H\u0082@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010:J\u001d\u0010;\u001a\u00020\u0018*\u00020\u00122\u0006\u0010<\u001a\u00020=H\u0082@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010>J\u001d\u0010?\u001a\u00020\u0018*\u00020\u00122\u0006\u0010<\u001a\u00020@H\u0082@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010AR\u001a\u0010 \u001a\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u00080\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010!\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u000fX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u0005\u001a\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u00080\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\"\u001a\u0008\u0012\u0004\u0012\u00020$0#X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010%\u001a\u0004\u0018\u00010&X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u000c\u001a\u0004\u0018\u00010\rX\u0082\u000e\u00a2\u0006\u0002\n\u0000RL\u0010\u0010\u001a8\u0008\u0001\u0012\u0004\u0012\u00020\u0012\u0012\u0013\u0012\u00110\u0013\u00a2\u0006\u000c\u0008\u0014\u0012\u0008\u0008\u0015\u0012\u0004\u0008\u0008(\u0016\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00180\u0017\u0012\u0006\u0012\u0004\u0018\u00010\u00190\u0011\u00a2\u0006\u0002\u0008\u001aX\u0082\u000e\u00f8\u0001\u0000\u00f8\u0001\u0000\u00a2\u0006\u0004\n\u0002\u0010\'RL\u0010\u001b\u001a8\u0008\u0001\u0012\u0004\u0012\u00020\u0012\u0012\u0013\u0012\u00110\u001c\u00a2\u0006\u000c\u0008\u0014\u0012\u0008\u0008\u0015\u0012\u0004\u0008\u0008(\u001d\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00180\u0017\u0012\u0006\u0012\u0004\u0018\u00010\u00190\u0011\u00a2\u0006\u0002\u0008\u001aX\u0082\u000e\u00f8\u0001\u0000\u00f8\u0001\u0000\u00a2\u0006\u0004\n\u0002\u0010\'R\u000e\u0010\t\u001a\u00020\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010(\u001a\u00020)X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001e\u001a\u00020\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u000e\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u000fX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010*\u001a\u00020+X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u0082\u0002\u000b\n\u0002\u0008\u0019\n\u0005\u0008\u00a1\u001e0\u0001\u00a8\u0006B"
    }
    d2 = {
        "Landroidx/compose/foundation/gestures/DraggableNode;",
        "Landroidx/compose/ui/node/DelegatingNode;",
        "Landroidx/compose/ui/node/PointerInputModifierNode;",
        "state",
        "Landroidx/compose/foundation/gestures/DraggableState;",
        "canDrag",
        "Lkotlin/Function1;",
        "Landroidx/compose/ui/input/pointer/PointerInputChange;",
        "",
        "orientation",
        "Landroidx/compose/foundation/gestures/Orientation;",
        "enabled",
        "interactionSource",
        "Landroidx/compose/foundation/interaction/MutableInteractionSource;",
        "startDragImmediately",
        "Lkotlin/Function0;",
        "onDragStarted",
        "Lkotlin/Function3;",
        "Lkotlinx/coroutines/CoroutineScope;",
        "Landroidx/compose/ui/geometry/Offset;",
        "Lkotlin/ParameterName;",
        "name",
        "startedPosition",
        "Lkotlin/coroutines/Continuation;",
        "",
        "",
        "Lkotlin/ExtensionFunctionType;",
        "onDragStopped",
        "Landroidx/compose/ui/unit/Velocity;",
        "velocity",
        "reverseDirection",
        "(Landroidx/compose/foundation/gestures/DraggableState;Lkotlin/jvm/functions/Function1;Landroidx/compose/foundation/gestures/Orientation;ZLandroidx/compose/foundation/interaction/MutableInteractionSource;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function3;Z)V",
        "_canDrag",
        "_startDragImmediately",
        "channel",
        "Lkotlinx/coroutines/channels/Channel;",
        "Landroidx/compose/foundation/gestures/DragEvent;",
        "dragInteraction",
        "Landroidx/compose/foundation/interaction/DragInteraction$Start;",
        "Lkotlin/jvm/functions/Function3;",
        "pointerInputNode",
        "Landroidx/compose/ui/input/pointer/SuspendingPointerInputModifierNode;",
        "velocityTracker",
        "Landroidx/compose/ui/input/pointer/util/VelocityTracker;",
        "disposeInteractionSource",
        "onCancelPointerInput",
        "onDetach",
        "onPointerEvent",
        "pointerEvent",
        "Landroidx/compose/ui/input/pointer/PointerEvent;",
        "pass",
        "Landroidx/compose/ui/input/pointer/PointerEventPass;",
        "bounds",
        "Landroidx/compose/ui/unit/IntSize;",
        "onPointerEvent-H0pRuoY",
        "(Landroidx/compose/ui/input/pointer/PointerEvent;Landroidx/compose/ui/input/pointer/PointerEventPass;J)V",
        "update",
        "processDragCancel",
        "(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "processDragStart",
        "event",
        "Landroidx/compose/foundation/gestures/DragEvent$DragStarted;",
        "(Lkotlinx/coroutines/CoroutineScope;Landroidx/compose/foundation/gestures/DragEvent$DragStarted;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "processDragStop",
        "Landroidx/compose/foundation/gestures/DragEvent$DragStopped;",
        "(Lkotlinx/coroutines/CoroutineScope;Landroidx/compose/foundation/gestures/DragEvent$DragStopped;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
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
.field private final _canDrag:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Landroidx/compose/ui/input/pointer/PointerInputChange;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final _startDragImmediately:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private canDrag:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/compose/ui/input/pointer/PointerInputChange;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final channel:Lkotlinx/coroutines/channels/Channel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/channels/Channel<",
            "Landroidx/compose/foundation/gestures/DragEvent;",
            ">;"
        }
    .end annotation
.end field

.field private dragInteraction:Landroidx/compose/foundation/interaction/DragInteraction$Start;

.field private enabled:Z

.field private interactionSource:Landroidx/compose/foundation/interaction/MutableInteractionSource;

.field private onDragStarted:Lkotlin/jvm/functions/Function3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function3<",
            "-",
            "Lkotlinx/coroutines/CoroutineScope;",
            "-",
            "Landroidx/compose/ui/geometry/Offset;",
            "-",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;+",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private onDragStopped:Lkotlin/jvm/functions/Function3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function3<",
            "-",
            "Lkotlinx/coroutines/CoroutineScope;",
            "-",
            "Landroidx/compose/ui/unit/Velocity;",
            "-",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;+",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private orientation:Landroidx/compose/foundation/gestures/Orientation;

.field private final pointerInputNode:Landroidx/compose/ui/input/pointer/SuspendingPointerInputModifierNode;

.field private reverseDirection:Z

.field private startDragImmediately:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private state:Landroidx/compose/foundation/gestures/DraggableState;

.field private final velocityTracker:Landroidx/compose/ui/input/pointer/util/VelocityTracker;


# direct methods
.method public constructor <init>(Landroidx/compose/foundation/gestures/DraggableState;Lkotlin/jvm/functions/Function1;Landroidx/compose/foundation/gestures/Orientation;ZLandroidx/compose/foundation/interaction/MutableInteractionSource;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function3;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/foundation/gestures/DraggableState;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/compose/ui/input/pointer/PointerInputChange;",
            "Ljava/lang/Boolean;",
            ">;",
            "Landroidx/compose/foundation/gestures/Orientation;",
            "Z",
            "Landroidx/compose/foundation/interaction/MutableInteractionSource;",
            "Lkotlin/jvm/functions/Function0<",
            "Ljava/lang/Boolean;",
            ">;",
            "Lkotlin/jvm/functions/Function3<",
            "-",
            "Lkotlinx/coroutines/CoroutineScope;",
            "-",
            "Landroidx/compose/ui/geometry/Offset;",
            "-",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;+",
            "Ljava/lang/Object;",
            ">;",
            "Lkotlin/jvm/functions/Function3<",
            "-",
            "Lkotlinx/coroutines/CoroutineScope;",
            "-",
            "Landroidx/compose/ui/unit/Velocity;",
            "-",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;+",
            "Ljava/lang/Object;",
            ">;Z)V"
        }
    .end annotation

    const-string/jumbo v0, "state"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "canDrag"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "orientation"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "startDragImmediately"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onDragStarted"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onDragStopped"

    invoke-static {p8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 292
    invoke-direct {p0}, Landroidx/compose/ui/node/DelegatingNode;-><init>()V

    iput-object p1, p0, Landroidx/compose/foundation/gestures/DraggableNode;->state:Landroidx/compose/foundation/gestures/DraggableState;

    iput-object p2, p0, Landroidx/compose/foundation/gestures/DraggableNode;->canDrag:Lkotlin/jvm/functions/Function1;

    iput-object p3, p0, Landroidx/compose/foundation/gestures/DraggableNode;->orientation:Landroidx/compose/foundation/gestures/Orientation;

    iput-boolean p4, p0, Landroidx/compose/foundation/gestures/DraggableNode;->enabled:Z

    iput-object p5, p0, Landroidx/compose/foundation/gestures/DraggableNode;->interactionSource:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    iput-object p6, p0, Landroidx/compose/foundation/gestures/DraggableNode;->startDragImmediately:Lkotlin/jvm/functions/Function0;

    iput-object p7, p0, Landroidx/compose/foundation/gestures/DraggableNode;->onDragStarted:Lkotlin/jvm/functions/Function3;

    iput-object p8, p0, Landroidx/compose/foundation/gestures/DraggableNode;->onDragStopped:Lkotlin/jvm/functions/Function3;

    iput-boolean p9, p0, Landroidx/compose/foundation/gestures/DraggableNode;->reverseDirection:Z

    .line 295
    new-instance p1, Landroidx/compose/foundation/gestures/DraggableNode$_canDrag$1;

    invoke-direct {p1, p0}, Landroidx/compose/foundation/gestures/DraggableNode$_canDrag$1;-><init>(Landroidx/compose/foundation/gestures/DraggableNode;)V

    check-cast p1, Lkotlin/jvm/functions/Function1;

    iput-object p1, p0, Landroidx/compose/foundation/gestures/DraggableNode;->_canDrag:Lkotlin/jvm/functions/Function1;

    .line 296
    new-instance p1, Landroidx/compose/foundation/gestures/DraggableNode$_startDragImmediately$1;

    invoke-direct {p1, p0}, Landroidx/compose/foundation/gestures/DraggableNode$_startDragImmediately$1;-><init>(Landroidx/compose/foundation/gestures/DraggableNode;)V

    check-cast p1, Lkotlin/jvm/functions/Function0;

    iput-object p1, p0, Landroidx/compose/foundation/gestures/DraggableNode;->_startDragImmediately:Lkotlin/jvm/functions/Function0;

    .line 297
    new-instance p1, Landroidx/compose/ui/input/pointer/util/VelocityTracker;

    invoke-direct {p1}, Landroidx/compose/ui/input/pointer/util/VelocityTracker;-><init>()V

    iput-object p1, p0, Landroidx/compose/foundation/gestures/DraggableNode;->velocityTracker:Landroidx/compose/ui/input/pointer/util/VelocityTracker;

    .line 299
    new-instance p1, Landroidx/compose/foundation/gestures/DraggableNode$pointerInputNode$1;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Landroidx/compose/foundation/gestures/DraggableNode$pointerInputNode$1;-><init>(Landroidx/compose/foundation/gestures/DraggableNode;Lkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlin/jvm/functions/Function2;

    invoke-static {p1}, Landroidx/compose/ui/input/pointer/SuspendingPointerInputFilterKt;->SuspendingPointerInputModifierNode(Lkotlin/jvm/functions/Function2;)Landroidx/compose/ui/input/pointer/SuspendingPointerInputModifierNode;

    move-result-object p1

    check-cast p1, Landroidx/compose/ui/node/DelegatableNode;

    invoke-virtual {p0, p1}, Landroidx/compose/foundation/gestures/DraggableNode;->delegate(Landroidx/compose/ui/node/DelegatableNode;)Landroidx/compose/ui/node/DelegatableNode;

    move-result-object p1

    check-cast p1, Landroidx/compose/ui/input/pointer/SuspendingPointerInputModifierNode;

    iput-object p1, p0, Landroidx/compose/foundation/gestures/DraggableNode;->pointerInputNode:Landroidx/compose/ui/input/pointer/SuspendingPointerInputModifierNode;

    const p1, 0x7fffffff

    const/4 p3, 0x6

    .line 368
    invoke-static {p1, p2, p2, p3, p2}, Lkotlinx/coroutines/channels/ChannelKt;->Channel$default(ILkotlinx/coroutines/channels/BufferOverflow;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Lkotlinx/coroutines/channels/Channel;

    move-result-object p1

    iput-object p1, p0, Landroidx/compose/foundation/gestures/DraggableNode;->channel:Lkotlinx/coroutines/channels/Channel;

    return-void
.end method

.method public static final synthetic access$getCanDrag$p(Landroidx/compose/foundation/gestures/DraggableNode;)Lkotlin/jvm/functions/Function1;
    .locals 0

    .line 282
    iget-object p0, p0, Landroidx/compose/foundation/gestures/DraggableNode;->canDrag:Lkotlin/jvm/functions/Function1;

    return-object p0
.end method

.method public static final synthetic access$getChannel$p(Landroidx/compose/foundation/gestures/DraggableNode;)Lkotlinx/coroutines/channels/Channel;
    .locals 0

    .line 282
    iget-object p0, p0, Landroidx/compose/foundation/gestures/DraggableNode;->channel:Lkotlinx/coroutines/channels/Channel;

    return-object p0
.end method

.method public static final synthetic access$getEnabled$p(Landroidx/compose/foundation/gestures/DraggableNode;)Z
    .locals 0

    .line 282
    iget-boolean p0, p0, Landroidx/compose/foundation/gestures/DraggableNode;->enabled:Z

    return p0
.end method

.method public static final synthetic access$getOrientation$p(Landroidx/compose/foundation/gestures/DraggableNode;)Landroidx/compose/foundation/gestures/Orientation;
    .locals 0

    .line 282
    iget-object p0, p0, Landroidx/compose/foundation/gestures/DraggableNode;->orientation:Landroidx/compose/foundation/gestures/Orientation;

    return-object p0
.end method

.method public static final synthetic access$getReverseDirection$p(Landroidx/compose/foundation/gestures/DraggableNode;)Z
    .locals 0

    .line 282
    iget-boolean p0, p0, Landroidx/compose/foundation/gestures/DraggableNode;->reverseDirection:Z

    return p0
.end method

.method public static final synthetic access$getStartDragImmediately$p(Landroidx/compose/foundation/gestures/DraggableNode;)Lkotlin/jvm/functions/Function0;
    .locals 0

    .line 282
    iget-object p0, p0, Landroidx/compose/foundation/gestures/DraggableNode;->startDragImmediately:Lkotlin/jvm/functions/Function0;

    return-object p0
.end method

.method public static final synthetic access$getState$p(Landroidx/compose/foundation/gestures/DraggableNode;)Landroidx/compose/foundation/gestures/DraggableState;
    .locals 0

    .line 282
    iget-object p0, p0, Landroidx/compose/foundation/gestures/DraggableNode;->state:Landroidx/compose/foundation/gestures/DraggableState;

    return-object p0
.end method

.method public static final synthetic access$getVelocityTracker$p(Landroidx/compose/foundation/gestures/DraggableNode;)Landroidx/compose/ui/input/pointer/util/VelocityTracker;
    .locals 0

    .line 282
    iget-object p0, p0, Landroidx/compose/foundation/gestures/DraggableNode;->velocityTracker:Landroidx/compose/ui/input/pointer/util/VelocityTracker;

    return-object p0
.end method

.method public static final synthetic access$get_canDrag$p(Landroidx/compose/foundation/gestures/DraggableNode;)Lkotlin/jvm/functions/Function1;
    .locals 0

    .line 282
    iget-object p0, p0, Landroidx/compose/foundation/gestures/DraggableNode;->_canDrag:Lkotlin/jvm/functions/Function1;

    return-object p0
.end method

.method public static final synthetic access$get_startDragImmediately$p(Landroidx/compose/foundation/gestures/DraggableNode;)Lkotlin/jvm/functions/Function0;
    .locals 0

    .line 282
    iget-object p0, p0, Landroidx/compose/foundation/gestures/DraggableNode;->_startDragImmediately:Lkotlin/jvm/functions/Function0;

    return-object p0
.end method

.method public static final synthetic access$processDragCancel(Landroidx/compose/foundation/gestures/DraggableNode;Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 282
    invoke-direct {p0, p1, p2}, Landroidx/compose/foundation/gestures/DraggableNode;->processDragCancel(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$processDragStart(Landroidx/compose/foundation/gestures/DraggableNode;Lkotlinx/coroutines/CoroutineScope;Landroidx/compose/foundation/gestures/DragEvent$DragStarted;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 282
    invoke-direct {p0, p1, p2, p3}, Landroidx/compose/foundation/gestures/DraggableNode;->processDragStart(Lkotlinx/coroutines/CoroutineScope;Landroidx/compose/foundation/gestures/DragEvent$DragStarted;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$processDragStop(Landroidx/compose/foundation/gestures/DraggableNode;Lkotlinx/coroutines/CoroutineScope;Landroidx/compose/foundation/gestures/DragEvent$DragStopped;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 282
    invoke-direct {p0, p1, p2, p3}, Landroidx/compose/foundation/gestures/DraggableNode;->processDragStop(Lkotlinx/coroutines/CoroutineScope;Landroidx/compose/foundation/gestures/DragEvent$DragStopped;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private final disposeInteractionSource()V
    .locals 3

    iget-object v0, p0, Landroidx/compose/foundation/gestures/DraggableNode;->dragInteraction:Landroidx/compose/foundation/interaction/DragInteraction$Start;

    if-eqz v0, :cond_1

    iget-object v1, p0, Landroidx/compose/foundation/gestures/DraggableNode;->interactionSource:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    if-eqz v1, :cond_0

    .line 459
    new-instance v2, Landroidx/compose/foundation/interaction/DragInteraction$Cancel;

    invoke-direct {v2, v0}, Landroidx/compose/foundation/interaction/DragInteraction$Cancel;-><init>(Landroidx/compose/foundation/interaction/DragInteraction$Start;)V

    check-cast v2, Landroidx/compose/foundation/interaction/Interaction;

    invoke-interface {v1, v2}, Landroidx/compose/foundation/interaction/MutableInteractionSource;->tryEmit(Landroidx/compose/foundation/interaction/Interaction;)Z

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/compose/foundation/gestures/DraggableNode;->dragInteraction:Landroidx/compose/foundation/interaction/DragInteraction$Start;

    :cond_1
    return-void
.end method

.method private final processDragCancel(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 9
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

    instance-of v0, p2, Landroidx/compose/foundation/gestures/DraggableNode$processDragCancel$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Landroidx/compose/foundation/gestures/DraggableNode$processDragCancel$1;

    iget v1, v0, Landroidx/compose/foundation/gestures/DraggableNode$processDragCancel$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p2, v0, Landroidx/compose/foundation/gestures/DraggableNode$processDragCancel$1;->label:I

    sub-int/2addr p2, v2

    iput p2, v0, Landroidx/compose/foundation/gestures/DraggableNode$processDragCancel$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Landroidx/compose/foundation/gestures/DraggableNode$processDragCancel$1;

    invoke-direct {v0, p0, p2}, Landroidx/compose/foundation/gestures/DraggableNode$processDragCancel$1;-><init>(Landroidx/compose/foundation/gestures/DraggableNode;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p2, v0, Landroidx/compose/foundation/gestures/DraggableNode$processDragCancel$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 449
    iget v2, v0, Landroidx/compose/foundation/gestures/DraggableNode$processDragCancel$1;->label:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v2, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_2

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    iget-object p0, v0, Landroidx/compose/foundation/gestures/DraggableNode$processDragCancel$1;->L$1:Ljava/lang/Object;

    check-cast p0, Lkotlinx/coroutines/CoroutineScope;

    iget-object p1, v0, Landroidx/compose/foundation/gestures/DraggableNode$processDragCancel$1;->L$0:Ljava/lang/Object;

    check-cast p1, Landroidx/compose/foundation/gestures/DraggableNode;

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v8, p1

    move-object p1, p0

    move-object p0, v8

    goto :goto_1

    :cond_3
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p2, p0, Landroidx/compose/foundation/gestures/DraggableNode;->dragInteraction:Landroidx/compose/foundation/interaction/DragInteraction$Start;

    if-eqz p2, :cond_5

    iget-object v2, p0, Landroidx/compose/foundation/gestures/DraggableNode;->interactionSource:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    if-eqz v2, :cond_4

    .line 451
    new-instance v6, Landroidx/compose/foundation/interaction/DragInteraction$Cancel;

    invoke-direct {v6, p2}, Landroidx/compose/foundation/interaction/DragInteraction$Cancel;-><init>(Landroidx/compose/foundation/interaction/DragInteraction$Start;)V

    check-cast v6, Landroidx/compose/foundation/interaction/Interaction;

    iput-object p0, v0, Landroidx/compose/foundation/gestures/DraggableNode$processDragCancel$1;->L$0:Ljava/lang/Object;

    iput-object p1, v0, Landroidx/compose/foundation/gestures/DraggableNode$processDragCancel$1;->L$1:Ljava/lang/Object;

    iput v4, v0, Landroidx/compose/foundation/gestures/DraggableNode$processDragCancel$1;->label:I

    invoke-interface {v2, v6, v0}, Landroidx/compose/foundation/interaction/MutableInteractionSource;->emit(Landroidx/compose/foundation/interaction/Interaction;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_4

    return-object v1

    .line 452
    :cond_4
    :goto_1
    iput-object v5, p0, Landroidx/compose/foundation/gestures/DraggableNode;->dragInteraction:Landroidx/compose/foundation/interaction/DragInteraction$Start;

    .line 454
    :cond_5
    iget-object p0, p0, Landroidx/compose/foundation/gestures/DraggableNode;->onDragStopped:Lkotlin/jvm/functions/Function3;

    sget-object p2, Landroidx/compose/ui/unit/Velocity;->Companion:Landroidx/compose/ui/unit/Velocity$Companion;

    invoke-virtual {p2}, Landroidx/compose/ui/unit/Velocity$Companion;->getZero-9UxMQ8M()J

    move-result-wide v6

    invoke-static {v6, v7}, Landroidx/compose/ui/unit/Velocity;->box-impl(J)Landroidx/compose/ui/unit/Velocity;

    move-result-object p2

    iput-object v5, v0, Landroidx/compose/foundation/gestures/DraggableNode$processDragCancel$1;->L$0:Ljava/lang/Object;

    iput-object v5, v0, Landroidx/compose/foundation/gestures/DraggableNode$processDragCancel$1;->L$1:Ljava/lang/Object;

    iput v3, v0, Landroidx/compose/foundation/gestures/DraggableNode$processDragCancel$1;->label:I

    invoke-interface {p0, p1, p2, v0}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_6

    return-object v1

    .line 455
    :cond_6
    :goto_2
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private final processDragStart(Lkotlinx/coroutines/CoroutineScope;Landroidx/compose/foundation/gestures/DragEvent$DragStarted;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/CoroutineScope;",
            "Landroidx/compose/foundation/gestures/DragEvent$DragStarted;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p3, Landroidx/compose/foundation/gestures/DraggableNode$processDragStart$1;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Landroidx/compose/foundation/gestures/DraggableNode$processDragStart$1;

    iget v1, v0, Landroidx/compose/foundation/gestures/DraggableNode$processDragStart$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p3, v0, Landroidx/compose/foundation/gestures/DraggableNode$processDragStart$1;->label:I

    sub-int/2addr p3, v2

    iput p3, v0, Landroidx/compose/foundation/gestures/DraggableNode$processDragStart$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Landroidx/compose/foundation/gestures/DraggableNode$processDragStart$1;

    invoke-direct {v0, p0, p3}, Landroidx/compose/foundation/gestures/DraggableNode$processDragStart$1;-><init>(Landroidx/compose/foundation/gestures/DraggableNode;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p3, v0, Landroidx/compose/foundation/gestures/DraggableNode$processDragStart$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 431
    iget v2, v0, Landroidx/compose/foundation/gestures/DraggableNode$processDragStart$1;->label:I

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eqz v2, :cond_4

    if-eq v2, v5, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_3

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    iget-object p0, v0, Landroidx/compose/foundation/gestures/DraggableNode$processDragStart$1;->L$3:Ljava/lang/Object;

    check-cast p0, Landroidx/compose/foundation/interaction/DragInteraction$Start;

    iget-object p1, v0, Landroidx/compose/foundation/gestures/DraggableNode$processDragStart$1;->L$2:Ljava/lang/Object;

    check-cast p1, Landroidx/compose/foundation/gestures/DragEvent$DragStarted;

    iget-object p2, v0, Landroidx/compose/foundation/gestures/DraggableNode$processDragStart$1;->L$1:Ljava/lang/Object;

    check-cast p2, Lkotlinx/coroutines/CoroutineScope;

    iget-object v2, v0, Landroidx/compose/foundation/gestures/DraggableNode$processDragStart$1;->L$0:Ljava/lang/Object;

    check-cast v2, Landroidx/compose/foundation/gestures/DraggableNode;

    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_2

    :cond_3
    iget-object p0, v0, Landroidx/compose/foundation/gestures/DraggableNode$processDragStart$1;->L$2:Ljava/lang/Object;

    check-cast p0, Landroidx/compose/foundation/gestures/DragEvent$DragStarted;

    iget-object p1, v0, Landroidx/compose/foundation/gestures/DraggableNode$processDragStart$1;->L$1:Ljava/lang/Object;

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    iget-object p2, v0, Landroidx/compose/foundation/gestures/DraggableNode$processDragStart$1;->L$0:Ljava/lang/Object;

    check-cast p2, Landroidx/compose/foundation/gestures/DraggableNode;

    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v7, p2

    move-object p2, p0

    move-object p0, v7

    goto :goto_1

    :cond_4
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p3, p0, Landroidx/compose/foundation/gestures/DraggableNode;->dragInteraction:Landroidx/compose/foundation/interaction/DragInteraction$Start;

    if-eqz p3, :cond_5

    iget-object v2, p0, Landroidx/compose/foundation/gestures/DraggableNode;->interactionSource:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    if-eqz v2, :cond_5

    .line 433
    new-instance v6, Landroidx/compose/foundation/interaction/DragInteraction$Cancel;

    invoke-direct {v6, p3}, Landroidx/compose/foundation/interaction/DragInteraction$Cancel;-><init>(Landroidx/compose/foundation/interaction/DragInteraction$Start;)V

    check-cast v6, Landroidx/compose/foundation/interaction/Interaction;

    iput-object p0, v0, Landroidx/compose/foundation/gestures/DraggableNode$processDragStart$1;->L$0:Ljava/lang/Object;

    iput-object p1, v0, Landroidx/compose/foundation/gestures/DraggableNode$processDragStart$1;->L$1:Ljava/lang/Object;

    iput-object p2, v0, Landroidx/compose/foundation/gestures/DraggableNode$processDragStart$1;->L$2:Ljava/lang/Object;

    iput v5, v0, Landroidx/compose/foundation/gestures/DraggableNode$processDragStart$1;->label:I

    invoke-interface {v2, v6, v0}, Landroidx/compose/foundation/interaction/MutableInteractionSource;->emit(Landroidx/compose/foundation/interaction/Interaction;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p3

    if-ne p3, v1, :cond_5

    return-object v1

    .line 435
    :cond_5
    :goto_1
    new-instance p3, Landroidx/compose/foundation/interaction/DragInteraction$Start;

    invoke-direct {p3}, Landroidx/compose/foundation/interaction/DragInteraction$Start;-><init>()V

    .line 436
    iget-object v2, p0, Landroidx/compose/foundation/gestures/DraggableNode;->interactionSource:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    if-eqz v2, :cond_7

    move-object v5, p3

    check-cast v5, Landroidx/compose/foundation/interaction/Interaction;

    iput-object p0, v0, Landroidx/compose/foundation/gestures/DraggableNode$processDragStart$1;->L$0:Ljava/lang/Object;

    iput-object p1, v0, Landroidx/compose/foundation/gestures/DraggableNode$processDragStart$1;->L$1:Ljava/lang/Object;

    iput-object p2, v0, Landroidx/compose/foundation/gestures/DraggableNode$processDragStart$1;->L$2:Ljava/lang/Object;

    iput-object p3, v0, Landroidx/compose/foundation/gestures/DraggableNode$processDragStart$1;->L$3:Ljava/lang/Object;

    iput v4, v0, Landroidx/compose/foundation/gestures/DraggableNode$processDragStart$1;->label:I

    invoke-interface {v2, v5, v0}, Landroidx/compose/foundation/interaction/MutableInteractionSource;->emit(Landroidx/compose/foundation/interaction/Interaction;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v1, :cond_6

    return-object v1

    :cond_6
    move-object v2, p0

    move-object p0, p3

    move-object v7, p2

    move-object p2, p1

    move-object p1, v7

    :goto_2
    move-object p3, p0

    move-object p0, v2

    move-object v7, p2

    move-object p2, p1

    move-object p1, v7

    .line 437
    :cond_7
    iput-object p3, p0, Landroidx/compose/foundation/gestures/DraggableNode;->dragInteraction:Landroidx/compose/foundation/interaction/DragInteraction$Start;

    .line 438
    iget-object p0, p0, Landroidx/compose/foundation/gestures/DraggableNode;->onDragStarted:Lkotlin/jvm/functions/Function3;

    invoke-virtual {p2}, Landroidx/compose/foundation/gestures/DragEvent$DragStarted;->getStartPoint-F1C5BW0()J

    move-result-wide p2

    invoke-static {p2, p3}, Landroidx/compose/ui/geometry/Offset;->box-impl(J)Landroidx/compose/ui/geometry/Offset;

    move-result-object p2

    const/4 p3, 0x0

    iput-object p3, v0, Landroidx/compose/foundation/gestures/DraggableNode$processDragStart$1;->L$0:Ljava/lang/Object;

    iput-object p3, v0, Landroidx/compose/foundation/gestures/DraggableNode$processDragStart$1;->L$1:Ljava/lang/Object;

    iput-object p3, v0, Landroidx/compose/foundation/gestures/DraggableNode$processDragStart$1;->L$2:Ljava/lang/Object;

    iput-object p3, v0, Landroidx/compose/foundation/gestures/DraggableNode$processDragStart$1;->L$3:Ljava/lang/Object;

    iput v3, v0, Landroidx/compose/foundation/gestures/DraggableNode$processDragStart$1;->label:I

    invoke-interface {p0, p1, p2, v0}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_8

    return-object v1

    .line 439
    :cond_8
    :goto_3
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private final processDragStop(Lkotlinx/coroutines/CoroutineScope;Landroidx/compose/foundation/gestures/DragEvent$DragStopped;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/CoroutineScope;",
            "Landroidx/compose/foundation/gestures/DragEvent$DragStopped;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p3, Landroidx/compose/foundation/gestures/DraggableNode$processDragStop$1;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Landroidx/compose/foundation/gestures/DraggableNode$processDragStop$1;

    iget v1, v0, Landroidx/compose/foundation/gestures/DraggableNode$processDragStop$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p3, v0, Landroidx/compose/foundation/gestures/DraggableNode$processDragStop$1;->label:I

    sub-int/2addr p3, v2

    iput p3, v0, Landroidx/compose/foundation/gestures/DraggableNode$processDragStop$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Landroidx/compose/foundation/gestures/DraggableNode$processDragStop$1;

    invoke-direct {v0, p0, p3}, Landroidx/compose/foundation/gestures/DraggableNode$processDragStop$1;-><init>(Landroidx/compose/foundation/gestures/DraggableNode;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p3, v0, Landroidx/compose/foundation/gestures/DraggableNode$processDragStop$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 441
    iget v2, v0, Landroidx/compose/foundation/gestures/DraggableNode$processDragStop$1;->label:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v2, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_2

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    iget-object p0, v0, Landroidx/compose/foundation/gestures/DraggableNode$processDragStop$1;->L$2:Ljava/lang/Object;

    check-cast p0, Landroidx/compose/foundation/gestures/DragEvent$DragStopped;

    iget-object p1, v0, Landroidx/compose/foundation/gestures/DraggableNode$processDragStop$1;->L$1:Ljava/lang/Object;

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    iget-object p2, v0, Landroidx/compose/foundation/gestures/DraggableNode$processDragStop$1;->L$0:Ljava/lang/Object;

    check-cast p2, Landroidx/compose/foundation/gestures/DraggableNode;

    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v7, p2

    move-object p2, p0

    move-object p0, v7

    goto :goto_1

    :cond_3
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p3, p0, Landroidx/compose/foundation/gestures/DraggableNode;->dragInteraction:Landroidx/compose/foundation/interaction/DragInteraction$Start;

    if-eqz p3, :cond_5

    iget-object v2, p0, Landroidx/compose/foundation/gestures/DraggableNode;->interactionSource:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    if-eqz v2, :cond_4

    .line 443
    new-instance v6, Landroidx/compose/foundation/interaction/DragInteraction$Stop;

    invoke-direct {v6, p3}, Landroidx/compose/foundation/interaction/DragInteraction$Stop;-><init>(Landroidx/compose/foundation/interaction/DragInteraction$Start;)V

    check-cast v6, Landroidx/compose/foundation/interaction/Interaction;

    iput-object p0, v0, Landroidx/compose/foundation/gestures/DraggableNode$processDragStop$1;->L$0:Ljava/lang/Object;

    iput-object p1, v0, Landroidx/compose/foundation/gestures/DraggableNode$processDragStop$1;->L$1:Ljava/lang/Object;

    iput-object p2, v0, Landroidx/compose/foundation/gestures/DraggableNode$processDragStop$1;->L$2:Ljava/lang/Object;

    iput v4, v0, Landroidx/compose/foundation/gestures/DraggableNode$processDragStop$1;->label:I

    invoke-interface {v2, v6, v0}, Landroidx/compose/foundation/interaction/MutableInteractionSource;->emit(Landroidx/compose/foundation/interaction/Interaction;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p3

    if-ne p3, v1, :cond_4

    return-object v1

    .line 444
    :cond_4
    :goto_1
    iput-object v5, p0, Landroidx/compose/foundation/gestures/DraggableNode;->dragInteraction:Landroidx/compose/foundation/interaction/DragInteraction$Start;

    .line 446
    :cond_5
    iget-object p0, p0, Landroidx/compose/foundation/gestures/DraggableNode;->onDragStopped:Lkotlin/jvm/functions/Function3;

    invoke-virtual {p2}, Landroidx/compose/foundation/gestures/DragEvent$DragStopped;->getVelocity-9UxMQ8M()J

    move-result-wide p2

    invoke-static {p2, p3}, Landroidx/compose/ui/unit/Velocity;->box-impl(J)Landroidx/compose/ui/unit/Velocity;

    move-result-object p2

    iput-object v5, v0, Landroidx/compose/foundation/gestures/DraggableNode$processDragStop$1;->L$0:Ljava/lang/Object;

    iput-object v5, v0, Landroidx/compose/foundation/gestures/DraggableNode$processDragStop$1;->L$1:Ljava/lang/Object;

    iput-object v5, v0, Landroidx/compose/foundation/gestures/DraggableNode$processDragStop$1;->L$2:Ljava/lang/Object;

    iput v3, v0, Landroidx/compose/foundation/gestures/DraggableNode$processDragStop$1;->label:I

    invoke-interface {p0, p1, p2, v0}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_6

    return-object v1

    .line 447
    :cond_6
    :goto_2
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method


# virtual methods
.method public onCancelPointerInput()V
    .locals 0

    iget-object p0, p0, Landroidx/compose/foundation/gestures/DraggableNode;->pointerInputNode:Landroidx/compose/ui/input/pointer/SuspendingPointerInputModifierNode;

    .line 384
    invoke-interface {p0}, Landroidx/compose/ui/input/pointer/SuspendingPointerInputModifierNode;->onCancelPointerInput()V

    return-void
.end method

.method public onDetach()V
    .locals 0

    .line 372
    invoke-direct {p0}, Landroidx/compose/foundation/gestures/DraggableNode;->disposeInteractionSource()V

    return-void
.end method

.method public onPointerEvent-H0pRuoY(Landroidx/compose/ui/input/pointer/PointerEvent;Landroidx/compose/ui/input/pointer/PointerEventPass;J)V
    .locals 1

    const-string v0, "pointerEvent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "pass"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Landroidx/compose/foundation/gestures/DraggableNode;->pointerInputNode:Landroidx/compose/ui/input/pointer/SuspendingPointerInputModifierNode;

    .line 380
    invoke-interface {p0, p1, p2, p3, p4}, Landroidx/compose/ui/input/pointer/SuspendingPointerInputModifierNode;->onPointerEvent-H0pRuoY(Landroidx/compose/ui/input/pointer/PointerEvent;Landroidx/compose/ui/input/pointer/PointerEventPass;J)V

    return-void
.end method

.method public final update(Landroidx/compose/foundation/gestures/DraggableState;Lkotlin/jvm/functions/Function1;Landroidx/compose/foundation/gestures/Orientation;ZLandroidx/compose/foundation/interaction/MutableInteractionSource;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function3;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/foundation/gestures/DraggableState;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/compose/ui/input/pointer/PointerInputChange;",
            "Ljava/lang/Boolean;",
            ">;",
            "Landroidx/compose/foundation/gestures/Orientation;",
            "Z",
            "Landroidx/compose/foundation/interaction/MutableInteractionSource;",
            "Lkotlin/jvm/functions/Function0<",
            "Ljava/lang/Boolean;",
            ">;",
            "Lkotlin/jvm/functions/Function3<",
            "-",
            "Lkotlinx/coroutines/CoroutineScope;",
            "-",
            "Landroidx/compose/ui/geometry/Offset;",
            "-",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;+",
            "Ljava/lang/Object;",
            ">;",
            "Lkotlin/jvm/functions/Function3<",
            "-",
            "Lkotlinx/coroutines/CoroutineScope;",
            "-",
            "Landroidx/compose/ui/unit/Velocity;",
            "-",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;+",
            "Ljava/lang/Object;",
            ">;Z)V"
        }
    .end annotation

    const-string/jumbo v0, "state"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "canDrag"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "orientation"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "startDragImmediately"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onDragStarted"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onDragStopped"

    invoke-static {p8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/compose/foundation/gestures/DraggableNode;->state:Landroidx/compose/foundation/gestures/DraggableState;

    .line 399
    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    iput-object p1, p0, Landroidx/compose/foundation/gestures/DraggableNode;->state:Landroidx/compose/foundation/gestures/DraggableState;

    move p1, v1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-object p2, p0, Landroidx/compose/foundation/gestures/DraggableNode;->canDrag:Lkotlin/jvm/functions/Function1;

    iget-object p2, p0, Landroidx/compose/foundation/gestures/DraggableNode;->orientation:Landroidx/compose/foundation/gestures/Orientation;

    if-eq p2, p3, :cond_1

    iput-object p3, p0, Landroidx/compose/foundation/gestures/DraggableNode;->orientation:Landroidx/compose/foundation/gestures/Orientation;

    move p1, v1

    :cond_1
    iget-boolean p2, p0, Landroidx/compose/foundation/gestures/DraggableNode;->enabled:Z

    if-eq p2, p4, :cond_2

    iput-boolean p4, p0, Landroidx/compose/foundation/gestures/DraggableNode;->enabled:Z

    if-nez p4, :cond_3

    .line 411
    invoke-direct {p0}, Landroidx/compose/foundation/gestures/DraggableNode;->disposeInteractionSource()V

    goto :goto_1

    :cond_2
    move v1, p1

    :cond_3
    :goto_1
    iget-object p1, p0, Landroidx/compose/foundation/gestures/DraggableNode;->interactionSource:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    .line 415
    invoke-static {p1, p5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    .line 416
    invoke-direct {p0}, Landroidx/compose/foundation/gestures/DraggableNode;->disposeInteractionSource()V

    iput-object p5, p0, Landroidx/compose/foundation/gestures/DraggableNode;->interactionSource:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    :cond_4
    iput-object p6, p0, Landroidx/compose/foundation/gestures/DraggableNode;->startDragImmediately:Lkotlin/jvm/functions/Function0;

    iput-object p7, p0, Landroidx/compose/foundation/gestures/DraggableNode;->onDragStarted:Lkotlin/jvm/functions/Function3;

    iput-object p8, p0, Landroidx/compose/foundation/gestures/DraggableNode;->onDragStopped:Lkotlin/jvm/functions/Function3;

    iget-boolean p1, p0, Landroidx/compose/foundation/gestures/DraggableNode;->reverseDirection:Z

    if-eq p1, p9, :cond_5

    iput-boolean p9, p0, Landroidx/compose/foundation/gestures/DraggableNode;->reverseDirection:Z

    goto :goto_2

    :cond_5
    if-eqz v1, :cond_6

    :goto_2
    iget-object p0, p0, Landroidx/compose/foundation/gestures/DraggableNode;->pointerInputNode:Landroidx/compose/ui/input/pointer/SuspendingPointerInputModifierNode;

    .line 427
    invoke-interface {p0}, Landroidx/compose/ui/input/pointer/SuspendingPointerInputModifierNode;->resetPointerInputHandler()V

    :cond_6
    return-void
.end method
