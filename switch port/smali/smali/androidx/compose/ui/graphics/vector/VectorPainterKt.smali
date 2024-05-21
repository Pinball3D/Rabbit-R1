.class public final Landroidx/compose/ui/graphics/vector/VectorPainterKt;
.super Ljava/lang/Object;
.source "VectorPainter.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nVectorPainter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 VectorPainter.kt\nandroidx/compose/ui/graphics/vector/VectorPainterKt\n+ 2 CompositionLocal.kt\nandroidx/compose/runtime/CompositionLocal\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 4 Composables.kt\nandroidx/compose/runtime/ComposablesKt\n+ 5 Composer.kt\nandroidx/compose/runtime/ComposerKt\n+ 6 DrawScope.kt\nandroidx/compose/ui/graphics/drawscope/DrawScopeKt\n*L\n1#1,420:1\n76#2:421\n1#3:422\n50#4:423\n49#4:424\n25#4:431\n1097#5,6:425\n1097#5,6:432\n173#6,6:438\n261#6,11:444\n*S KotlinDebug\n*F\n+ 1 VectorPainter.kt\nandroidx/compose/ui/graphics/vector/VectorPainterKt\n*L\n127#1:421\n134#1:423\n134#1:424\n142#1:431\n134#1:425,6\n142#1:432,6\n281#1:438,6\n281#1:444,11\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000v\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010$\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0007\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u001a+\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0014\u0008\u0002\u0010\u0006\u001a\u000e\u0012\u0004\u0012\u00020\u0001\u0012\u0004\u0012\u00020\u00080\u0007H\u0007\u00a2\u0006\u0002\u0010\t\u001a\u0015\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\rH\u0007\u00a2\u0006\u0002\u0010\u000e\u001a\u0099\u0001\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00102\u0008\u0008\u0002\u0010\u0012\u001a\u00020\u00132\u0008\u0008\u0002\u0010\u0014\u001a\u00020\u00132\u0008\u0008\u0002\u0010\u0015\u001a\u00020\u00012\u0008\u0008\u0002\u0010\u0016\u001a\u00020\u00172\u0008\u0008\u0002\u0010\u0018\u001a\u00020\u00192@\u0010\u001a\u001a<\u0012\u0013\u0012\u00110\u0013\u00a2\u0006\u000c\u0008\u001c\u0012\u0008\u0008\u0015\u0012\u0004\u0008\u0008(\u0012\u0012\u0013\u0012\u00110\u0013\u00a2\u0006\u000c\u0008\u001c\u0012\u0008\u0008\u0015\u0012\u0004\u0008\u0008(\u0014\u0012\u0004\u0012\u00020\u00030\u001b\u00a2\u0006\u0002\u0008\u001d\u00a2\u0006\u0002\u0008\u001eH\u0007\u00f8\u0001\u0000\u00f8\u0001\u0001\u00a2\u0006\u0004\u0008\u001f\u0010 \u001a\u00a3\u0001\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00102\u0008\u0008\u0002\u0010\u0012\u001a\u00020\u00132\u0008\u0008\u0002\u0010\u0014\u001a\u00020\u00132\u0008\u0008\u0002\u0010\u0015\u001a\u00020\u00012\u0008\u0008\u0002\u0010\u0016\u001a\u00020\u00172\u0008\u0008\u0002\u0010\u0018\u001a\u00020\u00192\u0008\u0008\u0002\u0010!\u001a\u00020\"2@\u0010\u001a\u001a<\u0012\u0013\u0012\u00110\u0013\u00a2\u0006\u000c\u0008\u001c\u0012\u0008\u0008\u0015\u0012\u0004\u0008\u0008(\u0012\u0012\u0013\u0012\u00110\u0013\u00a2\u0006\u000c\u0008\u001c\u0012\u0008\u0008\u0015\u0012\u0004\u0008\u0008(\u0014\u0012\u0004\u0012\u00020\u00030\u001b\u00a2\u0006\u0002\u0008\u001d\u00a2\u0006\u0002\u0008\u001eH\u0007\u00f8\u0001\u0000\u00f8\u0001\u0001\u00a2\u0006\u0004\u0008#\u0010$\u001a&\u0010%\u001a\u00020\u0003*\u00020&2\u0017\u0010\'\u001a\u0013\u0012\u0004\u0012\u00020&\u0012\u0004\u0012\u00020\u00030(\u00a2\u0006\u0002\u0008)H\u0082\u0008\"\u000e\u0010\u0000\u001a\u00020\u0001X\u0086T\u00a2\u0006\u0002\n\u0000\u0082\u0002\u000b\n\u0005\u0008\u00a1\u001e0\u0001\n\u0002\u0008\u0019\u00a8\u0006*"
    }
    d2 = {
        "RootGroupName",
        "",
        "RenderVectorGroup",
        "",
        "group",
        "Landroidx/compose/ui/graphics/vector/VectorGroup;",
        "configs",
        "",
        "Landroidx/compose/ui/graphics/vector/VectorConfig;",
        "(Landroidx/compose/ui/graphics/vector/VectorGroup;Ljava/util/Map;Landroidx/compose/runtime/Composer;II)V",
        "rememberVectorPainter",
        "Landroidx/compose/ui/graphics/vector/VectorPainter;",
        "image",
        "Landroidx/compose/ui/graphics/vector/ImageVector;",
        "(Landroidx/compose/ui/graphics/vector/ImageVector;Landroidx/compose/runtime/Composer;I)Landroidx/compose/ui/graphics/vector/VectorPainter;",
        "defaultWidth",
        "Landroidx/compose/ui/unit/Dp;",
        "defaultHeight",
        "viewportWidth",
        "",
        "viewportHeight",
        "name",
        "tintColor",
        "Landroidx/compose/ui/graphics/Color;",
        "tintBlendMode",
        "Landroidx/compose/ui/graphics/BlendMode;",
        "content",
        "Lkotlin/Function2;",
        "Lkotlin/ParameterName;",
        "Landroidx/compose/runtime/Composable;",
        "Landroidx/compose/ui/graphics/vector/VectorComposable;",
        "rememberVectorPainter-mlNsNFs",
        "(FFFFLjava/lang/String;JILkotlin/jvm/functions/Function4;Landroidx/compose/runtime/Composer;II)Landroidx/compose/ui/graphics/vector/VectorPainter;",
        "autoMirror",
        "",
        "rememberVectorPainter-vIP8VLU",
        "(FFFFLjava/lang/String;JIZLkotlin/jvm/functions/Function4;Landroidx/compose/runtime/Composer;II)Landroidx/compose/ui/graphics/vector/VectorPainter;",
        "mirror",
        "Landroidx/compose/ui/graphics/drawscope/DrawScope;",
        "block",
        "Lkotlin/Function1;",
        "Lkotlin/ExtensionFunctionType;",
        "ui_release"
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
.field public static final RootGroupName:Ljava/lang/String; = "VectorRootGroup"


# direct methods
.method public static final RenderVectorGroup(Landroidx/compose/ui/graphics/vector/VectorGroup;Ljava/util/Map;Landroidx/compose/runtime/Composer;II)V
    .locals 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/graphics/vector/VectorGroup;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Landroidx/compose/ui/graphics/vector/VectorConfig;",
            ">;",
            "Landroidx/compose/runtime/Composer;",
            "II)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move/from16 v1, p3

    move/from16 v2, p4

    const-string v3, "group"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const v3, -0x1a9827a1

    move-object/from16 v4, p2

    .line 331
    invoke-interface {v4, v3}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object v15

    const-string v4, "C(RenderVectorGroup)P(1):VectorPainter.kt#huu6hf"

    invoke-static {v15, v4}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    and-int/lit8 v4, v2, 0x1

    const/4 v5, 0x2

    if-eqz v4, :cond_0

    or-int/lit8 v4, v1, 0x6

    goto :goto_1

    :cond_0
    and-int/lit8 v4, v1, 0xe

    if-nez v4, :cond_2

    invoke-interface {v15, v0}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v4, 0x4

    goto :goto_0

    :cond_1
    move v4, v5

    :goto_0
    or-int/2addr v4, v1

    goto :goto_1

    :cond_2
    move v4, v1

    :goto_1
    and-int/lit8 v6, v2, 0x2

    if-eqz v6, :cond_3

    or-int/lit8 v4, v4, 0x10

    :cond_3
    if-ne v6, v5, :cond_5

    and-int/lit8 v4, v4, 0x5b

    const/16 v5, 0x12

    if-ne v4, v5, :cond_5

    invoke-interface {v15}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result v4

    if-nez v4, :cond_4

    goto :goto_2

    .line 419
    :cond_4
    invoke-interface {v15}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    move-object/from16 v3, p1

    move-object v1, v15

    goto/16 :goto_7

    :cond_5
    :goto_2
    if-eqz v6, :cond_6

    .line 330
    invoke-static {}, Lkotlin/collections/MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object v4

    move-object v14, v4

    goto :goto_3

    :cond_6
    move-object/from16 v14, p1

    :goto_3
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v4

    if-eqz v4, :cond_7

    const/4 v4, -0x1

    const-string v5, "androidx.compose.ui.graphics.vector.RenderVectorGroup (VectorPainter.kt:327)"

    .line 331
    invoke-static {v3, v1, v4, v5}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 332
    :cond_7
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/ui/graphics/vector/VectorGroup;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_c

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/compose/ui/graphics/vector/VectorNode;

    .line 333
    instance-of v5, v4, Landroidx/compose/ui/graphics/vector/VectorPath;

    if-eqz v5, :cond_9

    const v5, -0x1372b9a7

    invoke-interface {v15, v5}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v5, "334@12154L1719"

    invoke-static {v15, v5}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 334
    move-object/from16 v17, v4

    check-cast v17, Landroidx/compose/ui/graphics/vector/VectorPath;

    invoke-virtual/range {v17 .. v17}, Landroidx/compose/ui/graphics/vector/VectorPath;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v14, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/compose/ui/graphics/vector/VectorConfig;

    if-nez v4, :cond_8

    new-instance v4, Landroidx/compose/ui/graphics/vector/VectorPainterKt$RenderVectorGroup$config$1;

    invoke-direct {v4}, Landroidx/compose/ui/graphics/vector/VectorPainterKt$RenderVectorGroup$config$1;-><init>()V

    check-cast v4, Landroidx/compose/ui/graphics/vector/VectorConfig;

    :cond_8
    move-object v13, v4

    .line 337
    sget-object v4, Landroidx/compose/ui/graphics/vector/VectorProperty$PathData;->INSTANCE:Landroidx/compose/ui/graphics/vector/VectorProperty$PathData;

    check-cast v4, Landroidx/compose/ui/graphics/vector/VectorProperty;

    .line 338
    invoke-virtual/range {v17 .. v17}, Landroidx/compose/ui/graphics/vector/VectorPath;->getPathData()Ljava/util/List;

    move-result-object v5

    .line 336
    invoke-interface {v13, v4, v5}, Landroidx/compose/ui/graphics/vector/VectorConfig;->getOrDefault(Landroidx/compose/ui/graphics/vector/VectorProperty;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 340
    invoke-virtual/range {v17 .. v17}, Landroidx/compose/ui/graphics/vector/VectorPath;->getPathFillType-Rg-k1Os()I

    move-result v5

    .line 341
    invoke-virtual/range {v17 .. v17}, Landroidx/compose/ui/graphics/vector/VectorPath;->getName()Ljava/lang/String;

    move-result-object v6

    .line 343
    sget-object v7, Landroidx/compose/ui/graphics/vector/VectorProperty$Fill;->INSTANCE:Landroidx/compose/ui/graphics/vector/VectorProperty$Fill;

    check-cast v7, Landroidx/compose/ui/graphics/vector/VectorProperty;

    .line 344
    invoke-virtual/range {v17 .. v17}, Landroidx/compose/ui/graphics/vector/VectorPath;->getFill()Landroidx/compose/ui/graphics/Brush;

    move-result-object v8

    .line 342
    invoke-interface {v13, v7, v8}, Landroidx/compose/ui/graphics/vector/VectorConfig;->getOrDefault(Landroidx/compose/ui/graphics/vector/VectorProperty;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/compose/ui/graphics/Brush;

    .line 347
    sget-object v8, Landroidx/compose/ui/graphics/vector/VectorProperty$FillAlpha;->INSTANCE:Landroidx/compose/ui/graphics/vector/VectorProperty$FillAlpha;

    check-cast v8, Landroidx/compose/ui/graphics/vector/VectorProperty;

    .line 348
    invoke-virtual/range {v17 .. v17}, Landroidx/compose/ui/graphics/vector/VectorPath;->getFillAlpha()F

    move-result v9

    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    .line 346
    invoke-interface {v13, v8, v9}, Landroidx/compose/ui/graphics/vector/VectorConfig;->getOrDefault(Landroidx/compose/ui/graphics/vector/VectorProperty;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Number;

    invoke-virtual {v8}, Ljava/lang/Number;->floatValue()F

    move-result v8

    .line 351
    sget-object v9, Landroidx/compose/ui/graphics/vector/VectorProperty$Stroke;->INSTANCE:Landroidx/compose/ui/graphics/vector/VectorProperty$Stroke;

    check-cast v9, Landroidx/compose/ui/graphics/vector/VectorProperty;

    .line 352
    invoke-virtual/range {v17 .. v17}, Landroidx/compose/ui/graphics/vector/VectorPath;->getStroke()Landroidx/compose/ui/graphics/Brush;

    move-result-object v10

    .line 350
    invoke-interface {v13, v9, v10}, Landroidx/compose/ui/graphics/vector/VectorConfig;->getOrDefault(Landroidx/compose/ui/graphics/vector/VectorProperty;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroidx/compose/ui/graphics/Brush;

    .line 355
    sget-object v10, Landroidx/compose/ui/graphics/vector/VectorProperty$StrokeAlpha;->INSTANCE:Landroidx/compose/ui/graphics/vector/VectorProperty$StrokeAlpha;

    check-cast v10, Landroidx/compose/ui/graphics/vector/VectorProperty;

    .line 356
    invoke-virtual/range {v17 .. v17}, Landroidx/compose/ui/graphics/vector/VectorPath;->getStrokeAlpha()F

    move-result v11

    invoke-static {v11}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v11

    .line 354
    invoke-interface {v13, v10, v11}, Landroidx/compose/ui/graphics/vector/VectorConfig;->getOrDefault(Landroidx/compose/ui/graphics/vector/VectorProperty;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Number;

    invoke-virtual {v10}, Ljava/lang/Number;->floatValue()F

    move-result v10

    .line 359
    sget-object v11, Landroidx/compose/ui/graphics/vector/VectorProperty$StrokeLineWidth;->INSTANCE:Landroidx/compose/ui/graphics/vector/VectorProperty$StrokeLineWidth;

    check-cast v11, Landroidx/compose/ui/graphics/vector/VectorProperty;

    .line 360
    invoke-virtual/range {v17 .. v17}, Landroidx/compose/ui/graphics/vector/VectorPath;->getStrokeLineWidth()F

    move-result v12

    invoke-static {v12}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v12

    .line 358
    invoke-interface {v13, v11, v12}, Landroidx/compose/ui/graphics/vector/VectorConfig;->getOrDefault(Landroidx/compose/ui/graphics/vector/VectorProperty;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Number;

    invoke-virtual {v11}, Ljava/lang/Number;->floatValue()F

    move-result v11

    .line 362
    invoke-virtual/range {v17 .. v17}, Landroidx/compose/ui/graphics/vector/VectorPath;->getStrokeLineCap-KaPHkGw()I

    move-result v12

    .line 363
    invoke-virtual/range {v17 .. v17}, Landroidx/compose/ui/graphics/vector/VectorPath;->getStrokeLineJoin-LxFBmk8()I

    move-result v16

    move-object/from16 p1, v3

    move-object v3, v13

    move/from16 v13, v16

    .line 364
    invoke-virtual/range {v17 .. v17}, Landroidx/compose/ui/graphics/vector/VectorPath;->getStrokeLineMiter()F

    move-result v16

    move-object v0, v14

    move/from16 v14, v16

    .line 366
    sget-object v16, Landroidx/compose/ui/graphics/vector/VectorProperty$TrimPathStart;->INSTANCE:Landroidx/compose/ui/graphics/vector/VectorProperty$TrimPathStart;

    move-object/from16 p2, v15

    move-object/from16 v15, v16

    check-cast v15, Landroidx/compose/ui/graphics/vector/VectorProperty;

    .line 367
    invoke-virtual/range {v17 .. v17}, Landroidx/compose/ui/graphics/vector/VectorPath;->getTrimPathStart()F

    move-result v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    .line 365
    invoke-interface {v3, v15, v1}, Landroidx/compose/ui/graphics/vector/VectorConfig;->getOrDefault(Landroidx/compose/ui/graphics/vector/VectorProperty;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->floatValue()F

    move-result v15

    move-object/from16 v1, p2

    .line 370
    sget-object v16, Landroidx/compose/ui/graphics/vector/VectorProperty$TrimPathEnd;->INSTANCE:Landroidx/compose/ui/graphics/vector/VectorProperty$TrimPathEnd;

    move-object/from16 v2, v16

    check-cast v2, Landroidx/compose/ui/graphics/vector/VectorProperty;

    .line 371
    invoke-virtual/range {v17 .. v17}, Landroidx/compose/ui/graphics/vector/VectorPath;->getTrimPathEnd()F

    move-result v16

    move-object/from16 p2, v0

    invoke-static/range {v16 .. v16}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    .line 369
    invoke-interface {v3, v2, v0}, Landroidx/compose/ui/graphics/vector/VectorConfig;->getOrDefault(Landroidx/compose/ui/graphics/vector/VectorProperty;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v16

    .line 374
    sget-object v0, Landroidx/compose/ui/graphics/vector/VectorProperty$TrimPathOffset;->INSTANCE:Landroidx/compose/ui/graphics/vector/VectorProperty$TrimPathOffset;

    check-cast v0, Landroidx/compose/ui/graphics/vector/VectorProperty;

    .line 375
    invoke-virtual/range {v17 .. v17}, Landroidx/compose/ui/graphics/vector/VectorPath;->getTrimPathOffset()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    .line 373
    invoke-interface {v3, v0, v2}, Landroidx/compose/ui/graphics/vector/VectorConfig;->getOrDefault(Landroidx/compose/ui/graphics/vector/VectorProperty;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v17

    const/16 v19, 0x8

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object/from16 v18, v1

    .line 335
    invoke-static/range {v4 .. v21}, Landroidx/compose/ui/graphics/vector/VectorComposeKt;->Path-9cdaXJ4(Ljava/util/List;ILjava/lang/String;Landroidx/compose/ui/graphics/Brush;FLandroidx/compose/ui/graphics/Brush;FFIIFFFFLandroidx/compose/runtime/Composer;III)V

    .line 333
    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    move-object/from16 v0, p0

    move-object/from16 v3, p1

    move-object/from16 v14, p2

    move/from16 v2, p4

    move-object v15, v1

    goto/16 :goto_6

    :cond_9
    move-object/from16 p1, v3

    move-object/from16 p2, v14

    move-object v1, v15

    .line 378
    instance-of v0, v4, Landroidx/compose/ui/graphics/vector/VectorGroup;

    if-eqz v0, :cond_b

    const v0, -0x1372b265

    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v0, "379@14012L1368"

    invoke-static {v1, v0}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 379
    move-object v0, v4

    check-cast v0, Landroidx/compose/ui/graphics/vector/VectorGroup;

    invoke-virtual {v0}, Landroidx/compose/ui/graphics/vector/VectorGroup;->getName()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v3, p2

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/compose/ui/graphics/vector/VectorConfig;

    if-nez v2, :cond_a

    new-instance v2, Landroidx/compose/ui/graphics/vector/VectorPainterKt$RenderVectorGroup$config$2;

    invoke-direct {v2}, Landroidx/compose/ui/graphics/vector/VectorPainterKt$RenderVectorGroup$config$2;-><init>()V

    check-cast v2, Landroidx/compose/ui/graphics/vector/VectorConfig;

    .line 381
    :cond_a
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/vector/VectorGroup;->getName()Ljava/lang/String;

    move-result-object v5

    .line 383
    sget-object v6, Landroidx/compose/ui/graphics/vector/VectorProperty$Rotation;->INSTANCE:Landroidx/compose/ui/graphics/vector/VectorProperty$Rotation;

    check-cast v6, Landroidx/compose/ui/graphics/vector/VectorProperty;

    .line 384
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/vector/VectorGroup;->getRotation()F

    move-result v7

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    .line 382
    invoke-interface {v2, v6, v7}, Landroidx/compose/ui/graphics/vector/VectorConfig;->getOrDefault(Landroidx/compose/ui/graphics/vector/VectorProperty;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Number;

    invoke-virtual {v6}, Ljava/lang/Number;->floatValue()F

    move-result v6

    .line 387
    sget-object v7, Landroidx/compose/ui/graphics/vector/VectorProperty$ScaleX;->INSTANCE:Landroidx/compose/ui/graphics/vector/VectorProperty$ScaleX;

    check-cast v7, Landroidx/compose/ui/graphics/vector/VectorProperty;

    .line 388
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/vector/VectorGroup;->getScaleX()F

    move-result v8

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    .line 386
    invoke-interface {v2, v7, v8}, Landroidx/compose/ui/graphics/vector/VectorConfig;->getOrDefault(Landroidx/compose/ui/graphics/vector/VectorProperty;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Number;

    invoke-virtual {v7}, Ljava/lang/Number;->floatValue()F

    move-result v8

    .line 391
    sget-object v7, Landroidx/compose/ui/graphics/vector/VectorProperty$ScaleY;->INSTANCE:Landroidx/compose/ui/graphics/vector/VectorProperty$ScaleY;

    check-cast v7, Landroidx/compose/ui/graphics/vector/VectorProperty;

    .line 392
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/vector/VectorGroup;->getScaleY()F

    move-result v9

    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    .line 390
    invoke-interface {v2, v7, v9}, Landroidx/compose/ui/graphics/vector/VectorConfig;->getOrDefault(Landroidx/compose/ui/graphics/vector/VectorProperty;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Number;

    invoke-virtual {v7}, Ljava/lang/Number;->floatValue()F

    move-result v9

    .line 395
    sget-object v7, Landroidx/compose/ui/graphics/vector/VectorProperty$TranslateX;->INSTANCE:Landroidx/compose/ui/graphics/vector/VectorProperty$TranslateX;

    check-cast v7, Landroidx/compose/ui/graphics/vector/VectorProperty;

    .line 396
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/vector/VectorGroup;->getTranslationX()F

    move-result v10

    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    .line 394
    invoke-interface {v2, v7, v10}, Landroidx/compose/ui/graphics/vector/VectorConfig;->getOrDefault(Landroidx/compose/ui/graphics/vector/VectorProperty;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Number;

    invoke-virtual {v7}, Ljava/lang/Number;->floatValue()F

    move-result v10

    .line 399
    sget-object v7, Landroidx/compose/ui/graphics/vector/VectorProperty$TranslateY;->INSTANCE:Landroidx/compose/ui/graphics/vector/VectorProperty$TranslateY;

    check-cast v7, Landroidx/compose/ui/graphics/vector/VectorProperty;

    .line 400
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/vector/VectorGroup;->getTranslationY()F

    move-result v11

    invoke-static {v11}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v11

    .line 398
    invoke-interface {v2, v7, v11}, Landroidx/compose/ui/graphics/vector/VectorConfig;->getOrDefault(Landroidx/compose/ui/graphics/vector/VectorProperty;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Number;

    invoke-virtual {v7}, Ljava/lang/Number;->floatValue()F

    move-result v11

    .line 403
    sget-object v7, Landroidx/compose/ui/graphics/vector/VectorProperty$PivotX;->INSTANCE:Landroidx/compose/ui/graphics/vector/VectorProperty$PivotX;

    check-cast v7, Landroidx/compose/ui/graphics/vector/VectorProperty;

    .line 404
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/vector/VectorGroup;->getPivotX()F

    move-result v12

    invoke-static {v12}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v12

    .line 402
    invoke-interface {v2, v7, v12}, Landroidx/compose/ui/graphics/vector/VectorConfig;->getOrDefault(Landroidx/compose/ui/graphics/vector/VectorProperty;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Number;

    invoke-virtual {v7}, Ljava/lang/Number;->floatValue()F

    move-result v7

    .line 407
    sget-object v12, Landroidx/compose/ui/graphics/vector/VectorProperty$PivotY;->INSTANCE:Landroidx/compose/ui/graphics/vector/VectorProperty$PivotY;

    check-cast v12, Landroidx/compose/ui/graphics/vector/VectorProperty;

    .line 408
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/vector/VectorGroup;->getPivotY()F

    move-result v13

    invoke-static {v13}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v13

    .line 406
    invoke-interface {v2, v12, v13}, Landroidx/compose/ui/graphics/vector/VectorConfig;->getOrDefault(Landroidx/compose/ui/graphics/vector/VectorProperty;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Number;

    invoke-virtual {v12}, Ljava/lang/Number;->floatValue()F

    move-result v12

    .line 411
    sget-object v13, Landroidx/compose/ui/graphics/vector/VectorProperty$PathData;->INSTANCE:Landroidx/compose/ui/graphics/vector/VectorProperty$PathData;

    check-cast v13, Landroidx/compose/ui/graphics/vector/VectorProperty;

    .line 412
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/vector/VectorGroup;->getClipPathData()Ljava/util/List;

    move-result-object v0

    .line 410
    invoke-interface {v2, v13, v0}, Landroidx/compose/ui/graphics/vector/VectorConfig;->getOrDefault(Landroidx/compose/ui/graphics/vector/VectorProperty;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 414
    new-instance v2, Landroidx/compose/ui/graphics/vector/VectorPainterKt$RenderVectorGroup$1;

    invoke-direct {v2, v4, v3}, Landroidx/compose/ui/graphics/vector/VectorPainterKt$RenderVectorGroup$1;-><init>(Landroidx/compose/ui/graphics/vector/VectorNode;Ljava/util/Map;)V

    const v4, 0x566df4ae

    const/4 v13, 0x1

    invoke-static {v1, v4, v13, v2}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->composableLambda(Landroidx/compose/runtime/Composer;IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v2

    move-object v13, v2

    check-cast v13, Lkotlin/jvm/functions/Function2;

    const/high16 v15, 0x38000000

    const/16 v16, 0x0

    move-object v4, v5

    move v5, v6

    move v6, v7

    move v7, v12

    move-object v12, v0

    move-object v14, v1

    .line 380
    invoke-static/range {v4 .. v16}, Landroidx/compose/ui/graphics/vector/VectorComposeKt;->Group(Ljava/lang/String;FFFFFFFLjava/util/List;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;II)V

    .line 378
    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    goto :goto_5

    :cond_b
    move-object/from16 v3, p2

    const v0, -0x1372aca7

    .line 417
    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    :goto_5
    move-object/from16 v0, p0

    move/from16 v2, p4

    move-object v15, v1

    move-object v14, v3

    move-object/from16 v3, p1

    :goto_6
    move/from16 v1, p3

    goto/16 :goto_4

    :cond_c
    move-object v3, v14

    move-object v1, v15

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    .line 419
    :cond_d
    :goto_7
    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v0

    if-nez v0, :cond_e

    goto :goto_8

    :cond_e
    new-instance v1, Landroidx/compose/ui/graphics/vector/VectorPainterKt$RenderVectorGroup$2;

    move-object/from16 v2, p0

    move/from16 v4, p3

    move/from16 v5, p4

    invoke-direct {v1, v2, v3, v4, v5}, Landroidx/compose/ui/graphics/vector/VectorPainterKt$RenderVectorGroup$2;-><init>(Landroidx/compose/ui/graphics/vector/VectorGroup;Ljava/util/Map;II)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    invoke-interface {v0, v1}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    :goto_8
    return-void
.end method

.method private static final mirror(Landroidx/compose/ui/graphics/drawscope/DrawScope;Lkotlin/jvm/functions/Function1;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/graphics/drawscope/DrawScope;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/compose/ui/graphics/drawscope/DrawScope;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 441
    invoke-interface {p0}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->getCenter-F1C5BW0()J

    move-result-wide v0

    .line 444
    invoke-interface {p0}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->getDrawContext()Landroidx/compose/ui/graphics/drawscope/DrawContext;

    move-result-object v2

    .line 448
    invoke-interface {v2}, Landroidx/compose/ui/graphics/drawscope/DrawContext;->getSize-NH-jbRc()J

    move-result-wide v3

    .line 449
    invoke-interface {v2}, Landroidx/compose/ui/graphics/drawscope/DrawContext;->getCanvas()Landroidx/compose/ui/graphics/Canvas;

    move-result-object v5

    invoke-interface {v5}, Landroidx/compose/ui/graphics/Canvas;->save()V

    .line 450
    invoke-interface {v2}, Landroidx/compose/ui/graphics/drawscope/DrawContext;->getTransform()Landroidx/compose/ui/graphics/drawscope/DrawTransform;

    move-result-object v5

    const/high16 v6, -0x40800000    # -1.0f

    const/high16 v7, 0x3f800000    # 1.0f

    .line 443
    invoke-interface {v5, v6, v7, v0, v1}, Landroidx/compose/ui/graphics/drawscope/DrawTransform;->scale-0AR0LA0(FFJ)V

    .line 451
    invoke-interface {p1, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 452
    invoke-interface {v2}, Landroidx/compose/ui/graphics/drawscope/DrawContext;->getCanvas()Landroidx/compose/ui/graphics/Canvas;

    move-result-object p0

    invoke-interface {p0}, Landroidx/compose/ui/graphics/Canvas;->restore()V

    .line 453
    invoke-interface {v2, v3, v4}, Landroidx/compose/ui/graphics/drawscope/DrawContext;->setSize-uvyYCjk(J)V

    return-void
.end method

.method public static final rememberVectorPainter(Landroidx/compose/ui/graphics/vector/ImageVector;Landroidx/compose/runtime/Composer;I)Landroidx/compose/ui/graphics/vector/VectorPainter;
    .locals 14

    move-object v0, p0

    move-object v13, p1

    const-string v1, "image"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const v1, 0x544566b0

    invoke-interface {p1, v1}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v2, "C(rememberVectorPainter)158@6529L424:VectorPainter.kt#huu6hf"

    invoke-static {p1, v2}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, -0x1

    const-string v3, "androidx.compose.ui.graphics.vector.rememberVectorPainter (VectorPainter.kt:157)"

    move/from16 v4, p2

    .line 159
    invoke-static {v1, v4, v2, v3}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 160
    :cond_0
    invoke-virtual {p0}, Landroidx/compose/ui/graphics/vector/ImageVector;->getDefaultWidth-D9Ej5fM()F

    move-result v1

    .line 161
    invoke-virtual {p0}, Landroidx/compose/ui/graphics/vector/ImageVector;->getDefaultHeight-D9Ej5fM()F

    move-result v2

    .line 162
    invoke-virtual {p0}, Landroidx/compose/ui/graphics/vector/ImageVector;->getViewportWidth()F

    move-result v3

    .line 163
    invoke-virtual {p0}, Landroidx/compose/ui/graphics/vector/ImageVector;->getViewportHeight()F

    move-result v4

    .line 164
    invoke-virtual {p0}, Landroidx/compose/ui/graphics/vector/ImageVector;->getName()Ljava/lang/String;

    move-result-object v5

    .line 165
    invoke-virtual {p0}, Landroidx/compose/ui/graphics/vector/ImageVector;->getTintColor-0d7_KjU()J

    move-result-wide v6

    .line 166
    invoke-virtual {p0}, Landroidx/compose/ui/graphics/vector/ImageVector;->getTintBlendMode-0nO6VwU()I

    move-result v8

    .line 167
    invoke-virtual {p0}, Landroidx/compose/ui/graphics/vector/ImageVector;->getAutoMirror()Z

    move-result v9

    .line 168
    new-instance v10, Landroidx/compose/ui/graphics/vector/VectorPainterKt$rememberVectorPainter$3;

    invoke-direct {v10, p0}, Landroidx/compose/ui/graphics/vector/VectorPainterKt$rememberVectorPainter$3;-><init>(Landroidx/compose/ui/graphics/vector/ImageVector;)V

    const v0, 0x6fa7e78e

    const/4 v11, 0x1

    invoke-static {p1, v0, v11, v10}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->composableLambda(Landroidx/compose/runtime/Composer;IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Lkotlin/jvm/functions/Function4;

    const/high16 v11, 0x6000000

    const/4 v12, 0x0

    move v0, v1

    move v1, v2

    move v2, v3

    move v3, v4

    move-object v4, v5

    move-wide v5, v6

    move v7, v8

    move v8, v9

    move-object v9, v10

    move-object v10, p1

    .line 159
    invoke-static/range {v0 .. v12}, Landroidx/compose/ui/graphics/vector/VectorPainterKt;->rememberVectorPainter-vIP8VLU(FFFFLjava/lang/String;JIZLkotlin/jvm/functions/Function4;Landroidx/compose/runtime/Composer;II)Landroidx/compose/ui/graphics/vector/VectorPainter;

    move-result-object v0

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_1
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    return-object v0
.end method

.method public static final rememberVectorPainter-mlNsNFs(FFFFLjava/lang/String;JILkotlin/jvm/functions/Function4;Landroidx/compose/runtime/Composer;II)Landroidx/compose/ui/graphics/vector/VectorPainter;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(FFFF",
            "Ljava/lang/String;",
            "JI",
            "Lkotlin/jvm/functions/Function4<",
            "-",
            "Ljava/lang/Float;",
            "-",
            "Ljava/lang/Float;",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;",
            "Landroidx/compose/runtime/Composer;",
            "II)",
            "Landroidx/compose/ui/graphics/vector/VectorPainter;"
        }
    .end annotation

    .annotation runtime Lkotlin/Deprecated;
        message = "Replace rememberVectorPainter graphicsLayer that consumes the auto mirror flag"
        replaceWith = .subannotation Lkotlin/ReplaceWith;
            expression = "rememberVectorPainter(defaultWidth, defaultHeight, viewportWidth, viewportHeight, name, tintColor, tintBlendMode, false, content)"
            imports = {
                "androidx.compose.ui.graphics.vector"
            }
        .end subannotation
    .end annotation

    move-object/from16 v13, p9

    move/from16 v0, p10

    const-string v1, "content"

    move-object/from16 v9, p8

    invoke-static {v9, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const v1, -0x397b0b9a

    invoke-interface {v13, v1}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v2, "C(rememberVectorPainter)P(2:c#ui.unit.Dp,1:c#ui.unit.Dp,7,6,3,5:c#ui.graphics.Color,4:c#ui.graphics.BlendMode)83@3597L207:VectorPainter.kt#huu6hf"

    invoke-static {v13, v2}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    and-int/lit8 v2, p11, 0x4

    const/high16 v3, 0x7fc00000    # Float.NaN

    if-eqz v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    move/from16 v2, p2

    :goto_0
    and-int/lit8 v4, p11, 0x8

    if-eqz v4, :cond_1

    goto :goto_1

    :cond_1
    move/from16 v3, p3

    :goto_1
    and-int/lit8 v4, p11, 0x10

    if-eqz v4, :cond_2

    const-string v4, "VectorRootGroup"

    goto :goto_2

    :cond_2
    move-object/from16 v4, p4

    :goto_2
    and-int/lit8 v5, p11, 0x20

    if-eqz v5, :cond_3

    .line 80
    sget-object v5, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual {v5}, Landroidx/compose/ui/graphics/Color$Companion;->getUnspecified-0d7_KjU()J

    move-result-wide v5

    goto :goto_3

    :cond_3
    move-wide/from16 v5, p5

    :goto_3
    and-int/lit8 v7, p11, 0x40

    if-eqz v7, :cond_4

    .line 81
    sget-object v7, Landroidx/compose/ui/graphics/BlendMode;->Companion:Landroidx/compose/ui/graphics/BlendMode$Companion;

    invoke-virtual {v7}, Landroidx/compose/ui/graphics/BlendMode$Companion;->getSrcIn-0nO6VwU()I

    move-result v7

    goto :goto_4

    :cond_4
    move/from16 v7, p7

    :goto_4
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v8

    if-eqz v8, :cond_5

    const/4 v8, -0x1

    const-string v10, "androidx.compose.ui.graphics.vector.rememberVectorPainter (VectorPainter.kt:73)"

    .line 84
    invoke-static {v1, v0, v8, v10}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_5
    const/4 v8, 0x0

    and-int/lit8 v1, v0, 0xe

    const/high16 v10, 0xc00000

    or-int/2addr v1, v10

    and-int/lit8 v10, v0, 0x70

    or-int/2addr v1, v10

    and-int/lit16 v10, v0, 0x380

    or-int/2addr v1, v10

    and-int/lit16 v10, v0, 0x1c00

    or-int/2addr v1, v10

    const v10, 0xe000

    and-int/2addr v10, v0

    or-int/2addr v1, v10

    const/high16 v10, 0x70000

    and-int/2addr v10, v0

    or-int/2addr v1, v10

    const/high16 v10, 0x380000

    and-int/2addr v10, v0

    or-int/2addr v1, v10

    shl-int/lit8 v0, v0, 0x3

    const/high16 v10, 0xe000000

    and-int/2addr v0, v10

    or-int v11, v1, v0

    const/4 v12, 0x0

    move v0, p0

    move v1, p1

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    invoke-static/range {v0 .. v12}, Landroidx/compose/ui/graphics/vector/VectorPainterKt;->rememberVectorPainter-vIP8VLU(FFFFLjava/lang/String;JIZLkotlin/jvm/functions/Function4;Landroidx/compose/runtime/Composer;II)Landroidx/compose/ui/graphics/vector/VectorPainter;

    move-result-object v0

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_6
    invoke-interface/range {p9 .. p9}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    return-object v0
.end method

.method public static final rememberVectorPainter-vIP8VLU(FFFFLjava/lang/String;JIZLkotlin/jvm/functions/Function4;Landroidx/compose/runtime/Composer;II)Landroidx/compose/ui/graphics/vector/VectorPainter;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(FFFF",
            "Ljava/lang/String;",
            "JIZ",
            "Lkotlin/jvm/functions/Function4<",
            "-",
            "Ljava/lang/Float;",
            "-",
            "Ljava/lang/Float;",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;",
            "Landroidx/compose/runtime/Composer;",
            "II)",
            "Landroidx/compose/ui/graphics/vector/VectorPainter;"
        }
    .end annotation

    move-object/from16 v0, p10

    move/from16 v1, p11

    move/from16 v2, p12

    const-string v3, "content"

    move-object/from16 v4, p9

    invoke-static {v4, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const v3, 0x3fb166c2

    invoke-interface {v0, v3}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v5, "C(rememberVectorPainter)P(3:c#ui.unit.Dp,2:c#ui.unit.Dp,8,7,4,6:c#ui.graphics.Color,5:c#ui.graphics.BlendMode)126@5382L7,133@5685L187,*141@5885L28,146@6158L46:VectorPainter.kt#huu6hf"

    invoke-static {v0, v5}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    and-int/lit8 v5, v2, 0x4

    const/high16 v6, 0x7fc00000    # Float.NaN

    if-eqz v5, :cond_0

    move v5, v6

    goto :goto_0

    :cond_0
    move/from16 v5, p2

    :goto_0
    and-int/lit8 v7, v2, 0x8

    if-eqz v7, :cond_1

    goto :goto_1

    :cond_1
    move/from16 v6, p3

    :goto_1
    and-int/lit8 v7, v2, 0x10

    if-eqz v7, :cond_2

    const-string v7, "VectorRootGroup"

    goto :goto_2

    :cond_2
    move-object/from16 v7, p4

    :goto_2
    and-int/lit8 v8, v2, 0x20

    if-eqz v8, :cond_3

    .line 122
    sget-object v8, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual {v8}, Landroidx/compose/ui/graphics/Color$Companion;->getUnspecified-0d7_KjU()J

    move-result-wide v8

    goto :goto_3

    :cond_3
    move-wide/from16 v8, p5

    :goto_3
    and-int/lit8 v10, v2, 0x40

    if-eqz v10, :cond_4

    .line 123
    sget-object v10, Landroidx/compose/ui/graphics/BlendMode;->Companion:Landroidx/compose/ui/graphics/BlendMode$Companion;

    invoke-virtual {v10}, Landroidx/compose/ui/graphics/BlendMode$Companion;->getSrcIn-0nO6VwU()I

    move-result v10

    goto :goto_4

    :cond_4
    move/from16 v10, p7

    :goto_4
    and-int/lit16 v2, v2, 0x80

    if-eqz v2, :cond_5

    const/4 v2, 0x0

    goto :goto_5

    :cond_5
    move/from16 v2, p8

    .line 124
    :goto_5
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v11

    if-eqz v11, :cond_6

    const/4 v11, -0x1

    const-string v12, "androidx.compose.ui.graphics.vector.rememberVectorPainter (VectorPainter.kt:115)"

    .line 126
    invoke-static {v3, v1, v11, v12}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 127
    :cond_6
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->getLocalDensity()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v3

    check-cast v3, Landroidx/compose/runtime/CompositionLocal;

    const v11, 0x789c5f52

    const-string v12, "CC:CompositionLocal.kt#9igjgp"

    .line 421
    invoke-static {v0, v11, v12}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    invoke-interface {v0, v3}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v3

    invoke-static/range {p10 .. p10}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 127
    check-cast v3, Landroidx/compose/ui/unit/Density;

    move/from16 v11, p0

    .line 128
    invoke-interface {v3, v11}, Landroidx/compose/ui/unit/Density;->toPx-0680j_4(F)F

    move-result v11

    move/from16 v12, p1

    .line 129
    invoke-interface {v3, v12}, Landroidx/compose/ui/unit/Density;->toPx-0680j_4(F)F

    move-result v3

    .line 131
    invoke-static {v5}, Ljava/lang/Float;->isNaN(F)Z

    move-result v12

    if-eqz v12, :cond_7

    move v5, v11

    .line 132
    :cond_7
    invoke-static {v6}, Ljava/lang/Float;->isNaN(F)Z

    move-result v12

    if-eqz v12, :cond_8

    move v6, v3

    :cond_8
    invoke-static {v8, v9}, Landroidx/compose/ui/graphics/Color;->box-impl(J)Landroidx/compose/ui/graphics/Color;

    move-result-object v12

    invoke-static {v10}, Landroidx/compose/ui/graphics/BlendMode;->box-impl(I)Landroidx/compose/ui/graphics/BlendMode;

    move-result-object v13

    shr-int/lit8 v14, v1, 0xf

    const v15, 0x1e7b2b64

    .line 134
    invoke-interface {v0, v15}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v15, "CC(remember)P(1,2):Composables.kt#9igjgp"

    invoke-static {v0, v15}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 423
    invoke-interface {v0, v12}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v12

    invoke-interface {v0, v13}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v13

    or-int/2addr v12, v13

    .line 425
    invoke-interface/range {p10 .. p10}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v13

    if-nez v12, :cond_9

    .line 426
    sget-object v12, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v12}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v12

    if-ne v13, v12, :cond_b

    .line 135
    :cond_9
    sget-object v12, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual {v12}, Landroidx/compose/ui/graphics/Color$Companion;->getUnspecified-0d7_KjU()J

    move-result-wide v12

    invoke-static {v8, v9, v12, v13}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    move-result v12

    if-nez v12, :cond_a

    .line 136
    sget-object v12, Landroidx/compose/ui/graphics/ColorFilter;->Companion:Landroidx/compose/ui/graphics/ColorFilter$Companion;

    invoke-virtual {v12, v8, v9, v10}, Landroidx/compose/ui/graphics/ColorFilter$Companion;->tint-xETnrds(JI)Landroidx/compose/ui/graphics/ColorFilter;

    move-result-object v8

    goto :goto_6

    :cond_a
    const/4 v8, 0x0

    :goto_6
    move-object v13, v8

    .line 428
    invoke-interface {v0, v13}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 424
    :cond_b
    invoke-interface/range {p10 .. p10}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 134
    check-cast v13, Landroidx/compose/ui/graphics/ColorFilter;

    const v8, -0x1d58f75c

    .line 142
    invoke-interface {v0, v8}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v8, "CC(remember):Composables.kt#9igjgp"

    invoke-static {v0, v8}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 432
    invoke-interface/range {p10 .. p10}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v8

    .line 433
    sget-object v9, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v9}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v9

    if-ne v8, v9, :cond_c

    .line 142
    new-instance v8, Landroidx/compose/ui/graphics/vector/VectorPainter;

    invoke-direct {v8}, Landroidx/compose/ui/graphics/vector/VectorPainter;-><init>()V

    .line 435
    invoke-interface {v0, v8}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 431
    :cond_c
    invoke-interface/range {p10 .. p10}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 142
    check-cast v8, Landroidx/compose/ui/graphics/vector/VectorPainter;

    .line 144
    invoke-static {v11, v3}, Landroidx/compose/ui/geometry/SizeKt;->Size(FF)J

    move-result-wide v9

    invoke-virtual {v8, v9, v10}, Landroidx/compose/ui/graphics/vector/VectorPainter;->setSize-uvyYCjk$ui_release(J)V

    .line 145
    invoke-virtual {v8, v2}, Landroidx/compose/ui/graphics/vector/VectorPainter;->setAutoMirror$ui_release(Z)V

    .line 146
    invoke-virtual {v8, v13}, Landroidx/compose/ui/graphics/vector/VectorPainter;->setIntrinsicColorFilter$ui_release(Landroidx/compose/ui/graphics/ColorFilter;)V

    shr-int/lit8 v1, v1, 0xc

    and-int/lit8 v1, v1, 0xe

    const v2, 0x8000

    or-int/2addr v1, v2

    and-int/lit16 v2, v14, 0x1c00

    or-int/2addr v1, v2

    move-object/from16 p0, v8

    move-object/from16 p1, v7

    move/from16 p2, v5

    move/from16 p3, v6

    move-object/from16 p4, p9

    move-object/from16 p5, p10

    move/from16 p6, v1

    .line 147
    invoke-virtual/range {p0 .. p6}, Landroidx/compose/ui/graphics/vector/VectorPainter;->RenderVector$ui_release(Ljava/lang/String;FFLkotlin/jvm/functions/Function4;Landroidx/compose/runtime/Composer;I)V

    .line 142
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v1

    if-eqz v1, :cond_d

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_d
    invoke-interface/range {p10 .. p10}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    return-object v8
.end method
