.class final Landroidx/compose/material3/DatePickerKt$Month$rangeSelectionInfo$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source "DatePicker.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/material3/DatePickerKt;->Month(Landroidx/compose/material3/CalendarMonth;Lkotlin/jvm/functions/Function1;Landroidx/compose/material3/CalendarDate;Landroidx/compose/material3/StateData;ZLkotlin/jvm/functions/Function1;Landroidx/compose/material3/DatePickerFormatter;Landroidx/compose/material3/DatePickerColors;Landroidx/compose/runtime/Composer;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Landroidx/compose/material3/SelectedRangeInfo;",
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
.field final synthetic $month:Landroidx/compose/material3/CalendarMonth;

.field final synthetic $rangeSelectionEnabled:Z

.field final synthetic $stateData:Landroidx/compose/material3/StateData;


# direct methods
.method constructor <init>(ZLandroidx/compose/material3/CalendarMonth;Landroidx/compose/material3/StateData;)V
    .locals 0

    iput-boolean p1, p0, Landroidx/compose/material3/DatePickerKt$Month$rangeSelectionInfo$1$1;->$rangeSelectionEnabled:Z

    iput-object p2, p0, Landroidx/compose/material3/DatePickerKt$Month$rangeSelectionInfo$1$1;->$month:Landroidx/compose/material3/CalendarMonth;

    iput-object p3, p0, Landroidx/compose/material3/DatePickerKt$Month$rangeSelectionInfo$1$1;->$stateData:Landroidx/compose/material3/StateData;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Landroidx/compose/material3/SelectedRangeInfo;
    .locals 3

    iget-boolean v0, p0, Landroidx/compose/material3/DatePickerKt$Month$rangeSelectionInfo$1$1;->$rangeSelectionEnabled:Z

    if-eqz v0, :cond_0

    .line 1418
    sget-object v0, Landroidx/compose/material3/SelectedRangeInfo;->Companion:Landroidx/compose/material3/SelectedRangeInfo$Companion;

    iget-object v1, p0, Landroidx/compose/material3/DatePickerKt$Month$rangeSelectionInfo$1$1;->$month:Landroidx/compose/material3/CalendarMonth;

    iget-object v2, p0, Landroidx/compose/material3/DatePickerKt$Month$rangeSelectionInfo$1$1;->$stateData:Landroidx/compose/material3/StateData;

    .line 1420
    invoke-virtual {v2}, Landroidx/compose/material3/StateData;->getSelectedStartDate()Landroidx/compose/runtime/MutableState;

    move-result-object v2

    invoke-interface {v2}, Landroidx/compose/runtime/MutableState;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/compose/material3/CalendarDate;

    iget-object p0, p0, Landroidx/compose/material3/DatePickerKt$Month$rangeSelectionInfo$1$1;->$stateData:Landroidx/compose/material3/StateData;

    .line 1421
    invoke-virtual {p0}, Landroidx/compose/material3/StateData;->getSelectedEndDate()Landroidx/compose/runtime/MutableState;

    move-result-object p0

    invoke-interface {p0}, Landroidx/compose/runtime/MutableState;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/compose/material3/CalendarDate;

    .line 1418
    invoke-virtual {v0, v1, v2, p0}, Landroidx/compose/material3/SelectedRangeInfo$Companion;->calculateRangeInfo(Landroidx/compose/material3/CalendarMonth;Landroidx/compose/material3/CalendarDate;Landroidx/compose/material3/CalendarDate;)Landroidx/compose/material3/SelectedRangeInfo;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    .line 1416
    invoke-virtual {p0}, Landroidx/compose/material3/DatePickerKt$Month$rangeSelectionInfo$1$1;->invoke()Landroidx/compose/material3/SelectedRangeInfo;

    move-result-object p0

    return-object p0
.end method
