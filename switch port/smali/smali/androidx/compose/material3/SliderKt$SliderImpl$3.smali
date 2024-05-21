.class final Landroidx/compose/material3/SliderKt$SliderImpl$3;
.super Lkotlin/jvm/internal/Lambda;
.source "Slider.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/material3/SliderKt;->SliderImpl(Landroidx/compose/ui/Modifier;ZLandroidx/compose/foundation/interaction/MutableInteractionSource;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;IFLkotlin/ranges/ClosedFloatingPointRange;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;I)V
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

.field final synthetic $thumb:Lkotlin/jvm/functions/Function3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function3<",
            "Landroidx/compose/material3/SliderPositions;",
            "Landroidx/compose/runtime/Composer;",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $track:Lkotlin/jvm/functions/Function3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function3<",
            "Landroidx/compose/material3/SliderPositions;",
            "Landroidx/compose/runtime/Composer;",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

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
.method constructor <init>(Landroidx/compose/ui/Modifier;ZLandroidx/compose/foundation/interaction/MutableInteractionSource;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;IFLkotlin/ranges/ClosedFloatingPointRange;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function3;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/Modifier;",
            "Z",
            "Landroidx/compose/foundation/interaction/MutableInteractionSource;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Float;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;IF",
            "Lkotlin/ranges/ClosedFloatingPointRange<",
            "Ljava/lang/Float;",
            ">;",
            "Lkotlin/jvm/functions/Function3<",
            "-",
            "Landroidx/compose/material3/SliderPositions;",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function3<",
            "-",
            "Landroidx/compose/material3/SliderPositions;",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;I)V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/compose/material3/SliderKt$SliderImpl$3;->$modifier:Landroidx/compose/ui/Modifier;

    iput-boolean p2, p0, Landroidx/compose/material3/SliderKt$SliderImpl$3;->$enabled:Z

    iput-object p3, p0, Landroidx/compose/material3/SliderKt$SliderImpl$3;->$interactionSource:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    iput-object p4, p0, Landroidx/compose/material3/SliderKt$SliderImpl$3;->$onValueChange:Lkotlin/jvm/functions/Function1;

    iput-object p5, p0, Landroidx/compose/material3/SliderKt$SliderImpl$3;->$onValueChangeFinished:Lkotlin/jvm/functions/Function0;

    iput p6, p0, Landroidx/compose/material3/SliderKt$SliderImpl$3;->$steps:I

    iput p7, p0, Landroidx/compose/material3/SliderKt$SliderImpl$3;->$value:F

    iput-object p8, p0, Landroidx/compose/material3/SliderKt$SliderImpl$3;->$valueRange:Lkotlin/ranges/ClosedFloatingPointRange;

    iput-object p9, p0, Landroidx/compose/material3/SliderKt$SliderImpl$3;->$thumb:Lkotlin/jvm/functions/Function3;

    iput-object p10, p0, Landroidx/compose/material3/SliderKt$SliderImpl$3;->$track:Lkotlin/jvm/functions/Function3;

    iput p11, p0, Landroidx/compose/material3/SliderKt$SliderImpl$3;->$$changed:I

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

    invoke-virtual {p0, p1, p2}, Landroidx/compose/material3/SliderKt$SliderImpl$3;->invoke(Landroidx/compose/runtime/Composer;I)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final invoke(Landroidx/compose/runtime/Composer;I)V
    .locals 12

    iget-object v0, p0, Landroidx/compose/material3/SliderKt$SliderImpl$3;->$modifier:Landroidx/compose/ui/Modifier;

    iget-boolean v1, p0, Landroidx/compose/material3/SliderKt$SliderImpl$3;->$enabled:Z

    iget-object v2, p0, Landroidx/compose/material3/SliderKt$SliderImpl$3;->$interactionSource:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    iget-object v3, p0, Landroidx/compose/material3/SliderKt$SliderImpl$3;->$onValueChange:Lkotlin/jvm/functions/Function1;

    iget-object v4, p0, Landroidx/compose/material3/SliderKt$SliderImpl$3;->$onValueChangeFinished:Lkotlin/jvm/functions/Function0;

    iget v5, p0, Landroidx/compose/material3/SliderKt$SliderImpl$3;->$steps:I

    iget v6, p0, Landroidx/compose/material3/SliderKt$SliderImpl$3;->$value:F

    iget-object v7, p0, Landroidx/compose/material3/SliderKt$SliderImpl$3;->$valueRange:Lkotlin/ranges/ClosedFloatingPointRange;

    iget-object v8, p0, Landroidx/compose/material3/SliderKt$SliderImpl$3;->$thumb:Lkotlin/jvm/functions/Function3;

    iget-object v9, p0, Landroidx/compose/material3/SliderKt$SliderImpl$3;->$track:Lkotlin/jvm/functions/Function3;

    iget p0, p0, Landroidx/compose/material3/SliderKt$SliderImpl$3;->$$changed:I

    or-int/lit8 p0, p0, 0x1

    invoke-static {p0}, Landroidx/compose/runtime/RecomposeScopeImplKt;->updateChangedFlags(I)I

    move-result v11

    move-object v10, p1

    invoke-static/range {v0 .. v11}, Landroidx/compose/material3/SliderKt;->access$SliderImpl(Landroidx/compose/ui/Modifier;ZLandroidx/compose/foundation/interaction/MutableInteractionSource;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;IFLkotlin/ranges/ClosedFloatingPointRange;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;I)V

    return-void
.end method
