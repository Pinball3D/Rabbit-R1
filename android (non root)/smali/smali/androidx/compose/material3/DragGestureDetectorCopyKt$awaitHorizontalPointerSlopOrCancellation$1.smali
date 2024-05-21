.class final Landroidx/compose/material3/DragGestureDetectorCopyKt$awaitHorizontalPointerSlopOrCancellation$1;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source "DragGestureDetectorCopy.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/material3/DragGestureDetectorCopyKt;->awaitHorizontalPointerSlopOrCancellation-gDDlDlE(Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;JILkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
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
    c = "androidx.compose.material3.DragGestureDetectorCopyKt"
    f = "DragGestureDetectorCopy.kt"
    i = {
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
        0x1
    }
    l = {
        0x90,
        0xb6
    }
    m = "awaitHorizontalPointerSlopOrCancellation-gDDlDlE"
    n = {
        "onPointerSlopReached",
        "$this$awaitPointerSlopOrCancellation_u2dpn7EDYM$iv",
        "pointer$iv",
        "touchSlop$iv",
        "totalPositionChange$iv",
        "onPointerSlopReached",
        "$this$awaitPointerSlopOrCancellation_u2dpn7EDYM$iv",
        "pointer$iv",
        "dragEvent$iv",
        "touchSlop$iv",
        "totalPositionChange$iv"
    }
    s = {
        "L$0",
        "L$1",
        "L$2",
        "F$0",
        "F$1",
        "L$0",
        "L$1",
        "L$2",
        "L$3",
        "F$0",
        "F$1"
    }
.end annotation


# instance fields
.field F$0:F

.field F$1:F

.field L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field L$2:Ljava/lang/Object;

.field L$3:Ljava/lang/Object;

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
            "Landroidx/compose/material3/DragGestureDetectorCopyKt$awaitHorizontalPointerSlopOrCancellation$1;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    iput-object p1, p0, Landroidx/compose/material3/DragGestureDetectorCopyKt$awaitHorizontalPointerSlopOrCancellation$1;->result:Ljava/lang/Object;

    iget p1, p0, Landroidx/compose/material3/DragGestureDetectorCopyKt$awaitHorizontalPointerSlopOrCancellation$1;->label:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Landroidx/compose/material3/DragGestureDetectorCopyKt$awaitHorizontalPointerSlopOrCancellation$1;->label:I

    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v5, p0

    check-cast v5, Lkotlin/coroutines/Continuation;

    invoke-static/range {v0 .. v5}, Landroidx/compose/material3/DragGestureDetectorCopyKt;->awaitHorizontalPointerSlopOrCancellation-gDDlDlE(Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;JILkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
