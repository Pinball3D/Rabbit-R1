.class final Landroidx/compose/foundation/CombinedClickablePointerInputNode$pointerInput$4;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "Clickable.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/foundation/CombinedClickablePointerInputNode;->pointerInput(Landroidx/compose/ui/input/pointer/PointerInputScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function3<",
        "Landroidx/compose/foundation/gestures/PressGestureScope;",
        "Landroidx/compose/ui/geometry/Offset;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u0004H\u008a@"
    }
    d2 = {
        "<anonymous>",
        "",
        "Landroidx/compose/foundation/gestures/PressGestureScope;",
        "offset",
        "Landroidx/compose/ui/geometry/Offset;"
    }
    k = 0x3
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "androidx.compose.foundation.CombinedClickablePointerInputNode$pointerInput$4"
    f = "Clickable.kt"
    i = {}
    l = {
        0x3a8
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field synthetic J$0:J

.field private synthetic L$0:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Landroidx/compose/foundation/CombinedClickablePointerInputNode;


# direct methods
.method constructor <init>(Landroidx/compose/foundation/CombinedClickablePointerInputNode;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/foundation/CombinedClickablePointerInputNode;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Landroidx/compose/foundation/CombinedClickablePointerInputNode$pointerInput$4;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/compose/foundation/CombinedClickablePointerInputNode$pointerInput$4;->this$0:Landroidx/compose/foundation/CombinedClickablePointerInputNode;

    const/4 p1, 0x3

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p1, Landroidx/compose/foundation/gestures/PressGestureScope;

    check-cast p2, Landroidx/compose/ui/geometry/Offset;

    invoke-virtual {p2}, Landroidx/compose/ui/geometry/Offset;->unbox-impl()J

    move-result-wide v0

    check-cast p3, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, v0, v1, p3}, Landroidx/compose/foundation/CombinedClickablePointerInputNode$pointerInput$4;->invoke-d-4ec7I(Landroidx/compose/foundation/gestures/PressGestureScope;JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invoke-d-4ec7I(Landroidx/compose/foundation/gestures/PressGestureScope;JLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/foundation/gestures/PressGestureScope;",
            "J",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    new-instance v0, Landroidx/compose/foundation/CombinedClickablePointerInputNode$pointerInput$4;

    iget-object p0, p0, Landroidx/compose/foundation/CombinedClickablePointerInputNode$pointerInput$4;->this$0:Landroidx/compose/foundation/CombinedClickablePointerInputNode;

    invoke-direct {v0, p0, p4}, Landroidx/compose/foundation/CombinedClickablePointerInputNode$pointerInput$4;-><init>(Landroidx/compose/foundation/CombinedClickablePointerInputNode;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Landroidx/compose/foundation/CombinedClickablePointerInputNode$pointerInput$4;->L$0:Ljava/lang/Object;

    iput-wide p2, v0, Landroidx/compose/foundation/CombinedClickablePointerInputNode$pointerInput$4;->J$0:J

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, p0}, Landroidx/compose/foundation/CombinedClickablePointerInputNode$pointerInput$4;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Landroidx/compose/foundation/CombinedClickablePointerInputNode$pointerInput$4;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    .line 934
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Landroidx/compose/foundation/CombinedClickablePointerInputNode$pointerInput$4;->L$0:Ljava/lang/Object;

    check-cast p1, Landroidx/compose/foundation/gestures/PressGestureScope;

    iget-wide v3, p0, Landroidx/compose/foundation/CombinedClickablePointerInputNode$pointerInput$4;->J$0:J

    iget-object v1, p0, Landroidx/compose/foundation/CombinedClickablePointerInputNode$pointerInput$4;->this$0:Landroidx/compose/foundation/CombinedClickablePointerInputNode;

    .line 935
    invoke-virtual {v1}, Landroidx/compose/foundation/CombinedClickablePointerInputNode;->getEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroidx/compose/foundation/CombinedClickablePointerInputNode$pointerInput$4;->this$0:Landroidx/compose/foundation/CombinedClickablePointerInputNode;

    .line 936
    move-object v5, p0

    check-cast v5, Lkotlin/coroutines/Continuation;

    iput v2, p0, Landroidx/compose/foundation/CombinedClickablePointerInputNode$pointerInput$4;->label:I

    invoke-virtual {v1, p1, v3, v4, v5}, Landroidx/compose/foundation/CombinedClickablePointerInputNode;->handlePressInteraction-d-4ec7I(Landroidx/compose/foundation/gestures/PressGestureScope;JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_2

    return-object v0

    .line 938
    :cond_2
    :goto_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
