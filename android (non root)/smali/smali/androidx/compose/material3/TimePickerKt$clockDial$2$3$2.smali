.class final Landroidx/compose/material3/TimePickerKt$clockDial$2$3$2;
.super Lkotlin/jvm/internal/Lambda;
.source "TimePicker.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/material3/TimePickerKt$clockDial$2$3;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
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
    k = 0x3
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $maxDist:F

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

.field final synthetic $scope:Lkotlinx/coroutines/CoroutineScope;

.field final synthetic $state:Landroidx/compose/material3/TimePickerState;


# direct methods
.method constructor <init>(Lkotlinx/coroutines/CoroutineScope;Landroidx/compose/material3/TimePickerState;FLandroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/CoroutineScope;",
            "Landroidx/compose/material3/TimePickerState;",
            "F",
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/Float;",
            ">;",
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/Float;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/compose/material3/TimePickerKt$clockDial$2$3$2;->$scope:Lkotlinx/coroutines/CoroutineScope;

    iput-object p2, p0, Landroidx/compose/material3/TimePickerKt$clockDial$2$3$2;->$state:Landroidx/compose/material3/TimePickerState;

    iput p3, p0, Landroidx/compose/material3/TimePickerKt$clockDial$2$3$2;->$maxDist:F

    iput-object p4, p0, Landroidx/compose/material3/TimePickerKt$clockDial$2$3$2;->$offsetX$delegate:Landroidx/compose/runtime/MutableState;

    iput-object p5, p0, Landroidx/compose/material3/TimePickerKt$clockDial$2$3$2;->$offsetY$delegate:Landroidx/compose/runtime/MutableState;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1266
    check-cast p1, Landroidx/compose/ui/input/pointer/PointerInputChange;

    check-cast p2, Landroidx/compose/ui/geometry/Offset;

    invoke-virtual {p2}, Landroidx/compose/ui/geometry/Offset;->unbox-impl()J

    move-result-wide v0

    invoke-virtual {p0, p1, v0, v1}, Landroidx/compose/material3/TimePickerKt$clockDial$2$3$2;->invoke-Uv8p0NA(Landroidx/compose/ui/input/pointer/PointerInputChange;J)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final invoke-Uv8p0NA(Landroidx/compose/ui/input/pointer/PointerInputChange;J)V
    .locals 11

    const-string v0, "<anonymous parameter 0>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Landroidx/compose/material3/TimePickerKt$clockDial$2$3$2;->$scope:Lkotlinx/coroutines/CoroutineScope;

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 1276
    new-instance p1, Landroidx/compose/material3/TimePickerKt$clockDial$2$3$2$1;

    iget-object v7, p0, Landroidx/compose/material3/TimePickerKt$clockDial$2$3$2;->$state:Landroidx/compose/material3/TimePickerState;

    iget-object v8, p0, Landroidx/compose/material3/TimePickerKt$clockDial$2$3$2;->$offsetX$delegate:Landroidx/compose/runtime/MutableState;

    iget-object v9, p0, Landroidx/compose/material3/TimePickerKt$clockDial$2$3$2;->$offsetY$delegate:Landroidx/compose/runtime/MutableState;

    const/4 v10, 0x0

    move-object v4, p1

    move-wide v5, p2

    invoke-direct/range {v4 .. v10}, Landroidx/compose/material3/TimePickerKt$clockDial$2$3$2$1;-><init>(JLandroidx/compose/material3/TimePickerState;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Lkotlin/coroutines/Continuation;)V

    move-object v4, p1

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/4 v5, 0x3

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    iget-object p1, p0, Landroidx/compose/material3/TimePickerKt$clockDial$2$3$2;->$state:Landroidx/compose/material3/TimePickerState;

    iget-object p2, p0, Landroidx/compose/material3/TimePickerKt$clockDial$2$3$2;->$offsetX$delegate:Landroidx/compose/runtime/MutableState;

    .line 1281
    invoke-static {p2}, Landroidx/compose/material3/TimePickerKt$clockDial$2;->access$invoke$lambda$1(Landroidx/compose/runtime/MutableState;)F

    move-result p2

    iget-object p3, p0, Landroidx/compose/material3/TimePickerKt$clockDial$2$3$2;->$offsetY$delegate:Landroidx/compose/runtime/MutableState;

    invoke-static {p3}, Landroidx/compose/material3/TimePickerKt$clockDial$2;->access$invoke$lambda$4(Landroidx/compose/runtime/MutableState;)F

    move-result p3

    iget p0, p0, Landroidx/compose/material3/TimePickerKt$clockDial$2$3$2;->$maxDist:F

    invoke-virtual {p1, p2, p3, p0}, Landroidx/compose/material3/TimePickerState;->moveSelector$material3_release(FFF)V

    return-void
.end method
