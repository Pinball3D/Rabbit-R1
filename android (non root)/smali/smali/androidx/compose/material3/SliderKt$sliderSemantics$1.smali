.class final Landroidx/compose/material3/SliderKt$sliderSemantics$1;
.super Lkotlin/jvm/internal/Lambda;
.source "Slider.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/material3/SliderKt;->sliderSemantics(Landroidx/compose/ui/Modifier;FZLkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/ranges/ClosedFloatingPointRange;I)Landroidx/compose/ui/Modifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n\u00a2\u0006\u0002\u0008\u0003"
    }
    d2 = {
        "<anonymous>",
        "",
        "Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;",
        "invoke"
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

.field final synthetic $enabled:Z

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
.method constructor <init>(ZLkotlin/ranges/ClosedFloatingPointRange;IFLkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
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

    iput-boolean p1, p0, Landroidx/compose/material3/SliderKt$sliderSemantics$1;->$enabled:Z

    iput-object p2, p0, Landroidx/compose/material3/SliderKt$sliderSemantics$1;->$valueRange:Lkotlin/ranges/ClosedFloatingPointRange;

    iput p3, p0, Landroidx/compose/material3/SliderKt$sliderSemantics$1;->$steps:I

    iput p4, p0, Landroidx/compose/material3/SliderKt$sliderSemantics$1;->$coerced:F

    iput-object p5, p0, Landroidx/compose/material3/SliderKt$sliderSemantics$1;->$onValueChange:Lkotlin/jvm/functions/Function1;

    iput-object p6, p0, Landroidx/compose/material3/SliderKt$sliderSemantics$1;->$onValueChangeFinished:Lkotlin/jvm/functions/Function0;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1124
    check-cast p1, Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;

    invoke-virtual {p0, p1}, Landroidx/compose/material3/SliderKt$sliderSemantics$1;->invoke(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final invoke(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;)V
    .locals 7

    const-string v0, "$this$semantics"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v0, p0, Landroidx/compose/material3/SliderKt$sliderSemantics$1;->$enabled:Z

    if-nez v0, :cond_0

    .line 1125
    invoke-static {p1}, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->disabled(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;)V

    .line 1126
    :cond_0
    new-instance v0, Landroidx/compose/material3/SliderKt$sliderSemantics$1$1;

    iget-object v2, p0, Landroidx/compose/material3/SliderKt$sliderSemantics$1;->$valueRange:Lkotlin/ranges/ClosedFloatingPointRange;

    iget v3, p0, Landroidx/compose/material3/SliderKt$sliderSemantics$1;->$steps:I

    iget v4, p0, Landroidx/compose/material3/SliderKt$sliderSemantics$1;->$coerced:F

    iget-object v5, p0, Landroidx/compose/material3/SliderKt$sliderSemantics$1;->$onValueChange:Lkotlin/jvm/functions/Function1;

    iget-object v6, p0, Landroidx/compose/material3/SliderKt$sliderSemantics$1;->$onValueChangeFinished:Lkotlin/jvm/functions/Function0;

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Landroidx/compose/material3/SliderKt$sliderSemantics$1$1;-><init>(Lkotlin/ranges/ClosedFloatingPointRange;IFLkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;)V

    check-cast v0, Lkotlin/jvm/functions/Function1;

    const/4 p0, 0x1

    const/4 v1, 0x0

    invoke-static {p1, v1, v0, p0, v1}, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->setProgress$default(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;Ljava/lang/String;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)V

    return-void
.end method
