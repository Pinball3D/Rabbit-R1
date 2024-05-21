.class final Landroidx/compose/material3/DatePickerKt$Day$3;
.super Lkotlin/jvm/internal/Lambda;
.source "DatePicker.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/material3/DatePickerKt;->Day(Landroidx/compose/ui/Modifier;ZLkotlin/jvm/functions/Function0;ZZZZLjava/lang/String;Landroidx/compose/material3/DatePickerColors;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V
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

.field final synthetic $animateChecked:Z

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

.field final synthetic $description:Ljava/lang/String;

.field final synthetic $enabled:Z

.field final synthetic $inRange:Z

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

.field final synthetic $today:Z


# direct methods
.method constructor <init>(Landroidx/compose/ui/Modifier;ZLkotlin/jvm/functions/Function0;ZZZZLjava/lang/String;Landroidx/compose/material3/DatePickerColors;Lkotlin/jvm/functions/Function2;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/Modifier;",
            "Z",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;ZZZZ",
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

    iput-object p1, p0, Landroidx/compose/material3/DatePickerKt$Day$3;->$modifier:Landroidx/compose/ui/Modifier;

    iput-boolean p2, p0, Landroidx/compose/material3/DatePickerKt$Day$3;->$selected:Z

    iput-object p3, p0, Landroidx/compose/material3/DatePickerKt$Day$3;->$onClick:Lkotlin/jvm/functions/Function0;

    iput-boolean p4, p0, Landroidx/compose/material3/DatePickerKt$Day$3;->$animateChecked:Z

    iput-boolean p5, p0, Landroidx/compose/material3/DatePickerKt$Day$3;->$enabled:Z

    iput-boolean p6, p0, Landroidx/compose/material3/DatePickerKt$Day$3;->$today:Z

    iput-boolean p7, p0, Landroidx/compose/material3/DatePickerKt$Day$3;->$inRange:Z

    iput-object p8, p0, Landroidx/compose/material3/DatePickerKt$Day$3;->$description:Ljava/lang/String;

    iput-object p9, p0, Landroidx/compose/material3/DatePickerKt$Day$3;->$colors:Landroidx/compose/material3/DatePickerColors;

    iput-object p10, p0, Landroidx/compose/material3/DatePickerKt$Day$3;->$content:Lkotlin/jvm/functions/Function2;

    iput p11, p0, Landroidx/compose/material3/DatePickerKt$Day$3;->$$changed:I

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

    invoke-virtual {p0, p1, p2}, Landroidx/compose/material3/DatePickerKt$Day$3;->invoke(Landroidx/compose/runtime/Composer;I)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final invoke(Landroidx/compose/runtime/Composer;I)V
    .locals 12

    iget-object v0, p0, Landroidx/compose/material3/DatePickerKt$Day$3;->$modifier:Landroidx/compose/ui/Modifier;

    iget-boolean v1, p0, Landroidx/compose/material3/DatePickerKt$Day$3;->$selected:Z

    iget-object v2, p0, Landroidx/compose/material3/DatePickerKt$Day$3;->$onClick:Lkotlin/jvm/functions/Function0;

    iget-boolean v3, p0, Landroidx/compose/material3/DatePickerKt$Day$3;->$animateChecked:Z

    iget-boolean v4, p0, Landroidx/compose/material3/DatePickerKt$Day$3;->$enabled:Z

    iget-boolean v5, p0, Landroidx/compose/material3/DatePickerKt$Day$3;->$today:Z

    iget-boolean v6, p0, Landroidx/compose/material3/DatePickerKt$Day$3;->$inRange:Z

    iget-object v7, p0, Landroidx/compose/material3/DatePickerKt$Day$3;->$description:Ljava/lang/String;

    iget-object v8, p0, Landroidx/compose/material3/DatePickerKt$Day$3;->$colors:Landroidx/compose/material3/DatePickerColors;

    iget-object v9, p0, Landroidx/compose/material3/DatePickerKt$Day$3;->$content:Lkotlin/jvm/functions/Function2;

    iget p0, p0, Landroidx/compose/material3/DatePickerKt$Day$3;->$$changed:I

    or-int/lit8 p0, p0, 0x1

    invoke-static {p0}, Landroidx/compose/runtime/RecomposeScopeImplKt;->updateChangedFlags(I)I

    move-result v11

    move-object v10, p1

    invoke-static/range {v0 .. v11}, Landroidx/compose/material3/DatePickerKt;->access$Day(Landroidx/compose/ui/Modifier;ZLkotlin/jvm/functions/Function0;ZZZZLjava/lang/String;Landroidx/compose/material3/DatePickerColors;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V

    return-void
.end method
