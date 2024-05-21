.class final Landroidx/compose/material3/DatePickerKt$DateEntryContainer$3;
.super Lkotlin/jvm/internal/Lambda;
.source "DatePicker.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/material3/DatePickerKt;->DateEntryContainer-au3_HiA(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Landroidx/compose/material3/DatePickerColors;Landroidx/compose/ui/text/TextStyle;FLkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V
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

.field final synthetic $headerMinHeight:F

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

.field final synthetic $headlineTextStyle:Landroidx/compose/ui/text/TextStyle;

.field final synthetic $modeToggleButton:Lkotlin/jvm/functions/Function2;
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
.method constructor <init>(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Landroidx/compose/material3/DatePickerColors;Landroidx/compose/ui/text/TextStyle;FLkotlin/jvm/functions/Function2;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/Modifier;",
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
            ">;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;",
            "Landroidx/compose/material3/DatePickerColors;",
            "Landroidx/compose/ui/text/TextStyle;",
            "F",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;I)V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/compose/material3/DatePickerKt$DateEntryContainer$3;->$modifier:Landroidx/compose/ui/Modifier;

    iput-object p2, p0, Landroidx/compose/material3/DatePickerKt$DateEntryContainer$3;->$title:Lkotlin/jvm/functions/Function2;

    iput-object p3, p0, Landroidx/compose/material3/DatePickerKt$DateEntryContainer$3;->$headline:Lkotlin/jvm/functions/Function2;

    iput-object p4, p0, Landroidx/compose/material3/DatePickerKt$DateEntryContainer$3;->$modeToggleButton:Lkotlin/jvm/functions/Function2;

    iput-object p5, p0, Landroidx/compose/material3/DatePickerKt$DateEntryContainer$3;->$colors:Landroidx/compose/material3/DatePickerColors;

    iput-object p6, p0, Landroidx/compose/material3/DatePickerKt$DateEntryContainer$3;->$headlineTextStyle:Landroidx/compose/ui/text/TextStyle;

    iput p7, p0, Landroidx/compose/material3/DatePickerKt$DateEntryContainer$3;->$headerMinHeight:F

    iput-object p8, p0, Landroidx/compose/material3/DatePickerKt$DateEntryContainer$3;->$content:Lkotlin/jvm/functions/Function2;

    iput p9, p0, Landroidx/compose/material3/DatePickerKt$DateEntryContainer$3;->$$changed:I

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

    invoke-virtual {p0, p1, p2}, Landroidx/compose/material3/DatePickerKt$DateEntryContainer$3;->invoke(Landroidx/compose/runtime/Composer;I)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final invoke(Landroidx/compose/runtime/Composer;I)V
    .locals 10

    iget-object v0, p0, Landroidx/compose/material3/DatePickerKt$DateEntryContainer$3;->$modifier:Landroidx/compose/ui/Modifier;

    iget-object v1, p0, Landroidx/compose/material3/DatePickerKt$DateEntryContainer$3;->$title:Lkotlin/jvm/functions/Function2;

    iget-object v2, p0, Landroidx/compose/material3/DatePickerKt$DateEntryContainer$3;->$headline:Lkotlin/jvm/functions/Function2;

    iget-object v3, p0, Landroidx/compose/material3/DatePickerKt$DateEntryContainer$3;->$modeToggleButton:Lkotlin/jvm/functions/Function2;

    iget-object v4, p0, Landroidx/compose/material3/DatePickerKt$DateEntryContainer$3;->$colors:Landroidx/compose/material3/DatePickerColors;

    iget-object v5, p0, Landroidx/compose/material3/DatePickerKt$DateEntryContainer$3;->$headlineTextStyle:Landroidx/compose/ui/text/TextStyle;

    iget v6, p0, Landroidx/compose/material3/DatePickerKt$DateEntryContainer$3;->$headerMinHeight:F

    iget-object v7, p0, Landroidx/compose/material3/DatePickerKt$DateEntryContainer$3;->$content:Lkotlin/jvm/functions/Function2;

    iget p0, p0, Landroidx/compose/material3/DatePickerKt$DateEntryContainer$3;->$$changed:I

    or-int/lit8 p0, p0, 0x1

    invoke-static {p0}, Landroidx/compose/runtime/RecomposeScopeImplKt;->updateChangedFlags(I)I

    move-result v9

    move-object v8, p1

    invoke-static/range {v0 .. v9}, Landroidx/compose/material3/DatePickerKt;->DateEntryContainer-au3_HiA(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Landroidx/compose/material3/DatePickerColors;Landroidx/compose/ui/text/TextStyle;FLkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V

    return-void
.end method
