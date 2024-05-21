.class final Landroidx/compose/material3/CheckboxKt$CheckboxImpl$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source "Checkbox.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/material3/CheckboxKt;->CheckboxImpl(ZLandroidx/compose/ui/state/ToggleableState;Landroidx/compose/ui/Modifier;Landroidx/compose/material3/CheckboxColors;Landroidx/compose/runtime/Composer;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Landroidx/compose/ui/graphics/drawscope/DrawScope;",
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
.field final synthetic $borderColor:Landroidx/compose/runtime/State;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/State<",
            "Landroidx/compose/ui/graphics/Color;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $boxColor:Landroidx/compose/runtime/State;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/State<",
            "Landroidx/compose/ui/graphics/Color;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $checkCache:Landroidx/compose/material3/CheckDrawingCache;

.field final synthetic $checkCenterGravitationShiftFraction:Landroidx/compose/runtime/State;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/State<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $checkColor:Landroidx/compose/runtime/State;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/State<",
            "Landroidx/compose/ui/graphics/Color;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $checkDrawFraction:Landroidx/compose/runtime/State;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/State<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroidx/compose/runtime/State;Landroidx/compose/runtime/State;Landroidx/compose/runtime/State;Landroidx/compose/runtime/State;Landroidx/compose/runtime/State;Landroidx/compose/material3/CheckDrawingCache;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/State<",
            "Landroidx/compose/ui/graphics/Color;",
            ">;",
            "Landroidx/compose/runtime/State<",
            "Landroidx/compose/ui/graphics/Color;",
            ">;",
            "Landroidx/compose/runtime/State<",
            "Landroidx/compose/ui/graphics/Color;",
            ">;",
            "Landroidx/compose/runtime/State<",
            "Ljava/lang/Float;",
            ">;",
            "Landroidx/compose/runtime/State<",
            "Ljava/lang/Float;",
            ">;",
            "Landroidx/compose/material3/CheckDrawingCache;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/compose/material3/CheckboxKt$CheckboxImpl$1$1;->$boxColor:Landroidx/compose/runtime/State;

    iput-object p2, p0, Landroidx/compose/material3/CheckboxKt$CheckboxImpl$1$1;->$borderColor:Landroidx/compose/runtime/State;

    iput-object p3, p0, Landroidx/compose/material3/CheckboxKt$CheckboxImpl$1$1;->$checkColor:Landroidx/compose/runtime/State;

    iput-object p4, p0, Landroidx/compose/material3/CheckboxKt$CheckboxImpl$1$1;->$checkDrawFraction:Landroidx/compose/runtime/State;

    iput-object p5, p0, Landroidx/compose/material3/CheckboxKt$CheckboxImpl$1$1;->$checkCenterGravitationShiftFraction:Landroidx/compose/runtime/State;

    iput-object p6, p0, Landroidx/compose/material3/CheckboxKt$CheckboxImpl$1$1;->$checkCache:Landroidx/compose/material3/CheckDrawingCache;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 276
    check-cast p1, Landroidx/compose/ui/graphics/drawscope/DrawScope;

    invoke-virtual {p0, p1}, Landroidx/compose/material3/CheckboxKt$CheckboxImpl$1$1;->invoke(Landroidx/compose/ui/graphics/drawscope/DrawScope;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final invoke(Landroidx/compose/ui/graphics/drawscope/DrawScope;)V
    .locals 9

    const-string v0, "$this$Canvas"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 277
    invoke-static {}, Landroidx/compose/material3/CheckboxKt;->access$getStrokeWidth$p()F

    move-result v0

    invoke-interface {p1, v0}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->toPx-0680j_4(F)F

    move-result v0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-float v0, v0

    iget-object v1, p0, Landroidx/compose/material3/CheckboxKt$CheckboxImpl$1$1;->$boxColor:Landroidx/compose/runtime/State;

    .line 279
    invoke-interface {v1}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/compose/ui/graphics/Color;

    invoke-virtual {v1}, Landroidx/compose/ui/graphics/Color;->unbox-impl()J

    move-result-wide v3

    iget-object v1, p0, Landroidx/compose/material3/CheckboxKt$CheckboxImpl$1$1;->$borderColor:Landroidx/compose/runtime/State;

    .line 280
    invoke-interface {v1}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/compose/ui/graphics/Color;

    invoke-virtual {v1}, Landroidx/compose/ui/graphics/Color;->unbox-impl()J

    move-result-wide v5

    .line 281
    invoke-static {}, Landroidx/compose/material3/CheckboxKt;->access$getRadiusSize$p()F

    move-result v1

    invoke-interface {p1, v1}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->toPx-0680j_4(F)F

    move-result v7

    move-object v2, p1

    move v8, v0

    .line 278
    invoke-static/range {v2 .. v8}, Landroidx/compose/material3/CheckboxKt;->access$drawBox-1wkBAMs(Landroidx/compose/ui/graphics/drawscope/DrawScope;JJFF)V

    iget-object v1, p0, Landroidx/compose/material3/CheckboxKt$CheckboxImpl$1$1;->$checkColor:Landroidx/compose/runtime/State;

    .line 285
    invoke-interface {v1}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/compose/ui/graphics/Color;

    invoke-virtual {v1}, Landroidx/compose/ui/graphics/Color;->unbox-impl()J

    move-result-wide v3

    iget-object v1, p0, Landroidx/compose/material3/CheckboxKt$CheckboxImpl$1$1;->$checkDrawFraction:Landroidx/compose/runtime/State;

    .line 286
    invoke-interface {v1}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->floatValue()F

    move-result v5

    iget-object v1, p0, Landroidx/compose/material3/CheckboxKt$CheckboxImpl$1$1;->$checkCenterGravitationShiftFraction:Landroidx/compose/runtime/State;

    .line 287
    invoke-interface {v1}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->floatValue()F

    move-result v6

    iget-object v8, p0, Landroidx/compose/material3/CheckboxKt$CheckboxImpl$1$1;->$checkCache:Landroidx/compose/material3/CheckDrawingCache;

    move v7, v0

    .line 284
    invoke-static/range {v2 .. v8}, Landroidx/compose/material3/CheckboxKt;->access$drawCheck-3IgeMak(Landroidx/compose/ui/graphics/drawscope/DrawScope;JFFFLandroidx/compose/material3/CheckDrawingCache;)V

    return-void
.end method
