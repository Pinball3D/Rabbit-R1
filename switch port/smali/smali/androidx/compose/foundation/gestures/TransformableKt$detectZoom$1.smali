.class final Landroidx/compose/foundation/gestures/TransformableKt$detectZoom$1;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source "Transformable.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/foundation/gestures/TransformableKt;->detectZoom(Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;Landroidx/compose/runtime/State;Lkotlinx/coroutines/channels/Channel;Landroidx/compose/runtime/State;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
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
    c = "androidx.compose.foundation.gestures.TransformableKt"
    f = "Transformable.kt"
    i = {
        0x0,
        0x0,
        0x0,
        0x0,
        0x0,
        0x0,
        0x0,
        0x0,
        0x0,
        0x0,
        0x1,
        0x1,
        0x1,
        0x1,
        0x1,
        0x1,
        0x1,
        0x1,
        0x1,
        0x1,
        0x2,
        0x2,
        0x2,
        0x2,
        0x2,
        0x2,
        0x2,
        0x2,
        0x2,
        0x2,
        0x2,
        0x2
    }
    l = {
        0xa9,
        0xab,
        0xd7
    }
    m = "detectZoom"
    n = {
        "$this$detectZoom",
        "panZoomLock",
        "channel",
        "canPan",
        "rotation",
        "zoom",
        "pan",
        "pastTouchSlop",
        "touchSlop",
        "lockedToPanZoom",
        "$this$detectZoom",
        "panZoomLock",
        "channel",
        "canPan",
        "rotation",
        "zoom",
        "pan",
        "pastTouchSlop",
        "touchSlop",
        "lockedToPanZoom",
        "$this$detectZoom",
        "panZoomLock",
        "channel",
        "canPan",
        "event",
        "rotation",
        "zoom",
        "pan",
        "pastTouchSlop",
        "touchSlop",
        "lockedToPanZoom",
        "canceled"
    }
    s = {
        "L$0",
        "L$1",
        "L$2",
        "L$3",
        "F$0",
        "F$1",
        "J$0",
        "I$0",
        "F$2",
        "I$1",
        "L$0",
        "L$1",
        "L$2",
        "L$3",
        "F$0",
        "F$1",
        "J$0",
        "I$0",
        "F$2",
        "I$1",
        "L$0",
        "L$1",
        "L$2",
        "L$3",
        "L$4",
        "F$0",
        "F$1",
        "J$0",
        "I$0",
        "F$2",
        "I$1",
        "I$2"
    }
.end annotation


# instance fields
.field F$0:F

.field F$1:F

.field F$2:F

.field I$0:I

.field I$1:I

.field I$2:I

.field J$0:J

.field L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field L$2:Ljava/lang/Object;

.field L$3:Ljava/lang/Object;

.field L$4:Ljava/lang/Object;

.field label:I

.field synthetic result:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Landroidx/compose/foundation/gestures/TransformableKt$detectZoom$1;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Landroidx/compose/foundation/gestures/TransformableKt$detectZoom$1;->result:Ljava/lang/Object;

    iget p1, p0, Landroidx/compose/foundation/gestures/TransformableKt$detectZoom$1;->label:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Landroidx/compose/foundation/gestures/TransformableKt$detectZoom$1;->label:I

    const/4 p1, 0x0

    check-cast p0, Lkotlin/coroutines/Continuation;

    invoke-static {p1, p1, p1, p1, p0}, Landroidx/compose/foundation/gestures/TransformableKt;->access$detectZoom(Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;Landroidx/compose/runtime/State;Lkotlinx/coroutines/channels/Channel;Landroidx/compose/runtime/State;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
