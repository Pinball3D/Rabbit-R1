.class final Landroidx/compose/material3/SearchBarKt$SearchBarInputField$5;
.super Lkotlin/jvm/internal/Lambda;
.source "SearchBar.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/material3/SearchBarKt;->SearchBarInputField(Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;ZLkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;ZLkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Landroidx/compose/material3/TextFieldColors;Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/runtime/Composer;III)V
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

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSearchBar.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SearchBar.kt\nandroidx/compose/material3/SearchBarKt$SearchBarInputField$5\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,746:1\n1#2:747\n*E\n"
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

.field final synthetic $colors:Landroidx/compose/material3/TextFieldColors;

.field final synthetic $enabled:Z

.field final synthetic $interactionSource:Landroidx/compose/foundation/interaction/MutableInteractionSource;

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

.field final synthetic $query:Ljava/lang/String;

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
.method constructor <init>(Ljava/lang/String;ZLandroidx/compose/foundation/interaction/MutableInteractionSource;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Landroidx/compose/material3/TextFieldColors;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z",
            "Landroidx/compose/foundation/interaction/MutableInteractionSource;",
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
            "II)V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/compose/material3/SearchBarKt$SearchBarInputField$5;->$query:Ljava/lang/String;

    iput-boolean p2, p0, Landroidx/compose/material3/SearchBarKt$SearchBarInputField$5;->$enabled:Z

    iput-object p3, p0, Landroidx/compose/material3/SearchBarKt$SearchBarInputField$5;->$interactionSource:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    iput-object p4, p0, Landroidx/compose/material3/SearchBarKt$SearchBarInputField$5;->$placeholder:Lkotlin/jvm/functions/Function2;

    iput-object p5, p0, Landroidx/compose/material3/SearchBarKt$SearchBarInputField$5;->$leadingIcon:Lkotlin/jvm/functions/Function2;

    iput-object p6, p0, Landroidx/compose/material3/SearchBarKt$SearchBarInputField$5;->$trailingIcon:Lkotlin/jvm/functions/Function2;

    iput-object p7, p0, Landroidx/compose/material3/SearchBarKt$SearchBarInputField$5;->$colors:Landroidx/compose/material3/TextFieldColors;

    iput p8, p0, Landroidx/compose/material3/SearchBarKt$SearchBarInputField$5;->$$dirty:I

    iput p9, p0, Landroidx/compose/material3/SearchBarKt$SearchBarInputField$5;->$$dirty1:I

    const/4 p1, 0x3

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 469
    check-cast p1, Lkotlin/jvm/functions/Function2;

    check-cast p2, Landroidx/compose/runtime/Composer;

    check-cast p3, Ljava/lang/Number;

    invoke-virtual {p3}, Ljava/lang/Number;->intValue()I

    move-result p3

    invoke-virtual {p0, p1, p2, p3}, Landroidx/compose/material3/SearchBarKt$SearchBarInputField$5;->invoke(Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final invoke(Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V
    .locals 32
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

    move-object/from16 v12, p2

    const-string v1, "innerTextField"

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "C483@22406L15,469@21702L880:SearchBar.kt#uh7d8r"

    invoke-static {v12, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    and-int/lit8 v1, p3, 0xe

    if-nez v1, :cond_1

    invoke-interface {v12, v3}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x4

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    :goto_0
    or-int v1, p3, v1

    goto :goto_1

    :cond_1
    move/from16 v1, p3

    :goto_1
    and-int/lit8 v2, v1, 0x5b

    const/16 v4, 0x12

    if-ne v2, v4, :cond_3

    .line 470
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_2

    .line 488
    :cond_2
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    goto/16 :goto_5

    .line 470
    :cond_3
    :goto_2
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v2

    if-eqz v2, :cond_4

    const/4 v2, -0x1

    const-string v4, "androidx.compose.material3.SearchBarInputField.<anonymous> (SearchBar.kt:468)"

    const v5, 0x22da3ae0

    invoke-static {v5, v1, v2, v4}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_4
    sget-object v2, Landroidx/compose/material3/TextFieldDefaults;->INSTANCE:Landroidx/compose/material3/TextFieldDefaults;

    iget-object v4, v0, Landroidx/compose/material3/SearchBarKt$SearchBarInputField$5;->$query:Ljava/lang/String;

    iget-boolean v5, v0, Landroidx/compose/material3/SearchBarKt$SearchBarInputField$5;->$enabled:Z

    const/4 v6, 0x1

    .line 475
    sget-object v7, Landroidx/compose/ui/text/input/VisualTransformation;->Companion:Landroidx/compose/ui/text/input/VisualTransformation$Companion;

    invoke-virtual {v7}, Landroidx/compose/ui/text/input/VisualTransformation$Companion;->getNone()Landroidx/compose/ui/text/input/VisualTransformation;

    move-result-object v7

    iget-object v8, v0, Landroidx/compose/material3/SearchBarKt$SearchBarInputField$5;->$interactionSource:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    .line 476
    check-cast v8, Landroidx/compose/foundation/interaction/InteractionSource;

    const/4 v9, 0x0

    const/4 v10, 0x0

    iget-object v11, v0, Landroidx/compose/material3/SearchBarKt$SearchBarInputField$5;->$placeholder:Lkotlin/jvm/functions/Function2;

    iget-object v13, v0, Landroidx/compose/material3/SearchBarKt$SearchBarInputField$5;->$leadingIcon:Lkotlin/jvm/functions/Function2;

    const/4 v14, 0x1

    if-eqz v13, :cond_5

    .line 478
    new-instance v15, Landroidx/compose/material3/SearchBarKt$SearchBarInputField$5$1$1;

    invoke-direct {v15, v13}, Landroidx/compose/material3/SearchBarKt$SearchBarInputField$5$1$1;-><init>(Lkotlin/jvm/functions/Function2;)V

    const v13, -0x39a90e96

    invoke-static {v12, v13, v14, v15}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->composableLambda(Landroidx/compose/runtime/Composer;IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v13

    check-cast v13, Lkotlin/jvm/functions/Function2;

    move-object/from16 v20, v13

    goto :goto_3

    :cond_5
    const/16 v20, 0x0

    :goto_3
    iget-object v13, v0, Landroidx/compose/material3/SearchBarKt$SearchBarInputField$5;->$trailingIcon:Lkotlin/jvm/functions/Function2;

    if-eqz v13, :cond_6

    .line 481
    new-instance v15, Landroidx/compose/material3/SearchBarKt$SearchBarInputField$5$2$1;

    invoke-direct {v15, v13}, Landroidx/compose/material3/SearchBarKt$SearchBarInputField$5$2$1;-><init>(Lkotlin/jvm/functions/Function2;)V

    const v13, -0x7e3c0eca

    invoke-static {v12, v13, v14, v15}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->composableLambda(Landroidx/compose/runtime/Composer;IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v13

    check-cast v13, Lkotlin/jvm/functions/Function2;

    move-object/from16 v24, v13

    goto :goto_4

    :cond_6
    const/16 v24, 0x0

    :goto_4
    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    .line 484
    sget-object v13, Landroidx/compose/material3/SearchBarDefaults;->INSTANCE:Landroidx/compose/material3/SearchBarDefaults;

    const/4 v14, 0x6

    invoke-virtual {v13, v12, v14}, Landroidx/compose/material3/SearchBarDefaults;->getInputFieldShape(Landroidx/compose/runtime/Composer;I)Landroidx/compose/ui/graphics/Shape;

    move-result-object v16

    iget-object v13, v0, Landroidx/compose/material3/SearchBarKt$SearchBarInputField$5;->$colors:Landroidx/compose/material3/TextFieldColors;

    move-object/from16 v17, v13

    .line 486
    sget-object v25, Landroidx/compose/material3/TextFieldDefaults;->INSTANCE:Landroidx/compose/material3/TextFieldDefaults;

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0xf

    const/16 v31, 0x0

    invoke-static/range {v25 .. v31}, Landroidx/compose/material3/TextFieldDefaults;->contentPaddingWithoutLabel-a9UjIt4$default(Landroidx/compose/material3/TextFieldDefaults;FFFFILjava/lang/Object;)Landroidx/compose/foundation/layout/PaddingValues;

    move-result-object v18

    sget-object v13, Landroidx/compose/material3/ComposableSingletons$SearchBarKt;->INSTANCE:Landroidx/compose/material3/ComposableSingletons$SearchBarKt;

    invoke-virtual {v13}, Landroidx/compose/material3/ComposableSingletons$SearchBarKt;->getLambda-1$material3_release()Lkotlin/jvm/functions/Function2;

    move-result-object v19

    iget v13, v0, Landroidx/compose/material3/SearchBarKt$SearchBarInputField$5;->$$dirty:I

    and-int/lit8 v14, v13, 0xe

    or-int/lit16 v14, v14, 0x6c00

    shl-int/lit8 v1, v1, 0x3

    and-int/lit8 v1, v1, 0x70

    or-int/2addr v1, v14

    shr-int/lit8 v14, v13, 0xc

    and-int/lit16 v14, v14, 0x380

    or-int/2addr v1, v14

    iget v0, v0, Landroidx/compose/material3/SearchBarKt$SearchBarInputField$5;->$$dirty1:I

    shl-int/lit8 v14, v0, 0xc

    const/high16 v22, 0x70000

    and-int v14, v14, v22

    or-int/2addr v1, v14

    const/high16 v14, 0xe000000

    shl-int/lit8 v13, v13, 0x3

    and-int/2addr v13, v14

    or-int v21, v1, v13

    shl-int/lit8 v0, v0, 0xf

    and-int v0, v0, v22

    const/high16 v1, 0x6c00000

    or-int v22, v0, v1

    const/16 v23, 0x38c0

    move-object v1, v2

    move-object v2, v4

    move-object/from16 v3, p1

    move v4, v5

    move v5, v6

    move-object v6, v7

    move-object v7, v8

    move v8, v9

    move-object v9, v10

    move-object v10, v11

    move-object/from16 v11, v20

    move-object/from16 v12, v24

    move-object/from16 v20, p2

    const/4 v13, 0x0

    const/4 v14, 0x0

    .line 470
    invoke-virtual/range {v1 .. v23}, Landroidx/compose/material3/TextFieldDefaults;->DecorationBox(Ljava/lang/String;Lkotlin/jvm/functions/Function2;ZZLandroidx/compose/ui/text/input/VisualTransformation;Landroidx/compose/foundation/interaction/InteractionSource;ZLkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Landroidx/compose/ui/graphics/Shape;Landroidx/compose/material3/TextFieldColors;Landroidx/compose/foundation/layout/PaddingValues;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;III)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_7
    :goto_5
    return-void
.end method
