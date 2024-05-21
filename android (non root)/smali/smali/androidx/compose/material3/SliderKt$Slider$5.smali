.class final Landroidx/compose/material3/SliderKt$Slider$5;
.super Lkotlin/jvm/internal/Lambda;
.source "Slider.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/material3/SliderKt;->Slider(FLkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;ZLkotlin/ranges/ClosedFloatingPointRange;ILkotlin/jvm/functions/Function0;Landroidx/compose/material3/SliderColors;Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/runtime/Composer;II)V
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

.field final synthetic $colors:Landroidx/compose/material3/SliderColors;

.field final synthetic $enabled:Z

.field final synthetic $interactionSource:Landroidx/compose/foundation/interaction/MutableInteractionSource;

.field final synthetic $modifier:Landroidx/compose/ui/Modifier;

.field final synthetic $onValueChange:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/Float;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $onValueChangeFinished:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $steps:I

.field final synthetic $value:F

.field final synthetic $valueRange:Lkotlin/ranges/ClosedFloatingPointRange;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/ranges/ClosedFloatingPointRange<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(FLkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;ZLkotlin/ranges/ClosedFloatingPointRange;ILkotlin/jvm/functions/Function0;Landroidx/compose/material3/SliderColors;Landroidx/compose/foundation/interaction/MutableInteractionSource;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Float;",
            "Lkotlin/Unit;",
            ">;",
            "Landroidx/compose/ui/Modifier;",
            "Z",
            "Lkotlin/ranges/ClosedFloatingPointRange<",
            "Ljava/lang/Float;",
            ">;I",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;",
            "Landroidx/compose/material3/SliderColors;",
            "Landroidx/compose/foundation/interaction/MutableInteractionSource;",
            "II)V"
        }
    .end annotation

    iput p1, p0, Landroidx/compose/material3/SliderKt$Slider$5;->$value:F

    iput-object p2, p0, Landroidx/compose/material3/SliderKt$Slider$5;->$onValueChange:Lkotlin/jvm/functions/Function1;

    iput-object p3, p0, Landroidx/compose/material3/SliderKt$Slider$5;->$modifier:Landroidx/compose/ui/Modifier;

    iput-boolean p4, p0, Landroidx/compose/material3/SliderKt$Slider$5;->$enabled:Z

    iput-object p5, p0, Landroidx/compose/material3/SliderKt$Slider$5;->$valueRange:Lkotlin/ranges/ClosedFloatingPointRange;

    iput p6, p0, Landroidx/compose/material3/SliderKt$Slider$5;->$steps:I

    iput-object p7, p0, Landroidx/compose/material3/SliderKt$Slider$5;->$onValueChangeFinished:Lkotlin/jvm/functions/Function0;

    iput-object p8, p0, Landroidx/compose/material3/SliderKt$Slider$5;->$colors:Landroidx/compose/material3/SliderColors;

    iput-object p9, p0, Landroidx/compose/material3/SliderKt$Slider$5;->$interactionSource:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    iput p10, p0, Landroidx/compose/material3/SliderKt$Slider$5;->$$changed:I

    iput p11, p0, Landroidx/compose/material3/SliderKt$Slider$5;->$$default:I

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

    invoke-virtual {p0, p1, p2}, Landroidx/compose/material3/SliderKt$Slider$5;->invoke(Landroidx/compose/runtime/Composer;I)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final invoke(Landroidx/compose/runtime/Composer;I)V
    .locals 12

    iget v0, p0, Landroidx/compose/material3/SliderKt$Slider$5;->$value:F

    iget-object v1, p0, Landroidx/compose/material3/SliderKt$Slider$5;->$onValueChange:Lkotlin/jvm/functions/Function1;

    iget-object v2, p0, Landroidx/compose/material3/SliderKt$Slider$5;->$modifier:Landroidx/compose/ui/Modifier;

    iget-boolean v3, p0, Landroidx/compose/material3/SliderKt$Slider$5;->$enabled:Z

    iget-object v4, p0, Landroidx/compose/material3/SliderKt$Slider$5;->$valueRange:Lkotlin/ranges/ClosedFloatingPointRange;

    iget v5, p0, Landroidx/compose/material3/SliderKt$Slider$5;->$steps:I

    iget-object v6, p0, Landroidx/compose/material3/SliderKt$Slider$5;->$onValueChangeFinished:Lkotlin/jvm/functions/Function0;

    iget-object v7, p0, Landroidx/compose/material3/SliderKt$Slider$5;->$colors:Landroidx/compose/material3/SliderColors;

    iget-object v8, p0, Landroidx/compose/material3/SliderKt$Slider$5;->$interactionSource:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    iget p2, p0, Landroidx/compose/material3/SliderKt$Slider$5;->$$changed:I

    or-int/lit8 p2, p2, 0x1

    invoke-static {p2}, Landroidx/compose/runtime/RecomposeScopeImplKt;->updateChangedFlags(I)I

    move-result v10

    iget v11, p0, Landroidx/compose/material3/SliderKt$Slider$5;->$$default:I

    move-object v9, p1

    invoke-static/range {v0 .. v11}, Landroidx/compose/material3/SliderKt;->Slider(FLkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;ZLkotlin/ranges/ClosedFloatingPointRange;ILkotlin/jvm/functions/Function0;Landroidx/compose/material3/SliderColors;Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/runtime/Composer;II)V

    return-void
.end method
