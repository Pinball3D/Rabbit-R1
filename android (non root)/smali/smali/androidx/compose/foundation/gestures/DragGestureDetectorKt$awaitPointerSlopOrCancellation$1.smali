.class final Landroidx/compose/foundation/gestures/DragGestureDetectorKt$awaitPointerSlopOrCancellation$1;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source "DragGestureDetector.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/foundation/gestures/DragGestureDetectorKt;->awaitPointerSlopOrCancellation-wtdNQyU(Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;JILandroidx/compose/foundation/gestures/PointerDirectionConfig;ZLkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDragGestureDetector.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DragGestureDetector.kt\nandroidx/compose/foundation/gestures/DragGestureDetectorKt$awaitPointerSlopOrCancellation$1\n*L\n1#1,873:1\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0xb0
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "androidx.compose.foundation.gestures.DragGestureDetectorKt"
    f = "DragGestureDetector.kt"
    i = {
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
        0x1
    }
    l = {
        0x2a2,
        0x2c4
    }
    m = "awaitPointerSlopOrCancellation-wtdNQyU"
    n = {
        "$this$awaitPointerSlopOrCancellation_u2dwtdNQyU",
        "pointerDirectionConfig",
        "onPointerSlopReached",
        "pointer",
        "triggerOnMainAxisSlop",
        "touchSlop",
        "totalMainPositionChange",
        "totalCrossPositionChange",
        "$this$awaitPointerSlopOrCancellation_u2dwtdNQyU",
        "pointerDirectionConfig",
        "onPointerSlopReached",
        "pointer",
        "dragEvent",
        "triggerOnMainAxisSlop",
        "touchSlop",
        "totalMainPositionChange",
        "totalCrossPositionChange"
    }
    s = {
        "L$0",
        "L$1",
        "L$2",
        "L$3",
        "Z$0",
        "F$0",
        "F$1",
        "F$2",
        "L$0",
        "L$1",
        "L$2",
        "L$3",
        "L$4",
        "Z$0",
        "F$0",
        "F$1",
        "F$2"
    }
.end annotation


# instance fields
.field F$0:F

.field F$1:F

.field F$2:F

.field L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field L$2:Ljava/lang/Object;

.field L$3:Ljava/lang/Object;

.field L$4:Ljava/lang/Object;

.field Z$0:Z

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
            "Landroidx/compose/foundation/gestures/DragGestureDetectorKt$awaitPointerSlopOrCancellation$1;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    iput-object p1, p0, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$awaitPointerSlopOrCancellation$1;->result:Ljava/lang/Object;

    iget p1, p0, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$awaitPointerSlopOrCancellation$1;->label:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$awaitPointerSlopOrCancellation$1;->label:I

    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v7, p0

    check-cast v7, Lkotlin/coroutines/Continuation;

    invoke-static/range {v0 .. v7}, Landroidx/compose/foundation/gestures/DragGestureDetectorKt;->awaitPointerSlopOrCancellation-wtdNQyU(Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;JILandroidx/compose/foundation/gestures/PointerDirectionConfig;ZLkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
