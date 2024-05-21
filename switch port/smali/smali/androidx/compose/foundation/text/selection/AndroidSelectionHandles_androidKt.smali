.class public final Landroidx/compose/foundation/text/selection/AndroidSelectionHandles_androidKt;
.super Ljava/lang/Object;
.source "AndroidSelectionHandles.android.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAndroidSelectionHandles.android.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AndroidSelectionHandles.android.kt\nandroidx/compose/foundation/text/selection/AndroidSelectionHandles_androidKt\n+ 2 CanvasDrawScope.kt\nandroidx/compose/ui/graphics/drawscope/CanvasDrawScope\n+ 3 Composables.kt\nandroidx/compose/runtime/ComposablesKt\n+ 4 Composer.kt\nandroidx/compose/runtime/ComposerKt\n*L\n1#1,330:1\n558#2,17:331\n50#3:348\n49#3:349\n1097#4,6:350\n*S KotlinDebug\n*F\n+ 1 AndroidSelectionHandles.android.kt\nandroidx/compose/foundation/text/selection/AndroidSelectionHandles_androidKt\n*L\n193#1:331,17\n231#1:348\n231#1:349\n231#1:350,6\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000F\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\u0008\u0002\u001a-\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\u0005H\u0001\u00a2\u0006\u0002\u0010\t\u001a8\u0010\n\u001a\u00020\u00012\u0006\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u000e2\u0011\u0010\u000f\u001a\r\u0012\u0004\u0012\u00020\u00010\u0010\u00a2\u0006\u0002\u0008\u0011H\u0001\u00f8\u0001\u0000\u00f8\u0001\u0001\u00a2\u0006\u0004\u0008\u0012\u0010\u0013\u001aR\u0010\u0014\u001a\u00020\u00012\u0006\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\u00052\u0006\u0010\u0002\u001a\u00020\u00032\u0013\u0010\u000f\u001a\u000f\u0012\u0004\u0012\u00020\u0001\u0018\u00010\u0010\u00a2\u0006\u0002\u0008\u0011H\u0001\u00f8\u0001\u0000\u00f8\u0001\u0001\u00a2\u0006\u0004\u0008\u0015\u0010\u0016\u001a\u0018\u0010\u0017\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0018\u001a\u00020\u0005H\u0000\u001a \u0010\u0019\u001a\u00020\u00052\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\u0005H\u0002\u001a\u0014\u0010\u001a\u001a\u00020\u001b*\u00020\u001c2\u0006\u0010\u001d\u001a\u00020\u001eH\u0000\u001a$\u0010\u001f\u001a\u00020\u0003*\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\u0005H\u0000\u0082\u0002\u000b\n\u0005\u0008\u00a1\u001e0\u0001\n\u0002\u0008\u0019\u00a8\u0006 "
    }
    d2 = {
        "DefaultSelectionHandle",
        "",
        "modifier",
        "Landroidx/compose/ui/Modifier;",
        "isStartHandle",
        "",
        "direction",
        "Landroidx/compose/ui/text/style/ResolvedTextDirection;",
        "handlesCrossed",
        "(Landroidx/compose/ui/Modifier;ZLandroidx/compose/ui/text/style/ResolvedTextDirection;ZLandroidx/compose/runtime/Composer;I)V",
        "HandlePopup",
        "position",
        "Landroidx/compose/ui/geometry/Offset;",
        "handleReferencePoint",
        "Landroidx/compose/foundation/text/selection/HandleReferencePoint;",
        "content",
        "Lkotlin/Function0;",
        "Landroidx/compose/runtime/Composable;",
        "HandlePopup-ULxng0E",
        "(JLandroidx/compose/foundation/text/selection/HandleReferencePoint;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V",
        "SelectionHandle",
        "SelectionHandle-8fL75-g",
        "(JZLandroidx/compose/ui/text/style/ResolvedTextDirection;ZLandroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V",
        "isHandleLtrDirection",
        "areHandlesCrossed",
        "isLeft",
        "createHandleImage",
        "Landroidx/compose/ui/graphics/ImageBitmap;",
        "Landroidx/compose/ui/draw/CacheDrawScope;",
        "radius",
        "",
        "drawSelectionHandle",
        "foundation_release"
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
.method public static final DefaultSelectionHandle(Landroidx/compose/ui/Modifier;ZLandroidx/compose/ui/text/style/ResolvedTextDirection;ZLandroidx/compose/runtime/Composer;I)V
    .locals 7

    const-string v0, "modifier"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "direction"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const v0, 0x2dbc596

    .line 101
    invoke-interface {p4, v0}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object p4

    const-string v1, "C(DefaultSelectionHandle)P(3,2)101@3820L137:AndroidSelectionHandles.android.kt#eksfi3"

    invoke-static {p4, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    and-int/lit8 v1, p5, 0xe

    if-nez v1, :cond_1

    invoke-interface {p4, p0}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

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

    invoke-interface {p4, p1}, Landroidx/compose/runtime/Composer;->changed(Z)Z

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

    invoke-interface {p4, p2}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const/16 v2, 0x100

    goto :goto_3

    :cond_4
    const/16 v2, 0x80

    :goto_3
    or-int/2addr v1, v2

    :cond_5
    and-int/lit16 v2, p5, 0x1c00

    if-nez v2, :cond_7

    invoke-interface {p4, p3}, Landroidx/compose/runtime/Composer;->changed(Z)Z

    move-result v2

    if-eqz v2, :cond_6

    const/16 v2, 0x800

    goto :goto_4

    :cond_6
    const/16 v2, 0x400

    :goto_4
    or-int/2addr v1, v2

    :cond_7
    and-int/lit16 v1, v1, 0x16db

    const/16 v2, 0x492

    if-ne v1, v2, :cond_9

    invoke-interface {p4}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result v1

    if-nez v1, :cond_8

    goto :goto_5

    .line 106
    :cond_8
    invoke-interface {p4}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    goto :goto_6

    .line 101
    :cond_9
    :goto_5
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v1

    if-eqz v1, :cond_a

    const/4 v1, -0x1

    const-string v2, "androidx.compose.foundation.text.selection.DefaultSelectionHandle (AndroidSelectionHandles.android.kt:95)"

    invoke-static {v0, p5, v1, v2}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 103
    :cond_a
    invoke-static {}, Landroidx/compose/foundation/text/selection/SelectionHandlesKt;->getHandleWidth()F

    move-result v0

    invoke-static {}, Landroidx/compose/foundation/text/selection/SelectionHandlesKt;->getHandleHeight()F

    move-result v1

    invoke-static {p0, v0, v1}, Landroidx/compose/foundation/layout/SizeKt;->size-VpY3zN4(Landroidx/compose/ui/Modifier;FF)Landroidx/compose/ui/Modifier;

    move-result-object v0

    .line 104
    invoke-static {v0, p1, p2, p3}, Landroidx/compose/foundation/text/selection/AndroidSelectionHandles_androidKt;->drawSelectionHandle(Landroidx/compose/ui/Modifier;ZLandroidx/compose/ui/text/style/ResolvedTextDirection;Z)Landroidx/compose/ui/Modifier;

    move-result-object v0

    const/4 v1, 0x0

    .line 102
    invoke-static {v0, p4, v1}, Landroidx/compose/foundation/layout/SpacerKt;->Spacer(Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;I)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    .line 106
    :cond_b
    :goto_6
    invoke-interface {p4}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object p4

    if-nez p4, :cond_c

    goto :goto_7

    :cond_c
    new-instance v6, Landroidx/compose/foundation/text/selection/AndroidSelectionHandles_androidKt$DefaultSelectionHandle$1;

    move-object v0, v6

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p5

    invoke-direct/range {v0 .. v5}, Landroidx/compose/foundation/text/selection/AndroidSelectionHandles_androidKt$DefaultSelectionHandle$1;-><init>(Landroidx/compose/ui/Modifier;ZLandroidx/compose/ui/text/style/ResolvedTextDirection;ZI)V

    check-cast v6, Lkotlin/jvm/functions/Function2;

    invoke-interface {p4, v6}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    :goto_7
    return-void
.end method

.method public static final HandlePopup-ULxng0E(JLandroidx/compose/foundation/text/selection/HandleReferencePoint;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V
    .locals 24
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Landroidx/compose/foundation/text/selection/HandleReferencePoint;",
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

    move-object/from16 v3, p2

    move-object/from16 v11, p3

    move/from16 v12, p5

    const-string v0, "handleReferencePoint"

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "content"

    invoke-static {v11, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const v0, -0x53fc662e

    move-object/from16 v1, p4

    .line 228
    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object v1

    const-string v2, "C(HandlePopup)P(2:c#ui.geometry.Offset,1)230@8022L113,234@8141L217:AndroidSelectionHandles.android.kt#eksfi3"

    invoke-static {v1, v2}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    and-int/lit8 v2, v12, 0xe

    move-wide/from16 v13, p0

    if-nez v2, :cond_1

    invoke-interface {v1, v13, v14}, Landroidx/compose/runtime/Composer;->changed(J)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x4

    goto :goto_0

    :cond_0
    const/4 v2, 0x2

    :goto_0
    or-int/2addr v2, v12

    goto :goto_1

    :cond_1
    move v2, v12

    :goto_1
    and-int/lit8 v4, v12, 0x70

    if-nez v4, :cond_3

    invoke-interface {v1, v3}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/16 v4, 0x20

    goto :goto_2

    :cond_2
    const/16 v4, 0x10

    :goto_2
    or-int/2addr v2, v4

    :cond_3
    and-int/lit16 v4, v12, 0x380

    if-nez v4, :cond_5

    invoke-interface {v1, v11}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    const/16 v4, 0x100

    goto :goto_3

    :cond_4
    const/16 v4, 0x80

    :goto_3
    or-int/2addr v2, v4

    :cond_5
    and-int/lit16 v4, v2, 0x2db

    const/16 v5, 0x92

    if-ne v4, v5, :cond_7

    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result v4

    if-nez v4, :cond_6

    goto :goto_4

    .line 243
    :cond_6
    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    goto/16 :goto_5

    .line 228
    :cond_7
    :goto_4
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v4

    if-eqz v4, :cond_8

    const/4 v4, -0x1

    const-string v5, "androidx.compose.foundation.text.selection.HandlePopup (AndroidSelectionHandles.android.kt:223)"

    invoke-static {v0, v2, v4, v5}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 229
    :cond_8
    invoke-static/range {p0 .. p1}, Landroidx/compose/ui/geometry/Offset;->getX-impl(J)F

    move-result v0

    invoke-static {v0}, Lkotlin/math/MathKt;->roundToInt(F)I

    move-result v0

    invoke-static/range {p0 .. p1}, Landroidx/compose/ui/geometry/Offset;->getY-impl(J)F

    move-result v4

    invoke-static {v4}, Lkotlin/math/MathKt;->roundToInt(F)I

    move-result v4

    invoke-static {v0, v4}, Landroidx/compose/ui/unit/IntOffsetKt;->IntOffset(II)J

    move-result-wide v4

    invoke-static {v4, v5}, Landroidx/compose/ui/unit/IntOffset;->box-impl(J)Landroidx/compose/ui/unit/IntOffset;

    move-result-object v0

    const v6, 0x1e7b2b64

    .line 231
    invoke-interface {v1, v6}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v6, "CC(remember)P(1,2):Composables.kt#9igjgp"

    invoke-static {v1, v6}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 348
    invoke-interface {v1, v3}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v6

    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v0

    or-int/2addr v0, v6

    .line 350
    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v6

    if-nez v0, :cond_9

    .line 351
    sget-object v0, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v0}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v0

    if-ne v6, v0, :cond_a

    .line 232
    :cond_9
    new-instance v6, Landroidx/compose/foundation/text/selection/HandlePositionProvider;

    const/4 v0, 0x0

    invoke-direct {v6, v3, v4, v5, v0}, Landroidx/compose/foundation/text/selection/HandlePositionProvider;-><init>(Landroidx/compose/foundation/text/selection/HandleReferencePoint;JLkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 353
    invoke-interface {v1, v6}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 349
    :cond_a
    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 231
    check-cast v6, Landroidx/compose/foundation/text/selection/HandlePositionProvider;

    .line 236
    move-object v4, v6

    check-cast v4, Landroidx/compose/ui/window/PopupPositionProvider;

    const/4 v5, 0x0

    .line 237
    new-instance v6, Landroidx/compose/ui/window/PopupProperties;

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x1

    const/16 v21, 0x0

    const/16 v22, 0xf

    const/16 v23, 0x0

    move-object v15, v6

    invoke-direct/range {v15 .. v23}, Landroidx/compose/ui/window/PopupProperties;-><init>(ZZZLandroidx/compose/ui/window/SecureFlagPolicy;ZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    shl-int/lit8 v0, v2, 0x3

    and-int/lit16 v0, v0, 0x1c00

    or-int/lit16 v9, v0, 0x180

    const/4 v10, 0x2

    move-object/from16 v7, p3

    move-object v8, v1

    .line 235
    invoke-static/range {v4 .. v10}, Landroidx/compose/ui/window/AndroidPopup_androidKt;->Popup(Landroidx/compose/ui/window/PopupPositionProvider;Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/window/PopupProperties;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;II)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    .line 243
    :cond_b
    :goto_5
    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v6

    if-nez v6, :cond_c

    goto :goto_6

    :cond_c
    new-instance v7, Landroidx/compose/foundation/text/selection/AndroidSelectionHandles_androidKt$HandlePopup$1;

    move-object v0, v7

    move-wide/from16 v1, p0

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move/from16 v5, p5

    invoke-direct/range {v0 .. v5}, Landroidx/compose/foundation/text/selection/AndroidSelectionHandles_androidKt$HandlePopup$1;-><init>(JLandroidx/compose/foundation/text/selection/HandleReferencePoint;Lkotlin/jvm/functions/Function2;I)V

    check-cast v7, Lkotlin/jvm/functions/Function2;

    invoke-interface {v6, v7}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    :goto_6
    return-void
.end method

.method public static final SelectionHandle-8fL75-g(JZLandroidx/compose/ui/text/style/ResolvedTextDirection;ZLandroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JZ",
            "Landroidx/compose/ui/text/style/ResolvedTextDirection;",
            "Z",
            "Landroidx/compose/ui/Modifier;",
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

    move-object/from16 v9, p3

    move-object/from16 v10, p5

    move/from16 v11, p8

    const-string v0, "direction"

    invoke-static {v9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "modifier"

    invoke-static {v10, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const v0, -0x24bbecda

    move-object/from16 v1, p7

    .line 61
    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object v12

    const-string v1, "C(SelectionHandle)P(5:c#ui.geometry.Offset,3,1,2,4)69@2795L823:AndroidSelectionHandles.android.kt#eksfi3"

    invoke-static {v12, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    and-int/lit8 v1, v11, 0xe

    move-wide/from16 v13, p0

    if-nez v1, :cond_1

    invoke-interface {v12, v13, v14}, Landroidx/compose/runtime/Composer;->changed(J)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x4

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    :goto_0
    or-int/2addr v1, v11

    goto :goto_1

    :cond_1
    move v1, v11

    :goto_1
    and-int/lit8 v2, v11, 0x70

    move/from16 v15, p2

    if-nez v2, :cond_3

    invoke-interface {v12, v15}, Landroidx/compose/runtime/Composer;->changed(Z)Z

    move-result v2

    if-eqz v2, :cond_2

    const/16 v2, 0x20

    goto :goto_2

    :cond_2
    const/16 v2, 0x10

    :goto_2
    or-int/2addr v1, v2

    :cond_3
    and-int/lit16 v2, v11, 0x380

    if-nez v2, :cond_5

    invoke-interface {v12, v9}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const/16 v2, 0x100

    goto :goto_3

    :cond_4
    const/16 v2, 0x80

    :goto_3
    or-int/2addr v1, v2

    :cond_5
    and-int/lit16 v2, v11, 0x1c00

    move/from16 v8, p4

    if-nez v2, :cond_7

    invoke-interface {v12, v8}, Landroidx/compose/runtime/Composer;->changed(Z)Z

    move-result v2

    if-eqz v2, :cond_6

    const/16 v2, 0x800

    goto :goto_4

    :cond_6
    const/16 v2, 0x400

    :goto_4
    or-int/2addr v1, v2

    :cond_7
    const v2, 0xe000

    and-int/2addr v2, v11

    if-nez v2, :cond_9

    invoke-interface {v12, v10}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    const/16 v2, 0x4000

    goto :goto_5

    :cond_8
    const/16 v2, 0x2000

    :goto_5
    or-int/2addr v1, v2

    :cond_9
    const/high16 v2, 0x70000

    and-int/2addr v2, v11

    move-object/from16 v7, p6

    if-nez v2, :cond_b

    invoke-interface {v12, v7}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    const/high16 v2, 0x20000

    goto :goto_6

    :cond_a
    const/high16 v2, 0x10000

    :goto_6
    or-int/2addr v1, v2

    :cond_b
    move v6, v1

    const v1, 0x5b6db

    and-int/2addr v1, v6

    const v2, 0x12492

    if-ne v1, v2, :cond_d

    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result v1

    if-nez v1, :cond_c

    goto :goto_7

    .line 92
    :cond_c
    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    goto :goto_9

    .line 61
    :cond_d
    :goto_7
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v1

    if-eqz v1, :cond_e

    const/4 v1, -0x1

    const-string v2, "androidx.compose.foundation.text.selection.SelectionHandle (AndroidSelectionHandles.android.kt:53)"

    invoke-static {v0, v6, v1, v2}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 62
    :cond_e
    invoke-static/range {p2 .. p4}, Landroidx/compose/foundation/text/selection/AndroidSelectionHandles_androidKt;->isLeft(ZLandroidx/compose/ui/text/style/ResolvedTextDirection;Z)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 65
    sget-object v0, Landroidx/compose/foundation/text/selection/HandleReferencePoint;->TopRight:Landroidx/compose/foundation/text/selection/HandleReferencePoint;

    goto :goto_8

    .line 67
    :cond_f
    sget-object v0, Landroidx/compose/foundation/text/selection/HandleReferencePoint;->TopLeft:Landroidx/compose/foundation/text/selection/HandleReferencePoint;

    :goto_8
    move-object/from16 v16, v0

    .line 70
    new-instance v4, Landroidx/compose/foundation/text/selection/AndroidSelectionHandles_androidKt$SelectionHandle$1;

    move-object v0, v4

    move-object/from16 v1, p6

    move-object/from16 v2, p5

    move/from16 v3, p2

    move-object v9, v4

    move-wide/from16 v4, p0

    move/from16 v17, v6

    move-object/from16 v7, p3

    move/from16 v8, p4

    invoke-direct/range {v0 .. v8}, Landroidx/compose/foundation/text/selection/AndroidSelectionHandles_androidKt$SelectionHandle$1;-><init>(Lkotlin/jvm/functions/Function2;Landroidx/compose/ui/Modifier;ZJILandroidx/compose/ui/text/style/ResolvedTextDirection;Z)V

    const v0, 0x2ba2f39d

    const/4 v1, 0x1

    invoke-static {v12, v0, v1, v9}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->composableLambda(Landroidx/compose/runtime/Composer;IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lkotlin/jvm/functions/Function2;

    and-int/lit8 v0, v17, 0xe

    or-int/lit16 v6, v0, 0x180

    move-wide/from16 v1, p0

    move-object/from16 v3, v16

    move-object v5, v12

    invoke-static/range {v1 .. v6}, Landroidx/compose/foundation/text/selection/AndroidSelectionHandles_androidKt;->HandlePopup-ULxng0E(JLandroidx/compose/foundation/text/selection/HandleReferencePoint;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    .line 92
    :cond_10
    :goto_9
    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v9

    if-nez v9, :cond_11

    goto :goto_a

    :cond_11
    new-instance v12, Landroidx/compose/foundation/text/selection/AndroidSelectionHandles_androidKt$SelectionHandle$2;

    move-object v0, v12

    move-wide/from16 v1, p0

    move/from16 v3, p2

    move-object/from16 v4, p3

    move/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move/from16 v8, p8

    invoke-direct/range {v0 .. v8}, Landroidx/compose/foundation/text/selection/AndroidSelectionHandles_androidKt$SelectionHandle$2;-><init>(JZLandroidx/compose/ui/text/style/ResolvedTextDirection;ZLandroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;I)V

    check-cast v12, Lkotlin/jvm/functions/Function2;

    invoke-interface {v9, v12}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    :goto_a
    return-void
.end method

.method public static final synthetic access$isLeft(ZLandroidx/compose/ui/text/style/ResolvedTextDirection;Z)Z
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Landroidx/compose/foundation/text/selection/AndroidSelectionHandles_androidKt;->isLeft(ZLandroidx/compose/ui/text/style/ResolvedTextDirection;Z)Z

    move-result p0

    return p0
.end method

.method public static final createHandleImage(Landroidx/compose/ui/draw/CacheDrawScope;F)Landroidx/compose/ui/graphics/ImageBitmap;
    .locals 32

    move-object/from16 v0, p0

    move/from16 v3, p1

    const-string v1, "<this>"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    float-to-double v1, v3

    .line 166
    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-float v1, v1

    float-to-int v1, v1

    mul-int/lit8 v5, v1, 0x2

    .line 168
    sget-object v1, Landroidx/compose/foundation/text/selection/HandleImageCache;->INSTANCE:Landroidx/compose/foundation/text/selection/HandleImageCache;

    invoke-virtual {v1}, Landroidx/compose/foundation/text/selection/HandleImageCache;->getImageBitmap()Landroidx/compose/ui/graphics/ImageBitmap;

    move-result-object v1

    .line 169
    sget-object v2, Landroidx/compose/foundation/text/selection/HandleImageCache;->INSTANCE:Landroidx/compose/foundation/text/selection/HandleImageCache;

    invoke-virtual {v2}, Landroidx/compose/foundation/text/selection/HandleImageCache;->getCanvas()Landroidx/compose/ui/graphics/Canvas;

    move-result-object v2

    .line 170
    sget-object v4, Landroidx/compose/foundation/text/selection/HandleImageCache;->INSTANCE:Landroidx/compose/foundation/text/selection/HandleImageCache;

    invoke-virtual {v4}, Landroidx/compose/foundation/text/selection/HandleImageCache;->getCanvasDrawScope()Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;

    move-result-object v11

    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    .line 176
    invoke-interface {v1}, Landroidx/compose/ui/graphics/ImageBitmap;->getWidth()I

    move-result v4

    if-gt v5, v4, :cond_0

    .line 177
    invoke-interface {v1}, Landroidx/compose/ui/graphics/ImageBitmap;->getHeight()I

    move-result v4

    if-le v5, v4, :cond_1

    .line 182
    :cond_0
    sget-object v1, Landroidx/compose/ui/graphics/ImageBitmapConfig;->Companion:Landroidx/compose/ui/graphics/ImageBitmapConfig$Companion;

    invoke-virtual {v1}, Landroidx/compose/ui/graphics/ImageBitmapConfig$Companion;->getAlpha8-_sVssgQ()I

    move-result v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0x18

    const/4 v10, 0x0

    move v4, v5

    .line 179
    invoke-static/range {v4 .. v10}, Landroidx/compose/ui/graphics/ImageBitmapKt;->ImageBitmap-x__-hDU$default(IIIZLandroidx/compose/ui/graphics/colorspace/ColorSpace;ILjava/lang/Object;)Landroidx/compose/ui/graphics/ImageBitmap;

    move-result-object v1

    .line 184
    sget-object v2, Landroidx/compose/foundation/text/selection/HandleImageCache;->INSTANCE:Landroidx/compose/foundation/text/selection/HandleImageCache;

    invoke-virtual {v2, v1}, Landroidx/compose/foundation/text/selection/HandleImageCache;->setImageBitmap(Landroidx/compose/ui/graphics/ImageBitmap;)V

    .line 185
    invoke-static {v1}, Landroidx/compose/ui/graphics/CanvasKt;->Canvas(Landroidx/compose/ui/graphics/ImageBitmap;)Landroidx/compose/ui/graphics/Canvas;

    move-result-object v2

    .line 186
    sget-object v4, Landroidx/compose/foundation/text/selection/HandleImageCache;->INSTANCE:Landroidx/compose/foundation/text/selection/HandleImageCache;

    invoke-virtual {v4, v2}, Landroidx/compose/foundation/text/selection/HandleImageCache;->setCanvas(Landroidx/compose/ui/graphics/Canvas;)V

    :cond_1
    move-object v12, v1

    move-object v13, v2

    if-nez v11, :cond_2

    .line 189
    new-instance v11, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;

    invoke-direct {v11}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;-><init>()V

    .line 190
    sget-object v1, Landroidx/compose/foundation/text/selection/HandleImageCache;->INSTANCE:Landroidx/compose/foundation/text/selection/HandleImageCache;

    invoke-virtual {v1, v11}, Landroidx/compose/foundation/text/selection/HandleImageCache;->setCanvasDrawScope(Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;)V

    :cond_2
    move-object v14, v11

    .line 195
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/ui/draw/CacheDrawScope;->getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    move-result-object v1

    .line 197
    invoke-interface {v12}, Landroidx/compose/ui/graphics/ImageBitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-interface {v12}, Landroidx/compose/ui/graphics/ImageBitmap;->getHeight()I

    move-result v4

    int-to-float v4, v4

    invoke-static {v2, v4}, Landroidx/compose/ui/geometry/SizeKt;->Size(FF)J

    move-result-wide v4

    .line 331
    invoke-virtual {v14}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;->getDrawParams()Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;->component1()Landroidx/compose/ui/unit/Density;

    move-result-object v15

    invoke-virtual {v2}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;->component2()Landroidx/compose/ui/unit/LayoutDirection;

    move-result-object v11

    invoke-virtual {v2}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;->component3()Landroidx/compose/ui/graphics/Canvas;

    move-result-object v10

    invoke-virtual {v2}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;->component4-NH-jbRc()J

    move-result-wide v8

    .line 332
    invoke-virtual {v14}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;->getDrawParams()Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;

    move-result-object v2

    .line 333
    check-cast v0, Landroidx/compose/ui/unit/Density;

    invoke-virtual {v2, v0}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;->setDensity(Landroidx/compose/ui/unit/Density;)V

    .line 334
    invoke-virtual {v2, v1}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;->setLayoutDirection(Landroidx/compose/ui/unit/LayoutDirection;)V

    .line 335
    invoke-virtual {v2, v13}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;->setCanvas(Landroidx/compose/ui/graphics/Canvas;)V

    .line 336
    invoke-virtual {v2, v4, v5}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;->setSize-uvyYCjk(J)V

    .line 338
    invoke-interface {v13}, Landroidx/compose/ui/graphics/Canvas;->save()V

    .line 339
    move-object v0, v14

    check-cast v0, Landroidx/compose/ui/graphics/drawscope/DrawScope;

    .line 202
    sget-object v1, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual {v1}, Landroidx/compose/ui/graphics/Color$Companion;->getBlack-0d7_KjU()J

    move-result-wide v17

    const-wide/16 v19, 0x0

    .line 203
    invoke-interface {v0}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->getSize-NH-jbRc()J

    move-result-wide v21

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    .line 204
    sget-object v1, Landroidx/compose/ui/graphics/BlendMode;->Companion:Landroidx/compose/ui/graphics/BlendMode$Companion;

    invoke-virtual {v1}, Landroidx/compose/ui/graphics/BlendMode$Companion;->getClear-0nO6VwU()I

    move-result v26

    const/16 v27, 0x3a

    const/16 v28, 0x0

    move-object/from16 v16, v0

    .line 201
    invoke-static/range {v16 .. v28}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->drawRect-n-J9OG0$default(Landroidx/compose/ui/graphics/drawscope/DrawScope;JJJFLandroidx/compose/ui/graphics/drawscope/DrawStyle;Landroidx/compose/ui/graphics/ColorFilter;IILjava/lang/Object;)V

    const-wide v1, 0xff000000L

    .line 209
    invoke-static {v1, v2}, Landroidx/compose/ui/graphics/ColorKt;->Color(J)J

    move-result-wide v17

    .line 210
    sget-object v4, Landroidx/compose/ui/geometry/Offset;->Companion:Landroidx/compose/ui/geometry/Offset$Companion;

    invoke-virtual {v4}, Landroidx/compose/ui/geometry/Offset$Companion;->getZero-F1C5BW0()J

    move-result-wide v19

    .line 211
    invoke-static {v3, v3}, Landroidx/compose/ui/geometry/SizeKt;->Size(FF)J

    move-result-wide v21

    const/16 v26, 0x0

    const/16 v27, 0x78

    .line 208
    invoke-static/range {v16 .. v28}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->drawRect-n-J9OG0$default(Landroidx/compose/ui/graphics/drawscope/DrawScope;JJJFLandroidx/compose/ui/graphics/drawscope/DrawStyle;Landroidx/compose/ui/graphics/ColorFilter;IILjava/lang/Object;)V

    .line 215
    invoke-static {v1, v2}, Landroidx/compose/ui/graphics/ColorKt;->Color(J)J

    move-result-wide v1

    .line 217
    invoke-static {v3, v3}, Landroidx/compose/ui/geometry/OffsetKt;->Offset(FF)J

    move-result-wide v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x78

    const/16 v19, 0x0

    move/from16 v3, p1

    move-wide/from16 v29, v8

    move-object/from16 v8, v16

    move/from16 v9, v17

    move-object/from16 v31, v10

    move/from16 v10, v18

    move-object/from16 v16, v12

    move-object v12, v11

    move-object/from16 v11, v19

    .line 214
    invoke-static/range {v0 .. v11}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->drawCircle-VaOC9Bg$default(Landroidx/compose/ui/graphics/drawscope/DrawScope;JFJFLandroidx/compose/ui/graphics/drawscope/DrawStyle;Landroidx/compose/ui/graphics/ColorFilter;IILjava/lang/Object;)V

    .line 340
    invoke-interface {v13}, Landroidx/compose/ui/graphics/Canvas;->restore()V

    .line 341
    invoke-virtual {v14}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;->getDrawParams()Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;

    move-result-object v0

    .line 342
    invoke-virtual {v0, v15}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;->setDensity(Landroidx/compose/ui/unit/Density;)V

    .line 343
    invoke-virtual {v0, v12}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;->setLayoutDirection(Landroidx/compose/ui/unit/LayoutDirection;)V

    move-object/from16 v1, v31

    .line 344
    invoke-virtual {v0, v1}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;->setCanvas(Landroidx/compose/ui/graphics/Canvas;)V

    move-wide/from16 v1, v29

    .line 345
    invoke-virtual {v0, v1, v2}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;->setSize-uvyYCjk(J)V

    return-object v16
.end method

.method public static final drawSelectionHandle(Landroidx/compose/ui/Modifier;ZLandroidx/compose/ui/text/style/ResolvedTextDirection;Z)Landroidx/compose/ui/Modifier;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "direction"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 112
    new-instance v0, Landroidx/compose/foundation/text/selection/AndroidSelectionHandles_androidKt$drawSelectionHandle$1;

    invoke-direct {v0, p1, p2, p3}, Landroidx/compose/foundation/text/selection/AndroidSelectionHandles_androidKt$drawSelectionHandle$1;-><init>(ZLandroidx/compose/ui/text/style/ResolvedTextDirection;Z)V

    check-cast v0, Lkotlin/jvm/functions/Function3;

    const/4 p1, 0x1

    const/4 p2, 0x0

    invoke-static {p0, p2, v0, p1, p2}, Landroidx/compose/ui/ComposedModifierKt;->composed$default(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function3;ILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object p0

    return-object p0
.end method

.method public static final isHandleLtrDirection(Landroidx/compose/ui/text/style/ResolvedTextDirection;Z)Z
    .locals 1

    const-string v0, "direction"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 327
    sget-object v0, Landroidx/compose/ui/text/style/ResolvedTextDirection;->Ltr:Landroidx/compose/ui/text/style/ResolvedTextDirection;

    if-ne p0, v0, :cond_0

    if-eqz p1, :cond_1

    .line 328
    :cond_0
    sget-object v0, Landroidx/compose/ui/text/style/ResolvedTextDirection;->Rtl:Landroidx/compose/ui/text/style/ResolvedTextDirection;

    if-ne p0, v0, :cond_2

    if-eqz p1, :cond_2

    :cond_1
    const/4 p0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static final isLeft(ZLandroidx/compose/ui/text/style/ResolvedTextDirection;Z)Z
    .locals 0

    if-eqz p0, :cond_0

    .line 306
    invoke-static {p1, p2}, Landroidx/compose/foundation/text/selection/AndroidSelectionHandles_androidKt;->isHandleLtrDirection(Landroidx/compose/ui/text/style/ResolvedTextDirection;Z)Z

    move-result p0

    goto :goto_0

    .line 308
    :cond_0
    invoke-static {p1, p2}, Landroidx/compose/foundation/text/selection/AndroidSelectionHandles_androidKt;->isHandleLtrDirection(Landroidx/compose/ui/text/style/ResolvedTextDirection;Z)Z

    move-result p0

    if-nez p0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
