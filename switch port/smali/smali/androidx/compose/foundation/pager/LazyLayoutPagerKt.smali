.class public final Landroidx/compose/foundation/pager/LazyLayoutPagerKt;
.super Ljava/lang/Object;
.source "LazyLayoutPager.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nLazyLayoutPager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LazyLayoutPager.kt\nandroidx/compose/foundation/pager/LazyLayoutPagerKt\n+ 2 Dp.kt\nandroidx/compose/ui/unit/DpKt\n+ 3 Composables.kt\nandroidx/compose/runtime/ComposablesKt\n+ 4 Composer.kt\nandroidx/compose/runtime/ComposerKt\n+ 5 CompositionLocal.kt\nandroidx/compose/runtime/CompositionLocal\n*L\n1#1,282:1\n154#2:283\n36#3:284\n36#3:291\n50#3:298\n49#3:299\n83#3,3:307\n1097#4,6:285\n1097#4,6:292\n1097#4,6:300\n1097#4,6:310\n76#5:306\n*S KotlinDebug\n*F\n+ 1 LazyLayoutPager.kt\nandroidx/compose/foundation/pager/LazyLayoutPagerKt\n*L\n77#1:283\n102#1:284\n115#1:291\n118#1:298\n118#1:299\n242#1:307,3\n102#1:285,6\n115#1:292,6\n118#1:300,6\n242#1:310,6\n157#1:306\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0086\u0001\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u001a\u00d9\u0001\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\t2\u0008\u0008\u0002\u0010\u000f\u001a\u00020\u00102\u0008\u0008\u0002\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u00162#\u0010\u0017\u001a\u001f\u0012\u0013\u0012\u00110\u0010\u00a2\u0006\u000c\u0008\u0019\u0012\u0008\u0008\u001a\u0012\u0004\u0008\u0008(\u001b\u0012\u0004\u0012\u00020\u001c\u0018\u00010\u00182\u0006\u0010\u001d\u001a\u00020\u001e2\u0006\u0010\u001f\u001a\u00020 21\u0010!\u001a-\u0012\u0004\u0012\u00020#\u0012\u0013\u0012\u00110\u0010\u00a2\u0006\u000c\u0008\u0019\u0012\u0008\u0008\u001a\u0012\u0004\u0008\u0008($\u0012\u0004\u0012\u00020\u00010\"\u00a2\u0006\u0002\u0008%\u00a2\u0006\u0002\u0008&H\u0001\u00f8\u0001\u0000\u00f8\u0001\u0001\u00a2\u0006\u0004\u0008\'\u0010(\u001a\u0081\u0001\u0010)\u001a\u0008\u0012\u0004\u0012\u00020+0*2\u0006\u0010\u0004\u001a\u00020\u000521\u0010!\u001a-\u0012\u0004\u0012\u00020#\u0012\u0013\u0012\u00110\u0010\u00a2\u0006\u000c\u0008\u0019\u0012\u0008\u0008\u001a\u0012\u0004\u0008\u0008($\u0012\u0004\u0012\u00020\u00010\"\u00a2\u0006\u0002\u0008%\u00a2\u0006\u0002\u0008&2#\u0010\u0017\u001a\u001f\u0012\u0013\u0012\u00110\u0010\u00a2\u0006\u000c\u0008\u0019\u0012\u0008\u0008\u001a\u0012\u0004\u0008\u0008(\u001b\u0012\u0004\u0012\u00020\u001c\u0018\u00010\u00182\u000c\u0010,\u001a\u0008\u0012\u0004\u0012\u00020\u00100*H\u0003\u00a2\u0006\u0002\u0010-\u001a\u0014\u0010.\u001a\u00020\u0003*\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0002\u0082\u0002\u000b\n\u0005\u0008\u00a1\u001e0\u0001\n\u0002\u0008\u0019\u00a8\u0006/"
    }
    d2 = {
        "Pager",
        "",
        "modifier",
        "Landroidx/compose/ui/Modifier;",
        "state",
        "Landroidx/compose/foundation/pager/PagerState;",
        "contentPadding",
        "Landroidx/compose/foundation/layout/PaddingValues;",
        "reverseLayout",
        "",
        "orientation",
        "Landroidx/compose/foundation/gestures/Orientation;",
        "flingBehavior",
        "Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior;",
        "userScrollEnabled",
        "beyondBoundsPageCount",
        "",
        "pageSpacing",
        "Landroidx/compose/ui/unit/Dp;",
        "pageSize",
        "Landroidx/compose/foundation/pager/PageSize;",
        "pageNestedScrollConnection",
        "Landroidx/compose/ui/input/nestedscroll/NestedScrollConnection;",
        "key",
        "Lkotlin/Function1;",
        "Lkotlin/ParameterName;",
        "name",
        "index",
        "",
        "horizontalAlignment",
        "Landroidx/compose/ui/Alignment$Horizontal;",
        "verticalAlignment",
        "Landroidx/compose/ui/Alignment$Vertical;",
        "pageContent",
        "Lkotlin/Function2;",
        "Landroidx/compose/foundation/pager/PagerScope;",
        "page",
        "Landroidx/compose/runtime/Composable;",
        "Lkotlin/ExtensionFunctionType;",
        "Pager-fs30GE4",
        "(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/pager/PagerState;Landroidx/compose/foundation/layout/PaddingValues;ZLandroidx/compose/foundation/gestures/Orientation;Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior;ZIFLandroidx/compose/foundation/pager/PageSize;Landroidx/compose/ui/input/nestedscroll/NestedScrollConnection;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Alignment$Horizontal;Landroidx/compose/ui/Alignment$Vertical;Lkotlin/jvm/functions/Function4;Landroidx/compose/runtime/Composer;III)V",
        "rememberPagerItemProviderLambda",
        "Lkotlin/Function0;",
        "Landroidx/compose/foundation/pager/PagerLazyLayoutItemProvider;",
        "pageCount",
        "(Landroidx/compose/foundation/pager/PagerState;Lkotlin/jvm/functions/Function4;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)Lkotlin/jvm/functions/Function0;",
        "dragDirectionDetector",
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
.method public static final Pager-fs30GE4(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/pager/PagerState;Landroidx/compose/foundation/layout/PaddingValues;ZLandroidx/compose/foundation/gestures/Orientation;Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior;ZIFLandroidx/compose/foundation/pager/PageSize;Landroidx/compose/ui/input/nestedscroll/NestedScrollConnection;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Alignment$Horizontal;Landroidx/compose/ui/Alignment$Vertical;Lkotlin/jvm/functions/Function4;Landroidx/compose/runtime/Composer;III)V
    .locals 31
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/Modifier;",
            "Landroidx/compose/foundation/pager/PagerState;",
            "Landroidx/compose/foundation/layout/PaddingValues;",
            "Z",
            "Landroidx/compose/foundation/gestures/Orientation;",
            "Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior;",
            "ZIF",
            "Landroidx/compose/foundation/pager/PageSize;",
            "Landroidx/compose/ui/input/nestedscroll/NestedScrollConnection;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Integer;",
            "+",
            "Ljava/lang/Object;",
            ">;",
            "Landroidx/compose/ui/Alignment$Horizontal;",
            "Landroidx/compose/ui/Alignment$Vertical;",
            "Lkotlin/jvm/functions/Function4<",
            "-",
            "Landroidx/compose/foundation/pager/PagerScope;",
            "-",
            "Ljava/lang/Integer;",
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

    move-object/from16 v0, p1

    move/from16 v15, p3

    move-object/from16 v14, p4

    move-object/from16 v13, p5

    move-object/from16 v12, p10

    move/from16 v11, p16

    move/from16 v10, p17

    move/from16 v9, p18

    const-string v2, "modifier"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v2, "state"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "contentPadding"

    move-object/from16 v8, p2

    invoke-static {v8, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "orientation"

    invoke-static {v14, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "flingBehavior"

    invoke-static {v13, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "pageSize"

    move-object/from16 v7, p9

    invoke-static {v7, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "pageNestedScrollConnection"

    invoke-static {v12, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "horizontalAlignment"

    move-object/from16 v6, p12

    invoke-static {v6, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v2, "verticalAlignment"

    move-object/from16 v5, p13

    invoke-static {v5, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "pageContent"

    move-object/from16 v4, p14

    invoke-static {v4, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const v2, -0x11fabc8f

    move-object/from16 v3, p15

    .line 90
    invoke-interface {v3, v2}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object v3

    const-string v2, "C(Pager)P(5,12,1,11,6,2,13!1,10:c#ui.unit.Dp,9,8,4!1,14)95@4489L18,101@4652L19,97@4537L134,114@5148L19,103@4697L477,117@5205L94,127@5488L115,138@5788L276,146@6128L161,156@6513L7,133@5609L1489:LazyLayoutPager.kt#g6yjnt"

    invoke-static {v3, v2}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    and-int/lit16 v2, v9, 0x80

    const/4 v15, 0x0

    if-eqz v2, :cond_0

    move v2, v15

    goto :goto_0

    :cond_0
    move/from16 v2, p7

    :goto_0
    and-int/lit16 v4, v9, 0x100

    if-eqz v4, :cond_1

    int-to-float v4, v15

    .line 283
    invoke-static {v4}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v4

    move/from16 v17, v4

    goto :goto_1

    :cond_1
    move/from16 v17, p8

    :goto_1
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v4

    if-eqz v4, :cond_2

    const-string v4, "androidx.compose.foundation.pager.Pager (LazyLayoutPager.kt:58)"

    const v15, -0x11fabc8f

    .line 90
    invoke-static {v15, v11, v10, v4}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_2
    if-ltz v2, :cond_e

    .line 96
    sget-object v4, Landroidx/compose/foundation/gestures/ScrollableDefaults;->INSTANCE:Landroidx/compose/foundation/gestures/ScrollableDefaults;

    const/4 v15, 0x6

    invoke-virtual {v4, v3, v15}, Landroidx/compose/foundation/gestures/ScrollableDefaults;->overscrollEffect(Landroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/OverscrollEffect;

    move-result-object v15

    shr-int/lit8 v4, v11, 0x3

    and-int/lit8 v16, v4, 0xe

    const v8, 0x44faf204

    .line 102
    invoke-interface {v3, v8}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v8, "CC(remember)P(1):Composables.kt#9igjgp"

    invoke-static {v3, v8}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 284
    invoke-interface {v3, v0}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v18

    move/from16 v19, v2

    .line 285
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v2

    if-nez v18, :cond_3

    .line 286
    sget-object v18, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    move/from16 p8, v4

    invoke-virtual/range {v18 .. v18}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v4

    if-ne v2, v4, :cond_4

    goto :goto_2

    :cond_3
    move/from16 p8, v4

    .line 102
    :goto_2
    new-instance v2, Landroidx/compose/foundation/pager/LazyLayoutPagerKt$Pager$pagerItemProvider$1$1;

    invoke-direct {v2, v0}, Landroidx/compose/foundation/pager/LazyLayoutPagerKt$Pager$pagerItemProvider$1$1;-><init>(Landroidx/compose/foundation/pager/PagerState;)V

    check-cast v2, Lkotlin/jvm/functions/Function0;

    .line 288
    invoke-interface {v3, v2}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 284
    :cond_4
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    move-object/from16 v18, v2

    check-cast v18, Lkotlin/jvm/functions/Function0;

    shr-int/lit8 v2, v10, 0x9

    and-int/lit8 v2, v2, 0x70

    or-int v2, v16, v2

    shl-int/lit8 v4, v10, 0x3

    and-int/lit16 v4, v4, 0x380

    or-int v20, v2, v4

    move/from16 v4, v19

    move-object/from16 v2, p1

    move-object/from16 v19, v3

    move-object/from16 v3, p14

    move/from16 v21, p8

    move/from16 p8, v4

    move-object/from16 v4, p11

    move-object/from16 v5, v18

    move-object/from16 v6, v19

    move/from16 v7, v20

    .line 98
    invoke-static/range {v2 .. v7}, Landroidx/compose/foundation/pager/LazyLayoutPagerKt;->rememberPagerItemProviderLambda(Landroidx/compose/foundation/pager/PagerState;Lkotlin/jvm/functions/Function4;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)Lkotlin/jvm/functions/Function0;

    move-result-object v18

    move-object/from16 v7, v19

    const v2, 0x44faf204

    .line 115
    invoke-interface {v7, v2}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    invoke-static {v7, v8}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 291
    invoke-interface {v7, v0}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v2

    .line 292
    invoke-interface {v7}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v3

    if-nez v2, :cond_5

    .line 293
    sget-object v2, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v2}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v2

    if-ne v3, v2, :cond_6

    .line 115
    :cond_5
    new-instance v2, Landroidx/compose/foundation/pager/LazyLayoutPagerKt$Pager$measurePolicy$1$1;

    invoke-direct {v2, v0}, Landroidx/compose/foundation/pager/LazyLayoutPagerKt$Pager$measurePolicy$1$1;-><init>(Landroidx/compose/foundation/pager/PagerState;)V

    move-object v3, v2

    check-cast v3, Lkotlin/jvm/functions/Function0;

    .line 295
    invoke-interface {v7, v3}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 291
    :cond_6
    invoke-interface {v7}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    move-object/from16 v19, v3

    check-cast v19, Lkotlin/jvm/functions/Function0;

    and-int/lit8 v20, v11, 0x70

    and-int/lit16 v2, v11, 0x380

    or-int v2, v20, v2

    and-int/lit16 v8, v11, 0x1c00

    or-int/2addr v2, v8

    const v22, 0xe000

    and-int v23, v11, v22

    or-int v2, v2, v23

    shr-int/lit8 v24, v11, 0x6

    const/high16 v25, 0x70000

    and-int v3, v24, v25

    or-int/2addr v2, v3

    const/high16 v3, 0x380000

    and-int v3, v24, v3

    or-int/2addr v2, v3

    const/high16 v3, 0x1c00000

    and-int v3, v24, v3

    or-int/2addr v2, v3

    shl-int/lit8 v3, v10, 0x12

    const/high16 v4, 0xe000000

    and-int/2addr v4, v3

    or-int/2addr v2, v4

    const/high16 v4, 0x70000000

    and-int/2addr v3, v4

    or-int v26, v2, v3

    const/16 v27, 0x0

    move-object/from16 v2, v18

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 p7, v7

    move/from16 v7, p8

    move/from16 v28, v8

    move/from16 v8, v17

    move-object/from16 v9, p9

    move-object/from16 v10, p12

    move-object/from16 v11, p13

    move-object/from16 v12, v19

    move-object/from16 v13, p7

    move-object v1, v14

    move/from16 v14, v26

    move-object/from16 v29, v15

    const/16 v19, 0x0

    move/from16 v15, v27

    .line 104
    invoke-static/range {v2 .. v15}, Landroidx/compose/foundation/pager/PagerMeasurePolicyKt;->rememberPagerMeasurePolicy-BxUkNYg(Lkotlin/jvm/functions/Function0;Landroidx/compose/foundation/pager/PagerState;Landroidx/compose/foundation/layout/PaddingValues;ZLandroidx/compose/foundation/gestures/Orientation;IFLandroidx/compose/foundation/pager/PageSize;Landroidx/compose/ui/Alignment$Horizontal;Landroidx/compose/ui/Alignment$Vertical;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;II)Lkotlin/jvm/functions/Function2;

    move-result-object v10

    shr-int/lit8 v11, p16, 0xf

    const v2, 0x1e7b2b64

    move-object/from16 v12, p7

    .line 118
    invoke-interface {v12, v2}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v2, "CC(remember)P(1,2):Composables.kt#9igjgp"

    invoke-static {v12, v2}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    move-object/from16 v13, p5

    .line 298
    invoke-interface {v12, v13}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v2

    invoke-interface {v12, v0}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v3

    or-int/2addr v2, v3

    .line 300
    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v3

    if-nez v2, :cond_7

    .line 301
    sget-object v2, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v2}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v2

    if-ne v3, v2, :cond_8

    .line 119
    :cond_7
    new-instance v3, Landroidx/compose/foundation/pager/PagerWrapperFlingBehavior;

    invoke-direct {v3, v13, v0}, Landroidx/compose/foundation/pager/PagerWrapperFlingBehavior;-><init>(Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior;Landroidx/compose/foundation/pager/PagerState;)V

    .line 303
    invoke-interface {v12, v3}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 299
    :cond_8
    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 118
    move-object v14, v3

    check-cast v14, Landroidx/compose/foundation/pager/PagerWrapperFlingBehavior;

    const v2, 0x5629e510

    invoke-interface {v12, v2}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v2, "122@5368L58"

    invoke-static {v12, v2}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    const/4 v15, 0x1

    if-eqz p6, :cond_a

    .line 123
    sget-object v2, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v2, Landroidx/compose/ui/Modifier;

    sget-object v3, Landroidx/compose/foundation/gestures/Orientation;->Vertical:Landroidx/compose/foundation/gestures/Orientation;

    if-ne v1, v3, :cond_9

    move v3, v15

    goto :goto_3

    :cond_9
    move/from16 v3, v19

    :goto_3
    or-int/lit8 v4, v20, 0x6

    invoke-static {v2, v0, v3, v12, v4}, Landroidx/compose/foundation/pager/PagerKt;->pagerSemantics(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/pager/PagerState;ZLandroidx/compose/runtime/Composer;I)Landroidx/compose/ui/Modifier;

    move-result-object v2

    goto :goto_4

    .line 125
    :cond_a
    sget-object v2, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v2, Landroidx/compose/ui/Modifier;

    .line 122
    :goto_4
    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 131
    sget-object v3, Landroidx/compose/foundation/gestures/Orientation;->Vertical:Landroidx/compose/foundation/gestures/Orientation;

    if-ne v1, v3, :cond_b

    goto :goto_5

    :cond_b
    move/from16 v15, v19

    :goto_5
    and-int/lit8 v3, v24, 0x70

    or-int v3, v16, v3

    move/from16 v9, p3

    .line 128
    invoke-static {v0, v9, v15, v12, v3}, Landroidx/compose/foundation/pager/PagerSemanticsKt;->rememberPagerSemanticState(Landroidx/compose/foundation/pager/PagerState;ZZLandroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/lazy/layout/LazyLayoutSemanticState;

    move-result-object v4

    .line 136
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/foundation/pager/PagerState;->getRemeasurementModifier$foundation_release()Landroidx/compose/ui/layout/RemeasurementModifier;

    move-result-object v3

    check-cast v3, Landroidx/compose/ui/Modifier;

    move-object v15, v1

    move-object/from16 v1, p0

    invoke-interface {v1, v3}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v3

    .line 137
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/foundation/pager/PagerState;->getAwaitLayoutModifier$foundation_release()Landroidx/compose/foundation/lazy/layout/AwaitFirstLayoutModifier;

    move-result-object v5

    check-cast v5, Landroidx/compose/ui/Modifier;

    invoke-interface {v3, v5}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v3

    .line 138
    invoke-interface {v3, v2}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v2

    move/from16 v3, v21

    and-int/lit16 v3, v3, 0x1c00

    and-int v5, v24, v22

    or-int/2addr v3, v5

    shl-int/lit8 v5, p16, 0x6

    and-int v5, v5, v25

    or-int v16, v3, v5

    move-object/from16 v3, v18

    move-object/from16 v5, p4

    move/from16 v6, p6

    move/from16 v7, p3

    move-object v8, v12

    move v13, v9

    move/from16 v9, v16

    .line 139
    invoke-static/range {v2 .. v9}, Landroidx/compose/foundation/lazy/layout/LazyLayoutSemanticsKt;->lazyLayoutSemantics(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function0;Landroidx/compose/foundation/lazy/layout/LazyLayoutSemanticState;Landroidx/compose/foundation/gestures/Orientation;ZZLandroidx/compose/runtime/Composer;I)Landroidx/compose/ui/Modifier;

    move-result-object v2

    .line 146
    invoke-static {v2, v15}, Landroidx/compose/foundation/ClipScrollableContainerKt;->clipScrollableContainer(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/gestures/Orientation;)Landroidx/compose/ui/Modifier;

    move-result-object v2

    and-int/lit16 v3, v11, 0x380

    or-int v3, v20, v3

    or-int v3, v3, v28

    or-int v8, v3, v23

    move-object/from16 v3, p1

    move/from16 v4, p8

    move/from16 v5, p3

    move-object/from16 v6, p4

    move-object v7, v12

    .line 147
    invoke-static/range {v2 .. v8}, Landroidx/compose/foundation/pager/PagerBeyondBoundsModifierKt;->pagerBeyondBoundsModifier(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/pager/PagerState;IZLandroidx/compose/foundation/gestures/Orientation;Landroidx/compose/runtime/Composer;I)Landroidx/compose/ui/Modifier;

    move-result-object v2

    move-object/from16 v5, v29

    .line 153
    invoke-static {v2, v5}, Landroidx/compose/foundation/OverscrollKt;->overscroll(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/OverscrollEffect;)Landroidx/compose/ui/Modifier;

    move-result-object v2

    .line 156
    sget-object v3, Landroidx/compose/foundation/gestures/ScrollableDefaults;->INSTANCE:Landroidx/compose/foundation/gestures/ScrollableDefaults;

    .line 157
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->getLocalLayoutDirection()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v4

    check-cast v4, Landroidx/compose/runtime/CompositionLocal;

    const v6, 0x789c5f52

    const-string v7, "CC:CompositionLocal.kt#9igjgp"

    .line 306
    invoke-static {v12, v6, v7}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    invoke-interface {v12, v4}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v12}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    check-cast v4, Landroidx/compose/ui/unit/LayoutDirection;

    .line 156
    invoke-virtual {v3, v4, v15, v13}, Landroidx/compose/foundation/gestures/ScrollableDefaults;->reverseDirection(Landroidx/compose/ui/unit/LayoutDirection;Landroidx/compose/foundation/gestures/Orientation;Z)Z

    move-result v7

    .line 161
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/foundation/pager/PagerState;->getInternalInteractionSource$foundation_release()Landroidx/compose/foundation/interaction/MutableInteractionSource;

    move-result-object v9

    .line 163
    move-object v3, v0

    check-cast v3, Landroidx/compose/foundation/gestures/ScrollableState;

    .line 162
    move-object v8, v14

    check-cast v8, Landroidx/compose/foundation/gestures/FlingBehavior;

    move-object/from16 v4, p4

    move/from16 v6, p6

    .line 154
    invoke-static/range {v2 .. v9}, Landroidx/compose/foundation/gestures/ScrollableKt;->scrollable(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/gestures/ScrollableState;Landroidx/compose/foundation/gestures/Orientation;Landroidx/compose/foundation/OverscrollEffect;ZZLandroidx/compose/foundation/gestures/FlingBehavior;Landroidx/compose/foundation/interaction/MutableInteractionSource;)Landroidx/compose/ui/Modifier;

    move-result-object v2

    .line 167
    invoke-static {v2, v0}, Landroidx/compose/foundation/pager/LazyLayoutPagerKt;->dragDirectionDetector(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/pager/PagerState;)Landroidx/compose/ui/Modifier;

    move-result-object v2

    const/4 v3, 0x2

    const/4 v4, 0x0

    move-object/from16 v11, p10

    .line 168
    invoke-static {v2, v11, v4, v3, v4}, Landroidx/compose/ui/input/nestedscroll/NestedScrollModifierKt;->nestedScroll$default(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/input/nestedscroll/NestedScrollConnection;Landroidx/compose/ui/input/nestedscroll/NestedScrollDispatcher;ILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v4

    .line 170
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/foundation/pager/PagerState;->getPrefetchState$foundation_release()Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState;

    move-result-object v5

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v3, v18

    move-object v6, v10

    move-object v7, v12

    .line 134
    invoke-static/range {v3 .. v9}, Landroidx/compose/foundation/lazy/layout/LazyLayoutKt;->LazyLayout(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;II)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v2

    if-eqz v2, :cond_c

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_c
    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v14

    if-nez v14, :cond_d

    goto :goto_6

    :cond_d
    new-instance v19, Landroidx/compose/foundation/pager/LazyLayoutPagerKt$Pager$2;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p8

    move/from16 v9, v17

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move-object/from16 v12, p11

    move-object/from16 v13, p12

    move-object v15, v14

    move-object/from16 v14, p13

    move-object/from16 v30, v15

    move-object/from16 v15, p14

    move/from16 v16, p16

    move/from16 v17, p17

    move/from16 v18, p18

    invoke-direct/range {v0 .. v18}, Landroidx/compose/foundation/pager/LazyLayoutPagerKt$Pager$2;-><init>(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/pager/PagerState;Landroidx/compose/foundation/layout/PaddingValues;ZLandroidx/compose/foundation/gestures/Orientation;Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior;ZIFLandroidx/compose/foundation/pager/PageSize;Landroidx/compose/ui/input/nestedscroll/NestedScrollConnection;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Alignment$Horizontal;Landroidx/compose/ui/Alignment$Vertical;Lkotlin/jvm/functions/Function4;III)V

    move-object/from16 v0, v19

    check-cast v0, Lkotlin/jvm/functions/Function2;

    move-object/from16 v1, v30

    invoke-interface {v1, v0}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    :goto_6
    return-void

    :cond_e
    move/from16 p8, v2

    .line 92
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "beyondBoundsPageCount should be greater than or equal to 0, you selected "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v15, p8

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 91
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static final dragDirectionDetector(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/pager/PagerState;)Landroidx/compose/ui/Modifier;
    .locals 3

    .line 264
    sget-object v0, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v0, Landroidx/compose/ui/Modifier;

    new-instance v1, Landroidx/compose/foundation/pager/LazyLayoutPagerKt$dragDirectionDetector$1;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2}, Landroidx/compose/foundation/pager/LazyLayoutPagerKt$dragDirectionDetector$1;-><init>(Landroidx/compose/foundation/pager/PagerState;Lkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    invoke-static {v0, p1, v1}, Landroidx/compose/ui/input/pointer/SuspendingPointerInputFilterKt;->pointerInput(Landroidx/compose/ui/Modifier;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)Landroidx/compose/ui/Modifier;

    move-result-object p1

    invoke-interface {p0, p1}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object p0

    return-object p0
.end method

.method private static final rememberPagerItemProviderLambda(Landroidx/compose/foundation/pager/PagerState;Lkotlin/jvm/functions/Function4;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)Lkotlin/jvm/functions/Function0;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/foundation/pager/PagerState;",
            "Lkotlin/jvm/functions/Function4<",
            "-",
            "Landroidx/compose/foundation/pager/PagerScope;",
            "-",
            "Ljava/lang/Integer;",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Integer;",
            "+",
            "Ljava/lang/Object;",
            ">;",
            "Lkotlin/jvm/functions/Function0<",
            "Ljava/lang/Integer;",
            ">;",
            "Landroidx/compose/runtime/Composer;",
            "I)",
            "Lkotlin/jvm/functions/Function0<",
            "Landroidx/compose/foundation/pager/PagerLazyLayoutItemProvider;",
            ">;"
        }
    .end annotation

    const v0, -0x51cec4ba

    invoke-interface {p4, v0}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v1, "C(rememberPagerItemProviderLambda)P(3,1)240@9459L33,241@9504L659:LazyLayoutPager.kt#g6yjnt"

    invoke-static {p4, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, -0x1

    const-string v2, "androidx.compose.foundation.pager.rememberPagerItemProviderLambda (LazyLayoutPager.kt:234)"

    .line 240
    invoke-static {v0, p5, v1, v2}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_0
    shr-int/lit8 p5, p5, 0x3

    and-int/lit8 p5, p5, 0xe

    .line 241
    invoke-static {p1, p4, p5}, Landroidx/compose/runtime/SnapshotStateKt;->rememberUpdatedState(Ljava/lang/Object;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/State;

    move-result-object p1

    .line 242
    filled-new-array {p0, p1, p2, p3}, [Ljava/lang/Object;

    move-result-object p5

    const v0, -0x21de6e89

    invoke-interface {p4, v0}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v0, "CC(remember)P(1):Composables.kt#9igjgp"

    invoke-static {p4, v0}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const/4 v2, 0x4

    if-ge v0, v2, :cond_1

    .line 308
    aget-object v2, p5, v0

    invoke-interface {p4, v2}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v2

    or-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 310
    :cond_1
    invoke-interface {p4}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object p5

    if-nez v1, :cond_2

    .line 311
    sget-object v0, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v0}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v0

    if-ne p5, v0, :cond_3

    .line 243
    :cond_2
    invoke-static {}, Landroidx/compose/runtime/SnapshotStateKt;->referentialEqualityPolicy()Landroidx/compose/runtime/SnapshotMutationPolicy;

    move-result-object p5

    new-instance v0, Landroidx/compose/foundation/pager/LazyLayoutPagerKt$rememberPagerItemProviderLambda$1$intervalContentState$1;

    invoke-direct {v0, p1, p2, p3}, Landroidx/compose/foundation/pager/LazyLayoutPagerKt$rememberPagerItemProviderLambda$1$intervalContentState$1;-><init>(Landroidx/compose/runtime/State;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;)V

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {p5, v0}, Landroidx/compose/runtime/SnapshotStateKt;->derivedStateOf(Landroidx/compose/runtime/SnapshotMutationPolicy;Lkotlin/jvm/functions/Function0;)Landroidx/compose/runtime/State;

    move-result-object p1

    .line 246
    invoke-static {}, Landroidx/compose/runtime/SnapshotStateKt;->referentialEqualityPolicy()Landroidx/compose/runtime/SnapshotMutationPolicy;

    move-result-object p2

    new-instance p3, Landroidx/compose/foundation/pager/LazyLayoutPagerKt$rememberPagerItemProviderLambda$1$itemProviderState$1;

    invoke-direct {p3, p1, p0}, Landroidx/compose/foundation/pager/LazyLayoutPagerKt$rememberPagerItemProviderLambda$1$itemProviderState$1;-><init>(Landroidx/compose/runtime/State;Landroidx/compose/foundation/pager/PagerState;)V

    check-cast p3, Lkotlin/jvm/functions/Function0;

    invoke-static {p2, p3}, Landroidx/compose/runtime/SnapshotStateKt;->derivedStateOf(Landroidx/compose/runtime/SnapshotMutationPolicy;Lkotlin/jvm/functions/Function0;)Landroidx/compose/runtime/State;

    move-result-object p0

    .line 255
    new-instance p1, Landroidx/compose/foundation/pager/LazyLayoutPagerKt$rememberPagerItemProviderLambda$1$1;

    invoke-direct {p1, p0}, Landroidx/compose/foundation/pager/LazyLayoutPagerKt$rememberPagerItemProviderLambda$1$1;-><init>(Ljava/lang/Object;)V

    move-object p5, p1

    check-cast p5, Lkotlin/reflect/KProperty0;

    .line 313
    invoke-interface {p4, p5}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 309
    :cond_3
    invoke-interface {p4}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 242
    check-cast p5, Lkotlin/reflect/KProperty0;

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result p0

    if-eqz p0, :cond_4

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_4
    invoke-interface {p4}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    check-cast p5, Lkotlin/jvm/functions/Function0;

    return-object p5
.end method
