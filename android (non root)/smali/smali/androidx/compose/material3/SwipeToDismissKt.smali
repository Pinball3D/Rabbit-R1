.class public final Landroidx/compose/material3/SwipeToDismissKt;
.super Ljava/lang/Object;
.source "SwipeToDismiss.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSwipeToDismiss.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SwipeToDismiss.kt\nandroidx/compose/material3/SwipeToDismissKt\n+ 2 Composables.kt\nandroidx/compose/runtime/ComposablesKt\n+ 3 Composer.kt\nandroidx/compose/runtime/ComposerKt\n+ 4 CompositionLocal.kt\nandroidx/compose/runtime/CompositionLocal\n+ 5 Box.kt\nandroidx/compose/foundation/layout/BoxKt\n+ 6 Layout.kt\nandroidx/compose/ui/layout/LayoutKt\n+ 7 Row.kt\nandroidx/compose/foundation/layout/RowKt\n+ 8 Dp.kt\nandroidx/compose/ui/unit/DpKt\n*L\n1#1,279:1\n67#2,3:280\n66#2:283\n460#2,13:310\n460#2,13:343\n473#2,3:357\n36#2:362\n460#2,13:388\n473#2,3:402\n473#2,3:407\n1114#3,6:284\n1114#3,6:363\n76#4:290\n76#4:298\n76#4:331\n76#4:376\n67#5,6:291\n73#5:323\n77#5:411\n75#6:297\n76#6,11:299\n75#6:330\n76#6,11:332\n89#6:360\n75#6:375\n76#6,11:377\n89#6:405\n89#6:410\n75#7,6:324\n81#7:356\n85#7:361\n75#7,6:369\n81#7:401\n85#7:406\n154#8:412\n*S KotlinDebug\n*F\n+ 1 SwipeToDismiss.kt\nandroidx/compose/material3/SwipeToDismissKt\n*L\n213#1:280,3\n213#1:283\n241#1:310,13\n261#1:343,13\n261#1:357,3\n267#1:362\n265#1:388,13\n265#1:402,3\n241#1:407,3\n213#1:284,6\n267#1:363,6\n239#1:290\n241#1:298\n261#1:331\n265#1:376\n241#1:291,6\n241#1:323\n241#1:411\n241#1:297\n241#1:299,11\n261#1:330\n261#1:332,11\n261#1:360\n265#1:375\n265#1:377,11\n265#1:405\n241#1:410\n261#1:324,6\n261#1:356\n261#1:361\n265#1:369,6\n265#1:401\n265#1:406\n279#1:412\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\\\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\"\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u001ak\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u001c\u0010\u0007\u001a\u0018\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\u00040\u0008\u00a2\u0006\u0002\u0008\n\u00a2\u0006\u0002\u0008\u000b2\u001c\u0010\u000c\u001a\u0018\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\u00040\u0008\u00a2\u0006\u0002\u0008\n\u00a2\u0006\u0002\u0008\u000b2\u0008\u0008\u0002\u0010\r\u001a\u00020\u000e2\u000e\u0008\u0002\u0010\u000f\u001a\u0008\u0012\u0004\u0012\u00020\u00110\u0010H\u0007\u00a2\u0006\u0002\u0010\u0012\u001a]\u0010\u0013\u001a\u00020\u00062\u0008\u0008\u0002\u0010\u0014\u001a\u00020\u00152\u0014\u0008\u0002\u0010\u0016\u001a\u000e\u0012\u0004\u0012\u00020\u0015\u0012\u0004\u0012\u00020\u00170\u00082.\u0008\u0002\u0010\u0018\u001a(\u0012\u0004\u0012\u00020\u001a\u0012\u0013\u0012\u00110\u001b\u00a2\u0006\u000c\u0008\u001c\u0012\u0008\u0008\u001d\u0012\u0004\u0008\u0008(\u001e\u0012\u0004\u0012\u00020\u001b0\u0019\u00a2\u0006\u0002\u0008\u000bH\u0007\u00a2\u0006\u0002\u0010\u001f\"\u0013\u0010\u0000\u001a\u00020\u0001X\u0082\u0004\u00f8\u0001\u0000\u00a2\u0006\u0004\n\u0002\u0010\u0002\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006 "
    }
    d2 = {
        "DismissThreshold",
        "Landroidx/compose/ui/unit/Dp;",
        "F",
        "SwipeToDismiss",
        "",
        "state",
        "Landroidx/compose/material3/DismissState;",
        "background",
        "Lkotlin/Function1;",
        "Landroidx/compose/foundation/layout/RowScope;",
        "Landroidx/compose/runtime/Composable;",
        "Lkotlin/ExtensionFunctionType;",
        "dismissContent",
        "modifier",
        "Landroidx/compose/ui/Modifier;",
        "directions",
        "",
        "Landroidx/compose/material3/DismissDirection;",
        "(Landroidx/compose/material3/DismissState;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function3;Landroidx/compose/ui/Modifier;Ljava/util/Set;Landroidx/compose/runtime/Composer;II)V",
        "rememberDismissState",
        "initialValue",
        "Landroidx/compose/material3/DismissValue;",
        "confirmValueChange",
        "",
        "positionalThreshold",
        "Lkotlin/Function2;",
        "Landroidx/compose/ui/unit/Density;",
        "",
        "Lkotlin/ParameterName;",
        "name",
        "totalDistance",
        "(Landroidx/compose/material3/DismissValue;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;II)Landroidx/compose/material3/DismissState;",
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


# static fields
.field private static final DismissThreshold:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x7d

    int-to-float v0, v0

    .line 412
    invoke-static {v0}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v0

    sput v0, Landroidx/compose/material3/SwipeToDismissKt;->DismissThreshold:F

    return-void
.end method

.method public static final SwipeToDismiss(Landroidx/compose/material3/DismissState;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function3;Landroidx/compose/ui/Modifier;Ljava/util/Set;Landroidx/compose/runtime/Composer;II)V
    .locals 27
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/material3/DismissState;",
            "Lkotlin/jvm/functions/Function3<",
            "-",
            "Landroidx/compose/foundation/layout/RowScope;",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function3<",
            "-",
            "Landroidx/compose/foundation/layout/RowScope;",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;",
            "Landroidx/compose/ui/Modifier;",
            "Ljava/util/Set<",
            "+",
            "Landroidx/compose/material3/DismissDirection;",
            ">;",
            "Landroidx/compose/runtime/Composer;",
            "II)V"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v6, p6

    const-string/jumbo v0, "state"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "background"

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dismissContent"

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const v0, -0x163e9741

    move-object/from16 v4, p5

    .line 238
    invoke-interface {v4, v0}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object v4

    const-string v5, "C(SwipeToDismiss)P(4!1,2,3)238@8860L7,240@8896L1089:SwipeToDismiss.kt#uh7d8r"

    invoke-static {v4, v5}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    and-int/lit8 v5, p7, 0x1

    const/4 v7, 0x2

    if-eqz v5, :cond_0

    or-int/lit8 v5, v6, 0x6

    goto :goto_1

    :cond_0
    and-int/lit8 v5, v6, 0xe

    if-nez v5, :cond_2

    invoke-interface {v4, v1}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v5, 0x4

    goto :goto_0

    :cond_1
    move v5, v7

    :goto_0
    or-int/2addr v5, v6

    goto :goto_1

    :cond_2
    move v5, v6

    :goto_1
    and-int/lit8 v8, p7, 0x2

    const/16 v9, 0x10

    if-eqz v8, :cond_3

    or-int/lit8 v5, v5, 0x30

    goto :goto_3

    :cond_3
    and-int/lit8 v8, v6, 0x70

    if-nez v8, :cond_5

    invoke-interface {v4, v2}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    const/16 v8, 0x20

    goto :goto_2

    :cond_4
    move v8, v9

    :goto_2
    or-int/2addr v5, v8

    :cond_5
    :goto_3
    and-int/lit8 v8, p7, 0x4

    if-eqz v8, :cond_6

    or-int/lit16 v5, v5, 0x180

    goto :goto_5

    :cond_6
    and-int/lit16 v8, v6, 0x380

    if-nez v8, :cond_8

    invoke-interface {v4, v3}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    const/16 v8, 0x100

    goto :goto_4

    :cond_7
    const/16 v8, 0x80

    :goto_4
    or-int/2addr v5, v8

    :cond_8
    :goto_5
    and-int/lit8 v8, p7, 0x8

    if-eqz v8, :cond_9

    or-int/lit16 v5, v5, 0xc00

    goto :goto_7

    :cond_9
    and-int/lit16 v10, v6, 0x1c00

    if-nez v10, :cond_b

    move-object/from16 v10, p3

    invoke-interface {v4, v10}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_a

    const/16 v11, 0x800

    goto :goto_6

    :cond_a
    const/16 v11, 0x400

    :goto_6
    or-int/2addr v5, v11

    goto :goto_8

    :cond_b
    :goto_7
    move-object/from16 v10, p3

    :goto_8
    and-int/lit8 v11, p7, 0x10

    if-eqz v11, :cond_c

    or-int/lit16 v5, v5, 0x2000

    :cond_c
    if-ne v11, v9, :cond_e

    const v9, 0xb6db

    and-int/2addr v9, v5

    const/16 v12, 0x2492

    if-ne v9, v12, :cond_e

    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result v9

    if-nez v9, :cond_d

    goto :goto_9

    .line 270
    :cond_d
    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    move-object/from16 v19, p4

    move-object v5, v3

    goto/16 :goto_11

    :cond_e
    :goto_9
    if-eqz v8, :cond_f

    .line 236
    sget-object v8, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v8, Landroidx/compose/ui/Modifier;

    goto :goto_a

    :cond_f
    move-object v8, v10

    :goto_a
    const/4 v9, 0x0

    const/4 v10, 0x1

    if-eqz v11, :cond_10

    new-array v11, v7, [Landroidx/compose/material3/DismissDirection;

    .line 237
    sget-object v12, Landroidx/compose/material3/DismissDirection;->EndToStart:Landroidx/compose/material3/DismissDirection;

    aput-object v12, v11, v9

    sget-object v12, Landroidx/compose/material3/DismissDirection;->StartToEnd:Landroidx/compose/material3/DismissDirection;

    aput-object v12, v11, v10

    invoke-static {v11}, Lkotlin/collections/SetsKt;->setOf([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v11

    goto :goto_b

    :cond_10
    move-object/from16 v11, p4

    :goto_b
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v12

    if-eqz v12, :cond_11

    const/4 v12, -0x1

    const-string v13, "androidx.compose.material3.SwipeToDismiss (SwipeToDismiss.kt:231)"

    .line 238
    invoke-static {v0, v5, v12, v13}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 239
    :cond_11
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->getLocalLayoutDirection()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v0

    check-cast v0, Landroidx/compose/runtime/CompositionLocal;

    const-string v12, "CC:CompositionLocal.kt#9igjgp"

    const v15, 0x789c5f52

    .line 290
    invoke-static {v4, v15, v12}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    invoke-interface {v4, v0}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v4}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 239
    sget-object v12, Landroidx/compose/ui/unit/LayoutDirection;->Rtl:Landroidx/compose/ui/unit/LayoutDirection;

    if-ne v0, v12, :cond_12

    move/from16 v16, v10

    goto :goto_c

    :cond_12
    move/from16 v16, v9

    .line 244
    :goto_c
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/material3/DismissState;->getSwipeableState$material3_release()Landroidx/compose/material3/SwipeableV2State;

    move-result-object v13

    .line 245
    sget-object v14, Landroidx/compose/foundation/gestures/Orientation;->Horizontal:Landroidx/compose/foundation/gestures/Orientation;

    .line 246
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/material3/DismissState;->getCurrentValue()Landroidx/compose/material3/DismissValue;

    move-result-object v0

    sget-object v12, Landroidx/compose/material3/DismissValue;->Default:Landroidx/compose/material3/DismissValue;

    if-ne v0, v12, :cond_13

    move v0, v10

    goto :goto_d

    :cond_13
    move v0, v9

    :goto_d
    const/16 v17, 0x0

    const/16 v18, 0x10

    const/16 v19, 0x0

    move-object v12, v8

    move v15, v0

    .line 243
    invoke-static/range {v12 .. v19}, Landroidx/compose/material3/SwipeableV2Kt;->swipeableV2$default(Landroidx/compose/ui/Modifier;Landroidx/compose/material3/SwipeableV2State;Landroidx/compose/foundation/gestures/Orientation;ZZLandroidx/compose/foundation/interaction/MutableInteractionSource;ILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v20

    .line 250
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/material3/DismissState;->getSwipeableState$material3_release()Landroidx/compose/material3/SwipeableV2State;

    move-result-object v21

    const/4 v0, 0x3

    new-array v12, v0, [Landroidx/compose/material3/DismissValue;

    .line 251
    sget-object v13, Landroidx/compose/material3/DismissValue;->Default:Landroidx/compose/material3/DismissValue;

    aput-object v13, v12, v9

    sget-object v13, Landroidx/compose/material3/DismissValue;->DismissedToEnd:Landroidx/compose/material3/DismissValue;

    aput-object v13, v12, v10

    sget-object v10, Landroidx/compose/material3/DismissValue;->DismissedToStart:Landroidx/compose/material3/DismissValue;

    aput-object v10, v12, v7

    invoke-static {v12}, Lkotlin/collections/SetsKt;->setOf([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v22

    const/16 v23, 0x0

    .line 249
    new-instance v7, Landroidx/compose/material3/SwipeToDismissKt$SwipeToDismiss$1;

    invoke-direct {v7, v11}, Landroidx/compose/material3/SwipeToDismissKt$SwipeToDismiss$1;-><init>(Ljava/util/Set;)V

    move-object/from16 v24, v7

    check-cast v24, Lkotlin/jvm/functions/Function2;

    const/16 v25, 0x4

    const/16 v26, 0x0

    invoke-static/range {v20 .. v26}, Landroidx/compose/material3/SwipeableV2Kt;->swipeAnchors$default(Landroidx/compose/ui/Modifier;Landroidx/compose/material3/SwipeableV2State;Ljava/util/Set;Landroidx/compose/material3/AnchorChangeHandler;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v7

    const v10, 0x2bb5b5d7

    .line 241
    invoke-interface {v4, v10}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v10, "CC(Box)P(2,1,3)70@3267L67,71@3339L130:Box.kt#2w3rfo"

    invoke-static {v4, v10}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 291
    sget-object v10, Landroidx/compose/ui/Alignment;->Companion:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v10}, Landroidx/compose/ui/Alignment$Companion;->getTopStart()Landroidx/compose/ui/Alignment;

    move-result-object v10

    .line 295
    invoke-static {v10, v9, v4, v9}, Landroidx/compose/foundation/layout/BoxKt;->rememberBoxMeasurePolicy(Landroidx/compose/ui/Alignment;ZLandroidx/compose/runtime/Composer;I)Landroidx/compose/ui/layout/MeasurePolicy;

    move-result-object v10

    const v12, -0x4ee9b9da

    .line 296
    invoke-interface {v4, v12}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v13, "C(Layout)P(!1,2)74@2915L7,75@2970L7,76@3029L7,77@3041L460:Layout.kt#80mrfh"

    invoke-static {v4, v13}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 297
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->getLocalDensity()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v14

    check-cast v14, Landroidx/compose/runtime/CompositionLocal;

    const-string v15, "C:CompositionLocal.kt#9igjgp"

    const v0, 0x789c5f52

    .line 298
    invoke-static {v4, v0, v15}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    invoke-interface {v4, v14}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v14

    invoke-static {v4}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 297
    check-cast v14, Landroidx/compose/ui/unit/Density;

    .line 299
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->getLocalLayoutDirection()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v16

    move-object/from16 v12, v16

    check-cast v12, Landroidx/compose/runtime/CompositionLocal;

    .line 298
    invoke-static {v4, v0, v15}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    invoke-interface {v4, v12}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v12

    invoke-static {v4}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 299
    check-cast v12, Landroidx/compose/ui/unit/LayoutDirection;

    .line 300
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->getLocalViewConfiguration()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v16

    move-object/from16 v9, v16

    check-cast v9, Landroidx/compose/runtime/CompositionLocal;

    .line 298
    invoke-static {v4, v0, v15}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    invoke-interface {v4, v9}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v9

    invoke-static {v4}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 300
    check-cast v9, Landroidx/compose/ui/platform/ViewConfiguration;

    .line 302
    sget-object v16, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual/range {v16 .. v16}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getConstructor()Lkotlin/jvm/functions/Function0;

    move-result-object v0

    .line 309
    invoke-static {v7}, Landroidx/compose/ui/layout/LayoutKt;->materializerOf(Landroidx/compose/ui/Modifier;)Lkotlin/jvm/functions/Function3;

    move-result-object v7

    .line 310
    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->getApplier()Landroidx/compose/runtime/Applier;

    move-result-object v6

    instance-of v6, v6, Landroidx/compose/runtime/Applier;

    if-nez v6, :cond_14

    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->invalidApplier()V

    .line 311
    :cond_14
    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->startReusableNode()V

    .line 312
    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->getInserting()Z

    move-result v6

    if-eqz v6, :cond_15

    .line 313
    invoke-interface {v4, v0}, Landroidx/compose/runtime/Composer;->createNode(Lkotlin/jvm/functions/Function0;)V

    goto :goto_e

    .line 315
    :cond_15
    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->useNode()V

    .line 317
    :goto_e
    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->disableReusing()V

    .line 318
    invoke-static {v4}, Landroidx/compose/runtime/Updater;->constructor-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    move-result-object v0

    .line 304
    sget-object v6, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v6}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetMeasurePolicy()Lkotlin/jvm/functions/Function2;

    move-result-object v6

    invoke-static {v0, v10, v6}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 305
    sget-object v6, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v6}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetDensity()Lkotlin/jvm/functions/Function2;

    move-result-object v6

    invoke-static {v0, v14, v6}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 306
    sget-object v6, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v6}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetLayoutDirection()Lkotlin/jvm/functions/Function2;

    move-result-object v6

    invoke-static {v0, v12, v6}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 307
    sget-object v6, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v6}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetViewConfiguration()Lkotlin/jvm/functions/Function2;

    move-result-object v6

    invoke-static {v0, v9, v6}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 319
    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->enableReusing()V

    .line 320
    invoke-static {v4}, Landroidx/compose/runtime/SkippableUpdater;->constructor-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    move-result-object v0

    invoke-static {v0}, Landroidx/compose/runtime/SkippableUpdater;->box-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/SkippableUpdater;

    move-result-object v0

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v7, v0, v4, v6}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const v0, 0x7ab4aae9

    .line 321
    invoke-interface {v4, v0}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const v6, -0x4ab8dd79

    const-string v7, "C72@3384L9:Box.kt#2w3rfo"

    .line 323
    invoke-static {v4, v6, v7}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    sget-object v6, Landroidx/compose/foundation/layout/BoxScopeInstance;->INSTANCE:Landroidx/compose/foundation/layout/BoxScopeInstance;

    check-cast v6, Landroidx/compose/foundation/layout/BoxScope;

    const v7, 0x50db14e9

    const-string v9, "C260@9696L110,266@9909L52,264@9819L156:SwipeToDismiss.kt#uh7d8r"

    .line 261
    invoke-static {v4, v7, v9}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    .line 263
    sget-object v7, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v7, Landroidx/compose/ui/Modifier;

    invoke-interface {v6, v7}, Landroidx/compose/foundation/layout/BoxScope;->matchParentSize(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v6

    shl-int/lit8 v7, v5, 0x6

    and-int/lit16 v7, v7, 0x1c00

    const v9, 0x2952b718

    .line 261
    invoke-interface {v4, v9}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v10, "CC(Row)P(2,1,3)78@3913L58,79@3976L130:Row.kt#2w3rfo"

    invoke-static {v4, v10}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 324
    sget-object v12, Landroidx/compose/foundation/layout/Arrangement;->INSTANCE:Landroidx/compose/foundation/layout/Arrangement;

    invoke-virtual {v12}, Landroidx/compose/foundation/layout/Arrangement;->getStart()Landroidx/compose/foundation/layout/Arrangement$Horizontal;

    move-result-object v12

    .line 325
    sget-object v14, Landroidx/compose/ui/Alignment;->Companion:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v14}, Landroidx/compose/ui/Alignment$Companion;->getTop()Landroidx/compose/ui/Alignment$Vertical;

    move-result-object v14

    shr-int/lit8 v16, v7, 0x3

    and-int/lit8 v17, v16, 0xe

    and-int/lit8 v16, v16, 0x70

    or-int v9, v17, v16

    .line 328
    invoke-static {v12, v14, v4, v9}, Landroidx/compose/foundation/layout/RowKt;->rowMeasurePolicy(Landroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/ui/Alignment$Vertical;Landroidx/compose/runtime/Composer;I)Landroidx/compose/ui/layout/MeasurePolicy;

    move-result-object v9

    shl-int/lit8 v12, v7, 0x3

    and-int/lit8 v12, v12, 0x70

    const v14, -0x4ee9b9da

    .line 329
    invoke-interface {v4, v14}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    invoke-static {v4, v13}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 330
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->getLocalDensity()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v14

    check-cast v14, Landroidx/compose/runtime/CompositionLocal;

    const v0, 0x789c5f52

    .line 331
    invoke-static {v4, v0, v15}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    invoke-interface {v4, v14}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v14

    invoke-static {v4}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 330
    check-cast v14, Landroidx/compose/ui/unit/Density;

    .line 332
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->getLocalLayoutDirection()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v17

    move-object/from16 v18, v8

    move-object/from16 v8, v17

    check-cast v8, Landroidx/compose/runtime/CompositionLocal;

    .line 331
    invoke-static {v4, v0, v15}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    invoke-interface {v4, v8}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v8

    invoke-static {v4}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 332
    check-cast v8, Landroidx/compose/ui/unit/LayoutDirection;

    .line 333
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->getLocalViewConfiguration()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v17

    move-object/from16 v19, v11

    move-object/from16 v11, v17

    check-cast v11, Landroidx/compose/runtime/CompositionLocal;

    .line 331
    invoke-static {v4, v0, v15}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    invoke-interface {v4, v11}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v4}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 333
    check-cast v0, Landroidx/compose/ui/platform/ViewConfiguration;

    .line 335
    sget-object v11, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v11}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getConstructor()Lkotlin/jvm/functions/Function0;

    move-result-object v11

    .line 342
    invoke-static {v6}, Landroidx/compose/ui/layout/LayoutKt;->materializerOf(Landroidx/compose/ui/Modifier;)Lkotlin/jvm/functions/Function3;

    move-result-object v6

    shl-int/lit8 v12, v12, 0x9

    and-int/lit16 v12, v12, 0x1c00

    or-int/lit8 v12, v12, 0x6

    .line 343
    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->getApplier()Landroidx/compose/runtime/Applier;

    move-result-object v3

    instance-of v3, v3, Landroidx/compose/runtime/Applier;

    if-nez v3, :cond_16

    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->invalidApplier()V

    .line 344
    :cond_16
    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->startReusableNode()V

    .line 345
    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->getInserting()Z

    move-result v3

    if-eqz v3, :cond_17

    .line 346
    invoke-interface {v4, v11}, Landroidx/compose/runtime/Composer;->createNode(Lkotlin/jvm/functions/Function0;)V

    goto :goto_f

    .line 348
    :cond_17
    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->useNode()V

    .line 350
    :goto_f
    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->disableReusing()V

    .line 351
    invoke-static {v4}, Landroidx/compose/runtime/Updater;->constructor-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    move-result-object v3

    .line 337
    sget-object v11, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v11}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetMeasurePolicy()Lkotlin/jvm/functions/Function2;

    move-result-object v11

    invoke-static {v3, v9, v11}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 338
    sget-object v9, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v9}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetDensity()Lkotlin/jvm/functions/Function2;

    move-result-object v9

    invoke-static {v3, v14, v9}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 339
    sget-object v9, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v9}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetLayoutDirection()Lkotlin/jvm/functions/Function2;

    move-result-object v9

    invoke-static {v3, v8, v9}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 340
    sget-object v8, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v8}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetViewConfiguration()Lkotlin/jvm/functions/Function2;

    move-result-object v8

    invoke-static {v3, v0, v8}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 352
    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->enableReusing()V

    .line 353
    invoke-static {v4}, Landroidx/compose/runtime/SkippableUpdater;->constructor-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    move-result-object v0

    invoke-static {v0}, Landroidx/compose/runtime/SkippableUpdater;->box-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/SkippableUpdater;

    move-result-object v0

    const/4 v3, 0x3

    shr-int/lit8 v8, v12, 0x3

    and-int/lit8 v3, v8, 0x70

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v6, v0, v4, v3}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const v0, 0x7ab4aae9

    .line 354
    invoke-interface {v4, v0}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const v0, -0x1378c6ab

    const-string v3, "C80@4021L9:Row.kt#2w3rfo"

    .line 356
    invoke-static {v4, v0, v3}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    sget-object v6, Landroidx/compose/foundation/layout/RowScopeInstance;->INSTANCE:Landroidx/compose/foundation/layout/RowScopeInstance;

    shr-int/lit8 v7, v7, 0x6

    and-int/lit8 v7, v7, 0x70

    or-int/lit8 v7, v7, 0x6

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v2, v6, v4, v7}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v4}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 357
    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 358
    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->endNode()V

    .line 359
    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 360
    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 267
    sget-object v6, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v6, Landroidx/compose/ui/Modifier;

    const v7, 0x44faf204

    invoke-interface {v4, v7}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v7, "CC(remember)P(1):Composables.kt#9igjgp"

    invoke-static {v4, v7}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 362
    invoke-interface {v4, v1}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v7

    .line 363
    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v8

    if-nez v7, :cond_18

    .line 364
    sget-object v7, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v7}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v7

    if-ne v8, v7, :cond_19

    .line 267
    :cond_18
    new-instance v7, Landroidx/compose/material3/SwipeToDismissKt$SwipeToDismiss$2$1$1;

    invoke-direct {v7, v1}, Landroidx/compose/material3/SwipeToDismissKt$SwipeToDismiss$2$1$1;-><init>(Landroidx/compose/material3/DismissState;)V

    move-object v8, v7

    check-cast v8, Lkotlin/jvm/functions/Function1;

    .line 366
    invoke-interface {v4, v8}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 362
    :cond_19
    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    check-cast v8, Lkotlin/jvm/functions/Function1;

    .line 267
    invoke-static {v6, v8}, Landroidx/compose/foundation/layout/OffsetKt;->offset(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    move-result-object v6

    const/4 v7, 0x3

    shl-int/2addr v5, v7

    and-int/lit16 v5, v5, 0x1c00

    const v7, 0x2952b718

    .line 265
    invoke-interface {v4, v7}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    invoke-static {v4, v10}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 369
    sget-object v7, Landroidx/compose/foundation/layout/Arrangement;->INSTANCE:Landroidx/compose/foundation/layout/Arrangement;

    invoke-virtual {v7}, Landroidx/compose/foundation/layout/Arrangement;->getStart()Landroidx/compose/foundation/layout/Arrangement$Horizontal;

    move-result-object v7

    .line 370
    sget-object v8, Landroidx/compose/ui/Alignment;->Companion:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v8}, Landroidx/compose/ui/Alignment$Companion;->getTop()Landroidx/compose/ui/Alignment$Vertical;

    move-result-object v8

    shr-int/lit8 v9, v5, 0x3

    and-int/lit8 v10, v9, 0xe

    and-int/lit8 v9, v9, 0x70

    or-int/2addr v9, v10

    .line 373
    invoke-static {v7, v8, v4, v9}, Landroidx/compose/foundation/layout/RowKt;->rowMeasurePolicy(Landroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/ui/Alignment$Vertical;Landroidx/compose/runtime/Composer;I)Landroidx/compose/ui/layout/MeasurePolicy;

    move-result-object v7

    shl-int/lit8 v8, v5, 0x3

    and-int/lit8 v8, v8, 0x70

    const v9, -0x4ee9b9da

    .line 374
    invoke-interface {v4, v9}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    invoke-static {v4, v13}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 375
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->getLocalDensity()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v9

    check-cast v9, Landroidx/compose/runtime/CompositionLocal;

    const v10, 0x789c5f52

    .line 376
    invoke-static {v4, v10, v15}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    invoke-interface {v4, v9}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v9

    invoke-static {v4}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 375
    check-cast v9, Landroidx/compose/ui/unit/Density;

    .line 377
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->getLocalLayoutDirection()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v11

    check-cast v11, Landroidx/compose/runtime/CompositionLocal;

    .line 376
    invoke-static {v4, v10, v15}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    invoke-interface {v4, v11}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v11

    invoke-static {v4}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 377
    check-cast v11, Landroidx/compose/ui/unit/LayoutDirection;

    .line 378
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->getLocalViewConfiguration()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v12

    check-cast v12, Landroidx/compose/runtime/CompositionLocal;

    .line 376
    invoke-static {v4, v10, v15}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    invoke-interface {v4, v12}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v10

    invoke-static {v4}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 378
    check-cast v10, Landroidx/compose/ui/platform/ViewConfiguration;

    .line 380
    sget-object v12, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v12}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getConstructor()Lkotlin/jvm/functions/Function0;

    move-result-object v12

    .line 387
    invoke-static {v6}, Landroidx/compose/ui/layout/LayoutKt;->materializerOf(Landroidx/compose/ui/Modifier;)Lkotlin/jvm/functions/Function3;

    move-result-object v6

    shl-int/lit8 v8, v8, 0x9

    and-int/lit16 v8, v8, 0x1c00

    or-int/lit8 v8, v8, 0x6

    .line 388
    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->getApplier()Landroidx/compose/runtime/Applier;

    move-result-object v13

    instance-of v13, v13, Landroidx/compose/runtime/Applier;

    if-nez v13, :cond_1a

    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->invalidApplier()V

    .line 389
    :cond_1a
    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->startReusableNode()V

    .line 390
    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->getInserting()Z

    move-result v13

    if-eqz v13, :cond_1b

    .line 391
    invoke-interface {v4, v12}, Landroidx/compose/runtime/Composer;->createNode(Lkotlin/jvm/functions/Function0;)V

    goto :goto_10

    .line 393
    :cond_1b
    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->useNode()V

    .line 395
    :goto_10
    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->disableReusing()V

    .line 396
    invoke-static {v4}, Landroidx/compose/runtime/Updater;->constructor-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    move-result-object v12

    .line 382
    sget-object v13, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v13}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetMeasurePolicy()Lkotlin/jvm/functions/Function2;

    move-result-object v13

    invoke-static {v12, v7, v13}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 383
    sget-object v7, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v7}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetDensity()Lkotlin/jvm/functions/Function2;

    move-result-object v7

    invoke-static {v12, v9, v7}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 384
    sget-object v7, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v7}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetLayoutDirection()Lkotlin/jvm/functions/Function2;

    move-result-object v7

    invoke-static {v12, v11, v7}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 385
    sget-object v7, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v7}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetViewConfiguration()Lkotlin/jvm/functions/Function2;

    move-result-object v7

    invoke-static {v12, v10, v7}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 397
    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->enableReusing()V

    .line 398
    invoke-static {v4}, Landroidx/compose/runtime/SkippableUpdater;->constructor-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    move-result-object v7

    invoke-static {v7}, Landroidx/compose/runtime/SkippableUpdater;->box-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/SkippableUpdater;

    move-result-object v7

    const/4 v9, 0x3

    shr-int/2addr v8, v9

    and-int/lit8 v8, v8, 0x70

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v6, v7, v4, v8}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const v6, 0x7ab4aae9

    .line 399
    invoke-interface {v4, v6}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 401
    invoke-static {v4, v0, v3}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    sget-object v0, Landroidx/compose/foundation/layout/RowScopeInstance;->INSTANCE:Landroidx/compose/foundation/layout/RowScopeInstance;

    shr-int/lit8 v3, v5, 0x6

    and-int/lit8 v3, v3, 0x70

    or-int/lit8 v3, v3, 0x6

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v5, p2

    invoke-interface {v5, v0, v4, v3}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v4}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 402
    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 403
    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->endNode()V

    .line 404
    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 405
    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 261
    invoke-static {v4}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 323
    invoke-static {v4}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 407
    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 408
    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->endNode()V

    .line 409
    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 410
    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 411
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_1c

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_1c
    move-object/from16 v10, v18

    .line 270
    :goto_11
    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v8

    if-nez v8, :cond_1d

    goto :goto_12

    :cond_1d
    new-instance v9, Landroidx/compose/material3/SwipeToDismissKt$SwipeToDismiss$3;

    move-object v0, v9

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object v4, v10

    move-object/from16 v5, v19

    move/from16 v6, p6

    move/from16 v7, p7

    invoke-direct/range {v0 .. v7}, Landroidx/compose/material3/SwipeToDismissKt$SwipeToDismiss$3;-><init>(Landroidx/compose/material3/DismissState;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function3;Landroidx/compose/ui/Modifier;Ljava/util/Set;II)V

    check-cast v9, Lkotlin/jvm/functions/Function2;

    invoke-interface {v8, v9}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    :goto_12
    return-void
.end method

.method public static final synthetic access$getDismissThreshold$p()F
    .locals 1

    sget v0, Landroidx/compose/material3/SwipeToDismissKt;->DismissThreshold:F

    return v0
.end method

.method public static final rememberDismissState(Landroidx/compose/material3/DismissValue;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;II)Landroidx/compose/material3/DismissState;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/material3/DismissValue;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/compose/material3/DismissValue;",
            "Ljava/lang/Boolean;",
            ">;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroidx/compose/ui/unit/Density;",
            "-",
            "Ljava/lang/Float;",
            "Ljava/lang/Float;",
            ">;",
            "Landroidx/compose/runtime/Composer;",
            "II)",
            "Landroidx/compose/material3/DismissState;"
        }
    .end annotation

    const v0, -0xfbbd193

    invoke-interface {p3, v0}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v1, "C(rememberDismissState)P(1)212@7855L83,211@7760L178:SwipeToDismiss.kt#uh7d8r"

    invoke-static {p3, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    and-int/lit8 v1, p5, 0x1

    if-eqz v1, :cond_0

    .line 207
    sget-object p0, Landroidx/compose/material3/DismissValue;->Default:Landroidx/compose/material3/DismissValue;

    :cond_0
    and-int/lit8 v1, p5, 0x2

    if-eqz v1, :cond_1

    .line 208
    sget-object p1, Landroidx/compose/material3/SwipeToDismissKt$rememberDismissState$1;->INSTANCE:Landroidx/compose/material3/SwipeToDismissKt$rememberDismissState$1;

    check-cast p1, Lkotlin/jvm/functions/Function1;

    :cond_1
    and-int/lit8 p5, p5, 0x4

    if-eqz p5, :cond_2

    .line 210
    sget-object p2, Landroidx/compose/material3/SwipeToDismissDefaults;->INSTANCE:Landroidx/compose/material3/SwipeToDismissDefaults;

    invoke-virtual {p2}, Landroidx/compose/material3/SwipeToDismissDefaults;->getFixedPositionalThreshold()Lkotlin/jvm/functions/Function2;

    move-result-object p2

    :cond_2
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result p5

    if-eqz p5, :cond_3

    const/4 p5, -0x1

    const-string v1, "androidx.compose.material3.rememberDismissState (SwipeToDismiss.kt:205)"

    .line 211
    invoke-static {v0, p4, p5, v1}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_3
    const/4 p4, 0x0

    new-array v0, p4, [Ljava/lang/Object;

    .line 213
    sget-object p4, Landroidx/compose/material3/DismissState;->Companion:Landroidx/compose/material3/DismissState$Companion;

    invoke-virtual {p4, p1, p2}, Landroidx/compose/material3/DismissState$Companion;->Saver(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;)Landroidx/compose/runtime/saveable/Saver;

    move-result-object v1

    const/4 v2, 0x0

    const p4, 0x607fb4c4

    invoke-interface {p3, p4}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string p4, "CC(remember)P(1,2,3):Composables.kt#9igjgp"

    invoke-static {p3, p4}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 280
    invoke-interface {p3, p0}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result p4

    .line 281
    invoke-interface {p3, p1}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result p5

    or-int/2addr p4, p5

    .line 282
    invoke-interface {p3, p2}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result p5

    or-int/2addr p4, p5

    .line 284
    invoke-interface {p3}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object p5

    if-nez p4, :cond_4

    .line 285
    sget-object p4, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {p4}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object p4

    if-ne p5, p4, :cond_5

    .line 213
    :cond_4
    new-instance p4, Landroidx/compose/material3/SwipeToDismissKt$rememberDismissState$2$1;

    invoke-direct {p4, p0, p1, p2}, Landroidx/compose/material3/SwipeToDismissKt$rememberDismissState$2$1;-><init>(Landroidx/compose/material3/DismissValue;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;)V

    move-object p5, p4

    check-cast p5, Lkotlin/jvm/functions/Function0;

    .line 287
    invoke-interface {p3, p5}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 283
    :cond_5
    invoke-interface {p3}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    move-object v3, p5

    check-cast v3, Lkotlin/jvm/functions/Function0;

    const/16 v5, 0x48

    const/4 v6, 0x4

    move-object v4, p3

    .line 212
    invoke-static/range {v0 .. v6}, Landroidx/compose/runtime/saveable/RememberSaveableKt;->rememberSaveable([Ljava/lang/Object;Landroidx/compose/runtime/saveable/Saver;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;II)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/compose/material3/DismissState;

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result p1

    if-eqz p1, :cond_6

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_6
    invoke-interface {p3}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    return-object p0
.end method
