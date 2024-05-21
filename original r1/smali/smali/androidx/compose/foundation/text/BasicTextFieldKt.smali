.class public final Landroidx/compose/foundation/text/BasicTextFieldKt;
.super Ljava/lang/Object;
.source "BasicTextField.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nBasicTextField.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BasicTextField.kt\nandroidx/compose/foundation/text/BasicTextFieldKt\n+ 2 Composables.kt\nandroidx/compose/runtime/ComposablesKt\n+ 3 Composer.kt\nandroidx/compose/runtime/ComposerKt\n+ 4 SnapshotState.kt\nandroidx/compose/runtime/SnapshotStateKt__SnapshotStateKt\n*L\n1#1,390:1\n25#2:391\n25#2:398\n50#2:405\n49#2:406\n36#2:413\n67#2,3:420\n66#2:423\n25#2:430\n50#2:437\n49#2:438\n25#2:445\n25#2:452\n1097#3,6:392\n1097#3,6:399\n1097#3,6:407\n1097#3,6:414\n1097#3,6:424\n1097#3,6:431\n1097#3,6:439\n1097#3,6:446\n1097#3,6:453\n81#4:459\n107#4,2:460\n81#4:462\n107#4,2:463\n*S KotlinDebug\n*F\n+ 1 BasicTextField.kt\nandroidx/compose/foundation/text/BasicTextFieldKt\n*L\n137#1:391\n144#1:398\n150#1:405\n150#1:406\n159#1:413\n163#1:420,3\n163#1:423\n283#1:430\n290#1:437\n290#1:438\n327#1:445\n367#1:452\n137#1:392,6\n144#1:399,6\n150#1:407,6\n159#1:414,6\n163#1:424,6\n283#1:431,6\n290#1:439,6\n327#1:446,6\n367#1:453,6\n144#1:459\n144#1:460,2\n159#1:462\n159#1:463,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000l\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000e\n\u0002\u0008\u0005\u001a\u00e2\u0001\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0012\u0010\u0004\u001a\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00010\u00052\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00072\u0008\u0008\u0002\u0010\u0008\u001a\u00020\t2\u0008\u0008\u0002\u0010\n\u001a\u00020\t2\u0008\u0008\u0002\u0010\u000b\u001a\u00020\u000c2\u0008\u0008\u0002\u0010\r\u001a\u00020\u000e2\u0008\u0008\u0002\u0010\u000f\u001a\u00020\u00102\u0008\u0008\u0002\u0010\u0011\u001a\u00020\t2\u0008\u0008\u0002\u0010\u0012\u001a\u00020\u00132\u0008\u0008\u0002\u0010\u0014\u001a\u00020\u00152\u0014\u0008\u0002\u0010\u0016\u001a\u000e\u0012\u0004\u0012\u00020\u0017\u0012\u0004\u0012\u00020\u00010\u00052\u0008\u0008\u0002\u0010\u0018\u001a\u00020\u00192\u0008\u0008\u0002\u0010\u001a\u001a\u00020\u001b23\u0008\u0002\u0010\u001c\u001a-\u0012\u001e\u0012\u001c\u0012\u0004\u0012\u00020\u00010\u001d\u00a2\u0006\u0002\u0008\u001e\u00a2\u0006\u000c\u0008\u001f\u0012\u0008\u0008 \u0012\u0004\u0008\u0008(!\u0012\u0004\u0012\u00020\u00010\u0005\u00a2\u0006\u0002\u0008\u001eH\u0007\u00a2\u0006\u0002\u0010\"\u001a\u00ec\u0001\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0012\u0010\u0004\u001a\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00010\u00052\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00072\u0008\u0008\u0002\u0010\u0008\u001a\u00020\t2\u0008\u0008\u0002\u0010\n\u001a\u00020\t2\u0008\u0008\u0002\u0010\u000b\u001a\u00020\u000c2\u0008\u0008\u0002\u0010\r\u001a\u00020\u000e2\u0008\u0008\u0002\u0010\u000f\u001a\u00020\u00102\u0008\u0008\u0002\u0010\u0011\u001a\u00020\t2\u0008\u0008\u0002\u0010\u0012\u001a\u00020\u00132\u0008\u0008\u0002\u0010#\u001a\u00020\u00132\u0008\u0008\u0002\u0010\u0014\u001a\u00020\u00152\u0014\u0008\u0002\u0010\u0016\u001a\u000e\u0012\u0004\u0012\u00020\u0017\u0012\u0004\u0012\u00020\u00010\u00052\u0008\u0008\u0002\u0010\u0018\u001a\u00020\u00192\u0008\u0008\u0002\u0010\u001a\u001a\u00020\u001b23\u0008\u0002\u0010\u001c\u001a-\u0012\u001e\u0012\u001c\u0012\u0004\u0012\u00020\u00010\u001d\u00a2\u0006\u0002\u0008\u001e\u00a2\u0006\u000c\u0008\u001f\u0012\u0008\u0008 \u0012\u0004\u0008\u0008(!\u0012\u0004\u0012\u00020\u00010\u0005\u00a2\u0006\u0002\u0008\u001eH\u0007\u00a2\u0006\u0002\u0010$\u001a\u00e2\u0001\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020%2\u0012\u0010\u0004\u001a\u000e\u0012\u0004\u0012\u00020%\u0012\u0004\u0012\u00020\u00010\u00052\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00072\u0008\u0008\u0002\u0010\u0008\u001a\u00020\t2\u0008\u0008\u0002\u0010\n\u001a\u00020\t2\u0008\u0008\u0002\u0010\u000b\u001a\u00020\u000c2\u0008\u0008\u0002\u0010\r\u001a\u00020\u000e2\u0008\u0008\u0002\u0010\u000f\u001a\u00020\u00102\u0008\u0008\u0002\u0010\u0011\u001a\u00020\t2\u0008\u0008\u0002\u0010\u0012\u001a\u00020\u00132\u0008\u0008\u0002\u0010\u0014\u001a\u00020\u00152\u0014\u0008\u0002\u0010\u0016\u001a\u000e\u0012\u0004\u0012\u00020\u0017\u0012\u0004\u0012\u00020\u00010\u00052\u0008\u0008\u0002\u0010\u0018\u001a\u00020\u00192\u0008\u0008\u0002\u0010\u001a\u001a\u00020\u001b23\u0008\u0002\u0010\u001c\u001a-\u0012\u001e\u0012\u001c\u0012\u0004\u0012\u00020\u00010\u001d\u00a2\u0006\u0002\u0008\u001e\u00a2\u0006\u000c\u0008\u001f\u0012\u0008\u0008 \u0012\u0004\u0008\u0008(!\u0012\u0004\u0012\u00020\u00010\u0005\u00a2\u0006\u0002\u0008\u001eH\u0007\u00a2\u0006\u0002\u0010&\u001a\u00ec\u0001\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020%2\u0012\u0010\u0004\u001a\u000e\u0012\u0004\u0012\u00020%\u0012\u0004\u0012\u00020\u00010\u00052\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00072\u0008\u0008\u0002\u0010\u0008\u001a\u00020\t2\u0008\u0008\u0002\u0010\n\u001a\u00020\t2\u0008\u0008\u0002\u0010\u000b\u001a\u00020\u000c2\u0008\u0008\u0002\u0010\r\u001a\u00020\u000e2\u0008\u0008\u0002\u0010\u000f\u001a\u00020\u00102\u0008\u0008\u0002\u0010\u0011\u001a\u00020\t2\u0008\u0008\u0002\u0010\u0012\u001a\u00020\u00132\u0008\u0008\u0002\u0010#\u001a\u00020\u00132\u0008\u0008\u0002\u0010\u0014\u001a\u00020\u00152\u0014\u0008\u0002\u0010\u0016\u001a\u000e\u0012\u0004\u0012\u00020\u0017\u0012\u0004\u0012\u00020\u00010\u00052\u0008\u0008\u0002\u0010\u0018\u001a\u00020\u00192\u0008\u0008\u0002\u0010\u001a\u001a\u00020\u001b23\u0008\u0002\u0010\u001c\u001a-\u0012\u001e\u0012\u001c\u0012\u0004\u0012\u00020\u00010\u001d\u00a2\u0006\u0002\u0008\u001e\u00a2\u0006\u000c\u0008\u001f\u0012\u0008\u0008 \u0012\u0004\u0008\u0008(!\u0012\u0004\u0012\u00020\u00010\u0005\u00a2\u0006\u0002\u0008\u001eH\u0007\u00a2\u0006\u0002\u0010\'\u00a8\u0006(\u00b2\u0006\n\u0010)\u001a\u00020\u0003X\u008a\u008e\u0002\u00b2\u0006\n\u0010*\u001a\u00020%X\u008a\u008e\u0002"
    }
    d2 = {
        "BasicTextField",
        "",
        "value",
        "Landroidx/compose/ui/text/input/TextFieldValue;",
        "onValueChange",
        "Lkotlin/Function1;",
        "modifier",
        "Landroidx/compose/ui/Modifier;",
        "enabled",
        "",
        "readOnly",
        "textStyle",
        "Landroidx/compose/ui/text/TextStyle;",
        "keyboardOptions",
        "Landroidx/compose/foundation/text/KeyboardOptions;",
        "keyboardActions",
        "Landroidx/compose/foundation/text/KeyboardActions;",
        "singleLine",
        "maxLines",
        "",
        "visualTransformation",
        "Landroidx/compose/ui/text/input/VisualTransformation;",
        "onTextLayout",
        "Landroidx/compose/ui/text/TextLayoutResult;",
        "interactionSource",
        "Landroidx/compose/foundation/interaction/MutableInteractionSource;",
        "cursorBrush",
        "Landroidx/compose/ui/graphics/Brush;",
        "decorationBox",
        "Lkotlin/Function0;",
        "Landroidx/compose/runtime/Composable;",
        "Lkotlin/ParameterName;",
        "name",
        "innerTextField",
        "(Landroidx/compose/ui/text/input/TextFieldValue;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;ZZLandroidx/compose/ui/text/TextStyle;Landroidx/compose/foundation/text/KeyboardOptions;Landroidx/compose/foundation/text/KeyboardActions;ZILandroidx/compose/ui/text/input/VisualTransformation;Lkotlin/jvm/functions/Function1;Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/ui/graphics/Brush;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;III)V",
        "minLines",
        "(Landroidx/compose/ui/text/input/TextFieldValue;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;ZZLandroidx/compose/ui/text/TextStyle;Landroidx/compose/foundation/text/KeyboardOptions;Landroidx/compose/foundation/text/KeyboardActions;ZIILandroidx/compose/ui/text/input/VisualTransformation;Lkotlin/jvm/functions/Function1;Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/ui/graphics/Brush;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;III)V",
        "",
        "(Ljava/lang/String;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;ZZLandroidx/compose/ui/text/TextStyle;Landroidx/compose/foundation/text/KeyboardOptions;Landroidx/compose/foundation/text/KeyboardActions;ZILandroidx/compose/ui/text/input/VisualTransformation;Lkotlin/jvm/functions/Function1;Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/ui/graphics/Brush;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;III)V",
        "(Ljava/lang/String;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;ZZLandroidx/compose/ui/text/TextStyle;Landroidx/compose/foundation/text/KeyboardOptions;Landroidx/compose/foundation/text/KeyboardActions;ZIILandroidx/compose/ui/text/input/VisualTransformation;Lkotlin/jvm/functions/Function1;Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/ui/graphics/Brush;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;III)V",
        "foundation_release",
        "textFieldValueState",
        "lastTextValue"
    }
    k = 0x2
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static final BasicTextField(Landroidx/compose/ui/text/input/TextFieldValue;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;ZZLandroidx/compose/ui/text/TextStyle;Landroidx/compose/foundation/text/KeyboardOptions;Landroidx/compose/foundation/text/KeyboardActions;ZIILandroidx/compose/ui/text/input/VisualTransformation;Lkotlin/jvm/functions/Function1;Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/ui/graphics/Brush;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;III)V
    .locals 36
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/text/input/TextFieldValue;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/compose/ui/text/input/TextFieldValue;",
            "Lkotlin/Unit;",
            ">;",
            "Landroidx/compose/ui/Modifier;",
            "ZZ",
            "Landroidx/compose/ui/text/TextStyle;",
            "Landroidx/compose/foundation/text/KeyboardOptions;",
            "Landroidx/compose/foundation/text/KeyboardActions;",
            "ZII",
            "Landroidx/compose/ui/text/input/VisualTransformation;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/compose/ui/text/TextLayoutResult;",
            "Lkotlin/Unit;",
            ">;",
            "Landroidx/compose/foundation/interaction/MutableInteractionSource;",
            "Landroidx/compose/ui/graphics/Brush;",
            "Lkotlin/jvm/functions/Function3<",
            "-",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;",
            "Landroidx/compose/runtime/Composer;",
            "III)V"
        }
    .end annotation

    move-object/from16 v15, p0

    move-object/from16 v14, p1

    move/from16 v13, p17

    move/from16 v12, p18

    move/from16 v11, p19

    const-string/jumbo v0, "value"

    invoke-static {v15, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onValueChange"

    invoke-static {v14, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const v0, 0x6b8eb362

    move-object/from16 v1, p16

    .line 287
    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object v10

    const-string v1, "C(BasicTextField)P(14,10,8,2,11,13,5,4,12,6,7,15,9,3)282@16342L39,289@16644L90,287@16582L740:BasicTextField.kt#423gt5"

    invoke-static {v10, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    and-int/lit8 v1, v11, 0x1

    if-eqz v1, :cond_0

    or-int/lit8 v1, v13, 0x6

    goto :goto_1

    :cond_0
    and-int/lit8 v1, v13, 0xe

    if-nez v1, :cond_2

    invoke-interface {v10, v15}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x4

    goto :goto_0

    :cond_1
    const/4 v1, 0x2

    :goto_0
    or-int/2addr v1, v13

    goto :goto_1

    :cond_2
    move v1, v13

    :goto_1
    and-int/lit8 v4, v11, 0x2

    if-eqz v4, :cond_3

    or-int/lit8 v1, v1, 0x30

    goto :goto_3

    :cond_3
    and-int/lit8 v4, v13, 0x70

    if-nez v4, :cond_5

    invoke-interface {v10, v14}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    const/16 v4, 0x20

    goto :goto_2

    :cond_4
    const/16 v4, 0x10

    :goto_2
    or-int/2addr v1, v4

    :cond_5
    :goto_3
    and-int/lit8 v4, v11, 0x4

    if-eqz v4, :cond_6

    or-int/lit16 v1, v1, 0x180

    goto :goto_5

    :cond_6
    and-int/lit16 v9, v13, 0x380

    if-nez v9, :cond_8

    move-object/from16 v9, p2

    invoke-interface {v10, v9}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_7

    const/16 v16, 0x100

    goto :goto_4

    :cond_7
    const/16 v16, 0x80

    :goto_4
    or-int v1, v1, v16

    goto :goto_6

    :cond_8
    :goto_5
    move-object/from16 v9, p2

    :goto_6
    and-int/lit8 v16, v11, 0x8

    const/16 v17, 0x800

    const/16 v18, 0x400

    if-eqz v16, :cond_9

    or-int/lit16 v1, v1, 0xc00

    goto :goto_8

    :cond_9
    and-int/lit16 v2, v13, 0x1c00

    if-nez v2, :cond_b

    move/from16 v2, p3

    invoke-interface {v10, v2}, Landroidx/compose/runtime/Composer;->changed(Z)Z

    move-result v19

    if-eqz v19, :cond_a

    move/from16 v19, v17

    goto :goto_7

    :cond_a
    move/from16 v19, v18

    :goto_7
    or-int v1, v1, v19

    goto :goto_9

    :cond_b
    :goto_8
    move/from16 v2, p3

    :goto_9
    and-int/lit8 v19, v11, 0x10

    const/16 v20, 0x4000

    const/16 v21, 0x2000

    const v22, 0xe000

    if-eqz v19, :cond_c

    or-int/lit16 v1, v1, 0x6000

    move/from16 v3, p4

    goto :goto_b

    :cond_c
    and-int v23, v13, v22

    move/from16 v3, p4

    if-nez v23, :cond_e

    invoke-interface {v10, v3}, Landroidx/compose/runtime/Composer;->changed(Z)Z

    move-result v24

    if-eqz v24, :cond_d

    move/from16 v24, v20

    goto :goto_a

    :cond_d
    move/from16 v24, v21

    :goto_a
    or-int v1, v1, v24

    :cond_e
    :goto_b
    and-int/lit8 v24, v11, 0x20

    const/high16 v25, 0x70000

    if-eqz v24, :cond_f

    const/high16 v26, 0x30000

    or-int v1, v1, v26

    move-object/from16 v5, p5

    goto :goto_d

    :cond_f
    and-int v26, v13, v25

    move-object/from16 v5, p5

    if-nez v26, :cond_11

    invoke-interface {v10, v5}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_10

    const/high16 v27, 0x20000

    goto :goto_c

    :cond_10
    const/high16 v27, 0x10000

    :goto_c
    or-int v1, v1, v27

    :cond_11
    :goto_d
    and-int/lit8 v27, v11, 0x40

    if-eqz v27, :cond_12

    const/high16 v28, 0x180000

    or-int v1, v1, v28

    move-object/from16 v6, p6

    goto :goto_f

    :cond_12
    const/high16 v28, 0x380000

    and-int v28, v13, v28

    move-object/from16 v6, p6

    if-nez v28, :cond_14

    invoke-interface {v10, v6}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_13

    const/high16 v29, 0x100000

    goto :goto_e

    :cond_13
    const/high16 v29, 0x80000

    :goto_e
    or-int v1, v1, v29

    :cond_14
    :goto_f
    and-int/lit16 v7, v11, 0x80

    if-eqz v7, :cond_15

    const/high16 v30, 0xc00000

    or-int v1, v1, v30

    move-object/from16 v8, p7

    goto :goto_11

    :cond_15
    const/high16 v30, 0x1c00000

    and-int v30, v13, v30

    move-object/from16 v8, p7

    if-nez v30, :cond_17

    invoke-interface {v10, v8}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v31

    if-eqz v31, :cond_16

    const/high16 v31, 0x800000

    goto :goto_10

    :cond_16
    const/high16 v31, 0x400000

    :goto_10
    or-int v1, v1, v31

    :cond_17
    :goto_11
    and-int/lit16 v0, v11, 0x100

    if-eqz v0, :cond_18

    const/high16 v32, 0x6000000

    or-int v1, v1, v32

    move/from16 v2, p8

    goto :goto_13

    :cond_18
    const/high16 v32, 0xe000000

    and-int v32, v13, v32

    move/from16 v2, p8

    if-nez v32, :cond_1a

    invoke-interface {v10, v2}, Landroidx/compose/runtime/Composer;->changed(Z)Z

    move-result v32

    if-eqz v32, :cond_19

    const/high16 v32, 0x4000000

    goto :goto_12

    :cond_19
    const/high16 v32, 0x2000000

    :goto_12
    or-int v1, v1, v32

    :cond_1a
    :goto_13
    const/high16 v32, 0x70000000

    and-int v32, v13, v32

    if-nez v32, :cond_1d

    and-int/lit16 v2, v11, 0x200

    if-nez v2, :cond_1b

    move/from16 v2, p9

    invoke-interface {v10, v2}, Landroidx/compose/runtime/Composer;->changed(I)Z

    move-result v32

    if-eqz v32, :cond_1c

    const/high16 v32, 0x20000000

    goto :goto_14

    :cond_1b
    move/from16 v2, p9

    :cond_1c
    const/high16 v32, 0x10000000

    :goto_14
    or-int v1, v1, v32

    goto :goto_15

    :cond_1d
    move/from16 v2, p9

    :goto_15
    and-int/lit16 v2, v11, 0x400

    if-eqz v2, :cond_1e

    or-int/lit8 v23, v12, 0x6

    move/from16 v3, p10

    goto :goto_17

    :cond_1e
    and-int/lit8 v32, v12, 0xe

    move/from16 v3, p10

    if-nez v32, :cond_20

    invoke-interface {v10, v3}, Landroidx/compose/runtime/Composer;->changed(I)Z

    move-result v32

    if-eqz v32, :cond_1f

    const/16 v23, 0x4

    goto :goto_16

    :cond_1f
    const/16 v23, 0x2

    :goto_16
    or-int v23, v12, v23

    goto :goto_17

    :cond_20
    move/from16 v23, v12

    :goto_17
    and-int/lit16 v3, v11, 0x800

    if-eqz v3, :cond_21

    or-int/lit8 v23, v23, 0x30

    goto :goto_19

    :cond_21
    and-int/lit8 v32, v12, 0x70

    move-object/from16 v5, p11

    if-nez v32, :cond_23

    invoke-interface {v10, v5}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v32

    if-eqz v32, :cond_22

    const/16 v28, 0x20

    goto :goto_18

    :cond_22
    const/16 v28, 0x10

    :goto_18
    or-int v23, v23, v28

    :cond_23
    :goto_19
    move/from16 v5, v23

    and-int/lit16 v6, v11, 0x1000

    if-eqz v6, :cond_24

    or-int/lit16 v5, v5, 0x180

    goto :goto_1b

    :cond_24
    and-int/lit16 v8, v12, 0x380

    if-nez v8, :cond_26

    move-object/from16 v8, p12

    invoke-interface {v10, v8}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_25

    const/16 v29, 0x100

    goto :goto_1a

    :cond_25
    const/16 v29, 0x80

    :goto_1a
    or-int v5, v5, v29

    goto :goto_1c

    :cond_26
    :goto_1b
    move-object/from16 v8, p12

    :goto_1c
    and-int/lit16 v8, v11, 0x2000

    if-eqz v8, :cond_27

    or-int/lit16 v5, v5, 0xc00

    goto :goto_1e

    :cond_27
    and-int/lit16 v9, v12, 0x1c00

    if-nez v9, :cond_29

    move-object/from16 v9, p13

    invoke-interface {v10, v9}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_28

    goto :goto_1d

    :cond_28
    move/from16 v17, v18

    :goto_1d
    or-int v5, v5, v17

    goto :goto_1f

    :cond_29
    :goto_1e
    move-object/from16 v9, p13

    :goto_1f
    and-int/lit16 v9, v11, 0x4000

    if-eqz v9, :cond_2a

    or-int/lit16 v5, v5, 0x6000

    move-object/from16 v14, p14

    goto :goto_21

    :cond_2a
    and-int v17, v12, v22

    move-object/from16 v14, p14

    if-nez v17, :cond_2c

    invoke-interface {v10, v14}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_2b

    goto :goto_20

    :cond_2b
    move/from16 v20, v21

    :goto_20
    or-int v5, v5, v20

    :cond_2c
    :goto_21
    const v17, 0x8000

    and-int v17, v11, v17

    if-eqz v17, :cond_2d

    const/high16 v18, 0x30000

    or-int v5, v5, v18

    move-object/from16 v12, p15

    goto :goto_23

    :cond_2d
    and-int v18, v12, v25

    move-object/from16 v12, p15

    if-nez v18, :cond_2f

    invoke-interface {v10, v12}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_2e

    const/high16 v18, 0x20000

    goto :goto_22

    :cond_2e
    const/high16 v18, 0x10000

    :goto_22
    or-int v5, v5, v18

    :cond_2f
    :goto_23
    const v18, 0x5b6db6db

    and-int v12, v1, v18

    const v14, 0x12492492

    if-ne v12, v14, :cond_31

    const v12, 0x5b6db

    and-int/2addr v12, v5

    const v14, 0x12492

    if-ne v12, v14, :cond_31

    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result v12

    if-nez v12, :cond_30

    goto :goto_24

    .line 310
    :cond_30
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    move-object/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move/from16 v9, p8

    move/from16 v11, p10

    move-object/from16 v12, p11

    move-object/from16 v13, p12

    move-object/from16 v14, p13

    move-object/from16 v15, p14

    move-object/from16 v16, p15

    move-object/from16 v22, v10

    move/from16 v10, p9

    goto/16 :goto_38

    .line 287
    :cond_31
    :goto_24
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->startDefaults()V

    and-int/lit8 v12, v13, 0x1

    if-eqz v12, :cond_34

    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->getDefaultsInvalid()Z

    move-result v12

    if-eqz v12, :cond_32

    goto :goto_25

    .line 284
    :cond_32
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    and-int/lit16 v0, v11, 0x200

    if-eqz v0, :cond_33

    const v0, -0x70000001

    and-int/2addr v1, v0

    :cond_33
    move-object/from16 v20, p2

    move/from16 v21, p3

    move/from16 v23, p4

    move-object/from16 v24, p5

    move-object/from16 v14, p6

    move-object/from16 v26, p7

    move/from16 v12, p8

    move/from16 v27, p9

    move/from16 v28, p10

    move-object/from16 v29, p11

    move-object/from16 v30, p12

    move-object/from16 v32, p13

    move-object/from16 v33, p14

    move-object/from16 v34, p15

    move v0, v1

    goto/16 :goto_35

    :cond_34
    :goto_25
    if-eqz v4, :cond_35

    .line 272
    sget-object v4, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v4, Landroidx/compose/ui/Modifier;

    goto :goto_26

    :cond_35
    move-object/from16 v4, p2

    :goto_26
    if-eqz v16, :cond_36

    const/4 v12, 0x1

    goto :goto_27

    :cond_36
    move/from16 v12, p3

    :goto_27
    if-eqz v19, :cond_37

    const/16 v16, 0x0

    goto :goto_28

    :cond_37
    move/from16 v16, p4

    :goto_28
    if-eqz v24, :cond_38

    .line 275
    sget-object v18, Landroidx/compose/ui/text/TextStyle;->Companion:Landroidx/compose/ui/text/TextStyle$Companion;

    invoke-virtual/range {v18 .. v18}, Landroidx/compose/ui/text/TextStyle$Companion;->getDefault()Landroidx/compose/ui/text/TextStyle;

    move-result-object v18

    goto :goto_29

    :cond_38
    move-object/from16 v18, p5

    :goto_29
    if-eqz v27, :cond_39

    .line 276
    sget-object v19, Landroidx/compose/foundation/text/KeyboardOptions;->Companion:Landroidx/compose/foundation/text/KeyboardOptions$Companion;

    invoke-virtual/range {v19 .. v19}, Landroidx/compose/foundation/text/KeyboardOptions$Companion;->getDefault()Landroidx/compose/foundation/text/KeyboardOptions;

    move-result-object v19

    goto :goto_2a

    :cond_39
    move-object/from16 v19, p6

    :goto_2a
    if-eqz v7, :cond_3a

    .line 277
    sget-object v7, Landroidx/compose/foundation/text/KeyboardActions;->Companion:Landroidx/compose/foundation/text/KeyboardActions$Companion;

    invoke-virtual {v7}, Landroidx/compose/foundation/text/KeyboardActions$Companion;->getDefault()Landroidx/compose/foundation/text/KeyboardActions;

    move-result-object v7

    goto :goto_2b

    :cond_3a
    move-object/from16 v7, p7

    :goto_2b
    if-eqz v0, :cond_3b

    const/4 v0, 0x0

    goto :goto_2c

    :cond_3b
    move/from16 v0, p8

    :goto_2c
    and-int/lit16 v14, v11, 0x200

    if-eqz v14, :cond_3d

    if-eqz v0, :cond_3c

    const/4 v14, 0x1

    goto :goto_2d

    :cond_3c
    const v14, 0x7fffffff

    :goto_2d
    const v20, -0x70000001

    and-int v1, v1, v20

    goto :goto_2e

    :cond_3d
    move/from16 v14, p9

    :goto_2e
    if-eqz v2, :cond_3e

    const/4 v2, 0x1

    goto :goto_2f

    :cond_3e
    move/from16 v2, p10

    :goto_2f
    if-eqz v3, :cond_3f

    .line 281
    sget-object v3, Landroidx/compose/ui/text/input/VisualTransformation;->Companion:Landroidx/compose/ui/text/input/VisualTransformation$Companion;

    invoke-virtual {v3}, Landroidx/compose/ui/text/input/VisualTransformation$Companion;->getNone()Landroidx/compose/ui/text/input/VisualTransformation;

    move-result-object v3

    goto :goto_30

    :cond_3f
    move-object/from16 v3, p11

    :goto_30
    if-eqz v6, :cond_40

    .line 282
    sget-object v6, Landroidx/compose/foundation/text/BasicTextFieldKt$BasicTextField$6;->INSTANCE:Landroidx/compose/foundation/text/BasicTextFieldKt$BasicTextField$6;

    check-cast v6, Lkotlin/jvm/functions/Function1;

    goto :goto_31

    :cond_40
    move-object/from16 v6, p12

    :goto_31
    if-eqz v8, :cond_42

    const v8, -0x1d58f75c

    .line 283
    invoke-interface {v10, v8}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v8, "CC(remember):Composables.kt#9igjgp"

    invoke-static {v10, v8}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 431
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v8

    .line 432
    sget-object v20, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    move/from16 p2, v0

    invoke-virtual/range {v20 .. v20}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v0

    if-ne v8, v0, :cond_41

    .line 283
    invoke-static {}, Landroidx/compose/foundation/interaction/InteractionSourceKt;->MutableInteractionSource()Landroidx/compose/foundation/interaction/MutableInteractionSource;

    move-result-object v8

    .line 434
    invoke-interface {v10, v8}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 430
    :cond_41
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    move-object v0, v8

    check-cast v0, Landroidx/compose/foundation/interaction/MutableInteractionSource;

    goto :goto_32

    :cond_42
    move/from16 p2, v0

    move-object/from16 v0, p13

    :goto_32
    if-eqz v9, :cond_43

    .line 284
    new-instance v8, Landroidx/compose/ui/graphics/SolidColor;

    sget-object v9, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    move-object/from16 p4, v0

    move/from16 p3, v1

    invoke-virtual {v9}, Landroidx/compose/ui/graphics/Color$Companion;->getBlack-0d7_KjU()J

    move-result-wide v0

    const/4 v9, 0x0

    invoke-direct {v8, v0, v1, v9}, Landroidx/compose/ui/graphics/SolidColor;-><init>(JLkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object v0, v8

    check-cast v0, Landroidx/compose/ui/graphics/Brush;

    goto :goto_33

    :cond_43
    move-object/from16 p4, v0

    move/from16 p3, v1

    move-object/from16 v0, p14

    :goto_33
    if-eqz v17, :cond_44

    sget-object v1, Landroidx/compose/foundation/text/ComposableSingletons$BasicTextFieldKt;->INSTANCE:Landroidx/compose/foundation/text/ComposableSingletons$BasicTextFieldKt;

    invoke-virtual {v1}, Landroidx/compose/foundation/text/ComposableSingletons$BasicTextFieldKt;->getLambda-2$foundation_release()Lkotlin/jvm/functions/Function3;

    move-result-object v1

    move-object/from16 v32, p4

    move-object/from16 v33, v0

    move-object/from16 v34, v1

    goto :goto_34

    :cond_44
    move-object/from16 v32, p4

    move-object/from16 v34, p15

    move-object/from16 v33, v0

    :goto_34
    move/from16 v28, v2

    move-object/from16 v29, v3

    move-object/from16 v20, v4

    move-object/from16 v30, v6

    move-object/from16 v26, v7

    move/from16 v21, v12

    move/from16 v27, v14

    move/from16 v23, v16

    move-object/from16 v24, v18

    move-object/from16 v14, v19

    move/from16 v12, p2

    move/from16 v0, p3

    :goto_35
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->endDefaults()V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v1

    if-eqz v1, :cond_45

    const-string v1, "androidx.compose.foundation.text.BasicTextField (BasicTextField.kt:268)"

    const v2, 0x6b8eb362

    .line 287
    invoke-static {v2, v0, v5, v1}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 301
    :cond_45
    invoke-virtual {v14, v12}, Landroidx/compose/foundation/text/KeyboardOptions;->toImeOptions$foundation_release(Z)Landroidx/compose/ui/text/input/ImeOptions;

    move-result-object v16

    xor-int/lit8 v8, v12, 0x1

    if-eqz v12, :cond_46

    const/16 v31, 0x1

    goto :goto_36

    :cond_46
    move/from16 v31, v28

    :goto_36
    if-eqz v12, :cond_47

    const/4 v9, 0x1

    goto :goto_37

    :cond_47
    move/from16 v9, v27

    :goto_37
    and-int/lit8 v2, v0, 0xe

    const v1, 0x1e7b2b64

    .line 290
    invoke-interface {v10, v1}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v1, "CC(remember)P(1,2):Composables.kt#9igjgp"

    invoke-static {v10, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 437
    invoke-interface {v10, v15}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v1

    move-object/from16 v7, p1

    invoke-interface {v10, v7}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v3

    or-int/2addr v1, v3

    .line 439
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v3

    if-nez v1, :cond_48

    .line 440
    sget-object v1, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v1}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v1

    if-ne v3, v1, :cond_49

    .line 290
    :cond_48
    new-instance v1, Landroidx/compose/foundation/text/BasicTextFieldKt$BasicTextField$8$1;

    invoke-direct {v1, v15, v7}, Landroidx/compose/foundation/text/BasicTextFieldKt$BasicTextField$8$1;-><init>(Landroidx/compose/ui/text/input/TextFieldValue;Lkotlin/jvm/functions/Function1;)V

    move-object v3, v1

    check-cast v3, Lkotlin/jvm/functions/Function1;

    .line 442
    invoke-interface {v10, v3}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 438
    :cond_49
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    move-object v1, v3

    check-cast v1, Lkotlin/jvm/functions/Function1;

    and-int/lit16 v3, v0, 0x380

    or-int/2addr v2, v3

    shr-int/lit8 v3, v0, 0x6

    and-int/lit16 v3, v3, 0x1c00

    or-int/2addr v2, v3

    shl-int/lit8 v3, v5, 0x9

    and-int v4, v3, v22

    or-int/2addr v2, v4

    and-int v4, v3, v25

    or-int/2addr v2, v4

    const/high16 v4, 0x380000

    and-int/2addr v4, v3

    or-int/2addr v2, v4

    const/high16 v4, 0x1c00000

    and-int/2addr v3, v4

    or-int v17, v2, v3

    shr-int/lit8 v2, v0, 0xf

    and-int/lit16 v2, v2, 0x380

    and-int/lit16 v3, v0, 0x1c00

    or-int/2addr v2, v3

    and-int v0, v0, v22

    or-int/2addr v0, v2

    and-int v2, v5, v25

    or-int v18, v0, v2

    const/16 v19, 0x0

    move-object/from16 v0, p0

    move-object/from16 v2, v20

    move-object/from16 v3, v24

    move-object/from16 v4, v29

    move-object/from16 v5, v30

    move-object/from16 v6, v32

    move-object/from16 v7, v33

    move-object/from16 v22, v10

    move/from16 v10, v31

    move-object/from16 v11, v16

    move/from16 v25, v12

    move-object/from16 v12, v26

    move/from16 v13, v21

    move-object/from16 v31, v14

    move/from16 v14, v23

    move-object/from16 v15, v34

    move-object/from16 v16, v22

    .line 288
    invoke-static/range {v0 .. v19}, Landroidx/compose/foundation/text/CoreTextFieldKt;->CoreTextField(Landroidx/compose/ui/text/input/TextFieldValue;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/text/input/VisualTransformation;Lkotlin/jvm/functions/Function1;Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/ui/graphics/Brush;ZIILandroidx/compose/ui/text/input/ImeOptions;Landroidx/compose/foundation/text/KeyboardActions;ZZLkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;III)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_4a

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_4a
    move-object/from16 v3, v20

    move/from16 v4, v21

    move/from16 v5, v23

    move-object/from16 v6, v24

    move/from16 v9, v25

    move-object/from16 v8, v26

    move/from16 v10, v27

    move/from16 v11, v28

    move-object/from16 v12, v29

    move-object/from16 v13, v30

    move-object/from16 v7, v31

    move-object/from16 v14, v32

    move-object/from16 v15, v33

    move-object/from16 v16, v34

    .line 310
    :goto_38
    invoke-interface/range {v22 .. v22}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v2

    if-nez v2, :cond_4b

    goto :goto_39

    :cond_4b
    new-instance v20, Landroidx/compose/foundation/text/BasicTextFieldKt$BasicTextField$9;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    move-object/from16 v35, v2

    move-object/from16 v2, p1

    move/from16 v17, p17

    move/from16 v18, p18

    move/from16 v19, p19

    invoke-direct/range {v0 .. v19}, Landroidx/compose/foundation/text/BasicTextFieldKt$BasicTextField$9;-><init>(Landroidx/compose/ui/text/input/TextFieldValue;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;ZZLandroidx/compose/ui/text/TextStyle;Landroidx/compose/foundation/text/KeyboardOptions;Landroidx/compose/foundation/text/KeyboardActions;ZIILandroidx/compose/ui/text/input/VisualTransformation;Lkotlin/jvm/functions/Function1;Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/ui/graphics/Brush;Lkotlin/jvm/functions/Function3;III)V

    move-object/from16 v0, v20

    check-cast v0, Lkotlin/jvm/functions/Function2;

    move-object/from16 v1, v35

    invoke-interface {v1, v0}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    :goto_39
    return-void
.end method

.method public static final synthetic BasicTextField(Landroidx/compose/ui/text/input/TextFieldValue;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;ZZLandroidx/compose/ui/text/TextStyle;Landroidx/compose/foundation/text/KeyboardOptions;Landroidx/compose/foundation/text/KeyboardActions;ZILandroidx/compose/ui/text/input/VisualTransformation;Lkotlin/jvm/functions/Function1;Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/ui/graphics/Brush;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;III)V
    .locals 37
    .annotation runtime Lkotlin/Deprecated;
        level = .enum Lkotlin/DeprecationLevel;->HIDDEN:Lkotlin/DeprecationLevel;
        message = "Maintained for binary compatibility"
    .end annotation

    move-object/from16 v15, p0

    move-object/from16 v14, p1

    move/from16 v13, p16

    move/from16 v12, p17

    move/from16 v11, p18

    const-string/jumbo v0, "value"

    invoke-static {v15, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onValueChange"

    invoke-static {v14, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const v0, -0x2168495b

    move-object/from16 v1, p15

    .line 371
    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object v9

    const-string v1, "C(BasicTextField)P(13,9,7,2,10,12,5,4,11,6,14,8,3)366@19537L39,371@19777L579:BasicTextField.kt#423gt5"

    invoke-static {v9, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    and-int/lit8 v1, v11, 0x1

    if-eqz v1, :cond_0

    or-int/lit8 v1, v13, 0x6

    goto :goto_1

    :cond_0
    and-int/lit8 v1, v13, 0xe

    if-nez v1, :cond_2

    invoke-interface {v9, v15}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x4

    goto :goto_0

    :cond_1
    const/4 v1, 0x2

    :goto_0
    or-int/2addr v1, v13

    goto :goto_1

    :cond_2
    move v1, v13

    :goto_1
    and-int/lit8 v4, v11, 0x2

    if-eqz v4, :cond_3

    or-int/lit8 v1, v1, 0x30

    goto :goto_3

    :cond_3
    and-int/lit8 v4, v13, 0x70

    if-nez v4, :cond_5

    invoke-interface {v9, v14}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    const/16 v4, 0x20

    goto :goto_2

    :cond_4
    const/16 v4, 0x10

    :goto_2
    or-int/2addr v1, v4

    :cond_5
    :goto_3
    and-int/lit8 v4, v11, 0x4

    if-eqz v4, :cond_6

    or-int/lit16 v1, v1, 0x180

    goto :goto_5

    :cond_6
    and-int/lit16 v10, v13, 0x380

    if-nez v10, :cond_8

    move-object/from16 v10, p2

    invoke-interface {v9, v10}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_7

    const/16 v16, 0x100

    goto :goto_4

    :cond_7
    const/16 v16, 0x80

    :goto_4
    or-int v1, v1, v16

    goto :goto_6

    :cond_8
    :goto_5
    move-object/from16 v10, p2

    :goto_6
    and-int/lit8 v16, v11, 0x8

    const/16 v17, 0x800

    const/16 v18, 0x400

    if-eqz v16, :cond_9

    or-int/lit16 v1, v1, 0xc00

    goto :goto_8

    :cond_9
    and-int/lit16 v2, v13, 0x1c00

    if-nez v2, :cond_b

    move/from16 v2, p3

    invoke-interface {v9, v2}, Landroidx/compose/runtime/Composer;->changed(Z)Z

    move-result v19

    if-eqz v19, :cond_a

    move/from16 v19, v17

    goto :goto_7

    :cond_a
    move/from16 v19, v18

    :goto_7
    or-int v1, v1, v19

    goto :goto_9

    :cond_b
    :goto_8
    move/from16 v2, p3

    :goto_9
    and-int/lit8 v19, v11, 0x10

    const/16 v20, 0x4000

    const/16 v21, 0x2000

    const v22, 0xe000

    if-eqz v19, :cond_c

    or-int/lit16 v1, v1, 0x6000

    move/from16 v3, p4

    goto :goto_b

    :cond_c
    and-int v23, v13, v22

    move/from16 v3, p4

    if-nez v23, :cond_e

    invoke-interface {v9, v3}, Landroidx/compose/runtime/Composer;->changed(Z)Z

    move-result v24

    if-eqz v24, :cond_d

    move/from16 v24, v20

    goto :goto_a

    :cond_d
    move/from16 v24, v21

    :goto_a
    or-int v1, v1, v24

    :cond_e
    :goto_b
    and-int/lit8 v24, v11, 0x20

    const/high16 v25, 0x70000

    if-eqz v24, :cond_f

    const/high16 v26, 0x30000

    or-int v1, v1, v26

    move-object/from16 v5, p5

    goto :goto_d

    :cond_f
    and-int v26, v13, v25

    move-object/from16 v5, p5

    if-nez v26, :cond_11

    invoke-interface {v9, v5}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_10

    const/high16 v27, 0x20000

    goto :goto_c

    :cond_10
    const/high16 v27, 0x10000

    :goto_c
    or-int v1, v1, v27

    :cond_11
    :goto_d
    and-int/lit8 v27, v11, 0x40

    if-eqz v27, :cond_12

    const/high16 v28, 0x180000

    or-int v1, v1, v28

    move-object/from16 v6, p6

    goto :goto_f

    :cond_12
    const/high16 v28, 0x380000

    and-int v28, v13, v28

    move-object/from16 v6, p6

    if-nez v28, :cond_14

    invoke-interface {v9, v6}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_13

    const/high16 v29, 0x100000

    goto :goto_e

    :cond_13
    const/high16 v29, 0x80000

    :goto_e
    or-int v1, v1, v29

    :cond_14
    :goto_f
    and-int/lit16 v7, v11, 0x80

    if-eqz v7, :cond_15

    const/high16 v30, 0xc00000

    or-int v1, v1, v30

    move-object/from16 v8, p7

    goto :goto_11

    :cond_15
    const/high16 v30, 0x1c00000

    and-int v30, v13, v30

    move-object/from16 v8, p7

    if-nez v30, :cond_17

    invoke-interface {v9, v8}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v31

    if-eqz v31, :cond_16

    const/high16 v31, 0x800000

    goto :goto_10

    :cond_16
    const/high16 v31, 0x400000

    :goto_10
    or-int v1, v1, v31

    :cond_17
    :goto_11
    and-int/lit16 v0, v11, 0x100

    if-eqz v0, :cond_18

    const/high16 v32, 0x6000000

    or-int v1, v1, v32

    move/from16 v2, p8

    goto :goto_13

    :cond_18
    const/high16 v32, 0xe000000

    and-int v32, v13, v32

    move/from16 v2, p8

    if-nez v32, :cond_1a

    invoke-interface {v9, v2}, Landroidx/compose/runtime/Composer;->changed(Z)Z

    move-result v32

    if-eqz v32, :cond_19

    const/high16 v32, 0x4000000

    goto :goto_12

    :cond_19
    const/high16 v32, 0x2000000

    :goto_12
    or-int v1, v1, v32

    :cond_1a
    :goto_13
    and-int/lit16 v2, v11, 0x200

    if-eqz v2, :cond_1b

    const/high16 v32, 0x30000000

    or-int v1, v1, v32

    move/from16 v3, p9

    goto :goto_15

    :cond_1b
    const/high16 v32, 0x70000000

    and-int v32, v13, v32

    move/from16 v3, p9

    if-nez v32, :cond_1d

    invoke-interface {v9, v3}, Landroidx/compose/runtime/Composer;->changed(I)Z

    move-result v32

    if-eqz v32, :cond_1c

    const/high16 v32, 0x20000000

    goto :goto_14

    :cond_1c
    const/high16 v32, 0x10000000

    :goto_14
    or-int v1, v1, v32

    :cond_1d
    :goto_15
    and-int/lit16 v3, v11, 0x400

    if-eqz v3, :cond_1e

    or-int/lit8 v23, v12, 0x6

    move-object/from16 v5, p10

    goto :goto_17

    :cond_1e
    and-int/lit8 v32, v12, 0xe

    move-object/from16 v5, p10

    if-nez v32, :cond_20

    invoke-interface {v9, v5}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v32

    if-eqz v32, :cond_1f

    const/16 v23, 0x4

    goto :goto_16

    :cond_1f
    const/16 v23, 0x2

    :goto_16
    or-int v23, v12, v23

    goto :goto_17

    :cond_20
    move/from16 v23, v12

    :goto_17
    and-int/lit16 v5, v11, 0x800

    if-eqz v5, :cond_21

    or-int/lit8 v23, v23, 0x30

    goto :goto_19

    :cond_21
    and-int/lit8 v32, v12, 0x70

    move-object/from16 v6, p11

    if-nez v32, :cond_23

    invoke-interface {v9, v6}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v32

    if-eqz v32, :cond_22

    const/16 v26, 0x20

    goto :goto_18

    :cond_22
    const/16 v26, 0x10

    :goto_18
    or-int v23, v23, v26

    :cond_23
    :goto_19
    move/from16 v6, v23

    and-int/lit16 v8, v11, 0x1000

    if-eqz v8, :cond_24

    or-int/lit16 v6, v6, 0x180

    goto :goto_1b

    :cond_24
    and-int/lit16 v10, v12, 0x380

    if-nez v10, :cond_26

    move-object/from16 v10, p12

    invoke-interface {v9, v10}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_25

    const/16 v29, 0x100

    goto :goto_1a

    :cond_25
    const/16 v29, 0x80

    :goto_1a
    or-int v6, v6, v29

    goto :goto_1c

    :cond_26
    :goto_1b
    move-object/from16 v10, p12

    :goto_1c
    and-int/lit16 v10, v11, 0x2000

    if-eqz v10, :cond_27

    or-int/lit16 v6, v6, 0xc00

    goto :goto_1e

    :cond_27
    and-int/lit16 v13, v12, 0x1c00

    if-nez v13, :cond_29

    move-object/from16 v13, p13

    invoke-interface {v9, v13}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_28

    goto :goto_1d

    :cond_28
    move/from16 v17, v18

    :goto_1d
    or-int v6, v6, v17

    goto :goto_1f

    :cond_29
    :goto_1e
    move-object/from16 v13, p13

    :goto_1f
    and-int/lit16 v13, v11, 0x4000

    if-eqz v13, :cond_2a

    or-int/lit16 v6, v6, 0x6000

    move-object/from16 v11, p14

    goto :goto_21

    :cond_2a
    and-int v17, v12, v22

    move-object/from16 v11, p14

    if-nez v17, :cond_2c

    invoke-interface {v9, v11}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_2b

    goto :goto_20

    :cond_2b
    move/from16 v20, v21

    :goto_20
    or-int v6, v6, v20

    :cond_2c
    :goto_21
    const v17, 0x5b6db6db

    and-int v11, v1, v17

    const v12, 0x12492492

    if-ne v11, v12, :cond_2e

    const v11, 0xb6db

    and-int/2addr v11, v6

    const/16 v12, 0x2492

    if-ne v11, v12, :cond_2e

    invoke-interface {v9}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result v11

    if-nez v11, :cond_2d

    goto :goto_22

    .line 390
    :cond_2d
    invoke-interface {v9}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    move-object/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move/from16 v10, p9

    move-object/from16 v11, p10

    move-object/from16 v12, p11

    move-object/from16 v13, p12

    move-object/from16 v14, p13

    move-object/from16 v15, p14

    move-object/from16 v22, v9

    move/from16 v9, p8

    goto/16 :goto_30

    :cond_2e
    :goto_22
    if-eqz v4, :cond_2f

    .line 357
    sget-object v4, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v4, Landroidx/compose/ui/Modifier;

    move-object/from16 v20, v4

    goto :goto_23

    :cond_2f
    move-object/from16 v20, p2

    :goto_23
    if-eqz v16, :cond_30

    const/4 v4, 0x1

    move/from16 v21, v4

    goto :goto_24

    :cond_30
    move/from16 v21, p3

    :goto_24
    if-eqz v19, :cond_31

    const/4 v4, 0x0

    move/from16 v23, v4

    goto :goto_25

    :cond_31
    move/from16 v23, p4

    :goto_25
    if-eqz v24, :cond_32

    .line 360
    sget-object v4, Landroidx/compose/ui/text/TextStyle;->Companion:Landroidx/compose/ui/text/TextStyle$Companion;

    invoke-virtual {v4}, Landroidx/compose/ui/text/TextStyle$Companion;->getDefault()Landroidx/compose/ui/text/TextStyle;

    move-result-object v4

    move-object/from16 v24, v4

    goto :goto_26

    :cond_32
    move-object/from16 v24, p5

    :goto_26
    if-eqz v27, :cond_33

    .line 361
    sget-object v4, Landroidx/compose/foundation/text/KeyboardOptions;->Companion:Landroidx/compose/foundation/text/KeyboardOptions$Companion;

    invoke-virtual {v4}, Landroidx/compose/foundation/text/KeyboardOptions$Companion;->getDefault()Landroidx/compose/foundation/text/KeyboardOptions;

    move-result-object v4

    move-object/from16 v26, v4

    goto :goto_27

    :cond_33
    move-object/from16 v26, p6

    :goto_27
    if-eqz v7, :cond_34

    .line 362
    sget-object v4, Landroidx/compose/foundation/text/KeyboardActions;->Companion:Landroidx/compose/foundation/text/KeyboardActions$Companion;

    invoke-virtual {v4}, Landroidx/compose/foundation/text/KeyboardActions$Companion;->getDefault()Landroidx/compose/foundation/text/KeyboardActions;

    move-result-object v4

    move-object/from16 v27, v4

    goto :goto_28

    :cond_34
    move-object/from16 v27, p7

    :goto_28
    if-eqz v0, :cond_35

    const/4 v0, 0x0

    move/from16 v28, v0

    goto :goto_29

    :cond_35
    move/from16 v28, p8

    :goto_29
    if-eqz v2, :cond_36

    const v0, 0x7fffffff

    move/from16 v29, v0

    goto :goto_2a

    :cond_36
    move/from16 v29, p9

    :goto_2a
    if-eqz v3, :cond_37

    .line 365
    sget-object v0, Landroidx/compose/ui/text/input/VisualTransformation;->Companion:Landroidx/compose/ui/text/input/VisualTransformation$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/text/input/VisualTransformation$Companion;->getNone()Landroidx/compose/ui/text/input/VisualTransformation;

    move-result-object v0

    move-object/from16 v30, v0

    goto :goto_2b

    :cond_37
    move-object/from16 v30, p10

    :goto_2b
    if-eqz v5, :cond_38

    .line 366
    sget-object v0, Landroidx/compose/foundation/text/BasicTextFieldKt$BasicTextField$13;->INSTANCE:Landroidx/compose/foundation/text/BasicTextFieldKt$BasicTextField$13;

    check-cast v0, Lkotlin/jvm/functions/Function1;

    move-object/from16 v32, v0

    goto :goto_2c

    :cond_38
    move-object/from16 v32, p11

    :goto_2c
    if-eqz v8, :cond_3a

    const v0, -0x1d58f75c

    .line 367
    invoke-interface {v9, v0}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v0, "CC(remember):Composables.kt#9igjgp"

    invoke-static {v9, v0}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 453
    invoke-interface {v9}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v0

    .line 454
    sget-object v2, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v2}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v2

    if-ne v0, v2, :cond_39

    .line 367
    invoke-static {}, Landroidx/compose/foundation/interaction/InteractionSourceKt;->MutableInteractionSource()Landroidx/compose/foundation/interaction/MutableInteractionSource;

    move-result-object v0

    .line 456
    invoke-interface {v9, v0}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 452
    :cond_39
    invoke-interface {v9}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    check-cast v0, Landroidx/compose/foundation/interaction/MutableInteractionSource;

    move-object/from16 v33, v0

    goto :goto_2d

    :cond_3a
    move-object/from16 v33, p12

    :goto_2d
    if-eqz v10, :cond_3b

    .line 368
    new-instance v0, Landroidx/compose/ui/graphics/SolidColor;

    sget-object v2, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual {v2}, Landroidx/compose/ui/graphics/Color$Companion;->getBlack-0d7_KjU()J

    move-result-wide v2

    const/4 v4, 0x0

    invoke-direct {v0, v2, v3, v4}, Landroidx/compose/ui/graphics/SolidColor;-><init>(JLkotlin/jvm/internal/DefaultConstructorMarker;)V

    check-cast v0, Landroidx/compose/ui/graphics/Brush;

    move-object/from16 v34, v0

    goto :goto_2e

    :cond_3b
    move-object/from16 v34, p13

    :goto_2e
    if-eqz v13, :cond_3c

    sget-object v0, Landroidx/compose/foundation/text/ComposableSingletons$BasicTextFieldKt;->INSTANCE:Landroidx/compose/foundation/text/ComposableSingletons$BasicTextFieldKt;

    invoke-virtual {v0}, Landroidx/compose/foundation/text/ComposableSingletons$BasicTextFieldKt;->getLambda-4$foundation_release()Lkotlin/jvm/functions/Function3;

    move-result-object v0

    move-object/from16 v35, v0

    goto :goto_2f

    :cond_3c
    move-object/from16 v35, p14

    :goto_2f
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_3d

    const-string v0, "androidx.compose.foundation.text.BasicTextField (BasicTextField.kt:353)"

    const v2, -0x2168495b

    .line 371
    invoke-static {v2, v1, v6, v0}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_3d
    const/4 v10, 0x1

    and-int/lit8 v0, v1, 0xe

    and-int/lit8 v2, v1, 0x70

    or-int/2addr v0, v2

    and-int/lit16 v2, v1, 0x380

    or-int/2addr v0, v2

    and-int/lit16 v2, v1, 0x1c00

    or-int/2addr v0, v2

    and-int v2, v1, v22

    or-int/2addr v0, v2

    and-int v2, v1, v25

    or-int/2addr v0, v2

    const/high16 v2, 0x380000

    and-int/2addr v2, v1

    or-int/2addr v0, v2

    const/high16 v2, 0x1c00000

    and-int/2addr v2, v1

    or-int/2addr v0, v2

    const/high16 v2, 0xe000000

    and-int/2addr v2, v1

    or-int/2addr v0, v2

    const/high16 v2, 0x70000000

    and-int/2addr v1, v2

    or-int v17, v0, v1

    shl-int/lit8 v0, v6, 0x3

    and-int/lit8 v1, v0, 0x70

    or-int/lit8 v1, v1, 0x6

    and-int/lit16 v2, v0, 0x380

    or-int/2addr v1, v2

    and-int/lit16 v2, v0, 0x1c00

    or-int/2addr v1, v2

    and-int v2, v0, v22

    or-int/2addr v1, v2

    and-int v0, v0, v25

    or-int v18, v1, v0

    const/16 v19, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v20

    move/from16 v3, v21

    move/from16 v4, v23

    move-object/from16 v5, v24

    move-object/from16 v6, v26

    move-object/from16 v7, v27

    move/from16 v8, v28

    move-object/from16 v22, v9

    move/from16 v9, v29

    move-object/from16 v11, v30

    move-object/from16 v12, v32

    move-object/from16 v13, v33

    move-object/from16 v14, v34

    move-object/from16 v15, v35

    move-object/from16 v16, v22

    .line 372
    invoke-static/range {v0 .. v19}, Landroidx/compose/foundation/text/BasicTextFieldKt;->BasicTextField(Landroidx/compose/ui/text/input/TextFieldValue;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;ZZLandroidx/compose/ui/text/TextStyle;Landroidx/compose/foundation/text/KeyboardOptions;Landroidx/compose/foundation/text/KeyboardActions;ZIILandroidx/compose/ui/text/input/VisualTransformation;Lkotlin/jvm/functions/Function1;Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/ui/graphics/Brush;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;III)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_3e

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_3e
    move-object/from16 v3, v20

    move/from16 v4, v21

    move/from16 v5, v23

    move-object/from16 v6, v24

    move-object/from16 v7, v26

    move-object/from16 v8, v27

    move/from16 v9, v28

    move/from16 v10, v29

    move-object/from16 v11, v30

    move-object/from16 v12, v32

    move-object/from16 v13, v33

    move-object/from16 v14, v34

    move-object/from16 v15, v35

    .line 390
    :goto_30
    invoke-interface/range {v22 .. v22}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v2

    if-nez v2, :cond_3f

    goto :goto_31

    :cond_3f
    new-instance v19, Landroidx/compose/foundation/text/BasicTextFieldKt$BasicTextField$15;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    move-object/from16 v36, v2

    move-object/from16 v2, p1

    move/from16 v16, p16

    move/from16 v17, p17

    move/from16 v18, p18

    invoke-direct/range {v0 .. v18}, Landroidx/compose/foundation/text/BasicTextFieldKt$BasicTextField$15;-><init>(Landroidx/compose/ui/text/input/TextFieldValue;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;ZZLandroidx/compose/ui/text/TextStyle;Landroidx/compose/foundation/text/KeyboardOptions;Landroidx/compose/foundation/text/KeyboardActions;ZILandroidx/compose/ui/text/input/VisualTransformation;Lkotlin/jvm/functions/Function1;Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/ui/graphics/Brush;Lkotlin/jvm/functions/Function3;III)V

    move-object/from16 v0, v19

    check-cast v0, Lkotlin/jvm/functions/Function2;

    move-object/from16 v1, v36

    invoke-interface {v1, v0}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    :goto_31
    return-void
.end method

.method public static final BasicTextField(Ljava/lang/String;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;ZZLandroidx/compose/ui/text/TextStyle;Landroidx/compose/foundation/text/KeyboardOptions;Landroidx/compose/foundation/text/KeyboardActions;ZIILandroidx/compose/ui/text/input/VisualTransformation;Lkotlin/jvm/functions/Function1;Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/ui/graphics/Brush;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;III)V
    .locals 40
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;",
            "Landroidx/compose/ui/Modifier;",
            "ZZ",
            "Landroidx/compose/ui/text/TextStyle;",
            "Landroidx/compose/foundation/text/KeyboardOptions;",
            "Landroidx/compose/foundation/text/KeyboardActions;",
            "ZII",
            "Landroidx/compose/ui/text/input/VisualTransformation;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/compose/ui/text/TextLayoutResult;",
            "Lkotlin/Unit;",
            ">;",
            "Landroidx/compose/foundation/interaction/MutableInteractionSource;",
            "Landroidx/compose/ui/graphics/Brush;",
            "Lkotlin/jvm/functions/Function3<",
            "-",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;",
            "Landroidx/compose/runtime/Composer;",
            "III)V"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v15, p17

    move/from16 v14, p18

    move/from16 v13, p19

    const-string/jumbo v0, "value"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onValueChange"

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const v0, 0x3857730f

    move-object/from16 v3, p16

    .line 141
    invoke-interface {v3, v0}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object v3

    const-string v4, "C(BasicTextField)P(14,10,8,2,11,13,5,4,12,6,7,15,9,3)136@7932L39,143@8326L57,149@8679L216,149@8668L227,158@9216L41,162@9334L373,160@9263L1032:BasicTextField.kt#423gt5"

    invoke-static {v3, v4}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    and-int/lit8 v4, v13, 0x1

    if-eqz v4, :cond_0

    or-int/lit8 v4, v15, 0x6

    goto :goto_1

    :cond_0
    and-int/lit8 v4, v15, 0xe

    if-nez v4, :cond_2

    invoke-interface {v3, v1}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v4, 0x4

    goto :goto_0

    :cond_1
    const/4 v4, 0x2

    :goto_0
    or-int/2addr v4, v15

    goto :goto_1

    :cond_2
    move v4, v15

    :goto_1
    and-int/lit8 v7, v13, 0x2

    if-eqz v7, :cond_3

    or-int/lit8 v4, v4, 0x30

    goto :goto_3

    :cond_3
    and-int/lit8 v7, v15, 0x70

    if-nez v7, :cond_5

    invoke-interface {v3, v2}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    const/16 v7, 0x20

    goto :goto_2

    :cond_4
    const/16 v7, 0x10

    :goto_2
    or-int/2addr v4, v7

    :cond_5
    :goto_3
    and-int/lit8 v7, v13, 0x4

    if-eqz v7, :cond_6

    or-int/lit16 v4, v4, 0x180

    goto :goto_5

    :cond_6
    and-int/lit16 v12, v15, 0x380

    if-nez v12, :cond_8

    move-object/from16 v12, p2

    invoke-interface {v3, v12}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_7

    const/16 v16, 0x100

    goto :goto_4

    :cond_7
    const/16 v16, 0x80

    :goto_4
    or-int v4, v4, v16

    goto :goto_6

    :cond_8
    :goto_5
    move-object/from16 v12, p2

    :goto_6
    and-int/lit8 v16, v13, 0x8

    const/16 v17, 0x800

    const/16 v18, 0x400

    if-eqz v16, :cond_9

    or-int/lit16 v4, v4, 0xc00

    goto :goto_8

    :cond_9
    and-int/lit16 v5, v15, 0x1c00

    if-nez v5, :cond_b

    move/from16 v5, p3

    invoke-interface {v3, v5}, Landroidx/compose/runtime/Composer;->changed(Z)Z

    move-result v19

    if-eqz v19, :cond_a

    move/from16 v19, v17

    goto :goto_7

    :cond_a
    move/from16 v19, v18

    :goto_7
    or-int v4, v4, v19

    goto :goto_9

    :cond_b
    :goto_8
    move/from16 v5, p3

    :goto_9
    and-int/lit8 v19, v13, 0x10

    const/16 v20, 0x4000

    const/16 v21, 0x2000

    const v22, 0xe000

    if-eqz v19, :cond_c

    or-int/lit16 v4, v4, 0x6000

    move/from16 v8, p4

    goto :goto_b

    :cond_c
    and-int v23, v15, v22

    move/from16 v8, p4

    if-nez v23, :cond_e

    invoke-interface {v3, v8}, Landroidx/compose/runtime/Composer;->changed(Z)Z

    move-result v24

    if-eqz v24, :cond_d

    move/from16 v24, v20

    goto :goto_a

    :cond_d
    move/from16 v24, v21

    :goto_a
    or-int v4, v4, v24

    :cond_e
    :goto_b
    and-int/lit8 v24, v13, 0x20

    const/high16 v25, 0x70000

    if-eqz v24, :cond_f

    const/high16 v26, 0x30000

    or-int v4, v4, v26

    move-object/from16 v9, p5

    goto :goto_d

    :cond_f
    and-int v26, v15, v25

    move-object/from16 v9, p5

    if-nez v26, :cond_11

    invoke-interface {v3, v9}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_10

    const/high16 v27, 0x20000

    goto :goto_c

    :cond_10
    const/high16 v27, 0x10000

    :goto_c
    or-int v4, v4, v27

    :cond_11
    :goto_d
    and-int/lit8 v27, v13, 0x40

    if-eqz v27, :cond_12

    const/high16 v28, 0x180000

    or-int v4, v4, v28

    move-object/from16 v10, p6

    goto :goto_f

    :cond_12
    const/high16 v28, 0x380000

    and-int v28, v15, v28

    move-object/from16 v10, p6

    if-nez v28, :cond_14

    invoke-interface {v3, v10}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_13

    const/high16 v29, 0x100000

    goto :goto_e

    :cond_13
    const/high16 v29, 0x80000

    :goto_e
    or-int v4, v4, v29

    :cond_14
    :goto_f
    and-int/lit16 v11, v13, 0x80

    if-eqz v11, :cond_15

    const/high16 v30, 0xc00000

    or-int v4, v4, v30

    move-object/from16 v6, p7

    goto :goto_11

    :cond_15
    const/high16 v30, 0x1c00000

    and-int v30, v15, v30

    move-object/from16 v6, p7

    if-nez v30, :cond_17

    invoke-interface {v3, v6}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v31

    if-eqz v31, :cond_16

    const/high16 v31, 0x800000

    goto :goto_10

    :cond_16
    const/high16 v31, 0x400000

    :goto_10
    or-int v4, v4, v31

    :cond_17
    :goto_11
    and-int/lit16 v0, v13, 0x100

    if-eqz v0, :cond_18

    const/high16 v32, 0x6000000

    or-int v4, v4, v32

    move/from16 v5, p8

    goto :goto_13

    :cond_18
    const/high16 v32, 0xe000000

    and-int v32, v15, v32

    move/from16 v5, p8

    if-nez v32, :cond_1a

    invoke-interface {v3, v5}, Landroidx/compose/runtime/Composer;->changed(Z)Z

    move-result v32

    if-eqz v32, :cond_19

    const/high16 v32, 0x4000000

    goto :goto_12

    :cond_19
    const/high16 v32, 0x2000000

    :goto_12
    or-int v4, v4, v32

    :cond_1a
    :goto_13
    const/high16 v32, 0x70000000

    and-int v32, v15, v32

    if-nez v32, :cond_1d

    and-int/lit16 v5, v13, 0x200

    if-nez v5, :cond_1b

    move/from16 v5, p9

    invoke-interface {v3, v5}, Landroidx/compose/runtime/Composer;->changed(I)Z

    move-result v32

    if-eqz v32, :cond_1c

    const/high16 v32, 0x20000000

    goto :goto_14

    :cond_1b
    move/from16 v5, p9

    :cond_1c
    const/high16 v32, 0x10000000

    :goto_14
    or-int v4, v4, v32

    goto :goto_15

    :cond_1d
    move/from16 v5, p9

    :goto_15
    and-int/lit16 v5, v13, 0x400

    if-eqz v5, :cond_1e

    or-int/lit8 v32, v14, 0x6

    move/from16 v6, p10

    goto :goto_17

    :cond_1e
    and-int/lit8 v32, v14, 0xe

    move/from16 v6, p10

    if-nez v32, :cond_20

    invoke-interface {v3, v6}, Landroidx/compose/runtime/Composer;->changed(I)Z

    move-result v32

    if-eqz v32, :cond_1f

    const/16 v32, 0x4

    goto :goto_16

    :cond_1f
    const/16 v32, 0x2

    :goto_16
    or-int v32, v14, v32

    goto :goto_17

    :cond_20
    move/from16 v32, v14

    :goto_17
    and-int/lit16 v6, v13, 0x800

    if-eqz v6, :cond_21

    or-int/lit8 v32, v32, 0x30

    goto :goto_19

    :cond_21
    and-int/lit8 v33, v14, 0x70

    move-object/from16 v8, p11

    if-nez v33, :cond_23

    invoke-interface {v3, v8}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v33

    if-eqz v33, :cond_22

    const/16 v23, 0x20

    goto :goto_18

    :cond_22
    const/16 v23, 0x10

    :goto_18
    or-int v32, v32, v23

    :cond_23
    :goto_19
    move/from16 v8, v32

    and-int/lit16 v9, v13, 0x1000

    if-eqz v9, :cond_24

    or-int/lit16 v8, v8, 0x180

    goto :goto_1b

    :cond_24
    and-int/lit16 v10, v14, 0x380

    if-nez v10, :cond_26

    move-object/from16 v10, p12

    invoke-interface {v3, v10}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_25

    const/16 v28, 0x100

    goto :goto_1a

    :cond_25
    const/16 v28, 0x80

    :goto_1a
    or-int v8, v8, v28

    goto :goto_1c

    :cond_26
    :goto_1b
    move-object/from16 v10, p12

    :goto_1c
    and-int/lit16 v10, v13, 0x2000

    if-eqz v10, :cond_27

    or-int/lit16 v8, v8, 0xc00

    goto :goto_1e

    :cond_27
    and-int/lit16 v12, v14, 0x1c00

    if-nez v12, :cond_29

    move-object/from16 v12, p13

    invoke-interface {v3, v12}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_28

    goto :goto_1d

    :cond_28
    move/from16 v17, v18

    :goto_1d
    or-int v8, v8, v17

    goto :goto_1f

    :cond_29
    :goto_1e
    move-object/from16 v12, p13

    :goto_1f
    and-int/lit16 v12, v13, 0x4000

    if-eqz v12, :cond_2a

    or-int/lit16 v8, v8, 0x6000

    move-object/from16 v2, p14

    goto :goto_21

    :cond_2a
    and-int v17, v14, v22

    move-object/from16 v2, p14

    if-nez v17, :cond_2c

    invoke-interface {v3, v2}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_2b

    goto :goto_20

    :cond_2b
    move/from16 v20, v21

    :goto_20
    or-int v8, v8, v20

    :cond_2c
    :goto_21
    const v17, 0x8000

    and-int v17, v13, v17

    if-eqz v17, :cond_2d

    const/high16 v18, 0x30000

    or-int v8, v8, v18

    move-object/from16 v2, p15

    goto :goto_23

    :cond_2d
    and-int v18, v14, v25

    move-object/from16 v2, p15

    if-nez v18, :cond_2f

    invoke-interface {v3, v2}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_2e

    const/high16 v18, 0x20000

    goto :goto_22

    :cond_2e
    const/high16 v18, 0x10000

    :goto_22
    or-int v8, v8, v18

    :cond_2f
    :goto_23
    const v18, 0x5b6db6db

    and-int v2, v4, v18

    const v14, 0x12492492

    if-ne v2, v14, :cond_31

    const v2, 0x5b6db

    and-int/2addr v2, v8

    const v14, 0x12492

    if-ne v2, v14, :cond_31

    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result v2

    if-nez v2, :cond_30

    goto :goto_24

    .line 188
    :cond_30
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    move-object/from16 v5, p1

    move-object/from16 v4, p2

    move/from16 v7, p3

    move/from16 v6, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    move-object/from16 v11, p7

    move/from16 v10, p8

    move/from16 v12, p9

    move/from16 v13, p10

    move-object/from16 v14, p11

    move-object/from16 v15, p12

    move-object/from16 v36, p13

    move-object/from16 v37, p14

    move-object/from16 v16, p15

    goto/16 :goto_39

    .line 141
    :cond_31
    :goto_24
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->startDefaults()V

    and-int/lit8 v2, v15, 0x1

    const/16 v18, 0x1

    if-eqz v2, :cond_34

    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->getDefaultsInvalid()Z

    move-result v2

    if-eqz v2, :cond_32

    goto :goto_25

    .line 138
    :cond_32
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    and-int/lit16 v0, v13, 0x200

    if-eqz v0, :cond_33

    const v0, -0x70000001

    and-int/2addr v4, v0

    :cond_33
    move-object/from16 v2, p2

    move/from16 v7, p3

    move/from16 v0, p4

    move-object/from16 v5, p6

    move-object/from16 v11, p7

    move/from16 v6, p8

    move/from16 v14, p9

    move/from16 p9, p10

    move-object/from16 v10, p11

    move-object/from16 v12, p12

    move-object/from16 v36, p13

    move-object/from16 v37, p14

    move-object/from16 v38, p15

    move v9, v4

    move-object/from16 v4, p5

    goto/16 :goto_35

    :cond_34
    :goto_25
    if-eqz v7, :cond_35

    .line 126
    sget-object v2, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v2, Landroidx/compose/ui/Modifier;

    goto :goto_26

    :cond_35
    move-object/from16 v2, p2

    :goto_26
    if-eqz v16, :cond_36

    move/from16 v7, v18

    goto :goto_27

    :cond_36
    move/from16 v7, p3

    :goto_27
    if-eqz v19, :cond_37

    const/16 v16, 0x0

    goto :goto_28

    :cond_37
    move/from16 v16, p4

    :goto_28
    if-eqz v24, :cond_38

    .line 129
    sget-object v19, Landroidx/compose/ui/text/TextStyle;->Companion:Landroidx/compose/ui/text/TextStyle$Companion;

    invoke-virtual/range {v19 .. v19}, Landroidx/compose/ui/text/TextStyle$Companion;->getDefault()Landroidx/compose/ui/text/TextStyle;

    move-result-object v19

    goto :goto_29

    :cond_38
    move-object/from16 v19, p5

    :goto_29
    if-eqz v27, :cond_39

    .line 130
    sget-object v20, Landroidx/compose/foundation/text/KeyboardOptions;->Companion:Landroidx/compose/foundation/text/KeyboardOptions$Companion;

    invoke-virtual/range {v20 .. v20}, Landroidx/compose/foundation/text/KeyboardOptions$Companion;->getDefault()Landroidx/compose/foundation/text/KeyboardOptions;

    move-result-object v20

    goto :goto_2a

    :cond_39
    move-object/from16 v20, p6

    :goto_2a
    if-eqz v11, :cond_3a

    .line 131
    sget-object v11, Landroidx/compose/foundation/text/KeyboardActions;->Companion:Landroidx/compose/foundation/text/KeyboardActions$Companion;

    invoke-virtual {v11}, Landroidx/compose/foundation/text/KeyboardActions$Companion;->getDefault()Landroidx/compose/foundation/text/KeyboardActions;

    move-result-object v11

    goto :goto_2b

    :cond_3a
    move-object/from16 v11, p7

    :goto_2b
    if-eqz v0, :cond_3b

    const/4 v0, 0x0

    goto :goto_2c

    :cond_3b
    move/from16 v0, p8

    :goto_2c
    and-int/lit16 v14, v13, 0x200

    if-eqz v14, :cond_3d

    if-eqz v0, :cond_3c

    move/from16 v14, v18

    goto :goto_2d

    :cond_3c
    const v14, 0x7fffffff

    :goto_2d
    const v23, -0x70000001

    and-int v4, v4, v23

    goto :goto_2e

    :cond_3d
    move/from16 v14, p9

    :goto_2e
    if-eqz v5, :cond_3e

    move/from16 v5, v18

    goto :goto_2f

    :cond_3e
    move/from16 v5, p10

    :goto_2f
    if-eqz v6, :cond_3f

    .line 135
    sget-object v6, Landroidx/compose/ui/text/input/VisualTransformation;->Companion:Landroidx/compose/ui/text/input/VisualTransformation$Companion;

    invoke-virtual {v6}, Landroidx/compose/ui/text/input/VisualTransformation$Companion;->getNone()Landroidx/compose/ui/text/input/VisualTransformation;

    move-result-object v6

    goto :goto_30

    :cond_3f
    move-object/from16 v6, p11

    :goto_30
    if-eqz v9, :cond_40

    .line 136
    sget-object v9, Landroidx/compose/foundation/text/BasicTextFieldKt$BasicTextField$1;->INSTANCE:Landroidx/compose/foundation/text/BasicTextFieldKt$BasicTextField$1;

    check-cast v9, Lkotlin/jvm/functions/Function1;

    goto :goto_31

    :cond_40
    move-object/from16 v9, p12

    :goto_31
    if-eqz v10, :cond_42

    const v10, -0x1d58f75c

    .line 137
    invoke-interface {v3, v10}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v10, "CC(remember):Composables.kt#9igjgp"

    invoke-static {v3, v10}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 392
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v10

    .line 393
    sget-object v23, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    move/from16 p2, v0

    invoke-virtual/range {v23 .. v23}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v0

    if-ne v10, v0, :cond_41

    .line 137
    invoke-static {}, Landroidx/compose/foundation/interaction/InteractionSourceKt;->MutableInteractionSource()Landroidx/compose/foundation/interaction/MutableInteractionSource;

    move-result-object v10

    .line 395
    invoke-interface {v3, v10}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 391
    :cond_41
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    move-object v0, v10

    check-cast v0, Landroidx/compose/foundation/interaction/MutableInteractionSource;

    goto :goto_32

    :cond_42
    move/from16 p2, v0

    move-object/from16 v0, p13

    :goto_32
    if-eqz v12, :cond_43

    .line 138
    new-instance v10, Landroidx/compose/ui/graphics/SolidColor;

    sget-object v12, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    move/from16 p3, v4

    move/from16 p4, v5

    invoke-virtual {v12}, Landroidx/compose/ui/graphics/Color$Companion;->getBlack-0d7_KjU()J

    move-result-wide v4

    const/4 v12, 0x0

    invoke-direct {v10, v4, v5, v12}, Landroidx/compose/ui/graphics/SolidColor;-><init>(JLkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object v4, v10

    check-cast v4, Landroidx/compose/ui/graphics/Brush;

    goto :goto_33

    :cond_43
    move/from16 p3, v4

    move/from16 p4, v5

    move-object/from16 v4, p14

    :goto_33
    if-eqz v17, :cond_44

    sget-object v5, Landroidx/compose/foundation/text/ComposableSingletons$BasicTextFieldKt;->INSTANCE:Landroidx/compose/foundation/text/ComposableSingletons$BasicTextFieldKt;

    invoke-virtual {v5}, Landroidx/compose/foundation/text/ComposableSingletons$BasicTextFieldKt;->getLambda-1$foundation_release()Lkotlin/jvm/functions/Function3;

    move-result-object v5

    move/from16 p9, p4

    move-object/from16 v36, v0

    move-object/from16 v37, v4

    move-object/from16 v38, v5

    goto :goto_34

    :cond_44
    move/from16 p9, p4

    move-object/from16 v38, p15

    move-object/from16 v36, v0

    move-object/from16 v37, v4

    :goto_34
    move-object v10, v6

    move-object v12, v9

    move/from16 v0, v16

    move-object/from16 v4, v19

    move-object/from16 v5, v20

    move/from16 v6, p2

    move/from16 v9, p3

    :goto_35
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->endDefaults()V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v16

    if-eqz v16, :cond_45

    const-string v13, "androidx.compose.foundation.text.BasicTextField (BasicTextField.kt:122)"

    move/from16 p10, v14

    const v14, 0x3857730f

    .line 141
    invoke-static {v14, v9, v8, v13}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    goto :goto_36

    :cond_45
    move/from16 p10, v14

    :goto_36
    const v13, -0x1d58f75c

    .line 144
    invoke-interface {v3, v13}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v13, "CC(remember):Composables.kt#9igjgp"

    invoke-static {v3, v13}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 399
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v13

    .line 400
    sget-object v14, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v14}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v14

    if-ne v13, v14, :cond_46

    .line 144
    new-instance v13, Landroidx/compose/ui/text/input/TextFieldValue;

    const-wide/16 v16, 0x0

    const/4 v14, 0x0

    const/16 v19, 0x6

    const/16 v20, 0x0

    move-object/from16 p2, v13

    move-object/from16 p3, p0

    move-wide/from16 p4, v16

    move-object/from16 p6, v14

    move/from16 p7, v19

    move-object/from16 p8, v20

    invoke-direct/range {p2 .. p8}, Landroidx/compose/ui/text/input/TextFieldValue;-><init>(Ljava/lang/String;JLandroidx/compose/ui/text/TextRange;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const/4 v14, 0x0

    const/4 v15, 0x2

    invoke-static {v13, v14, v15, v14}, Landroidx/compose/runtime/SnapshotStateKt;->mutableStateOf$default(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;ILjava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object v13

    .line 402
    invoke-interface {v3, v13}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 398
    :cond_46
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 144
    check-cast v13, Landroidx/compose/runtime/MutableState;

    .line 148
    invoke-static {v13}, Landroidx/compose/foundation/text/BasicTextFieldKt;->BasicTextField$lambda$2(Landroidx/compose/runtime/MutableState;)Landroidx/compose/ui/text/input/TextFieldValue;

    move-result-object v14

    const-wide/16 v15, 0x0

    const/16 v17, 0x0

    const/16 v19, 0x6

    const/16 v20, 0x0

    move-object/from16 p2, v14

    move-object/from16 p3, p0

    move-wide/from16 p4, v15

    move-object/from16 p6, v17

    move/from16 p7, v19

    move-object/from16 p8, v20

    invoke-static/range {p2 .. p8}, Landroidx/compose/ui/text/input/TextFieldValue;->copy-3r_uNRQ$default(Landroidx/compose/ui/text/input/TextFieldValue;Ljava/lang/String;JLandroidx/compose/ui/text/TextRange;ILjava/lang/Object;)Landroidx/compose/ui/text/input/TextFieldValue;

    move-result-object v14

    const v15, 0x1e7b2b64

    .line 150
    invoke-interface {v3, v15}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v15, "CC(remember)P(1,2):Composables.kt#9igjgp"

    invoke-static {v3, v15}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 405
    invoke-interface {v3, v14}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v15

    invoke-interface {v3, v13}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v16

    or-int v15, v15, v16

    move/from16 p2, v0

    .line 407
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v0

    if-nez v15, :cond_47

    .line 408
    sget-object v15, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v15}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v15

    if-ne v0, v15, :cond_48

    .line 150
    :cond_47
    new-instance v0, Landroidx/compose/foundation/text/BasicTextFieldKt$BasicTextField$3$1;

    invoke-direct {v0, v14, v13}, Landroidx/compose/foundation/text/BasicTextFieldKt$BasicTextField$3$1;-><init>(Landroidx/compose/ui/text/input/TextFieldValue;Landroidx/compose/runtime/MutableState;)V

    check-cast v0, Lkotlin/jvm/functions/Function0;

    .line 410
    invoke-interface {v3, v0}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 406
    :cond_48
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    check-cast v0, Lkotlin/jvm/functions/Function0;

    const/4 v15, 0x0

    .line 150
    invoke-static {v0, v3, v15}, Landroidx/compose/runtime/EffectsKt;->SideEffect(Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V

    const v0, 0x44faf204

    .line 159
    invoke-interface {v3, v0}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v0, "CC(remember)P(1):Composables.kt#9igjgp"

    invoke-static {v3, v0}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 413
    invoke-interface {v3, v1}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v0

    .line 414
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v15

    if-nez v0, :cond_49

    .line 415
    sget-object v0, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v0}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v0

    if-ne v15, v0, :cond_4a

    :cond_49
    const/4 v0, 0x0

    const/4 v15, 0x2

    .line 159
    invoke-static {v1, v0, v15, v0}, Landroidx/compose/runtime/SnapshotStateKt;->mutableStateOf$default(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;ILjava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object v15

    .line 417
    invoke-interface {v3, v15}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 413
    :cond_4a
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 159
    check-cast v15, Landroidx/compose/runtime/MutableState;

    .line 179
    invoke-virtual {v5, v6}, Landroidx/compose/foundation/text/KeyboardOptions;->toImeOptions$foundation_release(Z)Landroidx/compose/ui/text/input/ImeOptions;

    move-result-object v27

    xor-int/lit8 v24, v6, 0x1

    if-eqz v6, :cond_4b

    move/from16 v26, v18

    goto :goto_37

    :cond_4b
    move/from16 v26, p9

    :goto_37
    if-eqz v6, :cond_4c

    move/from16 v0, v18

    goto :goto_38

    :cond_4c
    move/from16 v0, p10

    :goto_38
    const v1, 0x607fb4c4

    .line 163
    invoke-interface {v3, v1}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v1, "CC(remember)P(1,2,3):Composables.kt#9igjgp"

    invoke-static {v3, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 420
    invoke-interface {v3, v13}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v1

    .line 421
    invoke-interface {v3, v15}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v16

    or-int v1, v1, v16

    move-object/from16 p3, v5

    move-object/from16 v5, p1

    .line 422
    invoke-interface {v3, v5}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v16

    or-int v1, v1, v16

    move/from16 p4, v6

    .line 424
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v6

    if-nez v1, :cond_4d

    .line 425
    sget-object v1, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v1}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v1

    if-ne v6, v1, :cond_4e

    .line 163
    :cond_4d
    new-instance v1, Landroidx/compose/foundation/text/BasicTextFieldKt$BasicTextField$4$1;

    invoke-direct {v1, v5, v13, v15}, Landroidx/compose/foundation/text/BasicTextFieldKt$BasicTextField$4$1;-><init>(Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;)V

    move-object v6, v1

    check-cast v6, Lkotlin/jvm/functions/Function1;

    .line 427
    invoke-interface {v3, v6}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 423
    :cond_4e
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    move-object/from16 v17, v6

    check-cast v17, Lkotlin/jvm/functions/Function1;

    and-int/lit16 v1, v9, 0x380

    shr-int/lit8 v6, v9, 0x6

    and-int/lit16 v6, v6, 0x1c00

    or-int/2addr v1, v6

    shl-int/lit8 v6, v8, 0x9

    and-int v13, v6, v22

    or-int/2addr v1, v13

    and-int v13, v6, v25

    or-int/2addr v1, v13

    const/high16 v13, 0x380000

    and-int/2addr v13, v6

    or-int/2addr v1, v13

    const/high16 v13, 0x1c00000

    and-int/2addr v6, v13

    or-int v33, v1, v6

    shr-int/lit8 v1, v9, 0xf

    and-int/lit16 v1, v1, 0x380

    and-int/lit16 v6, v9, 0x1c00

    or-int/2addr v1, v6

    and-int v6, v9, v22

    or-int/2addr v1, v6

    and-int v6, v8, v25

    or-int v34, v1, v6

    const/16 v35, 0x0

    move-object/from16 v16, v14

    move-object/from16 v18, v2

    move-object/from16 v19, v4

    move-object/from16 v20, v10

    move-object/from16 v21, v12

    move-object/from16 v22, v36

    move-object/from16 v23, v37

    move/from16 v25, v0

    move-object/from16 v28, v11

    move/from16 v29, v7

    move/from16 v30, p2

    move-object/from16 v31, v38

    move-object/from16 v32, v3

    .line 161
    invoke-static/range {v16 .. v35}, Landroidx/compose/foundation/text/CoreTextFieldKt;->CoreTextField(Landroidx/compose/ui/text/input/TextFieldValue;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/text/input/VisualTransformation;Lkotlin/jvm/functions/Function1;Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/ui/graphics/Brush;ZIILandroidx/compose/ui/text/input/ImeOptions;Landroidx/compose/foundation/text/KeyboardActions;ZZLkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;III)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_4f

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_4f
    move/from16 v6, p2

    move-object/from16 v9, p3

    move/from16 v13, p9

    move-object v8, v4

    move-object v14, v10

    move-object v15, v12

    move-object/from16 v16, v38

    move/from16 v10, p4

    move/from16 v12, p10

    move-object v4, v2

    .line 188
    :goto_39
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v3

    if-nez v3, :cond_50

    goto :goto_3a

    :cond_50
    new-instance v20, Landroidx/compose/foundation/text/BasicTextFieldKt$BasicTextField$5;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object v5, v3

    move-object v3, v4

    move v4, v7

    move-object v7, v5

    move v5, v6

    move-object v6, v8

    move-object v8, v7

    move-object v7, v9

    move-object v9, v8

    move-object v8, v11

    move-object v11, v9

    move v9, v10

    move v10, v12

    move-object v12, v11

    move v11, v13

    move-object v13, v12

    move-object v12, v14

    move-object v14, v13

    move-object v13, v15

    move-object v15, v14

    move-object/from16 v14, v36

    move-object/from16 v39, v15

    move-object/from16 v15, v37

    move/from16 v17, p17

    move/from16 v18, p18

    move/from16 v19, p19

    invoke-direct/range {v0 .. v19}, Landroidx/compose/foundation/text/BasicTextFieldKt$BasicTextField$5;-><init>(Ljava/lang/String;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;ZZLandroidx/compose/ui/text/TextStyle;Landroidx/compose/foundation/text/KeyboardOptions;Landroidx/compose/foundation/text/KeyboardActions;ZIILandroidx/compose/ui/text/input/VisualTransformation;Lkotlin/jvm/functions/Function1;Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/ui/graphics/Brush;Lkotlin/jvm/functions/Function3;III)V

    move-object/from16 v0, v20

    check-cast v0, Lkotlin/jvm/functions/Function2;

    move-object/from16 v1, v39

    invoke-interface {v1, v0}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    :goto_3a
    return-void
.end method

.method public static final synthetic BasicTextField(Ljava/lang/String;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;ZZLandroidx/compose/ui/text/TextStyle;Landroidx/compose/foundation/text/KeyboardOptions;Landroidx/compose/foundation/text/KeyboardActions;ZILandroidx/compose/ui/text/input/VisualTransformation;Lkotlin/jvm/functions/Function1;Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/ui/graphics/Brush;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;III)V
    .locals 37
    .annotation runtime Lkotlin/Deprecated;
        level = .enum Lkotlin/DeprecationLevel;->HIDDEN:Lkotlin/DeprecationLevel;
        message = "Maintained for binary compatibility"
    .end annotation

    move-object/from16 v15, p0

    move-object/from16 v14, p1

    move/from16 v13, p16

    move/from16 v12, p17

    move/from16 v11, p18

    const-string/jumbo v0, "value"

    invoke-static {v15, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onValueChange"

    invoke-static {v14, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const v0, -0x1b1aab2e

    move-object/from16 v1, p15

    .line 331
    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object v9

    const-string v1, "C(BasicTextField)P(13,9,7,2,10,12,5,4,11,6,14,8,3)326@18012L39,331@18252L579:BasicTextField.kt#423gt5"

    invoke-static {v9, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    and-int/lit8 v1, v11, 0x1

    if-eqz v1, :cond_0

    or-int/lit8 v1, v13, 0x6

    goto :goto_1

    :cond_0
    and-int/lit8 v1, v13, 0xe

    if-nez v1, :cond_2

    invoke-interface {v9, v15}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x4

    goto :goto_0

    :cond_1
    const/4 v1, 0x2

    :goto_0
    or-int/2addr v1, v13

    goto :goto_1

    :cond_2
    move v1, v13

    :goto_1
    and-int/lit8 v4, v11, 0x2

    if-eqz v4, :cond_3

    or-int/lit8 v1, v1, 0x30

    goto :goto_3

    :cond_3
    and-int/lit8 v4, v13, 0x70

    if-nez v4, :cond_5

    invoke-interface {v9, v14}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    const/16 v4, 0x20

    goto :goto_2

    :cond_4
    const/16 v4, 0x10

    :goto_2
    or-int/2addr v1, v4

    :cond_5
    :goto_3
    and-int/lit8 v4, v11, 0x4

    if-eqz v4, :cond_6

    or-int/lit16 v1, v1, 0x180

    goto :goto_5

    :cond_6
    and-int/lit16 v10, v13, 0x380

    if-nez v10, :cond_8

    move-object/from16 v10, p2

    invoke-interface {v9, v10}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_7

    const/16 v16, 0x100

    goto :goto_4

    :cond_7
    const/16 v16, 0x80

    :goto_4
    or-int v1, v1, v16

    goto :goto_6

    :cond_8
    :goto_5
    move-object/from16 v10, p2

    :goto_6
    and-int/lit8 v16, v11, 0x8

    const/16 v17, 0x800

    const/16 v18, 0x400

    if-eqz v16, :cond_9

    or-int/lit16 v1, v1, 0xc00

    goto :goto_8

    :cond_9
    and-int/lit16 v2, v13, 0x1c00

    if-nez v2, :cond_b

    move/from16 v2, p3

    invoke-interface {v9, v2}, Landroidx/compose/runtime/Composer;->changed(Z)Z

    move-result v19

    if-eqz v19, :cond_a

    move/from16 v19, v17

    goto :goto_7

    :cond_a
    move/from16 v19, v18

    :goto_7
    or-int v1, v1, v19

    goto :goto_9

    :cond_b
    :goto_8
    move/from16 v2, p3

    :goto_9
    and-int/lit8 v19, v11, 0x10

    const/16 v20, 0x4000

    const/16 v21, 0x2000

    const v22, 0xe000

    if-eqz v19, :cond_c

    or-int/lit16 v1, v1, 0x6000

    move/from16 v3, p4

    goto :goto_b

    :cond_c
    and-int v23, v13, v22

    move/from16 v3, p4

    if-nez v23, :cond_e

    invoke-interface {v9, v3}, Landroidx/compose/runtime/Composer;->changed(Z)Z

    move-result v24

    if-eqz v24, :cond_d

    move/from16 v24, v20

    goto :goto_a

    :cond_d
    move/from16 v24, v21

    :goto_a
    or-int v1, v1, v24

    :cond_e
    :goto_b
    and-int/lit8 v24, v11, 0x20

    const/high16 v25, 0x70000

    if-eqz v24, :cond_f

    const/high16 v26, 0x30000

    or-int v1, v1, v26

    move-object/from16 v5, p5

    goto :goto_d

    :cond_f
    and-int v26, v13, v25

    move-object/from16 v5, p5

    if-nez v26, :cond_11

    invoke-interface {v9, v5}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_10

    const/high16 v27, 0x20000

    goto :goto_c

    :cond_10
    const/high16 v27, 0x10000

    :goto_c
    or-int v1, v1, v27

    :cond_11
    :goto_d
    and-int/lit8 v27, v11, 0x40

    if-eqz v27, :cond_12

    const/high16 v28, 0x180000

    or-int v1, v1, v28

    move-object/from16 v6, p6

    goto :goto_f

    :cond_12
    const/high16 v28, 0x380000

    and-int v28, v13, v28

    move-object/from16 v6, p6

    if-nez v28, :cond_14

    invoke-interface {v9, v6}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_13

    const/high16 v29, 0x100000

    goto :goto_e

    :cond_13
    const/high16 v29, 0x80000

    :goto_e
    or-int v1, v1, v29

    :cond_14
    :goto_f
    and-int/lit16 v7, v11, 0x80

    if-eqz v7, :cond_15

    const/high16 v30, 0xc00000

    or-int v1, v1, v30

    move-object/from16 v8, p7

    goto :goto_11

    :cond_15
    const/high16 v30, 0x1c00000

    and-int v30, v13, v30

    move-object/from16 v8, p7

    if-nez v30, :cond_17

    invoke-interface {v9, v8}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v31

    if-eqz v31, :cond_16

    const/high16 v31, 0x800000

    goto :goto_10

    :cond_16
    const/high16 v31, 0x400000

    :goto_10
    or-int v1, v1, v31

    :cond_17
    :goto_11
    and-int/lit16 v0, v11, 0x100

    if-eqz v0, :cond_18

    const/high16 v32, 0x6000000

    or-int v1, v1, v32

    move/from16 v2, p8

    goto :goto_13

    :cond_18
    const/high16 v32, 0xe000000

    and-int v32, v13, v32

    move/from16 v2, p8

    if-nez v32, :cond_1a

    invoke-interface {v9, v2}, Landroidx/compose/runtime/Composer;->changed(Z)Z

    move-result v32

    if-eqz v32, :cond_19

    const/high16 v32, 0x4000000

    goto :goto_12

    :cond_19
    const/high16 v32, 0x2000000

    :goto_12
    or-int v1, v1, v32

    :cond_1a
    :goto_13
    and-int/lit16 v2, v11, 0x200

    if-eqz v2, :cond_1b

    const/high16 v32, 0x30000000

    or-int v1, v1, v32

    move/from16 v3, p9

    goto :goto_15

    :cond_1b
    const/high16 v32, 0x70000000

    and-int v32, v13, v32

    move/from16 v3, p9

    if-nez v32, :cond_1d

    invoke-interface {v9, v3}, Landroidx/compose/runtime/Composer;->changed(I)Z

    move-result v32

    if-eqz v32, :cond_1c

    const/high16 v32, 0x20000000

    goto :goto_14

    :cond_1c
    const/high16 v32, 0x10000000

    :goto_14
    or-int v1, v1, v32

    :cond_1d
    :goto_15
    and-int/lit16 v3, v11, 0x400

    if-eqz v3, :cond_1e

    or-int/lit8 v23, v12, 0x6

    move-object/from16 v5, p10

    goto :goto_17

    :cond_1e
    and-int/lit8 v32, v12, 0xe

    move-object/from16 v5, p10

    if-nez v32, :cond_20

    invoke-interface {v9, v5}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v32

    if-eqz v32, :cond_1f

    const/16 v23, 0x4

    goto :goto_16

    :cond_1f
    const/16 v23, 0x2

    :goto_16
    or-int v23, v12, v23

    goto :goto_17

    :cond_20
    move/from16 v23, v12

    :goto_17
    and-int/lit16 v5, v11, 0x800

    if-eqz v5, :cond_21

    or-int/lit8 v23, v23, 0x30

    goto :goto_19

    :cond_21
    and-int/lit8 v32, v12, 0x70

    move-object/from16 v6, p11

    if-nez v32, :cond_23

    invoke-interface {v9, v6}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v32

    if-eqz v32, :cond_22

    const/16 v26, 0x20

    goto :goto_18

    :cond_22
    const/16 v26, 0x10

    :goto_18
    or-int v23, v23, v26

    :cond_23
    :goto_19
    move/from16 v6, v23

    and-int/lit16 v8, v11, 0x1000

    if-eqz v8, :cond_24

    or-int/lit16 v6, v6, 0x180

    goto :goto_1b

    :cond_24
    and-int/lit16 v10, v12, 0x380

    if-nez v10, :cond_26

    move-object/from16 v10, p12

    invoke-interface {v9, v10}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_25

    const/16 v29, 0x100

    goto :goto_1a

    :cond_25
    const/16 v29, 0x80

    :goto_1a
    or-int v6, v6, v29

    goto :goto_1c

    :cond_26
    :goto_1b
    move-object/from16 v10, p12

    :goto_1c
    and-int/lit16 v10, v11, 0x2000

    if-eqz v10, :cond_27

    or-int/lit16 v6, v6, 0xc00

    goto :goto_1e

    :cond_27
    and-int/lit16 v13, v12, 0x1c00

    if-nez v13, :cond_29

    move-object/from16 v13, p13

    invoke-interface {v9, v13}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_28

    goto :goto_1d

    :cond_28
    move/from16 v17, v18

    :goto_1d
    or-int v6, v6, v17

    goto :goto_1f

    :cond_29
    :goto_1e
    move-object/from16 v13, p13

    :goto_1f
    and-int/lit16 v13, v11, 0x4000

    if-eqz v13, :cond_2a

    or-int/lit16 v6, v6, 0x6000

    move-object/from16 v11, p14

    goto :goto_21

    :cond_2a
    and-int v17, v12, v22

    move-object/from16 v11, p14

    if-nez v17, :cond_2c

    invoke-interface {v9, v11}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_2b

    goto :goto_20

    :cond_2b
    move/from16 v20, v21

    :goto_20
    or-int v6, v6, v20

    :cond_2c
    :goto_21
    const v17, 0x5b6db6db

    and-int v11, v1, v17

    const v12, 0x12492492

    if-ne v11, v12, :cond_2e

    const v11, 0xb6db

    and-int/2addr v11, v6

    const/16 v12, 0x2492

    if-ne v11, v12, :cond_2e

    invoke-interface {v9}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result v11

    if-nez v11, :cond_2d

    goto :goto_22

    .line 350
    :cond_2d
    invoke-interface {v9}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    move-object/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move/from16 v10, p9

    move-object/from16 v11, p10

    move-object/from16 v12, p11

    move-object/from16 v13, p12

    move-object/from16 v14, p13

    move-object/from16 v15, p14

    move-object/from16 v22, v9

    move/from16 v9, p8

    goto/16 :goto_30

    :cond_2e
    :goto_22
    if-eqz v4, :cond_2f

    .line 317
    sget-object v4, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v4, Landroidx/compose/ui/Modifier;

    move-object/from16 v20, v4

    goto :goto_23

    :cond_2f
    move-object/from16 v20, p2

    :goto_23
    if-eqz v16, :cond_30

    const/4 v4, 0x1

    move/from16 v21, v4

    goto :goto_24

    :cond_30
    move/from16 v21, p3

    :goto_24
    if-eqz v19, :cond_31

    const/4 v4, 0x0

    move/from16 v23, v4

    goto :goto_25

    :cond_31
    move/from16 v23, p4

    :goto_25
    if-eqz v24, :cond_32

    .line 320
    sget-object v4, Landroidx/compose/ui/text/TextStyle;->Companion:Landroidx/compose/ui/text/TextStyle$Companion;

    invoke-virtual {v4}, Landroidx/compose/ui/text/TextStyle$Companion;->getDefault()Landroidx/compose/ui/text/TextStyle;

    move-result-object v4

    move-object/from16 v24, v4

    goto :goto_26

    :cond_32
    move-object/from16 v24, p5

    :goto_26
    if-eqz v27, :cond_33

    .line 321
    sget-object v4, Landroidx/compose/foundation/text/KeyboardOptions;->Companion:Landroidx/compose/foundation/text/KeyboardOptions$Companion;

    invoke-virtual {v4}, Landroidx/compose/foundation/text/KeyboardOptions$Companion;->getDefault()Landroidx/compose/foundation/text/KeyboardOptions;

    move-result-object v4

    move-object/from16 v26, v4

    goto :goto_27

    :cond_33
    move-object/from16 v26, p6

    :goto_27
    if-eqz v7, :cond_34

    .line 322
    sget-object v4, Landroidx/compose/foundation/text/KeyboardActions;->Companion:Landroidx/compose/foundation/text/KeyboardActions$Companion;

    invoke-virtual {v4}, Landroidx/compose/foundation/text/KeyboardActions$Companion;->getDefault()Landroidx/compose/foundation/text/KeyboardActions;

    move-result-object v4

    move-object/from16 v27, v4

    goto :goto_28

    :cond_34
    move-object/from16 v27, p7

    :goto_28
    if-eqz v0, :cond_35

    const/4 v0, 0x0

    move/from16 v28, v0

    goto :goto_29

    :cond_35
    move/from16 v28, p8

    :goto_29
    if-eqz v2, :cond_36

    const v0, 0x7fffffff

    move/from16 v29, v0

    goto :goto_2a

    :cond_36
    move/from16 v29, p9

    :goto_2a
    if-eqz v3, :cond_37

    .line 325
    sget-object v0, Landroidx/compose/ui/text/input/VisualTransformation;->Companion:Landroidx/compose/ui/text/input/VisualTransformation$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/text/input/VisualTransformation$Companion;->getNone()Landroidx/compose/ui/text/input/VisualTransformation;

    move-result-object v0

    move-object/from16 v30, v0

    goto :goto_2b

    :cond_37
    move-object/from16 v30, p10

    :goto_2b
    if-eqz v5, :cond_38

    .line 326
    sget-object v0, Landroidx/compose/foundation/text/BasicTextFieldKt$BasicTextField$10;->INSTANCE:Landroidx/compose/foundation/text/BasicTextFieldKt$BasicTextField$10;

    check-cast v0, Lkotlin/jvm/functions/Function1;

    move-object/from16 v32, v0

    goto :goto_2c

    :cond_38
    move-object/from16 v32, p11

    :goto_2c
    if-eqz v8, :cond_3a

    const v0, -0x1d58f75c

    .line 327
    invoke-interface {v9, v0}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v0, "CC(remember):Composables.kt#9igjgp"

    invoke-static {v9, v0}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 446
    invoke-interface {v9}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v0

    .line 447
    sget-object v2, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v2}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v2

    if-ne v0, v2, :cond_39

    .line 327
    invoke-static {}, Landroidx/compose/foundation/interaction/InteractionSourceKt;->MutableInteractionSource()Landroidx/compose/foundation/interaction/MutableInteractionSource;

    move-result-object v0

    .line 449
    invoke-interface {v9, v0}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 445
    :cond_39
    invoke-interface {v9}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    check-cast v0, Landroidx/compose/foundation/interaction/MutableInteractionSource;

    move-object/from16 v33, v0

    goto :goto_2d

    :cond_3a
    move-object/from16 v33, p12

    :goto_2d
    if-eqz v10, :cond_3b

    .line 328
    new-instance v0, Landroidx/compose/ui/graphics/SolidColor;

    sget-object v2, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual {v2}, Landroidx/compose/ui/graphics/Color$Companion;->getBlack-0d7_KjU()J

    move-result-wide v2

    const/4 v4, 0x0

    invoke-direct {v0, v2, v3, v4}, Landroidx/compose/ui/graphics/SolidColor;-><init>(JLkotlin/jvm/internal/DefaultConstructorMarker;)V

    check-cast v0, Landroidx/compose/ui/graphics/Brush;

    move-object/from16 v34, v0

    goto :goto_2e

    :cond_3b
    move-object/from16 v34, p13

    :goto_2e
    if-eqz v13, :cond_3c

    sget-object v0, Landroidx/compose/foundation/text/ComposableSingletons$BasicTextFieldKt;->INSTANCE:Landroidx/compose/foundation/text/ComposableSingletons$BasicTextFieldKt;

    invoke-virtual {v0}, Landroidx/compose/foundation/text/ComposableSingletons$BasicTextFieldKt;->getLambda-3$foundation_release()Lkotlin/jvm/functions/Function3;

    move-result-object v0

    move-object/from16 v35, v0

    goto :goto_2f

    :cond_3c
    move-object/from16 v35, p14

    :goto_2f
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_3d

    const-string v0, "androidx.compose.foundation.text.BasicTextField (BasicTextField.kt:313)"

    const v2, -0x1b1aab2e

    .line 331
    invoke-static {v2, v1, v6, v0}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_3d
    const/4 v10, 0x1

    and-int/lit8 v0, v1, 0xe

    and-int/lit8 v2, v1, 0x70

    or-int/2addr v0, v2

    and-int/lit16 v2, v1, 0x380

    or-int/2addr v0, v2

    and-int/lit16 v2, v1, 0x1c00

    or-int/2addr v0, v2

    and-int v2, v1, v22

    or-int/2addr v0, v2

    and-int v2, v1, v25

    or-int/2addr v0, v2

    const/high16 v2, 0x380000

    and-int/2addr v2, v1

    or-int/2addr v0, v2

    const/high16 v2, 0x1c00000

    and-int/2addr v2, v1

    or-int/2addr v0, v2

    const/high16 v2, 0xe000000

    and-int/2addr v2, v1

    or-int/2addr v0, v2

    const/high16 v2, 0x70000000

    and-int/2addr v1, v2

    or-int v17, v0, v1

    shl-int/lit8 v0, v6, 0x3

    and-int/lit8 v1, v0, 0x70

    or-int/lit8 v1, v1, 0x6

    and-int/lit16 v2, v0, 0x380

    or-int/2addr v1, v2

    and-int/lit16 v2, v0, 0x1c00

    or-int/2addr v1, v2

    and-int v2, v0, v22

    or-int/2addr v1, v2

    and-int v0, v0, v25

    or-int v18, v1, v0

    const/16 v19, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v20

    move/from16 v3, v21

    move/from16 v4, v23

    move-object/from16 v5, v24

    move-object/from16 v6, v26

    move-object/from16 v7, v27

    move/from16 v8, v28

    move-object/from16 v22, v9

    move/from16 v9, v29

    move-object/from16 v11, v30

    move-object/from16 v12, v32

    move-object/from16 v13, v33

    move-object/from16 v14, v34

    move-object/from16 v15, v35

    move-object/from16 v16, v22

    .line 332
    invoke-static/range {v0 .. v19}, Landroidx/compose/foundation/text/BasicTextFieldKt;->BasicTextField(Ljava/lang/String;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;ZZLandroidx/compose/ui/text/TextStyle;Landroidx/compose/foundation/text/KeyboardOptions;Landroidx/compose/foundation/text/KeyboardActions;ZIILandroidx/compose/ui/text/input/VisualTransformation;Lkotlin/jvm/functions/Function1;Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/ui/graphics/Brush;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;III)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_3e

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_3e
    move-object/from16 v3, v20

    move/from16 v4, v21

    move/from16 v5, v23

    move-object/from16 v6, v24

    move-object/from16 v7, v26

    move-object/from16 v8, v27

    move/from16 v9, v28

    move/from16 v10, v29

    move-object/from16 v11, v30

    move-object/from16 v12, v32

    move-object/from16 v13, v33

    move-object/from16 v14, v34

    move-object/from16 v15, v35

    .line 350
    :goto_30
    invoke-interface/range {v22 .. v22}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v2

    if-nez v2, :cond_3f

    goto :goto_31

    :cond_3f
    new-instance v19, Landroidx/compose/foundation/text/BasicTextFieldKt$BasicTextField$12;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    move-object/from16 v36, v2

    move-object/from16 v2, p1

    move/from16 v16, p16

    move/from16 v17, p17

    move/from16 v18, p18

    invoke-direct/range {v0 .. v18}, Landroidx/compose/foundation/text/BasicTextFieldKt$BasicTextField$12;-><init>(Ljava/lang/String;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;ZZLandroidx/compose/ui/text/TextStyle;Landroidx/compose/foundation/text/KeyboardOptions;Landroidx/compose/foundation/text/KeyboardActions;ZILandroidx/compose/ui/text/input/VisualTransformation;Lkotlin/jvm/functions/Function1;Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/ui/graphics/Brush;Lkotlin/jvm/functions/Function3;III)V

    move-object/from16 v0, v19

    check-cast v0, Lkotlin/jvm/functions/Function2;

    move-object/from16 v1, v36

    invoke-interface {v1, v0}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    :goto_31
    return-void
.end method

.method private static final BasicTextField$lambda$2(Landroidx/compose/runtime/MutableState;)Landroidx/compose/ui/text/input/TextFieldValue;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/MutableState<",
            "Landroidx/compose/ui/text/input/TextFieldValue;",
            ">;)",
            "Landroidx/compose/ui/text/input/TextFieldValue;"
        }
    .end annotation

    .line 144
    check-cast p0, Landroidx/compose/runtime/State;

    .line 459
    invoke-interface {p0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/compose/ui/text/input/TextFieldValue;

    return-object p0
.end method

.method private static final BasicTextField$lambda$3(Landroidx/compose/runtime/MutableState;Landroidx/compose/ui/text/input/TextFieldValue;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/MutableState<",
            "Landroidx/compose/ui/text/input/TextFieldValue;",
            ">;",
            "Landroidx/compose/ui/text/input/TextFieldValue;",
            ")V"
        }
    .end annotation

    .line 460
    invoke-interface {p0, p1}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method private static final BasicTextField$lambda$6(Landroidx/compose/runtime/MutableState;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 159
    check-cast p0, Landroidx/compose/runtime/State;

    .line 462
    invoke-interface {p0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method private static final BasicTextField$lambda$7(Landroidx/compose/runtime/MutableState;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 463
    invoke-interface {p0, p1}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public static final synthetic access$BasicTextField$lambda$2(Landroidx/compose/runtime/MutableState;)Landroidx/compose/ui/text/input/TextFieldValue;
    .locals 0

    .line 1
    invoke-static {p0}, Landroidx/compose/foundation/text/BasicTextFieldKt;->BasicTextField$lambda$2(Landroidx/compose/runtime/MutableState;)Landroidx/compose/ui/text/input/TextFieldValue;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$BasicTextField$lambda$3(Landroidx/compose/runtime/MutableState;Landroidx/compose/ui/text/input/TextFieldValue;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Landroidx/compose/foundation/text/BasicTextFieldKt;->BasicTextField$lambda$3(Landroidx/compose/runtime/MutableState;Landroidx/compose/ui/text/input/TextFieldValue;)V

    return-void
.end method

.method public static final synthetic access$BasicTextField$lambda$6(Landroidx/compose/runtime/MutableState;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p0}, Landroidx/compose/foundation/text/BasicTextFieldKt;->BasicTextField$lambda$6(Landroidx/compose/runtime/MutableState;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$BasicTextField$lambda$7(Landroidx/compose/runtime/MutableState;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Landroidx/compose/foundation/text/BasicTextFieldKt;->BasicTextField$lambda$7(Landroidx/compose/runtime/MutableState;Ljava/lang/String;)V

    return-void
.end method
