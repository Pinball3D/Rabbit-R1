.class final Landroidx/compose/material3/TooltipKt$TooltipBox$1$2;
.super Lkotlin/jvm/internal/Lambda;
.source "Tooltip.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/material3/TooltipKt;->TooltipBox-XDn_Kpo(Lkotlin/jvm/functions/Function2;Landroidx/compose/ui/window/PopupPositionProvider;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;Landroidx/compose/material3/TooltipState;JFFLkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;I)V
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

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTooltip.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Tooltip.kt\nandroidx/compose/material3/TooltipKt$TooltipBox$1$2\n+ 2 Composables.kt\nandroidx/compose/runtime/ComposablesKt\n+ 3 Composer.kt\nandroidx/compose/runtime/ComposerKt\n*L\n1#1,770:1\n36#2:771\n1114#3,6:772\n*S KotlinDebug\n*F\n+ 1 Tooltip.kt\nandroidx/compose/material3/TooltipKt$TooltipBox$1$2\n*L\n266#1:771\n266#1:772,6\n*E\n"
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
.field final synthetic $$dirty:I

.field final synthetic $containerColor:J

.field final synthetic $elevation:F

.field final synthetic $maxWidth:F

.field final synthetic $modifier:Landroidx/compose/ui/Modifier;

.field final synthetic $shape:Landroidx/compose/ui/graphics/Shape;

.field final synthetic $tooltipContent:Lkotlin/jvm/functions/Function2;
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

.field final synthetic $tooltipPaneDescription:Ljava/lang/String;

.field final synthetic $transition:Landroidx/compose/animation/core/Transition;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/animation/core/Transition<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroidx/compose/ui/Modifier;FLandroidx/compose/animation/core/Transition;Ljava/lang/String;Landroidx/compose/ui/graphics/Shape;JFLkotlin/jvm/functions/Function2;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/Modifier;",
            "F",
            "Landroidx/compose/animation/core/Transition<",
            "Ljava/lang/Boolean;",
            ">;",
            "Ljava/lang/String;",
            "Landroidx/compose/ui/graphics/Shape;",
            "JF",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;I)V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/compose/material3/TooltipKt$TooltipBox$1$2;->$modifier:Landroidx/compose/ui/Modifier;

    iput p2, p0, Landroidx/compose/material3/TooltipKt$TooltipBox$1$2;->$maxWidth:F

    iput-object p3, p0, Landroidx/compose/material3/TooltipKt$TooltipBox$1$2;->$transition:Landroidx/compose/animation/core/Transition;

    iput-object p4, p0, Landroidx/compose/material3/TooltipKt$TooltipBox$1$2;->$tooltipPaneDescription:Ljava/lang/String;

    iput-object p5, p0, Landroidx/compose/material3/TooltipKt$TooltipBox$1$2;->$shape:Landroidx/compose/ui/graphics/Shape;

    iput-wide p6, p0, Landroidx/compose/material3/TooltipKt$TooltipBox$1$2;->$containerColor:J

    iput p8, p0, Landroidx/compose/material3/TooltipKt$TooltipBox$1$2;->$elevation:F

    iput-object p9, p0, Landroidx/compose/material3/TooltipKt$TooltipBox$1$2;->$tooltipContent:Lkotlin/jvm/functions/Function2;

    iput p10, p0, Landroidx/compose/material3/TooltipKt$TooltipBox$1$2;->$$dirty:I

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 257
    check-cast p1, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroidx/compose/material3/TooltipKt$TooltipBox$1$2;->invoke(Landroidx/compose/runtime/Composer;I)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final invoke(Landroidx/compose/runtime/Composer;I)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v10, p1

    move/from16 v1, p2

    const-string v2, "C265@10968L38,257@10611L635:Tooltip.kt#uh7d8r"

    invoke-static {v10, v2}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    and-int/lit8 v2, v1, 0xb

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    .line 258
    invoke-interface/range {p1 .. p1}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    .line 272
    :cond_0
    invoke-interface/range {p1 .. p1}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    goto/16 :goto_1

    .line 258
    :cond_1
    :goto_0
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, -0x1

    const-string v3, "androidx.compose.material3.TooltipBox.<anonymous>.<anonymous> (Tooltip.kt:256)"

    const v4, -0x1a5ab04f

    invoke-static {v4, v1, v2, v3}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 261
    :cond_2
    invoke-static {}, Landroidx/compose/material3/TooltipKt;->getTooltipMinWidth()F

    move-result v12

    .line 263
    invoke-static {}, Landroidx/compose/material3/TooltipKt;->getTooltipMinHeight()F

    move-result v13

    iget-object v11, v0, Landroidx/compose/material3/TooltipKt$TooltipBox$1$2;->$modifier:Landroidx/compose/ui/Modifier;

    iget v14, v0, Landroidx/compose/material3/TooltipKt$TooltipBox$1$2;->$maxWidth:F

    const/4 v15, 0x0

    const/16 v16, 0x8

    const/16 v17, 0x0

    .line 260
    invoke-static/range {v11 .. v17}, Landroidx/compose/foundation/layout/SizeKt;->sizeIn-qDBjuR0$default(Landroidx/compose/ui/Modifier;FFFFILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v1

    iget-object v2, v0, Landroidx/compose/material3/TooltipKt$TooltipBox$1$2;->$transition:Landroidx/compose/animation/core/Transition;

    .line 265
    invoke-static {v1, v2}, Landroidx/compose/material3/TooltipKt;->access$animateTooltip(Landroidx/compose/ui/Modifier;Landroidx/compose/animation/core/Transition;)Landroidx/compose/ui/Modifier;

    move-result-object v1

    iget-object v2, v0, Landroidx/compose/material3/TooltipKt$TooltipBox$1$2;->$tooltipPaneDescription:Ljava/lang/String;

    const v3, 0x44faf204

    .line 266
    invoke-interface {v10, v3}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v3, "CC(remember)P(1):Composables.kt#9igjgp"

    invoke-static {v10, v3}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 771
    invoke-interface {v10, v2}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v3

    .line 772
    invoke-interface/range {p1 .. p1}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v4

    if-nez v3, :cond_3

    .line 773
    sget-object v3, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v3}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v3

    if-ne v4, v3, :cond_4

    .line 266
    :cond_3
    new-instance v3, Landroidx/compose/material3/TooltipKt$TooltipBox$1$2$1$1;

    invoke-direct {v3, v2}, Landroidx/compose/material3/TooltipKt$TooltipBox$1$2$1$1;-><init>(Ljava/lang/String;)V

    move-object v4, v3

    check-cast v4, Lkotlin/jvm/functions/Function1;

    .line 775
    invoke-interface {v10, v4}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 771
    :cond_4
    invoke-interface/range {p1 .. p1}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    check-cast v4, Lkotlin/jvm/functions/Function1;

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v5, 0x0

    .line 266
    invoke-static {v1, v5, v4, v2, v3}, Landroidx/compose/ui/semantics/SemanticsModifierKt;->semantics$default(Landroidx/compose/ui/Modifier;ZLkotlin/jvm/functions/Function1;ILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v1

    iget-object v2, v0, Landroidx/compose/material3/TooltipKt$TooltipBox$1$2;->$shape:Landroidx/compose/ui/graphics/Shape;

    iget-wide v3, v0, Landroidx/compose/material3/TooltipKt$TooltipBox$1$2;->$containerColor:J

    const-wide/16 v5, 0x0

    iget v7, v0, Landroidx/compose/material3/TooltipKt$TooltipBox$1$2;->$elevation:F

    const/4 v8, 0x0

    iget-object v9, v0, Landroidx/compose/material3/TooltipKt$TooltipBox$1$2;->$tooltipContent:Lkotlin/jvm/functions/Function2;

    iget v0, v0, Landroidx/compose/material3/TooltipKt$TooltipBox$1$2;->$$dirty:I

    shr-int/lit8 v11, v0, 0x6

    and-int/lit8 v11, v11, 0x70

    shr-int/lit8 v12, v0, 0x9

    and-int/lit16 v12, v12, 0x380

    or-int/2addr v11, v12

    const v12, 0xe000

    shr-int/lit8 v13, v0, 0x6

    and-int/2addr v12, v13

    or-int/2addr v11, v12

    shr-int/lit8 v12, v0, 0x3

    const/high16 v13, 0x70000

    and-int/2addr v12, v13

    or-int/2addr v11, v12

    shl-int/lit8 v0, v0, 0x15

    const/high16 v12, 0x1c00000

    and-int/2addr v0, v12

    or-int/2addr v11, v0

    const/16 v12, 0x48

    move-object v0, v1

    move-object v1, v2

    move-wide v2, v3

    move-wide v4, v5

    move v6, v7

    move-object/from16 v10, p1

    .line 258
    invoke-static/range {v0 .. v12}, Landroidx/compose/material3/SurfaceKt;->Surface-T9BRK9s(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;JJFFLandroidx/compose/foundation/BorderStroke;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;II)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_5
    :goto_1
    return-void
.end method
