.class public final Landroidx/compose/material3/BottomSheetScaffoldKt;
.super Ljava/lang/Object;
.source "BottomSheetScaffold.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nBottomSheetScaffold.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BottomSheetScaffold.kt\nandroidx/compose/material3/BottomSheetScaffoldKt\n+ 2 Composables.kt\nandroidx/compose/runtime/ComposablesKt\n+ 3 Composer.kt\nandroidx/compose/runtime/ComposerKt\n+ 4 Effects.kt\nandroidx/compose/runtime/EffectsKt\n+ 5 Effects.kt\nandroidx/compose/runtime/EffectsKt$rememberCoroutineScope$1\n+ 6 CompositionLocal.kt\nandroidx/compose/runtime/CompositionLocal\n+ 7 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,396:1\n36#2:397\n25#2:404\n50#2:411\n49#2:412\n25#2:423\n50#2:436\n49#2:437\n36#2:444\n67#2,3:451\n66#2:454\n83#2,3:461\n1114#3,6:398\n1114#3,6:405\n1114#3,6:413\n1114#3,3:424\n1117#3,3:430\n1114#3,6:438\n1114#3,6:445\n1114#3,6:455\n1114#3,6:464\n474#4,4:419\n478#4,2:427\n482#4:433\n474#5:429\n76#6:434\n1#7:435\n*S KotlinDebug\n*F\n+ 1 BottomSheetScaffold.kt\nandroidx/compose/material3/BottomSheetScaffoldKt\n*L\n123#1:397\n169#1:404\n171#1:411\n171#1:412\n210#1:423\n215#1:436\n215#1:437\n236#1:444\n253#1:451,3\n253#1:454\n329#1:461,3\n123#1:398,6\n169#1:405,6\n171#1:413,6\n210#1:424,3\n210#1:430,3\n215#1:438,6\n236#1:445,6\n253#1:455,6\n329#1:464,6\n210#1:419,4\n210#1:427,2\n210#1:433\n210#1:429\n211#1:434\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0084\u0001\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0007\n\u0002\u0008\u0006\n\u0002\u0010\u0008\n\u0002\u0008\u0017\u001a\u0083\u0002\u0010\u0000\u001a\u00020\u00012\u001c\u0010\u0002\u001a\u0018\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00010\u0003\u00a2\u0006\u0002\u0008\u0005\u00a2\u0006\u0002\u0008\u00062\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u00082\u0008\u0008\u0002\u0010\t\u001a\u00020\n2\u0008\u0008\u0002\u0010\u000b\u001a\u00020\u000c2\u0008\u0008\u0002\u0010\r\u001a\u00020\u000e2\u0008\u0008\u0002\u0010\u000f\u001a\u00020\u00102\u0008\u0008\u0002\u0010\u0011\u001a\u00020\u00102\u0008\u0008\u0002\u0010\u0012\u001a\u00020\u000c2\u0008\u0008\u0002\u0010\u0013\u001a\u00020\u000c2\u0015\u0008\u0002\u0010\u0014\u001a\u000f\u0012\u0004\u0012\u00020\u0001\u0018\u00010\u0015\u00a2\u0006\u0002\u0008\u00052\u0008\u0008\u0002\u0010\u0016\u001a\u00020\u00172\u0015\u0008\u0002\u0010\u0018\u001a\u000f\u0012\u0004\u0012\u00020\u0001\u0018\u00010\u0015\u00a2\u0006\u0002\u0008\u00052\u0019\u0008\u0002\u0010\u0019\u001a\u0013\u0012\u0004\u0012\u00020\u001a\u0012\u0004\u0012\u00020\u00010\u0003\u00a2\u0006\u0002\u0008\u00052\u0008\u0008\u0002\u0010\u001b\u001a\u00020\u00102\u0008\u0008\u0002\u0010\u001c\u001a\u00020\u00102\u0017\u0010\u001d\u001a\u0013\u0012\u0004\u0012\u00020\u001e\u0012\u0004\u0012\u00020\u00010\u0003\u00a2\u0006\u0002\u0008\u0005H\u0007\u00f8\u0001\u0000\u00f8\u0001\u0001\u00a2\u0006\u0004\u0008\u001f\u0010 \u001aq\u0010!\u001a\u0008\u0012\u0004\u0012\u00020#0\"2\u0006\u0010$\u001a\u00020%26\u0010&\u001a2\u0012\u0013\u0012\u00110#\u00a2\u0006\u000c\u0008(\u0012\u0008\u0008)\u0012\u0004\u0008\u0008(*\u0012\u0013\u0012\u00110+\u00a2\u0006\u000c\u0008(\u0012\u0008\u0008)\u0012\u0004\u0008\u0008(,\u0012\u0004\u0012\u00020\u00010\'2!\u0010-\u001a\u001d\u0012\u0013\u0012\u00110#\u00a2\u0006\u000c\u0008(\u0012\u0008\u0008)\u0012\u0004\u0008\u0008(*\u0012\u0004\u0012\u00020\u00010\u0003H\u0003\u001a\u00c3\u0001\u0010.\u001a\u00020\u00012\u0006\u0010\u0007\u001a\u00020\u00082\u0013\u0010\u0018\u001a\u000f\u0012\u0004\u0012\u00020\u0001\u0018\u00010\u0015\u00a2\u0006\u0002\u0008\u00052&\u0010/\u001a\"\u0012\u0013\u0012\u00110\u001e\u00a2\u0006\u000c\u0008(\u0012\u0008\u0008)\u0012\u0004\u0008\u0008(0\u0012\u0004\u0012\u00020\u00010\u0003\u00a2\u0006\u0002\u0008\u00052&\u00101\u001a\"\u0012\u0013\u0012\u001102\u00a2\u0006\u000c\u0008(\u0012\u0008\u0008)\u0012\u0004\u0008\u0008(3\u0012\u0004\u0012\u00020\u00010\u0003\u00a2\u0006\u0002\u0008\u00052\u0011\u0010\u0019\u001a\r\u0012\u0004\u0012\u00020\u00010\u0015\u00a2\u0006\u0002\u0008\u00052\u0006\u0010\u000b\u001a\u00020\u000c2\u000c\u00104\u001a\u0008\u0012\u0004\u0012\u00020+0\u00152\u0006\u00105\u001a\u00020%2\u0006\u0010\u001b\u001a\u00020\u00102\u0006\u0010\u001c\u001a\u00020\u0010H\u0003\u00f8\u0001\u0000\u00f8\u0001\u0001\u00a2\u0006\u0004\u00086\u00107\u001a\u0090\u0001\u00108\u001a\u00020\u00012\u0006\u0010$\u001a\u00020%2\u0006\u00109\u001a\u00020\u000c2\u0006\u0010\u0016\u001a\u00020\u00172\u0006\u00103\u001a\u00020+2\u0006\u0010:\u001a\u00020\u000e2\u0006\u0010\u001b\u001a\u00020\u00102\u0006\u0010\u001c\u001a\u00020\u00102\u0006\u0010;\u001a\u00020\u000c2\u0006\u0010<\u001a\u00020\u000c2\u0013\u0010=\u001a\u000f\u0012\u0004\u0012\u00020\u0001\u0018\u00010\u0015\u00a2\u0006\u0002\u0008\u00052\u001c\u0010\u001d\u001a\u0018\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00010\u0003\u00a2\u0006\u0002\u0008\u0005\u00a2\u0006\u0002\u0008\u0006H\u0003\u00f8\u0001\u0000\u00f8\u0001\u0001\u00a2\u0006\u0004\u0008>\u0010?\u001a!\u0010@\u001a\u00020\n2\u0008\u0008\u0002\u0010A\u001a\u00020%2\u0008\u0008\u0002\u0010B\u001a\u00020\u001aH\u0007\u00a2\u0006\u0002\u0010C\u001a7\u0010D\u001a\u00020%2\u0008\u0008\u0002\u0010E\u001a\u00020#2\u0014\u0008\u0002\u0010F\u001a\u000e\u0012\u0004\u0012\u00020#\u0012\u0004\u0012\u00020\u00170\u00032\u0008\u0008\u0002\u0010G\u001a\u00020\u0017H\u0007\u00a2\u0006\u0002\u0010H\u0082\u0002\u000b\n\u0005\u0008\u00a1\u001e0\u0001\n\u0002\u0008\u0019\u00a8\u0006I"
    }
    d2 = {
        "BottomSheetScaffold",
        "",
        "sheetContent",
        "Lkotlin/Function1;",
        "Landroidx/compose/foundation/layout/ColumnScope;",
        "Landroidx/compose/runtime/Composable;",
        "Lkotlin/ExtensionFunctionType;",
        "modifier",
        "Landroidx/compose/ui/Modifier;",
        "scaffoldState",
        "Landroidx/compose/material3/BottomSheetScaffoldState;",
        "sheetPeekHeight",
        "Landroidx/compose/ui/unit/Dp;",
        "sheetShape",
        "Landroidx/compose/ui/graphics/Shape;",
        "sheetContainerColor",
        "Landroidx/compose/ui/graphics/Color;",
        "sheetContentColor",
        "sheetTonalElevation",
        "sheetShadowElevation",
        "sheetDragHandle",
        "Lkotlin/Function0;",
        "sheetSwipeEnabled",
        "",
        "topBar",
        "snackbarHost",
        "Landroidx/compose/material3/SnackbarHostState;",
        "containerColor",
        "contentColor",
        "content",
        "Landroidx/compose/foundation/layout/PaddingValues;",
        "BottomSheetScaffold-6cEcpDs",
        "(Lkotlin/jvm/functions/Function3;Landroidx/compose/ui/Modifier;Landroidx/compose/material3/BottomSheetScaffoldState;FLandroidx/compose/ui/graphics/Shape;JJFFLkotlin/jvm/functions/Function2;ZLkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function3;JJLkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;III)V",
        "BottomSheetScaffoldAnchorChangeHandler",
        "Landroidx/compose/material3/AnchorChangeHandler;",
        "Landroidx/compose/material3/SheetValue;",
        "state",
        "Landroidx/compose/material3/SheetState;",
        "animateTo",
        "Lkotlin/Function2;",
        "Lkotlin/ParameterName;",
        "name",
        "target",
        "",
        "velocity",
        "snapTo",
        "BottomSheetScaffoldLayout",
        "body",
        "innerPadding",
        "bottomSheet",
        "",
        "layoutHeight",
        "sheetOffset",
        "sheetState",
        "BottomSheetScaffoldLayout-PxNyym8",
        "(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function2;FLkotlin/jvm/functions/Function0;Landroidx/compose/material3/SheetState;JJLandroidx/compose/runtime/Composer;I)V",
        "StandardBottomSheet",
        "peekHeight",
        "shape",
        "tonalElevation",
        "shadowElevation",
        "dragHandle",
        "StandardBottomSheet-8oydGBM",
        "(Landroidx/compose/material3/SheetState;FZFLandroidx/compose/ui/graphics/Shape;JJFFLkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V",
        "rememberBottomSheetScaffoldState",
        "bottomSheetState",
        "snackbarHostState",
        "(Landroidx/compose/material3/SheetState;Landroidx/compose/material3/SnackbarHostState;Landroidx/compose/runtime/Composer;II)Landroidx/compose/material3/BottomSheetScaffoldState;",
        "rememberStandardBottomSheetState",
        "initialValue",
        "confirmValueChange",
        "skipHiddenState",
        "(Landroidx/compose/material3/SheetValue;Lkotlin/jvm/functions/Function1;ZLandroidx/compose/runtime/Composer;II)Landroidx/compose/material3/SheetState;",
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
.method public static final BottomSheetScaffold-6cEcpDs(Lkotlin/jvm/functions/Function3;Landroidx/compose/ui/Modifier;Landroidx/compose/material3/BottomSheetScaffoldState;FLandroidx/compose/ui/graphics/Shape;JJFFLkotlin/jvm/functions/Function2;ZLkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function3;JJLkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;III)V
    .locals 30
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function3<",
            "-",
            "Landroidx/compose/foundation/layout/ColumnScope;",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;",
            "Landroidx/compose/ui/Modifier;",
            "Landroidx/compose/material3/BottomSheetScaffoldState;",
            "F",
            "Landroidx/compose/ui/graphics/Shape;",
            "JJFF",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;Z",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function3<",
            "-",
            "Landroidx/compose/material3/SnackbarHostState;",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;JJ",
            "Lkotlin/jvm/functions/Function3<",
            "-",
            "Landroidx/compose/foundation/layout/PaddingValues;",
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

    move-object/from16 v15, p19

    move/from16 v14, p21

    move/from16 v13, p22

    move/from16 v12, p23

    const-string/jumbo v0, "sheetContent"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "content"

    invoke-static {v15, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const v0, 0x8a2fa97

    move-object/from16 v2, p20

    .line 114
    invoke-interface {v2, v0}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object v2

    const-string v3, "C(BottomSheetScaffold)P(6,3,4,9:c#ui.unit.Dp,11,5:c#ui.graphics.Color,7:c#ui.graphics.Color,13:c#ui.unit.Dp,10:c#ui.unit.Dp,8,12,15,14,0:c#ui.graphics.Color,2:c#ui.graphics.Color)99@5165L34,101@5308L13,102@5376L14,103@5423L36,110@5880L11,111@5927L31,122@6281L50,114@6017L1096:BottomSheetScaffold.kt#uh7d8r"

    invoke-static {v2, v3}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    and-int/lit8 v3, v12, 0x1

    if-eqz v3, :cond_0

    or-int/lit8 v3, v14, 0x6

    goto :goto_1

    :cond_0
    and-int/lit8 v3, v14, 0xe

    if-nez v3, :cond_2

    invoke-interface {v2, v1}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

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
    and-int/lit8 v6, v12, 0x2

    if-eqz v6, :cond_3

    or-int/lit8 v3, v3, 0x30

    goto :goto_3

    :cond_3
    and-int/lit8 v9, v14, 0x70

    if-nez v9, :cond_5

    move-object/from16 v9, p1

    invoke-interface {v2, v9}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    const/16 v10, 0x20

    goto :goto_2

    :cond_4
    const/16 v10, 0x10

    :goto_2
    or-int/2addr v3, v10

    goto :goto_4

    :cond_5
    :goto_3
    move-object/from16 v9, p1

    :goto_4
    and-int/lit16 v10, v14, 0x380

    const/16 v16, 0x80

    if-nez v10, :cond_8

    and-int/lit8 v10, v12, 0x4

    if-nez v10, :cond_6

    move-object/from16 v10, p2

    invoke-interface {v2, v10}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_7

    const/16 v17, 0x100

    goto :goto_5

    :cond_6
    move-object/from16 v10, p2

    :cond_7
    move/from16 v17, v16

    :goto_5
    or-int v3, v3, v17

    goto :goto_6

    :cond_8
    move-object/from16 v10, p2

    :goto_6
    and-int/lit8 v17, v12, 0x8

    const/16 v18, 0x800

    const/16 v19, 0x400

    if-eqz v17, :cond_9

    or-int/lit16 v3, v3, 0xc00

    goto :goto_8

    :cond_9
    and-int/lit16 v4, v14, 0x1c00

    if-nez v4, :cond_b

    move/from16 v4, p3

    invoke-interface {v2, v4}, Landroidx/compose/runtime/Composer;->changed(F)Z

    move-result v20

    if-eqz v20, :cond_a

    move/from16 v20, v18

    goto :goto_7

    :cond_a
    move/from16 v20, v19

    :goto_7
    or-int v3, v3, v20

    goto :goto_9

    :cond_b
    :goto_8
    move/from16 v4, p3

    :goto_9
    const v20, 0xe000

    and-int v20, v14, v20

    const/16 v21, 0x4000

    const/16 v22, 0x2000

    if-nez v20, :cond_d

    and-int/lit8 v20, v12, 0x10

    move-object/from16 v5, p4

    if-nez v20, :cond_c

    invoke-interface {v2, v5}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_c

    move/from16 v23, v21

    goto :goto_a

    :cond_c
    move/from16 v23, v22

    :goto_a
    or-int v3, v3, v23

    goto :goto_b

    :cond_d
    move-object/from16 v5, p4

    :goto_b
    const/high16 v23, 0x70000

    and-int v24, v14, v23

    if-nez v24, :cond_f

    and-int/lit8 v24, v12, 0x20

    move-wide/from16 v7, p5

    if-nez v24, :cond_e

    invoke-interface {v2, v7, v8}, Landroidx/compose/runtime/Composer;->changed(J)Z

    move-result v26

    if-eqz v26, :cond_e

    const/high16 v26, 0x20000

    goto :goto_c

    :cond_e
    const/high16 v26, 0x10000

    :goto_c
    or-int v3, v3, v26

    goto :goto_d

    :cond_f
    move-wide/from16 v7, p5

    :goto_d
    const/high16 v26, 0x380000

    and-int v26, v14, v26

    if-nez v26, :cond_11

    and-int/lit8 v26, v12, 0x40

    move-wide/from16 v0, p7

    if-nez v26, :cond_10

    invoke-interface {v2, v0, v1}, Landroidx/compose/runtime/Composer;->changed(J)Z

    move-result v27

    if-eqz v27, :cond_10

    const/high16 v27, 0x100000

    goto :goto_e

    :cond_10
    const/high16 v27, 0x80000

    :goto_e
    or-int v3, v3, v27

    goto :goto_f

    :cond_11
    move-wide/from16 v0, p7

    :goto_f
    and-int/lit16 v11, v12, 0x80

    if-eqz v11, :cond_12

    const/high16 v28, 0xc00000

    or-int v3, v3, v28

    move/from16 v0, p9

    goto :goto_11

    :cond_12
    const/high16 v28, 0x1c00000

    and-int v28, v14, v28

    move/from16 v0, p9

    if-nez v28, :cond_14

    invoke-interface {v2, v0}, Landroidx/compose/runtime/Composer;->changed(F)Z

    move-result v1

    if-eqz v1, :cond_13

    const/high16 v1, 0x800000

    goto :goto_10

    :cond_13
    const/high16 v1, 0x400000

    :goto_10
    or-int/2addr v3, v1

    :cond_14
    :goto_11
    and-int/lit16 v1, v12, 0x100

    if-eqz v1, :cond_15

    const/high16 v28, 0x6000000

    or-int v3, v3, v28

    move/from16 v0, p10

    goto :goto_13

    :cond_15
    const/high16 v28, 0xe000000

    and-int v28, v14, v28

    move/from16 v0, p10

    if-nez v28, :cond_17

    invoke-interface {v2, v0}, Landroidx/compose/runtime/Composer;->changed(F)Z

    move-result v28

    if-eqz v28, :cond_16

    const/high16 v28, 0x4000000

    goto :goto_12

    :cond_16
    const/high16 v28, 0x2000000

    :goto_12
    or-int v3, v3, v28

    :cond_17
    :goto_13
    and-int/lit16 v0, v12, 0x200

    if-eqz v0, :cond_18

    const/high16 v28, 0x30000000

    or-int v3, v3, v28

    move-object/from16 v4, p11

    goto :goto_15

    :cond_18
    const/high16 v28, 0x70000000

    and-int v28, v14, v28

    move-object/from16 v4, p11

    if-nez v28, :cond_1a

    invoke-interface {v2, v4}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_19

    const/high16 v28, 0x20000000

    goto :goto_14

    :cond_19
    const/high16 v28, 0x10000000

    :goto_14
    or-int v3, v3, v28

    :cond_1a
    :goto_15
    and-int/lit16 v4, v12, 0x400

    if-eqz v4, :cond_1b

    or-int/lit8 v20, v13, 0x6

    move/from16 v5, p12

    goto :goto_17

    :cond_1b
    and-int/lit8 v28, v13, 0xe

    move/from16 v5, p12

    if-nez v28, :cond_1d

    invoke-interface {v2, v5}, Landroidx/compose/runtime/Composer;->changed(Z)Z

    move-result v28

    if-eqz v28, :cond_1c

    const/16 v20, 0x4

    goto :goto_16

    :cond_1c
    const/16 v20, 0x2

    :goto_16
    or-int v20, v13, v20

    goto :goto_17

    :cond_1d
    move/from16 v20, v13

    :goto_17
    and-int/lit16 v5, v12, 0x800

    if-eqz v5, :cond_1e

    or-int/lit8 v20, v20, 0x30

    move-object/from16 v7, p13

    goto :goto_19

    :cond_1e
    and-int/lit8 v28, v13, 0x70

    move-object/from16 v7, p13

    if-nez v28, :cond_20

    invoke-interface {v2, v7}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1f

    const/16 v24, 0x20

    goto :goto_18

    :cond_1f
    const/16 v24, 0x10

    :goto_18
    or-int v20, v20, v24

    :cond_20
    :goto_19
    move/from16 v8, v20

    and-int/lit16 v7, v12, 0x1000

    if-eqz v7, :cond_21

    or-int/lit16 v8, v8, 0x180

    goto :goto_1b

    :cond_21
    and-int/lit16 v9, v13, 0x380

    if-nez v9, :cond_23

    move-object/from16 v9, p14

    invoke-interface {v2, v9}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_22

    const/16 v27, 0x100

    goto :goto_1a

    :cond_22
    move/from16 v27, v16

    :goto_1a
    or-int v8, v8, v27

    goto :goto_1c

    :cond_23
    :goto_1b
    move-object/from16 v9, p14

    :goto_1c
    and-int/lit16 v9, v13, 0x1c00

    if-nez v9, :cond_26

    and-int/lit16 v9, v12, 0x2000

    if-nez v9, :cond_24

    move-wide/from16 v9, p15

    invoke-interface {v2, v9, v10}, Landroidx/compose/runtime/Composer;->changed(J)Z

    move-result v16

    if-eqz v16, :cond_25

    goto :goto_1d

    :cond_24
    move-wide/from16 v9, p15

    :cond_25
    move/from16 v18, v19

    :goto_1d
    or-int v8, v8, v18

    goto :goto_1e

    :cond_26
    move-wide/from16 v9, p15

    :goto_1e
    const v16, 0xe000

    and-int v16, v13, v16

    if-nez v16, :cond_29

    and-int/lit16 v9, v12, 0x4000

    if-nez v9, :cond_27

    move-wide/from16 v9, p17

    invoke-interface {v2, v9, v10}, Landroidx/compose/runtime/Composer;->changed(J)Z

    move-result v16

    if-eqz v16, :cond_28

    goto :goto_1f

    :cond_27
    move-wide/from16 v9, p17

    :cond_28
    move/from16 v21, v22

    :goto_1f
    or-int v8, v8, v21

    goto :goto_20

    :cond_29
    move-wide/from16 v9, p17

    :goto_20
    const v16, 0x8000

    and-int v16, v12, v16

    if-eqz v16, :cond_2a

    const/high16 v16, 0x30000

    :goto_21
    or-int v8, v8, v16

    goto :goto_22

    :cond_2a
    and-int v16, v13, v23

    if-nez v16, :cond_2c

    invoke-interface {v2, v15}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_2b

    const/high16 v16, 0x20000

    goto :goto_21

    :cond_2b
    const/high16 v16, 0x10000

    goto :goto_21

    :cond_2c
    :goto_22
    const v16, 0x5b6db6db

    and-int v9, v3, v16

    const v10, 0x12492492

    if-ne v9, v10, :cond_2e

    const v9, 0x5b6db

    and-int/2addr v9, v8

    const v10, 0x12492

    if-ne v9, v10, :cond_2e

    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result v9

    if-nez v9, :cond_2d

    goto :goto_23

    .line 143
    :cond_2d
    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move/from16 v5, p3

    move-object/from16 v6, p4

    move-wide/from16 v9, p5

    move-wide/from16 v19, p7

    move/from16 v11, p9

    move/from16 v12, p10

    move-object/from16 v13, p11

    move/from16 v14, p12

    move-object/from16 v17, p13

    move-object/from16 v15, p14

    move-wide/from16 v21, p15

    move-wide/from16 v24, p17

    goto/16 :goto_33

    .line 114
    :cond_2e
    :goto_23
    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->startDefaults()V

    and-int/lit8 v9, v14, 0x1

    if-eqz v9, :cond_36

    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->getDefaultsInvalid()Z

    move-result v9

    if-eqz v9, :cond_2f

    goto :goto_24

    .line 112
    :cond_2f
    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    and-int/lit8 v0, v12, 0x4

    if-eqz v0, :cond_30

    and-int/lit16 v3, v3, -0x381

    :cond_30
    and-int/lit8 v0, v12, 0x10

    if-eqz v0, :cond_31

    const v0, -0xe001

    and-int/2addr v3, v0

    :cond_31
    and-int/lit8 v0, v12, 0x20

    if-eqz v0, :cond_32

    const v0, -0x70001

    and-int/2addr v3, v0

    :cond_32
    and-int/lit8 v0, v12, 0x40

    if-eqz v0, :cond_33

    const v0, -0x380001

    and-int/2addr v3, v0

    :cond_33
    and-int/lit16 v0, v12, 0x2000

    if-eqz v0, :cond_34

    and-int/lit16 v8, v8, -0x1c01

    :cond_34
    and-int/lit16 v0, v12, 0x4000

    if-eqz v0, :cond_35

    const v0, -0xe001

    and-int/2addr v8, v0

    :cond_35
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v4, p4

    move-wide/from16 v9, p5

    move-wide/from16 v19, p7

    move/from16 v6, p9

    move/from16 v5, p10

    move-object/from16 v7, p11

    move-object/from16 v17, p13

    move-object/from16 v11, p14

    move-wide/from16 v21, p15

    move-wide/from16 v24, p17

    move v12, v3

    move v13, v8

    move/from16 v3, p3

    move/from16 v8, p12

    goto/16 :goto_32

    :cond_36
    :goto_24
    if-eqz v6, :cond_37

    .line 99
    sget-object v6, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v6, Landroidx/compose/ui/Modifier;

    goto :goto_25

    :cond_37
    move-object/from16 v6, p1

    :goto_25
    and-int/lit8 v9, v12, 0x4

    const/4 v10, 0x0

    if-eqz v9, :cond_38

    const/4 v9, 0x0

    move-object/from16 p1, v6

    const/4 v6, 0x3

    .line 100
    invoke-static {v10, v10, v2, v9, v6}, Landroidx/compose/material3/BottomSheetScaffoldKt;->rememberBottomSheetScaffoldState(Landroidx/compose/material3/SheetState;Landroidx/compose/material3/SnackbarHostState;Landroidx/compose/runtime/Composer;II)Landroidx/compose/material3/BottomSheetScaffoldState;

    move-result-object v6

    and-int/lit16 v3, v3, -0x381

    goto :goto_26

    :cond_38
    move-object/from16 p1, v6

    move-object/from16 v6, p2

    :goto_26
    if-eqz v17, :cond_39

    .line 101
    sget-object v9, Landroidx/compose/material3/BottomSheetDefaults;->INSTANCE:Landroidx/compose/material3/BottomSheetDefaults;

    invoke-virtual {v9}, Landroidx/compose/material3/BottomSheetDefaults;->getSheetPeekHeight-D9Ej5fM()F

    move-result v9

    goto :goto_27

    :cond_39
    move/from16 v9, p3

    :goto_27
    and-int/lit8 v17, v12, 0x10

    if-eqz v17, :cond_3a

    .line 102
    sget-object v10, Landroidx/compose/material3/BottomSheetDefaults;->INSTANCE:Landroidx/compose/material3/BottomSheetDefaults;

    move-object/from16 p2, v6

    const/4 v6, 0x6

    invoke-virtual {v10, v2, v6}, Landroidx/compose/material3/BottomSheetDefaults;->getExpandedShape(Landroidx/compose/runtime/Composer;I)Landroidx/compose/ui/graphics/Shape;

    move-result-object v10

    const v16, -0xe001

    and-int v3, v3, v16

    goto :goto_28

    :cond_3a
    move-object/from16 p2, v6

    const/4 v6, 0x6

    move-object/from16 v10, p4

    :goto_28
    and-int/lit8 v16, v12, 0x20

    move/from16 p3, v9

    if-eqz v16, :cond_3b

    .line 103
    sget-object v9, Landroidx/compose/material3/BottomSheetDefaults;->INSTANCE:Landroidx/compose/material3/BottomSheetDefaults;

    invoke-virtual {v9, v2, v6}, Landroidx/compose/material3/BottomSheetDefaults;->getContainerColor(Landroidx/compose/runtime/Composer;I)J

    move-result-wide v19

    const v6, -0x70001

    and-int/2addr v3, v6

    move-object/from16 p4, v10

    move-wide/from16 v9, v19

    goto :goto_29

    :cond_3b
    move-object/from16 p4, v10

    move-wide/from16 v9, p5

    :goto_29
    and-int/lit8 v6, v12, 0x40

    if-eqz v6, :cond_3c

    shr-int/lit8 v6, v3, 0xf

    and-int/lit8 v6, v6, 0xe

    .line 104
    invoke-static {v9, v10, v2, v6}, Landroidx/compose/material3/ColorSchemeKt;->contentColorFor-ek8zF_U(JLandroidx/compose/runtime/Composer;I)J

    move-result-wide v19

    const v6, -0x380001

    and-int/2addr v3, v6

    goto :goto_2a

    :cond_3c
    move-wide/from16 v19, p7

    :goto_2a
    if-eqz v11, :cond_3d

    .line 105
    sget-object v6, Landroidx/compose/material3/BottomSheetDefaults;->INSTANCE:Landroidx/compose/material3/BottomSheetDefaults;

    invoke-virtual {v6}, Landroidx/compose/material3/BottomSheetDefaults;->getElevation-D9Ej5fM()F

    move-result v6

    goto :goto_2b

    :cond_3d
    move/from16 v6, p9

    :goto_2b
    if-eqz v1, :cond_3e

    .line 106
    sget-object v1, Landroidx/compose/material3/BottomSheetDefaults;->INSTANCE:Landroidx/compose/material3/BottomSheetDefaults;

    invoke-virtual {v1}, Landroidx/compose/material3/BottomSheetDefaults;->getElevation-D9Ej5fM()F

    move-result v1

    goto :goto_2c

    :cond_3e
    move/from16 v1, p10

    :goto_2c
    if-eqz v0, :cond_3f

    sget-object v0, Landroidx/compose/material3/ComposableSingletons$BottomSheetScaffoldKt;->INSTANCE:Landroidx/compose/material3/ComposableSingletons$BottomSheetScaffoldKt;

    invoke-virtual {v0}, Landroidx/compose/material3/ComposableSingletons$BottomSheetScaffoldKt;->getLambda-1$material3_release()Lkotlin/jvm/functions/Function2;

    move-result-object v0

    goto :goto_2d

    :cond_3f
    move-object/from16 v0, p11

    :goto_2d
    if-eqz v4, :cond_40

    const/4 v4, 0x1

    goto :goto_2e

    :cond_40
    move/from16 v4, p12

    :goto_2e
    if-eqz v5, :cond_41

    const/16 v17, 0x0

    goto :goto_2f

    :cond_41
    move-object/from16 v17, p13

    :goto_2f
    if-eqz v7, :cond_42

    .line 109
    sget-object v5, Landroidx/compose/material3/ComposableSingletons$BottomSheetScaffoldKt;->INSTANCE:Landroidx/compose/material3/ComposableSingletons$BottomSheetScaffoldKt;

    invoke-virtual {v5}, Landroidx/compose/material3/ComposableSingletons$BottomSheetScaffoldKt;->getLambda-2$material3_release()Lkotlin/jvm/functions/Function3;

    move-result-object v5

    goto :goto_30

    :cond_42
    move-object/from16 v5, p14

    :goto_30
    and-int/lit16 v7, v12, 0x2000

    if-eqz v7, :cond_43

    .line 111
    sget-object v7, Landroidx/compose/material3/MaterialTheme;->INSTANCE:Landroidx/compose/material3/MaterialTheme;

    const/4 v11, 0x6

    invoke-virtual {v7, v2, v11}, Landroidx/compose/material3/MaterialTheme;->getColorScheme(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material3/ColorScheme;

    move-result-object v7

    invoke-virtual {v7}, Landroidx/compose/material3/ColorScheme;->getSurface-0d7_KjU()J

    move-result-wide v21

    and-int/lit16 v8, v8, -0x1c01

    move v11, v8

    move-wide/from16 v7, v21

    goto :goto_31

    :cond_43
    move v11, v8

    move-wide/from16 v7, p15

    :goto_31
    move-object/from16 p5, v0

    and-int/lit16 v0, v12, 0x4000

    if-eqz v0, :cond_44

    shr-int/lit8 v0, v11, 0x9

    and-int/lit8 v0, v0, 0xe

    .line 112
    invoke-static {v7, v8, v2, v0}, Landroidx/compose/material3/ColorSchemeKt;->contentColorFor-ek8zF_U(JLandroidx/compose/runtime/Composer;I)J

    move-result-wide v21

    const v0, -0xe001

    and-int/2addr v0, v11

    move v13, v0

    move v12, v3

    move-object v11, v5

    move-wide/from16 v24, v21

    move-object/from16 v0, p1

    move/from16 v3, p3

    move v5, v1

    move-wide/from16 v21, v7

    move-object/from16 v1, p2

    move-object/from16 v7, p5

    move v8, v4

    move-object/from16 v4, p4

    goto :goto_32

    :cond_44
    move-object/from16 v0, p1

    move-wide/from16 v24, p17

    move v12, v3

    move-wide/from16 v21, v7

    move v13, v11

    move/from16 v3, p3

    move-object/from16 v7, p5

    move v8, v4

    move-object v11, v5

    move-object/from16 v4, p4

    move v5, v1

    move-object/from16 v1, p2

    :goto_32
    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->endDefaults()V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v27

    if-eqz v27, :cond_45

    const-string v14, "androidx.compose.material3.BottomSheetScaffold (BottomSheetScaffold.kt:96)"

    const v15, 0x8a2fa97

    .line 114
    invoke-static {v15, v12, v13, v14}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 124
    :cond_45
    invoke-virtual {v1}, Landroidx/compose/material3/BottomSheetScaffoldState;->getBottomSheetState()Landroidx/compose/material3/SheetState;

    move-result-object v14

    .line 127
    new-instance v15, Landroidx/compose/material3/BottomSheetScaffoldKt$BottomSheetScaffold$1;

    move-object/from16 p1, v15

    move-object/from16 p2, v1

    move/from16 p3, v3

    move/from16 p4, v8

    move-object/from16 p5, v4

    move-wide/from16 p6, v9

    move-wide/from16 p8, v19

    move/from16 p10, v6

    move/from16 p11, v5

    move-object/from16 p12, v7

    move-object/from16 p13, p0

    move/from16 p14, v12

    move/from16 p15, v13

    invoke-direct/range {p1 .. p15}, Landroidx/compose/material3/BottomSheetScaffoldKt$BottomSheetScaffold$1;-><init>(Landroidx/compose/material3/BottomSheetScaffoldState;FZLandroidx/compose/ui/graphics/Shape;JJFFLkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function3;II)V

    move-object/from16 p15, v4

    const v4, 0x6580c78

    move/from16 p16, v5

    const/4 v5, 0x1

    invoke-static {v2, v4, v5, v15}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->composableLambda(Landroidx/compose/runtime/Composer;IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v4

    check-cast v4, Lkotlin/jvm/functions/Function3;

    .line 119
    new-instance v15, Landroidx/compose/material3/BottomSheetScaffoldKt$BottomSheetScaffold$2;

    invoke-direct {v15, v11, v1, v13}, Landroidx/compose/material3/BottomSheetScaffoldKt$BottomSheetScaffold$2;-><init>(Lkotlin/jvm/functions/Function3;Landroidx/compose/material3/BottomSheetScaffoldState;I)V

    move/from16 p17, v6

    const v6, -0x612475ae

    invoke-static {v2, v6, v5, v15}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->composableLambda(Landroidx/compose/runtime/Composer;IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v5

    check-cast v5, Lkotlin/jvm/functions/Function2;

    const v6, 0x44faf204

    .line 123
    invoke-interface {v2, v6}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v6, "CC(remember)P(1):Composables.kt#9igjgp"

    invoke-static {v2, v6}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 397
    invoke-interface {v2, v1}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v6

    .line 398
    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v15

    if-nez v6, :cond_46

    .line 399
    sget-object v6, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v6}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v6

    if-ne v15, v6, :cond_47

    .line 123
    :cond_46
    new-instance v6, Landroidx/compose/material3/BottomSheetScaffoldKt$BottomSheetScaffold$3$1;

    invoke-direct {v6, v1}, Landroidx/compose/material3/BottomSheetScaffoldKt$BottomSheetScaffold$3$1;-><init>(Landroidx/compose/material3/BottomSheetScaffoldState;)V

    move-object v15, v6

    check-cast v15, Lkotlin/jvm/functions/Function0;

    .line 401
    invoke-interface {v2, v15}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 397
    :cond_47
    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    move-object v6, v15

    check-cast v6, Lkotlin/jvm/functions/Function0;

    shr-int/lit8 v15, v12, 0x3

    and-int/lit8 v15, v15, 0xe

    or-int/lit16 v15, v15, 0x6c00

    and-int/lit8 v18, v13, 0x70

    or-int v15, v15, v18

    move-object/from16 p18, v1

    shr-int/lit8 v1, v13, 0x9

    and-int/lit16 v1, v1, 0x380

    or-int/2addr v1, v15

    const/4 v15, 0x6

    shl-int/2addr v12, v15

    and-int v12, v12, v23

    or-int/2addr v1, v12

    shl-int/lit8 v12, v13, 0xf

    const/high16 v13, 0xe000000

    and-int/2addr v13, v12

    or-int/2addr v1, v13

    const/high16 v13, 0x70000000

    and-int/2addr v12, v13

    or-int/2addr v1, v12

    move-object/from16 p1, v0

    move-object/from16 p2, v17

    move-object/from16 p3, p19

    move-object/from16 p4, v4

    move-object/from16 p5, v5

    move/from16 p6, v3

    move-object/from16 p7, v6

    move-object/from16 p8, v14

    move-wide/from16 p9, v21

    move-wide/from16 p11, v24

    move-object/from16 p13, v2

    move/from16 p14, v1

    .line 115
    invoke-static/range {p1 .. p14}, Landroidx/compose/material3/BottomSheetScaffoldKt;->BottomSheetScaffoldLayout-PxNyym8(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function2;FLkotlin/jvm/functions/Function0;Landroidx/compose/material3/SheetState;JJLandroidx/compose/runtime/Composer;I)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v1

    if-eqz v1, :cond_48

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_48
    move-object/from16 v6, p15

    move/from16 v12, p16

    move-object/from16 v4, p18

    move v5, v3

    move-object v13, v7

    move v14, v8

    move-object v15, v11

    move/from16 v11, p17

    move-object v3, v0

    .line 143
    :goto_33
    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v8

    if-nez v8, :cond_49

    goto :goto_34

    :cond_49
    new-instance v26, Landroidx/compose/material3/BottomSheetScaffoldKt$BottomSheetScaffold$4;

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    move-object v2, v3

    move-object v3, v4

    move v4, v5

    move-object v5, v6

    move-wide v6, v9

    move-object v10, v8

    move-wide/from16 v8, v19

    move-object/from16 v29, v10

    move v10, v11

    move v11, v12

    move-object v12, v13

    move v13, v14

    move-object/from16 v14, v17

    move-wide/from16 v16, v21

    move-wide/from16 v18, v24

    move-object/from16 v20, p19

    move/from16 v21, p21

    move/from16 v22, p22

    move/from16 v23, p23

    invoke-direct/range {v0 .. v23}, Landroidx/compose/material3/BottomSheetScaffoldKt$BottomSheetScaffold$4;-><init>(Lkotlin/jvm/functions/Function3;Landroidx/compose/ui/Modifier;Landroidx/compose/material3/BottomSheetScaffoldState;FLandroidx/compose/ui/graphics/Shape;JJFFLkotlin/jvm/functions/Function2;ZLkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function3;JJLkotlin/jvm/functions/Function3;III)V

    move-object/from16 v0, v26

    check-cast v0, Lkotlin/jvm/functions/Function2;

    move-object/from16 v1, v29

    invoke-interface {v1, v0}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    :goto_34
    return-void
.end method

.method private static final BottomSheetScaffoldAnchorChangeHandler(Landroidx/compose/material3/SheetState;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;)Landroidx/compose/material3/AnchorChangeHandler;
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

    .line 378
    new-instance v0, Landroidx/compose/material3/BottomSheetScaffoldKt$BottomSheetScaffoldAnchorChangeHandler$1;

    invoke-direct {v0, p0, p1, p2}, Landroidx/compose/material3/BottomSheetScaffoldKt$BottomSheetScaffoldAnchorChangeHandler$1;-><init>(Landroidx/compose/material3/SheetState;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;)V

    check-cast v0, Landroidx/compose/material3/AnchorChangeHandler;

    return-object v0
.end method

.method private static final BottomSheetScaffoldLayout-PxNyym8(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function2;FLkotlin/jvm/functions/Function0;Landroidx/compose/material3/SheetState;JJLandroidx/compose/runtime/Composer;I)V
    .locals 28
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/Modifier;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function3<",
            "-",
            "Landroidx/compose/foundation/layout/PaddingValues;",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function3<",
            "-",
            "Ljava/lang/Integer;",
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
            ">;F",
            "Lkotlin/jvm/functions/Function0<",
            "Ljava/lang/Float;",
            ">;",
            "Landroidx/compose/material3/SheetState;",
            "JJ",
            "Landroidx/compose/runtime/Composer;",
            "I)V"
        }
    .end annotation

    move/from16 v13, p13

    const v0, -0x42ca6b10

    move-object/from16 v1, p12

    .line 328
    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object v1

    const-string v2, "C(BottomSheetScaffoldLayout)P(4,9!2,8,6:c#ui.unit.Dp,5,7,2:c#ui.graphics.Color,3:c#ui.graphics.Color)328@14299L1935,328@14282L1952:BottomSheetScaffold.kt#uh7d8r"

    invoke-static {v1, v2}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    and-int/lit8 v2, v13, 0xe

    if-nez v2, :cond_1

    move-object/from16 v2, p0

    invoke-interface {v1, v2}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x4

    goto :goto_0

    :cond_0
    const/4 v3, 0x2

    :goto_0
    or-int/2addr v3, v13

    goto :goto_1

    :cond_1
    move-object/from16 v2, p0

    move v3, v13

    :goto_1
    and-int/lit8 v4, v13, 0x70

    move-object/from16 v15, p1

    if-nez v4, :cond_3

    invoke-interface {v1, v15}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/16 v4, 0x20

    goto :goto_2

    :cond_2
    const/16 v4, 0x10

    :goto_2
    or-int/2addr v3, v4

    :cond_3
    and-int/lit16 v4, v13, 0x380

    move-object/from16 v14, p2

    if-nez v4, :cond_5

    invoke-interface {v1, v14}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    const/16 v4, 0x100

    goto :goto_3

    :cond_4
    const/16 v4, 0x80

    :goto_3
    or-int/2addr v3, v4

    :cond_5
    and-int/lit16 v4, v13, 0x1c00

    move-object/from16 v12, p3

    if-nez v4, :cond_7

    invoke-interface {v1, v12}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    const/16 v4, 0x800

    goto :goto_4

    :cond_6
    const/16 v4, 0x400

    :goto_4
    or-int/2addr v3, v4

    :cond_7
    const v4, 0xe000

    and-int/2addr v4, v13

    move-object/from16 v11, p4

    if-nez v4, :cond_9

    invoke-interface {v1, v11}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    const/16 v4, 0x4000

    goto :goto_5

    :cond_8
    const/16 v4, 0x2000

    :goto_5
    or-int/2addr v3, v4

    :cond_9
    const/high16 v4, 0x70000

    and-int/2addr v4, v13

    move/from16 v10, p5

    if-nez v4, :cond_b

    invoke-interface {v1, v10}, Landroidx/compose/runtime/Composer;->changed(F)Z

    move-result v4

    if-eqz v4, :cond_a

    const/high16 v4, 0x20000

    goto :goto_6

    :cond_a
    const/high16 v4, 0x10000

    :goto_6
    or-int/2addr v3, v4

    :cond_b
    const/high16 v4, 0x380000

    and-int/2addr v4, v13

    move-object/from16 v9, p6

    if-nez v4, :cond_d

    invoke-interface {v1, v9}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c

    const/high16 v4, 0x100000

    goto :goto_7

    :cond_c
    const/high16 v4, 0x80000

    :goto_7
    or-int/2addr v3, v4

    :cond_d
    const/high16 v4, 0x1c00000

    and-int/2addr v4, v13

    move-object/from16 v8, p7

    if-nez v4, :cond_f

    invoke-interface {v1, v8}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_e

    const/high16 v4, 0x800000

    goto :goto_8

    :cond_e
    const/high16 v4, 0x400000

    :goto_8
    or-int/2addr v3, v4

    :cond_f
    const/high16 v4, 0xe000000

    and-int/2addr v4, v13

    move-wide/from16 v6, p8

    if-nez v4, :cond_11

    invoke-interface {v1, v6, v7}, Landroidx/compose/runtime/Composer;->changed(J)Z

    move-result v4

    if-eqz v4, :cond_10

    const/high16 v4, 0x4000000

    goto :goto_9

    :cond_10
    const/high16 v4, 0x2000000

    :goto_9
    or-int/2addr v3, v4

    :cond_11
    const/high16 v4, 0x70000000

    and-int/2addr v4, v13

    if-nez v4, :cond_13

    move-wide/from16 v4, p10

    invoke-interface {v1, v4, v5}, Landroidx/compose/runtime/Composer;->changed(J)Z

    move-result v16

    if-eqz v16, :cond_12

    const/high16 v16, 0x20000000

    goto :goto_a

    :cond_12
    const/high16 v16, 0x10000000

    :goto_a
    or-int v3, v3, v16

    goto :goto_b

    :cond_13
    move-wide/from16 v4, p10

    :goto_b
    const v16, 0x5b6db6db

    and-int v0, v3, v16

    const v2, 0x12492492

    if-ne v0, v2, :cond_15

    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result v0

    if-nez v0, :cond_14

    goto :goto_c

    .line 371
    :cond_14
    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    goto/16 :goto_e

    .line 328
    :cond_15
    :goto_c
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_16

    const/4 v0, -0x1

    const-string v2, "androidx.compose.material3.BottomSheetScaffoldLayout (BottomSheetScaffold.kt:316)"

    const v4, -0x42ca6b10

    invoke-static {v4, v3, v0, v2}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 329
    :cond_16
    invoke-static/range {p8 .. p9}, Landroidx/compose/ui/graphics/Color;->box-impl(J)Landroidx/compose/ui/graphics/Color;

    move-result-object v0

    invoke-static/range {p10 .. p11}, Landroidx/compose/ui/graphics/Color;->box-impl(J)Landroidx/compose/ui/graphics/Color;

    move-result-object v2

    invoke-static/range {p5 .. p5}, Landroidx/compose/ui/unit/Dp;->box-impl(F)Landroidx/compose/ui/unit/Dp;

    move-result-object v16

    move/from16 v20, v3

    move-object/from16 v3, p3

    move-object/from16 v4, p6

    move-object/from16 v5, p1

    move-object/from16 v6, p0

    move-object v7, v0

    move-object v8, v2

    move-object/from16 v9, p2

    move-object/from16 v10, v16

    move-object/from16 v11, p4

    move-object/from16 v12, p7

    filled-new-array/range {v3 .. v12}, [Ljava/lang/Object;

    move-result-object v0

    const v2, -0x21de6e89

    invoke-interface {v1, v2}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v2, "CC(remember)P(1):Composables.kt#9igjgp"

    invoke-static {v1, v2}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    :goto_d
    const/16 v5, 0xa

    if-ge v3, v5, :cond_17

    .line 462
    aget-object v5, v0, v3

    invoke-interface {v1, v5}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v5

    or-int/2addr v4, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_d

    .line 464
    :cond_17
    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v0

    if-nez v4, :cond_18

    .line 465
    sget-object v3, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v3}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v3

    if-ne v0, v3, :cond_19

    .line 329
    :cond_18
    new-instance v0, Landroidx/compose/material3/BottomSheetScaffoldKt$BottomSheetScaffoldLayout$1$1;

    move-object v14, v0

    move-object/from16 v15, p6

    move-object/from16 v16, p1

    move-object/from16 v17, p4

    move-object/from16 v18, p7

    move-object/from16 v19, p3

    move-object/from16 v21, p0

    move-wide/from16 v22, p8

    move-wide/from16 v24, p10

    move-object/from16 v26, p2

    move/from16 v27, p5

    invoke-direct/range {v14 .. v27}, Landroidx/compose/material3/BottomSheetScaffoldKt$BottomSheetScaffoldLayout$1$1;-><init>(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Landroidx/compose/material3/SheetState;Lkotlin/jvm/functions/Function3;ILandroidx/compose/ui/Modifier;JJLkotlin/jvm/functions/Function3;F)V

    check-cast v0, Lkotlin/jvm/functions/Function2;

    .line 467
    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 463
    :cond_19
    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    check-cast v0, Lkotlin/jvm/functions/Function2;

    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 329
    invoke-static {v3, v0, v1, v2, v4}, Landroidx/compose/ui/layout/SubcomposeLayoutKt;->SubcomposeLayout(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;II)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    .line 371
    :cond_1a
    :goto_e
    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v14

    if-nez v14, :cond_1b

    goto :goto_f

    :cond_1b
    new-instance v15, Landroidx/compose/material3/BottomSheetScaffoldKt$BottomSheetScaffoldLayout$2;

    move-object v0, v15

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-wide/from16 v9, p8

    move-wide/from16 v11, p10

    move/from16 v13, p13

    invoke-direct/range {v0 .. v13}, Landroidx/compose/material3/BottomSheetScaffoldKt$BottomSheetScaffoldLayout$2;-><init>(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function2;FLkotlin/jvm/functions/Function0;Landroidx/compose/material3/SheetState;JJI)V

    check-cast v15, Lkotlin/jvm/functions/Function2;

    invoke-interface {v14, v15}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    :goto_f
    return-void
.end method

.method private static final StandardBottomSheet-8oydGBM(Landroidx/compose/material3/SheetState;FZFLandroidx/compose/ui/graphics/Shape;JJFFLkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V
    .locals 29
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/material3/SheetState;",
            "FZF",
            "Landroidx/compose/ui/graphics/Shape;",
            "JJFF",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;",
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
            "II)V"
        }
    .end annotation

    move-object/from16 v8, p0

    move/from16 v9, p1

    move/from16 v10, p3

    move/from16 v14, p14

    const v0, -0x2d88d654

    move-object/from16 v1, p13

    .line 209
    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object v11

    const-string v1, "C(StandardBottomSheet)P(9,5:c#ui.unit.Dp,8,4,7,0:c#ui.graphics.Color,2:c#ui.graphics.Color,10:c#ui.unit.Dp,6:c#ui.unit.Dp,3)209@9346L24,*210@9412L7,214@9580L467,235@10256L318,252@10976L530,229@10052L3768:BottomSheetScaffold.kt#uh7d8r"

    invoke-static {v11, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    and-int/lit8 v1, v14, 0xe

    const/4 v2, 0x4

    if-nez v1, :cond_1

    invoke-interface {v11, v8}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    :goto_0
    or-int/2addr v1, v14

    goto :goto_1

    :cond_1
    move v1, v14

    :goto_1
    and-int/lit8 v4, v14, 0x70

    if-nez v4, :cond_3

    invoke-interface {v11, v9}, Landroidx/compose/runtime/Composer;->changed(F)Z

    move-result v4

    if-eqz v4, :cond_2

    const/16 v4, 0x20

    goto :goto_2

    :cond_2
    const/16 v4, 0x10

    :goto_2
    or-int/2addr v1, v4

    :cond_3
    and-int/lit16 v4, v14, 0x380

    move/from16 v12, p2

    if-nez v4, :cond_5

    invoke-interface {v11, v12}, Landroidx/compose/runtime/Composer;->changed(Z)Z

    move-result v4

    if-eqz v4, :cond_4

    const/16 v4, 0x100

    goto :goto_3

    :cond_4
    const/16 v4, 0x80

    :goto_3
    or-int/2addr v1, v4

    :cond_5
    and-int/lit16 v4, v14, 0x1c00

    if-nez v4, :cond_7

    invoke-interface {v11, v10}, Landroidx/compose/runtime/Composer;->changed(F)Z

    move-result v4

    if-eqz v4, :cond_6

    const/16 v4, 0x800

    goto :goto_4

    :cond_6
    const/16 v4, 0x400

    :goto_4
    or-int/2addr v1, v4

    :cond_7
    const v13, 0xe000

    and-int v4, v14, v13

    move-object/from16 v7, p4

    if-nez v4, :cond_9

    invoke-interface {v11, v7}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    const/16 v4, 0x4000

    goto :goto_5

    :cond_8
    const/16 v4, 0x2000

    :goto_5
    or-int/2addr v1, v4

    :cond_9
    const/high16 v23, 0x70000

    and-int v4, v14, v23

    move-wide/from16 v5, p5

    if-nez v4, :cond_b

    invoke-interface {v11, v5, v6}, Landroidx/compose/runtime/Composer;->changed(J)Z

    move-result v4

    if-eqz v4, :cond_a

    const/high16 v4, 0x20000

    goto :goto_6

    :cond_a
    const/high16 v4, 0x10000

    :goto_6
    or-int/2addr v1, v4

    :cond_b
    const/high16 v4, 0x380000

    and-int/2addr v4, v14

    if-nez v4, :cond_d

    move-wide/from16 v3, p7

    invoke-interface {v11, v3, v4}, Landroidx/compose/runtime/Composer;->changed(J)Z

    move-result v15

    if-eqz v15, :cond_c

    const/high16 v15, 0x100000

    goto :goto_7

    :cond_c
    const/high16 v15, 0x80000

    :goto_7
    or-int/2addr v1, v15

    goto :goto_8

    :cond_d
    move-wide/from16 v3, p7

    :goto_8
    const/high16 v15, 0x1c00000

    and-int/2addr v15, v14

    if-nez v15, :cond_f

    move/from16 v15, p9

    invoke-interface {v11, v15}, Landroidx/compose/runtime/Composer;->changed(F)Z

    move-result v16

    if-eqz v16, :cond_e

    const/high16 v16, 0x800000

    goto :goto_9

    :cond_e
    const/high16 v16, 0x400000

    :goto_9
    or-int v1, v1, v16

    goto :goto_a

    :cond_f
    move/from16 v15, p9

    :goto_a
    const/high16 v16, 0xe000000

    and-int v16, v14, v16

    move/from16 v13, p10

    if-nez v16, :cond_11

    invoke-interface {v11, v13}, Landroidx/compose/runtime/Composer;->changed(F)Z

    move-result v16

    if-eqz v16, :cond_10

    const/high16 v16, 0x4000000

    goto :goto_b

    :cond_10
    const/high16 v16, 0x2000000

    :goto_b
    or-int v1, v1, v16

    :cond_11
    const/high16 v16, 0x70000000

    and-int v16, v14, v16

    move-object/from16 v0, p11

    if-nez v16, :cond_13

    invoke-interface {v11, v0}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_12

    const/high16 v17, 0x20000000

    goto :goto_c

    :cond_12
    const/high16 v17, 0x10000000

    :goto_c
    or-int v1, v1, v17

    :cond_13
    and-int/lit8 v17, p15, 0xe

    move-object/from16 v13, p12

    if-nez v17, :cond_15

    invoke-interface {v11, v13}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_14

    goto :goto_d

    :cond_14
    const/4 v2, 0x2

    :goto_d
    or-int v2, p15, v2

    goto :goto_e

    :cond_15
    move/from16 v2, p15

    :goto_e
    const v17, 0x5b6db6db

    and-int v0, v1, v17

    const v3, 0x12492492

    if-ne v0, v3, :cond_17

    and-int/lit8 v0, v2, 0xb

    const/4 v3, 0x2

    if-ne v0, v3, :cond_17

    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result v0

    if-nez v0, :cond_16

    goto :goto_f

    .line 313
    :cond_16
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    goto/16 :goto_10

    .line 209
    :cond_17
    :goto_f
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_18

    const-string v0, "androidx.compose.material3.StandardBottomSheet (BottomSheetScaffold.kt:196)"

    const v3, -0x2d88d654

    invoke-static {v3, v1, v2, v0}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_18
    const v0, 0x2e20b340

    .line 210
    invoke-interface {v11, v0}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v0, "CC(rememberCoroutineScope)476@19869L144:Effects.kt#9igjgp"

    invoke-static {v11, v0}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    const v0, -0x1d58f75c

    .line 422
    invoke-interface {v11, v0}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v0, "CC(remember):Composables.kt#9igjgp"

    invoke-static {v11, v0}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 424
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v0

    .line 425
    sget-object v3, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v3}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v3

    if-ne v0, v3, :cond_19

    .line 429
    sget-object v0, Lkotlin/coroutines/EmptyCoroutineContext;->INSTANCE:Lkotlin/coroutines/EmptyCoroutineContext;

    .line 428
    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    invoke-static {v0, v11}, Landroidx/compose/runtime/EffectsKt;->createCompositionCoroutineScope(Lkotlin/coroutines/CoroutineContext;Landroidx/compose/runtime/Composer;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v0

    .line 427
    new-instance v3, Landroidx/compose/runtime/CompositionScopedCoroutineScopeCanceller;

    invoke-direct {v3, v0}, Landroidx/compose/runtime/CompositionScopedCoroutineScopeCanceller;-><init>(Lkotlinx/coroutines/CoroutineScope;)V

    .line 430
    invoke-interface {v11, v3}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    move-object v0, v3

    .line 423
    :cond_19
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 422
    check-cast v0, Landroidx/compose/runtime/CompositionScopedCoroutineScopeCanceller;

    .line 433
    invoke-virtual {v0}, Landroidx/compose/runtime/CompositionScopedCoroutineScopeCanceller;->getCoroutineScope()Lkotlinx/coroutines/CoroutineScope;

    move-result-object v4

    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 211
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->getLocalDensity()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v0

    check-cast v0, Landroidx/compose/runtime/CompositionLocal;

    const v3, 0x789c5f52

    move/from16 v25, v1

    const-string v1, "CC:CompositionLocal.kt#9igjgp"

    .line 434
    invoke-static {v11, v3, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    invoke-interface {v11, v0}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v11}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 211
    check-cast v0, Landroidx/compose/ui/unit/Density;

    invoke-interface {v0, v9}, Landroidx/compose/ui/unit/Density;->toPx-0680j_4(F)F

    move-result v0

    .line 212
    sget-object v1, Landroidx/compose/foundation/gestures/Orientation;->Vertical:Landroidx/compose/foundation/gestures/Orientation;

    const v3, 0x1e7b2b64

    .line 215
    invoke-interface {v11, v3}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v3, "CC(remember)P(1,2):Composables.kt#9igjgp"

    invoke-static {v11, v3}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 436
    invoke-interface {v11, v8}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v3

    invoke-interface {v11, v4}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v16

    or-int v3, v3, v16

    move/from16 v26, v2

    .line 438
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v2

    if-nez v3, :cond_1a

    .line 439
    sget-object v3, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v3}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v3

    if-ne v2, v3, :cond_1b

    .line 216
    :cond_1a
    new-instance v2, Landroidx/compose/material3/BottomSheetScaffoldKt$StandardBottomSheet$anchorChangeHandler$1$1;

    invoke-direct {v2, v4, v8}, Landroidx/compose/material3/BottomSheetScaffoldKt$StandardBottomSheet$anchorChangeHandler$1$1;-><init>(Lkotlinx/coroutines/CoroutineScope;Landroidx/compose/material3/SheetState;)V

    check-cast v2, Lkotlin/jvm/functions/Function2;

    new-instance v3, Landroidx/compose/material3/BottomSheetScaffoldKt$StandardBottomSheet$anchorChangeHandler$1$2;

    invoke-direct {v3, v4, v8}, Landroidx/compose/material3/BottomSheetScaffoldKt$StandardBottomSheet$anchorChangeHandler$1$2;-><init>(Lkotlinx/coroutines/CoroutineScope;Landroidx/compose/material3/SheetState;)V

    check-cast v3, Lkotlin/jvm/functions/Function1;

    invoke-static {v8, v2, v3}, Landroidx/compose/material3/BottomSheetScaffoldKt;->access$BottomSheetScaffoldAnchorChangeHandler(Landroidx/compose/material3/SheetState;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;)Landroidx/compose/material3/AnchorChangeHandler;

    move-result-object v2

    .line 441
    invoke-interface {v11, v2}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 437
    :cond_1b
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 215
    check-cast v2, Landroidx/compose/material3/AnchorChangeHandler;

    .line 231
    sget-object v3, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v3, Landroidx/compose/ui/Modifier;

    .line 232
    invoke-static {}, Landroidx/compose/material3/SheetDefaultsKt;->getBottomSheetMaxWidth()F

    move-result v5

    const/4 v6, 0x0

    const/4 v12, 0x1

    const/4 v7, 0x0

    invoke-static {v3, v6, v5, v12, v7}, Landroidx/compose/foundation/layout/SizeKt;->widthIn-VpY3zN4$default(Landroidx/compose/ui/Modifier;FFILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v3

    .line 233
    invoke-static {v3, v6, v12, v7}, Landroidx/compose/foundation/layout/SizeKt;->fillMaxWidth$default(Landroidx/compose/ui/Modifier;FILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v3

    const/4 v5, 0x2

    .line 234
    invoke-static {v3, v9, v6, v5, v7}, Landroidx/compose/foundation/layout/SizeKt;->requiredHeightIn-VpY3zN4$default(Landroidx/compose/ui/Modifier;FFILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v3

    .line 236
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/material3/SheetState;->getSwipeableState$material3_release()Landroidx/compose/material3/SwipeableV2State;

    move-result-object v5

    const v6, 0x44faf204

    invoke-interface {v11, v6}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v6, "CC(remember)P(1):Composables.kt#9igjgp"

    invoke-static {v11, v6}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 444
    invoke-interface {v11, v5}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v5

    .line 445
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v6

    if-nez v5, :cond_1c

    .line 446
    sget-object v5, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v5}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v5

    if-ne v6, v5, :cond_1d

    .line 237
    :cond_1c
    new-instance v5, Landroidx/compose/material3/BottomSheetScaffoldKt$StandardBottomSheet$1$1;

    invoke-direct {v5, v4, v8}, Landroidx/compose/material3/BottomSheetScaffoldKt$StandardBottomSheet$1$1;-><init>(Lkotlinx/coroutines/CoroutineScope;Landroidx/compose/material3/SheetState;)V

    check-cast v5, Lkotlin/jvm/functions/Function1;

    invoke-static {v8, v1, v5}, Landroidx/compose/material3/SheetDefaultsKt;->ConsumeSwipeWithinBottomSheetBoundsNestedScrollConnection(Landroidx/compose/material3/SheetState;Landroidx/compose/foundation/gestures/Orientation;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/input/nestedscroll/NestedScrollConnection;

    move-result-object v6

    .line 448
    invoke-interface {v11, v6}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 444
    :cond_1d
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    check-cast v6, Landroidx/compose/ui/input/nestedscroll/NestedScrollConnection;

    const/4 v5, 0x2

    .line 235
    invoke-static {v3, v6, v7, v5, v7}, Landroidx/compose/ui/input/nestedscroll/NestedScrollModifierKt;->nestedScroll$default(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/input/nestedscroll/NestedScrollConnection;Landroidx/compose/ui/input/nestedscroll/NestedScrollDispatcher;ILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v3

    .line 245
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/material3/SheetState;->getSwipeableState$material3_release()Landroidx/compose/material3/SwipeableV2State;

    move-result-object v16

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x18

    const/16 v22, 0x0

    move-object v15, v3

    move-object/from16 v17, v1

    move/from16 v18, p2

    .line 244
    invoke-static/range {v15 .. v22}, Landroidx/compose/material3/SwipeableV2Kt;->swipeableV2$default(Landroidx/compose/ui/Modifier;Landroidx/compose/material3/SwipeableV2State;Landroidx/compose/foundation/gestures/Orientation;ZZLandroidx/compose/foundation/interaction/MutableInteractionSource;ILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v1

    .line 250
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/material3/SheetState;->getSwipeableState$material3_release()Landroidx/compose/material3/SwipeableV2State;

    move-result-object v3

    const/4 v5, 0x3

    new-array v5, v5, [Landroidx/compose/material3/SheetValue;

    const/4 v6, 0x0

    .line 251
    sget-object v7, Landroidx/compose/material3/SheetValue;->Hidden:Landroidx/compose/material3/SheetValue;

    aput-object v7, v5, v6

    sget-object v6, Landroidx/compose/material3/SheetValue;->PartiallyExpanded:Landroidx/compose/material3/SheetValue;

    aput-object v6, v5, v12

    sget-object v6, Landroidx/compose/material3/SheetValue;->Expanded:Landroidx/compose/material3/SheetValue;

    const/4 v7, 0x2

    aput-object v6, v5, v7

    invoke-static {v5}, Lkotlin/collections/SetsKt;->setOf([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v5

    .line 252
    invoke-static/range {p3 .. p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    const v15, 0x607fb4c4

    .line 253
    invoke-interface {v11, v15}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v15, "CC(remember)P(1,2,3):Composables.kt#9igjgp"

    invoke-static {v11, v15}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 451
    invoke-interface {v11, v8}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v15

    .line 452
    invoke-interface {v11, v6}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v6

    or-int/2addr v6, v15

    .line 453
    invoke-interface {v11, v7}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v7

    or-int/2addr v6, v7

    .line 455
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v7

    if-nez v6, :cond_1e

    .line 456
    sget-object v6, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v6}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v6

    if-ne v7, v6, :cond_1f

    .line 253
    :cond_1e
    new-instance v6, Landroidx/compose/material3/BottomSheetScaffoldKt$StandardBottomSheet$2$1;

    invoke-direct {v6, v8, v10, v0}, Landroidx/compose/material3/BottomSheetScaffoldKt$StandardBottomSheet$2$1;-><init>(Landroidx/compose/material3/SheetState;FF)V

    move-object v7, v6

    check-cast v7, Lkotlin/jvm/functions/Function2;

    .line 458
    invoke-interface {v11, v7}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 454
    :cond_1f
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    check-cast v7, Lkotlin/jvm/functions/Function2;

    .line 249
    invoke-static {v1, v3, v5, v2, v7}, Landroidx/compose/material3/SwipeableV2Kt;->swipeAnchors(Landroidx/compose/ui/Modifier;Landroidx/compose/material3/SwipeableV2State;Ljava/util/Set;Landroidx/compose/material3/AnchorChangeHandler;Lkotlin/jvm/functions/Function2;)Landroidx/compose/ui/Modifier;

    move-result-object v15

    const/16 v27, 0x0

    .line 270
    new-instance v7, Landroidx/compose/material3/BottomSheetScaffoldKt$StandardBottomSheet$3;

    move-object v0, v7

    move/from16 v16, v25

    move-object/from16 v1, p11

    move/from16 v3, v26

    move-object/from16 v2, p12

    move-object v6, v4

    move-object/from16 v4, p0

    move/from16 v5, p2

    move-object v8, v7

    move/from16 v7, v16

    invoke-direct/range {v0 .. v7}, Landroidx/compose/material3/BottomSheetScaffoldKt$StandardBottomSheet$3;-><init>(Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function3;ILandroidx/compose/material3/SheetState;ZLkotlinx/coroutines/CoroutineScope;I)V

    const v0, -0x5257e579

    invoke-static {v11, v0, v12, v8}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->composableLambda(Landroidx/compose/runtime/Composer;IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v0

    check-cast v0, Lkotlin/jvm/functions/Function2;

    shr-int/lit8 v1, v16, 0x9

    and-int/lit8 v2, v1, 0x70

    const/high16 v3, 0xc00000

    or-int/2addr v2, v3

    and-int/lit16 v3, v1, 0x380

    or-int/2addr v2, v3

    and-int/lit16 v3, v1, 0x1c00

    or-int/2addr v2, v3

    const v3, 0xe000

    and-int/2addr v3, v1

    or-int/2addr v2, v3

    and-int v1, v1, v23

    or-int v26, v2, v1

    const/16 v1, 0x40

    move-object/from16 v16, p4

    move-wide/from16 v17, p5

    move-wide/from16 v19, p7

    move/from16 v21, p9

    move/from16 v22, p10

    move-object/from16 v23, v27

    move-object/from16 v24, v0

    move-object/from16 v25, v11

    move/from16 v27, v1

    .line 230
    invoke-static/range {v15 .. v27}, Landroidx/compose/material3/SurfaceKt;->Surface-T9BRK9s(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;JJFFLandroidx/compose/foundation/BorderStroke;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;II)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_20

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    .line 313
    :cond_20
    :goto_10
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v15

    if-nez v15, :cond_21

    goto :goto_11

    :cond_21
    new-instance v16, Landroidx/compose/material3/BottomSheetScaffoldKt$StandardBottomSheet$4;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    move/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move-object/from16 v5, p4

    move-wide/from16 v6, p5

    move-wide/from16 v8, p7

    move/from16 v10, p9

    move/from16 v11, p10

    move-object/from16 v12, p11

    move-object/from16 v13, p12

    move/from16 v14, p14

    move-object/from16 v28, v15

    move/from16 v15, p15

    invoke-direct/range {v0 .. v15}, Landroidx/compose/material3/BottomSheetScaffoldKt$StandardBottomSheet$4;-><init>(Landroidx/compose/material3/SheetState;FZFLandroidx/compose/ui/graphics/Shape;JJFFLkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function3;II)V

    move-object/from16 v0, v16

    check-cast v0, Lkotlin/jvm/functions/Function2;

    move-object/from16 v1, v28

    invoke-interface {v1, v0}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    :goto_11
    return-void
.end method

.method public static final synthetic access$BottomSheetScaffoldAnchorChangeHandler(Landroidx/compose/material3/SheetState;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;)Landroidx/compose/material3/AnchorChangeHandler;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Landroidx/compose/material3/BottomSheetScaffoldKt;->BottomSheetScaffoldAnchorChangeHandler(Landroidx/compose/material3/SheetState;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;)Landroidx/compose/material3/AnchorChangeHandler;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$BottomSheetScaffoldLayout-PxNyym8(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function2;FLkotlin/jvm/functions/Function0;Landroidx/compose/material3/SheetState;JJLandroidx/compose/runtime/Composer;I)V
    .locals 0

    .line 1
    invoke-static/range {p0 .. p13}, Landroidx/compose/material3/BottomSheetScaffoldKt;->BottomSheetScaffoldLayout-PxNyym8(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function2;FLkotlin/jvm/functions/Function0;Landroidx/compose/material3/SheetState;JJLandroidx/compose/runtime/Composer;I)V

    return-void
.end method

.method public static final synthetic access$StandardBottomSheet-8oydGBM(Landroidx/compose/material3/SheetState;FZFLandroidx/compose/ui/graphics/Shape;JJFFLkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V
    .locals 0

    .line 1
    invoke-static/range {p0 .. p15}, Landroidx/compose/material3/BottomSheetScaffoldKt;->StandardBottomSheet-8oydGBM(Landroidx/compose/material3/SheetState;FZFLandroidx/compose/ui/graphics/Shape;JJFFLkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V

    return-void
.end method

.method public static final rememberBottomSheetScaffoldState(Landroidx/compose/material3/SheetState;Landroidx/compose/material3/SnackbarHostState;Landroidx/compose/runtime/Composer;II)Landroidx/compose/material3/BottomSheetScaffoldState;
    .locals 8

    const v0, -0x57e4b436

    invoke-interface {p2, v0}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v1, "C(rememberBottomSheetScaffoldState)167@7874L34,168@7953L32,170@8027L196:BottomSheetScaffold.kt#uh7d8r"

    invoke-static {p2, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    and-int/lit8 v1, p4, 0x1

    if-eqz v1, :cond_0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x7

    move-object v5, p2

    .line 168
    invoke-static/range {v2 .. v7}, Landroidx/compose/material3/BottomSheetScaffoldKt;->rememberStandardBottomSheetState(Landroidx/compose/material3/SheetValue;Lkotlin/jvm/functions/Function1;ZLandroidx/compose/runtime/Composer;II)Landroidx/compose/material3/SheetState;

    move-result-object p0

    :cond_0
    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_2

    const p1, -0x1d58f75c

    .line 169
    invoke-interface {p2, p1}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string p1, "CC(remember):Composables.kt#9igjgp"

    invoke-static {p2, p1}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 405
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object p1

    .line 406
    sget-object p4, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {p4}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object p4

    if-ne p1, p4, :cond_1

    .line 169
    new-instance p1, Landroidx/compose/material3/SnackbarHostState;

    invoke-direct {p1}, Landroidx/compose/material3/SnackbarHostState;-><init>()V

    .line 408
    invoke-interface {p2, p1}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 404
    :cond_1
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    check-cast p1, Landroidx/compose/material3/SnackbarHostState;

    :cond_2
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result p4

    if-eqz p4, :cond_3

    const/4 p4, -0x1

    const-string v1, "androidx.compose.material3.rememberBottomSheetScaffoldState (BottomSheetScaffold.kt:166)"

    .line 170
    invoke-static {v0, p3, p4, v1}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_3
    const p3, 0x1e7b2b64

    .line 171
    invoke-interface {p2, p3}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string p3, "CC(remember)P(1,2):Composables.kt#9igjgp"

    invoke-static {p2, p3}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 411
    invoke-interface {p2, p0}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result p3

    invoke-interface {p2, p1}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result p4

    or-int/2addr p3, p4

    .line 413
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object p4

    if-nez p3, :cond_4

    .line 414
    sget-object p3, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {p3}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object p3

    if-ne p4, p3, :cond_5

    .line 172
    :cond_4
    new-instance p4, Landroidx/compose/material3/BottomSheetScaffoldState;

    invoke-direct {p4, p0, p1}, Landroidx/compose/material3/BottomSheetScaffoldState;-><init>(Landroidx/compose/material3/SheetState;Landroidx/compose/material3/SnackbarHostState;)V

    .line 416
    invoke-interface {p2, p4}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 412
    :cond_5
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 171
    check-cast p4, Landroidx/compose/material3/BottomSheetScaffoldState;

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result p0

    if-eqz p0, :cond_6

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_6
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    return-object p4
.end method

.method public static final rememberStandardBottomSheetState(Landroidx/compose/material3/SheetValue;Lkotlin/jvm/functions/Function1;ZLandroidx/compose/runtime/Composer;II)Landroidx/compose/material3/SheetState;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/material3/SheetValue;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/compose/material3/SheetValue;",
            "Ljava/lang/Boolean;",
            ">;Z",
            "Landroidx/compose/runtime/Composer;",
            "II)",
            "Landroidx/compose/material3/SheetState;"
        }
    .end annotation

    const v0, 0x287143dd

    invoke-interface {p3, v0}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v1, "C(rememberStandardBottomSheetState)P(1)192@8853L76:BottomSheetScaffold.kt#uh7d8r"

    invoke-static {p3, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    and-int/lit8 v1, p5, 0x1

    if-eqz v1, :cond_0

    .line 190
    sget-object p0, Landroidx/compose/material3/SheetValue;->PartiallyExpanded:Landroidx/compose/material3/SheetValue;

    :cond_0
    move-object v3, p0

    and-int/lit8 p0, p5, 0x2

    if-eqz p0, :cond_1

    .line 191
    sget-object p0, Landroidx/compose/material3/BottomSheetScaffoldKt$rememberStandardBottomSheetState$1;->INSTANCE:Landroidx/compose/material3/BottomSheetScaffoldKt$rememberStandardBottomSheetState$1;

    move-object p1, p0

    check-cast p1, Lkotlin/jvm/functions/Function1;

    :cond_1
    move-object v2, p1

    and-int/lit8 p0, p5, 0x4

    if-eqz p0, :cond_2

    const/4 p2, 0x1

    :cond_2
    move v4, p2

    .line 192
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result p0

    if-eqz p0, :cond_3

    const/4 p0, -0x1

    const-string p1, "androidx.compose.material3.rememberStandardBottomSheetState (BottomSheetScaffold.kt:188)"

    .line 193
    invoke-static {v0, p4, p0, p1}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_3
    const/4 v1, 0x0

    and-int/lit8 p0, p4, 0x70

    or-int/lit8 p0, p0, 0x6

    shl-int/lit8 p1, p4, 0x6

    and-int/lit16 p1, p1, 0x380

    or-int/2addr p0, p1

    shl-int/lit8 p1, p4, 0x3

    and-int/lit16 p1, p1, 0x1c00

    or-int v6, p0, p1

    const/4 v7, 0x0

    move-object v5, p3

    invoke-static/range {v1 .. v7}, Landroidx/compose/material3/SheetDefaultsKt;->rememberSheetState(ZLkotlin/jvm/functions/Function1;Landroidx/compose/material3/SheetValue;ZLandroidx/compose/runtime/Composer;II)Landroidx/compose/material3/SheetState;

    move-result-object p0

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_4
    invoke-interface {p3}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    return-object p0
.end method
