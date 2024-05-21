.class public final Landroidx/compose/animation/core/AnimateAsStateKt;
.super Ljava/lang/Object;
.source "AnimateAsState.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAnimateAsState.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AnimateAsState.kt\nandroidx/compose/animation/core/AnimateAsStateKt\n+ 2 Composables.kt\nandroidx/compose/runtime/ComposablesKt\n+ 3 Composer.kt\nandroidx/compose/runtime/ComposerKt\n+ 4 SnapshotState.kt\nandroidx/compose/runtime/SnapshotStateKt__SnapshotStateKt\n*L\n1#1,584:1\n36#2:585\n25#2:592\n25#2:599\n25#2:606\n25#2:613\n25#2:620\n1097#3,6:586\n1097#3,6:593\n1097#3,6:600\n1097#3,6:607\n1097#3,6:614\n1097#3,6:621\n81#4:627\n81#4:628\n*S KotlinDebug\n*F\n+ 1 AnimateAsState.kt\nandroidx/compose/animation/core/AnimateAsStateKt\n*L\n72#1:585\n394#1:592\n400#1:599\n401#1:606\n414#1:613\n573#1:620\n72#1:586,6\n394#1:593,6\n400#1:600,6\n401#1:607,6\n414#1:614,6\n573#1:621,6\n402#1:627\n403#1:628\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000f\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0007\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u001d\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u001aK\u0010\u0011\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u00122\u0006\u0010\u0013\u001a\u00020\u00042\u000e\u0008\u0002\u0010\u0014\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u00152\u0016\u0008\u0002\u0010\u0016\u001a\u0010\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u0018\u0018\u00010\u0017H\u0007\u00f8\u0001\u0001\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u0019\u0010\u001a\u001aU\u0010\u0011\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u00122\u0006\u0010\u0013\u001a\u00020\u00042\u000e\u0008\u0002\u0010\u0014\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u00152\u0008\u0008\u0002\u0010\u001b\u001a\u00020\u001c2\u0016\u0008\u0002\u0010\u0016\u001a\u0010\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u0018\u0018\u00010\u0017H\u0007\u00f8\u0001\u0001\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u001d\u0010\u001e\u001aM\u0010\u001f\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u00022\u000e\u0008\u0002\u0010\u0014\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u00152\u0008\u0008\u0002\u0010 \u001a\u00020\u00022\u0016\u0008\u0002\u0010\u0016\u001a\u0010\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u0018\u0018\u00010\u0017H\u0007\u00a2\u0006\u0002\u0010!\u001aW\u0010\u001f\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u00022\u000e\u0008\u0002\u0010\u0014\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u00152\u0008\u0008\u0002\u0010 \u001a\u00020\u00022\u0008\u0008\u0002\u0010\u001b\u001a\u00020\u001c2\u0016\u0008\u0002\u0010\u0016\u001a\u0010\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u0018\u0018\u00010\u0017H\u0007\u00a2\u0006\u0002\u0010\"\u001aC\u0010#\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u00122\u0006\u0010\u0013\u001a\u00020\u00062\u000e\u0008\u0002\u0010\u0014\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u00152\u0016\u0008\u0002\u0010\u0016\u001a\u0010\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u0018\u0018\u00010\u0017H\u0007\u00a2\u0006\u0002\u0010$\u001aM\u0010#\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u00122\u0006\u0010\u0013\u001a\u00020\u00062\u000e\u0008\u0002\u0010\u0014\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u00152\u0008\u0008\u0002\u0010\u001b\u001a\u00020\u001c2\u0016\u0008\u0002\u0010\u0016\u001a\u0010\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u0018\u0018\u00010\u0017H\u0007\u00a2\u0006\u0002\u0010%\u001aK\u0010&\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u00122\u0006\u0010\u0013\u001a\u00020\u00082\u000e\u0008\u0002\u0010\u0014\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u00152\u0016\u0008\u0002\u0010\u0016\u001a\u0010\u0012\u0004\u0012\u00020\u0008\u0012\u0004\u0012\u00020\u0018\u0018\u00010\u0017H\u0007\u00f8\u0001\u0001\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\'\u0010(\u001aU\u0010&\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u00122\u0006\u0010\u0013\u001a\u00020\u00082\u000e\u0008\u0002\u0010\u0014\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u00152\u0008\u0008\u0002\u0010\u001b\u001a\u00020\u001c2\u0016\u0008\u0002\u0010\u0016\u001a\u0010\u0012\u0004\u0012\u00020\u0008\u0012\u0004\u0012\u00020\u0018\u0018\u00010\u0017H\u0007\u00f8\u0001\u0001\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008)\u0010*\u001aK\u0010+\u001a\u0008\u0012\u0004\u0012\u00020\n0\u00122\u0006\u0010\u0013\u001a\u00020\n2\u000e\u0008\u0002\u0010\u0014\u001a\u0008\u0012\u0004\u0012\u00020\n0\u00152\u0016\u0008\u0002\u0010\u0016\u001a\u0010\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\u0018\u0018\u00010\u0017H\u0007\u00f8\u0001\u0001\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008,\u0010(\u001aU\u0010+\u001a\u0008\u0012\u0004\u0012\u00020\n0\u00122\u0006\u0010\u0013\u001a\u00020\n2\u000e\u0008\u0002\u0010\u0014\u001a\u0008\u0012\u0004\u0012\u00020\n0\u00152\u0008\u0008\u0002\u0010\u001b\u001a\u00020\u001c2\u0016\u0008\u0002\u0010\u0016\u001a\u0010\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\u0018\u0018\u00010\u0017H\u0007\u00f8\u0001\u0001\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008-\u0010*\u001aK\u0010.\u001a\u0008\u0012\u0004\u0012\u00020\u000c0\u00122\u0006\u0010\u0013\u001a\u00020\u000c2\u000e\u0008\u0002\u0010\u0014\u001a\u0008\u0012\u0004\u0012\u00020\u000c0\u00152\u0016\u0008\u0002\u0010\u0016\u001a\u0010\u0012\u0004\u0012\u00020\u000c\u0012\u0004\u0012\u00020\u0018\u0018\u00010\u0017H\u0007\u00f8\u0001\u0001\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008/\u0010(\u001aU\u0010.\u001a\u0008\u0012\u0004\u0012\u00020\u000c0\u00122\u0006\u0010\u0013\u001a\u00020\u000c2\u000e\u0008\u0002\u0010\u0014\u001a\u0008\u0012\u0004\u0012\u00020\u000c0\u00152\u0008\u0008\u0002\u0010\u001b\u001a\u00020\u001c2\u0016\u0008\u0002\u0010\u0016\u001a\u0010\u0012\u0004\u0012\u00020\u000c\u0012\u0004\u0012\u00020\u0018\u0018\u00010\u0017H\u0007\u00f8\u0001\u0001\u00f8\u0001\u0000\u00a2\u0006\u0004\u00080\u0010*\u001aC\u00101\u001a\u0008\u0012\u0004\u0012\u00020\u000e0\u00122\u0006\u0010\u0013\u001a\u00020\u000e2\u000e\u0008\u0002\u0010\u0014\u001a\u0008\u0012\u0004\u0012\u00020\u000e0\u00152\u0016\u0008\u0002\u0010\u0016\u001a\u0010\u0012\u0004\u0012\u00020\u000e\u0012\u0004\u0012\u00020\u0018\u0018\u00010\u0017H\u0007\u00a2\u0006\u0002\u00102\u001aM\u00101\u001a\u0008\u0012\u0004\u0012\u00020\u000e0\u00122\u0006\u0010\u0013\u001a\u00020\u000e2\u000e\u0008\u0002\u0010\u0014\u001a\u0008\u0012\u0004\u0012\u00020\u000e0\u00152\u0008\u0008\u0002\u0010\u001b\u001a\u00020\u001c2\u0016\u0008\u0002\u0010\u0016\u001a\u0010\u0012\u0004\u0012\u00020\u000e\u0012\u0004\u0012\u00020\u0018\u0018\u00010\u0017H\u0007\u00a2\u0006\u0002\u00103\u001aK\u00104\u001a\u0008\u0012\u0004\u0012\u00020\u00100\u00122\u0006\u0010\u0013\u001a\u00020\u00102\u000e\u0008\u0002\u0010\u0014\u001a\u0008\u0012\u0004\u0012\u00020\u00100\u00152\u0016\u0008\u0002\u0010\u0016\u001a\u0010\u0012\u0004\u0012\u00020\u0010\u0012\u0004\u0012\u00020\u0018\u0018\u00010\u0017H\u0007\u00f8\u0001\u0001\u00f8\u0001\u0000\u00a2\u0006\u0004\u00085\u0010(\u001aU\u00104\u001a\u0008\u0012\u0004\u0012\u00020\u00100\u00122\u0006\u0010\u0013\u001a\u00020\u00102\u000e\u0008\u0002\u0010\u0014\u001a\u0008\u0012\u0004\u0012\u00020\u00100\u00152\u0008\u0008\u0002\u0010\u001b\u001a\u00020\u001c2\u0016\u0008\u0002\u0010\u0016\u001a\u0010\u0012\u0004\u0012\u00020\u0010\u0012\u0004\u0012\u00020\u0018\u0018\u00010\u0017H\u0007\u00f8\u0001\u0001\u00f8\u0001\u0000\u00a2\u0006\u0004\u00086\u0010*\u001as\u00107\u001a\u0008\u0012\u0004\u0012\u0002H80\u0012\"\u0004\u0008\u0000\u00108\"\u0008\u0008\u0001\u00109*\u00020:2\u0006\u0010\u0013\u001a\u0002H82\u0012\u0010;\u001a\u000e\u0012\u0004\u0012\u0002H8\u0012\u0004\u0012\u0002H90<2\u000e\u0008\u0002\u0010\u0014\u001a\u0008\u0012\u0004\u0012\u0002H80\u00152\n\u0008\u0002\u0010 \u001a\u0004\u0018\u0001H82\u0016\u0008\u0002\u0010\u0016\u001a\u0010\u0012\u0004\u0012\u0002H8\u0012\u0004\u0012\u00020\u0018\u0018\u00010\u0017H\u0007\u00a2\u0006\u0002\u0010=\u001a}\u00107\u001a\u0008\u0012\u0004\u0012\u0002H80\u0012\"\u0004\u0008\u0000\u00108\"\u0008\u0008\u0001\u00109*\u00020:2\u0006\u0010\u0013\u001a\u0002H82\u0012\u0010;\u001a\u000e\u0012\u0004\u0012\u0002H8\u0012\u0004\u0012\u0002H90<2\u000e\u0008\u0002\u0010\u0014\u001a\u0008\u0012\u0004\u0012\u0002H80\u00152\n\u0008\u0002\u0010 \u001a\u0004\u0018\u0001H82\u0008\u0008\u0002\u0010\u001b\u001a\u00020\u001c2\u0016\u0008\u0002\u0010\u0016\u001a\u0010\u0012\u0004\u0012\u0002H8\u0012\u0004\u0012\u00020\u0018\u0018\u00010\u0017H\u0007\u00a2\u0006\u0002\u0010>\"\u0014\u0010\u0000\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0001X\u0082\u0004\u00a2\u0006\u0002\n\u0000\"\u0017\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0001X\u0082\u0004\u00f8\u0001\u0000\u00a2\u0006\u0002\n\u0000\"\u0014\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0001X\u0082\u0004\u00a2\u0006\u0002\n\u0000\"\u0017\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u0001X\u0082\u0004\u00f8\u0001\u0000\u00a2\u0006\u0002\n\u0000\"\u0017\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\n0\u0001X\u0082\u0004\u00f8\u0001\u0000\u00a2\u0006\u0002\n\u0000\"\u0017\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00020\u000c0\u0001X\u0082\u0004\u00f8\u0001\u0000\u00a2\u0006\u0002\n\u0000\"\u0014\u0010\r\u001a\u0008\u0012\u0004\u0012\u00020\u000e0\u0001X\u0082\u0004\u00a2\u0006\u0002\n\u0000\"\u0017\u0010\u000f\u001a\u0008\u0012\u0004\u0012\u00020\u00100\u0001X\u0082\u0004\u00f8\u0001\u0000\u00a2\u0006\u0002\n\u0000\u0082\u0002\u000b\n\u0002\u0008\u0019\n\u0005\u0008\u00a1\u001e0\u0001\u00a8\u0006?\u00b2\u0006(\u0010@\u001a\u0010\u0012\u0004\u0012\u0002H8\u0012\u0004\u0012\u00020\u0018\u0018\u00010\u0017\"\u0004\u0008\u0000\u00108\"\u0008\u0008\u0001\u00109*\u00020:X\u008a\u0084\u0002\u00b2\u0006 \u0010A\u001a\u0008\u0012\u0004\u0012\u0002H80\u0015\"\u0004\u0008\u0000\u00108\"\u0008\u0008\u0001\u00109*\u00020:X\u008a\u0084\u0002"
    }
    d2 = {
        "defaultAnimation",
        "Landroidx/compose/animation/core/SpringSpec;",
        "",
        "dpDefaultSpring",
        "Landroidx/compose/ui/unit/Dp;",
        "intDefaultSpring",
        "",
        "intOffsetDefaultSpring",
        "Landroidx/compose/ui/unit/IntOffset;",
        "intSizeDefaultSpring",
        "Landroidx/compose/ui/unit/IntSize;",
        "offsetDefaultSpring",
        "Landroidx/compose/ui/geometry/Offset;",
        "rectDefaultSpring",
        "Landroidx/compose/ui/geometry/Rect;",
        "sizeDefaultSpring",
        "Landroidx/compose/ui/geometry/Size;",
        "animateDpAsState",
        "Landroidx/compose/runtime/State;",
        "targetValue",
        "animationSpec",
        "Landroidx/compose/animation/core/AnimationSpec;",
        "finishedListener",
        "Lkotlin/Function1;",
        "",
        "animateDpAsState-Kz89ssw",
        "(FLandroidx/compose/animation/core/AnimationSpec;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)Landroidx/compose/runtime/State;",
        "label",
        "",
        "animateDpAsState-AjpBEmI",
        "(FLandroidx/compose/animation/core/AnimationSpec;Ljava/lang/String;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)Landroidx/compose/runtime/State;",
        "animateFloatAsState",
        "visibilityThreshold",
        "(FLandroidx/compose/animation/core/AnimationSpec;FLkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)Landroidx/compose/runtime/State;",
        "(FLandroidx/compose/animation/core/AnimationSpec;FLjava/lang/String;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)Landroidx/compose/runtime/State;",
        "animateIntAsState",
        "(ILandroidx/compose/animation/core/AnimationSpec;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)Landroidx/compose/runtime/State;",
        "(ILandroidx/compose/animation/core/AnimationSpec;Ljava/lang/String;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)Landroidx/compose/runtime/State;",
        "animateIntOffsetAsState",
        "animateIntOffsetAsState-8f6pmRE",
        "(JLandroidx/compose/animation/core/AnimationSpec;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)Landroidx/compose/runtime/State;",
        "animateIntOffsetAsState-HyPO7BM",
        "(JLandroidx/compose/animation/core/AnimationSpec;Ljava/lang/String;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)Landroidx/compose/runtime/State;",
        "animateIntSizeAsState",
        "animateIntSizeAsState-zTRF_AQ",
        "animateIntSizeAsState-4goxYXU",
        "animateOffsetAsState",
        "animateOffsetAsState-N6fFfp4",
        "animateOffsetAsState-7362WCg",
        "animateRectAsState",
        "(Landroidx/compose/ui/geometry/Rect;Landroidx/compose/animation/core/AnimationSpec;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)Landroidx/compose/runtime/State;",
        "(Landroidx/compose/ui/geometry/Rect;Landroidx/compose/animation/core/AnimationSpec;Ljava/lang/String;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)Landroidx/compose/runtime/State;",
        "animateSizeAsState",
        "animateSizeAsState-LjSzlW0",
        "animateSizeAsState-YLp_XPw",
        "animateValueAsState",
        "T",
        "V",
        "Landroidx/compose/animation/core/AnimationVector;",
        "typeConverter",
        "Landroidx/compose/animation/core/TwoWayConverter;",
        "(Ljava/lang/Object;Landroidx/compose/animation/core/TwoWayConverter;Landroidx/compose/animation/core/AnimationSpec;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)Landroidx/compose/runtime/State;",
        "(Ljava/lang/Object;Landroidx/compose/animation/core/TwoWayConverter;Landroidx/compose/animation/core/AnimationSpec;Ljava/lang/Object;Ljava/lang/String;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)Landroidx/compose/runtime/State;",
        "animation-core_release",
        "listener",
        "animSpec"
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
.field private static final defaultAnimation:Landroidx/compose/animation/core/SpringSpec;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/animation/core/SpringSpec<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private static final dpDefaultSpring:Landroidx/compose/animation/core/SpringSpec;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/animation/core/SpringSpec<",
            "Landroidx/compose/ui/unit/Dp;",
            ">;"
        }
    .end annotation
.end field

.field private static final intDefaultSpring:Landroidx/compose/animation/core/SpringSpec;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/animation/core/SpringSpec<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final intOffsetDefaultSpring:Landroidx/compose/animation/core/SpringSpec;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/animation/core/SpringSpec<",
            "Landroidx/compose/ui/unit/IntOffset;",
            ">;"
        }
    .end annotation
.end field

.field private static final intSizeDefaultSpring:Landroidx/compose/animation/core/SpringSpec;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/animation/core/SpringSpec<",
            "Landroidx/compose/ui/unit/IntSize;",
            ">;"
        }
    .end annotation
.end field

.field private static final offsetDefaultSpring:Landroidx/compose/animation/core/SpringSpec;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/animation/core/SpringSpec<",
            "Landroidx/compose/ui/geometry/Offset;",
            ">;"
        }
    .end annotation
.end field

.field private static final rectDefaultSpring:Landroidx/compose/animation/core/SpringSpec;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/animation/core/SpringSpec<",
            "Landroidx/compose/ui/geometry/Rect;",
            ">;"
        }
    .end annotation
.end field

.field private static final sizeDefaultSpring:Landroidx/compose/animation/core/SpringSpec;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/animation/core/SpringSpec<",
            "Landroidx/compose/ui/geometry/Size;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v0, 0x7

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 36
    invoke-static {v1, v1, v2, v0, v2}, Landroidx/compose/animation/core/AnimationSpecKt;->spring$default(FFLjava/lang/Object;ILjava/lang/Object;)Landroidx/compose/animation/core/SpringSpec;

    move-result-object v0

    sput-object v0, Landroidx/compose/animation/core/AnimateAsStateKt;->defaultAnimation:Landroidx/compose/animation/core/SpringSpec;

    .line 124
    sget-object v0, Landroidx/compose/ui/unit/Dp;->Companion:Landroidx/compose/ui/unit/Dp$Companion;

    invoke-static {v0}, Landroidx/compose/animation/core/VisibilityThresholdsKt;->getVisibilityThreshold(Landroidx/compose/ui/unit/Dp$Companion;)F

    move-result v0

    invoke-static {v0}, Landroidx/compose/ui/unit/Dp;->box-impl(F)Landroidx/compose/ui/unit/Dp;

    move-result-object v0

    const/4 v3, 0x3

    invoke-static {v1, v1, v0, v3, v2}, Landroidx/compose/animation/core/AnimationSpecKt;->spring$default(FFLjava/lang/Object;ILjava/lang/Object;)Landroidx/compose/animation/core/SpringSpec;

    move-result-object v0

    sput-object v0, Landroidx/compose/animation/core/AnimateAsStateKt;->dpDefaultSpring:Landroidx/compose/animation/core/SpringSpec;

    .line 165
    sget-object v0, Landroidx/compose/ui/geometry/Size;->Companion:Landroidx/compose/ui/geometry/Size$Companion;

    invoke-static {v0}, Landroidx/compose/animation/core/VisibilityThresholdsKt;->getVisibilityThreshold(Landroidx/compose/ui/geometry/Size$Companion;)J

    move-result-wide v4

    invoke-static {v4, v5}, Landroidx/compose/ui/geometry/Size;->box-impl(J)Landroidx/compose/ui/geometry/Size;

    move-result-object v0

    invoke-static {v1, v1, v0, v3, v2}, Landroidx/compose/animation/core/AnimationSpecKt;->spring$default(FFLjava/lang/Object;ILjava/lang/Object;)Landroidx/compose/animation/core/SpringSpec;

    move-result-object v0

    sput-object v0, Landroidx/compose/animation/core/AnimateAsStateKt;->sizeDefaultSpring:Landroidx/compose/animation/core/SpringSpec;

    .line 205
    sget-object v0, Landroidx/compose/ui/geometry/Offset;->Companion:Landroidx/compose/ui/geometry/Offset$Companion;

    invoke-static {v0}, Landroidx/compose/animation/core/VisibilityThresholdsKt;->getVisibilityThreshold(Landroidx/compose/ui/geometry/Offset$Companion;)J

    move-result-wide v4

    invoke-static {v4, v5}, Landroidx/compose/ui/geometry/Offset;->box-impl(J)Landroidx/compose/ui/geometry/Offset;

    move-result-object v0

    invoke-static {v1, v1, v0, v3, v2}, Landroidx/compose/animation/core/AnimationSpecKt;->spring$default(FFLjava/lang/Object;ILjava/lang/Object;)Landroidx/compose/animation/core/SpringSpec;

    move-result-object v0

    sput-object v0, Landroidx/compose/animation/core/AnimateAsStateKt;->offsetDefaultSpring:Landroidx/compose/animation/core/SpringSpec;

    .line 246
    sget-object v0, Landroidx/compose/ui/geometry/Rect;->Companion:Landroidx/compose/ui/geometry/Rect$Companion;

    invoke-static {v0}, Landroidx/compose/animation/core/VisibilityThresholdsKt;->getVisibilityThreshold(Landroidx/compose/ui/geometry/Rect$Companion;)Landroidx/compose/ui/geometry/Rect;

    move-result-object v0

    invoke-static {v1, v1, v0, v3, v2}, Landroidx/compose/animation/core/AnimationSpecKt;->spring$default(FFLjava/lang/Object;ILjava/lang/Object;)Landroidx/compose/animation/core/SpringSpec;

    move-result-object v0

    sput-object v0, Landroidx/compose/animation/core/AnimateAsStateKt;->rectDefaultSpring:Landroidx/compose/animation/core/SpringSpec;

    .line 284
    sget-object v0, Lkotlin/jvm/internal/IntCompanionObject;->INSTANCE:Lkotlin/jvm/internal/IntCompanionObject;

    invoke-static {v0}, Landroidx/compose/animation/core/VisibilityThresholdsKt;->getVisibilityThreshold(Lkotlin/jvm/internal/IntCompanionObject;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v1, v1, v0, v3, v2}, Landroidx/compose/animation/core/AnimationSpecKt;->spring$default(FFLjava/lang/Object;ILjava/lang/Object;)Landroidx/compose/animation/core/SpringSpec;

    move-result-object v0

    sput-object v0, Landroidx/compose/animation/core/AnimateAsStateKt;->intDefaultSpring:Landroidx/compose/animation/core/SpringSpec;

    .line 324
    sget-object v0, Landroidx/compose/ui/unit/IntOffset;->Companion:Landroidx/compose/ui/unit/IntOffset$Companion;

    invoke-static {v0}, Landroidx/compose/animation/core/VisibilityThresholdsKt;->getVisibilityThreshold(Landroidx/compose/ui/unit/IntOffset$Companion;)J

    move-result-wide v4

    invoke-static {v4, v5}, Landroidx/compose/ui/unit/IntOffset;->box-impl(J)Landroidx/compose/ui/unit/IntOffset;

    move-result-object v0

    invoke-static {v1, v1, v0, v3, v2}, Landroidx/compose/animation/core/AnimationSpecKt;->spring$default(FFLjava/lang/Object;ILjava/lang/Object;)Landroidx/compose/animation/core/SpringSpec;

    move-result-object v0

    sput-object v0, Landroidx/compose/animation/core/AnimateAsStateKt;->intOffsetDefaultSpring:Landroidx/compose/animation/core/SpringSpec;

    .line 362
    sget-object v0, Landroidx/compose/ui/unit/IntSize;->Companion:Landroidx/compose/ui/unit/IntSize$Companion;

    invoke-static {v0}, Landroidx/compose/animation/core/VisibilityThresholdsKt;->getVisibilityThreshold(Landroidx/compose/ui/unit/IntSize$Companion;)J

    move-result-wide v4

    invoke-static {v4, v5}, Landroidx/compose/ui/unit/IntSize;->box-impl(J)Landroidx/compose/ui/unit/IntSize;

    move-result-object v0

    invoke-static {v1, v1, v0, v3, v2}, Landroidx/compose/animation/core/AnimationSpecKt;->spring$default(FFLjava/lang/Object;ILjava/lang/Object;)Landroidx/compose/animation/core/SpringSpec;

    move-result-object v0

    sput-object v0, Landroidx/compose/animation/core/AnimateAsStateKt;->intSizeDefaultSpring:Landroidx/compose/animation/core/SpringSpec;

    return-void
.end method

.method public static final synthetic access$animateValueAsState$lambda$4(Landroidx/compose/runtime/State;)Lkotlin/jvm/functions/Function1;
    .locals 0

    .line 1
    invoke-static {p0}, Landroidx/compose/animation/core/AnimateAsStateKt;->animateValueAsState$lambda$4(Landroidx/compose/runtime/State;)Lkotlin/jvm/functions/Function1;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$animateValueAsState$lambda$6(Landroidx/compose/runtime/State;)Landroidx/compose/animation/core/AnimationSpec;
    .locals 0

    .line 1
    invoke-static {p0}, Landroidx/compose/animation/core/AnimateAsStateKt;->animateValueAsState$lambda$6(Landroidx/compose/runtime/State;)Landroidx/compose/animation/core/AnimationSpec;

    move-result-object p0

    return-object p0
.end method

.method public static final animateDpAsState-AjpBEmI(FLandroidx/compose/animation/core/AnimationSpec;Ljava/lang/String;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)Landroidx/compose/runtime/State;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F",
            "Landroidx/compose/animation/core/AnimationSpec<",
            "Landroidx/compose/ui/unit/Dp;",
            ">;",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/compose/ui/unit/Dp;",
            "Lkotlin/Unit;",
            ">;",
            "Landroidx/compose/runtime/Composer;",
            "II)",
            "Landroidx/compose/runtime/State<",
            "Landroidx/compose/ui/unit/Dp;",
            ">;"
        }
    .end annotation

    move-object v9, p4

    move v0, p5

    const v1, -0x53df67ee

    invoke-interface {p4, v1}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v2, "C(animateDpAsState)P(3:c#ui.unit.Dp!1,2)114@5081L165:AnimateAsState.kt#pdpnli"

    invoke-static {p4, v2}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    and-int/lit8 v2, p6, 0x2

    if-eqz v2, :cond_0

    sget-object v2, Landroidx/compose/animation/core/AnimateAsStateKt;->dpDefaultSpring:Landroidx/compose/animation/core/SpringSpec;

    .line 111
    check-cast v2, Landroidx/compose/animation/core/AnimationSpec;

    goto :goto_0

    :cond_0
    move-object v2, p1

    :goto_0
    and-int/lit8 v3, p6, 0x4

    if-eqz v3, :cond_1

    const-string v3, "DpAnimation"

    move-object v4, v3

    goto :goto_1

    :cond_1
    move-object v4, p2

    :goto_1
    and-int/lit8 v3, p6, 0x8

    if-eqz v3, :cond_2

    const/4 v3, 0x0

    move-object v5, v3

    goto :goto_2

    :cond_2
    move-object v5, p3

    .line 113
    :goto_2
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v3

    if-eqz v3, :cond_3

    const/4 v3, -0x1

    const-string v6, "androidx.compose.animation.core.animateDpAsState (AnimateAsState.kt:108)"

    .line 114
    invoke-static {v1, p5, v3, v6}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 116
    :cond_3
    invoke-static {p0}, Landroidx/compose/ui/unit/Dp;->box-impl(F)Landroidx/compose/ui/unit/Dp;

    move-result-object v1

    .line 117
    sget-object v3, Landroidx/compose/ui/unit/Dp;->Companion:Landroidx/compose/ui/unit/Dp$Companion;

    invoke-static {v3}, Landroidx/compose/animation/core/VectorConvertersKt;->getVectorConverter(Landroidx/compose/ui/unit/Dp$Companion;)Landroidx/compose/animation/core/TwoWayConverter;

    move-result-object v3

    const/4 v6, 0x0

    and-int/lit8 v7, v0, 0xe

    shl-int/lit8 v8, v0, 0x3

    and-int/lit16 v8, v8, 0x380

    or-int/2addr v7, v8

    shl-int/lit8 v0, v0, 0x6

    const v8, 0xe000

    and-int/2addr v8, v0

    or-int/2addr v7, v8

    const/high16 v8, 0x70000

    and-int/2addr v0, v8

    or-int/2addr v7, v0

    const/16 v8, 0x8

    move-object v0, v1

    move-object v1, v3

    move-object v3, v6

    move-object v6, p4

    .line 115
    invoke-static/range {v0 .. v8}, Landroidx/compose/animation/core/AnimateAsStateKt;->animateValueAsState(Ljava/lang/Object;Landroidx/compose/animation/core/TwoWayConverter;Landroidx/compose/animation/core/AnimationSpec;Ljava/lang/Object;Ljava/lang/String;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)Landroidx/compose/runtime/State;

    move-result-object v0

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_4
    invoke-interface {p4}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    return-object v0
.end method

.method public static final synthetic animateDpAsState-Kz89ssw(FLandroidx/compose/animation/core/AnimationSpec;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)Landroidx/compose/runtime/State;
    .locals 10
    .annotation runtime Lkotlin/Deprecated;
        level = .enum Lkotlin/DeprecationLevel;->HIDDEN:Lkotlin/DeprecationLevel;
        message = "animate*AsState APIs now have a new label parameter added."
    .end annotation

    const v0, 0x29f7c821

    invoke-interface {p3, v0}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v1, "C(animateDpAsState)P(2:c#ui.unit.Dp)463@20491L142:AnimateAsState.kt#pdpnli"

    invoke-static {p3, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    and-int/lit8 v1, p5, 0x2

    if-eqz v1, :cond_0

    sget-object p1, Landroidx/compose/animation/core/AnimateAsStateKt;->dpDefaultSpring:Landroidx/compose/animation/core/SpringSpec;

    .line 461
    check-cast p1, Landroidx/compose/animation/core/AnimationSpec;

    :cond_0
    move-object v3, p1

    and-int/lit8 p1, p5, 0x4

    if-eqz p1, :cond_1

    const/4 p2, 0x0

    :cond_1
    move-object v6, p2

    .line 462
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, -0x1

    const-string p2, "androidx.compose.animation.core.animateDpAsState (AnimateAsState.kt:458)"

    .line 463
    invoke-static {v0, p4, p1, p2}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 465
    :cond_2
    invoke-static {p0}, Landroidx/compose/ui/unit/Dp;->box-impl(F)Landroidx/compose/ui/unit/Dp;

    move-result-object v1

    .line 466
    sget-object p0, Landroidx/compose/ui/unit/Dp;->Companion:Landroidx/compose/ui/unit/Dp$Companion;

    invoke-static {p0}, Landroidx/compose/animation/core/VectorConvertersKt;->getVectorConverter(Landroidx/compose/ui/unit/Dp$Companion;)Landroidx/compose/animation/core/TwoWayConverter;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    and-int/lit8 p0, p4, 0xe

    shl-int/lit8 p1, p4, 0x3

    and-int/lit16 p1, p1, 0x380

    or-int/2addr p0, p1

    shl-int/lit8 p1, p4, 0x9

    const/high16 p2, 0x70000

    and-int/2addr p1, p2

    or-int v8, p0, p1

    const/16 v9, 0x18

    move-object v7, p3

    .line 464
    invoke-static/range {v1 .. v9}, Landroidx/compose/animation/core/AnimateAsStateKt;->animateValueAsState(Ljava/lang/Object;Landroidx/compose/animation/core/TwoWayConverter;Landroidx/compose/animation/core/AnimationSpec;Ljava/lang/Object;Ljava/lang/String;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)Landroidx/compose/runtime/State;

    move-result-object p0

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_3
    invoke-interface {p3}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    return-object p0
.end method

.method public static final animateFloatAsState(FLandroidx/compose/animation/core/AnimationSpec;FLjava/lang/String;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)Landroidx/compose/runtime/State;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F",
            "Landroidx/compose/animation/core/AnimationSpec<",
            "Ljava/lang/Float;",
            ">;F",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Float;",
            "Lkotlin/Unit;",
            ">;",
            "Landroidx/compose/runtime/Composer;",
            "II)",
            "Landroidx/compose/runtime/State<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    move-object v9, p5

    move/from16 v0, p6

    const v1, 0x27ddbb58

    invoke-interface {p5, v1}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v2, "C(animateFloatAsState)P(3!1,4,2)75@3368L173:AnimateAsState.kt#pdpnli"

    invoke-static {p5, v2}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    and-int/lit8 v2, p7, 0x2

    if-eqz v2, :cond_0

    sget-object v2, Landroidx/compose/animation/core/AnimateAsStateKt;->defaultAnimation:Landroidx/compose/animation/core/SpringSpec;

    .line 65
    check-cast v2, Landroidx/compose/animation/core/AnimationSpec;

    goto :goto_0

    :cond_0
    move-object v2, p1

    :goto_0
    and-int/lit8 v3, p7, 0x4

    if-eqz v3, :cond_1

    const v3, 0x3c23d70a    # 0.01f

    goto :goto_1

    :cond_1
    move v3, p2

    :goto_1
    and-int/lit8 v4, p7, 0x8

    if-eqz v4, :cond_2

    const-string v4, "FloatAnimation"

    goto :goto_2

    :cond_2
    move-object v4, p3

    :goto_2
    and-int/lit8 v5, p7, 0x10

    const/4 v6, 0x0

    if-eqz v5, :cond_3

    move-object v5, v6

    goto :goto_3

    :cond_3
    move-object v5, p4

    .line 68
    :goto_3
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v7

    if-eqz v7, :cond_4

    const/4 v7, -0x1

    const-string v8, "androidx.compose.animation.core.animateFloatAsState (AnimateAsState.kt:62)"

    .line 69
    invoke-static {v1, v0, v7, v8}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_4
    const v1, 0x3226a5fe

    invoke-interface {p5, v1}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v1, "71@3220L83"

    invoke-static {p5, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    sget-object v1, Landroidx/compose/animation/core/AnimateAsStateKt;->defaultAnimation:Landroidx/compose/animation/core/SpringSpec;

    const/4 v7, 0x3

    if-ne v2, v1, :cond_7

    .line 71
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const v2, 0x44faf204

    .line 72
    invoke-interface {p5, v2}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v2, "CC(remember)P(1):Composables.kt#9igjgp"

    invoke-static {p5, v2}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 585
    invoke-interface {p5, v1}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v1

    .line 586
    invoke-interface {p5}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v2

    if-nez v1, :cond_5

    .line 587
    sget-object v1, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v1}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v1

    if-ne v2, v1, :cond_6

    .line 72
    :cond_5
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v2, v2, v1, v7, v6}, Landroidx/compose/animation/core/AnimationSpecKt;->spring$default(FFLjava/lang/Object;ILjava/lang/Object;)Landroidx/compose/animation/core/SpringSpec;

    move-result-object v2

    .line 589
    invoke-interface {p5, v2}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 585
    :cond_6
    invoke-interface {p5}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    check-cast v2, Landroidx/compose/animation/core/AnimationSpec;

    .line 71
    :cond_7
    invoke-interface {p5}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 77
    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    .line 78
    sget-object v6, Lkotlin/jvm/internal/FloatCompanionObject;->INSTANCE:Lkotlin/jvm/internal/FloatCompanionObject;

    invoke-static {v6}, Landroidx/compose/animation/core/VectorConvertersKt;->getVectorConverter(Lkotlin/jvm/internal/FloatCompanionObject;)Landroidx/compose/animation/core/TwoWayConverter;

    move-result-object v6

    .line 80
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    and-int/lit8 v8, v0, 0xe

    shl-int/2addr v0, v7

    and-int/lit16 v7, v0, 0x1c00

    or-int/2addr v7, v8

    const v8, 0xe000

    and-int/2addr v8, v0

    or-int/2addr v7, v8

    const/high16 v8, 0x70000

    and-int/2addr v0, v8

    or-int/2addr v7, v0

    const/4 v8, 0x0

    move-object v0, v1

    move-object v1, v6

    move-object v6, p5

    .line 76
    invoke-static/range {v0 .. v8}, Landroidx/compose/animation/core/AnimateAsStateKt;->animateValueAsState(Ljava/lang/Object;Landroidx/compose/animation/core/TwoWayConverter;Landroidx/compose/animation/core/AnimationSpec;Ljava/lang/Object;Ljava/lang/String;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)Landroidx/compose/runtime/State;

    move-result-object v0

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_8
    invoke-interface {p5}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    return-object v0
.end method

.method public static final synthetic animateFloatAsState(FLandroidx/compose/animation/core/AnimationSpec;FLkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)Landroidx/compose/runtime/State;
    .locals 9
    .annotation runtime Lkotlin/Deprecated;
        level = .enum Lkotlin/DeprecationLevel;->HIDDEN:Lkotlin/DeprecationLevel;
        message = "animate*AsState APIs now have a new label parameter added."
    .end annotation

    const v0, 0x4111279b

    invoke-interface {p4, v0}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v1, "C(animateFloatAsState)P(2!1,3)446@20047L143:AnimateAsState.kt#pdpnli"

    invoke-static {p4, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    and-int/lit8 v1, p6, 0x2

    if-eqz v1, :cond_0

    sget-object p1, Landroidx/compose/animation/core/AnimateAsStateKt;->defaultAnimation:Landroidx/compose/animation/core/SpringSpec;

    .line 444
    check-cast p1, Landroidx/compose/animation/core/AnimationSpec;

    :cond_0
    move-object v2, p1

    and-int/lit8 p1, p6, 0x4

    if-eqz p1, :cond_1

    const p2, 0x3c23d70a    # 0.01f

    :cond_1
    move v3, p2

    and-int/lit8 p1, p6, 0x8

    if-eqz p1, :cond_2

    const/4 p3, 0x0

    :cond_2
    move-object v5, p3

    .line 446
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 p1, -0x1

    const-string p2, "androidx.compose.animation.core.animateFloatAsState (AnimateAsState.kt:441)"

    .line 447
    invoke-static {v0, p5, p1, p2}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_3
    const/4 v4, 0x0

    and-int/lit8 p1, p5, 0xe

    and-int/lit8 p2, p5, 0x70

    or-int/2addr p1, p2

    and-int/lit16 p2, p5, 0x380

    or-int/2addr p1, p2

    shl-int/lit8 p2, p5, 0x3

    const p3, 0xe000

    and-int/2addr p2, p3

    or-int v7, p1, p2

    const/16 v8, 0x8

    move v1, p0

    move-object v6, p4

    invoke-static/range {v1 .. v8}, Landroidx/compose/animation/core/AnimateAsStateKt;->animateFloatAsState(FLandroidx/compose/animation/core/AnimationSpec;FLjava/lang/String;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)Landroidx/compose/runtime/State;

    move-result-object p0

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_4
    invoke-interface {p4}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    return-object p0
.end method

.method public static final animateIntAsState(ILandroidx/compose/animation/core/AnimationSpec;Ljava/lang/String;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)Landroidx/compose/runtime/State;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroidx/compose/animation/core/AnimationSpec<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;",
            "Landroidx/compose/runtime/Composer;",
            "II)",
            "Landroidx/compose/runtime/State<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    move-object v9, p4

    move v0, p5

    const v1, 0x1983e5e8

    invoke-interface {p4, v1}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v2, "C(animateIntAsState)P(3!1,2)274@12363L166:AnimateAsState.kt#pdpnli"

    invoke-static {p4, v2}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    and-int/lit8 v2, p6, 0x2

    if-eqz v2, :cond_0

    sget-object v2, Landroidx/compose/animation/core/AnimateAsStateKt;->intDefaultSpring:Landroidx/compose/animation/core/SpringSpec;

    .line 271
    check-cast v2, Landroidx/compose/animation/core/AnimationSpec;

    goto :goto_0

    :cond_0
    move-object v2, p1

    :goto_0
    and-int/lit8 v3, p6, 0x4

    if-eqz v3, :cond_1

    const-string v3, "IntAnimation"

    move-object v4, v3

    goto :goto_1

    :cond_1
    move-object v4, p2

    :goto_1
    and-int/lit8 v3, p6, 0x8

    if-eqz v3, :cond_2

    const/4 v3, 0x0

    move-object v5, v3

    goto :goto_2

    :cond_2
    move-object v5, p3

    .line 273
    :goto_2
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v3

    if-eqz v3, :cond_3

    const/4 v3, -0x1

    const-string v6, "androidx.compose.animation.core.animateIntAsState (AnimateAsState.kt:268)"

    .line 274
    invoke-static {v1, p5, v3, v6}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 276
    :cond_3
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 277
    sget-object v3, Lkotlin/jvm/internal/IntCompanionObject;->INSTANCE:Lkotlin/jvm/internal/IntCompanionObject;

    invoke-static {v3}, Landroidx/compose/animation/core/VectorConvertersKt;->getVectorConverter(Lkotlin/jvm/internal/IntCompanionObject;)Landroidx/compose/animation/core/TwoWayConverter;

    move-result-object v3

    const/4 v6, 0x0

    and-int/lit8 v7, v0, 0xe

    shl-int/lit8 v8, v0, 0x3

    and-int/lit16 v8, v8, 0x380

    or-int/2addr v7, v8

    shl-int/lit8 v0, v0, 0x6

    const v8, 0xe000

    and-int/2addr v8, v0

    or-int/2addr v7, v8

    const/high16 v8, 0x70000

    and-int/2addr v0, v8

    or-int/2addr v7, v0

    const/16 v8, 0x8

    move-object v0, v1

    move-object v1, v3

    move-object v3, v6

    move-object v6, p4

    .line 275
    invoke-static/range {v0 .. v8}, Landroidx/compose/animation/core/AnimateAsStateKt;->animateValueAsState(Ljava/lang/Object;Landroidx/compose/animation/core/TwoWayConverter;Landroidx/compose/animation/core/AnimationSpec;Ljava/lang/Object;Ljava/lang/String;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)Landroidx/compose/runtime/State;

    move-result-object v0

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_4
    invoke-interface {p4}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    return-object v0
.end method

.method public static final synthetic animateIntAsState(ILandroidx/compose/animation/core/AnimationSpec;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)Landroidx/compose/runtime/State;
    .locals 10
    .annotation runtime Lkotlin/Deprecated;
        level = .enum Lkotlin/DeprecationLevel;->HIDDEN:Lkotlin/DeprecationLevel;
        message = "animate*AsState APIs now have a new label parameter added."
    .end annotation

    const v0, -0x323940f5    # -4.1680112E8f

    invoke-interface {p3, v0}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v1, "C(animateIntAsState)P(2)529@22285L119:AnimateAsState.kt#pdpnli"

    invoke-static {p3, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    and-int/lit8 v1, p5, 0x2

    if-eqz v1, :cond_0

    sget-object p1, Landroidx/compose/animation/core/AnimateAsStateKt;->intDefaultSpring:Landroidx/compose/animation/core/SpringSpec;

    .line 527
    check-cast p1, Landroidx/compose/animation/core/AnimationSpec;

    :cond_0
    move-object v3, p1

    and-int/lit8 p1, p5, 0x4

    if-eqz p1, :cond_1

    const/4 p2, 0x0

    :cond_1
    move-object v6, p2

    .line 528
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, -0x1

    const-string p2, "androidx.compose.animation.core.animateIntAsState (AnimateAsState.kt:524)"

    .line 529
    invoke-static {v0, p4, p1, p2}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 531
    :cond_2
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object p0, Lkotlin/jvm/internal/IntCompanionObject;->INSTANCE:Lkotlin/jvm/internal/IntCompanionObject;

    invoke-static {p0}, Landroidx/compose/animation/core/VectorConvertersKt;->getVectorConverter(Lkotlin/jvm/internal/IntCompanionObject;)Landroidx/compose/animation/core/TwoWayConverter;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    and-int/lit8 p0, p4, 0xe

    shl-int/lit8 p1, p4, 0x3

    and-int/lit16 p1, p1, 0x380

    or-int/2addr p0, p1

    shl-int/lit8 p1, p4, 0x9

    const/high16 p2, 0x70000

    and-int/2addr p1, p2

    or-int v8, p0, p1

    const/16 v9, 0x18

    move-object v7, p3

    .line 530
    invoke-static/range {v1 .. v9}, Landroidx/compose/animation/core/AnimateAsStateKt;->animateValueAsState(Ljava/lang/Object;Landroidx/compose/animation/core/TwoWayConverter;Landroidx/compose/animation/core/AnimationSpec;Ljava/lang/Object;Ljava/lang/String;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)Landroidx/compose/runtime/State;

    move-result-object p0

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_3
    invoke-interface {p3}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    return-object p0
.end method

.method public static final synthetic animateIntOffsetAsState-8f6pmRE(JLandroidx/compose/animation/core/AnimationSpec;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)Landroidx/compose/runtime/State;
    .locals 10
    .annotation runtime Lkotlin/Deprecated;
        level = .enum Lkotlin/DeprecationLevel;->HIDDEN:Lkotlin/DeprecationLevel;
        message = "animate*AsState APIs now have a new label parameter added."
    .end annotation

    move-object v9, p4

    move v0, p5

    const v1, 0x3c38112b

    invoke-interface {p4, v1}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v2, "C(animateIntOffsetAsState)P(2:c#ui.unit.IntOffset)544@22749L125:AnimateAsState.kt#pdpnli"

    invoke-static {p4, v2}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    and-int/lit8 v2, p6, 0x2

    if-eqz v2, :cond_0

    sget-object v2, Landroidx/compose/animation/core/AnimateAsStateKt;->intOffsetDefaultSpring:Landroidx/compose/animation/core/SpringSpec;

    .line 542
    check-cast v2, Landroidx/compose/animation/core/AnimationSpec;

    goto :goto_0

    :cond_0
    move-object v2, p2

    :goto_0
    and-int/lit8 v3, p6, 0x4

    if-eqz v3, :cond_1

    const/4 v3, 0x0

    move-object v5, v3

    goto :goto_1

    :cond_1
    move-object v5, p3

    .line 543
    :goto_1
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v3, -0x1

    const-string v4, "androidx.compose.animation.core.animateIntOffsetAsState (AnimateAsState.kt:539)"

    .line 544
    invoke-static {v1, p5, v3, v4}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 546
    :cond_2
    invoke-static {p0, p1}, Landroidx/compose/ui/unit/IntOffset;->box-impl(J)Landroidx/compose/ui/unit/IntOffset;

    move-result-object v1

    sget-object v3, Landroidx/compose/ui/unit/IntOffset;->Companion:Landroidx/compose/ui/unit/IntOffset$Companion;

    invoke-static {v3}, Landroidx/compose/animation/core/VectorConvertersKt;->getVectorConverter(Landroidx/compose/ui/unit/IntOffset$Companion;)Landroidx/compose/animation/core/TwoWayConverter;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v6, 0x0

    and-int/lit8 v7, v0, 0xe

    shl-int/lit8 v8, v0, 0x3

    and-int/lit16 v8, v8, 0x380

    or-int/2addr v7, v8

    shl-int/lit8 v0, v0, 0x9

    const/high16 v8, 0x70000

    and-int/2addr v0, v8

    or-int/2addr v7, v0

    const/16 v8, 0x18

    move-object v0, v1

    move-object v1, v3

    move-object v3, v4

    move-object v4, v6

    move-object v6, p4

    .line 545
    invoke-static/range {v0 .. v8}, Landroidx/compose/animation/core/AnimateAsStateKt;->animateValueAsState(Ljava/lang/Object;Landroidx/compose/animation/core/TwoWayConverter;Landroidx/compose/animation/core/AnimationSpec;Ljava/lang/Object;Ljava/lang/String;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)Landroidx/compose/runtime/State;

    move-result-object v0

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_3
    invoke-interface {p4}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    return-object v0
.end method

.method public static final animateIntOffsetAsState-HyPO7BM(JLandroidx/compose/animation/core/AnimationSpec;Ljava/lang/String;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)Landroidx/compose/runtime/State;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Landroidx/compose/animation/core/AnimationSpec<",
            "Landroidx/compose/ui/unit/IntOffset;",
            ">;",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/compose/ui/unit/IntOffset;",
            "Lkotlin/Unit;",
            ">;",
            "Landroidx/compose/runtime/Composer;",
            "II)",
            "Landroidx/compose/runtime/State<",
            "Landroidx/compose/ui/unit/IntOffset;",
            ">;"
        }
    .end annotation

    move-object v9, p5

    move/from16 v0, p6

    const v1, -0x29881038

    invoke-interface {p5, v1}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v2, "C(animateIntOffsetAsState)P(3:c#ui.unit.IntOffset!1,2)314@14224L172:AnimateAsState.kt#pdpnli"

    invoke-static {p5, v2}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    and-int/lit8 v2, p7, 0x2

    if-eqz v2, :cond_0

    sget-object v2, Landroidx/compose/animation/core/AnimateAsStateKt;->intOffsetDefaultSpring:Landroidx/compose/animation/core/SpringSpec;

    .line 311
    check-cast v2, Landroidx/compose/animation/core/AnimationSpec;

    goto :goto_0

    :cond_0
    move-object v2, p2

    :goto_0
    and-int/lit8 v3, p7, 0x4

    if-eqz v3, :cond_1

    const-string v3, "IntOffsetAnimation"

    move-object v4, v3

    goto :goto_1

    :cond_1
    move-object v4, p3

    :goto_1
    and-int/lit8 v3, p7, 0x8

    if-eqz v3, :cond_2

    const/4 v3, 0x0

    move-object v5, v3

    goto :goto_2

    :cond_2
    move-object v5, p4

    .line 313
    :goto_2
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v3

    if-eqz v3, :cond_3

    const/4 v3, -0x1

    const-string v6, "androidx.compose.animation.core.animateIntOffsetAsState (AnimateAsState.kt:308)"

    .line 314
    invoke-static {v1, v0, v3, v6}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 316
    :cond_3
    invoke-static {p0, p1}, Landroidx/compose/ui/unit/IntOffset;->box-impl(J)Landroidx/compose/ui/unit/IntOffset;

    move-result-object v1

    .line 317
    sget-object v3, Landroidx/compose/ui/unit/IntOffset;->Companion:Landroidx/compose/ui/unit/IntOffset$Companion;

    invoke-static {v3}, Landroidx/compose/animation/core/VectorConvertersKt;->getVectorConverter(Landroidx/compose/ui/unit/IntOffset$Companion;)Landroidx/compose/animation/core/TwoWayConverter;

    move-result-object v3

    const/4 v6, 0x0

    and-int/lit8 v7, v0, 0xe

    shl-int/lit8 v8, v0, 0x3

    and-int/lit16 v8, v8, 0x380

    or-int/2addr v7, v8

    shl-int/lit8 v0, v0, 0x6

    const v8, 0xe000

    and-int/2addr v8, v0

    or-int/2addr v7, v8

    const/high16 v8, 0x70000

    and-int/2addr v0, v8

    or-int/2addr v7, v0

    const/16 v8, 0x8

    move-object v0, v1

    move-object v1, v3

    move-object v3, v6

    move-object v6, p5

    .line 315
    invoke-static/range {v0 .. v8}, Landroidx/compose/animation/core/AnimateAsStateKt;->animateValueAsState(Ljava/lang/Object;Landroidx/compose/animation/core/TwoWayConverter;Landroidx/compose/animation/core/AnimationSpec;Ljava/lang/Object;Ljava/lang/String;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)Landroidx/compose/runtime/State;

    move-result-object v0

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_4
    invoke-interface {p5}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    return-object v0
.end method

.method public static final animateIntSizeAsState-4goxYXU(JLandroidx/compose/animation/core/AnimationSpec;Ljava/lang/String;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)Landroidx/compose/runtime/State;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Landroidx/compose/animation/core/AnimationSpec<",
            "Landroidx/compose/ui/unit/IntSize;",
            ">;",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/compose/ui/unit/IntSize;",
            "Lkotlin/Unit;",
            ">;",
            "Landroidx/compose/runtime/Composer;",
            "II)",
            "Landroidx/compose/runtime/State<",
            "Landroidx/compose/ui/unit/IntSize;",
            ">;"
        }
    .end annotation

    move-object v9, p5

    move/from16 v0, p6

    const v1, 0x22b968c8

    invoke-interface {p5, v1}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v2, "C(animateIntSizeAsState)P(3:c#ui.unit.IntSize!1,2)352@16009L170:AnimateAsState.kt#pdpnli"

    invoke-static {p5, v2}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    and-int/lit8 v2, p7, 0x2

    if-eqz v2, :cond_0

    sget-object v2, Landroidx/compose/animation/core/AnimateAsStateKt;->intSizeDefaultSpring:Landroidx/compose/animation/core/SpringSpec;

    .line 349
    check-cast v2, Landroidx/compose/animation/core/AnimationSpec;

    goto :goto_0

    :cond_0
    move-object v2, p2

    :goto_0
    and-int/lit8 v3, p7, 0x4

    if-eqz v3, :cond_1

    const-string v3, "IntSizeAnimation"

    move-object v4, v3

    goto :goto_1

    :cond_1
    move-object v4, p3

    :goto_1
    and-int/lit8 v3, p7, 0x8

    if-eqz v3, :cond_2

    const/4 v3, 0x0

    move-object v5, v3

    goto :goto_2

    :cond_2
    move-object v5, p4

    .line 351
    :goto_2
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v3

    if-eqz v3, :cond_3

    const/4 v3, -0x1

    const-string v6, "androidx.compose.animation.core.animateIntSizeAsState (AnimateAsState.kt:346)"

    .line 352
    invoke-static {v1, v0, v3, v6}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 354
    :cond_3
    invoke-static {p0, p1}, Landroidx/compose/ui/unit/IntSize;->box-impl(J)Landroidx/compose/ui/unit/IntSize;

    move-result-object v1

    .line 355
    sget-object v3, Landroidx/compose/ui/unit/IntSize;->Companion:Landroidx/compose/ui/unit/IntSize$Companion;

    invoke-static {v3}, Landroidx/compose/animation/core/VectorConvertersKt;->getVectorConverter(Landroidx/compose/ui/unit/IntSize$Companion;)Landroidx/compose/animation/core/TwoWayConverter;

    move-result-object v3

    const/4 v6, 0x0

    and-int/lit8 v7, v0, 0xe

    shl-int/lit8 v8, v0, 0x3

    and-int/lit16 v8, v8, 0x380

    or-int/2addr v7, v8

    shl-int/lit8 v0, v0, 0x6

    const v8, 0xe000

    and-int/2addr v8, v0

    or-int/2addr v7, v8

    const/high16 v8, 0x70000

    and-int/2addr v0, v8

    or-int/2addr v7, v0

    const/16 v8, 0x8

    move-object v0, v1

    move-object v1, v3

    move-object v3, v6

    move-object v6, p5

    .line 353
    invoke-static/range {v0 .. v8}, Landroidx/compose/animation/core/AnimateAsStateKt;->animateValueAsState(Ljava/lang/Object;Landroidx/compose/animation/core/TwoWayConverter;Landroidx/compose/animation/core/AnimationSpec;Ljava/lang/Object;Ljava/lang/String;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)Landroidx/compose/runtime/State;

    move-result-object v0

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_4
    invoke-interface {p5}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    return-object v0
.end method

.method public static final synthetic animateIntSizeAsState-zTRF_AQ(JLandroidx/compose/animation/core/AnimationSpec;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)Landroidx/compose/runtime/State;
    .locals 10
    .annotation runtime Lkotlin/Deprecated;
        level = .enum Lkotlin/DeprecationLevel;->HIDDEN:Lkotlin/DeprecationLevel;
        message = "animate*AsState APIs now have a new label parameter added."
    .end annotation

    move-object v9, p4

    move v0, p5

    const v1, -0x684347d5

    invoke-interface {p4, v1}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v2, "C(animateIntSizeAsState)P(2:c#ui.unit.IntSize)559@23207L123:AnimateAsState.kt#pdpnli"

    invoke-static {p4, v2}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    and-int/lit8 v2, p6, 0x2

    if-eqz v2, :cond_0

    sget-object v2, Landroidx/compose/animation/core/AnimateAsStateKt;->intSizeDefaultSpring:Landroidx/compose/animation/core/SpringSpec;

    .line 557
    check-cast v2, Landroidx/compose/animation/core/AnimationSpec;

    goto :goto_0

    :cond_0
    move-object v2, p2

    :goto_0
    and-int/lit8 v3, p6, 0x4

    if-eqz v3, :cond_1

    const/4 v3, 0x0

    move-object v5, v3

    goto :goto_1

    :cond_1
    move-object v5, p3

    .line 558
    :goto_1
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v3, -0x1

    const-string v4, "androidx.compose.animation.core.animateIntSizeAsState (AnimateAsState.kt:554)"

    .line 559
    invoke-static {v1, p5, v3, v4}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 561
    :cond_2
    invoke-static {p0, p1}, Landroidx/compose/ui/unit/IntSize;->box-impl(J)Landroidx/compose/ui/unit/IntSize;

    move-result-object v1

    sget-object v3, Landroidx/compose/ui/unit/IntSize;->Companion:Landroidx/compose/ui/unit/IntSize$Companion;

    invoke-static {v3}, Landroidx/compose/animation/core/VectorConvertersKt;->getVectorConverter(Landroidx/compose/ui/unit/IntSize$Companion;)Landroidx/compose/animation/core/TwoWayConverter;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v6, 0x0

    and-int/lit8 v7, v0, 0xe

    shl-int/lit8 v8, v0, 0x3

    and-int/lit16 v8, v8, 0x380

    or-int/2addr v7, v8

    shl-int/lit8 v0, v0, 0x9

    const/high16 v8, 0x70000

    and-int/2addr v0, v8

    or-int/2addr v7, v0

    const/16 v8, 0x18

    move-object v0, v1

    move-object v1, v3

    move-object v3, v4

    move-object v4, v6

    move-object v6, p4

    .line 560
    invoke-static/range {v0 .. v8}, Landroidx/compose/animation/core/AnimateAsStateKt;->animateValueAsState(Ljava/lang/Object;Landroidx/compose/animation/core/TwoWayConverter;Landroidx/compose/animation/core/AnimationSpec;Ljava/lang/Object;Ljava/lang/String;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)Landroidx/compose/runtime/State;

    move-result-object v0

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_3
    invoke-interface {p4}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    return-object v0
.end method

.method public static final animateOffsetAsState-7362WCg(JLandroidx/compose/animation/core/AnimationSpec;Ljava/lang/String;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)Landroidx/compose/runtime/State;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Landroidx/compose/animation/core/AnimationSpec<",
            "Landroidx/compose/ui/geometry/Offset;",
            ">;",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/compose/ui/geometry/Offset;",
            "Lkotlin/Unit;",
            ">;",
            "Landroidx/compose/runtime/Composer;",
            "II)",
            "Landroidx/compose/runtime/State<",
            "Landroidx/compose/ui/geometry/Offset;",
            ">;"
        }
    .end annotation

    move-object v9, p5

    move/from16 v0, p6

    const v1, 0x15551260

    invoke-interface {p5, v1}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v2, "C(animateOffsetAsState)P(3:c#ui.geometry.Offset!1,2)195@8761L169:AnimateAsState.kt#pdpnli"

    invoke-static {p5, v2}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    and-int/lit8 v2, p7, 0x2

    if-eqz v2, :cond_0

    sget-object v2, Landroidx/compose/animation/core/AnimateAsStateKt;->offsetDefaultSpring:Landroidx/compose/animation/core/SpringSpec;

    .line 192
    check-cast v2, Landroidx/compose/animation/core/AnimationSpec;

    goto :goto_0

    :cond_0
    move-object v2, p2

    :goto_0
    and-int/lit8 v3, p7, 0x4

    if-eqz v3, :cond_1

    const-string v3, "OffsetAnimation"

    move-object v4, v3

    goto :goto_1

    :cond_1
    move-object v4, p3

    :goto_1
    and-int/lit8 v3, p7, 0x8

    if-eqz v3, :cond_2

    const/4 v3, 0x0

    move-object v5, v3

    goto :goto_2

    :cond_2
    move-object v5, p4

    .line 194
    :goto_2
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v3

    if-eqz v3, :cond_3

    const/4 v3, -0x1

    const-string v6, "androidx.compose.animation.core.animateOffsetAsState (AnimateAsState.kt:189)"

    .line 195
    invoke-static {v1, v0, v3, v6}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 197
    :cond_3
    invoke-static {p0, p1}, Landroidx/compose/ui/geometry/Offset;->box-impl(J)Landroidx/compose/ui/geometry/Offset;

    move-result-object v1

    .line 198
    sget-object v3, Landroidx/compose/ui/geometry/Offset;->Companion:Landroidx/compose/ui/geometry/Offset$Companion;

    invoke-static {v3}, Landroidx/compose/animation/core/VectorConvertersKt;->getVectorConverter(Landroidx/compose/ui/geometry/Offset$Companion;)Landroidx/compose/animation/core/TwoWayConverter;

    move-result-object v3

    const/4 v6, 0x0

    and-int/lit8 v7, v0, 0xe

    shl-int/lit8 v8, v0, 0x3

    and-int/lit16 v8, v8, 0x380

    or-int/2addr v7, v8

    shl-int/lit8 v0, v0, 0x6

    const v8, 0xe000

    and-int/2addr v8, v0

    or-int/2addr v7, v8

    const/high16 v8, 0x70000

    and-int/2addr v0, v8

    or-int/2addr v7, v0

    const/16 v8, 0x8

    move-object v0, v1

    move-object v1, v3

    move-object v3, v6

    move-object v6, p5

    .line 196
    invoke-static/range {v0 .. v8}, Landroidx/compose/animation/core/AnimateAsStateKt;->animateValueAsState(Ljava/lang/Object;Landroidx/compose/animation/core/TwoWayConverter;Landroidx/compose/animation/core/AnimationSpec;Ljava/lang/Object;Ljava/lang/String;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)Landroidx/compose/runtime/State;

    move-result-object v0

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_4
    invoke-interface {p5}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    return-object v0
.end method

.method public static final synthetic animateOffsetAsState-N6fFfp4(JLandroidx/compose/animation/core/AnimationSpec;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)Landroidx/compose/runtime/State;
    .locals 10
    .annotation runtime Lkotlin/Deprecated;
        level = .enum Lkotlin/DeprecationLevel;->HIDDEN:Lkotlin/DeprecationLevel;
        message = "animate*AsState APIs now have a new label parameter added."
    .end annotation

    move-object v9, p4

    move v0, p5

    const v1, -0x1b35d66d

    invoke-interface {p4, v1}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v2, "C(animateOffsetAsState)P(2:c#ui.geometry.Offset)499@21419L122:AnimateAsState.kt#pdpnli"

    invoke-static {p4, v2}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    and-int/lit8 v2, p6, 0x2

    if-eqz v2, :cond_0

    sget-object v2, Landroidx/compose/animation/core/AnimateAsStateKt;->offsetDefaultSpring:Landroidx/compose/animation/core/SpringSpec;

    .line 497
    check-cast v2, Landroidx/compose/animation/core/AnimationSpec;

    goto :goto_0

    :cond_0
    move-object v2, p2

    :goto_0
    and-int/lit8 v3, p6, 0x4

    if-eqz v3, :cond_1

    const/4 v3, 0x0

    move-object v5, v3

    goto :goto_1

    :cond_1
    move-object v5, p3

    .line 498
    :goto_1
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v3, -0x1

    const-string v4, "androidx.compose.animation.core.animateOffsetAsState (AnimateAsState.kt:494)"

    .line 499
    invoke-static {v1, p5, v3, v4}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 501
    :cond_2
    invoke-static {p0, p1}, Landroidx/compose/ui/geometry/Offset;->box-impl(J)Landroidx/compose/ui/geometry/Offset;

    move-result-object v1

    sget-object v3, Landroidx/compose/ui/geometry/Offset;->Companion:Landroidx/compose/ui/geometry/Offset$Companion;

    invoke-static {v3}, Landroidx/compose/animation/core/VectorConvertersKt;->getVectorConverter(Landroidx/compose/ui/geometry/Offset$Companion;)Landroidx/compose/animation/core/TwoWayConverter;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v6, 0x0

    and-int/lit8 v7, v0, 0xe

    shl-int/lit8 v8, v0, 0x3

    and-int/lit16 v8, v8, 0x380

    or-int/2addr v7, v8

    shl-int/lit8 v0, v0, 0x9

    const/high16 v8, 0x70000

    and-int/2addr v0, v8

    or-int/2addr v7, v0

    const/16 v8, 0x18

    move-object v0, v1

    move-object v1, v3

    move-object v3, v4

    move-object v4, v6

    move-object v6, p4

    .line 500
    invoke-static/range {v0 .. v8}, Landroidx/compose/animation/core/AnimateAsStateKt;->animateValueAsState(Ljava/lang/Object;Landroidx/compose/animation/core/TwoWayConverter;Landroidx/compose/animation/core/AnimationSpec;Ljava/lang/Object;Ljava/lang/String;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)Landroidx/compose/runtime/State;

    move-result-object v0

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_3
    invoke-interface {p4}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    return-object v0
.end method

.method public static final animateRectAsState(Landroidx/compose/ui/geometry/Rect;Landroidx/compose/animation/core/AnimationSpec;Ljava/lang/String;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)Landroidx/compose/runtime/State;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/geometry/Rect;",
            "Landroidx/compose/animation/core/AnimationSpec<",
            "Landroidx/compose/ui/geometry/Rect;",
            ">;",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/compose/ui/geometry/Rect;",
            "Lkotlin/Unit;",
            ">;",
            "Landroidx/compose/runtime/Composer;",
            "II)",
            "Landroidx/compose/runtime/State<",
            "Landroidx/compose/ui/geometry/Rect;",
            ">;"
        }
    .end annotation

    move-object v9, p4

    move v0, p5

    const-string/jumbo v1, "targetValue"

    move-object v2, p0

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const v1, 0x1ff3ac02

    invoke-interface {p4, v1}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v3, "C(animateRectAsState)P(3!1,2)236@10633L167:AnimateAsState.kt#pdpnli"

    invoke-static {p4, v3}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    and-int/lit8 v3, p6, 0x2

    if-eqz v3, :cond_0

    sget-object v3, Landroidx/compose/animation/core/AnimateAsStateKt;->rectDefaultSpring:Landroidx/compose/animation/core/SpringSpec;

    .line 233
    check-cast v3, Landroidx/compose/animation/core/AnimationSpec;

    goto :goto_0

    :cond_0
    move-object v3, p1

    :goto_0
    and-int/lit8 v4, p6, 0x4

    if-eqz v4, :cond_1

    const-string v4, "RectAnimation"

    goto :goto_1

    :cond_1
    move-object v4, p2

    :goto_1
    and-int/lit8 v5, p6, 0x8

    if-eqz v5, :cond_2

    const/4 v5, 0x0

    goto :goto_2

    :cond_2
    move-object v5, p3

    .line 235
    :goto_2
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v6

    if-eqz v6, :cond_3

    const/4 v6, -0x1

    const-string v7, "androidx.compose.animation.core.animateRectAsState (AnimateAsState.kt:230)"

    .line 236
    invoke-static {v1, p5, v6, v7}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 239
    :cond_3
    sget-object v1, Landroidx/compose/ui/geometry/Rect;->Companion:Landroidx/compose/ui/geometry/Rect$Companion;

    invoke-static {v1}, Landroidx/compose/animation/core/VectorConvertersKt;->getVectorConverter(Landroidx/compose/ui/geometry/Rect$Companion;)Landroidx/compose/animation/core/TwoWayConverter;

    move-result-object v1

    const/4 v6, 0x0

    and-int/lit8 v7, v0, 0xe

    shl-int/lit8 v8, v0, 0x3

    and-int/lit16 v8, v8, 0x380

    or-int/2addr v7, v8

    shl-int/lit8 v0, v0, 0x6

    const v8, 0xe000

    and-int/2addr v8, v0

    or-int/2addr v7, v8

    const/high16 v8, 0x70000

    and-int/2addr v0, v8

    or-int/2addr v7, v0

    const/16 v8, 0x8

    move-object v0, p0

    move-object v2, v3

    move-object v3, v6

    move-object v6, p4

    .line 237
    invoke-static/range {v0 .. v8}, Landroidx/compose/animation/core/AnimateAsStateKt;->animateValueAsState(Ljava/lang/Object;Landroidx/compose/animation/core/TwoWayConverter;Landroidx/compose/animation/core/AnimationSpec;Ljava/lang/Object;Ljava/lang/String;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)Landroidx/compose/runtime/State;

    move-result-object v0

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_4
    invoke-interface {p4}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    return-object v0
.end method

.method public static final synthetic animateRectAsState(Landroidx/compose/ui/geometry/Rect;Landroidx/compose/animation/core/AnimationSpec;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)Landroidx/compose/runtime/State;
    .locals 10
    .annotation runtime Lkotlin/Deprecated;
        level = .enum Lkotlin/DeprecationLevel;->HIDDEN:Lkotlin/DeprecationLevel;
        message = "animate*AsState APIs now have a new label parameter added."
    .end annotation

    const-string/jumbo v0, "targetValue"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const v0, -0x2ea5bdcf

    invoke-interface {p3, v0}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v1, "C(animateRectAsState)P(2)514@21856L120:AnimateAsState.kt#pdpnli"

    invoke-static {p3, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    and-int/lit8 v1, p5, 0x2

    if-eqz v1, :cond_0

    sget-object p1, Landroidx/compose/animation/core/AnimateAsStateKt;->rectDefaultSpring:Landroidx/compose/animation/core/SpringSpec;

    .line 512
    check-cast p1, Landroidx/compose/animation/core/AnimationSpec;

    :cond_0
    move-object v3, p1

    and-int/lit8 p1, p5, 0x4

    if-eqz p1, :cond_1

    const/4 p2, 0x0

    :cond_1
    move-object v6, p2

    .line 513
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, -0x1

    const-string p2, "androidx.compose.animation.core.animateRectAsState (AnimateAsState.kt:509)"

    .line 514
    invoke-static {v0, p4, p1, p2}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 516
    :cond_2
    sget-object p1, Landroidx/compose/ui/geometry/Rect;->Companion:Landroidx/compose/ui/geometry/Rect$Companion;

    invoke-static {p1}, Landroidx/compose/animation/core/VectorConvertersKt;->getVectorConverter(Landroidx/compose/ui/geometry/Rect$Companion;)Landroidx/compose/animation/core/TwoWayConverter;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    and-int/lit8 p1, p4, 0xe

    shl-int/lit8 p2, p4, 0x3

    and-int/lit16 p2, p2, 0x380

    or-int/2addr p1, p2

    shl-int/lit8 p2, p4, 0x9

    const/high16 p4, 0x70000

    and-int/2addr p2, p4

    or-int v8, p1, p2

    const/16 v9, 0x18

    move-object v1, p0

    move-object v7, p3

    .line 515
    invoke-static/range {v1 .. v9}, Landroidx/compose/animation/core/AnimateAsStateKt;->animateValueAsState(Ljava/lang/Object;Landroidx/compose/animation/core/TwoWayConverter;Landroidx/compose/animation/core/AnimationSpec;Ljava/lang/Object;Ljava/lang/String;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)Landroidx/compose/runtime/State;

    move-result-object p0

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_3
    invoke-interface {p3}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    return-object p0
.end method

.method public static final synthetic animateSizeAsState-LjSzlW0(JLandroidx/compose/animation/core/AnimationSpec;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)Landroidx/compose/runtime/State;
    .locals 10
    .annotation runtime Lkotlin/Deprecated;
        level = .enum Lkotlin/DeprecationLevel;->HIDDEN:Lkotlin/DeprecationLevel;
        message = "animate*AsState APIs now have a new label parameter added."
    .end annotation

    move-object v9, p4

    move v0, p5

    const v1, 0x342aaeb7

    invoke-interface {p4, v1}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v2, "C(animateSizeAsState)P(2:c#ui.geometry.Size)481@20948L144:AnimateAsState.kt#pdpnli"

    invoke-static {p4, v2}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    and-int/lit8 v2, p6, 0x2

    if-eqz v2, :cond_0

    sget-object v2, Landroidx/compose/animation/core/AnimateAsStateKt;->sizeDefaultSpring:Landroidx/compose/animation/core/SpringSpec;

    .line 479
    check-cast v2, Landroidx/compose/animation/core/AnimationSpec;

    goto :goto_0

    :cond_0
    move-object v2, p2

    :goto_0
    and-int/lit8 v3, p6, 0x4

    if-eqz v3, :cond_1

    const/4 v3, 0x0

    move-object v5, v3

    goto :goto_1

    :cond_1
    move-object v5, p3

    .line 480
    :goto_1
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v3, -0x1

    const-string v4, "androidx.compose.animation.core.animateSizeAsState (AnimateAsState.kt:476)"

    .line 481
    invoke-static {v1, p5, v3, v4}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 483
    :cond_2
    invoke-static {p0, p1}, Landroidx/compose/ui/geometry/Size;->box-impl(J)Landroidx/compose/ui/geometry/Size;

    move-result-object v1

    .line 484
    sget-object v3, Landroidx/compose/ui/geometry/Size;->Companion:Landroidx/compose/ui/geometry/Size$Companion;

    invoke-static {v3}, Landroidx/compose/animation/core/VectorConvertersKt;->getVectorConverter(Landroidx/compose/ui/geometry/Size$Companion;)Landroidx/compose/animation/core/TwoWayConverter;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v6, 0x0

    and-int/lit8 v7, v0, 0xe

    shl-int/lit8 v8, v0, 0x3

    and-int/lit16 v8, v8, 0x380

    or-int/2addr v7, v8

    shl-int/lit8 v0, v0, 0x9

    const/high16 v8, 0x70000

    and-int/2addr v0, v8

    or-int/2addr v7, v0

    const/16 v8, 0x18

    move-object v0, v1

    move-object v1, v3

    move-object v3, v4

    move-object v4, v6

    move-object v6, p4

    .line 482
    invoke-static/range {v0 .. v8}, Landroidx/compose/animation/core/AnimateAsStateKt;->animateValueAsState(Ljava/lang/Object;Landroidx/compose/animation/core/TwoWayConverter;Landroidx/compose/animation/core/AnimationSpec;Ljava/lang/Object;Ljava/lang/String;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)Landroidx/compose/runtime/State;

    move-result-object v0

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_3
    invoke-interface {p4}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    return-object v0
.end method

.method public static final animateSizeAsState-YLp_XPw(JLandroidx/compose/animation/core/AnimationSpec;Ljava/lang/String;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)Landroidx/compose/runtime/State;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Landroidx/compose/animation/core/AnimationSpec<",
            "Landroidx/compose/ui/geometry/Size;",
            ">;",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/compose/ui/geometry/Size;",
            "Lkotlin/Unit;",
            ">;",
            "Landroidx/compose/runtime/Composer;",
            "II)",
            "Landroidx/compose/runtime/State<",
            "Landroidx/compose/ui/geometry/Size;",
            ">;"
        }
    .end annotation

    move-object v9, p5

    move/from16 v0, p6

    const v1, 0x51ef3cbc

    invoke-interface {p5, v1}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v2, "C(animateSizeAsState)P(3:c#ui.geometry.Size!1,2)155@6928L167:AnimateAsState.kt#pdpnli"

    invoke-static {p5, v2}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    and-int/lit8 v2, p7, 0x2

    if-eqz v2, :cond_0

    sget-object v2, Landroidx/compose/animation/core/AnimateAsStateKt;->sizeDefaultSpring:Landroidx/compose/animation/core/SpringSpec;

    .line 152
    check-cast v2, Landroidx/compose/animation/core/AnimationSpec;

    goto :goto_0

    :cond_0
    move-object v2, p2

    :goto_0
    and-int/lit8 v3, p7, 0x4

    if-eqz v3, :cond_1

    const-string v3, "SizeAnimation"

    move-object v4, v3

    goto :goto_1

    :cond_1
    move-object v4, p3

    :goto_1
    and-int/lit8 v3, p7, 0x8

    if-eqz v3, :cond_2

    const/4 v3, 0x0

    move-object v5, v3

    goto :goto_2

    :cond_2
    move-object v5, p4

    .line 154
    :goto_2
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v3

    if-eqz v3, :cond_3

    const/4 v3, -0x1

    const-string v6, "androidx.compose.animation.core.animateSizeAsState (AnimateAsState.kt:149)"

    .line 155
    invoke-static {v1, v0, v3, v6}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 157
    :cond_3
    invoke-static {p0, p1}, Landroidx/compose/ui/geometry/Size;->box-impl(J)Landroidx/compose/ui/geometry/Size;

    move-result-object v1

    .line 158
    sget-object v3, Landroidx/compose/ui/geometry/Size;->Companion:Landroidx/compose/ui/geometry/Size$Companion;

    invoke-static {v3}, Landroidx/compose/animation/core/VectorConvertersKt;->getVectorConverter(Landroidx/compose/ui/geometry/Size$Companion;)Landroidx/compose/animation/core/TwoWayConverter;

    move-result-object v3

    const/4 v6, 0x0

    and-int/lit8 v7, v0, 0xe

    shl-int/lit8 v8, v0, 0x3

    and-int/lit16 v8, v8, 0x380

    or-int/2addr v7, v8

    shl-int/lit8 v0, v0, 0x6

    const v8, 0xe000

    and-int/2addr v8, v0

    or-int/2addr v7, v8

    const/high16 v8, 0x70000

    and-int/2addr v0, v8

    or-int/2addr v7, v0

    const/16 v8, 0x8

    move-object v0, v1

    move-object v1, v3

    move-object v3, v6

    move-object v6, p5

    .line 156
    invoke-static/range {v0 .. v8}, Landroidx/compose/animation/core/AnimateAsStateKt;->animateValueAsState(Ljava/lang/Object;Landroidx/compose/animation/core/TwoWayConverter;Landroidx/compose/animation/core/AnimationSpec;Ljava/lang/Object;Ljava/lang/String;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)Landroidx/compose/runtime/State;

    move-result-object v0

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_4
    invoke-interface {p5}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    return-object v0
.end method

.method public static final animateValueAsState(Ljava/lang/Object;Landroidx/compose/animation/core/TwoWayConverter;Landroidx/compose/animation/core/AnimationSpec;Ljava/lang/Object;Ljava/lang/String;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)Landroidx/compose/runtime/State;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "V:",
            "Landroidx/compose/animation/core/AnimationVector;",
            ">(TT;",
            "Landroidx/compose/animation/core/TwoWayConverter<",
            "TT;TV;>;",
            "Landroidx/compose/animation/core/AnimationSpec<",
            "TT;>;TT;",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function1<",
            "-TT;",
            "Lkotlin/Unit;",
            ">;",
            "Landroidx/compose/runtime/Composer;",
            "II)",
            "Landroidx/compose/runtime/State<",
            "TT;>;"
        }
    .end annotation

    move-object v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p6

    move/from16 v3, p7

    const-string/jumbo v4, "typeConverter"

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const v4, -0x76dfbb5c

    invoke-interface {v2, v4}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v5, "C(animateValueAsState)P(3,4!1,5,2)393@18031L21,399@18213L44,400@18279L79,401@18379L38,402@18456L339,413@18814L42,414@18861L55,417@18921L721:AnimateAsState.kt#pdpnli"

    invoke-static {v2, v5}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    and-int/lit8 v5, p8, 0x4

    const-string v6, "CC(remember):Composables.kt#9igjgp"

    const v7, -0x1d58f75c

    const/4 v8, 0x0

    if-eqz v5, :cond_1

    .line 394
    invoke-interface {v2, v7}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    invoke-static {v2, v6}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 593
    invoke-interface/range {p6 .. p6}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v5

    .line 594
    sget-object v9, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v9}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v9

    if-ne v5, v9, :cond_0

    const/4 v5, 0x7

    const/4 v9, 0x0

    .line 394
    invoke-static {v9, v9, v8, v5, v8}, Landroidx/compose/animation/core/AnimationSpecKt;->spring$default(FFLjava/lang/Object;ILjava/lang/Object;)Landroidx/compose/animation/core/SpringSpec;

    move-result-object v5

    .line 596
    invoke-interface {v2, v5}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 592
    :cond_0
    invoke-interface/range {p6 .. p6}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    check-cast v5, Landroidx/compose/animation/core/AnimationSpec;

    goto :goto_0

    :cond_1
    move-object/from16 v5, p2

    :goto_0
    and-int/lit8 v9, p8, 0x8

    if-eqz v9, :cond_2

    move-object v9, v8

    goto :goto_1

    :cond_2
    move-object/from16 v9, p3

    :goto_1
    and-int/lit8 v10, p8, 0x10

    if-eqz v10, :cond_3

    const-string v10, "ValueAnimation"

    goto :goto_2

    :cond_3
    move-object/from16 v10, p4

    :goto_2
    and-int/lit8 v11, p8, 0x20

    if-eqz v11, :cond_4

    move-object v11, v8

    goto :goto_3

    :cond_4
    move-object/from16 v11, p5

    .line 397
    :goto_3
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v12

    const/4 v13, -0x1

    if-eqz v12, :cond_5

    const-string v12, "androidx.compose.animation.core.animateValueAsState (AnimateAsState.kt:390)"

    .line 398
    invoke-static {v4, v3, v13, v12}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 400
    :cond_5
    invoke-interface {v2, v7}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    invoke-static {v2, v6}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 600
    invoke-interface/range {p6 .. p6}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v4

    .line 601
    sget-object v12, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v12}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v12

    if-ne v4, v12, :cond_6

    const/4 v4, 0x2

    .line 400
    invoke-static {v8, v8, v4, v8}, Landroidx/compose/runtime/SnapshotStateKt;->mutableStateOf$default(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;ILjava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object v4

    .line 603
    invoke-interface {v2, v4}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 599
    :cond_6
    invoke-interface/range {p6 .. p6}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 400
    check-cast v4, Landroidx/compose/runtime/MutableState;

    .line 401
    invoke-interface {v2, v7}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    invoke-static {v2, v6}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 607
    invoke-interface/range {p6 .. p6}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v12

    .line 608
    sget-object v14, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v14}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v14

    if-ne v12, v14, :cond_7

    .line 401
    new-instance v12, Landroidx/compose/animation/core/Animatable;

    invoke-direct {v12, p0, v1, v9, v10}, Landroidx/compose/animation/core/Animatable;-><init>(Ljava/lang/Object;Landroidx/compose/animation/core/TwoWayConverter;Ljava/lang/Object;Ljava/lang/String;)V

    .line 610
    invoke-interface {v2, v12}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 606
    :cond_7
    invoke-interface/range {p6 .. p6}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 401
    check-cast v12, Landroidx/compose/animation/core/Animatable;

    shr-int/lit8 v1, v3, 0xf

    and-int/lit8 v1, v1, 0xe

    .line 402
    invoke-static {v11, v2, v1}, Landroidx/compose/runtime/SnapshotStateKt;->rememberUpdatedState(Ljava/lang/Object;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/State;

    move-result-object v1

    if-eqz v9, :cond_8

    .line 405
    instance-of v3, v5, Landroidx/compose/animation/core/SpringSpec;

    if-eqz v3, :cond_8

    .line 406
    move-object v3, v5

    check-cast v3, Landroidx/compose/animation/core/SpringSpec;

    invoke-virtual {v3}, Landroidx/compose/animation/core/SpringSpec;->getVisibilityThreshold()Ljava/lang/Object;

    move-result-object v10

    invoke-static {v10, v9}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_8

    .line 408
    invoke-virtual {v3}, Landroidx/compose/animation/core/SpringSpec;->getDampingRatio()F

    move-result v5

    invoke-virtual {v3}, Landroidx/compose/animation/core/SpringSpec;->getStiffness()F

    move-result v3

    invoke-static {v5, v3, v9}, Landroidx/compose/animation/core/AnimationSpecKt;->spring(FFLjava/lang/Object;)Landroidx/compose/animation/core/SpringSpec;

    move-result-object v3

    move-object v5, v3

    check-cast v5, Landroidx/compose/animation/core/AnimationSpec;

    :cond_8
    const/4 v3, 0x0

    .line 403
    invoke-static {v5, v2, v3}, Landroidx/compose/runtime/SnapshotStateKt;->rememberUpdatedState(Ljava/lang/Object;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/State;

    move-result-object v5

    .line 414
    invoke-interface {v2, v7}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    invoke-static {v2, v6}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 614
    invoke-interface/range {p6 .. p6}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v6

    .line 615
    sget-object v7, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v7}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v7

    if-ne v6, v7, :cond_9

    const/4 v6, 0x6

    .line 414
    invoke-static {v13, v8, v8, v6, v8}, Lkotlinx/coroutines/channels/ChannelKt;->Channel$default(ILkotlinx/coroutines/channels/BufferOverflow;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Lkotlinx/coroutines/channels/Channel;

    move-result-object v6

    .line 617
    invoke-interface {v2, v6}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 613
    :cond_9
    invoke-interface/range {p6 .. p6}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 414
    check-cast v6, Lkotlinx/coroutines/channels/Channel;

    .line 415
    new-instance v7, Landroidx/compose/animation/core/AnimateAsStateKt$animateValueAsState$2;

    invoke-direct {v7, v6, p0}, Landroidx/compose/animation/core/AnimateAsStateKt$animateValueAsState$2;-><init>(Lkotlinx/coroutines/channels/Channel;Ljava/lang/Object;)V

    check-cast v7, Lkotlin/jvm/functions/Function0;

    invoke-static {v7, v2, v3}, Landroidx/compose/runtime/EffectsKt;->SideEffect(Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V

    .line 418
    new-instance v0, Landroidx/compose/animation/core/AnimateAsStateKt$animateValueAsState$3;

    const/4 v3, 0x0

    move-object p0, v0

    move-object/from16 p1, v6

    move-object/from16 p2, v12

    move-object/from16 p3, v5

    move-object/from16 p4, v1

    move-object/from16 p5, v3

    invoke-direct/range {p0 .. p5}, Landroidx/compose/animation/core/AnimateAsStateKt$animateValueAsState$3;-><init>(Lkotlinx/coroutines/channels/Channel;Landroidx/compose/animation/core/Animatable;Landroidx/compose/runtime/State;Landroidx/compose/runtime/State;Lkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/jvm/functions/Function2;

    const/16 v1, 0x48

    invoke-static {v6, v0, v2, v1}, Landroidx/compose/runtime/EffectsKt;->LaunchedEffect(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V

    .line 434
    invoke-interface {v4}, Landroidx/compose/runtime/MutableState;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/runtime/State;

    if-nez v0, :cond_a

    invoke-virtual {v12}, Landroidx/compose/animation/core/Animatable;->asState()Landroidx/compose/runtime/State;

    move-result-object v0

    :cond_a
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_b
    invoke-interface/range {p6 .. p6}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    return-object v0
.end method

.method public static final synthetic animateValueAsState(Ljava/lang/Object;Landroidx/compose/animation/core/TwoWayConverter;Landroidx/compose/animation/core/AnimationSpec;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)Landroidx/compose/runtime/State;
    .locals 10
    .annotation runtime Lkotlin/Deprecated;
        level = .enum Lkotlin/DeprecationLevel;->HIDDEN:Lkotlin/DeprecationLevel;
        message = "animate*AsState APIs now have a new label parameter added."
    .end annotation

    move-object v9, p5

    move/from16 v0, p6

    const-string/jumbo v1, "typeConverter"

    move-object v2, p1

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const v1, -0x3272c431

    invoke-interface {p5, v1}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v3, "C(animateValueAsState)P(2,3!1,4)572@23613L21,575@23730L240:AnimateAsState.kt#pdpnli"

    invoke-static {p5, v3}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    and-int/lit8 v3, p7, 0x4

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    const v3, -0x1d58f75c

    .line 573
    invoke-interface {p5, v3}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v3, "CC(remember):Composables.kt#9igjgp"

    invoke-static {p5, v3}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 621
    invoke-interface {p5}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v3

    .line 622
    sget-object v5, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v5}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v5

    if-ne v3, v5, :cond_0

    const/4 v3, 0x7

    const/4 v5, 0x0

    .line 573
    invoke-static {v5, v5, v4, v3, v4}, Landroidx/compose/animation/core/AnimationSpecKt;->spring$default(FFLjava/lang/Object;ILjava/lang/Object;)Landroidx/compose/animation/core/SpringSpec;

    move-result-object v3

    .line 624
    invoke-interface {p5, v3}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 620
    :cond_0
    invoke-interface {p5}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    check-cast v3, Landroidx/compose/animation/core/AnimationSpec;

    goto :goto_0

    :cond_1
    move-object v3, p2

    :goto_0
    and-int/lit8 v5, p7, 0x8

    if-eqz v5, :cond_2

    move-object v5, v4

    goto :goto_1

    :cond_2
    move-object v5, p3

    :goto_1
    and-int/lit8 v6, p7, 0x10

    if-eqz v6, :cond_3

    move-object v6, v4

    goto :goto_2

    :cond_3
    move-object v6, p4

    .line 575
    :goto_2
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v4

    if-eqz v4, :cond_4

    const/4 v4, -0x1

    const-string v7, "androidx.compose.animation.core.animateValueAsState (AnimateAsState.kt:569)"

    .line 576
    invoke-static {v1, v0, v4, v7}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_4
    const-string v4, "ValueAnimation"

    and-int/lit8 v1, v0, 0x8

    or-int/lit16 v7, v1, 0x6000

    and-int/lit8 v8, v0, 0xe

    or-int/2addr v7, v8

    and-int/lit8 v8, v0, 0x70

    or-int/2addr v7, v8

    and-int/lit16 v8, v0, 0x380

    or-int/2addr v7, v8

    shl-int/lit8 v1, v1, 0x9

    or-int/2addr v1, v7

    and-int/lit16 v7, v0, 0x1c00

    or-int/2addr v1, v7

    shl-int/lit8 v0, v0, 0x3

    const/high16 v7, 0x70000

    and-int/2addr v0, v7

    or-int v7, v1, v0

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, v3

    move-object v3, v5

    move-object v5, v6

    move-object v6, p5

    invoke-static/range {v0 .. v8}, Landroidx/compose/animation/core/AnimateAsStateKt;->animateValueAsState(Ljava/lang/Object;Landroidx/compose/animation/core/TwoWayConverter;Landroidx/compose/animation/core/AnimationSpec;Ljava/lang/Object;Ljava/lang/String;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)Landroidx/compose/runtime/State;

    move-result-object v0

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_5
    invoke-interface {p5}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    return-object v0
.end method

.method private static final animateValueAsState$lambda$4(Landroidx/compose/runtime/State;)Lkotlin/jvm/functions/Function1;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroidx/compose/runtime/State<",
            "+",
            "Lkotlin/jvm/functions/Function1<",
            "-TT;",
            "Lkotlin/Unit;",
            ">;>;)",
            "Lkotlin/jvm/functions/Function1<",
            "TT;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 627
    invoke-interface {p0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lkotlin/jvm/functions/Function1;

    return-object p0
.end method

.method private static final animateValueAsState$lambda$6(Landroidx/compose/runtime/State;)Landroidx/compose/animation/core/AnimationSpec;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroidx/compose/runtime/State<",
            "+",
            "Landroidx/compose/animation/core/AnimationSpec<",
            "TT;>;>;)",
            "Landroidx/compose/animation/core/AnimationSpec<",
            "TT;>;"
        }
    .end annotation

    .line 628
    invoke-interface {p0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/compose/animation/core/AnimationSpec;

    return-object p0
.end method
