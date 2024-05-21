.class final Landroidx/compose/material3/TimePickerKt$clockDial$2$2$2$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "TimePicker.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/material3/TimePickerKt$clockDial$2$2$2;->invoke-k-4lQ0M(J)V
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
    c = "androidx.compose.material3.TimePickerKt$clockDial$2$2$2$1"
    f = "TimePicker.kt"
    i = {}
    l = {
        0x4ed
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $autoSwitchToMinute:Z

.field final synthetic $it:J

.field final synthetic $maxDist:F

.field final synthetic $state:Landroidx/compose/material3/TimePickerState;

.field label:I


# direct methods
.method constructor <init>(Landroidx/compose/material3/TimePickerState;JFZLkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/material3/TimePickerState;",
            "JFZ",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Landroidx/compose/material3/TimePickerKt$clockDial$2$2$2$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/compose/material3/TimePickerKt$clockDial$2$2$2$1;->$state:Landroidx/compose/material3/TimePickerState;

    iput-wide p2, p0, Landroidx/compose/material3/TimePickerKt$clockDial$2$2$2$1;->$it:J

    iput p4, p0, Landroidx/compose/material3/TimePickerKt$clockDial$2$2$2$1;->$maxDist:F

    iput-boolean p5, p0, Landroidx/compose/material3/TimePickerKt$clockDial$2$2$2$1;->$autoSwitchToMinute:Z

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

    new-instance p1, Landroidx/compose/material3/TimePickerKt$clockDial$2$2$2$1;

    iget-object v1, p0, Landroidx/compose/material3/TimePickerKt$clockDial$2$2$2$1;->$state:Landroidx/compose/material3/TimePickerState;

    iget-wide v2, p0, Landroidx/compose/material3/TimePickerKt$clockDial$2$2$2$1;->$it:J

    iget v4, p0, Landroidx/compose/material3/TimePickerKt$clockDial$2$2$2$1;->$maxDist:F

    iget-boolean v5, p0, Landroidx/compose/material3/TimePickerKt$clockDial$2$2$2$1;->$autoSwitchToMinute:Z

    move-object v0, p1

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Landroidx/compose/material3/TimePickerKt$clockDial$2$2$2$1;-><init>(Landroidx/compose/material3/TimePickerState;JFZLkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlin/coroutines/Continuation;

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Landroidx/compose/material3/TimePickerKt$clockDial$2$2$2$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Landroidx/compose/material3/TimePickerKt$clockDial$2$2$2$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Landroidx/compose/material3/TimePickerKt$clockDial$2$2$2$1;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Landroidx/compose/material3/TimePickerKt$clockDial$2$2$2$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Landroidx/compose/material3/TimePickerKt$clockDial$2$2$2$1;->label:I

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

    iget-object v1, p0, Landroidx/compose/material3/TimePickerKt$clockDial$2$2$2$1;->$state:Landroidx/compose/material3/TimePickerState;

    iget-wide v3, p0, Landroidx/compose/material3/TimePickerKt$clockDial$2$2$2$1;->$it:J

    .line 1261
    invoke-static {v3, v4}, Landroidx/compose/ui/geometry/Offset;->getX-impl(J)F

    move-result p1

    iget-wide v3, p0, Landroidx/compose/material3/TimePickerKt$clockDial$2$2$2$1;->$it:J

    invoke-static {v3, v4}, Landroidx/compose/ui/geometry/Offset;->getY-impl(J)F

    move-result v3

    iget v4, p0, Landroidx/compose/material3/TimePickerKt$clockDial$2$2$2$1;->$maxDist:F

    iget-boolean v5, p0, Landroidx/compose/material3/TimePickerKt$clockDial$2$2$2$1;->$autoSwitchToMinute:Z

    move-object v6, p0

    check-cast v6, Lkotlin/coroutines/Continuation;

    iput v2, p0, Landroidx/compose/material3/TimePickerKt$clockDial$2$2$2$1;->label:I

    move v2, p1

    invoke-virtual/range {v1 .. v6}, Landroidx/compose/material3/TimePickerState;->onTap$material3_release(FFFZLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_2

    return-object v0

    :cond_2
    :goto_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
