.class final Landroidx/compose/material3/TimePickerKt$TimeSelector$2;
.super Lkotlin/jvm/internal/Lambda;
.source "TimePicker.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/material3/TimePickerKt;->TimeSelector-uXwN82Y(Landroidx/compose/ui/Modifier;ILandroidx/compose/material3/TimePickerState;ILandroidx/compose/material3/TimePickerColors;Landroidx/compose/runtime/Composer;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
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
.field final synthetic $scope:Lkotlinx/coroutines/CoroutineScope;

.field final synthetic $selection:I

.field final synthetic $state:Landroidx/compose/material3/TimePickerState;


# direct methods
.method constructor <init>(ILandroidx/compose/material3/TimePickerState;Lkotlinx/coroutines/CoroutineScope;)V
    .locals 0

    iput p1, p0, Landroidx/compose/material3/TimePickerKt$TimeSelector$2;->$selection:I

    iput-object p2, p0, Landroidx/compose/material3/TimePickerKt$TimeSelector$2;->$state:Landroidx/compose/material3/TimePickerState;

    iput-object p3, p0, Landroidx/compose/material3/TimePickerKt$TimeSelector$2;->$scope:Lkotlinx/coroutines/CoroutineScope;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    .line 1090
    invoke-virtual {p0}, Landroidx/compose/material3/TimePickerKt$TimeSelector$2;->invoke()V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final invoke()V
    .locals 8

    iget v0, p0, Landroidx/compose/material3/TimePickerKt$TimeSelector$2;->$selection:I

    iget-object v1, p0, Landroidx/compose/material3/TimePickerKt$TimeSelector$2;->$state:Landroidx/compose/material3/TimePickerState;

    .line 1097
    invoke-virtual {v1}, Landroidx/compose/material3/TimePickerState;->getSelection-JiIwxys$material3_release()I

    move-result v1

    invoke-static {v0, v1}, Landroidx/compose/material3/Selection;->equals-impl0(II)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/compose/material3/TimePickerKt$TimeSelector$2;->$state:Landroidx/compose/material3/TimePickerState;

    iget v1, p0, Landroidx/compose/material3/TimePickerKt$TimeSelector$2;->$selection:I

    .line 1098
    invoke-virtual {v0, v1}, Landroidx/compose/material3/TimePickerState;->setSelection-iHAOin8$material3_release(I)V

    iget-object v2, p0, Landroidx/compose/material3/TimePickerKt$TimeSelector$2;->$scope:Lkotlinx/coroutines/CoroutineScope;

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 1099
    new-instance v0, Landroidx/compose/material3/TimePickerKt$TimeSelector$2$1;

    iget-object p0, p0, Landroidx/compose/material3/TimePickerKt$TimeSelector$2;->$state:Landroidx/compose/material3/TimePickerState;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroidx/compose/material3/TimePickerKt$TimeSelector$2$1;-><init>(Landroidx/compose/material3/TimePickerState;Lkotlin/coroutines/Continuation;)V

    move-object v5, v0

    check-cast v5, Lkotlin/jvm/functions/Function2;

    const/4 v6, 0x3

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    :cond_0
    return-void
.end method
