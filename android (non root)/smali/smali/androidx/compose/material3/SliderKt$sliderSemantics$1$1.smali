.class final Landroidx/compose/material3/SliderKt$sliderSemantics$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source "Slider.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/material3/SliderKt$sliderSemantics$1;->invoke(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Ljava/lang/Float;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0007\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n\u00a2\u0006\u0004\u0008\u0004\u0010\u0005"
    }
    d2 = {
        "<anonymous>",
        "",
        "targetValue",
        "",
        "invoke",
        "(F)Ljava/lang/Boolean;"
    }
    k = 0x3
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $coerced:F

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
.method constructor <init>(Lkotlin/ranges/ClosedFloatingPointRange;IFLkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/ranges/ClosedFloatingPointRange<",
            "Ljava/lang/Float;",
            ">;IF",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Float;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/compose/material3/SliderKt$sliderSemantics$1$1;->$valueRange:Lkotlin/ranges/ClosedFloatingPointRange;

    iput p2, p0, Landroidx/compose/material3/SliderKt$sliderSemantics$1$1;->$steps:I

    iput p3, p0, Landroidx/compose/material3/SliderKt$sliderSemantics$1$1;->$coerced:F

    iput-object p4, p0, Landroidx/compose/material3/SliderKt$sliderSemantics$1$1;->$onValueChange:Lkotlin/jvm/functions/Function1;

    iput-object p5, p0, Landroidx/compose/material3/SliderKt$sliderSemantics$1$1;->$onValueChangeFinished:Lkotlin/jvm/functions/Function0;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(F)Ljava/lang/Boolean;
    .locals 10

    iget-object v0, p0, Landroidx/compose/material3/SliderKt$sliderSemantics$1$1;->$valueRange:Lkotlin/ranges/ClosedFloatingPointRange;

    .line 1128
    invoke-interface {v0}, Lkotlin/ranges/ClosedFloatingPointRange;->getStart()Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    iget-object v1, p0, Landroidx/compose/material3/SliderKt$sliderSemantics$1$1;->$valueRange:Lkotlin/ranges/ClosedFloatingPointRange;

    invoke-interface {v1}, Lkotlin/ranges/ClosedFloatingPointRange;->getEndInclusive()Ljava/lang/Comparable;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->floatValue()F

    move-result v1

    invoke-static {p1, v0, v1}, Lkotlin/ranges/RangesKt;->coerceIn(FFF)F

    move-result p1

    iget v0, p0, Landroidx/compose/material3/SliderKt$sliderSemantics$1$1;->$steps:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-lez v0, :cond_2

    add-int/2addr v0, v2

    if-ltz v0, :cond_2

    move v4, p1

    move v5, v4

    move v3, v1

    :goto_0
    iget-object v6, p0, Landroidx/compose/material3/SliderKt$sliderSemantics$1$1;->$valueRange:Lkotlin/ranges/ClosedFloatingPointRange;

    .line 1134
    invoke-interface {v6}, Lkotlin/ranges/ClosedFloatingPointRange;->getStart()Ljava/lang/Comparable;

    move-result-object v6

    check-cast v6, Ljava/lang/Number;

    invoke-virtual {v6}, Ljava/lang/Number;->floatValue()F

    move-result v6

    iget-object v7, p0, Landroidx/compose/material3/SliderKt$sliderSemantics$1$1;->$valueRange:Lkotlin/ranges/ClosedFloatingPointRange;

    .line 1135
    invoke-interface {v7}, Lkotlin/ranges/ClosedFloatingPointRange;->getEndInclusive()Ljava/lang/Comparable;

    move-result-object v7

    check-cast v7, Ljava/lang/Number;

    invoke-virtual {v7}, Ljava/lang/Number;->floatValue()F

    move-result v7

    int-to-float v8, v3

    iget v9, p0, Landroidx/compose/material3/SliderKt$sliderSemantics$1$1;->$steps:I

    add-int/2addr v9, v2

    int-to-float v9, v9

    div-float/2addr v8, v9

    .line 1133
    invoke-static {v6, v7, v8}, Landroidx/compose/ui/util/MathHelpersKt;->lerp(FFF)F

    move-result v6

    sub-float v7, v6, p1

    .line 1138
    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v8

    cmpg-float v8, v8, v4

    if-gtz v8, :cond_0

    .line 1139
    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v4

    move v5, v6

    :cond_0
    if-eq v3, v0, :cond_1

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    move p1, v5

    :cond_2
    iget v0, p0, Landroidx/compose/material3/SliderKt$sliderSemantics$1$1;->$coerced:F

    cmpg-float v0, p1, v0

    if-nez v0, :cond_3

    goto :goto_1

    :cond_3
    iget-object v0, p0, Landroidx/compose/material3/SliderKt$sliderSemantics$1$1;->$onValueChange:Lkotlin/jvm/functions/Function1;

    .line 1153
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-interface {v0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Landroidx/compose/material3/SliderKt$sliderSemantics$1$1;->$onValueChangeFinished:Lkotlin/jvm/functions/Function0;

    if-eqz p0, :cond_4

    .line 1154
    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    :cond_4
    move v1, v2

    .line 1155
    :goto_1
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1126
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result p1

    invoke-virtual {p0, p1}, Landroidx/compose/material3/SliderKt$sliderSemantics$1$1;->invoke(F)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method
