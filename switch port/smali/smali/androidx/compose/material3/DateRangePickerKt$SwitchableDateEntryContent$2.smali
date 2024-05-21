.class final Landroidx/compose/material3/DateRangePickerKt$SwitchableDateEntryContent$2;
.super Lkotlin/jvm/internal/Lambda;
.source "DateRangePicker.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/material3/DateRangePickerKt;->SwitchableDateEntryContent(Landroidx/compose/material3/DateRangePickerState;Landroidx/compose/material3/DatePickerFormatter;Lkotlin/jvm/functions/Function1;Landroidx/compose/material3/DatePickerColors;Landroidx/compose/runtime/Composer;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function3<",
        "Landroidx/compose/material3/DisplayMode;",
        "Landroidx/compose/runtime/Composer;",
        "Ljava/lang/Integer;",
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
.field final synthetic $$dirty:I

.field final synthetic $colors:Landroidx/compose/material3/DatePickerColors;

.field final synthetic $dateFormatter:Landroidx/compose/material3/DatePickerFormatter;

.field final synthetic $dateValidator:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/Long;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $state:Landroidx/compose/material3/DateRangePickerState;


# direct methods
.method constructor <init>(Landroidx/compose/material3/DateRangePickerState;Landroidx/compose/material3/DatePickerFormatter;Lkotlin/jvm/functions/Function1;Landroidx/compose/material3/DatePickerColors;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/material3/DateRangePickerState;",
            "Landroidx/compose/material3/DatePickerFormatter;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Long;",
            "Ljava/lang/Boolean;",
            ">;",
            "Landroidx/compose/material3/DatePickerColors;",
            "I)V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/compose/material3/DateRangePickerKt$SwitchableDateEntryContent$2;->$state:Landroidx/compose/material3/DateRangePickerState;

    iput-object p2, p0, Landroidx/compose/material3/DateRangePickerKt$SwitchableDateEntryContent$2;->$dateFormatter:Landroidx/compose/material3/DatePickerFormatter;

    iput-object p3, p0, Landroidx/compose/material3/DateRangePickerKt$SwitchableDateEntryContent$2;->$dateValidator:Lkotlin/jvm/functions/Function1;

    iput-object p4, p0, Landroidx/compose/material3/DateRangePickerKt$SwitchableDateEntryContent$2;->$colors:Landroidx/compose/material3/DatePickerColors;

    iput p5, p0, Landroidx/compose/material3/DateRangePickerKt$SwitchableDateEntryContent$2;->$$dirty:I

    const/4 p1, 0x3

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 459
    check-cast p1, Landroidx/compose/material3/DisplayMode;

    invoke-virtual {p1}, Landroidx/compose/material3/DisplayMode;->unbox-impl()I

    move-result p1

    check-cast p2, Landroidx/compose/runtime/Composer;

    check-cast p3, Ljava/lang/Number;

    invoke-virtual {p3}, Ljava/lang/Number;->intValue()I

    move-result p3

    invoke-virtual {p0, p1, p2, p3}, Landroidx/compose/material3/DateRangePickerKt$SwitchableDateEntryContent$2;->invoke-QujVXRc(ILandroidx/compose/runtime/Composer;I)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final invoke-QujVXRc(ILandroidx/compose/runtime/Composer;I)V
    .locals 6

    const-string v0, "CP(0:c#material3.DisplayMode):DateRangePicker.kt#uh7d8r"

    invoke-static {p2, v0}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    and-int/lit8 v0, p3, 0xe

    if-nez v0, :cond_1

    invoke-interface {p2, p1}, Landroidx/compose/runtime/Composer;->changed(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    :goto_0
    or-int/2addr v0, p3

    goto :goto_1

    :cond_1
    move v0, p3

    :goto_1
    and-int/lit8 v0, v0, 0x5b

    const/16 v1, 0x12

    if-ne v0, v1, :cond_3

    .line 460
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_2

    .line 473
    :cond_2
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    goto/16 :goto_4

    .line 460
    :cond_3
    :goto_2
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, -0x1

    const-string v1, "androidx.compose.material3.SwitchableDateEntryContent.<anonymous> (DateRangePicker.kt:458)"

    const v2, 0x50bac9cc

    invoke-static {v2, p3, v0, v1}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 461
    :cond_4
    sget-object p3, Landroidx/compose/material3/DisplayMode;->Companion:Landroidx/compose/material3/DisplayMode$Companion;

    invoke-virtual {p3}, Landroidx/compose/material3/DisplayMode$Companion;->getPicker-jFl-4v0()I

    move-result p3

    invoke-static {p1, p3}, Landroidx/compose/material3/DisplayMode;->equals-impl0(II)Z

    move-result p3

    if-eqz p3, :cond_5

    const p1, -0x45a9c8f1

    invoke-interface {p2, p1}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string p1, "460@19572L208"

    invoke-static {p2, p1}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    iget-object p1, p0, Landroidx/compose/material3/DateRangePickerKt$SwitchableDateEntryContent$2;->$state:Landroidx/compose/material3/DateRangePickerState;

    .line 462
    invoke-virtual {p1}, Landroidx/compose/material3/DateRangePickerState;->getStateData$material3_release()Landroidx/compose/material3/StateData;

    move-result-object v0

    iget-object v1, p0, Landroidx/compose/material3/DateRangePickerKt$SwitchableDateEntryContent$2;->$dateFormatter:Landroidx/compose/material3/DatePickerFormatter;

    iget-object v2, p0, Landroidx/compose/material3/DateRangePickerKt$SwitchableDateEntryContent$2;->$dateValidator:Lkotlin/jvm/functions/Function1;

    iget-object v3, p0, Landroidx/compose/material3/DateRangePickerKt$SwitchableDateEntryContent$2;->$colors:Landroidx/compose/material3/DatePickerColors;

    iget p0, p0, Landroidx/compose/material3/DateRangePickerKt$SwitchableDateEntryContent$2;->$$dirty:I

    and-int/lit8 p1, p0, 0x70

    and-int/lit16 p3, p0, 0x380

    or-int/2addr p1, p3

    and-int/lit16 p0, p0, 0x1c00

    or-int v5, p1, p0

    move-object v4, p2

    .line 461
    invoke-static/range {v0 .. v5}, Landroidx/compose/material3/DateRangePickerKt;->access$DateRangePickerContent(Landroidx/compose/material3/StateData;Landroidx/compose/material3/DatePickerFormatter;Lkotlin/jvm/functions/Function1;Landroidx/compose/material3/DatePickerColors;Landroidx/compose/runtime/Composer;I)V

    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    goto :goto_3

    .line 468
    :cond_5
    sget-object p3, Landroidx/compose/material3/DisplayMode;->Companion:Landroidx/compose/material3/DisplayMode$Companion;

    invoke-virtual {p3}, Landroidx/compose/material3/DisplayMode$Companion;->getInput-jFl-4v0()I

    move-result p3

    invoke-static {p1, p3}, Landroidx/compose/material3/DisplayMode;->equals-impl0(II)Z

    move-result p1

    if-eqz p1, :cond_6

    const p1, -0x45a9c7fe

    invoke-interface {p2, p1}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string p1, "467@19815L175"

    invoke-static {p2, p1}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    iget-object p1, p0, Landroidx/compose/material3/DateRangePickerKt$SwitchableDateEntryContent$2;->$state:Landroidx/compose/material3/DateRangePickerState;

    .line 469
    invoke-virtual {p1}, Landroidx/compose/material3/DateRangePickerState;->getStateData$material3_release()Landroidx/compose/material3/StateData;

    move-result-object p1

    iget-object p3, p0, Landroidx/compose/material3/DateRangePickerKt$SwitchableDateEntryContent$2;->$dateFormatter:Landroidx/compose/material3/DatePickerFormatter;

    iget-object v0, p0, Landroidx/compose/material3/DateRangePickerKt$SwitchableDateEntryContent$2;->$dateValidator:Lkotlin/jvm/functions/Function1;

    iget p0, p0, Landroidx/compose/material3/DateRangePickerKt$SwitchableDateEntryContent$2;->$$dirty:I

    and-int/lit8 v1, p0, 0x70

    and-int/lit16 p0, p0, 0x380

    or-int/2addr p0, v1

    .line 468
    invoke-static {p1, p3, v0, p2, p0}, Landroidx/compose/material3/DateRangeInputKt;->DateRangeInputContent(Landroidx/compose/material3/StateData;Landroidx/compose/material3/DatePickerFormatter;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V

    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    goto :goto_3

    :cond_6
    const p0, -0x45a9c745

    .line 473
    invoke-interface {p2, p0}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    :goto_3
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result p0

    if-eqz p0, :cond_7

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_7
    :goto_4
    return-void
.end method
