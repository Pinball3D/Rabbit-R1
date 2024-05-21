.class final Landroidx/compose/material3/DatePickerKt$updateDisplayedMonth$3;
.super Ljava/lang/Object;
.source "DatePicker.kt"

# interfaces
.implements Lkotlinx/coroutines/flow/FlowCollector;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/material3/DatePickerKt;->updateDisplayedMonth(Landroidx/compose/foundation/lazy/LazyListState;Landroidx/compose/material3/StateData;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlinx/coroutines/flow/FlowCollector<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0008\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\u008a@"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        ""
    }
    k = 0x3
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $lazyListState:Landroidx/compose/foundation/lazy/LazyListState;

.field final synthetic $stateData:Landroidx/compose/material3/StateData;


# direct methods
.method constructor <init>(Landroidx/compose/foundation/lazy/LazyListState;Landroidx/compose/material3/StateData;)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/material3/DatePickerKt$updateDisplayedMonth$3;->$lazyListState:Landroidx/compose/foundation/lazy/LazyListState;

    iput-object p2, p0, Landroidx/compose/material3/DatePickerKt$updateDisplayedMonth$3;->$stateData:Landroidx/compose/material3/StateData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final emit(ILkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    iget-object p1, p0, Landroidx/compose/material3/DatePickerKt$updateDisplayedMonth$3;->$lazyListState:Landroidx/compose/foundation/lazy/LazyListState;

    .line 1335
    invoke-virtual {p1}, Landroidx/compose/foundation/lazy/LazyListState;->getFirstVisibleItemIndex()I

    move-result p1

    div-int/lit8 p1, p1, 0xc

    iget-object p2, p0, Landroidx/compose/material3/DatePickerKt$updateDisplayedMonth$3;->$lazyListState:Landroidx/compose/foundation/lazy/LazyListState;

    .line 1336
    invoke-virtual {p2}, Landroidx/compose/foundation/lazy/LazyListState;->getFirstVisibleItemIndex()I

    move-result p2

    rem-int/lit8 p2, p2, 0xc

    add-int/lit8 p2, p2, 0x1

    iget-object p0, p0, Landroidx/compose/material3/DatePickerKt$updateDisplayedMonth$3;->$stateData:Landroidx/compose/material3/StateData;

    .line 1338
    invoke-virtual {p0}, Landroidx/compose/material3/StateData;->getDisplayedMonth()Landroidx/compose/material3/CalendarMonth;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/material3/CalendarMonth;->getMonth()I

    move-result v0

    if-ne v0, p2, :cond_0

    .line 1339
    invoke-virtual {p0}, Landroidx/compose/material3/StateData;->getDisplayedMonth()Landroidx/compose/material3/CalendarMonth;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/material3/CalendarMonth;->getYear()I

    move-result v0

    invoke-virtual {p0}, Landroidx/compose/material3/StateData;->getYearRange()Lkotlin/ranges/IntRange;

    move-result-object v1

    invoke-virtual {v1}, Lkotlin/ranges/IntRange;->getFirst()I

    move-result v1

    add-int/2addr v1, p1

    if-eq v0, v1, :cond_1

    .line 1341
    :cond_0
    invoke-virtual {p0}, Landroidx/compose/material3/StateData;->getCalendarModel()Landroidx/compose/material3/CalendarModel;

    move-result-object v0

    .line 1342
    invoke-virtual {p0}, Landroidx/compose/material3/StateData;->getYearRange()Lkotlin/ranges/IntRange;

    move-result-object v1

    invoke-virtual {v1}, Lkotlin/ranges/IntRange;->getFirst()I

    move-result v1

    add-int/2addr v1, p1

    .line 1341
    invoke-interface {v0, v1, p2}, Landroidx/compose/material3/CalendarModel;->getMonth(II)Landroidx/compose/material3/CalendarMonth;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/compose/material3/StateData;->setDisplayedMonth(Landroidx/compose/material3/CalendarMonth;)V

    .line 1347
    :cond_1
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public bridge synthetic emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 1334
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    invoke-virtual {p0, p1, p2}, Landroidx/compose/material3/DatePickerKt$updateDisplayedMonth$3;->emit(ILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
