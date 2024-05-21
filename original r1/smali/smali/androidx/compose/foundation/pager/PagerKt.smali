.class public final Landroidx/compose/foundation/pager/PagerKt;
.super Ljava/lang/Object;
.source "Pager.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Pager.kt\nandroidx/compose/foundation/pager/PagerKt\n+ 2 Dp.kt\nandroidx/compose/ui/unit/DpKt\n+ 3 Composables.kt\nandroidx/compose/runtime/ComposablesKt\n+ 4 Composer.kt\nandroidx/compose/runtime/ComposerKt\n+ 5 Effects.kt\nandroidx/compose/runtime/EffectsKt\n+ 6 Effects.kt\nandroidx/compose/runtime/EffectsKt$rememberCoroutineScope$1\n*L\n1#1,895:1\n154#2:896\n154#2:897\n154#2:905\n154#2:906\n154#2:907\n154#2:908\n154#2:916\n154#2:917\n36#3:898\n36#3:909\n25#3:922\n1097#4,6:899\n1097#4,6:910\n1097#4,3:923\n1100#4,3:929\n486#5,4:918\n490#5,2:926\n494#5:932\n486#6:928\n*S KotlinDebug\n*F\n+ 1 Pager.kt\nandroidx/compose/foundation/pager/PagerKt\n*L\n109#1:896\n112#1:897\n217#1:905\n220#1:906\n295#1:907\n298#1:908\n402#1:916\n405#1:917\n216#1:898\n401#1:909\n844#1:922\n216#1:899,6\n401#1:910,6\n844#1:923,3\n844#1:929,3\n844#1:918,4\n844#1:926,2\n844#1:932\n844#1:928\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u00a6\u0001\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0007\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0006\u001a\u00db\u0001\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\n2\u0008\u0008\u0002\u0010\u000b\u001a\u00020\u000c2\u0008\u0008\u0002\u0010\r\u001a\u00020\u000e2\u0008\u0008\u0002\u0010\u000f\u001a\u00020\u00102\u0008\u0008\u0002\u0010\u0011\u001a\u00020\u00062\u0008\u0008\u0002\u0010\u0012\u001a\u00020\u00132\u0008\u0008\u0002\u0010\u0014\u001a\u00020\u00152\u0008\u0008\u0002\u0010\u0016\u001a\u00020\u00172\u0008\u0008\u0002\u0010\u0018\u001a\u00020\u00042\u0008\u0008\u0002\u0010\u0019\u001a\u00020\u00042%\u0008\u0002\u0010\u001a\u001a\u001f\u0012\u0013\u0012\u00110\u0006\u00a2\u0006\u000c\u0008\u001c\u0012\u0008\u0008\u001d\u0012\u0004\u0008\u0008(\u001e\u0012\u0004\u0012\u00020\u001f\u0018\u00010\u001b2\u0008\u0008\u0002\u0010 \u001a\u00020!21\u0010\"\u001a-\u0012\u0004\u0012\u00020$\u0012\u0013\u0012\u00110\u0006\u00a2\u0006\u000c\u0008\u001c\u0012\u0008\u0008\u001d\u0012\u0004\u0008\u0008(%\u0012\u0004\u0012\u00020\u00080#\u00a2\u0006\u0002\u0008&\u00a2\u0006\u0002\u0008\'H\u0007\u00f8\u0001\u0000\u00f8\u0001\u0001\u00a2\u0006\u0004\u0008(\u0010)\u001a\u00e5\u0001\u0010\u0007\u001a\u00020\u00082\u0006\u0010*\u001a\u00020\u00062\u0008\u0008\u0002\u0010\u000b\u001a\u00020\u000c2\u0008\u0008\u0002\u0010\t\u001a\u00020\n2\u0008\u0008\u0002\u0010\r\u001a\u00020\u000e2\u0008\u0008\u0002\u0010\u000f\u001a\u00020\u00102\u0008\u0008\u0002\u0010\u0011\u001a\u00020\u00062\u0008\u0008\u0002\u0010\u0012\u001a\u00020\u00132\u0008\u0008\u0002\u0010\u0014\u001a\u00020\u00152\u0008\u0008\u0002\u0010\u0016\u001a\u00020\u00172\u0008\u0008\u0002\u0010\u0018\u001a\u00020\u00042\u0008\u0008\u0002\u0010\u0019\u001a\u00020\u00042%\u0008\u0002\u0010\u001a\u001a\u001f\u0012\u0013\u0012\u00110\u0006\u00a2\u0006\u000c\u0008\u001c\u0012\u0008\u0008\u001d\u0012\u0004\u0008\u0008(\u001e\u0012\u0004\u0012\u00020\u001f\u0018\u00010\u001b2\u0008\u0008\u0002\u0010 \u001a\u00020!21\u0010\"\u001a-\u0012\u0004\u0012\u00020$\u0012\u0013\u0012\u00110\u0006\u00a2\u0006\u000c\u0008\u001c\u0012\u0008\u0008\u001d\u0012\u0004\u0008\u0008(%\u0012\u0004\u0012\u00020\u00080#\u00a2\u0006\u0002\u0008&\u00a2\u0006\u0002\u0008\'H\u0007\u00f8\u0001\u0000\u00f8\u0001\u0001\u00a2\u0006\u0004\u0008+\u0010,\u001a.\u0010-\u001a\u00020.2\u0006\u0010/\u001a\u00020\n2\u0006\u00100\u001a\u0002012\u000c\u00102\u001a\u0008\u0012\u0004\u0012\u000204032\u0006\u00105\u001a\u000204H\u0002\u001a\u00db\u0001\u00106\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\n2\u0008\u0008\u0002\u0010\u000b\u001a\u00020\u000c2\u0008\u0008\u0002\u0010\r\u001a\u00020\u000e2\u0008\u0008\u0002\u0010\u000f\u001a\u00020\u00102\u0008\u0008\u0002\u0010\u0011\u001a\u00020\u00062\u0008\u0008\u0002\u0010\u0012\u001a\u00020\u00132\u0008\u0008\u0002\u00107\u001a\u0002082\u0008\u0008\u0002\u0010\u0016\u001a\u00020\u00172\u0008\u0008\u0002\u0010\u0018\u001a\u00020\u00042\u0008\u0008\u0002\u0010\u0019\u001a\u00020\u00042%\u0008\u0002\u0010\u001a\u001a\u001f\u0012\u0013\u0012\u00110\u0006\u00a2\u0006\u000c\u0008\u001c\u0012\u0008\u0008\u001d\u0012\u0004\u0008\u0008(\u001e\u0012\u0004\u0012\u00020\u001f\u0018\u00010\u001b2\u0008\u0008\u0002\u0010 \u001a\u00020!21\u0010\"\u001a-\u0012\u0004\u0012\u00020$\u0012\u0013\u0012\u00110\u0006\u00a2\u0006\u000c\u0008\u001c\u0012\u0008\u0008\u001d\u0012\u0004\u0008\u0008(%\u0012\u0004\u0012\u00020\u00080#\u00a2\u0006\u0002\u0008&\u00a2\u0006\u0002\u0008\'H\u0007\u00f8\u0001\u0000\u00f8\u0001\u0001\u00a2\u0006\u0004\u00089\u0010:\u001a\u00e5\u0001\u00106\u001a\u00020\u00082\u0006\u0010*\u001a\u00020\u00062\u0008\u0008\u0002\u0010\u000b\u001a\u00020\u000c2\u0008\u0008\u0002\u0010\t\u001a\u00020\n2\u0008\u0008\u0002\u0010\r\u001a\u00020\u000e2\u0008\u0008\u0002\u0010\u000f\u001a\u00020\u00102\u0008\u0008\u0002\u0010\u0011\u001a\u00020\u00062\u0008\u0008\u0002\u0010\u0012\u001a\u00020\u00132\u0008\u0008\u0002\u00107\u001a\u0002082\u0008\u0008\u0002\u0010\u0016\u001a\u00020\u00172\u0008\u0008\u0002\u0010\u0018\u001a\u00020\u00042\u0008\u0008\u0002\u0010\u0019\u001a\u00020\u00042%\u0008\u0002\u0010\u001a\u001a\u001f\u0012\u0013\u0012\u00110\u0006\u00a2\u0006\u000c\u0008\u001c\u0012\u0008\u0008\u001d\u0012\u0004\u0008\u0008(\u001e\u0012\u0004\u0012\u00020\u001f\u0018\u00010\u001b2\u0008\u0008\u0002\u0010 \u001a\u00020!21\u0010\"\u001a-\u0012\u0004\u0012\u00020$\u0012\u0013\u0012\u00110\u0006\u00a2\u0006\u000c\u0008\u001c\u0012\u0008\u0008\u001d\u0012\u0004\u0008\u0008(%\u0012\u0004\u0012\u00020\u00080#\u00a2\u0006\u0002\u0008&\u00a2\u0006\u0002\u0008\'H\u0007\u00f8\u0001\u0000\u00f8\u0001\u0001\u00a2\u0006\u0004\u0008;\u0010<\u001a\u0017\u0010=\u001a\u00020\u00082\u000c\u0010>\u001a\u0008\u0012\u0004\u0012\u00020@0?H\u0082\u0008\u001a\u000c\u0010A\u001a\u000204*\u00020\nH\u0002\u001a\u000c\u0010B\u001a\u00020\u0004*\u00020\nH\u0002\u001a!\u0010C\u001a\u00020\u000c*\u00020\u000c2\u0006\u0010\t\u001a\u00020\n2\u0006\u0010D\u001a\u00020\u0004H\u0001\u00a2\u0006\u0002\u0010E\"\u000e\u0010\u0000\u001a\u00020\u0001X\u0082\u0004\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\u0002\u001a\u00020\u0001X\u0082\u0004\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\u0005\u001a\u00020\u0006X\u0082T\u00a2\u0006\u0002\n\u0000\u0082\u0002\u000b\n\u0005\u0008\u00a1\u001e0\u0001\n\u0002\u0008\u0019\u00a8\u0006F"
    }
    d2 = {
        "ConsumeHorizontalFlingNestedScrollConnection",
        "Landroidx/compose/foundation/pager/ConsumeAllFlingOnDirection;",
        "ConsumeVerticalFlingNestedScrollConnection",
        "DEBUG",
        "",
        "LowVelocityAnimationDefaultDuration",
        "",
        "HorizontalPager",
        "",
        "state",
        "Landroidx/compose/foundation/pager/PagerState;",
        "modifier",
        "Landroidx/compose/ui/Modifier;",
        "contentPadding",
        "Landroidx/compose/foundation/layout/PaddingValues;",
        "pageSize",
        "Landroidx/compose/foundation/pager/PageSize;",
        "beyondBoundsPageCount",
        "pageSpacing",
        "Landroidx/compose/ui/unit/Dp;",
        "verticalAlignment",
        "Landroidx/compose/ui/Alignment$Vertical;",
        "flingBehavior",
        "Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior;",
        "userScrollEnabled",
        "reverseLayout",
        "key",
        "Lkotlin/Function1;",
        "Lkotlin/ParameterName;",
        "name",
        "index",
        "",
        "pageNestedScrollConnection",
        "Landroidx/compose/ui/input/nestedscroll/NestedScrollConnection;",
        "pageContent",
        "Lkotlin/Function2;",
        "Landroidx/compose/foundation/pager/PagerScope;",
        "page",
        "Landroidx/compose/runtime/Composable;",
        "Lkotlin/ExtensionFunctionType;",
        "HorizontalPager-xYaah8o",
        "(Landroidx/compose/foundation/pager/PagerState;Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/foundation/pager/PageSize;IFLandroidx/compose/ui/Alignment$Vertical;Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior;ZZLkotlin/jvm/functions/Function1;Landroidx/compose/ui/input/nestedscroll/NestedScrollConnection;Lkotlin/jvm/functions/Function4;Landroidx/compose/runtime/Composer;III)V",
        "pageCount",
        "HorizontalPager-AlbwjTQ",
        "(ILandroidx/compose/ui/Modifier;Landroidx/compose/foundation/pager/PagerState;Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/foundation/pager/PageSize;IFLandroidx/compose/ui/Alignment$Vertical;Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior;ZZLkotlin/jvm/functions/Function1;Landroidx/compose/ui/input/nestedscroll/NestedScrollConnection;Lkotlin/jvm/functions/Function4;Landroidx/compose/runtime/Composer;III)V",
        "SnapLayoutInfoProvider",
        "Landroidx/compose/foundation/gestures/snapping/SnapLayoutInfoProvider;",
        "pagerState",
        "pagerSnapDistance",
        "Landroidx/compose/foundation/pager/PagerSnapDistance;",
        "decayAnimationSpec",
        "Landroidx/compose/animation/core/DecayAnimationSpec;",
        "",
        "snapPositionalThreshold",
        "VerticalPager",
        "horizontalAlignment",
        "Landroidx/compose/ui/Alignment$Horizontal;",
        "VerticalPager-xYaah8o",
        "(Landroidx/compose/foundation/pager/PagerState;Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/foundation/pager/PageSize;IFLandroidx/compose/ui/Alignment$Horizontal;Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior;ZZLkotlin/jvm/functions/Function1;Landroidx/compose/ui/input/nestedscroll/NestedScrollConnection;Lkotlin/jvm/functions/Function4;Landroidx/compose/runtime/Composer;III)V",
        "VerticalPager-AlbwjTQ",
        "(ILandroidx/compose/ui/Modifier;Landroidx/compose/foundation/pager/PagerState;Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/foundation/pager/PageSize;IFLandroidx/compose/ui/Alignment$Horizontal;Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior;ZZLkotlin/jvm/functions/Function1;Landroidx/compose/ui/input/nestedscroll/NestedScrollConnection;Lkotlin/jvm/functions/Function4;Landroidx/compose/runtime/Composer;III)V",
        "debugLog",
        "generateMsg",
        "Lkotlin/Function0;",
        "",
        "dragGestureDelta",
        "isScrollingForward",
        "pagerSemantics",
        "isVertical",
        "(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/pager/PagerState;ZLandroidx/compose/runtime/Composer;I)Landroidx/compose/ui/Modifier;",
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


# static fields
.field private static final ConsumeHorizontalFlingNestedScrollConnection:Landroidx/compose/foundation/pager/ConsumeAllFlingOnDirection;

.field private static final ConsumeVerticalFlingNestedScrollConnection:Landroidx/compose/foundation/pager/ConsumeAllFlingOnDirection;

.field private static final DEBUG:Z = false

.field private static final LowVelocityAnimationDefaultDuration:I = 0x1f4


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 802
    new-instance v0, Landroidx/compose/foundation/pager/ConsumeAllFlingOnDirection;

    sget-object v1, Landroidx/compose/foundation/gestures/Orientation;->Horizontal:Landroidx/compose/foundation/gestures/Orientation;

    invoke-direct {v0, v1}, Landroidx/compose/foundation/pager/ConsumeAllFlingOnDirection;-><init>(Landroidx/compose/foundation/gestures/Orientation;)V

    sput-object v0, Landroidx/compose/foundation/pager/PagerKt;->ConsumeHorizontalFlingNestedScrollConnection:Landroidx/compose/foundation/pager/ConsumeAllFlingOnDirection;

    .line 804
    new-instance v0, Landroidx/compose/foundation/pager/ConsumeAllFlingOnDirection;

    sget-object v1, Landroidx/compose/foundation/gestures/Orientation;->Vertical:Landroidx/compose/foundation/gestures/Orientation;

    invoke-direct {v0, v1}, Landroidx/compose/foundation/pager/ConsumeAllFlingOnDirection;-><init>(Landroidx/compose/foundation/gestures/Orientation;)V

    sput-object v0, Landroidx/compose/foundation/pager/PagerKt;->ConsumeVerticalFlingNestedScrollConnection:Landroidx/compose/foundation/pager/ConsumeAllFlingOnDirection;

    return-void
.end method

.method public static final HorizontalPager-AlbwjTQ(ILandroidx/compose/ui/Modifier;Landroidx/compose/foundation/pager/PagerState;Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/foundation/pager/PageSize;IFLandroidx/compose/ui/Alignment$Vertical;Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior;ZZLkotlin/jvm/functions/Function1;Landroidx/compose/ui/input/nestedscroll/NestedScrollConnection;Lkotlin/jvm/functions/Function4;Landroidx/compose/runtime/Composer;III)V
    .locals 35
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroidx/compose/ui/Modifier;",
            "Landroidx/compose/foundation/pager/PagerState;",
            "Landroidx/compose/foundation/layout/PaddingValues;",
            "Landroidx/compose/foundation/pager/PageSize;",
            "IF",
            "Landroidx/compose/ui/Alignment$Vertical;",
            "Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior;",
            "ZZ",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Integer;",
            "+",
            "Ljava/lang/Object;",
            ">;",
            "Landroidx/compose/ui/input/nestedscroll/NestedScrollConnection;",
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

    .annotation runtime Lkotlin/Deprecated;
        level = .enum Lkotlin/DeprecationLevel;->ERROR:Lkotlin/DeprecationLevel;
        message = "Please use the overload without pageCount. pageCount should be provided through PagerState."
        replaceWith = .subannotation Lkotlin/ReplaceWith;
            expression = "HorizontalPager(\n            modifier = modifier,\n            state = state,\n            pageSpacing = pageSpacing,\n            horizontalAlignment = horizontalAlignment,\n            userScrollEnabled = userScrollEnabled,\n            reverseLayout = reverseLayout,\n            contentPadding = contentPadding,\n            beyondBoundsPageCount = beyondBoundsPageCount,\n            pageSize = pageSize,\n            flingBehavior = flingBehavior,\n            key = key,\n            pageNestedScrollConnection = pageNestedScrollConnection,\n            pageContent = pageContent\n        )"
            imports = {
                "androidx.compose.foundation.gestures.Orientation",
                "androidx.compose.foundation.layout.PaddingValues",
                "androidx.compose.foundation.pager.PageSize",
                "androidx.compose.foundation.pager.PagerDefaults"
            }
        .end subannotation
    .end annotation

    move/from16 v1, p0

    move-object/from16 v0, p13

    move/from16 v15, p15

    move/from16 v13, p16

    move/from16 v12, p17

    const-string v2, "pageContent"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const v2, 0x6c5236d0

    move-object/from16 v3, p14

    .line 230
    invoke-interface {v3, v2}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object v11

    const-string v3, "C(HorizontalPager)P(6,4,11,1,8!1,9:c#ui.unit.Dp,13!1,12,10!1,7)215@11194L13,215@11175L32,221@11495L28,230@11845L620:Pager.kt#g6yjnt"

    invoke-static {v11, v3}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    and-int/lit8 v3, v12, 0x1

    if-eqz v3, :cond_0

    or-int/lit8 v3, v15, 0x6

    goto :goto_1

    :cond_0
    and-int/lit8 v3, v15, 0xe

    if-nez v3, :cond_2

    invoke-interface {v11, v1}, Landroidx/compose/runtime/Composer;->changed(I)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x4

    goto :goto_0

    :cond_1
    const/4 v3, 0x2

    :goto_0
    or-int/2addr v3, v15

    goto :goto_1

    :cond_2
    move v3, v15

    :goto_1
    and-int/lit8 v6, v12, 0x2

    const/16 v7, 0x20

    if-eqz v6, :cond_3

    or-int/lit8 v3, v3, 0x30

    goto :goto_3

    :cond_3
    and-int/lit8 v9, v15, 0x70

    if-nez v9, :cond_5

    move-object/from16 v9, p1

    invoke-interface {v11, v9}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    move v10, v7

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
    and-int/lit16 v10, v15, 0x380

    if-nez v10, :cond_8

    and-int/lit8 v10, v12, 0x4

    if-nez v10, :cond_6

    move-object/from16 v10, p2

    invoke-interface {v11, v10}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_7

    const/16 v14, 0x100

    goto :goto_5

    :cond_6
    move-object/from16 v10, p2

    :cond_7
    const/16 v14, 0x80

    :goto_5
    or-int/2addr v3, v14

    goto :goto_6

    :cond_8
    move-object/from16 v10, p2

    :goto_6
    and-int/lit8 v14, v12, 0x8

    const/16 v16, 0x800

    const/16 v17, 0x400

    if-eqz v14, :cond_9

    or-int/lit16 v3, v3, 0xc00

    goto :goto_8

    :cond_9
    and-int/lit16 v4, v15, 0x1c00

    if-nez v4, :cond_b

    move-object/from16 v4, p3

    invoke-interface {v11, v4}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_a

    move/from16 v18, v16

    goto :goto_7

    :cond_a
    move/from16 v18, v17

    :goto_7
    or-int v3, v3, v18

    goto :goto_9

    :cond_b
    :goto_8
    move-object/from16 v4, p3

    :goto_9
    and-int/lit8 v18, v12, 0x10

    const v27, 0xe000

    if-eqz v18, :cond_c

    or-int/lit16 v3, v3, 0x6000

    move-object/from16 v2, p4

    goto :goto_b

    :cond_c
    and-int v19, v15, v27

    move-object/from16 v2, p4

    if-nez v19, :cond_e

    invoke-interface {v11, v2}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_d

    const/16 v19, 0x4000

    goto :goto_a

    :cond_d
    const/16 v19, 0x2000

    :goto_a
    or-int v3, v3, v19

    :cond_e
    :goto_b
    and-int/lit8 v19, v12, 0x20

    const/high16 v28, 0x70000

    if-eqz v19, :cond_f

    const/high16 v20, 0x30000

    or-int v3, v3, v20

    move/from16 v8, p5

    goto :goto_d

    :cond_f
    and-int v20, v15, v28

    move/from16 v8, p5

    if-nez v20, :cond_11

    invoke-interface {v11, v8}, Landroidx/compose/runtime/Composer;->changed(I)Z

    move-result v21

    if-eqz v21, :cond_10

    const/high16 v21, 0x20000

    goto :goto_c

    :cond_10
    const/high16 v21, 0x10000

    :goto_c
    or-int v3, v3, v21

    :cond_11
    :goto_d
    and-int/lit8 v21, v12, 0x40

    if-eqz v21, :cond_12

    const/high16 v22, 0x180000

    or-int v3, v3, v22

    move/from16 v8, p6

    goto :goto_f

    :cond_12
    const/high16 v22, 0x380000

    and-int v22, v15, v22

    move/from16 v8, p6

    if-nez v22, :cond_14

    invoke-interface {v11, v8}, Landroidx/compose/runtime/Composer;->changed(F)Z

    move-result v22

    if-eqz v22, :cond_13

    const/high16 v22, 0x100000

    goto :goto_e

    :cond_13
    const/high16 v22, 0x80000

    :goto_e
    or-int v3, v3, v22

    :cond_14
    :goto_f
    and-int/lit16 v8, v12, 0x80

    if-eqz v8, :cond_15

    const/high16 v22, 0xc00000

    or-int v3, v3, v22

    goto :goto_11

    :cond_15
    const/high16 v22, 0x1c00000

    and-int v22, v15, v22

    if-nez v22, :cond_17

    move/from16 v22, v8

    move-object/from16 v8, p7

    invoke-interface {v11, v8}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_16

    const/high16 v23, 0x800000

    goto :goto_10

    :cond_16
    const/high16 v23, 0x400000

    :goto_10
    or-int v3, v3, v23

    goto :goto_12

    :cond_17
    :goto_11
    move/from16 v22, v8

    move-object/from16 v8, p7

    :goto_12
    const/high16 v23, 0xe000000

    and-int v23, v15, v23

    if-nez v23, :cond_1a

    and-int/lit16 v5, v12, 0x100

    if-nez v5, :cond_18

    move-object/from16 v5, p8

    invoke-interface {v11, v5}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_19

    const/high16 v24, 0x4000000

    goto :goto_13

    :cond_18
    move-object/from16 v5, p8

    :cond_19
    const/high16 v24, 0x2000000

    :goto_13
    or-int v3, v3, v24

    goto :goto_14

    :cond_1a
    move-object/from16 v5, p8

    :goto_14
    and-int/lit16 v8, v12, 0x200

    if-eqz v8, :cond_1b

    const/high16 v24, 0x30000000

    or-int v3, v3, v24

    goto :goto_16

    :cond_1b
    const/high16 v24, 0x70000000

    and-int v24, v15, v24

    if-nez v24, :cond_1d

    move/from16 v24, v8

    move/from16 v8, p9

    invoke-interface {v11, v8}, Landroidx/compose/runtime/Composer;->changed(Z)Z

    move-result v25

    if-eqz v25, :cond_1c

    const/high16 v25, 0x20000000

    goto :goto_15

    :cond_1c
    const/high16 v25, 0x10000000

    :goto_15
    or-int v3, v3, v25

    goto :goto_17

    :cond_1d
    :goto_16
    move/from16 v24, v8

    move/from16 v8, p9

    :goto_17
    and-int/lit16 v8, v12, 0x400

    if-eqz v8, :cond_1e

    or-int/lit8 v23, v13, 0x6

    move/from16 v25, v8

    move/from16 v8, p10

    goto :goto_19

    :cond_1e
    and-int/lit8 v25, v13, 0xe

    if-nez v25, :cond_20

    move/from16 v25, v8

    move/from16 v8, p10

    invoke-interface {v11, v8}, Landroidx/compose/runtime/Composer;->changed(Z)Z

    move-result v26

    if-eqz v26, :cond_1f

    const/16 v23, 0x4

    goto :goto_18

    :cond_1f
    const/16 v23, 0x2

    :goto_18
    or-int v23, v13, v23

    goto :goto_19

    :cond_20
    move/from16 v25, v8

    move/from16 v8, p10

    move/from16 v23, v13

    :goto_19
    and-int/lit16 v8, v12, 0x800

    if-eqz v8, :cond_21

    or-int/lit8 v23, v23, 0x30

    move/from16 v26, v8

    move/from16 v7, v23

    move-object/from16 v8, p11

    goto :goto_1c

    :cond_21
    and-int/lit8 v26, v13, 0x70

    if-nez v26, :cond_23

    move/from16 v26, v8

    move-object/from16 v8, p11

    invoke-interface {v11, v8}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_22

    goto :goto_1a

    :cond_22
    const/16 v7, 0x10

    :goto_1a
    or-int v23, v23, v7

    goto :goto_1b

    :cond_23
    move/from16 v26, v8

    move-object/from16 v8, p11

    :goto_1b
    move/from16 v7, v23

    :goto_1c
    and-int/lit16 v8, v12, 0x1000

    if-eqz v8, :cond_24

    or-int/lit16 v7, v7, 0x80

    :cond_24
    and-int/lit16 v2, v12, 0x2000

    if-eqz v2, :cond_25

    or-int/lit16 v7, v7, 0xc00

    goto :goto_1e

    :cond_25
    and-int/lit16 v2, v13, 0x1c00

    if-nez v2, :cond_27

    invoke-interface {v11, v0}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_26

    goto :goto_1d

    :cond_26
    move/from16 v16, v17

    :goto_1d
    or-int v7, v7, v16

    :cond_27
    :goto_1e
    move v2, v7

    const/16 v7, 0x1000

    if-ne v8, v7, :cond_29

    const v7, 0x5b6db6db

    and-int/2addr v7, v3

    const v0, 0x12492492

    if-ne v7, v0, :cond_29

    and-int/lit16 v0, v2, 0x16db

    const/16 v7, 0x492

    if-ne v0, v7, :cond_29

    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result v0

    if-nez v0, :cond_28

    goto :goto_1f

    .line 248
    :cond_28
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    move/from16 v6, p5

    move/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v12, p11

    move-object/from16 v13, p12

    move-object v2, v9

    move-object v3, v10

    move-object/from16 v27, v11

    move/from16 v10, p9

    move/from16 v11, p10

    move-object v9, v5

    move-object/from16 v5, p4

    goto/16 :goto_2d

    .line 230
    :cond_29
    :goto_1f
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->startDefaults()V

    and-int/lit8 v0, v15, 0x1

    if-eqz v0, :cond_2e

    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->getDefaultsInvalid()Z

    move-result v0

    if-eqz v0, :cond_2a

    goto :goto_20

    .line 226
    :cond_2a
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    and-int/lit8 v0, v12, 0x4

    if-eqz v0, :cond_2b

    and-int/lit16 v3, v3, -0x381

    :cond_2b
    and-int/lit16 v0, v12, 0x100

    if-eqz v0, :cond_2c

    const v0, -0xe000001

    and-int/2addr v3, v0

    :cond_2c
    if-eqz v8, :cond_2d

    and-int/lit16 v2, v2, -0x381

    :cond_2d
    move-object/from16 v22, p4

    move/from16 v23, p5

    move/from16 v24, p6

    move-object/from16 v25, p7

    move/from16 v29, p9

    move/from16 v30, p10

    move-object/from16 v31, p11

    move-object/from16 v32, p12

    move-object/from16 v21, v4

    move-object/from16 v26, v5

    move-object v0, v9

    move-object v1, v10

    goto/16 :goto_2c

    :cond_2e
    :goto_20
    if-eqz v6, :cond_2f

    .line 215
    sget-object v0, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v0, Landroidx/compose/ui/Modifier;

    goto :goto_21

    :cond_2f
    move-object v0, v9

    :goto_21
    and-int/lit8 v6, v12, 0x4

    if-eqz v6, :cond_32

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 216
    invoke-static/range {p0 .. p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const v10, 0x44faf204

    invoke-interface {v11, v10}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v10, "CC(remember)P(1):Composables.kt#9igjgp"

    invoke-static {v11, v10}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 898
    invoke-interface {v11, v9}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v9

    .line 899
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v10

    if-nez v9, :cond_30

    .line 900
    sget-object v9, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v9}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v9

    if-ne v10, v9, :cond_31

    .line 216
    :cond_30
    new-instance v9, Landroidx/compose/foundation/pager/PagerKt$HorizontalPager$2$1;

    invoke-direct {v9, v1}, Landroidx/compose/foundation/pager/PagerKt$HorizontalPager$2$1;-><init>(I)V

    move-object v10, v9

    check-cast v10, Lkotlin/jvm/functions/Function0;

    .line 902
    invoke-interface {v11, v10}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 898
    :cond_31
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    move-object v9, v10

    check-cast v9, Lkotlin/jvm/functions/Function0;

    const/4 v10, 0x0

    const/16 v16, 0x3

    move/from16 v30, v3

    move v3, v6

    move v4, v7

    move-object v5, v9

    move-object v6, v11

    move v7, v10

    move/from16 v33, v8

    move/from16 v9, v22

    move/from16 v29, v24

    move/from16 v31, v25

    move/from16 v32, v26

    move/from16 v8, v16

    .line 216
    invoke-static/range {v3 .. v8}, Landroidx/compose/foundation/pager/PagerStateKt;->rememberPagerState(IFLkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;II)Landroidx/compose/foundation/pager/PagerState;

    move-result-object v3

    move/from16 v4, v30

    and-int/lit16 v4, v4, -0x381

    goto :goto_22

    :cond_32
    move v4, v3

    move/from16 v33, v8

    move/from16 v9, v22

    move/from16 v29, v24

    move/from16 v31, v25

    move/from16 v32, v26

    move-object v3, v10

    :goto_22
    const/4 v5, 0x0

    if-eqz v14, :cond_33

    int-to-float v6, v5

    .line 905
    invoke-static {v6}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v6

    .line 217
    invoke-static {v6}, Landroidx/compose/foundation/layout/PaddingKt;->PaddingValues-0680j_4(F)Landroidx/compose/foundation/layout/PaddingValues;

    move-result-object v6

    goto :goto_23

    :cond_33
    move-object/from16 v6, p3

    :goto_23
    if-eqz v18, :cond_34

    .line 218
    sget-object v7, Landroidx/compose/foundation/pager/PageSize$Fill;->INSTANCE:Landroidx/compose/foundation/pager/PageSize$Fill;

    check-cast v7, Landroidx/compose/foundation/pager/PageSize;

    goto :goto_24

    :cond_34
    move-object/from16 v7, p4

    :goto_24
    if-eqz v19, :cond_35

    move v8, v5

    goto :goto_25

    :cond_35
    move/from16 v8, p5

    :goto_25
    if-eqz v21, :cond_36

    int-to-float v10, v5

    .line 906
    invoke-static {v10}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v10

    goto :goto_26

    :cond_36
    move/from16 v10, p6

    :goto_26
    if-eqz v9, :cond_37

    .line 221
    sget-object v9, Landroidx/compose/ui/Alignment;->Companion:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v9}, Landroidx/compose/ui/Alignment$Companion;->getCenterVertically()Landroidx/compose/ui/Alignment$Vertical;

    move-result-object v9

    goto :goto_27

    :cond_37
    move-object/from16 v9, p7

    :goto_27
    and-int/lit16 v14, v12, 0x100

    if-eqz v14, :cond_38

    .line 222
    sget-object v16, Landroidx/compose/foundation/pager/PagerDefaults;->INSTANCE:Landroidx/compose/foundation/pager/PagerDefaults;

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    shr-int/lit8 v14, v4, 0x6

    and-int/lit8 v14, v14, 0xe

    const/high16 v17, 0xc00000

    or-int v25, v14, v17

    const/16 v26, 0x7e

    move-object/from16 v17, v3

    move-object/from16 v24, v11

    invoke-virtual/range {v16 .. v26}, Landroidx/compose/foundation/pager/PagerDefaults;->flingBehavior-PfoAEA0(Landroidx/compose/foundation/pager/PagerState;Landroidx/compose/foundation/pager/PagerSnapDistance;Landroidx/compose/animation/core/AnimationSpec;Landroidx/compose/animation/core/DecayAnimationSpec;Landroidx/compose/animation/core/AnimationSpec;FFLandroidx/compose/runtime/Composer;II)Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior;

    move-result-object v14

    const v16, -0xe000001

    and-int v4, v4, v16

    goto :goto_28

    :cond_38
    move-object/from16 v14, p8

    :goto_28
    if-eqz v29, :cond_39

    const/16 v16, 0x1

    goto :goto_29

    :cond_39
    move/from16 v16, p9

    :goto_29
    if-eqz v31, :cond_3a

    goto :goto_2a

    :cond_3a
    move/from16 v5, p10

    :goto_2a
    if-eqz v32, :cond_3b

    const/16 v17, 0x0

    goto :goto_2b

    :cond_3b
    move-object/from16 v17, p11

    :goto_2b
    move-object/from16 p1, v0

    if-eqz v33, :cond_3c

    .line 226
    sget-object v0, Landroidx/compose/foundation/pager/PagerDefaults;->INSTANCE:Landroidx/compose/foundation/pager/PagerDefaults;

    .line 227
    sget-object v1, Landroidx/compose/foundation/gestures/Orientation;->Horizontal:Landroidx/compose/foundation/gestures/Orientation;

    .line 226
    invoke-virtual {v0, v1}, Landroidx/compose/foundation/pager/PagerDefaults;->pageNestedScrollConnection(Landroidx/compose/foundation/gestures/Orientation;)Landroidx/compose/ui/input/nestedscroll/NestedScrollConnection;

    move-result-object v0

    and-int/lit16 v2, v2, -0x381

    move-object/from16 v32, v0

    move-object v1, v3

    move v3, v4

    move/from16 v30, v5

    move-object/from16 v21, v6

    move-object/from16 v22, v7

    move/from16 v23, v8

    move-object/from16 v25, v9

    move/from16 v24, v10

    move-object/from16 v26, v14

    move/from16 v29, v16

    move-object/from16 v31, v17

    move-object/from16 v0, p1

    goto :goto_2c

    :cond_3c
    move-object/from16 v32, p12

    move-object v1, v3

    move v3, v4

    move/from16 v30, v5

    move-object/from16 v21, v6

    move-object/from16 v22, v7

    move/from16 v23, v8

    move-object/from16 v25, v9

    move/from16 v24, v10

    move-object/from16 v26, v14

    move/from16 v29, v16

    move-object/from16 v31, v17

    :goto_2c
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->endDefaults()V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v4

    if-eqz v4, :cond_3d

    const-string v4, "androidx.compose.foundation.pager.HorizontalPager (Pager.kt:212)"

    const v5, 0x6c5236d0

    .line 230
    invoke-static {v5, v3, v2, v4}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 238
    :cond_3d
    sget-object v6, Landroidx/compose/foundation/gestures/Orientation;->Horizontal:Landroidx/compose/foundation/gestures/Orientation;

    .line 240
    sget-object v4, Landroidx/compose/ui/Alignment;->Companion:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v4}, Landroidx/compose/ui/Alignment$Companion;->getCenterHorizontally()Landroidx/compose/ui/Alignment$Horizontal;

    move-result-object v14

    shr-int/lit8 v4, v3, 0x3

    and-int/lit8 v5, v4, 0xe

    or-int/lit16 v5, v5, 0x6000

    and-int/lit8 v7, v4, 0x70

    or-int/2addr v5, v7

    and-int/lit16 v4, v4, 0x380

    or-int/2addr v4, v5

    shl-int/lit8 v5, v2, 0x9

    and-int/lit16 v5, v5, 0x1c00

    or-int/2addr v4, v5

    shr-int/lit8 v5, v3, 0x9

    and-int v7, v5, v28

    or-int/2addr v4, v7

    const/high16 v7, 0x380000

    and-int/2addr v5, v7

    or-int/2addr v4, v5

    shl-int/lit8 v5, v3, 0x6

    const/high16 v7, 0x1c00000

    and-int/2addr v7, v5

    or-int/2addr v4, v7

    const/high16 v7, 0xe000000

    and-int/2addr v5, v7

    or-int/2addr v4, v5

    shl-int/lit8 v5, v3, 0xf

    const/high16 v7, 0x70000000

    and-int/2addr v5, v7

    or-int v18, v4, v5

    and-int/lit8 v4, v2, 0x70

    or-int/lit16 v4, v4, 0x188

    shr-int/lit8 v3, v3, 0xc

    and-int/lit16 v3, v3, 0x1c00

    or-int/2addr v3, v4

    shl-int/lit8 v2, v2, 0x3

    and-int v2, v2, v27

    or-int v19, v3, v2

    const/16 v20, 0x0

    move-object v2, v0

    move-object v3, v1

    move-object/from16 v4, v21

    move/from16 v5, v30

    move-object/from16 v7, v26

    move/from16 v8, v29

    move/from16 v9, v23

    move/from16 v10, v24

    move-object/from16 v27, v11

    move-object/from16 v11, v22

    move-object/from16 v12, v32

    move-object/from16 v13, v31

    move-object/from16 v15, v25

    move-object/from16 v16, p13

    move-object/from16 v17, v27

    .line 231
    invoke-static/range {v2 .. v20}, Landroidx/compose/foundation/pager/LazyLayoutPagerKt;->Pager-fs30GE4(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/pager/PagerState;Landroidx/compose/foundation/layout/PaddingValues;ZLandroidx/compose/foundation/gestures/Orientation;Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior;ZIFLandroidx/compose/foundation/pager/PageSize;Landroidx/compose/ui/input/nestedscroll/NestedScrollConnection;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Alignment$Horizontal;Landroidx/compose/ui/Alignment$Vertical;Lkotlin/jvm/functions/Function4;Landroidx/compose/runtime/Composer;III)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v2

    if-eqz v2, :cond_3e

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_3e
    move-object v2, v0

    move-object v3, v1

    move-object/from16 v4, v21

    move-object/from16 v5, v22

    move/from16 v6, v23

    move/from16 v7, v24

    move-object/from16 v8, v25

    move-object/from16 v9, v26

    move/from16 v10, v29

    move/from16 v11, v30

    move-object/from16 v12, v31

    move-object/from16 v13, v32

    .line 248
    :goto_2d
    invoke-interface/range {v27 .. v27}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v15

    if-nez v15, :cond_3f

    goto :goto_2e

    :cond_3f
    new-instance v18, Landroidx/compose/foundation/pager/PagerKt$HorizontalPager$3;

    move-object/from16 v0, v18

    move/from16 v1, p0

    move-object/from16 v14, p13

    move-object/from16 v34, v15

    move/from16 v15, p15

    move/from16 v16, p16

    move/from16 v17, p17

    invoke-direct/range {v0 .. v17}, Landroidx/compose/foundation/pager/PagerKt$HorizontalPager$3;-><init>(ILandroidx/compose/ui/Modifier;Landroidx/compose/foundation/pager/PagerState;Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/foundation/pager/PageSize;IFLandroidx/compose/ui/Alignment$Vertical;Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior;ZZLkotlin/jvm/functions/Function1;Landroidx/compose/ui/input/nestedscroll/NestedScrollConnection;Lkotlin/jvm/functions/Function4;III)V

    move-object/from16 v0, v18

    check-cast v0, Lkotlin/jvm/functions/Function2;

    move-object/from16 v1, v34

    invoke-interface {v1, v0}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    :goto_2e
    return-void
.end method

.method public static final HorizontalPager-xYaah8o(Landroidx/compose/foundation/pager/PagerState;Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/foundation/pager/PageSize;IFLandroidx/compose/ui/Alignment$Vertical;Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior;ZZLkotlin/jvm/functions/Function1;Landroidx/compose/ui/input/nestedscroll/NestedScrollConnection;Lkotlin/jvm/functions/Function4;Landroidx/compose/runtime/Composer;III)V
    .locals 36
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/foundation/pager/PagerState;",
            "Landroidx/compose/ui/Modifier;",
            "Landroidx/compose/foundation/layout/PaddingValues;",
            "Landroidx/compose/foundation/pager/PageSize;",
            "IF",
            "Landroidx/compose/ui/Alignment$Vertical;",
            "Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior;",
            "ZZ",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Integer;",
            "+",
            "Ljava/lang/Object;",
            ">;",
            "Landroidx/compose/ui/input/nestedscroll/NestedScrollConnection;",
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

    move-object/from16 v15, p0

    move-object/from16 v14, p12

    move/from16 v13, p14

    move/from16 v11, p15

    move/from16 v12, p16

    const-string/jumbo v0, "state"

    invoke-static {v15, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "pageContent"

    invoke-static {v14, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const v10, 0x58e189a1

    move-object/from16 v0, p13

    .line 122
    invoke-interface {v0, v10}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object v9

    const-string v0, "C(HorizontalPager)P(10,4,1,7!1,8:c#ui.unit.Dp,12!1,11,9!1,6)113@6091L28,122@6441L620:Pager.kt#g6yjnt"

    invoke-static {v9, v0}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    and-int/lit8 v0, v12, 0x1

    if-eqz v0, :cond_0

    or-int/lit8 v0, v13, 0x6

    goto :goto_1

    :cond_0
    and-int/lit8 v0, v13, 0xe

    if-nez v0, :cond_2

    invoke-interface {v9, v15}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x4

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    :goto_0
    or-int/2addr v0, v13

    goto :goto_1

    :cond_2
    move v0, v13

    :goto_1
    and-int/lit8 v3, v12, 0x2

    if-eqz v3, :cond_3

    or-int/lit8 v0, v0, 0x30

    goto :goto_3

    :cond_3
    and-int/lit8 v4, v13, 0x70

    if-nez v4, :cond_5

    move-object/from16 v4, p1

    invoke-interface {v9, v4}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    const/16 v5, 0x20

    goto :goto_2

    :cond_4
    const/16 v5, 0x10

    :goto_2
    or-int/2addr v0, v5

    goto :goto_4

    :cond_5
    :goto_3
    move-object/from16 v4, p1

    :goto_4
    and-int/lit8 v5, v12, 0x4

    if-eqz v5, :cond_6

    or-int/lit16 v0, v0, 0x180

    goto :goto_6

    :cond_6
    and-int/lit16 v8, v13, 0x380

    if-nez v8, :cond_8

    move-object/from16 v8, p2

    invoke-interface {v9, v8}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_7

    const/16 v16, 0x100

    goto :goto_5

    :cond_7
    const/16 v16, 0x80

    :goto_5
    or-int v0, v0, v16

    goto :goto_7

    :cond_8
    :goto_6
    move-object/from16 v8, p2

    :goto_7
    and-int/lit8 v16, v12, 0x8

    if-eqz v16, :cond_9

    or-int/lit16 v0, v0, 0xc00

    goto :goto_9

    :cond_9
    and-int/lit16 v2, v13, 0x1c00

    if-nez v2, :cond_b

    move-object/from16 v2, p3

    invoke-interface {v9, v2}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_a

    const/16 v18, 0x800

    goto :goto_8

    :cond_a
    const/16 v18, 0x400

    :goto_8
    or-int v0, v0, v18

    goto :goto_a

    :cond_b
    :goto_9
    move-object/from16 v2, p3

    :goto_a
    and-int/lit8 v18, v12, 0x10

    const v19, 0xe000

    if-eqz v18, :cond_c

    or-int/lit16 v0, v0, 0x6000

    move/from16 v6, p4

    goto :goto_c

    :cond_c
    and-int v20, v13, v19

    move/from16 v6, p4

    if-nez v20, :cond_e

    invoke-interface {v9, v6}, Landroidx/compose/runtime/Composer;->changed(I)Z

    move-result v21

    if-eqz v21, :cond_d

    const/16 v21, 0x4000

    goto :goto_b

    :cond_d
    const/16 v21, 0x2000

    :goto_b
    or-int v0, v0, v21

    :cond_e
    :goto_c
    and-int/lit8 v21, v12, 0x20

    const/high16 v22, 0x70000

    if-eqz v21, :cond_f

    const/high16 v23, 0x30000

    or-int v0, v0, v23

    move/from16 v7, p5

    goto :goto_e

    :cond_f
    and-int v23, v13, v22

    move/from16 v7, p5

    if-nez v23, :cond_11

    invoke-interface {v9, v7}, Landroidx/compose/runtime/Composer;->changed(F)Z

    move-result v24

    if-eqz v24, :cond_10

    const/high16 v24, 0x20000

    goto :goto_d

    :cond_10
    const/high16 v24, 0x10000

    :goto_d
    or-int v0, v0, v24

    :cond_11
    :goto_e
    and-int/lit8 v24, v12, 0x40

    const/high16 v25, 0x380000

    if-eqz v24, :cond_12

    const/high16 v26, 0x180000

    or-int v0, v0, v26

    move-object/from16 v10, p6

    goto :goto_10

    :cond_12
    and-int v26, v13, v25

    move-object/from16 v10, p6

    if-nez v26, :cond_14

    invoke-interface {v9, v10}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_13

    const/high16 v27, 0x100000

    goto :goto_f

    :cond_13
    const/high16 v27, 0x80000

    :goto_f
    or-int v0, v0, v27

    :cond_14
    :goto_10
    const/high16 v27, 0x1c00000

    and-int v27, v13, v27

    if-nez v27, :cond_17

    and-int/lit16 v1, v12, 0x80

    if-nez v1, :cond_15

    move-object/from16 v1, p7

    invoke-interface {v9, v1}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_16

    const/high16 v28, 0x800000

    goto :goto_11

    :cond_15
    move-object/from16 v1, p7

    :cond_16
    const/high16 v28, 0x400000

    :goto_11
    or-int v0, v0, v28

    goto :goto_12

    :cond_17
    move-object/from16 v1, p7

    :goto_12
    and-int/lit16 v10, v12, 0x100

    if-eqz v10, :cond_18

    const/high16 v28, 0x6000000

    or-int v0, v0, v28

    goto :goto_14

    :cond_18
    const/high16 v28, 0xe000000

    and-int v28, v13, v28

    if-nez v28, :cond_1a

    move/from16 v28, v10

    move/from16 v10, p8

    invoke-interface {v9, v10}, Landroidx/compose/runtime/Composer;->changed(Z)Z

    move-result v29

    if-eqz v29, :cond_19

    const/high16 v29, 0x4000000

    goto :goto_13

    :cond_19
    const/high16 v29, 0x2000000

    :goto_13
    or-int v0, v0, v29

    goto :goto_15

    :cond_1a
    :goto_14
    move/from16 v28, v10

    move/from16 v10, p8

    :goto_15
    and-int/lit16 v10, v12, 0x200

    if-eqz v10, :cond_1b

    const/high16 v29, 0x30000000

    or-int v0, v0, v29

    move/from16 v30, v0

    move/from16 v29, v10

    move/from16 v10, p9

    goto :goto_18

    :cond_1b
    const/high16 v29, 0x70000000

    and-int v29, v13, v29

    if-nez v29, :cond_1d

    move/from16 v29, v10

    move/from16 v10, p9

    invoke-interface {v9, v10}, Landroidx/compose/runtime/Composer;->changed(Z)Z

    move-result v30

    if-eqz v30, :cond_1c

    const/high16 v30, 0x20000000

    goto :goto_16

    :cond_1c
    const/high16 v30, 0x10000000

    :goto_16
    or-int v0, v0, v30

    goto :goto_17

    :cond_1d
    move/from16 v29, v10

    move/from16 v10, p9

    :goto_17
    move/from16 v30, v0

    :goto_18
    and-int/lit16 v0, v12, 0x400

    if-eqz v0, :cond_1e

    or-int/lit8 v17, v11, 0x6

    move-object/from16 v10, p10

    goto :goto_1a

    :cond_1e
    and-int/lit8 v31, v11, 0xe

    move-object/from16 v10, p10

    if-nez v31, :cond_20

    invoke-interface {v9, v10}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v31

    if-eqz v31, :cond_1f

    const/16 v17, 0x4

    goto :goto_19

    :cond_1f
    const/16 v17, 0x2

    :goto_19
    or-int v17, v11, v17

    goto :goto_1a

    :cond_20
    move/from16 v17, v11

    :goto_1a
    and-int/lit16 v10, v12, 0x800

    if-eqz v10, :cond_21

    or-int/lit8 v17, v17, 0x10

    :cond_21
    move/from16 v31, v0

    move/from16 v0, v17

    and-int/lit16 v1, v12, 0x1000

    if-eqz v1, :cond_22

    or-int/lit16 v0, v0, 0x180

    goto :goto_1c

    :cond_22
    and-int/lit16 v1, v11, 0x380

    if-nez v1, :cond_24

    invoke-interface {v9, v14}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_23

    const/16 v20, 0x100

    goto :goto_1b

    :cond_23
    const/16 v20, 0x80

    :goto_1b
    or-int v0, v0, v20

    :cond_24
    :goto_1c
    move v1, v0

    const/16 v0, 0x800

    if-ne v10, v0, :cond_26

    const v0, 0x5b6db6db

    and-int v0, v30, v0

    const v2, 0x12492492

    if-ne v0, v2, :cond_26

    and-int/lit16 v0, v1, 0x2db

    const/16 v2, 0x92

    if-ne v0, v2, :cond_26

    invoke-interface {v9}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result v0

    if-nez v0, :cond_25

    goto :goto_1d

    .line 140
    :cond_25
    invoke-interface {v9}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    move/from16 v10, p9

    move-object/from16 v11, p10

    move-object/from16 v12, p11

    move-object v2, v4

    move v5, v6

    move v6, v7

    move-object v3, v8

    move-object/from16 v34, v9

    move-object/from16 v4, p3

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move/from16 v9, p8

    goto/16 :goto_2b

    .line 122
    :cond_26
    :goto_1d
    invoke-interface {v9}, Landroidx/compose/runtime/Composer;->startDefaults()V

    and-int/lit8 v0, v13, 0x1

    if-eqz v0, :cond_2a

    invoke-interface {v9}, Landroidx/compose/runtime/Composer;->getDefaultsInvalid()Z

    move-result v0

    if-eqz v0, :cond_27

    goto :goto_1e

    .line 118
    :cond_27
    invoke-interface {v9}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    and-int/lit16 v0, v12, 0x80

    if-eqz v0, :cond_28

    const v0, -0x1c00001

    and-int v30, v30, v0

    :cond_28
    if-eqz v10, :cond_29

    and-int/lit8 v1, v1, -0x71

    :cond_29
    move-object/from16 v23, p3

    move-object/from16 v27, p6

    move-object/from16 v28, p7

    move/from16 v29, p8

    move/from16 v33, p9

    move-object/from16 v31, p11

    move-object/from16 v20, v4

    move/from16 v24, v6

    move/from16 v26, v7

    move-object/from16 v21, v8

    move-object/from16 v34, v9

    move/from16 v0, v30

    const v11, 0x58e189a1

    move-object/from16 v30, p10

    goto/16 :goto_2a

    :cond_2a
    :goto_1e
    if-eqz v3, :cond_2b

    .line 108
    sget-object v0, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v0, Landroidx/compose/ui/Modifier;

    move-object/from16 v17, v0

    goto :goto_1f

    :cond_2b
    move-object/from16 v17, v4

    :goto_1f
    const/4 v4, 0x0

    if-eqz v5, :cond_2c

    int-to-float v0, v4

    .line 896
    invoke-static {v0}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v0

    .line 109
    invoke-static {v0}, Landroidx/compose/foundation/layout/PaddingKt;->PaddingValues-0680j_4(F)Landroidx/compose/foundation/layout/PaddingValues;

    move-result-object v0

    move-object/from16 v20, v0

    goto :goto_20

    :cond_2c
    move-object/from16 v20, v8

    :goto_20
    if-eqz v16, :cond_2d

    .line 110
    sget-object v0, Landroidx/compose/foundation/pager/PageSize$Fill;->INSTANCE:Landroidx/compose/foundation/pager/PageSize$Fill;

    check-cast v0, Landroidx/compose/foundation/pager/PageSize;

    move-object/from16 v16, v0

    goto :goto_21

    :cond_2d
    move-object/from16 v16, p3

    :goto_21
    if-eqz v18, :cond_2e

    move/from16 v18, v4

    goto :goto_22

    :cond_2e
    move/from16 v18, v6

    :goto_22
    if-eqz v21, :cond_2f

    int-to-float v0, v4

    .line 897
    invoke-static {v0}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v0

    move/from16 v21, v0

    goto :goto_23

    :cond_2f
    move/from16 v21, v7

    :goto_23
    if-eqz v24, :cond_30

    .line 113
    sget-object v0, Landroidx/compose/ui/Alignment;->Companion:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/Alignment$Companion;->getCenterVertically()Landroidx/compose/ui/Alignment$Vertical;

    move-result-object v0

    move-object/from16 v23, v0

    goto :goto_24

    :cond_30
    move-object/from16 v23, p6

    :goto_24
    and-int/lit16 v0, v12, 0x80

    if-eqz v0, :cond_31

    .line 114
    sget-object v0, Landroidx/compose/foundation/pager/PagerDefaults;->INSTANCE:Landroidx/compose/foundation/pager/PagerDefaults;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    and-int/lit8 v24, v30, 0xe

    const/high16 v27, 0xc00000

    or-int v24, v24, v27

    const/16 v27, 0x7e

    move/from16 v32, v1

    move-object/from16 v1, p0

    move/from16 v33, v4

    move-object v4, v5

    move-object v5, v6

    move v6, v7

    move v7, v8

    move-object v8, v9

    move-object/from16 v34, v9

    move/from16 v9, v24

    move/from16 v24, v28

    move/from16 v26, v29

    const v11, 0x58e189a1

    move/from16 v28, v10

    move/from16 v10, v27

    invoke-virtual/range {v0 .. v10}, Landroidx/compose/foundation/pager/PagerDefaults;->flingBehavior-PfoAEA0(Landroidx/compose/foundation/pager/PagerState;Landroidx/compose/foundation/pager/PagerSnapDistance;Landroidx/compose/animation/core/AnimationSpec;Landroidx/compose/animation/core/DecayAnimationSpec;Landroidx/compose/animation/core/AnimationSpec;FFLandroidx/compose/runtime/Composer;II)Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior;

    move-result-object v0

    const v1, -0x1c00001

    and-int v30, v30, v1

    goto :goto_25

    :cond_31
    move/from16 v32, v1

    move/from16 v33, v4

    move-object/from16 v34, v9

    move/from16 v24, v28

    move/from16 v26, v29

    const v11, 0x58e189a1

    move/from16 v28, v10

    move-object/from16 v0, p7

    :goto_25
    if-eqz v24, :cond_32

    const/4 v1, 0x1

    goto :goto_26

    :cond_32
    move/from16 v1, p8

    :goto_26
    if-eqz v26, :cond_33

    goto :goto_27

    :cond_33
    move/from16 v33, p9

    :goto_27
    if-eqz v31, :cond_34

    const/4 v2, 0x0

    goto :goto_28

    :cond_34
    move-object/from16 v2, p10

    :goto_28
    if-eqz v28, :cond_35

    .line 118
    sget-object v3, Landroidx/compose/foundation/pager/PagerDefaults;->INSTANCE:Landroidx/compose/foundation/pager/PagerDefaults;

    .line 119
    sget-object v4, Landroidx/compose/foundation/gestures/Orientation;->Horizontal:Landroidx/compose/foundation/gestures/Orientation;

    .line 118
    invoke-virtual {v3, v4}, Landroidx/compose/foundation/pager/PagerDefaults;->pageNestedScrollConnection(Landroidx/compose/foundation/gestures/Orientation;)Landroidx/compose/ui/input/nestedscroll/NestedScrollConnection;

    move-result-object v3

    and-int/lit8 v4, v32, -0x71

    move-object/from16 v28, v0

    move/from16 v29, v1

    move-object/from16 v31, v3

    move v1, v4

    move/from16 v24, v18

    move/from16 v26, v21

    move-object/from16 v27, v23

    move/from16 v0, v30

    goto :goto_29

    :cond_35
    move-object/from16 v31, p11

    move-object/from16 v28, v0

    move/from16 v29, v1

    move/from16 v24, v18

    move/from16 v26, v21

    move-object/from16 v27, v23

    move/from16 v0, v30

    move/from16 v1, v32

    :goto_29
    move-object/from16 v30, v2

    move-object/from16 v23, v16

    move-object/from16 v21, v20

    move-object/from16 v20, v17

    :goto_2a
    invoke-interface/range {v34 .. v34}, Landroidx/compose/runtime/Composer;->endDefaults()V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v2

    if-eqz v2, :cond_36

    const-string v2, "androidx.compose.foundation.pager.HorizontalPager (Pager.kt:105)"

    .line 122
    invoke-static {v11, v0, v1, v2}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 130
    :cond_36
    sget-object v4, Landroidx/compose/foundation/gestures/Orientation;->Horizontal:Landroidx/compose/foundation/gestures/Orientation;

    .line 132
    sget-object v2, Landroidx/compose/ui/Alignment;->Companion:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v2}, Landroidx/compose/ui/Alignment$Companion;->getCenterHorizontally()Landroidx/compose/ui/Alignment$Horizontal;

    move-result-object v2

    move-object v12, v2

    shr-int/lit8 v2, v0, 0x3

    and-int/lit8 v2, v2, 0xe

    or-int/lit16 v2, v2, 0x6000

    shl-int/lit8 v3, v0, 0x3

    and-int/lit8 v3, v3, 0x70

    or-int/2addr v2, v3

    and-int/lit16 v3, v0, 0x380

    or-int/2addr v2, v3

    shr-int/lit8 v3, v0, 0x12

    and-int/lit16 v3, v3, 0x1c00

    or-int/2addr v2, v3

    shr-int/lit8 v3, v0, 0x6

    and-int v5, v3, v22

    or-int/2addr v2, v5

    and-int v3, v3, v25

    or-int/2addr v2, v3

    shl-int/lit8 v3, v0, 0x9

    const/high16 v5, 0x1c00000

    and-int/2addr v5, v3

    or-int/2addr v2, v5

    const/high16 v5, 0xe000000

    and-int/2addr v3, v5

    or-int/2addr v2, v3

    shl-int/lit8 v3, v0, 0x12

    const/high16 v5, 0x70000000

    and-int/2addr v3, v5

    or-int v16, v2, v3

    shl-int/lit8 v2, v1, 0x3

    and-int/lit8 v2, v2, 0x70

    or-int/lit16 v2, v2, 0x188

    shr-int/lit8 v0, v0, 0x9

    and-int/lit16 v0, v0, 0x1c00

    or-int/2addr v0, v2

    shl-int/lit8 v1, v1, 0x6

    and-int v1, v1, v19

    or-int v17, v0, v1

    const/16 v18, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    move-object/from16 v2, v21

    move/from16 v3, v33

    move-object/from16 v5, v28

    move/from16 v6, v29

    move/from16 v7, v24

    move/from16 v8, v26

    move-object/from16 v9, v23

    move-object/from16 v10, v31

    move-object/from16 v11, v30

    move-object/from16 v13, v27

    move-object/from16 v14, p12

    move-object/from16 v15, v34

    .line 123
    invoke-static/range {v0 .. v18}, Landroidx/compose/foundation/pager/LazyLayoutPagerKt;->Pager-fs30GE4(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/pager/PagerState;Landroidx/compose/foundation/layout/PaddingValues;ZLandroidx/compose/foundation/gestures/Orientation;Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior;ZIFLandroidx/compose/foundation/pager/PageSize;Landroidx/compose/ui/input/nestedscroll/NestedScrollConnection;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Alignment$Horizontal;Landroidx/compose/ui/Alignment$Vertical;Lkotlin/jvm/functions/Function4;Landroidx/compose/runtime/Composer;III)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_37

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_37
    move-object/from16 v2, v20

    move-object/from16 v3, v21

    move-object/from16 v4, v23

    move/from16 v5, v24

    move/from16 v6, v26

    move-object/from16 v7, v27

    move-object/from16 v8, v28

    move/from16 v9, v29

    move-object/from16 v11, v30

    move-object/from16 v12, v31

    move/from16 v10, v33

    .line 140
    :goto_2b
    invoke-interface/range {v34 .. v34}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v15

    if-nez v15, :cond_38

    goto :goto_2c

    :cond_38
    new-instance v17, Landroidx/compose/foundation/pager/PagerKt$HorizontalPager$1;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move-object/from16 v13, p12

    move/from16 v14, p14

    move-object/from16 v35, v15

    move/from16 v15, p15

    move/from16 v16, p16

    invoke-direct/range {v0 .. v16}, Landroidx/compose/foundation/pager/PagerKt$HorizontalPager$1;-><init>(Landroidx/compose/foundation/pager/PagerState;Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/foundation/pager/PageSize;IFLandroidx/compose/ui/Alignment$Vertical;Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior;ZZLkotlin/jvm/functions/Function1;Landroidx/compose/ui/input/nestedscroll/NestedScrollConnection;Lkotlin/jvm/functions/Function4;III)V

    move-object/from16 v0, v17

    check-cast v0, Lkotlin/jvm/functions/Function2;

    move-object/from16 v1, v35

    invoke-interface {v1, v0}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    :goto_2c
    return-void
.end method

.method private static final SnapLayoutInfoProvider(Landroidx/compose/foundation/pager/PagerState;Landroidx/compose/foundation/pager/PagerSnapDistance;Landroidx/compose/animation/core/DecayAnimationSpec;F)Landroidx/compose/foundation/gestures/snapping/SnapLayoutInfoProvider;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/foundation/pager/PagerState;",
            "Landroidx/compose/foundation/pager/PagerSnapDistance;",
            "Landroidx/compose/animation/core/DecayAnimationSpec<",
            "Ljava/lang/Float;",
            ">;F)",
            "Landroidx/compose/foundation/gestures/snapping/SnapLayoutInfoProvider;"
        }
    .end annotation

    .line 663
    new-instance v0, Landroidx/compose/foundation/pager/PagerKt$SnapLayoutInfoProvider$1;

    invoke-direct {v0, p0, p3, p2, p1}, Landroidx/compose/foundation/pager/PagerKt$SnapLayoutInfoProvider$1;-><init>(Landroidx/compose/foundation/pager/PagerState;FLandroidx/compose/animation/core/DecayAnimationSpec;Landroidx/compose/foundation/pager/PagerSnapDistance;)V

    check-cast v0, Landroidx/compose/foundation/gestures/snapping/SnapLayoutInfoProvider;

    return-object v0
.end method

.method public static final VerticalPager-AlbwjTQ(ILandroidx/compose/ui/Modifier;Landroidx/compose/foundation/pager/PagerState;Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/foundation/pager/PageSize;IFLandroidx/compose/ui/Alignment$Horizontal;Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior;ZZLkotlin/jvm/functions/Function1;Landroidx/compose/ui/input/nestedscroll/NestedScrollConnection;Lkotlin/jvm/functions/Function4;Landroidx/compose/runtime/Composer;III)V
    .locals 34
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroidx/compose/ui/Modifier;",
            "Landroidx/compose/foundation/pager/PagerState;",
            "Landroidx/compose/foundation/layout/PaddingValues;",
            "Landroidx/compose/foundation/pager/PageSize;",
            "IF",
            "Landroidx/compose/ui/Alignment$Horizontal;",
            "Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior;",
            "ZZ",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Integer;",
            "+",
            "Ljava/lang/Object;",
            ">;",
            "Landroidx/compose/ui/input/nestedscroll/NestedScrollConnection;",
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

    .annotation runtime Lkotlin/Deprecated;
        level = .enum Lkotlin/DeprecationLevel;->ERROR:Lkotlin/DeprecationLevel;
        message = "Please use the overload without pageCount. pageCount should be provided through PagerState."
        replaceWith = .subannotation Lkotlin/ReplaceWith;
            expression = "VerticalPager(\n            modifier = modifier,\n            state = state,\n            pageSpacing = pageSpacing,\n            horizontalAlignment = horizontalAlignment,\n            userScrollEnabled = userScrollEnabled,\n            reverseLayout = reverseLayout,\n            contentPadding = contentPadding,\n            beyondBoundsPageCount = beyondBoundsPageCount,\n            pageSize = pageSize,\n            flingBehavior = flingBehavior,\n            key = key,\n            pageNestedScrollConnection = pageNestedScrollConnection,\n            pageContent = pageContent\n        )"
            imports = {
                "androidx.compose.foundation.gestures.Orientation",
                "androidx.compose.foundation.layout.PaddingValues",
                "androidx.compose.foundation.pager.PageSize",
                "androidx.compose.foundation.pager.PagerDefaults"
            }
        .end subannotation
    .end annotation

    move/from16 v1, p0

    move-object/from16 v0, p13

    move/from16 v14, p15

    move/from16 v13, p16

    move/from16 v12, p17

    const-string v2, "pageContent"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const v2, -0x7185b670

    move-object/from16 v3, p14

    .line 415
    invoke-interface {v3, v2}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object v11

    const-string v3, "C(VerticalPager)P(7,5,12,1,9!1,10:c#ui.unit.Dp,3!1,13,11!1,8)400@20798L13,400@20779L32,406@21105L28,415@21453L618:Pager.kt#g6yjnt"

    invoke-static {v11, v3}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    and-int/lit8 v3, v12, 0x1

    if-eqz v3, :cond_0

    or-int/lit8 v3, v14, 0x6

    goto :goto_1

    :cond_0
    and-int/lit8 v3, v14, 0xe

    if-nez v3, :cond_2

    invoke-interface {v11, v1}, Landroidx/compose/runtime/Composer;->changed(I)Z

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

    const/16 v7, 0x20

    if-eqz v6, :cond_3

    or-int/lit8 v3, v3, 0x30

    goto :goto_3

    :cond_3
    and-int/lit8 v9, v14, 0x70

    if-nez v9, :cond_5

    move-object/from16 v9, p1

    invoke-interface {v11, v9}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    move v10, v7

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

    if-nez v10, :cond_8

    and-int/lit8 v10, v12, 0x4

    if-nez v10, :cond_6

    move-object/from16 v10, p2

    invoke-interface {v11, v10}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_7

    const/16 v15, 0x100

    goto :goto_5

    :cond_6
    move-object/from16 v10, p2

    :cond_7
    const/16 v15, 0x80

    :goto_5
    or-int/2addr v3, v15

    goto :goto_6

    :cond_8
    move-object/from16 v10, p2

    :goto_6
    and-int/lit8 v15, v12, 0x8

    const/16 v16, 0x800

    const/16 v17, 0x400

    if-eqz v15, :cond_9

    or-int/lit16 v3, v3, 0xc00

    goto :goto_8

    :cond_9
    and-int/lit16 v4, v14, 0x1c00

    if-nez v4, :cond_b

    move-object/from16 v4, p3

    invoke-interface {v11, v4}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_a

    move/from16 v18, v16

    goto :goto_7

    :cond_a
    move/from16 v18, v17

    :goto_7
    or-int v3, v3, v18

    goto :goto_9

    :cond_b
    :goto_8
    move-object/from16 v4, p3

    :goto_9
    and-int/lit8 v18, v12, 0x10

    const v26, 0xe000

    if-eqz v18, :cond_c

    or-int/lit16 v3, v3, 0x6000

    move-object/from16 v2, p4

    goto :goto_b

    :cond_c
    and-int v19, v14, v26

    move-object/from16 v2, p4

    if-nez v19, :cond_e

    invoke-interface {v11, v2}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_d

    const/16 v19, 0x4000

    goto :goto_a

    :cond_d
    const/16 v19, 0x2000

    :goto_a
    or-int v3, v3, v19

    :cond_e
    :goto_b
    and-int/lit8 v19, v12, 0x20

    const/high16 v27, 0x70000

    if-eqz v19, :cond_f

    const/high16 v20, 0x30000

    or-int v3, v3, v20

    move/from16 v8, p5

    goto :goto_d

    :cond_f
    and-int v20, v14, v27

    move/from16 v8, p5

    if-nez v20, :cond_11

    invoke-interface {v11, v8}, Landroidx/compose/runtime/Composer;->changed(I)Z

    move-result v21

    if-eqz v21, :cond_10

    const/high16 v21, 0x20000

    goto :goto_c

    :cond_10
    const/high16 v21, 0x10000

    :goto_c
    or-int v3, v3, v21

    :cond_11
    :goto_d
    and-int/lit8 v21, v12, 0x40

    if-eqz v21, :cond_12

    const/high16 v22, 0x180000

    or-int v3, v3, v22

    move/from16 v8, p6

    goto :goto_f

    :cond_12
    const/high16 v22, 0x380000

    and-int v22, v14, v22

    move/from16 v8, p6

    if-nez v22, :cond_14

    invoke-interface {v11, v8}, Landroidx/compose/runtime/Composer;->changed(F)Z

    move-result v22

    if-eqz v22, :cond_13

    const/high16 v22, 0x100000

    goto :goto_e

    :cond_13
    const/high16 v22, 0x80000

    :goto_e
    or-int v3, v3, v22

    :cond_14
    :goto_f
    and-int/lit16 v8, v12, 0x80

    if-eqz v8, :cond_15

    const/high16 v22, 0xc00000

    or-int v3, v3, v22

    goto :goto_11

    :cond_15
    const/high16 v22, 0x1c00000

    and-int v22, v14, v22

    if-nez v22, :cond_17

    move/from16 v22, v8

    move-object/from16 v8, p7

    invoke-interface {v11, v8}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_16

    const/high16 v23, 0x800000

    goto :goto_10

    :cond_16
    const/high16 v23, 0x400000

    :goto_10
    or-int v3, v3, v23

    goto :goto_12

    :cond_17
    :goto_11
    move/from16 v22, v8

    move-object/from16 v8, p7

    :goto_12
    const/high16 v23, 0xe000000

    and-int v23, v14, v23

    if-nez v23, :cond_1a

    and-int/lit16 v5, v12, 0x100

    if-nez v5, :cond_18

    move-object/from16 v5, p8

    invoke-interface {v11, v5}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_19

    const/high16 v24, 0x4000000

    goto :goto_13

    :cond_18
    move-object/from16 v5, p8

    :cond_19
    const/high16 v24, 0x2000000

    :goto_13
    or-int v3, v3, v24

    goto :goto_14

    :cond_1a
    move-object/from16 v5, p8

    :goto_14
    and-int/lit16 v8, v12, 0x200

    if-eqz v8, :cond_1b

    const/high16 v24, 0x30000000

    or-int v3, v3, v24

    goto :goto_16

    :cond_1b
    const/high16 v24, 0x70000000

    and-int v24, v14, v24

    if-nez v24, :cond_1d

    move/from16 v24, v8

    move/from16 v8, p9

    invoke-interface {v11, v8}, Landroidx/compose/runtime/Composer;->changed(Z)Z

    move-result v25

    if-eqz v25, :cond_1c

    const/high16 v25, 0x20000000

    goto :goto_15

    :cond_1c
    const/high16 v25, 0x10000000

    :goto_15
    or-int v3, v3, v25

    goto :goto_17

    :cond_1d
    :goto_16
    move/from16 v24, v8

    move/from16 v8, p9

    :goto_17
    and-int/lit16 v8, v12, 0x400

    if-eqz v8, :cond_1e

    or-int/lit8 v23, v13, 0x6

    move/from16 v25, v8

    move/from16 v8, p10

    goto :goto_19

    :cond_1e
    and-int/lit8 v25, v13, 0xe

    if-nez v25, :cond_20

    move/from16 v25, v8

    move/from16 v8, p10

    invoke-interface {v11, v8}, Landroidx/compose/runtime/Composer;->changed(Z)Z

    move-result v28

    if-eqz v28, :cond_1f

    const/16 v23, 0x4

    goto :goto_18

    :cond_1f
    const/16 v23, 0x2

    :goto_18
    or-int v23, v13, v23

    goto :goto_19

    :cond_20
    move/from16 v25, v8

    move/from16 v8, p10

    move/from16 v23, v13

    :goto_19
    and-int/lit16 v8, v12, 0x800

    if-eqz v8, :cond_21

    or-int/lit8 v23, v23, 0x30

    move/from16 v28, v8

    move/from16 v7, v23

    move-object/from16 v8, p11

    goto :goto_1c

    :cond_21
    and-int/lit8 v28, v13, 0x70

    if-nez v28, :cond_23

    move/from16 v28, v8

    move-object/from16 v8, p11

    invoke-interface {v11, v8}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_22

    goto :goto_1a

    :cond_22
    const/16 v7, 0x10

    :goto_1a
    or-int v23, v23, v7

    goto :goto_1b

    :cond_23
    move/from16 v28, v8

    move-object/from16 v8, p11

    :goto_1b
    move/from16 v7, v23

    :goto_1c
    and-int/lit16 v8, v12, 0x1000

    if-eqz v8, :cond_24

    or-int/lit16 v7, v7, 0x80

    :cond_24
    and-int/lit16 v2, v12, 0x2000

    if-eqz v2, :cond_25

    or-int/lit16 v7, v7, 0xc00

    goto :goto_1e

    :cond_25
    and-int/lit16 v2, v13, 0x1c00

    if-nez v2, :cond_27

    invoke-interface {v11, v0}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_26

    goto :goto_1d

    :cond_26
    move/from16 v16, v17

    :goto_1d
    or-int v7, v7, v16

    :cond_27
    :goto_1e
    move v2, v7

    const/16 v7, 0x1000

    if-ne v8, v7, :cond_29

    const v7, 0x5b6db6db

    and-int/2addr v7, v3

    const v0, 0x12492492

    if-ne v7, v0, :cond_29

    and-int/lit16 v0, v2, 0x16db

    const/16 v7, 0x492

    if-ne v0, v7, :cond_29

    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result v0

    if-nez v0, :cond_28

    goto :goto_1f

    .line 433
    :cond_28
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    move/from16 v6, p5

    move/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v12, p11

    move-object/from16 v13, p12

    move-object v2, v9

    move-object v3, v10

    move-object/from16 v26, v11

    move/from16 v10, p9

    move/from16 v11, p10

    move-object v9, v5

    move-object/from16 v5, p4

    goto/16 :goto_2d

    .line 415
    :cond_29
    :goto_1f
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->startDefaults()V

    and-int/lit8 v0, v14, 0x1

    if-eqz v0, :cond_2e

    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->getDefaultsInvalid()Z

    move-result v0

    if-eqz v0, :cond_2a

    goto :goto_20

    .line 411
    :cond_2a
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    and-int/lit8 v0, v12, 0x4

    if-eqz v0, :cond_2b

    and-int/lit16 v3, v3, -0x381

    :cond_2b
    and-int/lit16 v0, v12, 0x100

    if-eqz v0, :cond_2c

    const v0, -0xe000001

    and-int/2addr v3, v0

    :cond_2c
    if-eqz v8, :cond_2d

    and-int/lit16 v2, v2, -0x381

    :cond_2d
    move-object/from16 v22, p4

    move/from16 v23, p5

    move/from16 v24, p6

    move-object/from16 v25, p7

    move/from16 v29, p9

    move/from16 v30, p10

    move-object/from16 v31, p11

    move-object/from16 v32, p12

    move-object/from16 v21, v4

    move-object/from16 v28, v5

    move-object v0, v9

    move-object v1, v10

    goto/16 :goto_2c

    :cond_2e
    :goto_20
    if-eqz v6, :cond_2f

    .line 400
    sget-object v0, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v0, Landroidx/compose/ui/Modifier;

    goto :goto_21

    :cond_2f
    move-object v0, v9

    :goto_21
    and-int/lit8 v6, v12, 0x4

    if-eqz v6, :cond_32

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 401
    invoke-static/range {p0 .. p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const v10, 0x44faf204

    invoke-interface {v11, v10}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v10, "CC(remember)P(1):Composables.kt#9igjgp"

    invoke-static {v11, v10}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 909
    invoke-interface {v11, v9}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v9

    .line 910
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v10

    if-nez v9, :cond_30

    .line 911
    sget-object v9, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v9}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v9

    if-ne v10, v9, :cond_31

    .line 401
    :cond_30
    new-instance v9, Landroidx/compose/foundation/pager/PagerKt$VerticalPager$2$1;

    invoke-direct {v9, v1}, Landroidx/compose/foundation/pager/PagerKt$VerticalPager$2$1;-><init>(I)V

    move-object v10, v9

    check-cast v10, Lkotlin/jvm/functions/Function0;

    .line 913
    invoke-interface {v11, v10}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 909
    :cond_31
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    move-object v9, v10

    check-cast v9, Lkotlin/jvm/functions/Function0;

    const/4 v10, 0x0

    const/16 v16, 0x3

    move/from16 v30, v3

    move v3, v6

    move v4, v7

    move-object v5, v9

    move-object v6, v11

    move v7, v10

    move/from16 v32, v8

    move/from16 v9, v22

    move/from16 v29, v25

    move/from16 v31, v28

    move/from16 v28, v24

    move/from16 v8, v16

    .line 401
    invoke-static/range {v3 .. v8}, Landroidx/compose/foundation/pager/PagerStateKt;->rememberPagerState(IFLkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;II)Landroidx/compose/foundation/pager/PagerState;

    move-result-object v3

    move/from16 v4, v30

    and-int/lit16 v4, v4, -0x381

    goto :goto_22

    :cond_32
    move v4, v3

    move/from16 v32, v8

    move/from16 v9, v22

    move/from16 v29, v25

    move/from16 v31, v28

    move/from16 v28, v24

    move-object v3, v10

    :goto_22
    const/4 v5, 0x0

    if-eqz v15, :cond_33

    int-to-float v6, v5

    .line 916
    invoke-static {v6}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v6

    .line 402
    invoke-static {v6}, Landroidx/compose/foundation/layout/PaddingKt;->PaddingValues-0680j_4(F)Landroidx/compose/foundation/layout/PaddingValues;

    move-result-object v6

    goto :goto_23

    :cond_33
    move-object/from16 v6, p3

    :goto_23
    if-eqz v18, :cond_34

    .line 403
    sget-object v7, Landroidx/compose/foundation/pager/PageSize$Fill;->INSTANCE:Landroidx/compose/foundation/pager/PageSize$Fill;

    check-cast v7, Landroidx/compose/foundation/pager/PageSize;

    goto :goto_24

    :cond_34
    move-object/from16 v7, p4

    :goto_24
    if-eqz v19, :cond_35

    move v8, v5

    goto :goto_25

    :cond_35
    move/from16 v8, p5

    :goto_25
    if-eqz v21, :cond_36

    int-to-float v10, v5

    .line 917
    invoke-static {v10}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v10

    goto :goto_26

    :cond_36
    move/from16 v10, p6

    :goto_26
    if-eqz v9, :cond_37

    .line 406
    sget-object v9, Landroidx/compose/ui/Alignment;->Companion:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v9}, Landroidx/compose/ui/Alignment$Companion;->getCenterHorizontally()Landroidx/compose/ui/Alignment$Horizontal;

    move-result-object v9

    goto :goto_27

    :cond_37
    move-object/from16 v9, p7

    :goto_27
    and-int/lit16 v15, v12, 0x100

    if-eqz v15, :cond_38

    .line 407
    sget-object v15, Landroidx/compose/foundation/pager/PagerDefaults;->INSTANCE:Landroidx/compose/foundation/pager/PagerDefaults;

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    shr-int/lit8 v16, v4, 0x6

    and-int/lit8 v16, v16, 0xe

    const/high16 v23, 0xc00000

    or-int v24, v16, v23

    const/16 v25, 0x7e

    move-object/from16 v16, v3

    move-object/from16 v23, v11

    invoke-virtual/range {v15 .. v25}, Landroidx/compose/foundation/pager/PagerDefaults;->flingBehavior-PfoAEA0(Landroidx/compose/foundation/pager/PagerState;Landroidx/compose/foundation/pager/PagerSnapDistance;Landroidx/compose/animation/core/AnimationSpec;Landroidx/compose/animation/core/DecayAnimationSpec;Landroidx/compose/animation/core/AnimationSpec;FFLandroidx/compose/runtime/Composer;II)Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior;

    move-result-object v15

    const v16, -0xe000001

    and-int v4, v4, v16

    goto :goto_28

    :cond_38
    move-object/from16 v15, p8

    :goto_28
    if-eqz v28, :cond_39

    const/16 v16, 0x1

    goto :goto_29

    :cond_39
    move/from16 v16, p9

    :goto_29
    if-eqz v29, :cond_3a

    goto :goto_2a

    :cond_3a
    move/from16 v5, p10

    :goto_2a
    if-eqz v31, :cond_3b

    const/16 v17, 0x0

    goto :goto_2b

    :cond_3b
    move-object/from16 v17, p11

    :goto_2b
    move-object/from16 p1, v0

    if-eqz v32, :cond_3c

    .line 411
    sget-object v0, Landroidx/compose/foundation/pager/PagerDefaults;->INSTANCE:Landroidx/compose/foundation/pager/PagerDefaults;

    .line 412
    sget-object v1, Landroidx/compose/foundation/gestures/Orientation;->Vertical:Landroidx/compose/foundation/gestures/Orientation;

    .line 411
    invoke-virtual {v0, v1}, Landroidx/compose/foundation/pager/PagerDefaults;->pageNestedScrollConnection(Landroidx/compose/foundation/gestures/Orientation;)Landroidx/compose/ui/input/nestedscroll/NestedScrollConnection;

    move-result-object v0

    and-int/lit16 v2, v2, -0x381

    move-object/from16 v32, v0

    move-object v1, v3

    move v3, v4

    move/from16 v30, v5

    move-object/from16 v21, v6

    move-object/from16 v22, v7

    move/from16 v23, v8

    move-object/from16 v25, v9

    move/from16 v24, v10

    move-object/from16 v28, v15

    move/from16 v29, v16

    move-object/from16 v31, v17

    move-object/from16 v0, p1

    goto :goto_2c

    :cond_3c
    move-object/from16 v32, p12

    move-object v1, v3

    move v3, v4

    move/from16 v30, v5

    move-object/from16 v21, v6

    move-object/from16 v22, v7

    move/from16 v23, v8

    move-object/from16 v25, v9

    move/from16 v24, v10

    move-object/from16 v28, v15

    move/from16 v29, v16

    move-object/from16 v31, v17

    :goto_2c
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->endDefaults()V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v4

    if-eqz v4, :cond_3d

    const-string v4, "androidx.compose.foundation.pager.VerticalPager (Pager.kt:397)"

    const v5, -0x7185b670

    .line 415
    invoke-static {v5, v3, v2, v4}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 423
    :cond_3d
    sget-object v6, Landroidx/compose/foundation/gestures/Orientation;->Vertical:Landroidx/compose/foundation/gestures/Orientation;

    .line 424
    sget-object v4, Landroidx/compose/ui/Alignment;->Companion:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v4}, Landroidx/compose/ui/Alignment$Companion;->getCenterVertically()Landroidx/compose/ui/Alignment$Vertical;

    move-result-object v15

    shr-int/lit8 v4, v3, 0x3

    and-int/lit8 v5, v4, 0xe

    or-int/lit16 v5, v5, 0x6000

    and-int/lit8 v7, v4, 0x70

    or-int/2addr v5, v7

    and-int/lit16 v4, v4, 0x380

    or-int/2addr v4, v5

    shl-int/lit8 v5, v2, 0x9

    and-int/lit16 v5, v5, 0x1c00

    or-int/2addr v4, v5

    shr-int/lit8 v5, v3, 0x9

    and-int v7, v5, v27

    or-int/2addr v4, v7

    const/high16 v7, 0x380000

    and-int/2addr v5, v7

    or-int/2addr v4, v5

    shl-int/lit8 v5, v3, 0x6

    const/high16 v7, 0x1c00000

    and-int/2addr v7, v5

    or-int/2addr v4, v7

    const/high16 v7, 0xe000000

    and-int/2addr v5, v7

    or-int/2addr v4, v5

    shl-int/lit8 v5, v3, 0xf

    const/high16 v7, 0x70000000

    and-int/2addr v5, v7

    or-int v18, v4, v5

    and-int/lit8 v4, v2, 0x70

    or-int/lit16 v4, v4, 0xc08

    shr-int/lit8 v3, v3, 0xf

    and-int/lit16 v3, v3, 0x380

    or-int/2addr v3, v4

    shl-int/lit8 v2, v2, 0x3

    and-int v2, v2, v26

    or-int v19, v3, v2

    const/16 v20, 0x0

    move-object v2, v0

    move-object v3, v1

    move-object/from16 v4, v21

    move/from16 v5, v30

    move-object/from16 v7, v28

    move/from16 v8, v29

    move/from16 v9, v23

    move/from16 v10, v24

    move-object/from16 v26, v11

    move-object/from16 v11, v22

    move-object/from16 v12, v32

    move-object/from16 v13, v31

    move-object/from16 v14, v25

    move-object/from16 v16, p13

    move-object/from16 v17, v26

    .line 416
    invoke-static/range {v2 .. v20}, Landroidx/compose/foundation/pager/LazyLayoutPagerKt;->Pager-fs30GE4(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/pager/PagerState;Landroidx/compose/foundation/layout/PaddingValues;ZLandroidx/compose/foundation/gestures/Orientation;Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior;ZIFLandroidx/compose/foundation/pager/PageSize;Landroidx/compose/ui/input/nestedscroll/NestedScrollConnection;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Alignment$Horizontal;Landroidx/compose/ui/Alignment$Vertical;Lkotlin/jvm/functions/Function4;Landroidx/compose/runtime/Composer;III)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v2

    if-eqz v2, :cond_3e

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_3e
    move-object v2, v0

    move-object v3, v1

    move-object/from16 v4, v21

    move-object/from16 v5, v22

    move/from16 v6, v23

    move/from16 v7, v24

    move-object/from16 v8, v25

    move-object/from16 v9, v28

    move/from16 v10, v29

    move/from16 v11, v30

    move-object/from16 v12, v31

    move-object/from16 v13, v32

    .line 433
    :goto_2d
    invoke-interface/range {v26 .. v26}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v15

    if-nez v15, :cond_3f

    goto :goto_2e

    :cond_3f
    new-instance v18, Landroidx/compose/foundation/pager/PagerKt$VerticalPager$3;

    move-object/from16 v0, v18

    move/from16 v1, p0

    move-object/from16 v14, p13

    move-object/from16 v33, v15

    move/from16 v15, p15

    move/from16 v16, p16

    move/from16 v17, p17

    invoke-direct/range {v0 .. v17}, Landroidx/compose/foundation/pager/PagerKt$VerticalPager$3;-><init>(ILandroidx/compose/ui/Modifier;Landroidx/compose/foundation/pager/PagerState;Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/foundation/pager/PageSize;IFLandroidx/compose/ui/Alignment$Horizontal;Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior;ZZLkotlin/jvm/functions/Function1;Landroidx/compose/ui/input/nestedscroll/NestedScrollConnection;Lkotlin/jvm/functions/Function4;III)V

    move-object/from16 v0, v18

    check-cast v0, Lkotlin/jvm/functions/Function2;

    move-object/from16 v1, v33

    invoke-interface {v1, v0}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    :goto_2e
    return-void
.end method

.method public static final VerticalPager-xYaah8o(Landroidx/compose/foundation/pager/PagerState;Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/foundation/pager/PageSize;IFLandroidx/compose/ui/Alignment$Horizontal;Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior;ZZLkotlin/jvm/functions/Function1;Landroidx/compose/ui/input/nestedscroll/NestedScrollConnection;Lkotlin/jvm/functions/Function4;Landroidx/compose/runtime/Composer;III)V
    .locals 36
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/foundation/pager/PagerState;",
            "Landroidx/compose/ui/Modifier;",
            "Landroidx/compose/foundation/layout/PaddingValues;",
            "Landroidx/compose/foundation/pager/PageSize;",
            "IF",
            "Landroidx/compose/ui/Alignment$Horizontal;",
            "Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior;",
            "ZZ",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Integer;",
            "+",
            "Ljava/lang/Object;",
            ">;",
            "Landroidx/compose/ui/input/nestedscroll/NestedScrollConnection;",
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

    move-object/from16 v15, p0

    move-object/from16 v14, p12

    move/from16 v12, p14

    move/from16 v11, p15

    move/from16 v13, p16

    const-string/jumbo v0, "state"

    invoke-static {v15, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "pageContent"

    invoke-static {v14, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const v10, -0x56d91adf

    move-object/from16 v0, p13

    .line 308
    invoke-interface {v0, v10}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object v9

    const-string v0, "C(VerticalPager)P(11,5,1,8!1,9:c#ui.unit.Dp,3!1,12,10!1,7)299@15710L28,308@16058L618:Pager.kt#g6yjnt"

    invoke-static {v9, v0}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    and-int/lit8 v0, v13, 0x1

    if-eqz v0, :cond_0

    or-int/lit8 v0, v12, 0x6

    goto :goto_1

    :cond_0
    and-int/lit8 v0, v12, 0xe

    if-nez v0, :cond_2

    invoke-interface {v9, v15}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x4

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    :goto_0
    or-int/2addr v0, v12

    goto :goto_1

    :cond_2
    move v0, v12

    :goto_1
    and-int/lit8 v3, v13, 0x2

    if-eqz v3, :cond_3

    or-int/lit8 v0, v0, 0x30

    goto :goto_3

    :cond_3
    and-int/lit8 v4, v12, 0x70

    if-nez v4, :cond_5

    move-object/from16 v4, p1

    invoke-interface {v9, v4}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    const/16 v5, 0x20

    goto :goto_2

    :cond_4
    const/16 v5, 0x10

    :goto_2
    or-int/2addr v0, v5

    goto :goto_4

    :cond_5
    :goto_3
    move-object/from16 v4, p1

    :goto_4
    and-int/lit8 v5, v13, 0x4

    if-eqz v5, :cond_6

    or-int/lit16 v0, v0, 0x180

    goto :goto_6

    :cond_6
    and-int/lit16 v8, v12, 0x380

    if-nez v8, :cond_8

    move-object/from16 v8, p2

    invoke-interface {v9, v8}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_7

    const/16 v16, 0x100

    goto :goto_5

    :cond_7
    const/16 v16, 0x80

    :goto_5
    or-int v0, v0, v16

    goto :goto_7

    :cond_8
    :goto_6
    move-object/from16 v8, p2

    :goto_7
    and-int/lit8 v16, v13, 0x8

    if-eqz v16, :cond_9

    or-int/lit16 v0, v0, 0xc00

    goto :goto_9

    :cond_9
    and-int/lit16 v2, v12, 0x1c00

    if-nez v2, :cond_b

    move-object/from16 v2, p3

    invoke-interface {v9, v2}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_a

    const/16 v18, 0x800

    goto :goto_8

    :cond_a
    const/16 v18, 0x400

    :goto_8
    or-int v0, v0, v18

    goto :goto_a

    :cond_b
    :goto_9
    move-object/from16 v2, p3

    :goto_a
    and-int/lit8 v18, v13, 0x10

    const v19, 0xe000

    if-eqz v18, :cond_c

    or-int/lit16 v0, v0, 0x6000

    move/from16 v6, p4

    goto :goto_c

    :cond_c
    and-int v20, v12, v19

    move/from16 v6, p4

    if-nez v20, :cond_e

    invoke-interface {v9, v6}, Landroidx/compose/runtime/Composer;->changed(I)Z

    move-result v21

    if-eqz v21, :cond_d

    const/16 v21, 0x4000

    goto :goto_b

    :cond_d
    const/16 v21, 0x2000

    :goto_b
    or-int v0, v0, v21

    :cond_e
    :goto_c
    and-int/lit8 v21, v13, 0x20

    const/high16 v22, 0x70000

    if-eqz v21, :cond_f

    const/high16 v23, 0x30000

    or-int v0, v0, v23

    move/from16 v7, p5

    goto :goto_e

    :cond_f
    and-int v23, v12, v22

    move/from16 v7, p5

    if-nez v23, :cond_11

    invoke-interface {v9, v7}, Landroidx/compose/runtime/Composer;->changed(F)Z

    move-result v24

    if-eqz v24, :cond_10

    const/high16 v24, 0x20000

    goto :goto_d

    :cond_10
    const/high16 v24, 0x10000

    :goto_d
    or-int v0, v0, v24

    :cond_11
    :goto_e
    and-int/lit8 v24, v13, 0x40

    const/high16 v25, 0x380000

    if-eqz v24, :cond_12

    const/high16 v26, 0x180000

    or-int v0, v0, v26

    move-object/from16 v10, p6

    goto :goto_10

    :cond_12
    and-int v26, v12, v25

    move-object/from16 v10, p6

    if-nez v26, :cond_14

    invoke-interface {v9, v10}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_13

    const/high16 v27, 0x100000

    goto :goto_f

    :cond_13
    const/high16 v27, 0x80000

    :goto_f
    or-int v0, v0, v27

    :cond_14
    :goto_10
    const/high16 v27, 0x1c00000

    and-int v27, v12, v27

    if-nez v27, :cond_17

    and-int/lit16 v1, v13, 0x80

    if-nez v1, :cond_15

    move-object/from16 v1, p7

    invoke-interface {v9, v1}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_16

    const/high16 v28, 0x800000

    goto :goto_11

    :cond_15
    move-object/from16 v1, p7

    :cond_16
    const/high16 v28, 0x400000

    :goto_11
    or-int v0, v0, v28

    goto :goto_12

    :cond_17
    move-object/from16 v1, p7

    :goto_12
    and-int/lit16 v10, v13, 0x100

    if-eqz v10, :cond_18

    const/high16 v28, 0x6000000

    or-int v0, v0, v28

    goto :goto_14

    :cond_18
    const/high16 v28, 0xe000000

    and-int v28, v12, v28

    if-nez v28, :cond_1a

    move/from16 v28, v10

    move/from16 v10, p8

    invoke-interface {v9, v10}, Landroidx/compose/runtime/Composer;->changed(Z)Z

    move-result v29

    if-eqz v29, :cond_19

    const/high16 v29, 0x4000000

    goto :goto_13

    :cond_19
    const/high16 v29, 0x2000000

    :goto_13
    or-int v0, v0, v29

    goto :goto_15

    :cond_1a
    :goto_14
    move/from16 v28, v10

    move/from16 v10, p8

    :goto_15
    and-int/lit16 v10, v13, 0x200

    if-eqz v10, :cond_1b

    const/high16 v29, 0x30000000

    or-int v0, v0, v29

    move/from16 v30, v0

    move/from16 v29, v10

    move/from16 v10, p9

    goto :goto_18

    :cond_1b
    const/high16 v29, 0x70000000

    and-int v29, v12, v29

    if-nez v29, :cond_1d

    move/from16 v29, v10

    move/from16 v10, p9

    invoke-interface {v9, v10}, Landroidx/compose/runtime/Composer;->changed(Z)Z

    move-result v30

    if-eqz v30, :cond_1c

    const/high16 v30, 0x20000000

    goto :goto_16

    :cond_1c
    const/high16 v30, 0x10000000

    :goto_16
    or-int v0, v0, v30

    goto :goto_17

    :cond_1d
    move/from16 v29, v10

    move/from16 v10, p9

    :goto_17
    move/from16 v30, v0

    :goto_18
    and-int/lit16 v0, v13, 0x400

    if-eqz v0, :cond_1e

    or-int/lit8 v17, v11, 0x6

    move-object/from16 v10, p10

    goto :goto_1a

    :cond_1e
    and-int/lit8 v31, v11, 0xe

    move-object/from16 v10, p10

    if-nez v31, :cond_20

    invoke-interface {v9, v10}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v31

    if-eqz v31, :cond_1f

    const/16 v17, 0x4

    goto :goto_19

    :cond_1f
    const/16 v17, 0x2

    :goto_19
    or-int v17, v11, v17

    goto :goto_1a

    :cond_20
    move/from16 v17, v11

    :goto_1a
    and-int/lit16 v10, v13, 0x800

    if-eqz v10, :cond_21

    or-int/lit8 v17, v17, 0x10

    :cond_21
    move/from16 v31, v0

    move/from16 v0, v17

    and-int/lit16 v1, v13, 0x1000

    if-eqz v1, :cond_22

    or-int/lit16 v0, v0, 0x180

    goto :goto_1c

    :cond_22
    and-int/lit16 v1, v11, 0x380

    if-nez v1, :cond_24

    invoke-interface {v9, v14}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_23

    const/16 v20, 0x100

    goto :goto_1b

    :cond_23
    const/16 v20, 0x80

    :goto_1b
    or-int v0, v0, v20

    :cond_24
    :goto_1c
    move v1, v0

    const/16 v0, 0x800

    if-ne v10, v0, :cond_26

    const v0, 0x5b6db6db

    and-int v0, v30, v0

    const v2, 0x12492492

    if-ne v0, v2, :cond_26

    and-int/lit16 v0, v1, 0x2db

    const/16 v2, 0x92

    if-ne v0, v2, :cond_26

    invoke-interface {v9}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result v0

    if-nez v0, :cond_25

    goto :goto_1d

    .line 326
    :cond_25
    invoke-interface {v9}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    move/from16 v10, p9

    move-object/from16 v11, p10

    move-object/from16 v12, p11

    move-object v2, v4

    move v5, v6

    move v6, v7

    move-object v3, v8

    move-object/from16 v34, v9

    move-object/from16 v4, p3

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move/from16 v9, p8

    goto/16 :goto_2b

    .line 308
    :cond_26
    :goto_1d
    invoke-interface {v9}, Landroidx/compose/runtime/Composer;->startDefaults()V

    and-int/lit8 v0, v12, 0x1

    if-eqz v0, :cond_2a

    invoke-interface {v9}, Landroidx/compose/runtime/Composer;->getDefaultsInvalid()Z

    move-result v0

    if-eqz v0, :cond_27

    goto :goto_1e

    .line 304
    :cond_27
    invoke-interface {v9}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    and-int/lit16 v0, v13, 0x80

    if-eqz v0, :cond_28

    const v0, -0x1c00001

    and-int v30, v30, v0

    :cond_28
    if-eqz v10, :cond_29

    and-int/lit8 v1, v1, -0x71

    :cond_29
    move-object/from16 v23, p3

    move-object/from16 v27, p6

    move-object/from16 v28, p7

    move/from16 v29, p8

    move/from16 v33, p9

    move-object/from16 v31, p11

    move-object/from16 v20, v4

    move/from16 v24, v6

    move/from16 v26, v7

    move-object/from16 v21, v8

    move-object/from16 v34, v9

    move/from16 v0, v30

    const v11, -0x56d91adf

    move-object/from16 v30, p10

    goto/16 :goto_2a

    :cond_2a
    :goto_1e
    if-eqz v3, :cond_2b

    .line 294
    sget-object v0, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v0, Landroidx/compose/ui/Modifier;

    move-object/from16 v17, v0

    goto :goto_1f

    :cond_2b
    move-object/from16 v17, v4

    :goto_1f
    const/4 v4, 0x0

    if-eqz v5, :cond_2c

    int-to-float v0, v4

    .line 907
    invoke-static {v0}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v0

    .line 295
    invoke-static {v0}, Landroidx/compose/foundation/layout/PaddingKt;->PaddingValues-0680j_4(F)Landroidx/compose/foundation/layout/PaddingValues;

    move-result-object v0

    move-object/from16 v20, v0

    goto :goto_20

    :cond_2c
    move-object/from16 v20, v8

    :goto_20
    if-eqz v16, :cond_2d

    .line 296
    sget-object v0, Landroidx/compose/foundation/pager/PageSize$Fill;->INSTANCE:Landroidx/compose/foundation/pager/PageSize$Fill;

    check-cast v0, Landroidx/compose/foundation/pager/PageSize;

    move-object/from16 v16, v0

    goto :goto_21

    :cond_2d
    move-object/from16 v16, p3

    :goto_21
    if-eqz v18, :cond_2e

    move/from16 v18, v4

    goto :goto_22

    :cond_2e
    move/from16 v18, v6

    :goto_22
    if-eqz v21, :cond_2f

    int-to-float v0, v4

    .line 908
    invoke-static {v0}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v0

    move/from16 v21, v0

    goto :goto_23

    :cond_2f
    move/from16 v21, v7

    :goto_23
    if-eqz v24, :cond_30

    .line 299
    sget-object v0, Landroidx/compose/ui/Alignment;->Companion:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/Alignment$Companion;->getCenterHorizontally()Landroidx/compose/ui/Alignment$Horizontal;

    move-result-object v0

    move-object/from16 v23, v0

    goto :goto_24

    :cond_30
    move-object/from16 v23, p6

    :goto_24
    and-int/lit16 v0, v13, 0x80

    if-eqz v0, :cond_31

    .line 300
    sget-object v0, Landroidx/compose/foundation/pager/PagerDefaults;->INSTANCE:Landroidx/compose/foundation/pager/PagerDefaults;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    and-int/lit8 v24, v30, 0xe

    const/high16 v27, 0xc00000

    or-int v24, v24, v27

    const/16 v27, 0x7e

    move/from16 v32, v1

    move-object/from16 v1, p0

    move/from16 v33, v4

    move-object v4, v5

    move-object v5, v6

    move v6, v7

    move v7, v8

    move-object v8, v9

    move-object/from16 v34, v9

    move/from16 v9, v24

    move/from16 v24, v28

    move/from16 v26, v29

    const v11, -0x56d91adf

    move/from16 v28, v10

    move/from16 v10, v27

    invoke-virtual/range {v0 .. v10}, Landroidx/compose/foundation/pager/PagerDefaults;->flingBehavior-PfoAEA0(Landroidx/compose/foundation/pager/PagerState;Landroidx/compose/foundation/pager/PagerSnapDistance;Landroidx/compose/animation/core/AnimationSpec;Landroidx/compose/animation/core/DecayAnimationSpec;Landroidx/compose/animation/core/AnimationSpec;FFLandroidx/compose/runtime/Composer;II)Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior;

    move-result-object v0

    const v1, -0x1c00001

    and-int v30, v30, v1

    goto :goto_25

    :cond_31
    move/from16 v32, v1

    move/from16 v33, v4

    move-object/from16 v34, v9

    move/from16 v24, v28

    move/from16 v26, v29

    const v11, -0x56d91adf

    move/from16 v28, v10

    move-object/from16 v0, p7

    :goto_25
    if-eqz v24, :cond_32

    const/4 v1, 0x1

    goto :goto_26

    :cond_32
    move/from16 v1, p8

    :goto_26
    if-eqz v26, :cond_33

    goto :goto_27

    :cond_33
    move/from16 v33, p9

    :goto_27
    if-eqz v31, :cond_34

    const/4 v2, 0x0

    goto :goto_28

    :cond_34
    move-object/from16 v2, p10

    :goto_28
    if-eqz v28, :cond_35

    .line 304
    sget-object v3, Landroidx/compose/foundation/pager/PagerDefaults;->INSTANCE:Landroidx/compose/foundation/pager/PagerDefaults;

    .line 305
    sget-object v4, Landroidx/compose/foundation/gestures/Orientation;->Vertical:Landroidx/compose/foundation/gestures/Orientation;

    .line 304
    invoke-virtual {v3, v4}, Landroidx/compose/foundation/pager/PagerDefaults;->pageNestedScrollConnection(Landroidx/compose/foundation/gestures/Orientation;)Landroidx/compose/ui/input/nestedscroll/NestedScrollConnection;

    move-result-object v3

    and-int/lit8 v4, v32, -0x71

    move-object/from16 v28, v0

    move/from16 v29, v1

    move-object/from16 v31, v3

    move v1, v4

    move/from16 v24, v18

    move/from16 v26, v21

    move-object/from16 v27, v23

    move/from16 v0, v30

    goto :goto_29

    :cond_35
    move-object/from16 v31, p11

    move-object/from16 v28, v0

    move/from16 v29, v1

    move/from16 v24, v18

    move/from16 v26, v21

    move-object/from16 v27, v23

    move/from16 v0, v30

    move/from16 v1, v32

    :goto_29
    move-object/from16 v30, v2

    move-object/from16 v23, v16

    move-object/from16 v21, v20

    move-object/from16 v20, v17

    :goto_2a
    invoke-interface/range {v34 .. v34}, Landroidx/compose/runtime/Composer;->endDefaults()V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v2

    if-eqz v2, :cond_36

    const-string v2, "androidx.compose.foundation.pager.VerticalPager (Pager.kt:291)"

    .line 308
    invoke-static {v11, v0, v1, v2}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 316
    :cond_36
    sget-object v4, Landroidx/compose/foundation/gestures/Orientation;->Vertical:Landroidx/compose/foundation/gestures/Orientation;

    .line 317
    sget-object v2, Landroidx/compose/ui/Alignment;->Companion:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v2}, Landroidx/compose/ui/Alignment$Companion;->getCenterVertically()Landroidx/compose/ui/Alignment$Vertical;

    move-result-object v2

    move-object v13, v2

    shr-int/lit8 v2, v0, 0x3

    and-int/lit8 v2, v2, 0xe

    or-int/lit16 v2, v2, 0x6000

    shl-int/lit8 v3, v0, 0x3

    and-int/lit8 v3, v3, 0x70

    or-int/2addr v2, v3

    and-int/lit16 v3, v0, 0x380

    or-int/2addr v2, v3

    shr-int/lit8 v3, v0, 0x12

    and-int/lit16 v3, v3, 0x1c00

    or-int/2addr v2, v3

    shr-int/lit8 v3, v0, 0x6

    and-int v5, v3, v22

    or-int/2addr v2, v5

    and-int v3, v3, v25

    or-int/2addr v2, v3

    shl-int/lit8 v3, v0, 0x9

    const/high16 v5, 0x1c00000

    and-int/2addr v5, v3

    or-int/2addr v2, v5

    const/high16 v5, 0xe000000

    and-int/2addr v3, v5

    or-int/2addr v2, v3

    shl-int/lit8 v3, v0, 0x12

    const/high16 v5, 0x70000000

    and-int/2addr v3, v5

    or-int v16, v2, v3

    shl-int/lit8 v2, v1, 0x3

    and-int/lit8 v2, v2, 0x70

    or-int/lit16 v2, v2, 0xc08

    shr-int/lit8 v0, v0, 0xc

    and-int/lit16 v0, v0, 0x380

    or-int/2addr v0, v2

    shl-int/lit8 v1, v1, 0x6

    and-int v1, v1, v19

    or-int v17, v0, v1

    const/16 v18, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    move-object/from16 v2, v21

    move/from16 v3, v33

    move-object/from16 v5, v28

    move/from16 v6, v29

    move/from16 v7, v24

    move/from16 v8, v26

    move-object/from16 v9, v23

    move-object/from16 v10, v31

    move-object/from16 v11, v30

    move-object/from16 v12, v27

    move-object/from16 v14, p12

    move-object/from16 v15, v34

    .line 309
    invoke-static/range {v0 .. v18}, Landroidx/compose/foundation/pager/LazyLayoutPagerKt;->Pager-fs30GE4(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/pager/PagerState;Landroidx/compose/foundation/layout/PaddingValues;ZLandroidx/compose/foundation/gestures/Orientation;Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior;ZIFLandroidx/compose/foundation/pager/PageSize;Landroidx/compose/ui/input/nestedscroll/NestedScrollConnection;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Alignment$Horizontal;Landroidx/compose/ui/Alignment$Vertical;Lkotlin/jvm/functions/Function4;Landroidx/compose/runtime/Composer;III)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_37

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_37
    move-object/from16 v2, v20

    move-object/from16 v3, v21

    move-object/from16 v4, v23

    move/from16 v5, v24

    move/from16 v6, v26

    move-object/from16 v7, v27

    move-object/from16 v8, v28

    move/from16 v9, v29

    move-object/from16 v11, v30

    move-object/from16 v12, v31

    move/from16 v10, v33

    .line 326
    :goto_2b
    invoke-interface/range {v34 .. v34}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v15

    if-nez v15, :cond_38

    goto :goto_2c

    :cond_38
    new-instance v17, Landroidx/compose/foundation/pager/PagerKt$VerticalPager$1;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move-object/from16 v13, p12

    move/from16 v14, p14

    move-object/from16 v35, v15

    move/from16 v15, p15

    move/from16 v16, p16

    invoke-direct/range {v0 .. v16}, Landroidx/compose/foundation/pager/PagerKt$VerticalPager$1;-><init>(Landroidx/compose/foundation/pager/PagerState;Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/foundation/pager/PageSize;IFLandroidx/compose/ui/Alignment$Horizontal;Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior;ZZLkotlin/jvm/functions/Function1;Landroidx/compose/ui/input/nestedscroll/NestedScrollConnection;Lkotlin/jvm/functions/Function4;III)V

    move-object/from16 v0, v17

    check-cast v0, Lkotlin/jvm/functions/Function2;

    move-object/from16 v1, v35

    invoke-interface {v1, v0}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    :goto_2c
    return-void
.end method

.method public static final synthetic access$SnapLayoutInfoProvider(Landroidx/compose/foundation/pager/PagerState;Landroidx/compose/foundation/pager/PagerSnapDistance;Landroidx/compose/animation/core/DecayAnimationSpec;F)Landroidx/compose/foundation/gestures/snapping/SnapLayoutInfoProvider;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Landroidx/compose/foundation/pager/PagerKt;->SnapLayoutInfoProvider(Landroidx/compose/foundation/pager/PagerState;Landroidx/compose/foundation/pager/PagerSnapDistance;Landroidx/compose/animation/core/DecayAnimationSpec;F)Landroidx/compose/foundation/gestures/snapping/SnapLayoutInfoProvider;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$dragGestureDelta(Landroidx/compose/foundation/pager/PagerState;)F
    .locals 0

    .line 1
    invoke-static {p0}, Landroidx/compose/foundation/pager/PagerKt;->dragGestureDelta(Landroidx/compose/foundation/pager/PagerState;)F

    move-result p0

    return p0
.end method

.method public static final synthetic access$getConsumeHorizontalFlingNestedScrollConnection$p()Landroidx/compose/foundation/pager/ConsumeAllFlingOnDirection;
    .locals 1

    sget-object v0, Landroidx/compose/foundation/pager/PagerKt;->ConsumeHorizontalFlingNestedScrollConnection:Landroidx/compose/foundation/pager/ConsumeAllFlingOnDirection;

    return-object v0
.end method

.method public static final synthetic access$getConsumeVerticalFlingNestedScrollConnection$p()Landroidx/compose/foundation/pager/ConsumeAllFlingOnDirection;
    .locals 1

    sget-object v0, Landroidx/compose/foundation/pager/PagerKt;->ConsumeVerticalFlingNestedScrollConnection:Landroidx/compose/foundation/pager/ConsumeAllFlingOnDirection;

    return-object v0
.end method

.method public static final synthetic access$isScrollingForward(Landroidx/compose/foundation/pager/PagerState;)Z
    .locals 0

    .line 1
    invoke-static {p0}, Landroidx/compose/foundation/pager/PagerKt;->isScrollingForward(Landroidx/compose/foundation/pager/PagerState;)Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$pagerSemantics$performBackwardPaging(Landroidx/compose/foundation/pager/PagerState;Lkotlinx/coroutines/CoroutineScope;)Z
    .locals 0

    .line 1
    invoke-static {p0, p1}, Landroidx/compose/foundation/pager/PagerKt;->pagerSemantics$performBackwardPaging(Landroidx/compose/foundation/pager/PagerState;Lkotlinx/coroutines/CoroutineScope;)Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$pagerSemantics$performForwardPaging(Landroidx/compose/foundation/pager/PagerState;Lkotlinx/coroutines/CoroutineScope;)Z
    .locals 0

    .line 1
    invoke-static {p0, p1}, Landroidx/compose/foundation/pager/PagerKt;->pagerSemantics$performForwardPaging(Landroidx/compose/foundation/pager/PagerState;Lkotlinx/coroutines/CoroutineScope;)Z

    move-result p0

    return p0
.end method

.method private static final debugLog(Lkotlin/jvm/functions/Function0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method private static final dragGestureDelta(Landroidx/compose/foundation/pager/PagerState;)F
    .locals 2

    .line 891
    invoke-virtual {p0}, Landroidx/compose/foundation/pager/PagerState;->getLayoutInfo$foundation_release()Landroidx/compose/foundation/pager/PagerLayoutInfo;

    move-result-object v0

    invoke-interface {v0}, Landroidx/compose/foundation/pager/PagerLayoutInfo;->getOrientation()Landroidx/compose/foundation/gestures/Orientation;

    move-result-object v0

    sget-object v1, Landroidx/compose/foundation/gestures/Orientation;->Horizontal:Landroidx/compose/foundation/gestures/Orientation;

    if-ne v0, v1, :cond_0

    .line 892
    invoke-virtual {p0}, Landroidx/compose/foundation/pager/PagerState;->getUpDownDifference-F1C5BW0$foundation_release()J

    move-result-wide v0

    invoke-static {v0, v1}, Landroidx/compose/ui/geometry/Offset;->getX-impl(J)F

    move-result p0

    goto :goto_0

    .line 894
    :cond_0
    invoke-virtual {p0}, Landroidx/compose/foundation/pager/PagerState;->getUpDownDifference-F1C5BW0$foundation_release()J

    move-result-wide v0

    invoke-static {v0, v1}, Landroidx/compose/ui/geometry/Offset;->getY-impl(J)F

    move-result p0

    :goto_0
    return p0
.end method

.method private static final isScrollingForward(Landroidx/compose/foundation/pager/PagerState;)Z
    .locals 1

    .line 888
    invoke-static {p0}, Landroidx/compose/foundation/pager/PagerKt;->dragGestureDelta(Landroidx/compose/foundation/pager/PagerState;)F

    move-result p0

    const/4 v0, 0x0

    cmpg-float p0, p0, v0

    if-gez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static final pagerSemantics(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/pager/PagerState;ZLandroidx/compose/runtime/Composer;I)Landroidx/compose/ui/Modifier;
    .locals 3

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "state"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const v0, 0x59fe4150

    invoke-interface {p3, v0}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v1, "C(pagerSemantics)P(1)843@38529L24:Pager.kt#g6yjnt"

    invoke-static {p3, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, -0x1

    const-string v2, "androidx.compose.foundation.pager.pagerSemantics (Pager.kt:842)"

    .line 843
    invoke-static {v0, p4, v1, v2}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_0
    const p4, 0x2e20b340

    .line 844
    invoke-interface {p3, p4}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string p4, "CC(rememberCoroutineScope)488@20446L144:Effects.kt#9igjgp"

    invoke-static {p3, p4}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    const p4, -0x1d58f75c

    .line 921
    invoke-interface {p3, p4}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string p4, "CC(remember):Composables.kt#9igjgp"

    invoke-static {p3, p4}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 923
    invoke-interface {p3}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object p4

    .line 924
    sget-object v0, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v0}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v0

    if-ne p4, v0, :cond_1

    .line 928
    sget-object p4, Lkotlin/coroutines/EmptyCoroutineContext;->INSTANCE:Lkotlin/coroutines/EmptyCoroutineContext;

    .line 927
    check-cast p4, Lkotlin/coroutines/CoroutineContext;

    invoke-static {p4, p3}, Landroidx/compose/runtime/EffectsKt;->createCompositionCoroutineScope(Lkotlin/coroutines/CoroutineContext;Landroidx/compose/runtime/Composer;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object p4

    .line 926
    new-instance v0, Landroidx/compose/runtime/CompositionScopedCoroutineScopeCanceller;

    invoke-direct {v0, p4}, Landroidx/compose/runtime/CompositionScopedCoroutineScopeCanceller;-><init>(Lkotlinx/coroutines/CoroutineScope;)V

    .line 929
    invoke-interface {p3, v0}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    move-object p4, v0

    .line 922
    :cond_1
    invoke-interface {p3}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 921
    check-cast p4, Landroidx/compose/runtime/CompositionScopedCoroutineScopeCanceller;

    .line 932
    invoke-virtual {p4}, Landroidx/compose/runtime/CompositionScopedCoroutineScopeCanceller;->getCoroutineScope()Lkotlinx/coroutines/CoroutineScope;

    move-result-object p4

    invoke-interface {p3}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 867
    sget-object v0, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v0, Landroidx/compose/ui/Modifier;

    new-instance v1, Landroidx/compose/foundation/pager/PagerKt$pagerSemantics$1;

    invoke-direct {v1, p2, p1, p4}, Landroidx/compose/foundation/pager/PagerKt$pagerSemantics$1;-><init>(ZLandroidx/compose/foundation/pager/PagerState;Lkotlinx/coroutines/CoroutineScope;)V

    check-cast v1, Lkotlin/jvm/functions/Function1;

    const/4 p1, 0x1

    const/4 p2, 0x0

    const/4 p4, 0x0

    invoke-static {v0, p4, v1, p1, p2}, Landroidx/compose/ui/semantics/SemanticsModifierKt;->semantics$default(Landroidx/compose/ui/Modifier;ZLkotlin/jvm/functions/Function1;ILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object p1

    invoke-interface {p0, p1}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object p0

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_2
    invoke-interface {p3}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    return-object p0
.end method

.method private static final pagerSemantics$performBackwardPaging(Landroidx/compose/foundation/pager/PagerState;Lkotlinx/coroutines/CoroutineScope;)Z
    .locals 7

    .line 857
    invoke-virtual {p0}, Landroidx/compose/foundation/pager/PagerState;->getCanScrollBackward()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 858
    new-instance v0, Landroidx/compose/foundation/pager/PagerKt$pagerSemantics$performBackwardPaging$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroidx/compose/foundation/pager/PagerKt$pagerSemantics$performBackwardPaging$1;-><init>(Landroidx/compose/foundation/pager/PagerState;Lkotlin/coroutines/Continuation;)V

    move-object v4, v0

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/4 v5, 0x3

    const/4 v6, 0x0

    move-object v1, p1

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static final pagerSemantics$performForwardPaging(Landroidx/compose/foundation/pager/PagerState;Lkotlinx/coroutines/CoroutineScope;)Z
    .locals 7

    .line 846
    invoke-virtual {p0}, Landroidx/compose/foundation/pager/PagerState;->getCanScrollForward()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 847
    new-instance v0, Landroidx/compose/foundation/pager/PagerKt$pagerSemantics$performForwardPaging$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroidx/compose/foundation/pager/PagerKt$pagerSemantics$performForwardPaging$1;-><init>(Landroidx/compose/foundation/pager/PagerState;Lkotlin/coroutines/Continuation;)V

    move-object v4, v0

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/4 v5, 0x3

    const/4 v6, 0x0

    move-object v1, p1

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
