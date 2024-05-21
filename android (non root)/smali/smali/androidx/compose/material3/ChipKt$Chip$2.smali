.class final Landroidx/compose/material3/ChipKt$Chip$2;
.super Lkotlin/jvm/internal/Lambda;
.source "Chip.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/material3/ChipKt;->Chip-nkUnTEs(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function0;ZLkotlin/jvm/functions/Function2;Landroidx/compose/ui/text/TextStyle;JLkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Landroidx/compose/ui/graphics/Shape;Landroidx/compose/material3/ChipColors;Landroidx/compose/material3/ChipElevation;Landroidx/compose/foundation/BorderStroke;FLandroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/runtime/Composer;II)V
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
.field final synthetic $$dirty:I

.field final synthetic $$dirty1:I

.field final synthetic $colors:Landroidx/compose/material3/ChipColors;

.field final synthetic $enabled:Z

.field final synthetic $label:Lkotlin/jvm/functions/Function2;
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

.field final synthetic $labelColor:J

.field final synthetic $labelTextStyle:Landroidx/compose/ui/text/TextStyle;

.field final synthetic $leadingIcon:Lkotlin/jvm/functions/Function2;
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

.field final synthetic $minHeight:F

.field final synthetic $paddingValues:Landroidx/compose/foundation/layout/PaddingValues;

.field final synthetic $trailingIcon:Lkotlin/jvm/functions/Function2;
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
.method constructor <init>(Lkotlin/jvm/functions/Function2;Landroidx/compose/ui/text/TextStyle;JLkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Landroidx/compose/material3/ChipColors;ZIFLandroidx/compose/foundation/layout/PaddingValues;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;",
            "Landroidx/compose/ui/text/TextStyle;",
            "J",
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
            "Landroidx/compose/material3/ChipColors;",
            "ZIF",
            "Landroidx/compose/foundation/layout/PaddingValues;",
            "I)V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/compose/material3/ChipKt$Chip$2;->$label:Lkotlin/jvm/functions/Function2;

    iput-object p2, p0, Landroidx/compose/material3/ChipKt$Chip$2;->$labelTextStyle:Landroidx/compose/ui/text/TextStyle;

    iput-wide p3, p0, Landroidx/compose/material3/ChipKt$Chip$2;->$labelColor:J

    iput-object p5, p0, Landroidx/compose/material3/ChipKt$Chip$2;->$leadingIcon:Lkotlin/jvm/functions/Function2;

    iput-object p6, p0, Landroidx/compose/material3/ChipKt$Chip$2;->$trailingIcon:Lkotlin/jvm/functions/Function2;

    iput-object p7, p0, Landroidx/compose/material3/ChipKt$Chip$2;->$colors:Landroidx/compose/material3/ChipColors;

    iput-boolean p8, p0, Landroidx/compose/material3/ChipKt$Chip$2;->$enabled:Z

    iput p9, p0, Landroidx/compose/material3/ChipKt$Chip$2;->$$dirty:I

    iput p10, p0, Landroidx/compose/material3/ChipKt$Chip$2;->$minHeight:F

    iput-object p11, p0, Landroidx/compose/material3/ChipKt$Chip$2;->$paddingValues:Landroidx/compose/foundation/layout/PaddingValues;

    iput p12, p0, Landroidx/compose/material3/ChipKt$Chip$2;->$$dirty1:I

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1329
    check-cast p1, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroidx/compose/material3/ChipKt$Chip$2;->invoke(Landroidx/compose/runtime/Composer;I)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final invoke(Landroidx/compose/runtime/Composer;I)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v13, p1

    move/from16 v1, p2

    const-string v2, "C1336@67086L32,1337@67165L33,1329@66819L473:Chip.kt#uh7d8r"

    invoke-static {v13, v2}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    and-int/lit8 v2, v1, 0xb

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    .line 1330
    invoke-interface/range {p1 .. p1}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    .line 1341
    :cond_0
    invoke-interface/range {p1 .. p1}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    goto/16 :goto_1

    .line 1330
    :cond_1
    :goto_0
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, -0x1

    const-string v3, "androidx.compose.material3.Chip.<anonymous> (Chip.kt:1328)"

    const v4, -0x765f629c

    invoke-static {v4, v1, v2, v3}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_2
    iget-object v1, v0, Landroidx/compose/material3/ChipKt$Chip$2;->$label:Lkotlin/jvm/functions/Function2;

    iget-object v2, v0, Landroidx/compose/material3/ChipKt$Chip$2;->$labelTextStyle:Landroidx/compose/ui/text/TextStyle;

    iget-wide v3, v0, Landroidx/compose/material3/ChipKt$Chip$2;->$labelColor:J

    iget-object v5, v0, Landroidx/compose/material3/ChipKt$Chip$2;->$leadingIcon:Lkotlin/jvm/functions/Function2;

    iget-object v7, v0, Landroidx/compose/material3/ChipKt$Chip$2;->$trailingIcon:Lkotlin/jvm/functions/Function2;

    iget-object v8, v0, Landroidx/compose/material3/ChipKt$Chip$2;->$colors:Landroidx/compose/material3/ChipColors;

    iget-boolean v9, v0, Landroidx/compose/material3/ChipKt$Chip$2;->$enabled:Z

    iget v10, v0, Landroidx/compose/material3/ChipKt$Chip$2;->$$dirty:I

    shr-int/lit8 v11, v10, 0x6

    and-int/lit8 v11, v11, 0xe

    shr-int/lit8 v10, v10, 0x18

    and-int/lit8 v10, v10, 0x70

    or-int/2addr v10, v11

    .line 1337
    invoke-virtual {v8, v9, v13, v10}, Landroidx/compose/material3/ChipColors;->leadingIconContentColor$material3_release(ZLandroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/State;

    move-result-object v8

    invoke-interface {v8}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroidx/compose/ui/graphics/Color;

    invoke-virtual {v8}, Landroidx/compose/ui/graphics/Color;->unbox-impl()J

    move-result-wide v8

    iget-object v10, v0, Landroidx/compose/material3/ChipKt$Chip$2;->$colors:Landroidx/compose/material3/ChipColors;

    iget-boolean v11, v0, Landroidx/compose/material3/ChipKt$Chip$2;->$enabled:Z

    iget v12, v0, Landroidx/compose/material3/ChipKt$Chip$2;->$$dirty:I

    shr-int/lit8 v14, v12, 0x6

    and-int/lit8 v14, v14, 0xe

    shr-int/lit8 v12, v12, 0x18

    and-int/lit8 v12, v12, 0x70

    or-int/2addr v12, v14

    .line 1338
    invoke-virtual {v10, v11, v13, v12}, Landroidx/compose/material3/ChipColors;->trailingIconContentColor$material3_release(ZLandroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/State;

    move-result-object v10

    invoke-interface {v10}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroidx/compose/ui/graphics/Color;

    invoke-virtual {v10}, Landroidx/compose/ui/graphics/Color;->unbox-impl()J

    move-result-wide v10

    iget v12, v0, Landroidx/compose/material3/ChipKt$Chip$2;->$minHeight:F

    iget-object v14, v0, Landroidx/compose/material3/ChipKt$Chip$2;->$paddingValues:Landroidx/compose/foundation/layout/PaddingValues;

    iget v15, v0, Landroidx/compose/material3/ChipKt$Chip$2;->$$dirty:I

    shr-int/lit8 v16, v15, 0x9

    and-int/lit8 v6, v16, 0xe

    or-int/lit16 v6, v6, 0x6000

    shr-int/lit8 v16, v15, 0x9

    and-int/lit8 v16, v16, 0x70

    or-int v6, v6, v16

    shr-int/lit8 v13, v15, 0x9

    and-int/lit16 v13, v13, 0x380

    or-int/2addr v6, v13

    shr-int/lit8 v13, v15, 0x9

    and-int/lit16 v13, v13, 0x1c00

    or-int/2addr v6, v13

    const/high16 v13, 0x70000

    shr-int/lit8 v15, v15, 0x6

    and-int/2addr v13, v15

    or-int/2addr v6, v13

    iget v0, v0, Landroidx/compose/material3/ChipKt$Chip$2;->$$dirty1:I

    shl-int/lit8 v13, v0, 0x12

    const/high16 v15, 0xe000000

    and-int/2addr v13, v15

    or-int/2addr v6, v13

    const/high16 v13, 0x70000000

    shl-int/lit8 v0, v0, 0x12

    and-int/2addr v0, v13

    or-int v15, v6, v0

    move-object v0, v1

    move-object v1, v2

    move-wide v2, v3

    move-object v4, v5

    const/4 v5, 0x0

    move-object v6, v7

    move-wide v7, v8

    move-wide v9, v10

    move v11, v12

    move-object v12, v14

    move-object/from16 v13, p1

    move v14, v15

    .line 1330
    invoke-static/range {v0 .. v14}, Landroidx/compose/material3/ChipKt;->access$ChipContent-fe0OD_I(Lkotlin/jvm/functions/Function2;Landroidx/compose/ui/text/TextStyle;JLkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;JJFLandroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/runtime/Composer;I)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_3
    :goto_1
    return-void
.end method
