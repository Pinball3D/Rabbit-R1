.class final Landroidx/compose/material3/TimePickerKt$ClockText$2;
.super Lkotlin/jvm/internal/Lambda;
.source "TimePicker.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/material3/TimePickerKt;->ClockText(Landroidx/compose/material3/TimePickerState;IZLandroidx/compose/runtime/Composer;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;",
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

.field final synthetic $center$delegate:Landroidx/compose/runtime/MutableState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/MutableState<",
            "Landroidx/compose/ui/geometry/Offset;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $maxDist:F

.field final synthetic $scope:Lkotlinx/coroutines/CoroutineScope;

.field final synthetic $selected:Z

.field final synthetic $state:Landroidx/compose/material3/TimePickerState;


# direct methods
.method constructor <init>(ZLkotlinx/coroutines/CoroutineScope;Landroidx/compose/material3/TimePickerState;FZLandroidx/compose/runtime/MutableState;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lkotlinx/coroutines/CoroutineScope;",
            "Landroidx/compose/material3/TimePickerState;",
            "FZ",
            "Landroidx/compose/runtime/MutableState<",
            "Landroidx/compose/ui/geometry/Offset;",
            ">;)V"
        }
    .end annotation

    iput-boolean p1, p0, Landroidx/compose/material3/TimePickerKt$ClockText$2;->$selected:Z

    iput-object p2, p0, Landroidx/compose/material3/TimePickerKt$ClockText$2;->$scope:Lkotlinx/coroutines/CoroutineScope;

    iput-object p3, p0, Landroidx/compose/material3/TimePickerKt$ClockText$2;->$state:Landroidx/compose/material3/TimePickerState;

    iput p4, p0, Landroidx/compose/material3/TimePickerKt$ClockText$2;->$maxDist:F

    iput-boolean p5, p0, Landroidx/compose/material3/TimePickerKt$ClockText$2;->$autoSwitchToMinute:Z

    iput-object p6, p0, Landroidx/compose/material3/TimePickerKt$ClockText$2;->$center$delegate:Landroidx/compose/runtime/MutableState;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1316
    check-cast p1, Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;

    invoke-virtual {p0, p1}, Landroidx/compose/material3/TimePickerKt$ClockText$2;->invoke(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final invoke(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;)V
    .locals 7

    const-string v0, "$this$semantics"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1317
    new-instance v0, Landroidx/compose/material3/TimePickerKt$ClockText$2$1;

    iget-object v2, p0, Landroidx/compose/material3/TimePickerKt$ClockText$2;->$scope:Lkotlinx/coroutines/CoroutineScope;

    iget-object v3, p0, Landroidx/compose/material3/TimePickerKt$ClockText$2;->$state:Landroidx/compose/material3/TimePickerState;

    iget v4, p0, Landroidx/compose/material3/TimePickerKt$ClockText$2;->$maxDist:F

    iget-boolean v5, p0, Landroidx/compose/material3/TimePickerKt$ClockText$2;->$autoSwitchToMinute:Z

    iget-object v6, p0, Landroidx/compose/material3/TimePickerKt$ClockText$2;->$center$delegate:Landroidx/compose/runtime/MutableState;

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Landroidx/compose/material3/TimePickerKt$ClockText$2$1;-><init>(Lkotlinx/coroutines/CoroutineScope;Landroidx/compose/material3/TimePickerState;FZLandroidx/compose/runtime/MutableState;)V

    check-cast v0, Lkotlin/jvm/functions/Function0;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {p1, v2, v0, v1, v2}, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->onClick$default(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;Ljava/lang/String;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    iget-boolean p0, p0, Landroidx/compose/material3/TimePickerKt$ClockText$2;->$selected:Z

    .line 1321
    invoke-static {p1, p0}, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->setSelected(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;Z)V

    return-void
.end method
