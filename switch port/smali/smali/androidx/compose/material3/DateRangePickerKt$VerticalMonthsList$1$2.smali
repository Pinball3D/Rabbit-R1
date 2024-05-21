.class final Landroidx/compose/material3/DateRangePickerKt$VerticalMonthsList$1$2;
.super Lkotlin/jvm/internal/Lambda;
.source "DateRangePicker.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/material3/DateRangePickerKt$VerticalMonthsList$1;->invoke(Landroidx/compose/runtime/Composer;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Landroidx/compose/foundation/lazy/LazyListScope;",
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

.field final synthetic $coroutineScope:Lkotlinx/coroutines/CoroutineScope;

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

.field final synthetic $firstMonth:Landroidx/compose/material3/CalendarMonth;

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

.field final synthetic $scrollToNextMonthLabel:Ljava/lang/String;

.field final synthetic $scrollToPreviousMonthLabel:Ljava/lang/String;

.field final synthetic $stateData:Landroidx/compose/material3/StateData;

.field final synthetic $today:Landroidx/compose/material3/CalendarDate;


# direct methods
.method constructor <init>(Landroidx/compose/material3/StateData;Landroidx/compose/material3/CalendarMonth;Landroidx/compose/material3/DatePickerFormatter;Landroidx/compose/material3/DatePickerColors;Lkotlin/jvm/functions/Function1;Landroidx/compose/material3/CalendarDate;Lkotlin/jvm/functions/Function1;ILandroidx/compose/foundation/lazy/LazyListState;Lkotlinx/coroutines/CoroutineScope;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/material3/StateData;",
            "Landroidx/compose/material3/CalendarMonth;",
            "Landroidx/compose/material3/DatePickerFormatter;",
            "Landroidx/compose/material3/DatePickerColors;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Long;",
            "Lkotlin/Unit;",
            ">;",
            "Landroidx/compose/material3/CalendarDate;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Long;",
            "Ljava/lang/Boolean;",
            ">;I",
            "Landroidx/compose/foundation/lazy/LazyListState;",
            "Lkotlinx/coroutines/CoroutineScope;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/compose/material3/DateRangePickerKt$VerticalMonthsList$1$2;->$stateData:Landroidx/compose/material3/StateData;

    iput-object p2, p0, Landroidx/compose/material3/DateRangePickerKt$VerticalMonthsList$1$2;->$firstMonth:Landroidx/compose/material3/CalendarMonth;

    iput-object p3, p0, Landroidx/compose/material3/DateRangePickerKt$VerticalMonthsList$1$2;->$dateFormatter:Landroidx/compose/material3/DatePickerFormatter;

    iput-object p4, p0, Landroidx/compose/material3/DateRangePickerKt$VerticalMonthsList$1$2;->$colors:Landroidx/compose/material3/DatePickerColors;

    iput-object p5, p0, Landroidx/compose/material3/DateRangePickerKt$VerticalMonthsList$1$2;->$onDateSelected:Lkotlin/jvm/functions/Function1;

    iput-object p6, p0, Landroidx/compose/material3/DateRangePickerKt$VerticalMonthsList$1$2;->$today:Landroidx/compose/material3/CalendarDate;

    iput-object p7, p0, Landroidx/compose/material3/DateRangePickerKt$VerticalMonthsList$1$2;->$dateValidator:Lkotlin/jvm/functions/Function1;

    iput p8, p0, Landroidx/compose/material3/DateRangePickerKt$VerticalMonthsList$1$2;->$$dirty:I

    iput-object p9, p0, Landroidx/compose/material3/DateRangePickerKt$VerticalMonthsList$1$2;->$lazyListState:Landroidx/compose/foundation/lazy/LazyListState;

    iput-object p10, p0, Landroidx/compose/material3/DateRangePickerKt$VerticalMonthsList$1$2;->$coroutineScope:Lkotlinx/coroutines/CoroutineScope;

    iput-object p11, p0, Landroidx/compose/material3/DateRangePickerKt$VerticalMonthsList$1$2;->$scrollToPreviousMonthLabel:Ljava/lang/String;

    iput-object p12, p0, Landroidx/compose/material3/DateRangePickerKt$VerticalMonthsList$1$2;->$scrollToNextMonthLabel:Ljava/lang/String;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 535
    check-cast p1, Landroidx/compose/foundation/lazy/LazyListScope;

    invoke-virtual {p0, p1}, Landroidx/compose/material3/DateRangePickerKt$VerticalMonthsList$1$2;->invoke(Landroidx/compose/foundation/lazy/LazyListScope;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final invoke(Landroidx/compose/foundation/lazy/LazyListScope;)V
    .locals 19

    move-object/from16 v0, p0

    const-string v1, "$this$LazyColumn"

    move-object/from16 v2, p1

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, v0, Landroidx/compose/material3/DateRangePickerKt$VerticalMonthsList$1$2;->$stateData:Landroidx/compose/material3/StateData;

    .line 543
    invoke-virtual {v1}, Landroidx/compose/material3/StateData;->getTotalMonthsInRange()I

    move-result v3

    const/4 v4, 0x0

    new-instance v1, Landroidx/compose/material3/DateRangePickerKt$VerticalMonthsList$1$2$1;

    iget-object v7, v0, Landroidx/compose/material3/DateRangePickerKt$VerticalMonthsList$1$2;->$stateData:Landroidx/compose/material3/StateData;

    iget-object v8, v0, Landroidx/compose/material3/DateRangePickerKt$VerticalMonthsList$1$2;->$firstMonth:Landroidx/compose/material3/CalendarMonth;

    iget-object v9, v0, Landroidx/compose/material3/DateRangePickerKt$VerticalMonthsList$1$2;->$dateFormatter:Landroidx/compose/material3/DatePickerFormatter;

    iget-object v10, v0, Landroidx/compose/material3/DateRangePickerKt$VerticalMonthsList$1$2;->$colors:Landroidx/compose/material3/DatePickerColors;

    iget-object v11, v0, Landroidx/compose/material3/DateRangePickerKt$VerticalMonthsList$1$2;->$onDateSelected:Lkotlin/jvm/functions/Function1;

    iget-object v12, v0, Landroidx/compose/material3/DateRangePickerKt$VerticalMonthsList$1$2;->$today:Landroidx/compose/material3/CalendarDate;

    iget-object v13, v0, Landroidx/compose/material3/DateRangePickerKt$VerticalMonthsList$1$2;->$dateValidator:Lkotlin/jvm/functions/Function1;

    iget v14, v0, Landroidx/compose/material3/DateRangePickerKt$VerticalMonthsList$1$2;->$$dirty:I

    iget-object v15, v0, Landroidx/compose/material3/DateRangePickerKt$VerticalMonthsList$1$2;->$lazyListState:Landroidx/compose/foundation/lazy/LazyListState;

    iget-object v6, v0, Landroidx/compose/material3/DateRangePickerKt$VerticalMonthsList$1$2;->$coroutineScope:Lkotlinx/coroutines/CoroutineScope;

    iget-object v5, v0, Landroidx/compose/material3/DateRangePickerKt$VerticalMonthsList$1$2;->$scrollToPreviousMonthLabel:Ljava/lang/String;

    iget-object v0, v0, Landroidx/compose/material3/DateRangePickerKt$VerticalMonthsList$1$2;->$scrollToNextMonthLabel:Ljava/lang/String;

    move-object/from16 v16, v6

    move-object v6, v1

    move-object/from16 v17, v5

    move-object/from16 v18, v0

    invoke-direct/range {v6 .. v18}, Landroidx/compose/material3/DateRangePickerKt$VerticalMonthsList$1$2$1;-><init>(Landroidx/compose/material3/StateData;Landroidx/compose/material3/CalendarMonth;Landroidx/compose/material3/DatePickerFormatter;Landroidx/compose/material3/DatePickerColors;Lkotlin/jvm/functions/Function1;Landroidx/compose/material3/CalendarDate;Lkotlin/jvm/functions/Function1;ILandroidx/compose/foundation/lazy/LazyListState;Lkotlinx/coroutines/CoroutineScope;Ljava/lang/String;Ljava/lang/String;)V

    const v0, 0x4a4f3999    # 3395174.2f

    const/4 v5, 0x1

    invoke-static {v0, v5, v1}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->composableLambdaInstance(IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lkotlin/jvm/functions/Function4;

    const/4 v7, 0x6

    const/4 v8, 0x0

    const/4 v0, 0x0

    move-object v5, v0

    invoke-static/range {v2 .. v8}, Landroidx/compose/foundation/lazy/LazyListScope;->items$default(Landroidx/compose/foundation/lazy/LazyListScope;ILkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function4;ILjava/lang/Object;)V

    return-void
.end method
