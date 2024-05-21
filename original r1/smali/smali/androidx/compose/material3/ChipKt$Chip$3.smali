.class final Landroidx/compose/material3/ChipKt$Chip$3;
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
.field final synthetic $$changed:I

.field final synthetic $$changed1:I

.field final synthetic $border:Landroidx/compose/foundation/BorderStroke;

.field final synthetic $colors:Landroidx/compose/material3/ChipColors;

.field final synthetic $elevation:Landroidx/compose/material3/ChipElevation;

.field final synthetic $enabled:Z

.field final synthetic $interactionSource:Landroidx/compose/foundation/interaction/MutableInteractionSource;

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

.field final synthetic $paddingValues:Landroidx/compose/foundation/layout/PaddingValues;

.field final synthetic $shape:Landroidx/compose/ui/graphics/Shape;

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
.method constructor <init>(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function0;ZLkotlin/jvm/functions/Function2;Landroidx/compose/ui/text/TextStyle;JLkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Landroidx/compose/ui/graphics/Shape;Landroidx/compose/material3/ChipColors;Landroidx/compose/material3/ChipElevation;Landroidx/compose/foundation/BorderStroke;FLandroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/foundation/interaction/MutableInteractionSource;II)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/Modifier;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;Z",
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
            "Landroidx/compose/ui/graphics/Shape;",
            "Landroidx/compose/material3/ChipColors;",
            "Landroidx/compose/material3/ChipElevation;",
            "Landroidx/compose/foundation/BorderStroke;",
            "F",
            "Landroidx/compose/foundation/layout/PaddingValues;",
            "Landroidx/compose/foundation/interaction/MutableInteractionSource;",
            "II)V"
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    iput-object v1, v0, Landroidx/compose/material3/ChipKt$Chip$3;->$modifier:Landroidx/compose/ui/Modifier;

    move-object v1, p2

    iput-object v1, v0, Landroidx/compose/material3/ChipKt$Chip$3;->$onClick:Lkotlin/jvm/functions/Function0;

    move v1, p3

    iput-boolean v1, v0, Landroidx/compose/material3/ChipKt$Chip$3;->$enabled:Z

    move-object v1, p4

    iput-object v1, v0, Landroidx/compose/material3/ChipKt$Chip$3;->$label:Lkotlin/jvm/functions/Function2;

    move-object v1, p5

    iput-object v1, v0, Landroidx/compose/material3/ChipKt$Chip$3;->$labelTextStyle:Landroidx/compose/ui/text/TextStyle;

    move-wide v1, p6

    iput-wide v1, v0, Landroidx/compose/material3/ChipKt$Chip$3;->$labelColor:J

    move-object v1, p8

    iput-object v1, v0, Landroidx/compose/material3/ChipKt$Chip$3;->$leadingIcon:Lkotlin/jvm/functions/Function2;

    move-object v1, p9

    iput-object v1, v0, Landroidx/compose/material3/ChipKt$Chip$3;->$trailingIcon:Lkotlin/jvm/functions/Function2;

    move-object v1, p10

    iput-object v1, v0, Landroidx/compose/material3/ChipKt$Chip$3;->$shape:Landroidx/compose/ui/graphics/Shape;

    move-object v1, p11

    iput-object v1, v0, Landroidx/compose/material3/ChipKt$Chip$3;->$colors:Landroidx/compose/material3/ChipColors;

    move-object v1, p12

    iput-object v1, v0, Landroidx/compose/material3/ChipKt$Chip$3;->$elevation:Landroidx/compose/material3/ChipElevation;

    move-object/from16 v1, p13

    iput-object v1, v0, Landroidx/compose/material3/ChipKt$Chip$3;->$border:Landroidx/compose/foundation/BorderStroke;

    move/from16 v1, p14

    iput v1, v0, Landroidx/compose/material3/ChipKt$Chip$3;->$minHeight:F

    move-object/from16 v1, p15

    iput-object v1, v0, Landroidx/compose/material3/ChipKt$Chip$3;->$paddingValues:Landroidx/compose/foundation/layout/PaddingValues;

    move-object/from16 v1, p16

    iput-object v1, v0, Landroidx/compose/material3/ChipKt$Chip$3;->$interactionSource:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    move/from16 v1, p17

    iput v1, v0, Landroidx/compose/material3/ChipKt$Chip$3;->$$changed:I

    move/from16 v1, p18

    iput v1, v0, Landroidx/compose/material3/ChipKt$Chip$3;->$$changed1:I

    const/4 v1, 0x2

    invoke-direct {p0, v1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroidx/compose/material3/ChipKt$Chip$3;->invoke(Landroidx/compose/runtime/Composer;I)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final invoke(Landroidx/compose/runtime/Composer;I)V
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v17, p1

    iget-object v1, v0, Landroidx/compose/material3/ChipKt$Chip$3;->$modifier:Landroidx/compose/ui/Modifier;

    iget-object v2, v0, Landroidx/compose/material3/ChipKt$Chip$3;->$onClick:Lkotlin/jvm/functions/Function0;

    iget-boolean v3, v0, Landroidx/compose/material3/ChipKt$Chip$3;->$enabled:Z

    iget-object v4, v0, Landroidx/compose/material3/ChipKt$Chip$3;->$label:Lkotlin/jvm/functions/Function2;

    iget-object v5, v0, Landroidx/compose/material3/ChipKt$Chip$3;->$labelTextStyle:Landroidx/compose/ui/text/TextStyle;

    iget-wide v6, v0, Landroidx/compose/material3/ChipKt$Chip$3;->$labelColor:J

    iget-object v8, v0, Landroidx/compose/material3/ChipKt$Chip$3;->$leadingIcon:Lkotlin/jvm/functions/Function2;

    iget-object v9, v0, Landroidx/compose/material3/ChipKt$Chip$3;->$trailingIcon:Lkotlin/jvm/functions/Function2;

    iget-object v10, v0, Landroidx/compose/material3/ChipKt$Chip$3;->$shape:Landroidx/compose/ui/graphics/Shape;

    iget-object v11, v0, Landroidx/compose/material3/ChipKt$Chip$3;->$colors:Landroidx/compose/material3/ChipColors;

    iget-object v12, v0, Landroidx/compose/material3/ChipKt$Chip$3;->$elevation:Landroidx/compose/material3/ChipElevation;

    iget-object v13, v0, Landroidx/compose/material3/ChipKt$Chip$3;->$border:Landroidx/compose/foundation/BorderStroke;

    iget v14, v0, Landroidx/compose/material3/ChipKt$Chip$3;->$minHeight:F

    iget-object v15, v0, Landroidx/compose/material3/ChipKt$Chip$3;->$paddingValues:Landroidx/compose/foundation/layout/PaddingValues;

    move-object/from16 p1, v1

    iget-object v1, v0, Landroidx/compose/material3/ChipKt$Chip$3;->$interactionSource:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    move-object/from16 v16, v1

    iget v1, v0, Landroidx/compose/material3/ChipKt$Chip$3;->$$changed:I

    or-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Landroidx/compose/runtime/RecomposeScopeImplKt;->updateChangedFlags(I)I

    move-result v18

    iget v0, v0, Landroidx/compose/material3/ChipKt$Chip$3;->$$changed1:I

    invoke-static {v0}, Landroidx/compose/runtime/RecomposeScopeImplKt;->updateChangedFlags(I)I

    move-result v19

    move-object/from16 v1, p1

    invoke-static/range {v1 .. v19}, Landroidx/compose/material3/ChipKt;->access$Chip-nkUnTEs(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function0;ZLkotlin/jvm/functions/Function2;Landroidx/compose/ui/text/TextStyle;JLkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Landroidx/compose/ui/graphics/Shape;Landroidx/compose/material3/ChipColors;Landroidx/compose/material3/ChipElevation;Landroidx/compose/foundation/BorderStroke;FLandroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/runtime/Composer;II)V

    return-void
.end method
