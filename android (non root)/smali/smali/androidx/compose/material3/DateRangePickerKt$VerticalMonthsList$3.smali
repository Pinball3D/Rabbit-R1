.class final Landroidx/compose/material3/DateRangePickerKt$VerticalMonthsList$3;
.super Lkotlin/jvm/internal/Lambda;
.source "DateRangePicker.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/material3/DateRangePickerKt;->VerticalMonthsList(Lkotlin/jvm/functions/Function1;Landroidx/compose/material3/StateData;Landroidx/compose/foundation/lazy/LazyListState;Landroidx/compose/material3/DatePickerFormatter;Lkotlin/jvm/functions/Function1;Landroidx/compose/material3/DatePickerColors;Landroidx/compose/runtime/Composer;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function2<",
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
.field final synthetic $$changed:I

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

.field final synthetic $lazyListState:Landroidx/compose/foundation/lazy/LazyListState;

.field final synthetic $onDateSelected:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/Long;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $stateData:Landroidx/compose/material3/StateData;


# direct methods
.method constructor <init>(Lkotlin/jvm/functions/Function1;Landroidx/compose/material3/StateData;Landroidx/compose/foundation/lazy/LazyListState;Landroidx/compose/material3/DatePickerFormatter;Lkotlin/jvm/functions/Function1;Landroidx/compose/material3/DatePickerColors;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Long;",
            "Lkotlin/Unit;",
            ">;",
            "Landroidx/compose/material3/StateData;",
            "Landroidx/compose/foundation/lazy/LazyListState;",
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

    iput-object p1, p0, Landroidx/compose/material3/DateRangePickerKt$VerticalMonthsList$3;->$onDateSelected:Lkotlin/jvm/functions/Function1;

    iput-object p2, p0, Landroidx/compose/material3/DateRangePickerKt$VerticalMonthsList$3;->$stateData:Landroidx/compose/material3/StateData;

    iput-object p3, p0, Landroidx/compose/material3/DateRangePickerKt$VerticalMonthsList$3;->$lazyListState:Landroidx/compose/foundation/lazy/LazyListState;

    iput-object p4, p0, Landroidx/compose/material3/DateRangePickerKt$VerticalMonthsList$3;->$dateFormatter:Landroidx/compose/material3/DatePickerFormatter;

    iput-object p5, p0, Landroidx/compose/material3/DateRangePickerKt$VerticalMonthsList$3;->$dateValidator:Lkotlin/jvm/functions/Function1;

    iput-object p6, p0, Landroidx/compose/material3/DateRangePickerKt$VerticalMonthsList$3;->$colors:Landroidx/compose/material3/DatePickerColors;

    iput p7, p0, Landroidx/compose/material3/DateRangePickerKt$VerticalMonthsList$3;->$$changed:I

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroidx/compose/material3/DateRangePickerKt$VerticalMonthsList$3;->invoke(Landroidx/compose/runtime/Composer;I)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final invoke(Landroidx/compose/runtime/Composer;I)V
    .locals 8

    iget-object v0, p0, Landroidx/compose/material3/DateRangePickerKt$VerticalMonthsList$3;->$onDateSelected:Lkotlin/jvm/functions/Function1;

    iget-object v1, p0, Landroidx/compose/material3/DateRangePickerKt$VerticalMonthsList$3;->$stateData:Landroidx/compose/material3/StateData;

    iget-object v2, p0, Landroidx/compose/material3/DateRangePickerKt$VerticalMonthsList$3;->$lazyListState:Landroidx/compose/foundation/lazy/LazyListState;

    iget-object v3, p0, Landroidx/compose/material3/DateRangePickerKt$VerticalMonthsList$3;->$dateFormatter:Landroidx/compose/material3/DatePickerFormatter;

    iget-object v4, p0, Landroidx/compose/material3/DateRangePickerKt$VerticalMonthsList$3;->$dateValidator:Lkotlin/jvm/functions/Function1;

    iget-object v5, p0, Landroidx/compose/material3/DateRangePickerKt$VerticalMonthsList$3;->$colors:Landroidx/compose/material3/DatePickerColors;

    iget p0, p0, Landroidx/compose/material3/DateRangePickerKt$VerticalMonthsList$3;->$$changed:I

    or-int/lit8 p0, p0, 0x1

    invoke-static {p0}, Landroidx/compose/runtime/RecomposeScopeImplKt;->updateChangedFlags(I)I

    move-result v7

    move-object v6, p1

    invoke-static/range {v0 .. v7}, Landroidx/compose/material3/DateRangePickerKt;->access$VerticalMonthsList(Lkotlin/jvm/functions/Function1;Landroidx/compose/material3/StateData;Landroidx/compose/foundation/lazy/LazyListState;Landroidx/compose/material3/DatePickerFormatter;Lkotlin/jvm/functions/Function1;Landroidx/compose/material3/DatePickerColors;Landroidx/compose/runtime/Composer;I)V

    return-void
.end method
