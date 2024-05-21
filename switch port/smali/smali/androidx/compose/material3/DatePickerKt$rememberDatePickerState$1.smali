.class final Landroidx/compose/material3/DatePickerKt$rememberDatePickerState$1;
.super Lkotlin/jvm/internal/Lambda;
.source "DatePicker.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/material3/DatePickerKt;->rememberDatePickerState-NVmSL94(Ljava/lang/Long;Ljava/lang/Long;Lkotlin/ranges/IntRange;ILandroidx/compose/runtime/Composer;II)Landroidx/compose/material3/DatePickerState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Landroidx/compose/material3/DatePickerState;",
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
.field final synthetic $initialDisplayMode:I

.field final synthetic $initialDisplayedMonthMillis:Ljava/lang/Long;

.field final synthetic $initialSelectedDateMillis:Ljava/lang/Long;

.field final synthetic $yearRange:Lkotlin/ranges/IntRange;


# direct methods
.method constructor <init>(Ljava/lang/Long;Ljava/lang/Long;Lkotlin/ranges/IntRange;I)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/material3/DatePickerKt$rememberDatePickerState$1;->$initialSelectedDateMillis:Ljava/lang/Long;

    iput-object p2, p0, Landroidx/compose/material3/DatePickerKt$rememberDatePickerState$1;->$initialDisplayedMonthMillis:Ljava/lang/Long;

    iput-object p3, p0, Landroidx/compose/material3/DatePickerKt$rememberDatePickerState$1;->$yearRange:Lkotlin/ranges/IntRange;

    iput p4, p0, Landroidx/compose/material3/DatePickerKt$rememberDatePickerState$1;->$initialDisplayMode:I

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Landroidx/compose/material3/DatePickerState;
    .locals 7

    .line 228
    new-instance v6, Landroidx/compose/material3/DatePickerState;

    iget-object v1, p0, Landroidx/compose/material3/DatePickerKt$rememberDatePickerState$1;->$initialSelectedDateMillis:Ljava/lang/Long;

    iget-object v2, p0, Landroidx/compose/material3/DatePickerKt$rememberDatePickerState$1;->$initialDisplayedMonthMillis:Ljava/lang/Long;

    iget-object v3, p0, Landroidx/compose/material3/DatePickerKt$rememberDatePickerState$1;->$yearRange:Lkotlin/ranges/IntRange;

    iget v4, p0, Landroidx/compose/material3/DatePickerKt$rememberDatePickerState$1;->$initialDisplayMode:I

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Landroidx/compose/material3/DatePickerState;-><init>(Ljava/lang/Long;Ljava/lang/Long;Lkotlin/ranges/IntRange;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v6
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    .line 225
    invoke-virtual {p0}, Landroidx/compose/material3/DatePickerKt$rememberDatePickerState$1;->invoke()Landroidx/compose/material3/DatePickerState;

    move-result-object p0

    return-object p0
.end method
