.class public final Landroidx/compose/foundation/lazy/grid/LazyGridState;
.super Ljava/lang/Object;
.source "LazyGridState.kt"

# interfaces
.implements Landroidx/compose/foundation/gestures/ScrollableState;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/foundation/lazy/grid/LazyGridState$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nLazyGridState.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LazyGridState.kt\nandroidx/compose/foundation/lazy/grid/LazyGridState\n+ 2 MutableVector.kt\nandroidx/compose/runtime/collection/MutableVectorKt\n+ 3 SnapshotIntState.kt\nandroidx/compose/runtime/SnapshotIntStateKt__SnapshotIntStateKt\n+ 4 SnapshotState.kt\nandroidx/compose/runtime/SnapshotStateKt__SnapshotStateKt\n+ 5 MutableVector.kt\nandroidx/compose/runtime/collection/MutableVector\n+ 6 ListUtils.kt\nandroidx/compose/ui/util/ListUtilsKt\n+ 7 Snapshot.kt\nandroidx/compose/runtime/snapshots/Snapshot$Companion\n+ 8 Snapshot.kt\nandroidx/compose/runtime/snapshots/Snapshot\n*L\n1#1,468:1\n1182#2:469\n1161#2,2:470\n75#3:472\n108#3,2:473\n81#4:475\n107#4,2:476\n81#4:478\n81#4:479\n107#4,2:480\n81#4:482\n107#4,2:483\n460#5,11:485\n460#5,11:502\n33#6,6:496\n495#7,4:513\n500#7:522\n129#8,5:517\n*S KotlinDebug\n*F\n+ 1 LazyGridState.kt\nandroidx/compose/foundation/lazy/grid/LazyGridState\n*L\n194#1:469\n194#1:470,2\n154#1:472\n154#1:473,2\n227#1:475\n227#1:476,2\n240#1:478\n290#1:479\n290#1:480,2\n292#1:482\n292#1:483,2\n361#1:485,11\n388#1:502,11\n366#1:496,6\n436#1:513,4\n436#1:522\n436#1:517,5\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u00f0\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u000c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0010\u0007\n\u0002\u0008\u000c\n\u0002\u0010\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0007\u0018\u0000 \u009b\u00012\u00020\u0001:\u0002\u009b\u0001B\u0019\u0012\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0005J#\u0010x\u001a\u00020y2\u0006\u0010z\u001a\u00020\u00032\u0008\u0008\u0002\u0010{\u001a\u00020\u0003H\u0086@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010|J\u0016\u0010}\u001a\u00020y2\u0006\u0010~\u001a\u00020\u007fH\u0000\u00a2\u0006\u0003\u0008\u0080\u0001J\u0012\u0010\u0081\u0001\u001a\u00020y2\u0007\u0010\u0082\u0001\u001a\u000206H\u0002J\u0012\u0010\u0083\u0001\u001a\u00020l2\u0007\u0010\u0084\u0001\u001a\u00020lH\u0016J\u0012\u0010\u0085\u0001\u001a\u00020y2\u0007\u0010\u0084\u0001\u001a\u00020lH\u0002J\u0018\u0010\u0086\u0001\u001a\u00020l2\u0007\u0010\u0087\u0001\u001a\u00020lH\u0000\u00a2\u0006\u0003\u0008\u0088\u0001JL\u0010\u0089\u0001\u001a\u00020y2\u0008\u0010\u008a\u0001\u001a\u00030\u008b\u00012-\u0010\u008c\u0001\u001a(\u0008\u0001\u0012\u0005\u0012\u00030\u008e\u0001\u0012\u000b\u0012\t\u0012\u0004\u0012\u00020y0\u008f\u0001\u0012\u0007\u0012\u0005\u0018\u00010\u0090\u00010\u008d\u0001\u00a2\u0006\u0003\u0008\u0091\u0001H\u0096@\u00f8\u0001\u0000\u00a2\u0006\u0003\u0010\u0092\u0001J$\u0010\u0093\u0001\u001a\u00020y2\u0006\u0010z\u001a\u00020\u00032\u0008\u0008\u0002\u0010{\u001a\u00020\u0003H\u0086@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010|J\u001f\u0010\u0094\u0001\u001a\u00020y2\u0006\u0010z\u001a\u00020\u00032\u0006\u0010{\u001a\u00020\u0003H\u0000\u00a2\u0006\u0003\u0008\u0095\u0001J$\u0010\u0096\u0001\u001a\u00020\u00032\u0008\u0010\u0097\u0001\u001a\u00030\u0098\u00012\t\u0008\u0002\u0010\u0099\u0001\u001a\u00020\u0003H\u0000\u00a2\u0006\u0003\u0008\u009a\u0001R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0008\u001a\u00020\tX\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000bR\u0014\u0010\u000c\u001a\u00020\rX\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\u000fR+\u0010\u0012\u001a\u00020\u00112\u0006\u0010\u0010\u001a\u00020\u00118V@RX\u0096\u008e\u0002\u00a2\u0006\u0012\n\u0004\u0008\u0017\u0010\u0018\u001a\u0004\u0008\u0013\u0010\u0014\"\u0004\u0008\u0015\u0010\u0016R+\u0010\u0019\u001a\u00020\u00112\u0006\u0010\u0010\u001a\u00020\u00118V@RX\u0096\u008e\u0002\u00a2\u0006\u0012\n\u0004\u0008\u001c\u0010\u0018\u001a\u0004\u0008\u001a\u0010\u0014\"\u0004\u0008\u001b\u0010\u0016R\u0014\u0010\u001d\u001a\u0008\u0012\u0004\u0012\u00020\u001f0\u001eX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001a\u0010 \u001a\u00020!X\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\"\u0010#\"\u0004\u0008$\u0010%R\u0011\u0010\u0002\u001a\u00020\u00038F\u00a2\u0006\u0006\u001a\u0004\u0008&\u0010\'R\u0011\u0010\u0004\u001a\u00020\u00038F\u00a2\u0006\u0006\u001a\u0004\u0008(\u0010\'R\u0011\u0010)\u001a\u00020*8F\u00a2\u0006\u0006\u001a\u0004\u0008+\u0010,R\u0014\u0010-\u001a\u00020.X\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008/\u00100R\u0014\u00101\u001a\u00020\u00118VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u00081\u0010\u0014R\u001a\u00102\u001a\u00020\u0011X\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00083\u0010\u0014\"\u0004\u00084\u0010\u0016R\u0011\u00105\u001a\u0002068F\u00a2\u0006\u0006\u001a\u0004\u00087\u00108R\u0014\u00109\u001a\u0008\u0012\u0004\u0012\u0002060:X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010;\u001a\u00020\u0003X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001b\u0010<\u001a\u00020=8@X\u0080\u0084\u0002\u00a2\u0006\u000c\u001a\u0004\u0008@\u0010A*\u0004\u0008>\u0010?R\u001e\u0010B\u001a\u00020\u00032\u0006\u0010\u0010\u001a\u00020\u0003@BX\u0080\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008C\u0010\'R\u0014\u0010D\u001a\u00020EX\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008F\u0010GR\u0014\u0010H\u001a\u00020IX\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008J\u0010KR\u0088\u0001\u0010S\u001a/\u0012\u0013\u0012\u00110\u0003\u00a2\u0006\u000c\u0008M\u0012\u0008\u0008N\u0012\u0004\u0008\u0008(O\u0012\u0016\u0012\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020R0Q0P0L23\u0010\u0010\u001a/\u0012\u0013\u0012\u00110\u0003\u00a2\u0006\u000c\u0008M\u0012\u0008\u0008N\u0012\u0004\u0008\u0008(O\u0012\u0016\u0012\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020R0Q0P0L8@@@X\u0080\u008e\u0002\u00f8\u0001\u0000\u00a2\u0006\u0012\n\u0004\u0008X\u0010\u0018\u001a\u0004\u0008T\u0010U\"\u0004\u0008V\u0010WR\u0014\u0010Y\u001a\u00020ZX\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008[\u0010\\R\u001a\u0010]\u001a\u00020\u0011X\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008^\u0010\u0014\"\u0004\u0008_\u0010\u0016R\u001c\u0010`\u001a\u0004\u0018\u00010aX\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008b\u0010c\"\u0004\u0008d\u0010eR\u0014\u0010f\u001a\u00020gX\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008h\u0010iR\u000e\u0010j\u001a\u00020kX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001e\u0010m\u001a\u00020l2\u0006\u0010\u0010\u001a\u00020l@BX\u0080\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008n\u0010oR\u000e\u0010p\u001a\u00020\u0001X\u0082\u0004\u00a2\u0006\u0002\n\u0000R+\u0010q\u001a\u00020\u00032\u0006\u0010\u0010\u001a\u00020\u00038@@@X\u0080\u008e\u0002\u00a2\u0006\u0012\n\u0004\u0008u\u0010v\u001a\u0004\u0008r\u0010\'\"\u0004\u0008s\u0010tR\u000e\u0010w\u001a\u00020\u0011X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006\u009c\u0001"
    }
    d2 = {
        "Landroidx/compose/foundation/lazy/grid/LazyGridState;",
        "Landroidx/compose/foundation/gestures/ScrollableState;",
        "firstVisibleItemIndex",
        "",
        "firstVisibleItemScrollOffset",
        "(II)V",
        "animateScrollScope",
        "Landroidx/compose/foundation/lazy/grid/LazyGridAnimateScrollScope;",
        "awaitLayoutModifier",
        "Landroidx/compose/foundation/lazy/layout/AwaitFirstLayoutModifier;",
        "getAwaitLayoutModifier$foundation_release",
        "()Landroidx/compose/foundation/lazy/layout/AwaitFirstLayoutModifier;",
        "beyondBoundsInfo",
        "Landroidx/compose/foundation/lazy/layout/LazyLayoutBeyondBoundsInfo;",
        "getBeyondBoundsInfo$foundation_release",
        "()Landroidx/compose/foundation/lazy/layout/LazyLayoutBeyondBoundsInfo;",
        "<set-?>",
        "",
        "canScrollBackward",
        "getCanScrollBackward",
        "()Z",
        "setCanScrollBackward",
        "(Z)V",
        "canScrollBackward$delegate",
        "Landroidx/compose/runtime/MutableState;",
        "canScrollForward",
        "getCanScrollForward",
        "setCanScrollForward",
        "canScrollForward$delegate",
        "currentLinePrefetchHandles",
        "Landroidx/compose/runtime/collection/MutableVector;",
        "Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState$PrefetchHandle;",
        "density",
        "Landroidx/compose/ui/unit/Density;",
        "getDensity$foundation_release",
        "()Landroidx/compose/ui/unit/Density;",
        "setDensity$foundation_release",
        "(Landroidx/compose/ui/unit/Density;)V",
        "getFirstVisibleItemIndex",
        "()I",
        "getFirstVisibleItemScrollOffset",
        "interactionSource",
        "Landroidx/compose/foundation/interaction/InteractionSource;",
        "getInteractionSource",
        "()Landroidx/compose/foundation/interaction/InteractionSource;",
        "internalInteractionSource",
        "Landroidx/compose/foundation/interaction/MutableInteractionSource;",
        "getInternalInteractionSource$foundation_release",
        "()Landroidx/compose/foundation/interaction/MutableInteractionSource;",
        "isScrollInProgress",
        "isVertical",
        "isVertical$foundation_release",
        "setVertical$foundation_release",
        "layoutInfo",
        "Landroidx/compose/foundation/lazy/grid/LazyGridLayoutInfo;",
        "getLayoutInfo",
        "()Landroidx/compose/foundation/lazy/grid/LazyGridLayoutInfo;",
        "layoutInfoState",
        "Landroidx/compose/runtime/MutableState;",
        "lineToPrefetch",
        "nearestRange",
        "Lkotlin/ranges/IntRange;",
        "getNearestRange$foundation_release$delegate",
        "(Landroidx/compose/foundation/lazy/grid/LazyGridState;)Ljava/lang/Object;",
        "getNearestRange$foundation_release",
        "()Lkotlin/ranges/IntRange;",
        "numMeasurePasses",
        "getNumMeasurePasses$foundation_release",
        "pinnedItems",
        "Landroidx/compose/foundation/lazy/layout/LazyLayoutPinnedItemList;",
        "getPinnedItems$foundation_release",
        "()Landroidx/compose/foundation/lazy/layout/LazyLayoutPinnedItemList;",
        "placementAnimator",
        "Landroidx/compose/foundation/lazy/grid/LazyGridItemPlacementAnimator;",
        "getPlacementAnimator$foundation_release",
        "()Landroidx/compose/foundation/lazy/grid/LazyGridItemPlacementAnimator;",
        "Lkotlin/Function1;",
        "Lkotlin/ParameterName;",
        "name",
        "line",
        "",
        "Lkotlin/Pair;",
        "Landroidx/compose/ui/unit/Constraints;",
        "prefetchInfoRetriever",
        "getPrefetchInfoRetriever$foundation_release",
        "()Lkotlin/jvm/functions/Function1;",
        "setPrefetchInfoRetriever$foundation_release",
        "(Lkotlin/jvm/functions/Function1;)V",
        "prefetchInfoRetriever$delegate",
        "prefetchState",
        "Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState;",
        "getPrefetchState$foundation_release",
        "()Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState;",
        "prefetchingEnabled",
        "getPrefetchingEnabled$foundation_release",
        "setPrefetchingEnabled$foundation_release",
        "remeasurement",
        "Landroidx/compose/ui/layout/Remeasurement;",
        "getRemeasurement$foundation_release",
        "()Landroidx/compose/ui/layout/Remeasurement;",
        "setRemeasurement$foundation_release",
        "(Landroidx/compose/ui/layout/Remeasurement;)V",
        "remeasurementModifier",
        "Landroidx/compose/ui/layout/RemeasurementModifier;",
        "getRemeasurementModifier$foundation_release",
        "()Landroidx/compose/ui/layout/RemeasurementModifier;",
        "scrollPosition",
        "Landroidx/compose/foundation/lazy/grid/LazyGridScrollPosition;",
        "",
        "scrollToBeConsumed",
        "getScrollToBeConsumed$foundation_release",
        "()F",
        "scrollableState",
        "slotsPerLine",
        "getSlotsPerLine$foundation_release",
        "setSlotsPerLine$foundation_release",
        "(I)V",
        "slotsPerLine$delegate",
        "Landroidx/compose/runtime/MutableIntState;",
        "wasScrollingForward",
        "animateScrollToItem",
        "",
        "index",
        "scrollOffset",
        "(IILkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "applyMeasureResult",
        "result",
        "Landroidx/compose/foundation/lazy/grid/LazyGridMeasureResult;",
        "applyMeasureResult$foundation_release",
        "cancelPrefetchIfVisibleItemsChanged",
        "info",
        "dispatchRawDelta",
        "delta",
        "notifyPrefetch",
        "onScroll",
        "distance",
        "onScroll$foundation_release",
        "scroll",
        "scrollPriority",
        "Landroidx/compose/foundation/MutatePriority;",
        "block",
        "Lkotlin/Function2;",
        "Landroidx/compose/foundation/gestures/ScrollScope;",
        "Lkotlin/coroutines/Continuation;",
        "",
        "Lkotlin/ExtensionFunctionType;",
        "(Landroidx/compose/foundation/MutatePriority;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "scrollToItem",
        "snapToItemIndexInternal",
        "snapToItemIndexInternal$foundation_release",
        "updateScrollPositionIfTheFirstItemWasMoved",
        "itemProvider",
        "Landroidx/compose/foundation/lazy/grid/LazyGridItemProvider;",
        "firstItemIndex",
        "updateScrollPositionIfTheFirstItemWasMoved$foundation_release",
        "Companion",
        "foundation_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final $stable:I

.field public static final Companion:Landroidx/compose/foundation/lazy/grid/LazyGridState$Companion;

.field private static final Saver:Landroidx/compose/runtime/saveable/Saver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/saveable/Saver<",
            "Landroidx/compose/foundation/lazy/grid/LazyGridState;",
            "*>;"
        }
    .end annotation
.end field


# instance fields
.field private final animateScrollScope:Landroidx/compose/foundation/lazy/grid/LazyGridAnimateScrollScope;

.field private final awaitLayoutModifier:Landroidx/compose/foundation/lazy/layout/AwaitFirstLayoutModifier;

.field private final beyondBoundsInfo:Landroidx/compose/foundation/lazy/layout/LazyLayoutBeyondBoundsInfo;

.field private final canScrollBackward$delegate:Landroidx/compose/runtime/MutableState;

.field private final canScrollForward$delegate:Landroidx/compose/runtime/MutableState;

.field private final currentLinePrefetchHandles:Landroidx/compose/runtime/collection/MutableVector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/collection/MutableVector<",
            "Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState$PrefetchHandle;",
            ">;"
        }
    .end annotation
.end field

.field private density:Landroidx/compose/ui/unit/Density;

.field private final internalInteractionSource:Landroidx/compose/foundation/interaction/MutableInteractionSource;

.field private isVertical:Z

.field private final layoutInfoState:Landroidx/compose/runtime/MutableState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/MutableState<",
            "Landroidx/compose/foundation/lazy/grid/LazyGridLayoutInfo;",
            ">;"
        }
    .end annotation
.end field

.field private lineToPrefetch:I

.field private numMeasurePasses:I

.field private final pinnedItems:Landroidx/compose/foundation/lazy/layout/LazyLayoutPinnedItemList;

.field private final placementAnimator:Landroidx/compose/foundation/lazy/grid/LazyGridItemPlacementAnimator;

.field private final prefetchInfoRetriever$delegate:Landroidx/compose/runtime/MutableState;

.field private final prefetchState:Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState;

.field private prefetchingEnabled:Z

.field private remeasurement:Landroidx/compose/ui/layout/Remeasurement;

.field private final remeasurementModifier:Landroidx/compose/ui/layout/RemeasurementModifier;

.field private final scrollPosition:Landroidx/compose/foundation/lazy/grid/LazyGridScrollPosition;

.field private scrollToBeConsumed:F

.field private final scrollableState:Landroidx/compose/foundation/gestures/ScrollableState;

.field private final slotsPerLine$delegate:Landroidx/compose/runtime/MutableIntState;

.field private wasScrollingForward:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/compose/foundation/lazy/grid/LazyGridState$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/compose/foundation/lazy/grid/LazyGridState$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/compose/foundation/lazy/grid/LazyGridState;->Companion:Landroidx/compose/foundation/lazy/grid/LazyGridState$Companion;

    .line 443
    sget-object v0, Landroidx/compose/foundation/lazy/grid/LazyGridState$Companion$Saver$1;->INSTANCE:Landroidx/compose/foundation/lazy/grid/LazyGridState$Companion$Saver$1;

    check-cast v0, Lkotlin/jvm/functions/Function2;

    sget-object v1, Landroidx/compose/foundation/lazy/grid/LazyGridState$Companion$Saver$2;->INSTANCE:Landroidx/compose/foundation/lazy/grid/LazyGridState$Companion$Saver$2;

    check-cast v1, Lkotlin/jvm/functions/Function1;

    invoke-static {v0, v1}, Landroidx/compose/runtime/saveable/ListSaverKt;->listSaver(Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;)Landroidx/compose/runtime/saveable/Saver;

    move-result-object v0

    sput-object v0, Landroidx/compose/foundation/lazy/grid/LazyGridState;->Saver:Landroidx/compose/runtime/saveable/Saver;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const/4 v0, 0x3

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v2, v2, v0, v1}, Landroidx/compose/foundation/lazy/grid/LazyGridState;-><init>(IIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(II)V
    .locals 5

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    new-instance v0, Landroidx/compose/foundation/lazy/grid/LazyGridScrollPosition;

    invoke-direct {v0, p1, p2}, Landroidx/compose/foundation/lazy/grid/LazyGridScrollPosition;-><init>(II)V

    iput-object v0, p0, Landroidx/compose/foundation/lazy/grid/LazyGridState;->scrollPosition:Landroidx/compose/foundation/lazy/grid/LazyGridScrollPosition;

    .line 118
    sget-object p1, Landroidx/compose/foundation/lazy/grid/EmptyLazyGridLayoutInfo;->INSTANCE:Landroidx/compose/foundation/lazy/grid/EmptyLazyGridLayoutInfo;

    const/4 p2, 0x0

    const/4 v1, 0x2

    invoke-static {p1, p2, v1, p2}, Landroidx/compose/runtime/SnapshotStateKt;->mutableStateOf$default(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;ILjava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object p1

    iput-object p1, p0, Landroidx/compose/foundation/lazy/grid/LazyGridState;->layoutInfoState:Landroidx/compose/runtime/MutableState;

    .line 142
    invoke-static {}, Landroidx/compose/foundation/interaction/InteractionSourceKt;->MutableInteractionSource()Landroidx/compose/foundation/interaction/MutableInteractionSource;

    move-result-object p1

    iput-object p1, p0, Landroidx/compose/foundation/lazy/grid/LazyGridState;->internalInteractionSource:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    const/4 p1, 0x0

    .line 290
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 154
    invoke-static {p1}, Landroidx/compose/runtime/SnapshotIntStateKt;->mutableIntStateOf(I)Landroidx/compose/runtime/MutableIntState;

    move-result-object v3

    iput-object v3, p0, Landroidx/compose/foundation/lazy/grid/LazyGridState;->slotsPerLine$delegate:Landroidx/compose/runtime/MutableIntState;

    const/high16 v3, 0x3f800000    # 1.0f

    .line 159
    invoke-static {v3, v3}, Landroidx/compose/ui/unit/DensityKt;->Density(FF)Landroidx/compose/ui/unit/Density;

    move-result-object v3

    iput-object v3, p0, Landroidx/compose/foundation/lazy/grid/LazyGridState;->density:Landroidx/compose/ui/unit/Density;

    const/4 v3, 0x1

    iput-boolean v3, p0, Landroidx/compose/foundation/lazy/grid/LazyGridState;->isVertical:Z

    .line 170
    new-instance v4, Landroidx/compose/foundation/lazy/grid/LazyGridState$scrollableState$1;

    invoke-direct {v4, p0}, Landroidx/compose/foundation/lazy/grid/LazyGridState$scrollableState$1;-><init>(Landroidx/compose/foundation/lazy/grid/LazyGridState;)V

    check-cast v4, Lkotlin/jvm/functions/Function1;

    invoke-static {v4}, Landroidx/compose/foundation/gestures/ScrollableStateKt;->ScrollableState(Lkotlin/jvm/functions/Function1;)Landroidx/compose/foundation/gestures/ScrollableState;

    move-result-object v4

    iput-object v4, p0, Landroidx/compose/foundation/lazy/grid/LazyGridState;->scrollableState:Landroidx/compose/foundation/gestures/ScrollableState;

    iput-boolean v3, p0, Landroidx/compose/foundation/lazy/grid/LazyGridState;->prefetchingEnabled:Z

    const/4 v3, -0x1

    iput v3, p0, Landroidx/compose/foundation/lazy/grid/LazyGridState;->lineToPrefetch:I

    .line 471
    new-instance v3, Landroidx/compose/runtime/collection/MutableVector;

    const/16 v4, 0x10

    new-array v4, v4, [Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState$PrefetchHandle;

    invoke-direct {v3, v4, p1}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;I)V

    iput-object v3, p0, Landroidx/compose/foundation/lazy/grid/LazyGridState;->currentLinePrefetchHandles:Landroidx/compose/runtime/collection/MutableVector;

    .line 211
    new-instance p1, Landroidx/compose/foundation/lazy/grid/LazyGridState$remeasurementModifier$1;

    invoke-direct {p1, p0}, Landroidx/compose/foundation/lazy/grid/LazyGridState$remeasurementModifier$1;-><init>(Landroidx/compose/foundation/lazy/grid/LazyGridState;)V

    check-cast p1, Landroidx/compose/ui/layout/RemeasurementModifier;

    iput-object p1, p0, Landroidx/compose/foundation/lazy/grid/LazyGridState;->remeasurementModifier:Landroidx/compose/ui/layout/RemeasurementModifier;

    .line 221
    new-instance p1, Landroidx/compose/foundation/lazy/layout/AwaitFirstLayoutModifier;

    invoke-direct {p1}, Landroidx/compose/foundation/lazy/layout/AwaitFirstLayoutModifier;-><init>()V

    iput-object p1, p0, Landroidx/compose/foundation/lazy/grid/LazyGridState;->awaitLayoutModifier:Landroidx/compose/foundation/lazy/layout/AwaitFirstLayoutModifier;

    .line 227
    sget-object p1, Landroidx/compose/foundation/lazy/grid/LazyGridState$prefetchInfoRetriever$2;->INSTANCE:Landroidx/compose/foundation/lazy/grid/LazyGridState$prefetchInfoRetriever$2;

    invoke-static {p1, p2, v1, p2}, Landroidx/compose/runtime/SnapshotStateKt;->mutableStateOf$default(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;ILjava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object p1

    iput-object p1, p0, Landroidx/compose/foundation/lazy/grid/LazyGridState;->prefetchInfoRetriever$delegate:Landroidx/compose/runtime/MutableState;

    .line 229
    new-instance p1, Landroidx/compose/foundation/lazy/grid/LazyGridItemPlacementAnimator;

    invoke-direct {p1}, Landroidx/compose/foundation/lazy/grid/LazyGridItemPlacementAnimator;-><init>()V

    iput-object p1, p0, Landroidx/compose/foundation/lazy/grid/LazyGridState;->placementAnimator:Landroidx/compose/foundation/lazy/grid/LazyGridItemPlacementAnimator;

    .line 231
    new-instance p1, Landroidx/compose/foundation/lazy/layout/LazyLayoutBeyondBoundsInfo;

    invoke-direct {p1}, Landroidx/compose/foundation/lazy/layout/LazyLayoutBeyondBoundsInfo;-><init>()V

    iput-object p1, p0, Landroidx/compose/foundation/lazy/grid/LazyGridState;->beyondBoundsInfo:Landroidx/compose/foundation/lazy/layout/LazyLayoutBeyondBoundsInfo;

    .line 233
    new-instance p1, Landroidx/compose/foundation/lazy/grid/LazyGridAnimateScrollScope;

    invoke-direct {p1, p0}, Landroidx/compose/foundation/lazy/grid/LazyGridAnimateScrollScope;-><init>(Landroidx/compose/foundation/lazy/grid/LazyGridState;)V

    iput-object p1, p0, Landroidx/compose/foundation/lazy/grid/LazyGridState;->animateScrollScope:Landroidx/compose/foundation/lazy/grid/LazyGridAnimateScrollScope;

    .line 238
    new-instance p1, Landroidx/compose/foundation/lazy/layout/LazyLayoutPinnedItemList;

    invoke-direct {p1}, Landroidx/compose/foundation/lazy/layout/LazyLayoutPinnedItemList;-><init>()V

    iput-object p1, p0, Landroidx/compose/foundation/lazy/grid/LazyGridState;->pinnedItems:Landroidx/compose/foundation/lazy/layout/LazyLayoutPinnedItemList;

    .line 240
    invoke-virtual {v0}, Landroidx/compose/foundation/lazy/grid/LazyGridScrollPosition;->getNearestRangeState()Landroidx/compose/foundation/lazy/layout/LazyLayoutNearestRangeState;

    .line 290
    invoke-static {v2, p2, v1, p2}, Landroidx/compose/runtime/SnapshotStateKt;->mutableStateOf$default(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;ILjava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object p1

    iput-object p1, p0, Landroidx/compose/foundation/lazy/grid/LazyGridState;->canScrollForward$delegate:Landroidx/compose/runtime/MutableState;

    .line 292
    invoke-static {v2, p2, v1, p2}, Landroidx/compose/runtime/SnapshotStateKt;->mutableStateOf$default(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;ILjava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object p1

    iput-object p1, p0, Landroidx/compose/foundation/lazy/grid/LazyGridState;->canScrollBackward$delegate:Landroidx/compose/runtime/MutableState;

    .line 394
    new-instance p1, Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState;

    invoke-direct {p1}, Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState;-><init>()V

    iput-object p1, p0, Landroidx/compose/foundation/lazy/grid/LazyGridState;->prefetchState:Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState;

    return-void
.end method

.method public synthetic constructor <init>(IIILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p4, p3, 0x1

    const/4 v0, 0x0

    if-eqz p4, :cond_0

    move p1, v0

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    move p2, v0

    .line 84
    :cond_1
    invoke-direct {p0, p1, p2}, Landroidx/compose/foundation/lazy/grid/LazyGridState;-><init>(II)V

    return-void
.end method

.method public static final synthetic access$getSaver$cp()Landroidx/compose/runtime/saveable/Saver;
    .locals 1

    sget-object v0, Landroidx/compose/foundation/lazy/grid/LazyGridState;->Saver:Landroidx/compose/runtime/saveable/Saver;

    return-object v0
.end method

.method public static synthetic animateScrollToItem$default(Landroidx/compose/foundation/lazy/grid/LazyGridState;IILkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 0

    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_0

    const/4 p2, 0x0

    .line 404
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Landroidx/compose/foundation/lazy/grid/LazyGridState;->animateScrollToItem(IILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private final cancelPrefetchIfVisibleItemsChanged(Landroidx/compose/foundation/lazy/grid/LazyGridLayoutInfo;)V
    .locals 3

    iget v0, p0, Landroidx/compose/foundation/lazy/grid/LazyGridState;->lineToPrefetch:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_5

    .line 376
    invoke-interface {p1}, Landroidx/compose/foundation/lazy/grid/LazyGridLayoutInfo;->getVisibleItemsInfo()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Landroidx/compose/foundation/lazy/grid/LazyGridState;->wasScrollingForward:Z

    if-eqz v0, :cond_1

    .line 378
    invoke-interface {p1}, Landroidx/compose/foundation/lazy/grid/LazyGridLayoutInfo;->getVisibleItemsInfo()Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->last(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/compose/foundation/lazy/grid/LazyGridItemInfo;

    iget-boolean v0, p0, Landroidx/compose/foundation/lazy/grid/LazyGridState;->isVertical:Z

    if-eqz v0, :cond_0

    .line 379
    invoke-interface {p1}, Landroidx/compose/foundation/lazy/grid/LazyGridItemInfo;->getRow()I

    move-result p1

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Landroidx/compose/foundation/lazy/grid/LazyGridItemInfo;->getColumn()I

    move-result p1

    :goto_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_2

    .line 382
    :cond_1
    invoke-interface {p1}, Landroidx/compose/foundation/lazy/grid/LazyGridLayoutInfo;->getVisibleItemsInfo()Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/compose/foundation/lazy/grid/LazyGridItemInfo;

    iget-boolean v0, p0, Landroidx/compose/foundation/lazy/grid/LazyGridState;->isVertical:Z

    if-eqz v0, :cond_2

    .line 383
    invoke-interface {p1}, Landroidx/compose/foundation/lazy/grid/LazyGridItemInfo;->getRow()I

    move-result p1

    goto :goto_1

    :cond_2
    invoke-interface {p1}, Landroidx/compose/foundation/lazy/grid/LazyGridItemInfo;->getColumn()I

    move-result p1

    :goto_1
    add-int/lit8 p1, p1, -0x1

    :goto_2
    iget v0, p0, Landroidx/compose/foundation/lazy/grid/LazyGridState;->lineToPrefetch:I

    if-eq v0, p1, :cond_5

    iput v1, p0, Landroidx/compose/foundation/lazy/grid/LazyGridState;->lineToPrefetch:I

    iget-object p1, p0, Landroidx/compose/foundation/lazy/grid/LazyGridState;->currentLinePrefetchHandles:Landroidx/compose/runtime/collection/MutableVector;

    .line 503
    invoke-virtual {p1}, Landroidx/compose/runtime/collection/MutableVector;->getSize()I

    move-result v0

    if-lez v0, :cond_4

    .line 506
    invoke-virtual {p1}, Landroidx/compose/runtime/collection/MutableVector;->getContent()[Ljava/lang/Object;

    move-result-object p1

    const/4 v1, 0x0

    .line 508
    :cond_3
    aget-object v2, p1, v1

    check-cast v2, Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState$PrefetchHandle;

    .line 388
    invoke-interface {v2}, Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState$PrefetchHandle;->cancel()V

    add-int/lit8 v1, v1, 0x1

    if-lt v1, v0, :cond_3

    :cond_4
    iget-object p0, p0, Landroidx/compose/foundation/lazy/grid/LazyGridState;->currentLinePrefetchHandles:Landroidx/compose/runtime/collection/MutableVector;

    .line 389
    invoke-virtual {p0}, Landroidx/compose/runtime/collection/MutableVector;->clear()V

    :cond_5
    return-void
.end method

.method private static getNearestRange$foundation_release$delegate(Landroidx/compose/foundation/lazy/grid/LazyGridState;)Ljava/lang/Object;
    .locals 0

    .line 240
    iget-object p0, p0, Landroidx/compose/foundation/lazy/grid/LazyGridState;->scrollPosition:Landroidx/compose/foundation/lazy/grid/LazyGridScrollPosition;

    invoke-virtual {p0}, Landroidx/compose/foundation/lazy/grid/LazyGridScrollPosition;->getNearestRangeState()Landroidx/compose/foundation/lazy/layout/LazyLayoutNearestRangeState;

    move-result-object p0

    return-object p0
.end method

.method private final notifyPrefetch(F)V
    .locals 8

    iget-object v0, p0, Landroidx/compose/foundation/lazy/grid/LazyGridState;->prefetchState:Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState;

    iget-boolean v1, p0, Landroidx/compose/foundation/lazy/grid/LazyGridState;->prefetchingEnabled:Z

    if-nez v1, :cond_0

    return-void

    .line 337
    :cond_0
    invoke-virtual {p0}, Landroidx/compose/foundation/lazy/grid/LazyGridState;->getLayoutInfo()Landroidx/compose/foundation/lazy/grid/LazyGridLayoutInfo;

    move-result-object v1

    .line 338
    invoke-interface {v1}, Landroidx/compose/foundation/lazy/grid/LazyGridLayoutInfo;->getVisibleItemsInfo()Ljava/util/List;

    move-result-object v2

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    const/4 v3, 0x1

    xor-int/2addr v2, v3

    if-eqz v2, :cond_7

    const/4 v2, 0x0

    cmpg-float p1, p1, v2

    const/4 v2, 0x0

    if-gez p1, :cond_1

    move p1, v3

    goto :goto_0

    :cond_1
    move p1, v2

    :goto_0
    if-eqz p1, :cond_3

    .line 343
    invoke-interface {v1}, Landroidx/compose/foundation/lazy/grid/LazyGridLayoutInfo;->getVisibleItemsInfo()Ljava/util/List;

    move-result-object v4

    invoke-static {v4}, Lkotlin/collections/CollectionsKt;->last(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/compose/foundation/lazy/grid/LazyGridItemInfo;

    iget-boolean v5, p0, Landroidx/compose/foundation/lazy/grid/LazyGridState;->isVertical:Z

    if-eqz v5, :cond_2

    .line 344
    invoke-interface {v4}, Landroidx/compose/foundation/lazy/grid/LazyGridItemInfo;->getRow()I

    move-result v4

    goto :goto_1

    :cond_2
    invoke-interface {v4}, Landroidx/compose/foundation/lazy/grid/LazyGridItemInfo;->getColumn()I

    move-result v4

    :goto_1
    add-int/2addr v4, v3

    .line 346
    invoke-interface {v1}, Landroidx/compose/foundation/lazy/grid/LazyGridLayoutInfo;->getVisibleItemsInfo()Ljava/util/List;

    move-result-object v5

    invoke-static {v5}, Lkotlin/collections/CollectionsKt;->last(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/compose/foundation/lazy/grid/LazyGridItemInfo;

    invoke-interface {v5}, Landroidx/compose/foundation/lazy/grid/LazyGridItemInfo;->getIndex()I

    move-result v5

    add-int/2addr v5, v3

    goto :goto_3

    .line 348
    :cond_3
    invoke-interface {v1}, Landroidx/compose/foundation/lazy/grid/LazyGridLayoutInfo;->getVisibleItemsInfo()Ljava/util/List;

    move-result-object v4

    invoke-static {v4}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/compose/foundation/lazy/grid/LazyGridItemInfo;

    iget-boolean v5, p0, Landroidx/compose/foundation/lazy/grid/LazyGridState;->isVertical:Z

    if-eqz v5, :cond_4

    .line 349
    invoke-interface {v4}, Landroidx/compose/foundation/lazy/grid/LazyGridItemInfo;->getRow()I

    move-result v4

    goto :goto_2

    :cond_4
    invoke-interface {v4}, Landroidx/compose/foundation/lazy/grid/LazyGridItemInfo;->getColumn()I

    move-result v4

    :goto_2
    add-int/lit8 v4, v4, -0x1

    .line 351
    invoke-interface {v1}, Landroidx/compose/foundation/lazy/grid/LazyGridLayoutInfo;->getVisibleItemsInfo()Ljava/util/List;

    move-result-object v5

    invoke-static {v5}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/compose/foundation/lazy/grid/LazyGridItemInfo;

    invoke-interface {v5}, Landroidx/compose/foundation/lazy/grid/LazyGridItemInfo;->getIndex()I

    move-result v5

    sub-int/2addr v5, v3

    :goto_3
    iget v6, p0, Landroidx/compose/foundation/lazy/grid/LazyGridState;->lineToPrefetch:I

    if-eq v4, v6, :cond_7

    if-ltz v5, :cond_7

    .line 354
    invoke-interface {v1}, Landroidx/compose/foundation/lazy/grid/LazyGridLayoutInfo;->getTotalItemsCount()I

    move-result v1

    if-ge v5, v1, :cond_7

    iget-boolean v1, p0, Landroidx/compose/foundation/lazy/grid/LazyGridState;->wasScrollingForward:Z

    if-eq v1, p1, :cond_6

    iget-object v1, p0, Landroidx/compose/foundation/lazy/grid/LazyGridState;->currentLinePrefetchHandles:Landroidx/compose/runtime/collection/MutableVector;

    .line 486
    invoke-virtual {v1}, Landroidx/compose/runtime/collection/MutableVector;->getSize()I

    move-result v5

    if-lez v5, :cond_6

    .line 489
    invoke-virtual {v1}, Landroidx/compose/runtime/collection/MutableVector;->getContent()[Ljava/lang/Object;

    move-result-object v1

    move v6, v2

    .line 491
    :cond_5
    aget-object v7, v1, v6

    check-cast v7, Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState$PrefetchHandle;

    .line 361
    invoke-interface {v7}, Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState$PrefetchHandle;->cancel()V

    add-int/2addr v6, v3

    if-lt v6, v5, :cond_5

    :cond_6
    iput-boolean p1, p0, Landroidx/compose/foundation/lazy/grid/LazyGridState;->wasScrollingForward:Z

    iput v4, p0, Landroidx/compose/foundation/lazy/grid/LazyGridState;->lineToPrefetch:I

    iget-object p1, p0, Landroidx/compose/foundation/lazy/grid/LazyGridState;->currentLinePrefetchHandles:Landroidx/compose/runtime/collection/MutableVector;

    .line 365
    invoke-virtual {p1}, Landroidx/compose/runtime/collection/MutableVector;->clear()V

    .line 366
    invoke-virtual {p0}, Landroidx/compose/foundation/lazy/grid/LazyGridState;->getPrefetchInfoRetriever$foundation_release()Lkotlin/jvm/functions/Function1;

    move-result-object p1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    .line 497
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    :goto_4
    if-ge v2, v1, :cond_7

    .line 498
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    .line 499
    check-cast v3, Lkotlin/Pair;

    iget-object v4, p0, Landroidx/compose/foundation/lazy/grid/LazyGridState;->currentLinePrefetchHandles:Landroidx/compose/runtime/collection/MutableVector;

    .line 368
    invoke-virtual {v3}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Number;

    invoke-virtual {v5}, Ljava/lang/Number;->intValue()I

    move-result v5

    invoke-virtual {v3}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/compose/ui/unit/Constraints;

    invoke-virtual {v3}, Landroidx/compose/ui/unit/Constraints;->unbox-impl()J

    move-result-wide v6

    invoke-virtual {v0, v5, v6, v7}, Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState;->schedulePrefetch-0kLqBqw(IJ)Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState$PrefetchHandle;

    move-result-object v3

    .line 367
    invoke-virtual {v4, v3}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_7
    return-void
.end method

.method public static synthetic scrollToItem$default(Landroidx/compose/foundation/lazy/grid/LazyGridState;IILkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 0

    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_0

    const/4 p2, 0x0

    .line 251
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Landroidx/compose/foundation/lazy/grid/LazyGridState;->scrollToItem(IILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private setCanScrollBackward(Z)V
    .locals 0

    iget-object p0, p0, Landroidx/compose/foundation/lazy/grid/LazyGridState;->canScrollBackward$delegate:Landroidx/compose/runtime/MutableState;

    .line 292
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    .line 483
    invoke-interface {p0, p1}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method private setCanScrollForward(Z)V
    .locals 0

    iget-object p0, p0, Landroidx/compose/foundation/lazy/grid/LazyGridState;->canScrollForward$delegate:Landroidx/compose/runtime/MutableState;

    .line 290
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    .line 480
    invoke-interface {p0, p1}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic updateScrollPositionIfTheFirstItemWasMoved$foundation_release$default(Landroidx/compose/foundation/lazy/grid/LazyGridState;Landroidx/compose/foundation/lazy/grid/LazyGridItemProvider;IILjava/lang/Object;)I
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    .line 436
    sget-object p2, Landroidx/compose/runtime/snapshots/Snapshot;->Companion:Landroidx/compose/runtime/snapshots/Snapshot$Companion;

    .line 514
    invoke-virtual {p2}, Landroidx/compose/runtime/snapshots/Snapshot$Companion;->createNonObservableSnapshot()Landroidx/compose/runtime/snapshots/Snapshot;

    move-result-object p2

    .line 517
    :try_start_0
    invoke-virtual {p2}, Landroidx/compose/runtime/snapshots/Snapshot;->makeCurrent()Landroidx/compose/runtime/snapshots/Snapshot;

    move-result-object p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 436
    :try_start_1
    iget-object p4, p0, Landroidx/compose/foundation/lazy/grid/LazyGridState;->scrollPosition:Landroidx/compose/foundation/lazy/grid/LazyGridScrollPosition;

    invoke-virtual {p4}, Landroidx/compose/foundation/lazy/grid/LazyGridScrollPosition;->getIndex()I

    move-result p4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 521
    :try_start_2
    invoke-virtual {p2, p3}, Landroidx/compose/runtime/snapshots/Snapshot;->restoreCurrent(Landroidx/compose/runtime/snapshots/Snapshot;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 522
    invoke-virtual {p2}, Landroidx/compose/runtime/snapshots/Snapshot;->dispose()V

    move p2, p4

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 521
    :try_start_3
    invoke-virtual {p2, p3}, Landroidx/compose/runtime/snapshots/Snapshot;->restoreCurrent(Landroidx/compose/runtime/snapshots/Snapshot;)V

    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p0

    .line 522
    invoke-virtual {p2}, Landroidx/compose/runtime/snapshots/Snapshot;->dispose()V

    throw p0

    .line 434
    :cond_0
    :goto_0
    invoke-virtual {p0, p1, p2}, Landroidx/compose/foundation/lazy/grid/LazyGridState;->updateScrollPositionIfTheFirstItemWasMoved$foundation_release(Landroidx/compose/foundation/lazy/grid/LazyGridItemProvider;I)I

    move-result p0

    return p0
.end method


# virtual methods
.method public final animateScrollToItem(IILkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/compose/foundation/lazy/grid/LazyGridState;->animateScrollScope:Landroidx/compose/foundation/lazy/grid/LazyGridAnimateScrollScope;

    .line 409
    check-cast p0, Landroidx/compose/foundation/lazy/layout/LazyAnimateScrollScope;

    invoke-static {p0, p1, p2, p3}, Landroidx/compose/foundation/lazy/layout/LazyAnimateScrollKt;->animateScrollToItem(Landroidx/compose/foundation/lazy/layout/LazyAnimateScrollScope;IILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object p1

    if-ne p0, p1, :cond_0

    return-object p0

    :cond_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final applyMeasureResult$foundation_release(Landroidx/compose/foundation/lazy/grid/LazyGridMeasureResult;)V
    .locals 2

    const-string v0, "result"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/compose/foundation/lazy/grid/LazyGridState;->scrollPosition:Landroidx/compose/foundation/lazy/grid/LazyGridScrollPosition;

    .line 416
    invoke-virtual {v0, p1}, Landroidx/compose/foundation/lazy/grid/LazyGridScrollPosition;->updateFromMeasureResult(Landroidx/compose/foundation/lazy/grid/LazyGridMeasureResult;)V

    iget v0, p0, Landroidx/compose/foundation/lazy/grid/LazyGridState;->scrollToBeConsumed:F

    .line 417
    invoke-virtual {p1}, Landroidx/compose/foundation/lazy/grid/LazyGridMeasureResult;->getConsumedScroll()F

    move-result v1

    sub-float/2addr v0, v1

    iput v0, p0, Landroidx/compose/foundation/lazy/grid/LazyGridState;->scrollToBeConsumed:F

    iget-object v0, p0, Landroidx/compose/foundation/lazy/grid/LazyGridState;->layoutInfoState:Landroidx/compose/runtime/MutableState;

    .line 418
    invoke-interface {v0, p1}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    .line 420
    invoke-virtual {p1}, Landroidx/compose/foundation/lazy/grid/LazyGridMeasureResult;->getCanScrollForward()Z

    move-result v0

    invoke-direct {p0, v0}, Landroidx/compose/foundation/lazy/grid/LazyGridState;->setCanScrollForward(Z)V

    .line 421
    invoke-virtual {p1}, Landroidx/compose/foundation/lazy/grid/LazyGridMeasureResult;->getFirstVisibleLine()Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLine;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLine;->getIndex()I

    move-result v0

    if-nez v0, :cond_1

    .line 422
    :cond_0
    invoke-virtual {p1}, Landroidx/compose/foundation/lazy/grid/LazyGridMeasureResult;->getFirstVisibleLineScrollOffset()I

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .line 421
    :goto_0
    invoke-direct {p0, v0}, Landroidx/compose/foundation/lazy/grid/LazyGridState;->setCanScrollBackward(Z)V

    iget v0, p0, Landroidx/compose/foundation/lazy/grid/LazyGridState;->numMeasurePasses:I

    add-int/2addr v0, v1

    iput v0, p0, Landroidx/compose/foundation/lazy/grid/LazyGridState;->numMeasurePasses:I

    .line 426
    check-cast p1, Landroidx/compose/foundation/lazy/grid/LazyGridLayoutInfo;

    invoke-direct {p0, p1}, Landroidx/compose/foundation/lazy/grid/LazyGridState;->cancelPrefetchIfVisibleItemsChanged(Landroidx/compose/foundation/lazy/grid/LazyGridLayoutInfo;)V

    return-void
.end method

.method public dispatchRawDelta(F)F
    .locals 0

    iget-object p0, p0, Landroidx/compose/foundation/lazy/grid/LazyGridState;->scrollableState:Landroidx/compose/foundation/gestures/ScrollableState;

    .line 285
    invoke-interface {p0, p1}, Landroidx/compose/foundation/gestures/ScrollableState;->dispatchRawDelta(F)F

    move-result p0

    return p0
.end method

.method public final getAwaitLayoutModifier$foundation_release()Landroidx/compose/foundation/lazy/layout/AwaitFirstLayoutModifier;
    .locals 0

    iget-object p0, p0, Landroidx/compose/foundation/lazy/grid/LazyGridState;->awaitLayoutModifier:Landroidx/compose/foundation/lazy/layout/AwaitFirstLayoutModifier;

    return-object p0
.end method

.method public final getBeyondBoundsInfo$foundation_release()Landroidx/compose/foundation/lazy/layout/LazyLayoutBeyondBoundsInfo;
    .locals 0

    iget-object p0, p0, Landroidx/compose/foundation/lazy/grid/LazyGridState;->beyondBoundsInfo:Landroidx/compose/foundation/lazy/layout/LazyLayoutBeyondBoundsInfo;

    return-object p0
.end method

.method public getCanScrollBackward()Z
    .locals 0

    iget-object p0, p0, Landroidx/compose/foundation/lazy/grid/LazyGridState;->canScrollBackward$delegate:Landroidx/compose/runtime/MutableState;

    .line 292
    check-cast p0, Landroidx/compose/runtime/State;

    .line 482
    invoke-interface {p0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public getCanScrollForward()Z
    .locals 0

    iget-object p0, p0, Landroidx/compose/foundation/lazy/grid/LazyGridState;->canScrollForward$delegate:Landroidx/compose/runtime/MutableState;

    .line 290
    check-cast p0, Landroidx/compose/runtime/State;

    .line 479
    invoke-interface {p0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public final getDensity$foundation_release()Landroidx/compose/ui/unit/Density;
    .locals 0

    iget-object p0, p0, Landroidx/compose/foundation/lazy/grid/LazyGridState;->density:Landroidx/compose/ui/unit/Density;

    return-object p0
.end method

.method public final getFirstVisibleItemIndex()I
    .locals 0

    iget-object p0, p0, Landroidx/compose/foundation/lazy/grid/LazyGridState;->scrollPosition:Landroidx/compose/foundation/lazy/grid/LazyGridScrollPosition;

    .line 109
    invoke-virtual {p0}, Landroidx/compose/foundation/lazy/grid/LazyGridScrollPosition;->getIndex()I

    move-result p0

    return p0
.end method

.method public final getFirstVisibleItemScrollOffset()I
    .locals 0

    iget-object p0, p0, Landroidx/compose/foundation/lazy/grid/LazyGridState;->scrollPosition:Landroidx/compose/foundation/lazy/grid/LazyGridScrollPosition;

    .line 115
    invoke-virtual {p0}, Landroidx/compose/foundation/lazy/grid/LazyGridScrollPosition;->getScrollOffset()I

    move-result p0

    return p0
.end method

.method public final getInteractionSource()Landroidx/compose/foundation/interaction/InteractionSource;
    .locals 0

    iget-object p0, p0, Landroidx/compose/foundation/lazy/grid/LazyGridState;->internalInteractionSource:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    .line 140
    check-cast p0, Landroidx/compose/foundation/interaction/InteractionSource;

    return-object p0
.end method

.method public final getInternalInteractionSource$foundation_release()Landroidx/compose/foundation/interaction/MutableInteractionSource;
    .locals 0

    iget-object p0, p0, Landroidx/compose/foundation/lazy/grid/LazyGridState;->internalInteractionSource:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    return-object p0
.end method

.method public final getLayoutInfo()Landroidx/compose/foundation/lazy/grid/LazyGridLayoutInfo;
    .locals 0

    iget-object p0, p0, Landroidx/compose/foundation/lazy/grid/LazyGridState;->layoutInfoState:Landroidx/compose/runtime/MutableState;

    .line 133
    invoke-interface {p0}, Landroidx/compose/runtime/MutableState;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/compose/foundation/lazy/grid/LazyGridLayoutInfo;

    return-object p0
.end method

.method public final getNearestRange$foundation_release()Lkotlin/ranges/IntRange;
    .locals 0

    iget-object p0, p0, Landroidx/compose/foundation/lazy/grid/LazyGridState;->scrollPosition:Landroidx/compose/foundation/lazy/grid/LazyGridScrollPosition;

    .line 240
    invoke-virtual {p0}, Landroidx/compose/foundation/lazy/grid/LazyGridScrollPosition;->getNearestRangeState()Landroidx/compose/foundation/lazy/layout/LazyLayoutNearestRangeState;

    move-result-object p0

    check-cast p0, Landroidx/compose/runtime/State;

    .line 478
    invoke-interface {p0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lkotlin/ranges/IntRange;

    return-object p0
.end method

.method public final getNumMeasurePasses$foundation_release()I
    .locals 0

    iget p0, p0, Landroidx/compose/foundation/lazy/grid/LazyGridState;->numMeasurePasses:I

    return p0
.end method

.method public final getPinnedItems$foundation_release()Landroidx/compose/foundation/lazy/layout/LazyLayoutPinnedItemList;
    .locals 0

    iget-object p0, p0, Landroidx/compose/foundation/lazy/grid/LazyGridState;->pinnedItems:Landroidx/compose/foundation/lazy/layout/LazyLayoutPinnedItemList;

    return-object p0
.end method

.method public final getPlacementAnimator$foundation_release()Landroidx/compose/foundation/lazy/grid/LazyGridItemPlacementAnimator;
    .locals 0

    iget-object p0, p0, Landroidx/compose/foundation/lazy/grid/LazyGridState;->placementAnimator:Landroidx/compose/foundation/lazy/grid/LazyGridItemPlacementAnimator;

    return-object p0
.end method

.method public final getPrefetchInfoRetriever$foundation_release()Lkotlin/jvm/functions/Function1;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Lkotlin/Pair<",
            "Ljava/lang/Integer;",
            "Landroidx/compose/ui/unit/Constraints;",
            ">;>;>;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/compose/foundation/lazy/grid/LazyGridState;->prefetchInfoRetriever$delegate:Landroidx/compose/runtime/MutableState;

    .line 226
    check-cast p0, Landroidx/compose/runtime/State;

    .line 475
    invoke-interface {p0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lkotlin/jvm/functions/Function1;

    return-object p0
.end method

.method public final getPrefetchState$foundation_release()Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState;
    .locals 0

    iget-object p0, p0, Landroidx/compose/foundation/lazy/grid/LazyGridState;->prefetchState:Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState;

    return-object p0
.end method

.method public final getPrefetchingEnabled$foundation_release()Z
    .locals 0

    iget-boolean p0, p0, Landroidx/compose/foundation/lazy/grid/LazyGridState;->prefetchingEnabled:Z

    return p0
.end method

.method public final getRemeasurement$foundation_release()Landroidx/compose/ui/layout/Remeasurement;
    .locals 0

    iget-object p0, p0, Landroidx/compose/foundation/lazy/grid/LazyGridState;->remeasurement:Landroidx/compose/ui/layout/Remeasurement;

    return-object p0
.end method

.method public final getRemeasurementModifier$foundation_release()Landroidx/compose/ui/layout/RemeasurementModifier;
    .locals 0

    iget-object p0, p0, Landroidx/compose/foundation/lazy/grid/LazyGridState;->remeasurementModifier:Landroidx/compose/ui/layout/RemeasurementModifier;

    return-object p0
.end method

.method public final getScrollToBeConsumed$foundation_release()F
    .locals 0

    iget p0, p0, Landroidx/compose/foundation/lazy/grid/LazyGridState;->scrollToBeConsumed:F

    return p0
.end method

.method public final getSlotsPerLine$foundation_release()I
    .locals 0

    iget-object p0, p0, Landroidx/compose/foundation/lazy/grid/LazyGridState;->slotsPerLine$delegate:Landroidx/compose/runtime/MutableIntState;

    .line 154
    check-cast p0, Landroidx/compose/runtime/IntState;

    .line 472
    invoke-interface {p0}, Landroidx/compose/runtime/IntState;->getIntValue()I

    move-result p0

    return p0
.end method

.method public isScrollInProgress()Z
    .locals 0

    iget-object p0, p0, Landroidx/compose/foundation/lazy/grid/LazyGridState;->scrollableState:Landroidx/compose/foundation/gestures/ScrollableState;

    .line 288
    invoke-interface {p0}, Landroidx/compose/foundation/gestures/ScrollableState;->isScrollInProgress()Z

    move-result p0

    return p0
.end method

.method public final isVertical$foundation_release()Z
    .locals 0

    iget-boolean p0, p0, Landroidx/compose/foundation/lazy/grid/LazyGridState;->isVertical:Z

    return p0
.end method

.method public final onScroll$foundation_release(F)F
    .locals 4

    const/4 v0, 0x0

    cmpg-float v1, p1, v0

    if-gez v1, :cond_0

    .line 299
    invoke-virtual {p0}, Landroidx/compose/foundation/lazy/grid/LazyGridState;->getCanScrollForward()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    cmpl-float v1, p1, v0

    if-lez v1, :cond_2

    invoke-virtual {p0}, Landroidx/compose/foundation/lazy/grid/LazyGridState;->getCanScrollBackward()Z

    move-result v1

    if-nez v1, :cond_2

    :cond_1
    return v0

    :cond_2
    iget v1, p0, Landroidx/compose/foundation/lazy/grid/LazyGridState;->scrollToBeConsumed:F

    .line 302
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const/high16 v2, 0x3f000000    # 0.5f

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_6

    iget v1, p0, Landroidx/compose/foundation/lazy/grid/LazyGridState;->scrollToBeConsumed:F

    add-float/2addr v1, p1

    iput v1, p0, Landroidx/compose/foundation/lazy/grid/LazyGridState;->scrollToBeConsumed:F

    .line 310
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpl-float v1, v1, v2

    if-lez v1, :cond_4

    iget v1, p0, Landroidx/compose/foundation/lazy/grid/LazyGridState;->scrollToBeConsumed:F

    iget-object v3, p0, Landroidx/compose/foundation/lazy/grid/LazyGridState;->remeasurement:Landroidx/compose/ui/layout/Remeasurement;

    if-eqz v3, :cond_3

    .line 312
    invoke-interface {v3}, Landroidx/compose/ui/layout/Remeasurement;->forceRemeasure()V

    :cond_3
    iget-boolean v3, p0, Landroidx/compose/foundation/lazy/grid/LazyGridState;->prefetchingEnabled:Z

    if-eqz v3, :cond_4

    iget v3, p0, Landroidx/compose/foundation/lazy/grid/LazyGridState;->scrollToBeConsumed:F

    sub-float/2addr v1, v3

    .line 314
    invoke-direct {p0, v1}, Landroidx/compose/foundation/lazy/grid/LazyGridState;->notifyPrefetch(F)V

    :cond_4
    iget v1, p0, Landroidx/compose/foundation/lazy/grid/LazyGridState;->scrollToBeConsumed:F

    .line 319
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_5

    return p1

    :cond_5
    iget v1, p0, Landroidx/compose/foundation/lazy/grid/LazyGridState;->scrollToBeConsumed:F

    sub-float/2addr p1, v1

    iput v0, p0, Landroidx/compose/foundation/lazy/grid/LazyGridState;->scrollToBeConsumed:F

    return p1

    .line 303
    :cond_6
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "entered drag with non-zero pending scroll: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p0, p0, Landroidx/compose/foundation/lazy/grid/LazyGridState;->scrollToBeConsumed:F

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 302
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public scroll(Landroidx/compose/foundation/MutatePriority;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/foundation/MutatePriority;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroidx/compose/foundation/gestures/ScrollScope;",
            "-",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;+",
            "Ljava/lang/Object;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p3, Landroidx/compose/foundation/lazy/grid/LazyGridState$scroll$1;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Landroidx/compose/foundation/lazy/grid/LazyGridState$scroll$1;

    iget v1, v0, Landroidx/compose/foundation/lazy/grid/LazyGridState$scroll$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p3, v0, Landroidx/compose/foundation/lazy/grid/LazyGridState$scroll$1;->label:I

    sub-int/2addr p3, v2

    iput p3, v0, Landroidx/compose/foundation/lazy/grid/LazyGridState$scroll$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Landroidx/compose/foundation/lazy/grid/LazyGridState$scroll$1;

    invoke-direct {v0, p0, p3}, Landroidx/compose/foundation/lazy/grid/LazyGridState$scroll$1;-><init>(Landroidx/compose/foundation/lazy/grid/LazyGridState;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p3, v0, Landroidx/compose/foundation/lazy/grid/LazyGridState$scroll$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 276
    iget v2, v0, Landroidx/compose/foundation/lazy/grid/LazyGridState$scroll$1;->label:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_2

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    iget-object p0, v0, Landroidx/compose/foundation/lazy/grid/LazyGridState$scroll$1;->L$2:Ljava/lang/Object;

    move-object p2, p0

    check-cast p2, Lkotlin/jvm/functions/Function2;

    iget-object p0, v0, Landroidx/compose/foundation/lazy/grid/LazyGridState$scroll$1;->L$1:Ljava/lang/Object;

    move-object p1, p0

    check-cast p1, Landroidx/compose/foundation/MutatePriority;

    iget-object p0, v0, Landroidx/compose/foundation/lazy/grid/LazyGridState$scroll$1;->L$0:Ljava/lang/Object;

    check-cast p0, Landroidx/compose/foundation/lazy/grid/LazyGridState;

    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p3, p0, Landroidx/compose/foundation/lazy/grid/LazyGridState;->awaitLayoutModifier:Landroidx/compose/foundation/lazy/layout/AwaitFirstLayoutModifier;

    .line 280
    iput-object p0, v0, Landroidx/compose/foundation/lazy/grid/LazyGridState$scroll$1;->L$0:Ljava/lang/Object;

    iput-object p1, v0, Landroidx/compose/foundation/lazy/grid/LazyGridState$scroll$1;->L$1:Ljava/lang/Object;

    iput-object p2, v0, Landroidx/compose/foundation/lazy/grid/LazyGridState$scroll$1;->L$2:Ljava/lang/Object;

    iput v4, v0, Landroidx/compose/foundation/lazy/grid/LazyGridState$scroll$1;->label:I

    invoke-virtual {p3, v0}, Landroidx/compose/foundation/lazy/layout/AwaitFirstLayoutModifier;->waitForFirstLayout(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p3

    if-ne p3, v1, :cond_4

    return-object v1

    .line 281
    :cond_4
    :goto_1
    iget-object p0, p0, Landroidx/compose/foundation/lazy/grid/LazyGridState;->scrollableState:Landroidx/compose/foundation/gestures/ScrollableState;

    const/4 p3, 0x0

    iput-object p3, v0, Landroidx/compose/foundation/lazy/grid/LazyGridState$scroll$1;->L$0:Ljava/lang/Object;

    iput-object p3, v0, Landroidx/compose/foundation/lazy/grid/LazyGridState$scroll$1;->L$1:Ljava/lang/Object;

    iput-object p3, v0, Landroidx/compose/foundation/lazy/grid/LazyGridState$scroll$1;->L$2:Ljava/lang/Object;

    iput v3, v0, Landroidx/compose/foundation/lazy/grid/LazyGridState$scroll$1;->label:I

    invoke-interface {p0, p1, p2, v0}, Landroidx/compose/foundation/gestures/ScrollableState;->scroll(Landroidx/compose/foundation/MutatePriority;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_5

    return-object v1

    .line 282
    :cond_5
    :goto_2
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final scrollToItem(IILkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 256
    move-object v0, p0

    check-cast v0, Landroidx/compose/foundation/gestures/ScrollableState;

    const/4 v1, 0x0

    new-instance v2, Landroidx/compose/foundation/lazy/grid/LazyGridState$scrollToItem$2;

    const/4 v3, 0x0

    invoke-direct {v2, p0, p1, p2, v3}, Landroidx/compose/foundation/lazy/grid/LazyGridState$scrollToItem$2;-><init>(Landroidx/compose/foundation/lazy/grid/LazyGridState;IILkotlin/coroutines/Continuation;)V

    check-cast v2, Lkotlin/jvm/functions/Function2;

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v3, p3

    invoke-static/range {v0 .. v5}, Landroidx/compose/foundation/gestures/ScrollableState;->scroll$default(Landroidx/compose/foundation/gestures/ScrollableState;Landroidx/compose/foundation/MutatePriority;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object p1

    if-ne p0, p1, :cond_0

    return-object p0

    :cond_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final setDensity$foundation_release(Landroidx/compose/ui/unit/Density;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Landroidx/compose/foundation/lazy/grid/LazyGridState;->density:Landroidx/compose/ui/unit/Density;

    return-void
.end method

.method public final setPrefetchInfoRetriever$foundation_release(Lkotlin/jvm/functions/Function1;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Integer;",
            "+",
            "Ljava/util/List<",
            "Lkotlin/Pair<",
            "Ljava/lang/Integer;",
            "Landroidx/compose/ui/unit/Constraints;",
            ">;>;>;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Landroidx/compose/foundation/lazy/grid/LazyGridState;->prefetchInfoRetriever$delegate:Landroidx/compose/runtime/MutableState;

    .line 476
    invoke-interface {p0, p1}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public final setPrefetchingEnabled$foundation_release(Z)V
    .locals 0

    iput-boolean p1, p0, Landroidx/compose/foundation/lazy/grid/LazyGridState;->prefetchingEnabled:Z

    return-void
.end method

.method public final setRemeasurement$foundation_release(Landroidx/compose/ui/layout/Remeasurement;)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/foundation/lazy/grid/LazyGridState;->remeasurement:Landroidx/compose/ui/layout/Remeasurement;

    return-void
.end method

.method public final setSlotsPerLine$foundation_release(I)V
    .locals 0

    iget-object p0, p0, Landroidx/compose/foundation/lazy/grid/LazyGridState;->slotsPerLine$delegate:Landroidx/compose/runtime/MutableIntState;

    .line 473
    invoke-interface {p0, p1}, Landroidx/compose/runtime/MutableIntState;->setIntValue(I)V

    return-void
.end method

.method public final setVertical$foundation_release(Z)V
    .locals 0

    iput-boolean p1, p0, Landroidx/compose/foundation/lazy/grid/LazyGridState;->isVertical:Z

    return-void
.end method

.method public final snapToItemIndexInternal$foundation_release(II)V
    .locals 1

    iget-object v0, p0, Landroidx/compose/foundation/lazy/grid/LazyGridState;->scrollPosition:Landroidx/compose/foundation/lazy/grid/LazyGridScrollPosition;

    .line 262
    invoke-virtual {v0, p1, p2}, Landroidx/compose/foundation/lazy/grid/LazyGridScrollPosition;->requestPosition(II)V

    iget-object p1, p0, Landroidx/compose/foundation/lazy/grid/LazyGridState;->placementAnimator:Landroidx/compose/foundation/lazy/grid/LazyGridItemPlacementAnimator;

    .line 264
    invoke-virtual {p1}, Landroidx/compose/foundation/lazy/grid/LazyGridItemPlacementAnimator;->reset()V

    iget-object p0, p0, Landroidx/compose/foundation/lazy/grid/LazyGridState;->remeasurement:Landroidx/compose/ui/layout/Remeasurement;

    if-eqz p0, :cond_0

    .line 265
    invoke-interface {p0}, Landroidx/compose/ui/layout/Remeasurement;->forceRemeasure()V

    :cond_0
    return-void
.end method

.method public final updateScrollPositionIfTheFirstItemWasMoved$foundation_release(Landroidx/compose/foundation/lazy/grid/LazyGridItemProvider;I)I
    .locals 1

    const-string v0, "itemProvider"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Landroidx/compose/foundation/lazy/grid/LazyGridState;->scrollPosition:Landroidx/compose/foundation/lazy/grid/LazyGridScrollPosition;

    .line 437
    invoke-virtual {p0, p1, p2}, Landroidx/compose/foundation/lazy/grid/LazyGridScrollPosition;->updateScrollPositionIfTheFirstItemWasMoved(Landroidx/compose/foundation/lazy/grid/LazyGridItemProvider;I)I

    move-result p0

    return p0
.end method
