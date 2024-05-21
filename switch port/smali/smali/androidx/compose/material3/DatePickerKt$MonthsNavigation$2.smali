.class final Landroidx/compose/material3/DatePickerKt$MonthsNavigation$2;
.super Lkotlin/jvm/internal/Lambda;
.source "DatePicker.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/material3/DatePickerKt;->MonthsNavigation(Landroidx/compose/ui/Modifier;ZZZLjava/lang/String;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V
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

.field final synthetic $modifier:Landroidx/compose/ui/Modifier;

.field final synthetic $nextAvailable:Z

.field final synthetic $onNextClicked:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $onPreviousClicked:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $onYearPickerButtonClicked:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $previousAvailable:Z

.field final synthetic $yearPickerText:Ljava/lang/String;

.field final synthetic $yearPickerVisible:Z


# direct methods
.method constructor <init>(Landroidx/compose/ui/Modifier;ZZZLjava/lang/String;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/Modifier;",
            "ZZZ",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;I)V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/compose/material3/DatePickerKt$MonthsNavigation$2;->$modifier:Landroidx/compose/ui/Modifier;

    iput-boolean p2, p0, Landroidx/compose/material3/DatePickerKt$MonthsNavigation$2;->$nextAvailable:Z

    iput-boolean p3, p0, Landroidx/compose/material3/DatePickerKt$MonthsNavigation$2;->$previousAvailable:Z

    iput-boolean p4, p0, Landroidx/compose/material3/DatePickerKt$MonthsNavigation$2;->$yearPickerVisible:Z

    iput-object p5, p0, Landroidx/compose/material3/DatePickerKt$MonthsNavigation$2;->$yearPickerText:Ljava/lang/String;

    iput-object p6, p0, Landroidx/compose/material3/DatePickerKt$MonthsNavigation$2;->$onNextClicked:Lkotlin/jvm/functions/Function0;

    iput-object p7, p0, Landroidx/compose/material3/DatePickerKt$MonthsNavigation$2;->$onPreviousClicked:Lkotlin/jvm/functions/Function0;

    iput-object p8, p0, Landroidx/compose/material3/DatePickerKt$MonthsNavigation$2;->$onYearPickerButtonClicked:Lkotlin/jvm/functions/Function0;

    iput p9, p0, Landroidx/compose/material3/DatePickerKt$MonthsNavigation$2;->$$changed:I

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

    invoke-virtual {p0, p1, p2}, Landroidx/compose/material3/DatePickerKt$MonthsNavigation$2;->invoke(Landroidx/compose/runtime/Composer;I)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final invoke(Landroidx/compose/runtime/Composer;I)V
    .locals 10

    iget-object v0, p0, Landroidx/compose/material3/DatePickerKt$MonthsNavigation$2;->$modifier:Landroidx/compose/ui/Modifier;

    iget-boolean v1, p0, Landroidx/compose/material3/DatePickerKt$MonthsNavigation$2;->$nextAvailable:Z

    iget-boolean v2, p0, Landroidx/compose/material3/DatePickerKt$MonthsNavigation$2;->$previousAvailable:Z

    iget-boolean v3, p0, Landroidx/compose/material3/DatePickerKt$MonthsNavigation$2;->$yearPickerVisible:Z

    iget-object v4, p0, Landroidx/compose/material3/DatePickerKt$MonthsNavigation$2;->$yearPickerText:Ljava/lang/String;

    iget-object v5, p0, Landroidx/compose/material3/DatePickerKt$MonthsNavigation$2;->$onNextClicked:Lkotlin/jvm/functions/Function0;

    iget-object v6, p0, Landroidx/compose/material3/DatePickerKt$MonthsNavigation$2;->$onPreviousClicked:Lkotlin/jvm/functions/Function0;

    iget-object v7, p0, Landroidx/compose/material3/DatePickerKt$MonthsNavigation$2;->$onYearPickerButtonClicked:Lkotlin/jvm/functions/Function0;

    iget p0, p0, Landroidx/compose/material3/DatePickerKt$MonthsNavigation$2;->$$changed:I

    or-int/lit8 p0, p0, 0x1

    invoke-static {p0}, Landroidx/compose/runtime/RecomposeScopeImplKt;->updateChangedFlags(I)I

    move-result v9

    move-object v8, p1

    invoke-static/range {v0 .. v9}, Landroidx/compose/material3/DatePickerKt;->access$MonthsNavigation(Landroidx/compose/ui/Modifier;ZZZLjava/lang/String;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V

    return-void
.end method
