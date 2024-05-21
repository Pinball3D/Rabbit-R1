.class final Landroidx/compose/material3/RadioButtonKt$RadioButton$2$1;
.super Lkotlin/jvm/internal/Lambda;
.source "RadioButton.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/material3/RadioButtonKt;->RadioButton(ZLkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;ZLandroidx/compose/material3/RadioButtonColors;Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/runtime/Composer;II)V
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

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nRadioButton.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RadioButton.kt\nandroidx/compose/material3/RadioButtonKt$RadioButton$2$1\n+ 2 Dp.kt\nandroidx/compose/ui/unit/Dp\n+ 3 Dp.kt\nandroidx/compose/ui/unit/DpKt\n*L\n1#1,226:1\n75#2:227\n154#3:228\n*S KotlinDebug\n*F\n+ 1 RadioButton.kt\nandroidx/compose/material3/RadioButtonKt$RadioButton$2$1\n*L\n120#1:227\n123#1:228\n*E\n"
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
.field final synthetic $dotRadius:Landroidx/compose/runtime/State;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/State<",
            "Landroidx/compose/ui/unit/Dp;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $radioColor:Landroidx/compose/runtime/State;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/State<",
            "Landroidx/compose/ui/graphics/Color;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroidx/compose/runtime/State;Landroidx/compose/runtime/State;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/State<",
            "Landroidx/compose/ui/graphics/Color;",
            ">;",
            "Landroidx/compose/runtime/State<",
            "Landroidx/compose/ui/unit/Dp;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/compose/material3/RadioButtonKt$RadioButton$2$1;->$radioColor:Landroidx/compose/runtime/State;

    iput-object p2, p0, Landroidx/compose/material3/RadioButtonKt$RadioButton$2$1;->$dotRadius:Landroidx/compose/runtime/State;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 115
    check-cast p1, Landroidx/compose/ui/graphics/drawscope/DrawScope;

    invoke-virtual {p0, p1}, Landroidx/compose/material3/RadioButtonKt$RadioButton$2$1;->invoke(Landroidx/compose/ui/graphics/drawscope/DrawScope;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final invoke(Landroidx/compose/ui/graphics/drawscope/DrawScope;)V
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v13, p1

    const-string v1, "$this$Canvas"

    invoke-static {v13, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 117
    invoke-static {}, Landroidx/compose/material3/RadioButtonKt;->access$getRadioStrokeWidth$p()F

    move-result v1

    invoke-interface {v13, v1}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->toPx-0680j_4(F)F

    move-result v3

    iget-object v1, v0, Landroidx/compose/material3/RadioButtonKt$RadioButton$2$1;->$radioColor:Landroidx/compose/runtime/State;

    .line 119
    invoke-interface {v1}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/compose/ui/graphics/Color;

    invoke-virtual {v1}, Landroidx/compose/ui/graphics/Color;->unbox-impl()J

    move-result-wide v10

    .line 120
    sget-object v1, Landroidx/compose/material3/tokens/RadioButtonTokens;->INSTANCE:Landroidx/compose/material3/tokens/RadioButtonTokens;

    invoke-virtual {v1}, Landroidx/compose/material3/tokens/RadioButtonTokens;->getIconSize-D9Ej5fM()F

    move-result v1

    const/4 v2, 0x2

    int-to-float v2, v2

    div-float/2addr v1, v2

    .line 227
    invoke-static {v1}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v1

    .line 120
    invoke-interface {v13, v1}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->toPx-0680j_4(F)F

    move-result v1

    div-float v14, v3, v2

    sub-float v12, v1, v14

    const-wide/16 v15, 0x0

    const/16 v17, 0x0

    .line 121
    new-instance v1, Landroidx/compose/ui/graphics/drawscope/Stroke;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v8, 0x1e

    const/4 v9, 0x0

    move-object v2, v1

    invoke-direct/range {v2 .. v9}, Landroidx/compose/ui/graphics/drawscope/Stroke;-><init>(FFIILandroidx/compose/ui/graphics/PathEffect;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object v8, v1

    check-cast v8, Landroidx/compose/ui/graphics/drawscope/DrawStyle;

    const/16 v18, 0x0

    const/16 v19, 0x6c

    const/16 v20, 0x0

    move-object/from16 v1, p1

    move-wide v2, v10

    move v4, v12

    move-wide v5, v15

    move/from16 v7, v17

    move/from16 v10, v18

    move/from16 v11, v19

    move-object/from16 v12, v20

    .line 118
    invoke-static/range {v1 .. v12}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->drawCircle-VaOC9Bg$default(Landroidx/compose/ui/graphics/drawscope/DrawScope;JFJFLandroidx/compose/ui/graphics/drawscope/DrawStyle;Landroidx/compose/ui/graphics/ColorFilter;IILjava/lang/Object;)V

    iget-object v1, v0, Landroidx/compose/material3/RadioButtonKt$RadioButton$2$1;->$dotRadius:Landroidx/compose/runtime/State;

    .line 123
    invoke-interface {v1}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/compose/ui/unit/Dp;

    invoke-virtual {v1}, Landroidx/compose/ui/unit/Dp;->unbox-impl()F

    move-result v1

    const/4 v2, 0x0

    int-to-float v2, v2

    .line 228
    invoke-static {v2}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v2

    .line 123
    invoke-static {v1, v2}, Landroidx/compose/ui/unit/Dp;->compareTo-0680j_4(FF)I

    move-result v1

    if-lez v1, :cond_0

    iget-object v1, v0, Landroidx/compose/material3/RadioButtonKt$RadioButton$2$1;->$radioColor:Landroidx/compose/runtime/State;

    .line 124
    invoke-interface {v1}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/compose/ui/graphics/Color;

    invoke-virtual {v1}, Landroidx/compose/ui/graphics/Color;->unbox-impl()J

    move-result-wide v1

    iget-object v0, v0, Landroidx/compose/material3/RadioButtonKt$RadioButton$2$1;->$dotRadius:Landroidx/compose/runtime/State;

    invoke-interface {v0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/ui/unit/Dp;

    invoke-virtual {v0}, Landroidx/compose/ui/unit/Dp;->unbox-impl()F

    move-result v0

    invoke-interface {v13, v0}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->toPx-0680j_4(F)F

    move-result v0

    sub-float v3, v0, v14

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    sget-object v0, Landroidx/compose/ui/graphics/drawscope/Fill;->INSTANCE:Landroidx/compose/ui/graphics/drawscope/Fill;

    move-object v7, v0

    check-cast v7, Landroidx/compose/ui/graphics/drawscope/DrawStyle;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v10, 0x6c

    const/4 v11, 0x0

    move-object/from16 v0, p1

    invoke-static/range {v0 .. v11}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->drawCircle-VaOC9Bg$default(Landroidx/compose/ui/graphics/drawscope/DrawScope;JFJFLandroidx/compose/ui/graphics/drawscope/DrawStyle;Landroidx/compose/ui/graphics/ColorFilter;IILjava/lang/Object;)V

    :cond_0
    return-void
.end method
