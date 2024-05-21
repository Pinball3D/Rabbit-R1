.class final Landroidx/compose/material3/DatePickerKt$Month$1$1$1$1$1$inRange$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source "DatePicker.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/material3/DatePickerKt$Month$1;->invoke(Landroidx/compose/runtime/Composer;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Ljava/lang/Boolean;",
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
.field final synthetic $dateInMillis:J

.field final synthetic $rangeSelectionEnabled:Z

.field final synthetic $stateData:Landroidx/compose/material3/StateData;


# direct methods
.method constructor <init>(Landroidx/compose/material3/StateData;ZJ)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/material3/DatePickerKt$Month$1$1$1$1$1$inRange$1$1;->$stateData:Landroidx/compose/material3/StateData;

    iput-boolean p2, p0, Landroidx/compose/material3/DatePickerKt$Month$1$1$1$1$1$inRange$1$1;->$rangeSelectionEnabled:Z

    iput-wide p3, p0, Landroidx/compose/material3/DatePickerKt$Month$1$1$1$1$1$inRange$1$1;->$dateInMillis:J

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Boolean;
    .locals 6

    iget-object v0, p0, Landroidx/compose/material3/DatePickerKt$Month$1$1$1$1$1$inRange$1$1;->$stateData:Landroidx/compose/material3/StateData;

    iget-boolean v1, p0, Landroidx/compose/material3/DatePickerKt$Month$1$1$1$1$1$inRange$1$1;->$rangeSelectionEnabled:Z

    iget-wide v2, p0, Landroidx/compose/material3/DatePickerKt$Month$1$1$1$1$1$inRange$1$1;->$dateInMillis:J

    if-eqz v1, :cond_2

    .line 1483
    invoke-virtual {v0}, Landroidx/compose/material3/StateData;->getSelectedStartDate()Landroidx/compose/runtime/MutableState;

    move-result-object p0

    invoke-interface {p0}, Landroidx/compose/runtime/MutableState;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/compose/material3/CalendarDate;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroidx/compose/material3/CalendarDate;->getUtcTimeMillis()J

    move-result-wide v4

    goto :goto_0

    :cond_0
    const-wide v4, 0x7fffffffffffffffL

    :goto_0
    cmp-long p0, v2, v4

    if-ltz p0, :cond_2

    .line 1485
    invoke-virtual {v0}, Landroidx/compose/material3/StateData;->getSelectedEndDate()Landroidx/compose/runtime/MutableState;

    move-result-object p0

    invoke-interface {p0}, Landroidx/compose/runtime/MutableState;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/compose/material3/CalendarDate;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroidx/compose/material3/CalendarDate;->getUtcTimeMillis()J

    move-result-wide v0

    goto :goto_1

    :cond_1
    const-wide/high16 v0, -0x8000000000000000L

    :goto_1
    cmp-long p0, v2, v0

    if-gtz p0, :cond_2

    const/4 p0, 0x1

    goto :goto_2

    :cond_2
    const/4 p0, 0x0

    .line 1482
    :goto_2
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    .line 1480
    invoke-virtual {p0}, Landroidx/compose/material3/DatePickerKt$Month$1$1$1$1$1$inRange$1$1;->invoke()Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method
