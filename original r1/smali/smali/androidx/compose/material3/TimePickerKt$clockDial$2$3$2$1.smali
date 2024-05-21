.class final Landroidx/compose/material3/TimePickerKt$clockDial$2$3$2$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "TimePicker.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/material3/TimePickerKt$clockDial$2$3$2;->invoke-Uv8p0NA(Landroidx/compose/ui/input/pointer/PointerInputChange;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lkotlinx/coroutines/CoroutineScope;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
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
    c = "androidx.compose.material3.TimePickerKt$clockDial$2$3$2$1"
    f = "TimePicker.kt"
    i = {}
    l = {
        0x4ff
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $dragAmount:J

.field final synthetic $offsetX$delegate:Landroidx/compose/runtime/MutableState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $offsetY$delegate:Landroidx/compose/runtime/MutableState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $state:Landroidx/compose/material3/TimePickerState;

.field label:I


# direct methods
.method constructor <init>(JLandroidx/compose/material3/TimePickerState;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Landroidx/compose/material3/TimePickerState;",
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/Float;",
            ">;",
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/Float;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Landroidx/compose/material3/TimePickerKt$clockDial$2$3$2$1;",
            ">;)V"
        }
    .end annotation

    iput-wide p1, p0, Landroidx/compose/material3/TimePickerKt$clockDial$2$3$2$1;->$dragAmount:J

    iput-object p3, p0, Landroidx/compose/material3/TimePickerKt$clockDial$2$3$2$1;->$state:Landroidx/compose/material3/TimePickerState;

    iput-object p4, p0, Landroidx/compose/material3/TimePickerKt$clockDial$2$3$2$1;->$offsetX$delegate:Landroidx/compose/runtime/MutableState;

    iput-object p5, p0, Landroidx/compose/material3/TimePickerKt$clockDial$2$3$2$1;->$offsetY$delegate:Landroidx/compose/runtime/MutableState;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p6}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lkotlin/coroutines/Continuation<",
            "*>;)",
            "Lkotlin/coroutines/Continuation<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    new-instance p1, Landroidx/compose/material3/TimePickerKt$clockDial$2$3$2$1;

    iget-wide v1, p0, Landroidx/compose/material3/TimePickerKt$clockDial$2$3$2$1;->$dragAmount:J

    iget-object v3, p0, Landroidx/compose/material3/TimePickerKt$clockDial$2$3$2$1;->$state:Landroidx/compose/material3/TimePickerState;

    iget-object v4, p0, Landroidx/compose/material3/TimePickerKt$clockDial$2$3$2$1;->$offsetX$delegate:Landroidx/compose/runtime/MutableState;

    iget-object v5, p0, Landroidx/compose/material3/TimePickerKt$clockDial$2$3$2$1;->$offsetY$delegate:Landroidx/compose/runtime/MutableState;

    move-object v0, p1

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Landroidx/compose/material3/TimePickerKt$clockDial$2$3$2$1;-><init>(JLandroidx/compose/material3/TimePickerState;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Lkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlin/coroutines/Continuation;

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Landroidx/compose/material3/TimePickerKt$clockDial$2$3$2$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0
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

    invoke-virtual {p0, p1, p2}, Landroidx/compose/material3/TimePickerKt$clockDial$2$3$2$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Landroidx/compose/material3/TimePickerKt$clockDial$2$3$2$1;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Landroidx/compose/material3/TimePickerKt$clockDial$2$3$2$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Landroidx/compose/material3/TimePickerKt$clockDial$2$3$2$1;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    .line 65535
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Landroidx/compose/material3/TimePickerKt$clockDial$2$3$2$1;->$offsetX$delegate:Landroidx/compose/runtime/MutableState;

    .line 1277
    invoke-static {p1}, Landroidx/compose/material3/TimePickerKt$clockDial$2;->access$invoke$lambda$1(Landroidx/compose/runtime/MutableState;)F

    move-result v1

    iget-wide v3, p0, Landroidx/compose/material3/TimePickerKt$clockDial$2$3$2$1;->$dragAmount:J

    invoke-static {v3, v4}, Landroidx/compose/ui/geometry/Offset;->getX-impl(J)F

    move-result v3

    add-float/2addr v1, v3

    invoke-static {p1, v1}, Landroidx/compose/material3/TimePickerKt$clockDial$2;->access$invoke$lambda$2(Landroidx/compose/runtime/MutableState;F)V

    iget-object p1, p0, Landroidx/compose/material3/TimePickerKt$clockDial$2$3$2$1;->$offsetY$delegate:Landroidx/compose/runtime/MutableState;

    .line 1278
    invoke-static {p1}, Landroidx/compose/material3/TimePickerKt$clockDial$2;->access$invoke$lambda$4(Landroidx/compose/runtime/MutableState;)F

    move-result v1

    iget-wide v3, p0, Landroidx/compose/material3/TimePickerKt$clockDial$2$3$2$1;->$dragAmount:J

    invoke-static {v3, v4}, Landroidx/compose/ui/geometry/Offset;->getY-impl(J)F

    move-result v3

    add-float/2addr v1, v3

    invoke-static {p1, v1}, Landroidx/compose/material3/TimePickerKt$clockDial$2;->access$invoke$lambda$5(Landroidx/compose/runtime/MutableState;F)V

    iget-object v3, p0, Landroidx/compose/material3/TimePickerKt$clockDial$2$3$2$1;->$state:Landroidx/compose/material3/TimePickerState;

    iget-object p1, p0, Landroidx/compose/material3/TimePickerKt$clockDial$2$3$2$1;->$offsetY$delegate:Landroidx/compose/runtime/MutableState;

    .line 1279
    invoke-static {p1}, Landroidx/compose/material3/TimePickerKt$clockDial$2;->access$invoke$lambda$4(Landroidx/compose/runtime/MutableState;)F

    move-result p1

    iget-object v1, p0, Landroidx/compose/material3/TimePickerKt$clockDial$2$3$2$1;->$state:Landroidx/compose/material3/TimePickerState;

    invoke-virtual {v1}, Landroidx/compose/material3/TimePickerState;->getCenter-nOcc-ac$material3_release()J

    move-result-wide v4

    invoke-static {v4, v5}, Landroidx/compose/ui/unit/IntOffset;->getY-impl(J)I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr p1, v1

    iget-object v1, p0, Landroidx/compose/material3/TimePickerKt$clockDial$2$3$2$1;->$offsetX$delegate:Landroidx/compose/runtime/MutableState;

    invoke-static {v1}, Landroidx/compose/material3/TimePickerKt$clockDial$2;->access$invoke$lambda$1(Landroidx/compose/runtime/MutableState;)F

    move-result v1

    iget-object v4, p0, Landroidx/compose/material3/TimePickerKt$clockDial$2$3$2$1;->$state:Landroidx/compose/material3/TimePickerState;

    invoke-virtual {v4}, Landroidx/compose/material3/TimePickerState;->getCenter-nOcc-ac$material3_release()J

    move-result-wide v4

    invoke-static {v4, v5}, Landroidx/compose/ui/unit/IntOffset;->getX-impl(J)I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v1, v4

    invoke-static {p1, v1}, Landroidx/compose/material3/TimePickerKt;->access$atan(FF)F

    move-result v4

    const/4 v5, 0x0

    move-object v6, p0

    check-cast v6, Lkotlin/coroutines/Continuation;

    const/4 v7, 0x2

    const/4 v8, 0x0

    iput v2, p0, Landroidx/compose/material3/TimePickerKt$clockDial$2$3$2$1;->label:I

    invoke-static/range {v3 .. v8}, Landroidx/compose/material3/TimePickerState;->update$material3_release$default(Landroidx/compose/material3/TimePickerState;FZLkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_2

    return-object v0

    .line 1280
    :cond_2
    :goto_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
