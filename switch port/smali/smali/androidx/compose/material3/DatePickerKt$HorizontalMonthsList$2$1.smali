.class final Landroidx/compose/material3/DatePickerKt$HorizontalMonthsList$2$1;
.super Lkotlin/jvm/internal/Lambda;
.source "DatePicker.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/material3/DatePickerKt;->HorizontalMonthsList(Lkotlin/jvm/functions/Function1;Landroidx/compose/material3/StateData;Landroidx/compose/foundation/lazy/LazyListState;Landroidx/compose/material3/DatePickerFormatter;Lkotlin/jvm/functions/Function1;Landroidx/compose/material3/DatePickerColors;Landroidx/compose/runtime/Composer;I)V
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

.field final synthetic $today:Landroidx/compose/material3/CalendarDate;


# direct methods
.method constructor <init>(Landroidx/compose/material3/StateData;Landroidx/compose/material3/CalendarMonth;Lkotlin/jvm/functions/Function1;Landroidx/compose/material3/CalendarDate;Lkotlin/jvm/functions/Function1;Landroidx/compose/material3/DatePickerFormatter;Landroidx/compose/material3/DatePickerColors;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/material3/StateData;",
            "Landroidx/compose/material3/CalendarMonth;",
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
            ">;",
            "Landroidx/compose/material3/DatePickerFormatter;",
            "Landroidx/compose/material3/DatePickerColors;",
            "I)V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/compose/material3/DatePickerKt$HorizontalMonthsList$2$1;->$stateData:Landroidx/compose/material3/StateData;

    iput-object p2, p0, Landroidx/compose/material3/DatePickerKt$HorizontalMonthsList$2$1;->$firstMonth:Landroidx/compose/material3/CalendarMonth;

    iput-object p3, p0, Landroidx/compose/material3/DatePickerKt$HorizontalMonthsList$2$1;->$onDateSelected:Lkotlin/jvm/functions/Function1;

    iput-object p4, p0, Landroidx/compose/material3/DatePickerKt$HorizontalMonthsList$2$1;->$today:Landroidx/compose/material3/CalendarDate;

    iput-object p5, p0, Landroidx/compose/material3/DatePickerKt$HorizontalMonthsList$2$1;->$dateValidator:Lkotlin/jvm/functions/Function1;

    iput-object p6, p0, Landroidx/compose/material3/DatePickerKt$HorizontalMonthsList$2$1;->$dateFormatter:Landroidx/compose/material3/DatePickerFormatter;

    iput-object p7, p0, Landroidx/compose/material3/DatePickerKt$HorizontalMonthsList$2$1;->$colors:Landroidx/compose/material3/DatePickerColors;

    iput p8, p0, Landroidx/compose/material3/DatePickerKt$HorizontalMonthsList$2$1;->$$dirty:I

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1300
    check-cast p1, Landroidx/compose/foundation/lazy/LazyListScope;

    invoke-virtual {p0, p1}, Landroidx/compose/material3/DatePickerKt$HorizontalMonthsList$2$1;->invoke(Landroidx/compose/foundation/lazy/LazyListScope;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final invoke(Landroidx/compose/foundation/lazy/LazyListScope;)V
    .locals 14

    const-string v0, "$this$LazyRow"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/compose/material3/DatePickerKt$HorizontalMonthsList$2$1;->$stateData:Landroidx/compose/material3/StateData;

    .line 1301
    invoke-virtual {v0}, Landroidx/compose/material3/StateData;->getTotalMonthsInRange()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    new-instance v0, Landroidx/compose/material3/DatePickerKt$HorizontalMonthsList$2$1$1;

    iget-object v6, p0, Landroidx/compose/material3/DatePickerKt$HorizontalMonthsList$2$1;->$stateData:Landroidx/compose/material3/StateData;

    iget-object v7, p0, Landroidx/compose/material3/DatePickerKt$HorizontalMonthsList$2$1;->$firstMonth:Landroidx/compose/material3/CalendarMonth;

    iget-object v8, p0, Landroidx/compose/material3/DatePickerKt$HorizontalMonthsList$2$1;->$onDateSelected:Lkotlin/jvm/functions/Function1;

    iget-object v9, p0, Landroidx/compose/material3/DatePickerKt$HorizontalMonthsList$2$1;->$today:Landroidx/compose/material3/CalendarDate;

    iget-object v10, p0, Landroidx/compose/material3/DatePickerKt$HorizontalMonthsList$2$1;->$dateValidator:Lkotlin/jvm/functions/Function1;

    iget-object v11, p0, Landroidx/compose/material3/DatePickerKt$HorizontalMonthsList$2$1;->$dateFormatter:Landroidx/compose/material3/DatePickerFormatter;

    iget-object v12, p0, Landroidx/compose/material3/DatePickerKt$HorizontalMonthsList$2$1;->$colors:Landroidx/compose/material3/DatePickerColors;

    iget v13, p0, Landroidx/compose/material3/DatePickerKt$HorizontalMonthsList$2$1;->$$dirty:I

    move-object v5, v0

    invoke-direct/range {v5 .. v13}, Landroidx/compose/material3/DatePickerKt$HorizontalMonthsList$2$1$1;-><init>(Landroidx/compose/material3/StateData;Landroidx/compose/material3/CalendarMonth;Lkotlin/jvm/functions/Function1;Landroidx/compose/material3/CalendarDate;Lkotlin/jvm/functions/Function1;Landroidx/compose/material3/DatePickerFormatter;Landroidx/compose/material3/DatePickerColors;I)V

    const p0, -0x3e0a3fd

    const/4 v1, 0x1

    invoke-static {p0, v1, v0}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->composableLambdaInstance(IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object p0

    move-object v5, p0

    check-cast v5, Lkotlin/jvm/functions/Function4;

    const/4 v6, 0x6

    const/4 v7, 0x0

    move-object v1, p1

    invoke-static/range {v1 .. v7}, Landroidx/compose/foundation/lazy/LazyListScope;->items$default(Landroidx/compose/foundation/lazy/LazyListScope;ILkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function4;ILjava/lang/Object;)V

    return-void
.end method
