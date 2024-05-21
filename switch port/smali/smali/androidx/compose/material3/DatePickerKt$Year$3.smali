.class final Landroidx/compose/material3/DatePickerKt$Year$3;
.super Lkotlin/jvm/internal/Lambda;
.source "DatePicker.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/material3/DatePickerKt;->Year(Landroidx/compose/ui/Modifier;ZZLkotlin/jvm/functions/Function0;Ljava/lang/String;Landroidx/compose/material3/DatePickerColors;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V
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

.field final synthetic $content:Lkotlin/jvm/functions/Function2;
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

.field final synthetic $currentYear:Z

.field final synthetic $description:Ljava/lang/String;

.field final synthetic $modifier:Landroidx/compose/ui/Modifier;

.field final synthetic $onClick:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $selected:Z


# direct methods
.method constructor <init>(Landroidx/compose/ui/Modifier;ZZLkotlin/jvm/functions/Function0;Ljava/lang/String;Landroidx/compose/material3/DatePickerColors;Lkotlin/jvm/functions/Function2;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/Modifier;",
            "ZZ",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;",
            "Ljava/lang/String;",
            "Landroidx/compose/material3/DatePickerColors;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;I)V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/compose/material3/DatePickerKt$Year$3;->$modifier:Landroidx/compose/ui/Modifier;

    iput-boolean p2, p0, Landroidx/compose/material3/DatePickerKt$Year$3;->$selected:Z

    iput-boolean p3, p0, Landroidx/compose/material3/DatePickerKt$Year$3;->$currentYear:Z

    iput-object p4, p0, Landroidx/compose/material3/DatePickerKt$Year$3;->$onClick:Lkotlin/jvm/functions/Function0;

    iput-object p5, p0, Landroidx/compose/material3/DatePickerKt$Year$3;->$description:Ljava/lang/String;

    iput-object p6, p0, Landroidx/compose/material3/DatePickerKt$Year$3;->$colors:Landroidx/compose/material3/DatePickerColors;

    iput-object p7, p0, Landroidx/compose/material3/DatePickerKt$Year$3;->$content:Lkotlin/jvm/functions/Function2;

    iput p8, p0, Landroidx/compose/material3/DatePickerKt$Year$3;->$$changed:I

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

    invoke-virtual {p0, p1, p2}, Landroidx/compose/material3/DatePickerKt$Year$3;->invoke(Landroidx/compose/runtime/Composer;I)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final invoke(Landroidx/compose/runtime/Composer;I)V
    .locals 9

    iget-object v0, p0, Landroidx/compose/material3/DatePickerKt$Year$3;->$modifier:Landroidx/compose/ui/Modifier;

    iget-boolean v1, p0, Landroidx/compose/material3/DatePickerKt$Year$3;->$selected:Z

    iget-boolean v2, p0, Landroidx/compose/material3/DatePickerKt$Year$3;->$currentYear:Z

    iget-object v3, p0, Landroidx/compose/material3/DatePickerKt$Year$3;->$onClick:Lkotlin/jvm/functions/Function0;

    iget-object v4, p0, Landroidx/compose/material3/DatePickerKt$Year$3;->$description:Ljava/lang/String;

    iget-object v5, p0, Landroidx/compose/material3/DatePickerKt$Year$3;->$colors:Landroidx/compose/material3/DatePickerColors;

    iget-object v6, p0, Landroidx/compose/material3/DatePickerKt$Year$3;->$content:Lkotlin/jvm/functions/Function2;

    iget p0, p0, Landroidx/compose/material3/DatePickerKt$Year$3;->$$changed:I

    or-int/lit8 p0, p0, 0x1

    invoke-static {p0}, Landroidx/compose/runtime/RecomposeScopeImplKt;->updateChangedFlags(I)I

    move-result v8

    move-object v7, p1

    invoke-static/range {v0 .. v8}, Landroidx/compose/material3/DatePickerKt;->access$Year(Landroidx/compose/ui/Modifier;ZZLkotlin/jvm/functions/Function0;Ljava/lang/String;Landroidx/compose/material3/DatePickerColors;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V

    return-void
.end method
