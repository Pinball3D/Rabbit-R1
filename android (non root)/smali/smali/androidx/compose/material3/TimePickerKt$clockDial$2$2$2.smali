.class final Landroidx/compose/material3/TimePickerKt$clockDial$2$2$2;
.super Lkotlin/jvm/internal/Lambda;
.source "TimePicker.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/material3/TimePickerKt$clockDial$2$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
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
        "Lkotlin/Unit;",
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


# instance fields
.field final synthetic $autoSwitchToMinute:Z

.field final synthetic $maxDist:F

.field final synthetic $scope:Lkotlinx/coroutines/CoroutineScope;

.field final synthetic $state:Landroidx/compose/material3/TimePickerState;


# direct methods
.method constructor <init>(Lkotlinx/coroutines/CoroutineScope;Landroidx/compose/material3/TimePickerState;FZ)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/material3/TimePickerKt$clockDial$2$2$2;->$scope:Lkotlinx/coroutines/CoroutineScope;

    iput-object p2, p0, Landroidx/compose/material3/TimePickerKt$clockDial$2$2$2;->$state:Landroidx/compose/material3/TimePickerState;

    iput p3, p0, Landroidx/compose/material3/TimePickerKt$clockDial$2$2$2;->$maxDist:F

    iput-boolean p4, p0, Landroidx/compose/material3/TimePickerKt$clockDial$2$2$2;->$autoSwitchToMinute:Z

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1255
    check-cast p1, Landroidx/compose/ui/geometry/Offset;

    invoke-virtual {p1}, Landroidx/compose/ui/geometry/Offset;->unbox-impl()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Landroidx/compose/material3/TimePickerKt$clockDial$2$2$2;->invoke-k-4lQ0M(J)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final invoke-k-4lQ0M(J)V
    .locals 11

    iget-object v0, p0, Landroidx/compose/material3/TimePickerKt$clockDial$2$2$2;->$scope:Lkotlinx/coroutines/CoroutineScope;

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 1261
    new-instance v10, Landroidx/compose/material3/TimePickerKt$clockDial$2$2$2$1;

    iget-object v4, p0, Landroidx/compose/material3/TimePickerKt$clockDial$2$2$2;->$state:Landroidx/compose/material3/TimePickerState;

    iget v7, p0, Landroidx/compose/material3/TimePickerKt$clockDial$2$2$2;->$maxDist:F

    iget-boolean v8, p0, Landroidx/compose/material3/TimePickerKt$clockDial$2$2$2;->$autoSwitchToMinute:Z

    const/4 v9, 0x0

    move-object v3, v10

    move-wide v5, p1

    invoke-direct/range {v3 .. v9}, Landroidx/compose/material3/TimePickerKt$clockDial$2$2$2$1;-><init>(Landroidx/compose/material3/TimePickerState;JFZLkotlin/coroutines/Continuation;)V

    move-object v3, v10

    check-cast v3, Lkotlin/jvm/functions/Function2;

    const/4 v4, 0x3

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method
