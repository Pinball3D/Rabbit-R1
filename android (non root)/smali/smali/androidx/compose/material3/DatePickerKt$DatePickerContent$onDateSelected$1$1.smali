.class final Landroidx/compose/material3/DatePickerKt$DatePickerContent$onDateSelected$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source "DatePicker.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/material3/DatePickerKt;->DatePickerContent(Landroidx/compose/material3/StateData;Landroidx/compose/material3/DatePickerFormatter;Lkotlin/jvm/functions/Function1;Landroidx/compose/material3/DatePickerColors;Landroidx/compose/runtime/Composer;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Ljava/lang/Long;",
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
.field final synthetic $stateData:Landroidx/compose/material3/StateData;


# direct methods
.method constructor <init>(Landroidx/compose/material3/StateData;)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/material3/DatePickerKt$DatePickerContent$onDateSelected$1$1;->$stateData:Landroidx/compose/material3/StateData;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1135
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Landroidx/compose/material3/DatePickerKt$DatePickerContent$onDateSelected$1$1;->invoke(J)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final invoke(J)V
    .locals 1

    iget-object v0, p0, Landroidx/compose/material3/DatePickerKt$DatePickerContent$onDateSelected$1$1;->$stateData:Landroidx/compose/material3/StateData;

    .line 1136
    invoke-virtual {v0}, Landroidx/compose/material3/StateData;->getSelectedStartDate()Landroidx/compose/runtime/MutableState;

    move-result-object v0

    iget-object p0, p0, Landroidx/compose/material3/DatePickerKt$DatePickerContent$onDateSelected$1$1;->$stateData:Landroidx/compose/material3/StateData;

    .line 1137
    invoke-virtual {p0}, Landroidx/compose/material3/StateData;->getCalendarModel()Landroidx/compose/material3/CalendarModel;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Landroidx/compose/material3/CalendarModel;->getCanonicalDate(J)Landroidx/compose/material3/CalendarDate;

    move-result-object p0

    .line 1136
    invoke-interface {v0, p0}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    return-void
.end method
