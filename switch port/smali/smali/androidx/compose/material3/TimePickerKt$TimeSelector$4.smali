.class final Landroidx/compose/material3/TimePickerKt$TimeSelector$4;
.super Lkotlin/jvm/internal/Lambda;
.source "TimePicker.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/material3/TimePickerKt;->TimeSelector-uXwN82Y(Landroidx/compose/ui/Modifier;ILandroidx/compose/material3/TimePickerState;ILandroidx/compose/material3/TimePickerColors;Landroidx/compose/runtime/Composer;I)V
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

.field final synthetic $colors:Landroidx/compose/material3/TimePickerColors;

.field final synthetic $modifier:Landroidx/compose/ui/Modifier;

.field final synthetic $selection:I

.field final synthetic $state:Landroidx/compose/material3/TimePickerState;

.field final synthetic $value:I


# direct methods
.method constructor <init>(Landroidx/compose/ui/Modifier;ILandroidx/compose/material3/TimePickerState;ILandroidx/compose/material3/TimePickerColors;I)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/material3/TimePickerKt$TimeSelector$4;->$modifier:Landroidx/compose/ui/Modifier;

    iput p2, p0, Landroidx/compose/material3/TimePickerKt$TimeSelector$4;->$value:I

    iput-object p3, p0, Landroidx/compose/material3/TimePickerKt$TimeSelector$4;->$state:Landroidx/compose/material3/TimePickerState;

    iput p4, p0, Landroidx/compose/material3/TimePickerKt$TimeSelector$4;->$selection:I

    iput-object p5, p0, Landroidx/compose/material3/TimePickerKt$TimeSelector$4;->$colors:Landroidx/compose/material3/TimePickerColors;

    iput p6, p0, Landroidx/compose/material3/TimePickerKt$TimeSelector$4;->$$changed:I

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

    invoke-virtual {p0, p1, p2}, Landroidx/compose/material3/TimePickerKt$TimeSelector$4;->invoke(Landroidx/compose/runtime/Composer;I)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final invoke(Landroidx/compose/runtime/Composer;I)V
    .locals 7

    iget-object v0, p0, Landroidx/compose/material3/TimePickerKt$TimeSelector$4;->$modifier:Landroidx/compose/ui/Modifier;

    iget v1, p0, Landroidx/compose/material3/TimePickerKt$TimeSelector$4;->$value:I

    iget-object v2, p0, Landroidx/compose/material3/TimePickerKt$TimeSelector$4;->$state:Landroidx/compose/material3/TimePickerState;

    iget v3, p0, Landroidx/compose/material3/TimePickerKt$TimeSelector$4;->$selection:I

    iget-object v4, p0, Landroidx/compose/material3/TimePickerKt$TimeSelector$4;->$colors:Landroidx/compose/material3/TimePickerColors;

    iget p0, p0, Landroidx/compose/material3/TimePickerKt$TimeSelector$4;->$$changed:I

    or-int/lit8 p0, p0, 0x1

    invoke-static {p0}, Landroidx/compose/runtime/RecomposeScopeImplKt;->updateChangedFlags(I)I

    move-result v6

    move-object v5, p1

    invoke-static/range {v0 .. v6}, Landroidx/compose/material3/TimePickerKt;->access$TimeSelector-uXwN82Y(Landroidx/compose/ui/Modifier;ILandroidx/compose/material3/TimePickerState;ILandroidx/compose/material3/TimePickerColors;Landroidx/compose/runtime/Composer;I)V

    return-void
.end method
