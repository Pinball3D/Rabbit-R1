.class final Landroidx/compose/material3/OutlinedTextFieldKt$OutlinedTextField$2$2;
.super Lkotlin/jvm/internal/Lambda;
.source "OutlinedTextField.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/material3/OutlinedTextFieldKt$OutlinedTextField$2;->invoke(Landroidx/compose/runtime/Composer;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function3<",
        "Lkotlin/jvm/functions/Function2<",
        "-",
        "Landroidx/compose/runtime/Composer;",
        "-",
        "Ljava/lang/Integer;",
        "+",
        "Lkotlin/Unit;",
        ">;",
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

.field final synthetic $$dirty2:I

.field final synthetic $colors:Landroidx/compose/material3/TextFieldColors;

.field final synthetic $enabled:Z

.field final synthetic $interactionSource:Landroidx/compose/foundation/interaction/MutableInteractionSource;

.field final synthetic $isError:Z

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

.field final synthetic $placeholder:Lkotlin/jvm/functions/Function2;
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

.field final synthetic $prefix:Lkotlin/jvm/functions/Function2;
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

.field final synthetic $shape:Landroidx/compose/ui/graphics/Shape;

.field final synthetic $singleLine:Z

.field final synthetic $suffix:Lkotlin/jvm/functions/Function2;
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

.field final synthetic $supportingText:Lkotlin/jvm/functions/Function2;
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

.field final synthetic $value:Ljava/lang/String;

.field final synthetic $visualTransformation:Landroidx/compose/ui/text/input/VisualTransformation;


# direct methods
.method constructor <init>(Ljava/lang/String;ZZLandroidx/compose/ui/text/input/VisualTransformation;Landroidx/compose/foundation/interaction/MutableInteractionSource;ZLkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Landroidx/compose/material3/TextFieldColors;IIILandroidx/compose/ui/graphics/Shape;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "ZZ",
            "Landroidx/compose/ui/text/input/VisualTransformation;",
            "Landroidx/compose/foundation/interaction/MutableInteractionSource;",
            "Z",
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
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;",
            "Landroidx/compose/material3/TextFieldColors;",
            "III",
            "Landroidx/compose/ui/graphics/Shape;",
            ")V"
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    iput-object v1, v0, Landroidx/compose/material3/OutlinedTextFieldKt$OutlinedTextField$2$2;->$value:Ljava/lang/String;

    move v1, p2

    iput-boolean v1, v0, Landroidx/compose/material3/OutlinedTextFieldKt$OutlinedTextField$2$2;->$enabled:Z

    move v1, p3

    iput-boolean v1, v0, Landroidx/compose/material3/OutlinedTextFieldKt$OutlinedTextField$2$2;->$singleLine:Z

    move-object v1, p4

    iput-object v1, v0, Landroidx/compose/material3/OutlinedTextFieldKt$OutlinedTextField$2$2;->$visualTransformation:Landroidx/compose/ui/text/input/VisualTransformation;

    move-object v1, p5

    iput-object v1, v0, Landroidx/compose/material3/OutlinedTextFieldKt$OutlinedTextField$2$2;->$interactionSource:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    move v1, p6

    iput-boolean v1, v0, Landroidx/compose/material3/OutlinedTextFieldKt$OutlinedTextField$2$2;->$isError:Z

    move-object v1, p7

    iput-object v1, v0, Landroidx/compose/material3/OutlinedTextFieldKt$OutlinedTextField$2$2;->$label:Lkotlin/jvm/functions/Function2;

    move-object v1, p8

    iput-object v1, v0, Landroidx/compose/material3/OutlinedTextFieldKt$OutlinedTextField$2$2;->$placeholder:Lkotlin/jvm/functions/Function2;

    move-object v1, p9

    iput-object v1, v0, Landroidx/compose/material3/OutlinedTextFieldKt$OutlinedTextField$2$2;->$leadingIcon:Lkotlin/jvm/functions/Function2;

    move-object v1, p10

    iput-object v1, v0, Landroidx/compose/material3/OutlinedTextFieldKt$OutlinedTextField$2$2;->$trailingIcon:Lkotlin/jvm/functions/Function2;

    move-object v1, p11

    iput-object v1, v0, Landroidx/compose/material3/OutlinedTextFieldKt$OutlinedTextField$2$2;->$prefix:Lkotlin/jvm/functions/Function2;

    move-object v1, p12

    iput-object v1, v0, Landroidx/compose/material3/OutlinedTextFieldKt$OutlinedTextField$2$2;->$suffix:Lkotlin/jvm/functions/Function2;

    move-object v1, p13

    iput-object v1, v0, Landroidx/compose/material3/OutlinedTextFieldKt$OutlinedTextField$2$2;->$supportingText:Lkotlin/jvm/functions/Function2;

    move-object/from16 v1, p14

    iput-object v1, v0, Landroidx/compose/material3/OutlinedTextFieldKt$OutlinedTextField$2$2;->$colors:Landroidx/compose/material3/TextFieldColors;

    move/from16 v1, p15

    iput v1, v0, Landroidx/compose/material3/OutlinedTextFieldKt$OutlinedTextField$2$2;->$$dirty:I

    move/from16 v1, p16

    iput v1, v0, Landroidx/compose/material3/OutlinedTextFieldKt$OutlinedTextField$2$2;->$$dirty1:I

    move/from16 v1, p17

    iput v1, v0, Landroidx/compose/material3/OutlinedTextFieldKt$OutlinedTextField$2$2;->$$dirty2:I

    move-object/from16 v1, p18

    iput-object v1, v0, Landroidx/compose/material3/OutlinedTextFieldKt$OutlinedTextField$2$2;->$shape:Landroidx/compose/ui/graphics/Shape;

    const/4 v1, 0x3

    invoke-direct {p0, v1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 199
    check-cast p1, Lkotlin/jvm/functions/Function2;

    check-cast p2, Landroidx/compose/runtime/Composer;

    check-cast p3, Ljava/lang/Number;

    invoke-virtual {p3}, Ljava/lang/Number;->intValue()I

    move-result p3

    invoke-virtual {p0, p1, p2, p3}, Landroidx/compose/material3/OutlinedTextFieldKt$OutlinedTextField$2$2;->invoke(Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final invoke(Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V
    .locals 37
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
            "Landroidx/compose/runtime/Composer;",
            "I)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v3, p1

    move-object/from16 v15, p2

    const-string v1, "innerTextField"

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "C199@10744L1046:OutlinedTextField.kt#uh7d8r"

    invoke-static {v15, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    and-int/lit8 v1, p3, 0xe

    if-nez v1, :cond_1

    invoke-interface {v15, v3}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x4

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    :goto_0
    or-int v1, p3, v1

    move v14, v1

    goto :goto_1

    :cond_1
    move/from16 v14, p3

    :goto_1
    and-int/lit8 v1, v14, 0x5b

    const/16 v2, 0x12

    if-ne v1, v2, :cond_3

    .line 200
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_2

    .line 225
    :cond_2
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    goto/16 :goto_3

    .line 200
    :cond_3
    :goto_2
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v1, -0x1

    const-string v2, "androidx.compose.material3.OutlinedTextField.<anonymous>.<anonymous> (OutlinedTextField.kt:198)"

    const v4, 0x57e4c9cd

    invoke-static {v4, v14, v1, v2}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_4
    sget-object v1, Landroidx/compose/material3/OutlinedTextFieldDefaults;->INSTANCE:Landroidx/compose/material3/OutlinedTextFieldDefaults;

    iget-object v2, v0, Landroidx/compose/material3/OutlinedTextFieldKt$OutlinedTextField$2$2;->$value:Ljava/lang/String;

    iget-boolean v4, v0, Landroidx/compose/material3/OutlinedTextFieldKt$OutlinedTextField$2$2;->$enabled:Z

    iget-boolean v5, v0, Landroidx/compose/material3/OutlinedTextFieldKt$OutlinedTextField$2$2;->$singleLine:Z

    iget-object v6, v0, Landroidx/compose/material3/OutlinedTextFieldKt$OutlinedTextField$2$2;->$visualTransformation:Landroidx/compose/ui/text/input/VisualTransformation;

    iget-object v7, v0, Landroidx/compose/material3/OutlinedTextFieldKt$OutlinedTextField$2$2;->$interactionSource:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    .line 214
    check-cast v7, Landroidx/compose/foundation/interaction/InteractionSource;

    iget-boolean v8, v0, Landroidx/compose/material3/OutlinedTextFieldKt$OutlinedTextField$2$2;->$isError:Z

    iget-object v9, v0, Landroidx/compose/material3/OutlinedTextFieldKt$OutlinedTextField$2$2;->$label:Lkotlin/jvm/functions/Function2;

    iget-object v10, v0, Landroidx/compose/material3/OutlinedTextFieldKt$OutlinedTextField$2$2;->$placeholder:Lkotlin/jvm/functions/Function2;

    iget-object v11, v0, Landroidx/compose/material3/OutlinedTextFieldKt$OutlinedTextField$2$2;->$leadingIcon:Lkotlin/jvm/functions/Function2;

    iget-object v12, v0, Landroidx/compose/material3/OutlinedTextFieldKt$OutlinedTextField$2$2;->$trailingIcon:Lkotlin/jvm/functions/Function2;

    iget-object v13, v0, Landroidx/compose/material3/OutlinedTextFieldKt$OutlinedTextField$2$2;->$prefix:Lkotlin/jvm/functions/Function2;

    iget-object v3, v0, Landroidx/compose/material3/OutlinedTextFieldKt$OutlinedTextField$2$2;->$suffix:Lkotlin/jvm/functions/Function2;

    move/from16 v19, v14

    move-object v14, v3

    iget-object v3, v0, Landroidx/compose/material3/OutlinedTextFieldKt$OutlinedTextField$2$2;->$supportingText:Lkotlin/jvm/functions/Function2;

    move-object/from16 p3, v1

    move-object v1, v15

    move-object v15, v3

    iget-object v3, v0, Landroidx/compose/material3/OutlinedTextFieldKt$OutlinedTextField$2$2;->$colors:Landroidx/compose/material3/TextFieldColors;

    move-object/from16 v16, v3

    const/16 v17, 0x0

    .line 216
    new-instance v3, Landroidx/compose/material3/OutlinedTextFieldKt$OutlinedTextField$2$2$1;

    move-object/from16 v29, v2

    iget-boolean v2, v0, Landroidx/compose/material3/OutlinedTextFieldKt$OutlinedTextField$2$2;->$enabled:Z

    move/from16 v30, v4

    iget-boolean v4, v0, Landroidx/compose/material3/OutlinedTextFieldKt$OutlinedTextField$2$2;->$isError:Z

    move/from16 v31, v5

    iget-object v5, v0, Landroidx/compose/material3/OutlinedTextFieldKt$OutlinedTextField$2$2;->$interactionSource:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    move-object/from16 v32, v6

    iget-object v6, v0, Landroidx/compose/material3/OutlinedTextFieldKt$OutlinedTextField$2$2;->$colors:Landroidx/compose/material3/TextFieldColors;

    move-object/from16 v33, v7

    iget-object v7, v0, Landroidx/compose/material3/OutlinedTextFieldKt$OutlinedTextField$2$2;->$shape:Landroidx/compose/ui/graphics/Shape;

    move/from16 v34, v8

    iget v8, v0, Landroidx/compose/material3/OutlinedTextFieldKt$OutlinedTextField$2$2;->$$dirty:I

    move-object/from16 v35, v9

    iget v9, v0, Landroidx/compose/material3/OutlinedTextFieldKt$OutlinedTextField$2$2;->$$dirty1:I

    move-object/from16 v36, v10

    iget v10, v0, Landroidx/compose/material3/OutlinedTextFieldKt$OutlinedTextField$2$2;->$$dirty2:I

    move-object/from16 v20, v3

    move/from16 v21, v2

    move/from16 v22, v4

    move-object/from16 v23, v5

    move-object/from16 v24, v6

    move-object/from16 v25, v7

    move/from16 v26, v8

    move/from16 v27, v9

    move/from16 v28, v10

    invoke-direct/range {v20 .. v28}, Landroidx/compose/material3/OutlinedTextFieldKt$OutlinedTextField$2$2$1;-><init>(ZZLandroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/material3/TextFieldColors;Landroidx/compose/ui/graphics/Shape;III)V

    const v2, 0x7db22be0

    const/4 v4, 0x1

    invoke-static {v1, v2, v4, v3}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->composableLambda(Landroidx/compose/runtime/Composer;IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v2

    move-object/from16 v18, v2

    check-cast v18, Lkotlin/jvm/functions/Function2;

    iget v2, v0, Landroidx/compose/material3/OutlinedTextFieldKt$OutlinedTextField$2$2;->$$dirty:I

    and-int/lit8 v3, v2, 0xe

    shl-int/lit8 v4, v19, 0x3

    and-int/lit8 v4, v4, 0x70

    or-int/2addr v3, v4

    shr-int/lit8 v4, v2, 0x3

    and-int/lit16 v4, v4, 0x380

    or-int/2addr v3, v4

    iget v4, v0, Landroidx/compose/material3/OutlinedTextFieldKt$OutlinedTextField$2$2;->$$dirty1:I

    shr-int/lit8 v5, v4, 0xc

    and-int/lit16 v5, v5, 0x1c00

    or-int/2addr v3, v5

    const v5, 0xe000

    and-int v6, v4, v5

    or-int/2addr v3, v6

    iget v0, v0, Landroidx/compose/material3/OutlinedTextFieldKt$OutlinedTextField$2$2;->$$dirty2:I

    shl-int/lit8 v6, v0, 0xf

    const/high16 v7, 0x70000

    and-int/2addr v6, v7

    or-int/2addr v3, v6

    shl-int/lit8 v6, v4, 0x9

    const/high16 v7, 0x380000

    and-int/2addr v6, v7

    or-int/2addr v3, v6

    shl-int/lit8 v6, v2, 0x3

    const/high16 v7, 0x1c00000

    and-int/2addr v6, v7

    or-int/2addr v3, v6

    shl-int/lit8 v6, v2, 0x3

    const/high16 v7, 0xe000000

    and-int/2addr v6, v7

    or-int/2addr v3, v6

    shl-int/lit8 v6, v2, 0x3

    const/high16 v7, 0x70000000

    and-int/2addr v6, v7

    or-int v20, v3, v6

    shr-int/lit8 v2, v2, 0x1b

    and-int/lit8 v2, v2, 0xe

    const/high16 v3, 0xd80000

    or-int/2addr v2, v3

    shl-int/lit8 v3, v4, 0x3

    and-int/lit8 v3, v3, 0x70

    or-int/2addr v2, v3

    shl-int/lit8 v3, v4, 0x3

    and-int/lit16 v3, v3, 0x380

    or-int/2addr v2, v3

    shl-int/lit8 v3, v4, 0x3

    and-int/lit16 v3, v3, 0x1c00

    or-int/2addr v2, v3

    shl-int/lit8 v0, v0, 0x6

    and-int/2addr v0, v5

    or-int v21, v2, v0

    const v22, 0x8000

    move-object/from16 v3, p1

    move-object/from16 v19, p2

    move-object/from16 v1, p3

    move-object/from16 v2, v29

    move/from16 v4, v30

    move/from16 v5, v31

    move-object/from16 v6, v32

    move-object/from16 v7, v33

    move/from16 v8, v34

    move-object/from16 v9, v35

    move-object/from16 v10, v36

    .line 200
    invoke-virtual/range {v1 .. v22}, Landroidx/compose/material3/OutlinedTextFieldDefaults;->DecorationBox(Ljava/lang/String;Lkotlin/jvm/functions/Function2;ZZLandroidx/compose/ui/text/input/VisualTransformation;Landroidx/compose/foundation/interaction/InteractionSource;ZLkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Landroidx/compose/material3/TextFieldColors;Landroidx/compose/foundation/layout/PaddingValues;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;III)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_5
    :goto_3
    return-void
.end method
