.class final Landroidx/compose/material3/DatePickerKt$DatePicker$7;
.super Lkotlin/jvm/internal/Lambda;
.source "DatePicker.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/material3/DatePickerKt;->DatePicker(Landroidx/compose/material3/DatePickerState;Landroidx/compose/ui/Modifier;Landroidx/compose/material3/DatePickerFormatter;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;ZLandroidx/compose/material3/DatePickerColors;Landroidx/compose/runtime/Composer;II)V
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

.field final synthetic $$default:I

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

.field final synthetic $headline:Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function2<",
            "Landroidx/compose/runtime/Composer;",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $modifier:Landroidx/compose/ui/Modifier;

.field final synthetic $showModeToggle:Z

.field final synthetic $state:Landroidx/compose/material3/DatePickerState;

.field final synthetic $title:Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function2<",
            "Landroidx/compose/runtime/Composer;",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroidx/compose/material3/DatePickerState;Landroidx/compose/ui/Modifier;Landroidx/compose/material3/DatePickerFormatter;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;ZLandroidx/compose/material3/DatePickerColors;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/material3/DatePickerState;",
            "Landroidx/compose/ui/Modifier;",
            "Landroidx/compose/material3/DatePickerFormatter;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Long;",
            "Ljava/lang/Boolean;",
            ">;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;Z",
            "Landroidx/compose/material3/DatePickerColors;",
            "II)V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/compose/material3/DatePickerKt$DatePicker$7;->$state:Landroidx/compose/material3/DatePickerState;

    iput-object p2, p0, Landroidx/compose/material3/DatePickerKt$DatePicker$7;->$modifier:Landroidx/compose/ui/Modifier;

    iput-object p3, p0, Landroidx/compose/material3/DatePickerKt$DatePicker$7;->$dateFormatter:Landroidx/compose/material3/DatePickerFormatter;

    iput-object p4, p0, Landroidx/compose/material3/DatePickerKt$DatePicker$7;->$dateValidator:Lkotlin/jvm/functions/Function1;

    iput-object p5, p0, Landroidx/compose/material3/DatePickerKt$DatePicker$7;->$title:Lkotlin/jvm/functions/Function2;

    iput-object p6, p0, Landroidx/compose/material3/DatePickerKt$DatePicker$7;->$headline:Lkotlin/jvm/functions/Function2;

    iput-boolean p7, p0, Landroidx/compose/material3/DatePickerKt$DatePicker$7;->$showModeToggle:Z

    iput-object p8, p0, Landroidx/compose/material3/DatePickerKt$DatePicker$7;->$colors:Landroidx/compose/material3/DatePickerColors;

    iput p9, p0, Landroidx/compose/material3/DatePickerKt$DatePicker$7;->$$changed:I

    iput p10, p0, Landroidx/compose/material3/DatePickerKt$DatePicker$7;->$$default:I

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

    invoke-virtual {p0, p1, p2}, Landroidx/compose/material3/DatePickerKt$DatePicker$7;->invoke(Landroidx/compose/runtime/Composer;I)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final invoke(Landroidx/compose/runtime/Composer;I)V
    .locals 11

    iget-object v0, p0, Landroidx/compose/material3/DatePickerKt$DatePicker$7;->$state:Landroidx/compose/material3/DatePickerState;

    iget-object v1, p0, Landroidx/compose/material3/DatePickerKt$DatePicker$7;->$modifier:Landroidx/compose/ui/Modifier;

    iget-object v2, p0, Landroidx/compose/material3/DatePickerKt$DatePicker$7;->$dateFormatter:Landroidx/compose/material3/DatePickerFormatter;

    iget-object v3, p0, Landroidx/compose/material3/DatePickerKt$DatePicker$7;->$dateValidator:Lkotlin/jvm/functions/Function1;

    iget-object v4, p0, Landroidx/compose/material3/DatePickerKt$DatePicker$7;->$title:Lkotlin/jvm/functions/Function2;

    iget-object v5, p0, Landroidx/compose/material3/DatePickerKt$DatePicker$7;->$headline:Lkotlin/jvm/functions/Function2;

    iget-boolean v6, p0, Landroidx/compose/material3/DatePickerKt$DatePicker$7;->$showModeToggle:Z

    iget-object v7, p0, Landroidx/compose/material3/DatePickerKt$DatePicker$7;->$colors:Landroidx/compose/material3/DatePickerColors;

    iget p2, p0, Landroidx/compose/material3/DatePickerKt$DatePicker$7;->$$changed:I

    or-int/lit8 p2, p2, 0x1

    invoke-static {p2}, Landroidx/compose/runtime/RecomposeScopeImplKt;->updateChangedFlags(I)I

    move-result v9

    iget v10, p0, Landroidx/compose/material3/DatePickerKt$DatePicker$7;->$$default:I

    move-object v8, p1

    invoke-static/range {v0 .. v10}, Landroidx/compose/material3/DatePickerKt;->DatePicker(Landroidx/compose/material3/DatePickerState;Landroidx/compose/ui/Modifier;Landroidx/compose/material3/DatePickerFormatter;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;ZLandroidx/compose/material3/DatePickerColors;Landroidx/compose/runtime/Composer;II)V

    return-void
.end method
