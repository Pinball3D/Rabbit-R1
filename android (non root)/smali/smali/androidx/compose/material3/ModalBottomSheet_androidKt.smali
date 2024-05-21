.class public final Landroidx/compose/material3/ModalBottomSheet_androidKt;
.super Ljava/lang/Object;
.source "ModalBottomSheet.android.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nModalBottomSheet.android.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ModalBottomSheet.android.kt\nandroidx/compose/material3/ModalBottomSheet_androidKt\n+ 2 Effects.kt\nandroidx/compose/runtime/EffectsKt\n+ 3 Composables.kt\nandroidx/compose/runtime/ComposablesKt\n+ 4 Composer.kt\nandroidx/compose/runtime/ComposerKt\n+ 5 Effects.kt\nandroidx/compose/runtime/EffectsKt$rememberCoroutineScope$1\n+ 6 Color.kt\nandroidx/compose/ui/graphics/ColorKt\n+ 7 CompositionLocal.kt\nandroidx/compose/runtime/CompositionLocal\n+ 8 SnapshotState.kt\nandroidx/compose/runtime/SnapshotStateKt__SnapshotStateKt\n*L\n1#1,571:1\n474#2,4:572\n478#2,2:580\n482#2:586\n25#3:576\n50#3:587\n49#3:588\n36#3:595\n36#3:603\n50#3:610\n49#3:611\n25#3:619\n1114#4,3:577\n1117#4,3:583\n1114#4,6:589\n1114#4,6:596\n1114#4,6:604\n1114#4,6:612\n1114#4,6:620\n474#5:582\n646#6:602\n76#7:618\n76#8:626\n76#8:627\n*S KotlinDebug\n*F\n+ 1 ModalBottomSheet.android.kt\nandroidx/compose/material3/ModalBottomSheet_androidKt\n*L\n136#1:572,4\n136#1:580,2\n136#1:586\n136#1:576\n153#1:587\n153#1:588\n270#1:595\n334#1:603\n347#1:610\n347#1:611\n425#1:619\n136#1:577,3\n136#1:583,3\n153#1:589,6\n270#1:596,6\n334#1:604,6\n347#1:612,6\n425#1:620,6\n136#1:582\n327#1:602\n421#1:618\n328#1:626\n424#1:627\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000|\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0007\n\u0002\u0008\u0007\n\u0002\u0010\u000b\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0000\u001a\u009e\u0001\u0010\u0000\u001a\u00020\u00012\u000c\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00010\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00072\u0008\u0008\u0002\u0010\u0008\u001a\u00020\t2\u0008\u0008\u0002\u0010\n\u001a\u00020\u000b2\u0008\u0008\u0002\u0010\u000c\u001a\u00020\u000b2\u0008\u0008\u0002\u0010\r\u001a\u00020\u000e2\u0008\u0008\u0002\u0010\u000f\u001a\u00020\u000b2\u0015\u0008\u0002\u0010\u0010\u001a\u000f\u0012\u0004\u0012\u00020\u0001\u0018\u00010\u0003\u00a2\u0006\u0002\u0008\u00112\u001c\u0010\u0012\u001a\u0018\u0012\u0004\u0012\u00020\u0014\u0012\u0004\u0012\u00020\u00010\u0013\u00a2\u0006\u0002\u0008\u0011\u00a2\u0006\u0002\u0008\u0015H\u0007\u00f8\u0001\u0000\u00f8\u0001\u0001\u00a2\u0006\u0004\u0008\u0016\u0010\u0017\u001a\u00a8\u0001\u0010\u0000\u001a\u00020\u00012\u000c\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00010\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00072\u0008\u0008\u0002\u0010\u0008\u001a\u00020\t2\u0008\u0008\u0002\u0010\n\u001a\u00020\u000b2\u0008\u0008\u0002\u0010\u000c\u001a\u00020\u000b2\u0008\u0008\u0002\u0010\r\u001a\u00020\u000e2\u0008\u0008\u0002\u0010\u000f\u001a\u00020\u000b2\u0015\u0008\u0002\u0010\u0010\u001a\u000f\u0012\u0004\u0012\u00020\u0001\u0018\u00010\u0003\u00a2\u0006\u0002\u0008\u00112\u0008\u0008\u0002\u0010\u0018\u001a\u00020\u00192\u001c\u0010\u0012\u001a\u0018\u0012\u0004\u0012\u00020\u0014\u0012\u0004\u0012\u00020\u00010\u0013\u00a2\u0006\u0002\u0008\u0011\u00a2\u0006\u0002\u0008\u0015H\u0007\u00f8\u0001\u0000\u00f8\u0001\u0001\u00a2\u0006\u0004\u0008\u001a\u0010\u001b\u001aq\u0010\u001c\u001a\u0008\u0012\u0004\u0012\u00020\u001e0\u001d2\u0006\u0010\u001f\u001a\u00020\u000726\u0010 \u001a2\u0012\u0013\u0012\u00110\u001e\u00a2\u0006\u000c\u0008\"\u0012\u0008\u0008#\u0012\u0004\u0008\u0008($\u0012\u0013\u0012\u00110%\u00a2\u0006\u000c\u0008\"\u0012\u0008\u0008#\u0012\u0004\u0008\u0008(&\u0012\u0004\u0012\u00020\u00010!2!\u0010\'\u001a\u001d\u0012\u0013\u0012\u00110\u001e\u00a2\u0006\u000c\u0008\"\u0012\u0008\u0008#\u0012\u0004\u0008\u0008($\u0012\u0004\u0012\u00020\u00010\u0013H\u0003\u001a6\u0010(\u001a\u00020\u00012\u000c\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00010\u00032\u0006\u0010\u0018\u001a\u00020\u00192\u0011\u0010\u0012\u001a\r\u0012\u0004\u0012\u00020\u00010\u0003\u00a2\u0006\u0002\u0008\u0011H\u0001\u00a2\u0006\u0002\u0010)\u001a3\u0010*\u001a\u00020\u00012\u0006\u0010+\u001a\u00020\u000b2\u000c\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00010\u00032\u0006\u0010,\u001a\u00020-H\u0003\u00f8\u0001\u0000\u00f8\u0001\u0001\u00a2\u0006\u0004\u0008.\u0010/\u001a-\u00100\u001a\u00020\u00072\u0008\u0008\u0002\u00101\u001a\u00020-2\u0014\u0008\u0002\u00102\u001a\u000e\u0012\u0004\u0012\u00020\u001e\u0012\u0004\u0012\u00020-0\u0013H\u0007\u00a2\u0006\u0002\u00103\u001aX\u00104\u001a\u00020\u0005*\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u000c\u00105\u001a\u0008\u0012\u0004\u0012\u00020\u001e0\u001d2\u0006\u00106\u001a\u00020%2,\u00107\u001a(\u0012\u0004\u0012\u000208\u0012\u0013\u0012\u00110%\u00a2\u0006\u000c\u0008\"\u0012\u0008\u0008#\u0012\u0004\u0008\u0008(&\u0012\u0004\u0012\u00020\u00010!\u00a2\u0006\u0002\u0008\u0015H\u0003\u0082\u0002\u000b\n\u0005\u0008\u00a1\u001e0\u0001\n\u0002\u0008\u0019\u00a8\u00069"
    }
    d2 = {
        "ModalBottomSheet",
        "",
        "onDismissRequest",
        "Lkotlin/Function0;",
        "modifier",
        "Landroidx/compose/ui/Modifier;",
        "sheetState",
        "Landroidx/compose/material3/SheetState;",
        "shape",
        "Landroidx/compose/ui/graphics/Shape;",
        "containerColor",
        "Landroidx/compose/ui/graphics/Color;",
        "contentColor",
        "tonalElevation",
        "Landroidx/compose/ui/unit/Dp;",
        "scrimColor",
        "dragHandle",
        "Landroidx/compose/runtime/Composable;",
        "content",
        "Lkotlin/Function1;",
        "Landroidx/compose/foundation/layout/ColumnScope;",
        "Lkotlin/ExtensionFunctionType;",
        "ModalBottomSheet-xOkiWaM",
        "(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;Landroidx/compose/material3/SheetState;Landroidx/compose/ui/graphics/Shape;JJFJLkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V",
        "windowInsets",
        "Landroidx/compose/foundation/layout/WindowInsets;",
        "ModalBottomSheet-EP0qOeE",
        "(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;Landroidx/compose/material3/SheetState;Landroidx/compose/ui/graphics/Shape;JJFJLkotlin/jvm/functions/Function2;Landroidx/compose/foundation/layout/WindowInsets;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;III)V",
        "ModalBottomSheetAnchorChangeHandler",
        "Landroidx/compose/material3/AnchorChangeHandler;",
        "Landroidx/compose/material3/SheetValue;",
        "state",
        "animateTo",
        "Lkotlin/Function2;",
        "Lkotlin/ParameterName;",
        "name",
        "target",
        "",
        "velocity",
        "snapTo",
        "ModalBottomSheetPopup",
        "(Lkotlin/jvm/functions/Function0;Landroidx/compose/foundation/layout/WindowInsets;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V",
        "Scrim",
        "color",
        "visible",
        "",
        "Scrim-3J-VO9M",
        "(JLkotlin/jvm/functions/Function0;ZLandroidx/compose/runtime/Composer;I)V",
        "rememberModalBottomSheetState",
        "skipPartiallyExpanded",
        "confirmValueChange",
        "(ZLkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)Landroidx/compose/material3/SheetState;",
        "modalBottomSheetSwipeable",
        "anchorChangeHandler",
        "screenHeight",
        "onDragStopped",
        "Lkotlinx/coroutines/CoroutineScope;",
        "material3_release"
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
.method public static final ModalBottomSheet-EP0qOeE(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;Landroidx/compose/material3/SheetState;Landroidx/compose/ui/graphics/Shape;JJFJLkotlin/jvm/functions/Function2;Landroidx/compose/foundation/layout/WindowInsets;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;III)V
    .locals 34
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;",
            "Landroidx/compose/ui/Modifier;",
            "Landroidx/compose/material3/SheetState;",
            "Landroidx/compose/ui/graphics/Shape;",
            "JJFJ",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;",
            "Landroidx/compose/foundation/layout/WindowInsets;",
            "Lkotlin/jvm/functions/Function3<",
            "-",
            "Landroidx/compose/foundation/layout/ColumnScope;",
            "-",
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

    move-object/from16 v0, p13

    move/from16 v14, p15

    move/from16 v15, p17

    const-string v2, "onDismissRequest"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "content"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const v2, -0x34700d88    # -1.886744E7f

    move-object/from16 v3, p14

    .line 135
    invoke-interface {v3, v2}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object v12

    const-string v3, "C(ModalBottomSheet)P(5,4,8,7,0:c#ui.graphics.Color,2:c#ui.graphics.Color,9:c#ui.unit.Dp,6:c#ui.graphics.Color,3,10)125@5985L31,126@6057L13,127@6120L14,128@6162L31,130@6295L10,132@6442L12,135@6525L24,152@7150L507,167@7663L4907,269@12645L41,269@12618L68:ModalBottomSheet.android.kt#uh7d8r"

    invoke-static {v12, v3}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    and-int/lit8 v3, v15, 0x1

    if-eqz v3, :cond_0

    or-int/lit8 v3, v14, 0x6

    goto :goto_1

    :cond_0
    and-int/lit8 v3, v14, 0xe

    if-nez v3, :cond_2

    invoke-interface {v12, v1}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x4

    goto :goto_0

    :cond_1
    const/4 v3, 0x2

    :goto_0
    or-int/2addr v3, v14

    goto :goto_1

    :cond_2
    move v3, v14

    :goto_1
    and-int/lit8 v6, v15, 0x2

    if-eqz v6, :cond_3

    or-int/lit8 v3, v3, 0x30

    goto :goto_3

    :cond_3
    and-int/lit8 v7, v14, 0x70

    if-nez v7, :cond_5

    move-object/from16 v7, p1

    invoke-interface {v12, v7}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    const/16 v8, 0x20

    goto :goto_2

    :cond_4
    const/16 v8, 0x10

    :goto_2
    or-int/2addr v3, v8

    goto :goto_4

    :cond_5
    :goto_3
    move-object/from16 v7, p1

    :goto_4
    and-int/lit16 v8, v14, 0x380

    if-nez v8, :cond_8

    and-int/lit8 v8, v15, 0x4

    if-nez v8, :cond_6

    move-object/from16 v8, p2

    invoke-interface {v12, v8}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7

    const/16 v9, 0x100

    goto :goto_5

    :cond_6
    move-object/from16 v8, p2

    :cond_7
    const/16 v9, 0x80

    :goto_5
    or-int/2addr v3, v9

    goto :goto_6

    :cond_8
    move-object/from16 v8, p2

    :goto_6
    and-int/lit16 v9, v14, 0x1c00

    if-nez v9, :cond_b

    and-int/lit8 v9, v15, 0x8

    if-nez v9, :cond_9

    move-object/from16 v9, p3

    invoke-interface {v12, v9}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_a

    const/16 v10, 0x800

    goto :goto_7

    :cond_9
    move-object/from16 v9, p3

    :cond_a
    const/16 v10, 0x400

    :goto_7
    or-int/2addr v3, v10

    goto :goto_8

    :cond_b
    move-object/from16 v9, p3

    :goto_8
    const v10, 0xe000

    and-int/2addr v10, v14

    if-nez v10, :cond_e

    and-int/lit8 v10, v15, 0x10

    if-nez v10, :cond_c

    move-wide/from16 v10, p4

    invoke-interface {v12, v10, v11}, Landroidx/compose/runtime/Composer;->changed(J)Z

    move-result v13

    if-eqz v13, :cond_d

    const/16 v13, 0x4000

    goto :goto_9

    :cond_c
    move-wide/from16 v10, p4

    :cond_d
    const/16 v13, 0x2000

    :goto_9
    or-int/2addr v3, v13

    goto :goto_a

    :cond_e
    move-wide/from16 v10, p4

    :goto_a
    const/high16 v13, 0x70000

    and-int/2addr v13, v14

    if-nez v13, :cond_11

    and-int/lit8 v13, v15, 0x20

    if-nez v13, :cond_f

    move v13, v6

    move-wide/from16 v5, p6

    invoke-interface {v12, v5, v6}, Landroidx/compose/runtime/Composer;->changed(J)Z

    move-result v16

    if-eqz v16, :cond_10

    const/high16 v16, 0x20000

    goto :goto_b

    :cond_f
    move v13, v6

    move-wide/from16 v5, p6

    :cond_10
    const/high16 v16, 0x10000

    :goto_b
    or-int v3, v3, v16

    goto :goto_c

    :cond_11
    move v13, v6

    move-wide/from16 v5, p6

    :goto_c
    and-int/lit8 v16, v15, 0x40

    if-eqz v16, :cond_12

    const/high16 v17, 0x180000

    or-int v3, v3, v17

    move/from16 v2, p8

    goto :goto_e

    :cond_12
    const/high16 v17, 0x380000

    and-int v17, v14, v17

    move/from16 v2, p8

    if-nez v17, :cond_14

    invoke-interface {v12, v2}, Landroidx/compose/runtime/Composer;->changed(F)Z

    move-result v18

    if-eqz v18, :cond_13

    const/high16 v18, 0x100000

    goto :goto_d

    :cond_13
    const/high16 v18, 0x80000

    :goto_d
    or-int v3, v3, v18

    :cond_14
    :goto_e
    const/high16 v18, 0x1c00000

    and-int v18, v14, v18

    if-nez v18, :cond_17

    and-int/lit16 v4, v15, 0x80

    if-nez v4, :cond_15

    move-wide/from16 v4, p9

    invoke-interface {v12, v4, v5}, Landroidx/compose/runtime/Composer;->changed(J)Z

    move-result v6

    if-eqz v6, :cond_16

    const/high16 v6, 0x800000

    goto :goto_f

    :cond_15
    move-wide/from16 v4, p9

    :cond_16
    const/high16 v6, 0x400000

    :goto_f
    or-int/2addr v3, v6

    goto :goto_10

    :cond_17
    move-wide/from16 v4, p9

    :goto_10
    and-int/lit16 v6, v15, 0x100

    if-eqz v6, :cond_18

    const/high16 v19, 0x6000000

    or-int v3, v3, v19

    move-object/from16 v2, p11

    goto :goto_12

    :cond_18
    const/high16 v19, 0xe000000

    and-int v19, v14, v19

    move-object/from16 v2, p11

    if-nez v19, :cond_1a

    invoke-interface {v12, v2}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_19

    const/high16 v19, 0x4000000

    goto :goto_11

    :cond_19
    const/high16 v19, 0x2000000

    :goto_11
    or-int v3, v3, v19

    :cond_1a
    :goto_12
    const/high16 v19, 0x70000000

    and-int v19, v14, v19

    if-nez v19, :cond_1d

    and-int/lit16 v2, v15, 0x200

    if-nez v2, :cond_1b

    move-object/from16 v2, p12

    invoke-interface {v12, v2}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_1c

    const/high16 v19, 0x20000000

    goto :goto_13

    :cond_1b
    move-object/from16 v2, p12

    :cond_1c
    const/high16 v19, 0x10000000

    :goto_13
    or-int v3, v3, v19

    goto :goto_14

    :cond_1d
    move-object/from16 v2, p12

    :goto_14
    and-int/lit16 v2, v15, 0x400

    if-eqz v2, :cond_1e

    or-int/lit8 v2, p16, 0x6

    goto :goto_16

    :cond_1e
    and-int/lit8 v2, p16, 0xe

    if-nez v2, :cond_20

    invoke-interface {v12, v0}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1f

    const/4 v2, 0x4

    goto :goto_15

    :cond_1f
    const/4 v2, 0x2

    :goto_15
    or-int v2, p16, v2

    goto :goto_16

    :cond_20
    move/from16 v2, p16

    :goto_16
    const v19, 0x5b6db6db

    and-int v0, v3, v19

    const v4, 0x12492492

    if-ne v0, v4, :cond_22

    and-int/lit8 v0, v2, 0xb

    const/4 v4, 0x2

    if-ne v0, v4, :cond_22

    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result v0

    if-nez v0, :cond_21

    goto :goto_17

    .line 274
    :cond_21
    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    move-object/from16 v13, p12

    move-object v2, v7

    move-object v3, v8

    move-object v4, v9

    move-wide v5, v10

    move-object v0, v12

    move-wide/from16 v7, p6

    move/from16 v9, p8

    move-wide/from16 v10, p9

    move-object/from16 v12, p11

    goto/16 :goto_24

    .line 135
    :cond_22
    :goto_17
    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->startDefaults()V

    and-int/lit8 v0, v14, 0x1

    const v5, -0x70001

    const v18, -0xe001

    const/4 v4, 0x0

    if-eqz v0, :cond_2a

    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->getDefaultsInvalid()Z

    move-result v0

    if-eqz v0, :cond_23

    goto :goto_18

    .line 133
    :cond_23
    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    and-int/lit8 v0, v15, 0x4

    if-eqz v0, :cond_24

    and-int/lit16 v3, v3, -0x381

    :cond_24
    and-int/lit8 v0, v15, 0x8

    if-eqz v0, :cond_25

    and-int/lit16 v3, v3, -0x1c01

    :cond_25
    and-int/lit8 v0, v15, 0x10

    if-eqz v0, :cond_26

    and-int v3, v3, v18

    :cond_26
    and-int/lit8 v0, v15, 0x20

    if-eqz v0, :cond_27

    and-int/2addr v3, v5

    :cond_27
    and-int/lit16 v0, v15, 0x80

    if-eqz v0, :cond_28

    const v0, -0x1c00001

    and-int/2addr v3, v0

    :cond_28
    and-int/lit16 v0, v15, 0x200

    if-eqz v0, :cond_29

    const v0, -0x70000001

    and-int/2addr v3, v0

    :cond_29
    move-wide/from16 v24, p6

    move/from16 v26, p8

    move-wide/from16 v27, p9

    move-object/from16 v29, p11

    move-object v0, v7

    move-object v13, v8

    move-object/from16 v21, v9

    move-wide/from16 v22, v10

    move-object/from16 v11, p12

    move v10, v3

    goto/16 :goto_22

    :cond_2a
    :goto_18
    if-eqz v13, :cond_2b

    .line 125
    sget-object v0, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v0, Landroidx/compose/ui/Modifier;

    goto :goto_19

    :cond_2b
    move-object v0, v7

    :goto_19
    and-int/lit8 v7, v15, 0x4

    if-eqz v7, :cond_2c

    const/4 v7, 0x3

    const/4 v8, 0x0

    .line 126
    invoke-static {v8, v4, v12, v8, v7}, Landroidx/compose/material3/ModalBottomSheet_androidKt;->rememberModalBottomSheetState(ZLkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)Landroidx/compose/material3/SheetState;

    move-result-object v7

    and-int/lit16 v3, v3, -0x381

    goto :goto_1a

    :cond_2c
    move-object v7, v8

    :goto_1a
    and-int/lit8 v8, v15, 0x8

    const/4 v13, 0x6

    if-eqz v8, :cond_2d

    .line 127
    sget-object v8, Landroidx/compose/material3/BottomSheetDefaults;->INSTANCE:Landroidx/compose/material3/BottomSheetDefaults;

    invoke-virtual {v8, v12, v13}, Landroidx/compose/material3/BottomSheetDefaults;->getExpandedShape(Landroidx/compose/runtime/Composer;I)Landroidx/compose/ui/graphics/Shape;

    move-result-object v8

    and-int/lit16 v3, v3, -0x1c01

    goto :goto_1b

    :cond_2d
    move-object v8, v9

    :goto_1b
    and-int/lit8 v9, v15, 0x10

    if-eqz v9, :cond_2e

    .line 128
    sget-object v9, Landroidx/compose/material3/BottomSheetDefaults;->INSTANCE:Landroidx/compose/material3/BottomSheetDefaults;

    invoke-virtual {v9, v12, v13}, Landroidx/compose/material3/BottomSheetDefaults;->getContainerColor(Landroidx/compose/runtime/Composer;I)J

    move-result-wide v9

    and-int v3, v3, v18

    goto :goto_1c

    :cond_2e
    move-wide v9, v10

    :goto_1c
    and-int/lit8 v11, v15, 0x20

    if-eqz v11, :cond_2f

    shr-int/lit8 v11, v3, 0xc

    and-int/lit8 v11, v11, 0xe

    .line 129
    invoke-static {v9, v10, v12, v11}, Landroidx/compose/material3/ColorSchemeKt;->contentColorFor-ek8zF_U(JLandroidx/compose/runtime/Composer;I)J

    move-result-wide v18

    and-int/2addr v3, v5

    goto :goto_1d

    :cond_2f
    move-wide/from16 v18, p6

    :goto_1d
    if-eqz v16, :cond_30

    .line 130
    sget-object v5, Landroidx/compose/material3/BottomSheetDefaults;->INSTANCE:Landroidx/compose/material3/BottomSheetDefaults;

    invoke-virtual {v5}, Landroidx/compose/material3/BottomSheetDefaults;->getElevation-D9Ej5fM()F

    move-result v5

    goto :goto_1e

    :cond_30
    move/from16 v5, p8

    :goto_1e
    and-int/lit16 v11, v15, 0x80

    if-eqz v11, :cond_31

    .line 131
    sget-object v11, Landroidx/compose/material3/BottomSheetDefaults;->INSTANCE:Landroidx/compose/material3/BottomSheetDefaults;

    invoke-virtual {v11, v12, v13}, Landroidx/compose/material3/BottomSheetDefaults;->getScrimColor(Landroidx/compose/runtime/Composer;I)J

    move-result-wide v20

    const v11, -0x1c00001

    and-int/2addr v3, v11

    goto :goto_1f

    :cond_31
    move-wide/from16 v20, p9

    :goto_1f
    if-eqz v6, :cond_32

    sget-object v6, Landroidx/compose/material3/ComposableSingletons$ModalBottomSheet_androidKt;->INSTANCE:Landroidx/compose/material3/ComposableSingletons$ModalBottomSheet_androidKt;

    invoke-virtual {v6}, Landroidx/compose/material3/ComposableSingletons$ModalBottomSheet_androidKt;->getLambda-1$material3_release()Lkotlin/jvm/functions/Function2;

    move-result-object v6

    goto :goto_20

    :cond_32
    move-object/from16 v6, p11

    :goto_20
    and-int/lit16 v11, v15, 0x200

    if-eqz v11, :cond_33

    .line 133
    sget-object v11, Landroidx/compose/material3/BottomSheetDefaults;->INSTANCE:Landroidx/compose/material3/BottomSheetDefaults;

    invoke-virtual {v11, v12, v13}, Landroidx/compose/material3/BottomSheetDefaults;->getWindowInsets(Landroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/layout/WindowInsets;

    move-result-object v11

    const v13, -0x70000001

    and-int/2addr v3, v13

    goto :goto_21

    :cond_33
    move-object/from16 v11, p12

    :goto_21
    move/from16 v26, v5

    move-object/from16 v29, v6

    move-object v13, v7

    move-wide/from16 v22, v9

    move-wide/from16 v24, v18

    move-wide/from16 v27, v20

    move v10, v3

    move-object/from16 v21, v8

    :goto_22
    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->endDefaults()V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v3

    if-eqz v3, :cond_34

    const-string v3, "androidx.compose.material3.ModalBottomSheet (ModalBottomSheet.android.kt:122)"

    const v5, -0x34700d88    # -1.886744E7f

    .line 135
    invoke-static {v5, v10, v2, v3}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_34
    const v3, 0x2e20b340

    .line 136
    invoke-interface {v12, v3}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v3, "CC(rememberCoroutineScope)476@19869L144:Effects.kt#9igjgp"

    invoke-static {v12, v3}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    const v3, -0x1d58f75c

    .line 575
    invoke-interface {v12, v3}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v3, "CC(remember):Composables.kt#9igjgp"

    invoke-static {v12, v3}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 577
    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v3

    .line 578
    sget-object v5, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v5}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v5

    if-ne v3, v5, :cond_35

    .line 582
    sget-object v3, Lkotlin/coroutines/EmptyCoroutineContext;->INSTANCE:Lkotlin/coroutines/EmptyCoroutineContext;

    .line 581
    check-cast v3, Lkotlin/coroutines/CoroutineContext;

    invoke-static {v3, v12}, Landroidx/compose/runtime/EffectsKt;->createCompositionCoroutineScope(Lkotlin/coroutines/CoroutineContext;Landroidx/compose/runtime/Composer;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v3

    .line 580
    new-instance v5, Landroidx/compose/runtime/CompositionScopedCoroutineScopeCanceller;

    invoke-direct {v5, v3}, Landroidx/compose/runtime/CompositionScopedCoroutineScopeCanceller;-><init>(Lkotlinx/coroutines/CoroutineScope;)V

    .line 583
    invoke-interface {v12, v5}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    move-object v3, v5

    .line 576
    :cond_35
    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 575
    check-cast v3, Landroidx/compose/runtime/CompositionScopedCoroutineScopeCanceller;

    .line 586
    invoke-virtual {v3}, Landroidx/compose/runtime/CompositionScopedCoroutineScopeCanceller;->getCoroutineScope()Lkotlinx/coroutines/CoroutineScope;

    move-result-object v8

    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 137
    new-instance v3, Landroidx/compose/material3/ModalBottomSheet_androidKt$ModalBottomSheet$animateToDismiss$1;

    invoke-direct {v3, v13, v8, v1}, Landroidx/compose/material3/ModalBottomSheet_androidKt$ModalBottomSheet$animateToDismiss$1;-><init>(Landroidx/compose/material3/SheetState;Lkotlinx/coroutines/CoroutineScope;Lkotlin/jvm/functions/Function0;)V

    move-object v5, v3

    check-cast v5, Lkotlin/jvm/functions/Function0;

    .line 146
    new-instance v3, Landroidx/compose/material3/ModalBottomSheet_androidKt$ModalBottomSheet$settleToDismiss$1;

    invoke-direct {v3, v8, v13, v1}, Landroidx/compose/material3/ModalBottomSheet_androidKt$ModalBottomSheet$settleToDismiss$1;-><init>(Lkotlinx/coroutines/CoroutineScope;Landroidx/compose/material3/SheetState;Lkotlin/jvm/functions/Function0;)V

    move-object/from16 v16, v3

    check-cast v16, Lkotlin/jvm/functions/Function1;

    shr-int/lit8 v3, v10, 0x6

    and-int/lit8 v3, v3, 0xe

    or-int/lit8 v7, v3, 0x40

    const v3, 0x1e7b2b64

    .line 153
    invoke-interface {v12, v3}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v3, "CC(remember)P(1,2):Composables.kt#9igjgp"

    invoke-static {v12, v3}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 587
    invoke-interface {v12, v13}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v3

    invoke-interface {v12, v8}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v6

    or-int/2addr v3, v6

    .line 589
    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v6

    if-nez v3, :cond_36

    .line 590
    sget-object v3, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v3}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v3

    if-ne v6, v3, :cond_37

    .line 154
    :cond_36
    new-instance v3, Landroidx/compose/material3/ModalBottomSheet_androidKt$ModalBottomSheet$anchorChangeHandler$1$1;

    invoke-direct {v3, v8, v13}, Landroidx/compose/material3/ModalBottomSheet_androidKt$ModalBottomSheet$anchorChangeHandler$1$1;-><init>(Lkotlinx/coroutines/CoroutineScope;Landroidx/compose/material3/SheetState;)V

    check-cast v3, Lkotlin/jvm/functions/Function2;

    new-instance v6, Landroidx/compose/material3/ModalBottomSheet_androidKt$ModalBottomSheet$anchorChangeHandler$1$2;

    invoke-direct {v6, v13, v8}, Landroidx/compose/material3/ModalBottomSheet_androidKt$ModalBottomSheet$anchorChangeHandler$1$2;-><init>(Landroidx/compose/material3/SheetState;Lkotlinx/coroutines/CoroutineScope;)V

    check-cast v6, Lkotlin/jvm/functions/Function1;

    invoke-static {v13, v3, v6}, Landroidx/compose/material3/ModalBottomSheet_androidKt;->access$ModalBottomSheetAnchorChangeHandler(Landroidx/compose/material3/SheetState;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;)Landroidx/compose/material3/AnchorChangeHandler;

    move-result-object v6

    .line 592
    invoke-interface {v12, v6}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 588
    :cond_37
    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 153
    move-object v9, v6

    check-cast v9, Landroidx/compose/material3/AnchorChangeHandler;

    .line 168
    new-instance v3, Landroidx/compose/material3/ModalBottomSheet_androidKt$ModalBottomSheet$1;

    invoke-direct {v3, v13, v8, v1}, Landroidx/compose/material3/ModalBottomSheet_androidKt$ModalBottomSheet$1;-><init>(Landroidx/compose/material3/SheetState;Lkotlinx/coroutines/CoroutineScope;Lkotlin/jvm/functions/Function0;)V

    move-object v6, v3

    check-cast v6, Lkotlin/jvm/functions/Function0;

    .line 177
    new-instance v3, Landroidx/compose/material3/ModalBottomSheet_androidKt$ModalBottomSheet$2;

    move/from16 v19, v2

    move-object v2, v3

    move-object v1, v3

    move-wide/from16 v3, v27

    move-object/from16 v30, v6

    move-object v6, v13

    move/from16 v31, v7

    move v7, v10

    move-object/from16 v20, v8

    move-object v8, v0

    move/from16 v32, v10

    move-object/from16 v10, v16

    move-object/from16 p1, v0

    move-object v0, v11

    move-object/from16 v11, v21

    move-object/from16 p2, v0

    move-object v0, v12

    move-object/from16 p3, v13

    move-wide/from16 v12, v22

    move-wide/from16 v14, v24

    move/from16 v16, v26

    move-object/from16 v17, v29

    move-object/from16 v18, p13

    invoke-direct/range {v2 .. v20}, Landroidx/compose/material3/ModalBottomSheet_androidKt$ModalBottomSheet$2;-><init>(JLkotlin/jvm/functions/Function0;Landroidx/compose/material3/SheetState;ILandroidx/compose/ui/Modifier;Landroidx/compose/material3/AnchorChangeHandler;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/graphics/Shape;JJFLkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function3;ILkotlinx/coroutines/CoroutineScope;)V

    const v2, 0x54e81af0

    const/4 v3, 0x1

    invoke-static {v0, v2, v3, v1}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->composableLambda(Landroidx/compose/runtime/Composer;IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v1

    check-cast v1, Lkotlin/jvm/functions/Function2;

    shr-int/lit8 v2, v32, 0x18

    and-int/lit8 v2, v2, 0x70

    or-int/lit16 v2, v2, 0x180

    move-object/from16 v11, p2

    move-object/from16 v3, v30

    .line 168
    invoke-static {v3, v11, v1, v0, v2}, Landroidx/compose/material3/ModalBottomSheet_androidKt;->ModalBottomSheetPopup(Lkotlin/jvm/functions/Function0;Landroidx/compose/foundation/layout/WindowInsets;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V

    .line 269
    invoke-virtual/range {p3 .. p3}, Landroidx/compose/material3/SheetState;->getHasExpandedState()Z

    move-result v1

    if-eqz v1, :cond_3a

    const v1, 0x44faf204

    .line 270
    invoke-interface {v0, v1}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v1, "CC(remember)P(1):Composables.kt#9igjgp"

    invoke-static {v0, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    move-object/from16 v7, p3

    .line 595
    invoke-interface {v0, v7}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v1

    .line 596
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v2

    if-nez v1, :cond_38

    .line 597
    sget-object v1, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v1}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v1

    if-ne v2, v1, :cond_39

    .line 270
    :cond_38
    new-instance v1, Landroidx/compose/material3/ModalBottomSheet_androidKt$ModalBottomSheet$3$1;

    const/4 v2, 0x0

    invoke-direct {v1, v7, v2}, Landroidx/compose/material3/ModalBottomSheet_androidKt$ModalBottomSheet$3$1;-><init>(Landroidx/compose/material3/SheetState;Lkotlin/coroutines/Continuation;)V

    move-object v2, v1

    check-cast v2, Lkotlin/jvm/functions/Function2;

    .line 599
    invoke-interface {v0, v2}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 595
    :cond_39
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    check-cast v2, Lkotlin/jvm/functions/Function2;

    move/from16 v1, v31

    .line 270
    invoke-static {v7, v2, v0, v1}, Landroidx/compose/runtime/EffectsKt;->LaunchedEffect(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V

    goto :goto_23

    :cond_3a
    move-object/from16 v7, p3

    :goto_23
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v1

    if-eqz v1, :cond_3b

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_3b
    move-object/from16 v2, p1

    move-object v3, v7

    move-object v13, v11

    move-object/from16 v4, v21

    move-wide/from16 v5, v22

    move-wide/from16 v7, v24

    move/from16 v9, v26

    move-wide/from16 v10, v27

    move-object/from16 v12, v29

    .line 274
    :goto_24
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v15

    if-nez v15, :cond_3c

    goto :goto_25

    :cond_3c
    new-instance v18, Landroidx/compose/material3/ModalBottomSheet_androidKt$ModalBottomSheet$4;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    move-object/from16 v14, p13

    move-object/from16 v33, v15

    move/from16 v15, p15

    move/from16 v16, p16

    move/from16 v17, p17

    invoke-direct/range {v0 .. v17}, Landroidx/compose/material3/ModalBottomSheet_androidKt$ModalBottomSheet$4;-><init>(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;Landroidx/compose/material3/SheetState;Landroidx/compose/ui/graphics/Shape;JJFJLkotlin/jvm/functions/Function2;Landroidx/compose/foundation/layout/WindowInsets;Lkotlin/jvm/functions/Function3;III)V

    move-object/from16 v0, v18

    check-cast v0, Lkotlin/jvm/functions/Function2;

    move-object/from16 v1, v33

    invoke-interface {v1, v0}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    :goto_25
    return-void
.end method

.method public static final synthetic ModalBottomSheet-xOkiWaM(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;Landroidx/compose/material3/SheetState;Landroidx/compose/ui/graphics/Shape;JJFJLkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V
    .locals 33
    .annotation runtime Lkotlin/Deprecated;
        level = .enum Lkotlin/DeprecationLevel;->HIDDEN:Lkotlin/DeprecationLevel;
        message = "Use ModalBottomSheet overload with windowInset parameter."
    .end annotation

    move-object/from16 v14, p0

    move-object/from16 v13, p12

    move/from16 v11, p14

    move/from16 v9, p15

    const-string v0, "onDismissRequest"

    invoke-static {v14, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "content"

    invoke-static {v13, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const v0, -0x4e2d99a6

    move-object/from16 v1, p13

    .line 293
    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object v10

    const-string v1, "C(ModalBottomSheet)P(5,4,8,7,0:c#ui.graphics.Color,2:c#ui.graphics.Color,9:c#ui.unit.Dp,6:c#ui.graphics.Color,3)284@12980L31,285@13052L13,286@13115L14,287@13157L31,289@13290L10,292@13437L321:ModalBottomSheet.android.kt#uh7d8r"

    invoke-static {v10, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    and-int/lit8 v1, v9, 0x1

    if-eqz v1, :cond_0

    or-int/lit8 v1, v11, 0x6

    goto :goto_1

    :cond_0
    and-int/lit8 v1, v11, 0xe

    if-nez v1, :cond_2

    invoke-interface {v10, v14}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x4

    goto :goto_0

    :cond_1
    const/4 v1, 0x2

    :goto_0
    or-int/2addr v1, v11

    goto :goto_1

    :cond_2
    move v1, v11

    :goto_1
    and-int/lit8 v2, v9, 0x2

    if-eqz v2, :cond_3

    or-int/lit8 v1, v1, 0x30

    goto :goto_3

    :cond_3
    and-int/lit8 v3, v11, 0x70

    if-nez v3, :cond_5

    move-object/from16 v3, p1

    invoke-interface {v10, v3}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    const/16 v4, 0x20

    goto :goto_2

    :cond_4
    const/16 v4, 0x10

    :goto_2
    or-int/2addr v1, v4

    goto :goto_4

    :cond_5
    :goto_3
    move-object/from16 v3, p1

    :goto_4
    and-int/lit16 v4, v11, 0x380

    if-nez v4, :cond_8

    and-int/lit8 v4, v9, 0x4

    if-nez v4, :cond_6

    move-object/from16 v4, p2

    invoke-interface {v10, v4}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    const/16 v5, 0x100

    goto :goto_5

    :cond_6
    move-object/from16 v4, p2

    :cond_7
    const/16 v5, 0x80

    :goto_5
    or-int/2addr v1, v5

    goto :goto_6

    :cond_8
    move-object/from16 v4, p2

    :goto_6
    and-int/lit16 v5, v11, 0x1c00

    if-nez v5, :cond_b

    and-int/lit8 v5, v9, 0x8

    if-nez v5, :cond_9

    move-object/from16 v5, p3

    invoke-interface {v10, v5}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a

    const/16 v6, 0x800

    goto :goto_7

    :cond_9
    move-object/from16 v5, p3

    :cond_a
    const/16 v6, 0x400

    :goto_7
    or-int/2addr v1, v6

    goto :goto_8

    :cond_b
    move-object/from16 v5, p3

    :goto_8
    const v6, 0xe000

    and-int v7, v11, v6

    if-nez v7, :cond_e

    and-int/lit8 v7, v9, 0x10

    if-nez v7, :cond_c

    move-wide/from16 v7, p4

    invoke-interface {v10, v7, v8}, Landroidx/compose/runtime/Composer;->changed(J)Z

    move-result v12

    if-eqz v12, :cond_d

    const/16 v12, 0x4000

    goto :goto_9

    :cond_c
    move-wide/from16 v7, p4

    :cond_d
    const/16 v12, 0x2000

    :goto_9
    or-int/2addr v1, v12

    goto :goto_a

    :cond_e
    move-wide/from16 v7, p4

    :goto_a
    const/high16 v15, 0x70000

    and-int v12, v11, v15

    if-nez v12, :cond_10

    and-int/lit8 v12, v9, 0x20

    move-wide/from16 v6, p6

    if-nez v12, :cond_f

    invoke-interface {v10, v6, v7}, Landroidx/compose/runtime/Composer;->changed(J)Z

    move-result v8

    if-eqz v8, :cond_f

    const/high16 v8, 0x20000

    goto :goto_b

    :cond_f
    const/high16 v8, 0x10000

    :goto_b
    or-int/2addr v1, v8

    goto :goto_c

    :cond_10
    move-wide/from16 v6, p6

    :goto_c
    and-int/lit8 v8, v9, 0x40

    const/high16 v16, 0x380000

    if-eqz v8, :cond_11

    const/high16 v12, 0x180000

    or-int/2addr v1, v12

    goto :goto_e

    :cond_11
    and-int v12, v11, v16

    if-nez v12, :cond_13

    move/from16 v12, p8

    invoke-interface {v10, v12}, Landroidx/compose/runtime/Composer;->changed(F)Z

    move-result v17

    if-eqz v17, :cond_12

    const/high16 v17, 0x100000

    goto :goto_d

    :cond_12
    const/high16 v17, 0x80000

    :goto_d
    or-int v1, v1, v17

    goto :goto_f

    :cond_13
    :goto_e
    move/from16 v12, p8

    :goto_f
    const/high16 v17, 0x1c00000

    and-int v18, v11, v17

    if-nez v18, :cond_15

    and-int/lit16 v15, v9, 0x80

    move/from16 v19, v1

    move-wide/from16 v0, p9

    if-nez v15, :cond_14

    invoke-interface {v10, v0, v1}, Landroidx/compose/runtime/Composer;->changed(J)Z

    move-result v20

    if-eqz v20, :cond_14

    const/high16 v20, 0x800000

    goto :goto_10

    :cond_14
    const/high16 v20, 0x400000

    :goto_10
    or-int v19, v19, v20

    goto :goto_11

    :cond_15
    move/from16 v19, v1

    move-wide/from16 v0, p9

    :goto_11
    and-int/lit16 v15, v9, 0x100

    const/high16 v21, 0xe000000

    if-eqz v15, :cond_16

    const/high16 v22, 0x6000000

    or-int v19, v19, v22

    move-object/from16 v0, p11

    goto :goto_13

    :cond_16
    and-int v22, v11, v21

    move-object/from16 v0, p11

    if-nez v22, :cond_18

    invoke-interface {v10, v0}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    const/high16 v1, 0x4000000

    goto :goto_12

    :cond_17
    const/high16 v1, 0x2000000

    :goto_12
    or-int v19, v19, v1

    :cond_18
    :goto_13
    and-int/lit16 v1, v9, 0x200

    if-eqz v1, :cond_19

    const/high16 v1, 0x30000000

    :goto_14
    or-int v19, v19, v1

    goto :goto_15

    :cond_19
    const/high16 v1, 0x70000000

    and-int/2addr v1, v11

    if-nez v1, :cond_1b

    invoke-interface {v10, v13}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a

    const/high16 v1, 0x20000000

    goto :goto_14

    :cond_1a
    const/high16 v1, 0x10000000

    goto :goto_14

    :cond_1b
    :goto_15
    move/from16 v1, v19

    const v19, 0x5b6db6db

    and-int v0, v1, v19

    const v3, 0x12492492

    if-ne v0, v3, :cond_1d

    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result v0

    if-nez v0, :cond_1c

    goto :goto_16

    .line 304
    :cond_1c
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    move-object/from16 v2, p1

    move-object v3, v4

    move-object v4, v5

    move-wide v7, v6

    move-object/from16 v18, v10

    move v9, v12

    move-wide/from16 v5, p4

    move-wide/from16 v10, p9

    move-object/from16 v12, p11

    goto/16 :goto_20

    .line 293
    :cond_1d
    :goto_16
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->startDefaults()V

    and-int/lit8 v0, v11, 0x1

    if-eqz v0, :cond_24

    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->getDefaultsInvalid()Z

    move-result v0

    if-eqz v0, :cond_1e

    goto :goto_17

    .line 290
    :cond_1e
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    and-int/lit8 v0, v9, 0x4

    if-eqz v0, :cond_1f

    and-int/lit16 v1, v1, -0x381

    :cond_1f
    and-int/lit8 v0, v9, 0x8

    if-eqz v0, :cond_20

    and-int/lit16 v1, v1, -0x1c01

    :cond_20
    and-int/lit8 v0, v9, 0x10

    if-eqz v0, :cond_21

    const v0, -0xe001

    and-int/2addr v1, v0

    :cond_21
    and-int/lit8 v0, v9, 0x20

    if-eqz v0, :cond_22

    const v0, -0x70001

    and-int/2addr v1, v0

    :cond_22
    and-int/lit16 v0, v9, 0x80

    if-eqz v0, :cond_23

    const v0, -0x1c00001

    and-int/2addr v1, v0

    :cond_23
    move-object/from16 v19, p1

    move-wide/from16 v24, p4

    move-wide/from16 v29, p9

    move-object/from16 v31, p11

    move-object/from16 v22, v4

    move-object/from16 v23, v5

    move-wide/from16 v26, v6

    move/from16 v28, v12

    goto/16 :goto_1f

    :cond_24
    :goto_17
    if-eqz v2, :cond_25

    .line 284
    sget-object v0, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v0, Landroidx/compose/ui/Modifier;

    goto :goto_18

    :cond_25
    move-object/from16 v0, p1

    :goto_18
    and-int/lit8 v2, v9, 0x4

    if-eqz v2, :cond_26

    const/4 v2, 0x0

    const/4 v3, 0x3

    const/4 v4, 0x0

    .line 285
    invoke-static {v4, v2, v10, v4, v3}, Landroidx/compose/material3/ModalBottomSheet_androidKt;->rememberModalBottomSheetState(ZLkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)Landroidx/compose/material3/SheetState;

    move-result-object v2

    and-int/lit16 v1, v1, -0x381

    goto :goto_19

    :cond_26
    move-object v2, v4

    :goto_19
    and-int/lit8 v3, v9, 0x8

    const/4 v4, 0x6

    if-eqz v3, :cond_27

    .line 286
    sget-object v3, Landroidx/compose/material3/BottomSheetDefaults;->INSTANCE:Landroidx/compose/material3/BottomSheetDefaults;

    invoke-virtual {v3, v10, v4}, Landroidx/compose/material3/BottomSheetDefaults;->getExpandedShape(Landroidx/compose/runtime/Composer;I)Landroidx/compose/ui/graphics/Shape;

    move-result-object v3

    and-int/lit16 v1, v1, -0x1c01

    goto :goto_1a

    :cond_27
    move-object v3, v5

    :goto_1a
    and-int/lit8 v5, v9, 0x10

    if-eqz v5, :cond_28

    .line 287
    sget-object v5, Landroidx/compose/material3/BottomSheetDefaults;->INSTANCE:Landroidx/compose/material3/BottomSheetDefaults;

    invoke-virtual {v5, v10, v4}, Landroidx/compose/material3/BottomSheetDefaults;->getContainerColor(Landroidx/compose/runtime/Composer;I)J

    move-result-wide v22

    const v5, -0xe001

    and-int/2addr v1, v5

    move-wide/from16 v4, v22

    goto :goto_1b

    :cond_28
    move-wide/from16 v4, p4

    :goto_1b
    and-int/lit8 v19, v9, 0x20

    if-eqz v19, :cond_29

    shr-int/lit8 v6, v1, 0xc

    and-int/lit8 v6, v6, 0xe

    .line 288
    invoke-static {v4, v5, v10, v6}, Landroidx/compose/material3/ColorSchemeKt;->contentColorFor-ek8zF_U(JLandroidx/compose/runtime/Composer;I)J

    move-result-wide v6

    const v19, -0x70001

    and-int v1, v1, v19

    :cond_29
    if-eqz v8, :cond_2a

    .line 289
    sget-object v8, Landroidx/compose/material3/BottomSheetDefaults;->INSTANCE:Landroidx/compose/material3/BottomSheetDefaults;

    invoke-virtual {v8}, Landroidx/compose/material3/BottomSheetDefaults;->getElevation-D9Ej5fM()F

    move-result v8

    goto :goto_1c

    :cond_2a
    move v8, v12

    :goto_1c
    and-int/lit16 v12, v9, 0x80

    if-eqz v12, :cond_2b

    .line 290
    sget-object v12, Landroidx/compose/material3/BottomSheetDefaults;->INSTANCE:Landroidx/compose/material3/BottomSheetDefaults;

    move-object/from16 v19, v0

    const/4 v0, 0x6

    invoke-virtual {v12, v10, v0}, Landroidx/compose/material3/BottomSheetDefaults;->getScrimColor(Landroidx/compose/runtime/Composer;I)J

    move-result-wide v22

    const v0, -0x1c00001

    and-int/2addr v0, v1

    move v1, v0

    goto :goto_1d

    :cond_2b
    move-object/from16 v19, v0

    move-wide/from16 v22, p9

    :goto_1d
    if-eqz v15, :cond_2c

    sget-object v0, Landroidx/compose/material3/ComposableSingletons$ModalBottomSheet_androidKt;->INSTANCE:Landroidx/compose/material3/ComposableSingletons$ModalBottomSheet_androidKt;

    invoke-virtual {v0}, Landroidx/compose/material3/ComposableSingletons$ModalBottomSheet_androidKt;->getLambda-2$material3_release()Lkotlin/jvm/functions/Function2;

    move-result-object v0

    move-object/from16 v31, v0

    goto :goto_1e

    :cond_2c
    move-object/from16 v31, p11

    :goto_1e
    move-wide/from16 v24, v4

    move-wide/from16 v26, v6

    move/from16 v28, v8

    move-wide/from16 v29, v22

    move-object/from16 v22, v2

    move-object/from16 v23, v3

    :goto_1f
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->endDefaults()V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_2d

    const/4 v0, -0x1

    const-string v2, "androidx.compose.material3.ModalBottomSheet (ModalBottomSheet.android.kt:281)"

    const v3, -0x4e2d99a6

    .line 293
    invoke-static {v3, v1, v0, v2}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_2d
    const/4 v12, 0x0

    and-int/lit8 v0, v1, 0xe

    and-int/lit8 v2, v1, 0x70

    or-int/2addr v0, v2

    and-int/lit16 v2, v1, 0x380

    or-int/2addr v0, v2

    and-int/lit16 v2, v1, 0x1c00

    or-int/2addr v0, v2

    const v2, 0xe000

    and-int/2addr v2, v1

    or-int/2addr v0, v2

    const/high16 v2, 0x70000

    and-int/2addr v2, v1

    or-int/2addr v0, v2

    and-int v2, v1, v16

    or-int/2addr v0, v2

    and-int v2, v1, v17

    or-int/2addr v0, v2

    and-int v2, v1, v21

    or-int v15, v0, v2

    shr-int/lit8 v0, v1, 0x1b

    and-int/lit8 v16, v0, 0xe

    const/16 v17, 0x200

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v22

    move-object/from16 v3, v23

    move-wide/from16 v4, v24

    move-wide/from16 v6, v26

    move/from16 v8, v28

    move-object/from16 v18, v10

    move-wide/from16 v9, v29

    move-object/from16 v11, v31

    move-object/from16 v13, p12

    move-object/from16 v14, v18

    invoke-static/range {v0 .. v17}, Landroidx/compose/material3/ModalBottomSheet_androidKt;->ModalBottomSheet-EP0qOeE(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;Landroidx/compose/material3/SheetState;Landroidx/compose/ui/graphics/Shape;JJFJLkotlin/jvm/functions/Function2;Landroidx/compose/foundation/layout/WindowInsets;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;III)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_2e

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_2e
    move-object/from16 v2, v19

    move-object/from16 v3, v22

    move-object/from16 v4, v23

    move-wide/from16 v5, v24

    move-wide/from16 v7, v26

    move/from16 v9, v28

    move-wide/from16 v10, v29

    move-object/from16 v12, v31

    .line 304
    :goto_20
    invoke-interface/range {v18 .. v18}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v15

    if-nez v15, :cond_2f

    goto :goto_21

    :cond_2f
    new-instance v16, Landroidx/compose/material3/ModalBottomSheet_androidKt$ModalBottomSheet$5;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    move-object/from16 v13, p12

    move/from16 v14, p14

    move-object/from16 v32, v15

    move/from16 v15, p15

    invoke-direct/range {v0 .. v15}, Landroidx/compose/material3/ModalBottomSheet_androidKt$ModalBottomSheet$5;-><init>(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;Landroidx/compose/material3/SheetState;Landroidx/compose/ui/graphics/Shape;JJFJLkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function3;II)V

    move-object/from16 v0, v16

    check-cast v0, Lkotlin/jvm/functions/Function2;

    move-object/from16 v1, v32

    invoke-interface {v1, v0}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    :goto_21
    return-void
.end method

.method private static final ModalBottomSheetAnchorChangeHandler(Landroidx/compose/material3/SheetState;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;)Landroidx/compose/material3/AnchorChangeHandler;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/material3/SheetState;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroidx/compose/material3/SheetValue;",
            "-",
            "Ljava/lang/Float;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/compose/material3/SheetValue;",
            "Lkotlin/Unit;",
            ">;)",
            "Landroidx/compose/material3/AnchorChangeHandler<",
            "Landroidx/compose/material3/SheetValue;",
            ">;"
        }
    .end annotation

    .line 389
    new-instance v0, Landroidx/compose/material3/ModalBottomSheet_androidKt$ModalBottomSheetAnchorChangeHandler$1;

    invoke-direct {v0, p0, p1, p2}, Landroidx/compose/material3/ModalBottomSheet_androidKt$ModalBottomSheetAnchorChangeHandler$1;-><init>(Landroidx/compose/material3/SheetState;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;)V

    check-cast v0, Landroidx/compose/material3/AnchorChangeHandler;

    return-object v0
.end method

.method public static final ModalBottomSheetPopup(Lkotlin/jvm/functions/Function0;Landroidx/compose/foundation/layout/WindowInsets;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;",
            "Landroidx/compose/foundation/layout/WindowInsets;",
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

    const-string v0, "onDismissRequest"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "windowInsets"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "content"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const v0, -0x256293b8

    .line 420
    invoke-interface {p3, v0}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object p3

    const-string v1, "C(ModalBottomSheetPopup)P(1,2)420@17875L7,421@17896L38,422@17963L28,423@18018L29,424@18081L621,446@18708L217:ModalBottomSheet.android.kt#uh7d8r"

    invoke-static {p3, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    and-int/lit8 v1, p4, 0xe

    if-nez v1, :cond_1

    invoke-interface {p3, p0}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x4

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    :goto_0
    or-int/2addr v1, p4

    goto :goto_1

    :cond_1
    move v1, p4

    :goto_1
    and-int/lit8 v2, p4, 0x70

    if-nez v2, :cond_3

    invoke-interface {p3, p1}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/16 v2, 0x20

    goto :goto_2

    :cond_2
    const/16 v2, 0x10

    :goto_2
    or-int/2addr v1, v2

    :cond_3
    and-int/lit16 v2, p4, 0x380

    if-nez v2, :cond_5

    invoke-interface {p3, p2}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const/16 v2, 0x100

    goto :goto_3

    :cond_4
    const/16 v2, 0x80

    :goto_3
    or-int/2addr v1, v2

    :cond_5
    move v8, v1

    and-int/lit16 v1, v8, 0x2db

    const/16 v2, 0x92

    if-ne v1, v2, :cond_7

    invoke-interface {p3}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result v1

    if-nez v1, :cond_6

    goto :goto_4

    .line 454
    :cond_6
    invoke-interface {p3}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    goto/16 :goto_5

    .line 420
    :cond_7
    :goto_4
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v1

    if-eqz v1, :cond_8

    const/4 v1, -0x1

    const-string v2, "androidx.compose.material3.ModalBottomSheetPopup (ModalBottomSheet.android.kt:415)"

    invoke-static {v0, v8, v1, v2}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 421
    :cond_8
    invoke-static {}, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->getLocalView()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v0

    check-cast v0, Landroidx/compose/runtime/CompositionLocal;

    const v1, 0x789c5f52

    const-string v2, "CC:CompositionLocal.kt#9igjgp"

    .line 618
    invoke-static {p3, v1, v2}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    invoke-interface {p3, v0}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {p3}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 421
    check-cast v0, Landroid/view/View;

    const/4 v9, 0x0

    new-array v1, v9, [Ljava/lang/Object;

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 422
    sget-object v4, Landroidx/compose/material3/ModalBottomSheet_androidKt$ModalBottomSheetPopup$id$1;->INSTANCE:Landroidx/compose/material3/ModalBottomSheet_androidKt$ModalBottomSheetPopup$id$1;

    check-cast v4, Lkotlin/jvm/functions/Function0;

    const/16 v6, 0xc08

    const/4 v7, 0x6

    move-object v5, p3

    invoke-static/range {v1 .. v7}, Landroidx/compose/runtime/saveable/RememberSaveableKt;->rememberSaveable([Ljava/lang/Object;Landroidx/compose/runtime/saveable/Saver;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;II)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/UUID;

    .line 423
    invoke-static {p3, v9}, Landroidx/compose/runtime/ComposablesKt;->rememberCompositionContext(Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/CompositionContext;

    move-result-object v2

    shr-int/lit8 v3, v8, 0x6

    and-int/lit8 v3, v3, 0xe

    .line 424
    invoke-static {p2, p3, v3}, Landroidx/compose/runtime/SnapshotStateKt;->rememberUpdatedState(Ljava/lang/Object;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/State;

    move-result-object v3

    const v4, -0x1d58f75c

    .line 425
    invoke-interface {p3, v4}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v4, "CC(remember):Composables.kt#9igjgp"

    invoke-static {p3, v4}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 620
    invoke-interface {p3}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v4

    .line 621
    sget-object v5, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v5}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v5

    if-ne v4, v5, :cond_9

    .line 426
    new-instance v4, Landroidx/compose/material3/ModalBottomSheetWindow;

    const-string v5, "id"

    .line 429
    invoke-static {v1, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 426
    invoke-direct {v4, p0, v0, v1}, Landroidx/compose/material3/ModalBottomSheetWindow;-><init>(Lkotlin/jvm/functions/Function0;Landroid/view/View;Ljava/util/UUID;)V

    .line 433
    new-instance v0, Landroidx/compose/material3/ModalBottomSheet_androidKt$ModalBottomSheetPopup$modalBottomSheetWindow$1$1$1;

    invoke-direct {v0, p1, v3}, Landroidx/compose/material3/ModalBottomSheet_androidKt$ModalBottomSheetPopup$modalBottomSheetWindow$1$1$1;-><init>(Landroidx/compose/foundation/layout/WindowInsets;Landroidx/compose/runtime/State;)V

    const v1, 0x33553b7d

    const/4 v3, 0x1

    invoke-static {v1, v3, v0}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->composableLambdaInstance(IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v0

    check-cast v0, Lkotlin/jvm/functions/Function2;

    .line 431
    invoke-virtual {v4, v2, v0}, Landroidx/compose/material3/ModalBottomSheetWindow;->setCustomContent(Landroidx/compose/runtime/CompositionContext;Lkotlin/jvm/functions/Function2;)V

    .line 623
    invoke-interface {p3, v4}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 619
    :cond_9
    invoke-interface {p3}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 425
    check-cast v4, Landroidx/compose/material3/ModalBottomSheetWindow;

    .line 447
    new-instance v0, Landroidx/compose/material3/ModalBottomSheet_androidKt$ModalBottomSheetPopup$1;

    invoke-direct {v0, v4}, Landroidx/compose/material3/ModalBottomSheet_androidKt$ModalBottomSheetPopup$1;-><init>(Landroidx/compose/material3/ModalBottomSheetWindow;)V

    check-cast v0, Lkotlin/jvm/functions/Function1;

    const/16 v1, 0x8

    invoke-static {v4, v0, p3, v1}, Landroidx/compose/runtime/EffectsKt;->DisposableEffect(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    .line 454
    :cond_a
    :goto_5
    invoke-interface {p3}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object p3

    if-nez p3, :cond_b

    goto :goto_6

    :cond_b
    new-instance v0, Landroidx/compose/material3/ModalBottomSheet_androidKt$ModalBottomSheetPopup$2;

    invoke-direct {v0, p0, p1, p2, p4}, Landroidx/compose/material3/ModalBottomSheet_androidKt$ModalBottomSheetPopup$2;-><init>(Lkotlin/jvm/functions/Function0;Landroidx/compose/foundation/layout/WindowInsets;Lkotlin/jvm/functions/Function2;I)V

    check-cast v0, Lkotlin/jvm/functions/Function2;

    invoke-interface {p3, v0}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    :goto_6
    return-void
.end method

.method private static final ModalBottomSheetPopup$lambda$5(Landroidx/compose/runtime/State;)Lkotlin/jvm/functions/Function2;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/State<",
            "+",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;>;)",
            "Lkotlin/jvm/functions/Function2<",
            "Landroidx/compose/runtime/Composer;",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 627
    invoke-interface {p0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lkotlin/jvm/functions/Function2;

    return-object p0
.end method

.method private static final Scrim-3J-VO9M(JLkotlin/jvm/functions/Function0;ZLandroidx/compose/runtime/Composer;I)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;Z",
            "Landroidx/compose/runtime/Composer;",
            "I)V"
        }
    .end annotation

    const v0, 0x3ed133e4

    .line 326
    invoke-interface {p4, v0}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object p4

    const-string v1, "C(Scrim)P(0:c#ui.graphics.Color)327@14631L121,346@15192L62,342@15086L168:ModalBottomSheet.android.kt#uh7d8r"

    invoke-static {p4, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    and-int/lit8 v1, p5, 0xe

    if-nez v1, :cond_1

    invoke-interface {p4, p0, p1}, Landroidx/compose/runtime/Composer;->changed(J)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x4

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    :goto_0
    or-int/2addr v1, p5

    goto :goto_1

    :cond_1
    move v1, p5

    :goto_1
    and-int/lit8 v2, p5, 0x70

    if-nez v2, :cond_3

    invoke-interface {p4, p2}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/16 v2, 0x20

    goto :goto_2

    :cond_2
    const/16 v2, 0x10

    :goto_2
    or-int/2addr v1, v2

    :cond_3
    and-int/lit16 v2, p5, 0x380

    if-nez v2, :cond_5

    invoke-interface {p4, p3}, Landroidx/compose/runtime/Composer;->changed(Z)Z

    move-result v2

    if-eqz v2, :cond_4

    const/16 v2, 0x100

    goto :goto_3

    :cond_4
    const/16 v2, 0x80

    :goto_3
    or-int/2addr v1, v2

    :cond_5
    and-int/lit16 v2, v1, 0x2db

    const/16 v3, 0x92

    if-ne v2, v3, :cond_7

    invoke-interface {p4}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result v2

    if-nez v2, :cond_6

    goto :goto_4

    .line 351
    :cond_6
    invoke-interface {p4}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    goto/16 :goto_7

    .line 326
    :cond_7
    :goto_4
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v2

    if-eqz v2, :cond_8

    const/4 v2, -0x1

    const-string v3, "androidx.compose.material3.Scrim (ModalBottomSheet.android.kt:321)"

    invoke-static {v0, v1, v2, v3}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 602
    :cond_8
    sget-object v0, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/graphics/Color$Companion;->getUnspecified-0d7_KjU()J

    move-result-wide v0

    cmp-long v0, p0, v0

    if-eqz v0, :cond_f

    const/4 v0, 0x0

    if-eqz p3, :cond_9

    const/high16 v1, 0x3f800000    # 1.0f

    goto :goto_5

    :cond_9
    move v1, v0

    .line 330
    :goto_5
    new-instance v8, Landroidx/compose/animation/core/TweenSpec;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x7

    const/4 v7, 0x0

    move-object v2, v8

    invoke-direct/range {v2 .. v7}, Landroidx/compose/animation/core/TweenSpec;-><init>(IILandroidx/compose/animation/core/Easing;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object v2, v8

    check-cast v2, Landroidx/compose/animation/core/AnimationSpec;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v7, 0x30

    const/16 v8, 0x1c

    move-object v6, p4

    .line 328
    invoke-static/range {v1 .. v8}, Landroidx/compose/animation/core/AnimateAsStateKt;->animateFloatAsState(FLandroidx/compose/animation/core/AnimationSpec;FLjava/lang/String;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)Landroidx/compose/runtime/State;

    move-result-object v1

    const v2, -0x6ec9d6a7    # -1.437001E-28f

    invoke-interface {p4, v2}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v2, "333@14864L124"

    invoke-static {p4, v2}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    const/4 v2, 0x0

    if-eqz p3, :cond_c

    .line 333
    sget-object v3, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v3, Landroidx/compose/ui/Modifier;

    const v4, 0x44faf204

    .line 334
    invoke-interface {p4, v4}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v4, "CC(remember)P(1):Composables.kt#9igjgp"

    invoke-static {p4, v4}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 603
    invoke-interface {p4, p2}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v4

    .line 604
    invoke-interface {p4}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v5

    if-nez v4, :cond_a

    .line 605
    sget-object v4, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v4}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v4

    if-ne v5, v4, :cond_b

    .line 334
    :cond_a
    new-instance v4, Landroidx/compose/material3/ModalBottomSheet_androidKt$Scrim$dismissSheet$1$1;

    invoke-direct {v4, p2, v2}, Landroidx/compose/material3/ModalBottomSheet_androidKt$Scrim$dismissSheet$1$1;-><init>(Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)V

    move-object v5, v4

    check-cast v5, Lkotlin/jvm/functions/Function2;

    .line 607
    invoke-interface {p4, v5}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 603
    :cond_b
    invoke-interface {p4}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    check-cast v5, Lkotlin/jvm/functions/Function2;

    .line 334
    invoke-static {v3, p2, v5}, Landroidx/compose/ui/input/pointer/SuspendingPointerInputFilterKt;->pointerInput(Landroidx/compose/ui/Modifier;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)Landroidx/compose/ui/Modifier;

    move-result-object v3

    .line 339
    sget-object v4, Landroidx/compose/material3/ModalBottomSheet_androidKt$Scrim$dismissSheet$2;->INSTANCE:Landroidx/compose/material3/ModalBottomSheet_androidKt$Scrim$dismissSheet$2;

    check-cast v4, Lkotlin/jvm/functions/Function1;

    invoke-static {v3, v4}, Landroidx/compose/ui/semantics/SemanticsModifierKt;->clearAndSetSemantics(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    move-result-object v3

    goto :goto_6

    .line 341
    :cond_c
    sget-object v3, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v3, Landroidx/compose/ui/Modifier;

    .line 332
    :goto_6
    invoke-interface {p4}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 344
    sget-object v4, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v4, Landroidx/compose/ui/Modifier;

    const/4 v5, 0x1

    .line 345
    invoke-static {v4, v0, v5, v2}, Landroidx/compose/foundation/layout/SizeKt;->fillMaxSize$default(Landroidx/compose/ui/Modifier;FILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    .line 346
    invoke-interface {v0, v3}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    invoke-static {p0, p1}, Landroidx/compose/ui/graphics/Color;->box-impl(J)Landroidx/compose/ui/graphics/Color;

    move-result-object v2

    const v3, 0x1e7b2b64

    .line 347
    invoke-interface {p4, v3}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v3, "CC(remember)P(1,2):Composables.kt#9igjgp"

    invoke-static {p4, v3}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 610
    invoke-interface {p4, v2}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v2

    invoke-interface {p4, v1}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v3

    or-int/2addr v2, v3

    .line 612
    invoke-interface {p4}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v3

    if-nez v2, :cond_d

    .line 613
    sget-object v2, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v2}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v2

    if-ne v3, v2, :cond_e

    .line 347
    :cond_d
    new-instance v2, Landroidx/compose/material3/ModalBottomSheet_androidKt$Scrim$1$1;

    invoke-direct {v2, p0, p1, v1}, Landroidx/compose/material3/ModalBottomSheet_androidKt$Scrim$1$1;-><init>(JLandroidx/compose/runtime/State;)V

    move-object v3, v2

    check-cast v3, Lkotlin/jvm/functions/Function1;

    .line 615
    invoke-interface {p4, v3}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 611
    :cond_e
    invoke-interface {p4}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    check-cast v3, Lkotlin/jvm/functions/Function1;

    const/4 v1, 0x0

    .line 343
    invoke-static {v0, v3, p4, v1}, Landroidx/compose/foundation/CanvasKt;->Canvas(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V

    :cond_f
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    .line 351
    :cond_10
    :goto_7
    invoke-interface {p4}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object p4

    if-nez p4, :cond_11

    goto :goto_8

    :cond_11
    new-instance v6, Landroidx/compose/material3/ModalBottomSheet_androidKt$Scrim$2;

    move-object v0, v6

    move-wide v1, p0

    move-object v3, p2

    move v4, p3

    move v5, p5

    invoke-direct/range {v0 .. v5}, Landroidx/compose/material3/ModalBottomSheet_androidKt$Scrim$2;-><init>(JLkotlin/jvm/functions/Function0;ZI)V

    check-cast v6, Lkotlin/jvm/functions/Function2;

    invoke-interface {p4, v6}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    :goto_8
    return-void
.end method

.method private static final Scrim_3J_VO9M$lambda$2(Landroidx/compose/runtime/State;)F
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/State<",
            "Ljava/lang/Float;",
            ">;)F"
        }
    .end annotation

    .line 626
    invoke-interface {p0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->floatValue()F

    move-result p0

    return p0
.end method

.method public static final synthetic access$ModalBottomSheetAnchorChangeHandler(Landroidx/compose/material3/SheetState;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;)Landroidx/compose/material3/AnchorChangeHandler;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Landroidx/compose/material3/ModalBottomSheet_androidKt;->ModalBottomSheetAnchorChangeHandler(Landroidx/compose/material3/SheetState;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;)Landroidx/compose/material3/AnchorChangeHandler;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$ModalBottomSheetPopup$lambda$5(Landroidx/compose/runtime/State;)Lkotlin/jvm/functions/Function2;
    .locals 0

    .line 1
    invoke-static {p0}, Landroidx/compose/material3/ModalBottomSheet_androidKt;->ModalBottomSheetPopup$lambda$5(Landroidx/compose/runtime/State;)Lkotlin/jvm/functions/Function2;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$Scrim-3J-VO9M(JLkotlin/jvm/functions/Function0;ZLandroidx/compose/runtime/Composer;I)V
    .locals 0

    .line 1
    invoke-static/range {p0 .. p5}, Landroidx/compose/material3/ModalBottomSheet_androidKt;->Scrim-3J-VO9M(JLkotlin/jvm/functions/Function0;ZLandroidx/compose/runtime/Composer;I)V

    return-void
.end method

.method public static final synthetic access$Scrim_3J_VO9M$lambda$2(Landroidx/compose/runtime/State;)F
    .locals 0

    .line 1
    invoke-static {p0}, Landroidx/compose/material3/ModalBottomSheet_androidKt;->Scrim_3J_VO9M$lambda$2(Landroidx/compose/runtime/State;)F

    move-result p0

    return p0
.end method

.method public static final synthetic access$modalBottomSheetSwipeable(Landroidx/compose/ui/Modifier;Landroidx/compose/material3/SheetState;Landroidx/compose/material3/AnchorChangeHandler;FLkotlin/jvm/functions/Function2;)Landroidx/compose/ui/Modifier;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3, p4}, Landroidx/compose/material3/ModalBottomSheet_androidKt;->modalBottomSheetSwipeable(Landroidx/compose/ui/Modifier;Landroidx/compose/material3/SheetState;Landroidx/compose/material3/AnchorChangeHandler;FLkotlin/jvm/functions/Function2;)Landroidx/compose/ui/Modifier;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$modalBottomSheetSwipeable$suspendConversion0(Lkotlin/jvm/functions/Function2;Lkotlinx/coroutines/CoroutineScope;FLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Landroidx/compose/material3/ModalBottomSheet_androidKt;->modalBottomSheetSwipeable$suspendConversion0(Lkotlin/jvm/functions/Function2;Lkotlinx/coroutines/CoroutineScope;FLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private static final modalBottomSheetSwipeable(Landroidx/compose/ui/Modifier;Landroidx/compose/material3/SheetState;Landroidx/compose/material3/AnchorChangeHandler;FLkotlin/jvm/functions/Function2;)Landroidx/compose/ui/Modifier;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/Modifier;",
            "Landroidx/compose/material3/SheetState;",
            "Landroidx/compose/material3/AnchorChangeHandler<",
            "Landroidx/compose/material3/SheetValue;",
            ">;F",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lkotlinx/coroutines/CoroutineScope;",
            "-",
            "Ljava/lang/Float;",
            "Lkotlin/Unit;",
            ">;)",
            "Landroidx/compose/ui/Modifier;"
        }
    .end annotation

    .line 360
    invoke-virtual {p1}, Landroidx/compose/material3/SheetState;->getSwipeableState$material3_release()Landroidx/compose/material3/SwipeableV2State;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/material3/SwipeableV2State;->getSwipeDraggableState$material3_release()Landroidx/compose/foundation/gestures/DraggableState;

    move-result-object v2

    .line 361
    sget-object v3, Landroidx/compose/foundation/gestures/Orientation;->Vertical:Landroidx/compose/foundation/gestures/Orientation;

    .line 362
    invoke-virtual {p1}, Landroidx/compose/material3/SheetState;->isVisible()Z

    move-result v4

    const/4 v5, 0x0

    .line 363
    invoke-virtual {p1}, Landroidx/compose/material3/SheetState;->getSwipeableState$material3_release()Landroidx/compose/material3/SwipeableV2State;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/material3/SwipeableV2State;->isAnimationRunning()Z

    move-result v6

    const/4 v7, 0x0

    .line 364
    new-instance v0, Landroidx/compose/material3/ModalBottomSheet_androidKt$modalBottomSheetSwipeable$1;

    move-object/from16 v1, p4

    invoke-direct {v0, v1}, Landroidx/compose/material3/ModalBottomSheet_androidKt$modalBottomSheetSwipeable$1;-><init>(Ljava/lang/Object;)V

    move-object v8, v0

    check-cast v8, Lkotlin/jvm/functions/Function3;

    const/4 v9, 0x0

    const/16 v10, 0xa8

    const/4 v11, 0x0

    move-object v1, p0

    .line 359
    invoke-static/range {v1 .. v11}, Landroidx/compose/foundation/gestures/DraggableKt;->draggable$default(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/gestures/DraggableState;Landroidx/compose/foundation/gestures/Orientation;ZLandroidx/compose/foundation/interaction/MutableInteractionSource;ZLkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function3;ZILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    .line 367
    invoke-virtual {p1}, Landroidx/compose/material3/SheetState;->getSwipeableState$material3_release()Landroidx/compose/material3/SwipeableV2State;

    move-result-object v1

    const/4 v2, 0x3

    new-array v2, v2, [Landroidx/compose/material3/SheetValue;

    const/4 v3, 0x0

    .line 369
    sget-object v4, Landroidx/compose/material3/SheetValue;->Hidden:Landroidx/compose/material3/SheetValue;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    sget-object v4, Landroidx/compose/material3/SheetValue;->PartiallyExpanded:Landroidx/compose/material3/SheetValue;

    aput-object v4, v2, v3

    const/4 v3, 0x2

    sget-object v4, Landroidx/compose/material3/SheetValue;->Expanded:Landroidx/compose/material3/SheetValue;

    aput-object v4, v2, v3

    invoke-static {v2}, Lkotlin/collections/SetsKt;->setOf([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v2

    .line 366
    new-instance v3, Landroidx/compose/material3/ModalBottomSheet_androidKt$modalBottomSheetSwipeable$2;

    move-object v4, p1

    move v5, p3

    invoke-direct {v3, p3, p1}, Landroidx/compose/material3/ModalBottomSheet_androidKt$modalBottomSheetSwipeable$2;-><init>(FLandroidx/compose/material3/SheetState;)V

    check-cast v3, Lkotlin/jvm/functions/Function2;

    move-object v4, p2

    invoke-static {v0, v1, v2, p2, v3}, Landroidx/compose/material3/SwipeableV2Kt;->swipeAnchors(Landroidx/compose/ui/Modifier;Landroidx/compose/material3/SwipeableV2State;Ljava/util/Set;Landroidx/compose/material3/AnchorChangeHandler;Lkotlin/jvm/functions/Function2;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    return-object v0
.end method

.method private static final synthetic modalBottomSheetSwipeable$suspendConversion0(Lkotlin/jvm/functions/Function2;Lkotlinx/coroutines/CoroutineScope;FLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 364
    invoke-static {p2}, Lkotlin/coroutines/jvm/internal/Boxing;->boxFloat(F)Ljava/lang/Float;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public static final rememberModalBottomSheetState(ZLkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)Landroidx/compose/material3/SheetState;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/compose/material3/SheetValue;",
            "Ljava/lang/Boolean;",
            ">;",
            "Landroidx/compose/runtime/Composer;",
            "II)",
            "Landroidx/compose/material3/SheetState;"
        }
    .end annotation

    const v0, -0x4b35744f

    invoke-interface {p2, v0}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v1, "C(rememberModalBottomSheetState)P(1)318@14402L69:ModalBottomSheet.android.kt#uh7d8r"

    invoke-static {p2, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    and-int/lit8 v1, p4, 0x1

    if-eqz v1, :cond_0

    const/4 p0, 0x0

    :cond_0
    move v1, p0

    and-int/lit8 p0, p4, 0x2

    if-eqz p0, :cond_1

    .line 318
    sget-object p0, Landroidx/compose/material3/ModalBottomSheet_androidKt$rememberModalBottomSheetState$1;->INSTANCE:Landroidx/compose/material3/ModalBottomSheet_androidKt$rememberModalBottomSheetState$1;

    move-object p1, p0

    check-cast p1, Lkotlin/jvm/functions/Function1;

    :cond_1
    move-object v2, p1

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result p0

    if-eqz p0, :cond_2

    const/4 p0, -0x1

    const-string p1, "androidx.compose.material3.rememberModalBottomSheetState (ModalBottomSheet.android.kt:315)"

    .line 319
    invoke-static {v0, p3, p0, p1}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_2
    sget-object v3, Landroidx/compose/material3/SheetValue;->Hidden:Landroidx/compose/material3/SheetValue;

    const/4 v4, 0x0

    and-int/lit8 p0, p3, 0xe

    or-int/lit16 p0, p0, 0x180

    and-int/lit8 p1, p3, 0x70

    or-int v6, p0, p1

    const/16 v7, 0x8

    move-object v5, p2

    invoke-static/range {v1 .. v7}, Landroidx/compose/material3/SheetDefaultsKt;->rememberSheetState(ZLkotlin/jvm/functions/Function1;Landroidx/compose/material3/SheetValue;ZLandroidx/compose/runtime/Composer;II)Landroidx/compose/material3/SheetState;

    move-result-object p0

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_3
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    return-object p0
.end method
