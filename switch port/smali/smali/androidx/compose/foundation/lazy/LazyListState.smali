.class public final Landroidx/compose/foundation/lazy/LazyListState;
.super Ljava/lang/Object;
.source "LazyListState.kt"

# interfaces
.implements Landroidx/compose/foundation/gestures/ScrollableState;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/foundation/lazy/LazyListState$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nLazyListState.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LazyListState.kt\nandroidx/compose/foundation/lazy/LazyListState\n+ 2 SnapshotState.kt\nandroidx/compose/runtime/SnapshotStateKt__SnapshotStateKt\n+ 3 Snapshot.kt\nandroidx/compose/runtime/snapshots/Snapshot$Companion\n+ 4 Snapshot.kt\nandroidx/compose/runtime/snapshots/Snapshot\n*L\n1#1,439:1\n81#2:440\n81#2:441\n107#2,2:442\n81#2:444\n107#2,2:445\n495#3,4:447\n500#3:456\n129#4,5:451\n*S KotlinDebug\n*F\n+ 1 LazyListState.kt\nandroidx/compose/foundation/lazy/LazyListState\n*L\n229#1:440\n279#1:441\n279#1:442,2\n281#1:444\n281#1:445,2\n409#1:447,4\n409#1:456\n409#1:451,5\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u00d6\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u000c\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0010\u0007\n\u0002\u0008\u0006\n\u0002\u0010\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0007\u0018\u0000 \u0089\u00012\u00020\u0001:\u0002\u0089\u0001B\u0019\u0012\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0005J#\u0010f\u001a\u00020g2\u0006\u0010h\u001a\u00020\u00032\u0008\u0008\u0002\u0010i\u001a\u00020\u0003H\u0086@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010jJ\u0015\u0010k\u001a\u00020g2\u0006\u0010l\u001a\u00020mH\u0000\u00a2\u0006\u0002\u0008nJ\u0010\u0010o\u001a\u00020g2\u0006\u0010p\u001a\u000203H\u0002J\u0010\u0010q\u001a\u00020`2\u0006\u0010r\u001a\u00020`H\u0016J\u0010\u0010s\u001a\u00020g2\u0006\u0010r\u001a\u00020`H\u0002J\u0015\u0010t\u001a\u00020`2\u0006\u0010u\u001a\u00020`H\u0000\u00a2\u0006\u0002\u0008vJC\u0010w\u001a\u00020g2\u0006\u0010x\u001a\u00020y2\'\u0010z\u001a#\u0008\u0001\u0012\u0004\u0012\u00020|\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020g0}\u0012\u0006\u0012\u0004\u0018\u00010~0{\u00a2\u0006\u0002\u0008\u007fH\u0096@\u00f8\u0001\u0000\u00a2\u0006\u0003\u0010\u0080\u0001J$\u0010\u0081\u0001\u001a\u00020g2\u0006\u0010h\u001a\u00020\u00032\u0008\u0008\u0002\u0010i\u001a\u00020\u0003H\u0086@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010jJ\u001f\u0010\u0082\u0001\u001a\u00020g2\u0006\u0010h\u001a\u00020\u00032\u0006\u0010i\u001a\u00020\u0003H\u0000\u00a2\u0006\u0003\u0008\u0083\u0001J$\u0010\u0084\u0001\u001a\u00020\u00032\u0008\u0010\u0085\u0001\u001a\u00030\u0086\u00012\t\u0008\u0002\u0010\u0087\u0001\u001a\u00020\u0003H\u0000\u00a2\u0006\u0003\u0008\u0088\u0001R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0008\u001a\u00020\tX\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000bR\u0014\u0010\u000c\u001a\u00020\rX\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\u000fR+\u0010\u0012\u001a\u00020\u00112\u0006\u0010\u0010\u001a\u00020\u00118V@RX\u0096\u008e\u0002\u00a2\u0006\u0012\n\u0004\u0008\u0017\u0010\u0018\u001a\u0004\u0008\u0013\u0010\u0014\"\u0004\u0008\u0015\u0010\u0016R+\u0010\u0019\u001a\u00020\u00112\u0006\u0010\u0010\u001a\u00020\u00118V@RX\u0096\u008e\u0002\u00a2\u0006\u0012\n\u0004\u0008\u001c\u0010\u0018\u001a\u0004\u0008\u001a\u0010\u0014\"\u0004\u0008\u001b\u0010\u0016R\u0010\u0010\u001d\u001a\u0004\u0018\u00010\u001eX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u001f\u001a\u00020 X\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008!\u0010\"\"\u0004\u0008#\u0010$R\u0011\u0010\u0002\u001a\u00020\u00038F\u00a2\u0006\u0006\u001a\u0004\u0008%\u0010&R\u0011\u0010\u0004\u001a\u00020\u00038F\u00a2\u0006\u0006\u001a\u0004\u0008\'\u0010&R\u000e\u0010(\u001a\u00020\u0003X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0011\u0010)\u001a\u00020*8F\u00a2\u0006\u0006\u001a\u0004\u0008+\u0010,R\u0014\u0010-\u001a\u00020.X\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008/\u00100R\u0014\u00101\u001a\u00020\u00118VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u00081\u0010\u0014R\u0011\u00102\u001a\u0002038F\u00a2\u0006\u0006\u001a\u0004\u00084\u00105R\u0014\u00106\u001a\u0008\u0012\u0004\u0012\u00020307X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001b\u00108\u001a\u0002098@X\u0080\u0084\u0002\u00a2\u0006\u000c\u001a\u0004\u0008<\u0010=*\u0004\u0008:\u0010;R\u001e\u0010>\u001a\u00020\u00032\u0006\u0010\u0010\u001a\u00020\u0003@BX\u0080\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008?\u0010&R\u0014\u0010@\u001a\u00020AX\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008B\u0010CR\u0014\u0010D\u001a\u00020EX\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008F\u0010GR\u0014\u0010H\u001a\u00020IX\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008J\u0010KR\u001a\u0010L\u001a\u00020\u0011X\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008M\u0010\u0014\"\u0004\u0008N\u0010\u0016R%\u0010O\u001a\u00020PX\u0080\u000e\u00f8\u0001\u0000\u00f8\u0001\u0001\u00f8\u0001\u0002\u00a2\u0006\u0010\n\u0002\u0010U\u001a\u0004\u0008Q\u0010R\"\u0004\u0008S\u0010TR\"\u0010W\u001a\u0004\u0018\u00010V2\u0008\u0010\u0010\u001a\u0004\u0018\u00010V@BX\u0080\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008X\u0010YR\u0014\u0010Z\u001a\u00020[X\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\\\u0010]R\u000e\u0010^\u001a\u00020_X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001e\u0010a\u001a\u00020`2\u0006\u0010\u0010\u001a\u00020`@BX\u0080\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008b\u0010cR\u000e\u0010d\u001a\u00020\u0001X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010e\u001a\u00020\u0011X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u0082\u0002\u000f\n\u0002\u0008\u0019\n\u0005\u0008\u00a1\u001e0\u0001\n\u0002\u0008!\u00a8\u0006\u008a\u0001"
    }
    d2 = {
        "Landroidx/compose/foundation/lazy/LazyListState;",
        "Landroidx/compose/foundation/gestures/ScrollableState;",
        "firstVisibleItemIndex",
        "",
        "firstVisibleItemScrollOffset",
        "(II)V",
        "animateScrollScope",
        "Landroidx/compose/foundation/lazy/LazyListAnimateScrollScope;",
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
        "currentPrefetchHandle",
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
        "indexToPrefetch",
        "interactionSource",
        "Landroidx/compose/foundation/interaction/InteractionSource;",
        "getInteractionSource",
        "()Landroidx/compose/foundation/interaction/InteractionSource;",
        "internalInteractionSource",
        "Landroidx/compose/foundation/interaction/MutableInteractionSource;",
        "getInternalInteractionSource$foundation_release",
        "()Landroidx/compose/foundation/interaction/MutableInteractionSource;",
        "isScrollInProgress",
        "layoutInfo",
        "Landroidx/compose/foundation/lazy/LazyListLayoutInfo;",
        "getLayoutInfo",
        "()Landroidx/compose/foundation/lazy/LazyListLayoutInfo;",
        "layoutInfoState",
        "Landroidx/compose/runtime/MutableState;",
        "nearestRange",
        "Lkotlin/ranges/IntRange;",
        "getNearestRange$foundation_release$delegate",
        "(Landroidx/compose/foundation/lazy/LazyListState;)Ljava/lang/Object;",
        "getNearestRange$foundation_release",
        "()Lkotlin/ranges/IntRange;",
        "numMeasurePasses",
        "getNumMeasurePasses$foundation_release",
        "pinnedItems",
        "Landroidx/compose/foundation/lazy/layout/LazyLayoutPinnedItemList;",
        "getPinnedItems$foundation_release",
        "()Landroidx/compose/foundation/lazy/layout/LazyLayoutPinnedItemList;",
        "placementAnimator",
        "Landroidx/compose/foundation/lazy/LazyListItemPlacementAnimator;",
        "getPlacementAnimator$foundation_release",
        "()Landroidx/compose/foundation/lazy/LazyListItemPlacementAnimator;",
        "prefetchState",
        "Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState;",
        "getPrefetchState$foundation_release",
        "()Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState;",
        "prefetchingEnabled",
        "getPrefetchingEnabled$foundation_release",
        "setPrefetchingEnabled$foundation_release",
        "premeasureConstraints",
        "Landroidx/compose/ui/unit/Constraints;",
        "getPremeasureConstraints-msEJaDk$foundation_release",
        "()J",
        "setPremeasureConstraints-BRTryo0$foundation_release",
        "(J)V",
        "J",
        "Landroidx/compose/ui/layout/Remeasurement;",
        "remeasurement",
        "getRemeasurement$foundation_release",
        "()Landroidx/compose/ui/layout/Remeasurement;",
        "remeasurementModifier",
        "Landroidx/compose/ui/layout/RemeasurementModifier;",
        "getRemeasurementModifier$foundation_release",
        "()Landroidx/compose/ui/layout/RemeasurementModifier;",
        "scrollPosition",
        "Landroidx/compose/foundation/lazy/LazyListScrollPosition;",
        "",
        "scrollToBeConsumed",
        "getScrollToBeConsumed$foundation_release",
        "()F",
        "scrollableState",
        "wasScrollingForward",
        "animateScrollToItem",
        "",
        "index",
        "scrollOffset",
        "(IILkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "applyMeasureResult",
        "result",
        "Landroidx/compose/foundation/lazy/LazyListMeasureResult;",
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
        "Landroidx/compose/foundation/lazy/LazyListItemProvider;",
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

.field public static final Companion:Landroidx/compose/foundation/lazy/LazyListState$Companion;

.field private static final Saver:Landroidx/compose/runtime/saveable/Saver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/saveable/Saver<",
            "Landroidx/compose/foundation/lazy/LazyListState;",
            "*>;"
        }
    .end annotation
.end field


# instance fields
.field private final animateScrollScope:Landroidx/compose/foundation/lazy/LazyListAnimateScrollScope;

.field private final awaitLayoutModifier:Landroidx/compose/foundation/lazy/layout/AwaitFirstLayoutModifier;

.field private final beyondBoundsInfo:Landroidx/compose/foundation/lazy/layout/LazyLayoutBeyondBoundsInfo;

.field private final canScrollBackward$delegate:Landroidx/compose/runtime/MutableState;

.field private final canScrollForward$delegate:Landroidx/compose/runtime/MutableState;

.field private currentPrefetchHandle:Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState$PrefetchHandle;

.field private density:Landroidx/compose/ui/unit/Density;

.field private indexToPrefetch:I

.field private final internalInteractionSource:Landroidx/compose/foundation/interaction/MutableInteractionSource;

.field private final layoutInfoState:Landroidx/compose/runtime/MutableState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/MutableState<",
            "Landroidx/compose/foundation/lazy/LazyListLayoutInfo;",
            ">;"
        }
    .end annotation
.end field

.field private numMeasurePasses:I

.field private final pinnedItems:Landroidx/compose/foundation/lazy/layout/LazyLayoutPinnedItemList;

.field private final placementAnimator:Landroidx/compose/foundation/lazy/LazyListItemPlacementAnimator;

.field private final prefetchState:Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState;

.field private prefetchingEnabled:Z

.field private premeasureConstraints:J

.field private remeasurement:Landroidx/compose/ui/layout/Remeasurement;

.field private final remeasurementModifier:Landroidx/compose/ui/layout/RemeasurementModifier;

.field private final scrollPosition:Landroidx/compose/foundation/lazy/LazyListScrollPosition;

.field private scrollToBeConsumed:F

.field private final scrollableState:Landroidx/compose/foundation/gestures/ScrollableState;

.field private wasScrollingForward:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/compose/foundation/lazy/LazyListState$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/compose/foundation/lazy/LazyListState$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/compose/foundation/lazy/LazyListState;->Companion:Landroidx/compose/foundation/lazy/LazyListState$Companion;

    .line 416
    sget-object v0, Landroidx/compose/foundation/lazy/LazyListState$Companion$Saver$1;->INSTANCE:Landroidx/compose/foundation/lazy/LazyListState$Companion$Saver$1;

    check-cast v0, Lkotlin/jvm/functions/Function2;

    sget-object v1, Landroidx/compose/foundation/lazy/LazyListState$Companion$Saver$2;->INSTANCE:Landroidx/compose/foundation/lazy/LazyListState$Companion$Saver$2;

    check-cast v1, Lkotlin/jvm/functions/Function1;

    invoke-static {v0, v1}, Landroidx/compose/runtime/saveable/ListSaverKt;->listSaver(Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;)Landroidx/compose/runtime/saveable/Saver;

    move-result-object v0

    sput-object v0, Landroidx/compose/foundation/lazy/LazyListState;->Saver:Landroidx/compose/runtime/saveable/Saver;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const/4 v0, 0x3

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v2, v2, v0, v1}, Landroidx/compose/foundation/lazy/LazyListState;-><init>(IIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(II)V
    .locals 8

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    new-instance v0, Landroidx/compose/foundation/lazy/LazyListScrollPosition;

    invoke-direct {v0, p1, p2}, Landroidx/compose/foundation/lazy/LazyListScrollPosition;-><init>(II)V

    iput-object v0, p0, Landroidx/compose/foundation/lazy/LazyListState;->scrollPosition:Landroidx/compose/foundation/lazy/LazyListScrollPosition;

    .line 91
    new-instance p1, Landroidx/compose/foundation/lazy/LazyListAnimateScrollScope;

    invoke-direct {p1, p0}, Landroidx/compose/foundation/lazy/LazyListAnimateScrollScope;-><init>(Landroidx/compose/foundation/lazy/LazyListState;)V

    iput-object p1, p0, Landroidx/compose/foundation/lazy/LazyListState;->animateScrollScope:Landroidx/compose/foundation/lazy/LazyListAnimateScrollScope;

    .line 120
    sget-object p1, Landroidx/compose/foundation/lazy/EmptyLazyListLayoutInfo;->INSTANCE:Landroidx/compose/foundation/lazy/EmptyLazyListLayoutInfo;

    const/4 p2, 0x0

    const/4 v1, 0x2

    invoke-static {p1, p2, v1, p2}, Landroidx/compose/runtime/SnapshotStateKt;->mutableStateOf$default(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;ILjava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object p1

    iput-object p1, p0, Landroidx/compose/foundation/lazy/LazyListState;->layoutInfoState:Landroidx/compose/runtime/MutableState;

    .line 144
    invoke-static {}, Landroidx/compose/foundation/interaction/InteractionSourceKt;->MutableInteractionSource()Landroidx/compose/foundation/interaction/MutableInteractionSource;

    move-result-object p1

    iput-object p1, p0, Landroidx/compose/foundation/lazy/LazyListState;->internalInteractionSource:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    const/high16 p1, 0x3f800000    # 1.0f

    .line 156
    invoke-static {p1, p1}, Landroidx/compose/ui/unit/DensityKt;->Density(FF)Landroidx/compose/ui/unit/Density;

    move-result-object p1

    iput-object p1, p0, Landroidx/compose/foundation/lazy/LazyListState;->density:Landroidx/compose/ui/unit/Density;

    .line 162
    new-instance p1, Landroidx/compose/foundation/lazy/LazyListState$scrollableState$1;

    invoke-direct {p1, p0}, Landroidx/compose/foundation/lazy/LazyListState$scrollableState$1;-><init>(Landroidx/compose/foundation/lazy/LazyListState;)V

    check-cast p1, Lkotlin/jvm/functions/Function1;

    invoke-static {p1}, Landroidx/compose/foundation/gestures/ScrollableStateKt;->ScrollableState(Lkotlin/jvm/functions/Function1;)Landroidx/compose/foundation/gestures/ScrollableState;

    move-result-object p1

    iput-object p1, p0, Landroidx/compose/foundation/lazy/LazyListState;->scrollableState:Landroidx/compose/foundation/gestures/ScrollableState;

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/compose/foundation/lazy/LazyListState;->prefetchingEnabled:Z

    const/4 p1, -0x1

    iput p1, p0, Landroidx/compose/foundation/lazy/LazyListState;->indexToPrefetch:I

    .line 203
    new-instance p1, Landroidx/compose/foundation/lazy/LazyListState$remeasurementModifier$1;

    invoke-direct {p1, p0}, Landroidx/compose/foundation/lazy/LazyListState$remeasurementModifier$1;-><init>(Landroidx/compose/foundation/lazy/LazyListState;)V

    check-cast p1, Landroidx/compose/ui/layout/RemeasurementModifier;

    iput-object p1, p0, Landroidx/compose/foundation/lazy/LazyListState;->remeasurementModifier:Landroidx/compose/ui/layout/RemeasurementModifier;

    .line 213
    new-instance p1, Landroidx/compose/foundation/lazy/layout/AwaitFirstLayoutModifier;

    invoke-direct {p1}, Landroidx/compose/foundation/lazy/layout/AwaitFirstLayoutModifier;-><init>()V

    iput-object p1, p0, Landroidx/compose/foundation/lazy/LazyListState;->awaitLayoutModifier:Landroidx/compose/foundation/lazy/layout/AwaitFirstLayoutModifier;

    .line 215
    new-instance p1, Landroidx/compose/foundation/lazy/LazyListItemPlacementAnimator;

    invoke-direct {p1}, Landroidx/compose/foundation/lazy/LazyListItemPlacementAnimator;-><init>()V

    iput-object p1, p0, Landroidx/compose/foundation/lazy/LazyListState;->placementAnimator:Landroidx/compose/foundation/lazy/LazyListItemPlacementAnimator;

    .line 217
    new-instance p1, Landroidx/compose/foundation/lazy/layout/LazyLayoutBeyondBoundsInfo;

    invoke-direct {p1}, Landroidx/compose/foundation/lazy/layout/LazyLayoutBeyondBoundsInfo;-><init>()V

    iput-object p1, p0, Landroidx/compose/foundation/lazy/LazyListState;->beyondBoundsInfo:Landroidx/compose/foundation/lazy/layout/LazyLayoutBeyondBoundsInfo;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0xf

    const/4 v7, 0x0

    .line 222
    invoke-static/range {v2 .. v7}, Landroidx/compose/ui/unit/ConstraintsKt;->Constraints$default(IIIIILjava/lang/Object;)J

    move-result-wide v2

    iput-wide v2, p0, Landroidx/compose/foundation/lazy/LazyListState;->premeasureConstraints:J

    .line 227
    new-instance p1, Landroidx/compose/foundation/lazy/layout/LazyLayoutPinnedItemList;

    invoke-direct {p1}, Landroidx/compose/foundation/lazy/layout/LazyLayoutPinnedItemList;-><init>()V

    iput-object p1, p0, Landroidx/compose/foundation/lazy/LazyListState;->pinnedItems:Landroidx/compose/foundation/lazy/layout/LazyLayoutPinnedItemList;

    .line 229
    invoke-virtual {v0}, Landroidx/compose/foundation/lazy/LazyListScrollPosition;->getNearestRangeState()Landroidx/compose/foundation/lazy/layout/LazyLayoutNearestRangeState;

    const/4 p1, 0x0

    .line 279
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-static {p1, p2, v1, p2}, Landroidx/compose/runtime/SnapshotStateKt;->mutableStateOf$default(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;ILjava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object v0

    iput-object v0, p0, Landroidx/compose/foundation/lazy/LazyListState;->canScrollForward$delegate:Landroidx/compose/runtime/MutableState;

    .line 281
    invoke-static {p1, p2, v1, p2}, Landroidx/compose/runtime/SnapshotStateKt;->mutableStateOf$default(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;ILjava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object p1

    iput-object p1, p0, Landroidx/compose/foundation/lazy/LazyListState;->canScrollBackward$delegate:Landroidx/compose/runtime/MutableState;

    .line 367
    new-instance p1, Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState;

    invoke-direct {p1}, Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState;-><init>()V

    iput-object p1, p0, Landroidx/compose/foundation/lazy/LazyListState;->prefetchState:Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState;

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

    .line 81
    :cond_1
    invoke-direct {p0, p1, p2}, Landroidx/compose/foundation/lazy/LazyListState;-><init>(II)V

    return-void
.end method

.method public static final synthetic access$getSaver$cp()Landroidx/compose/runtime/saveable/Saver;
    .locals 1

    sget-object v0, Landroidx/compose/foundation/lazy/LazyListState;->Saver:Landroidx/compose/runtime/saveable/Saver;

    return-object v0
.end method

.method public static final synthetic access$setRemeasurement$p(Landroidx/compose/foundation/lazy/LazyListState;Landroidx/compose/ui/layout/Remeasurement;)V
    .locals 0

    .line 79
    iput-object p1, p0, Landroidx/compose/foundation/lazy/LazyListState;->remeasurement:Landroidx/compose/ui/layout/Remeasurement;

    return-void
.end method

.method public static synthetic animateScrollToItem$default(Landroidx/compose/foundation/lazy/LazyListState;IILkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 0

    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_0

    const/4 p2, 0x0

    .line 377
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Landroidx/compose/foundation/lazy/LazyListState;->animateScrollToItem(IILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private final cancelPrefetchIfVisibleItemsChanged(Landroidx/compose/foundation/lazy/LazyListLayoutInfo;)V
    .locals 2

    iget v0, p0, Landroidx/compose/foundation/lazy/LazyListState;->indexToPrefetch:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    .line 353
    invoke-interface {p1}, Landroidx/compose/foundation/lazy/LazyListLayoutInfo;->getVisibleItemsInfo()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Landroidx/compose/foundation/lazy/LazyListState;->wasScrollingForward:Z

    if-eqz v0, :cond_0

    .line 355
    invoke-interface {p1}, Landroidx/compose/foundation/lazy/LazyListLayoutInfo;->getVisibleItemsInfo()Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->last(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/compose/foundation/lazy/LazyListItemInfo;

    invoke-interface {p1}, Landroidx/compose/foundation/lazy/LazyListItemInfo;->getIndex()I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 357
    :cond_0
    invoke-interface {p1}, Landroidx/compose/foundation/lazy/LazyListLayoutInfo;->getVisibleItemsInfo()Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/compose/foundation/lazy/LazyListItemInfo;

    invoke-interface {p1}, Landroidx/compose/foundation/lazy/LazyListItemInfo;->getIndex()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    :goto_0
    iget v0, p0, Landroidx/compose/foundation/lazy/LazyListState;->indexToPrefetch:I

    if-eq v0, p1, :cond_2

    iput v1, p0, Landroidx/compose/foundation/lazy/LazyListState;->indexToPrefetch:I

    iget-object p1, p0, Landroidx/compose/foundation/lazy/LazyListState;->currentPrefetchHandle:Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState$PrefetchHandle;

    if-eqz p1, :cond_1

    .line 361
    invoke-interface {p1}, Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState$PrefetchHandle;->cancel()V

    :cond_1
    const/4 p1, 0x0

    iput-object p1, p0, Landroidx/compose/foundation/lazy/LazyListState;->currentPrefetchHandle:Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState$PrefetchHandle;

    :cond_2
    return-void
.end method

.method private static getNearestRange$foundation_release$delegate(Landroidx/compose/foundation/lazy/LazyListState;)Ljava/lang/Object;
    .locals 0

    .line 229
    iget-object p0, p0, Landroidx/compose/foundation/lazy/LazyListState;->scrollPosition:Landroidx/compose/foundation/lazy/LazyListScrollPosition;

    invoke-virtual {p0}, Landroidx/compose/foundation/lazy/LazyListScrollPosition;->getNearestRangeState()Landroidx/compose/foundation/lazy/layout/LazyLayoutNearestRangeState;

    move-result-object p0

    return-object p0
.end method

.method private final notifyPrefetch(F)V
    .locals 4

    iget-boolean v0, p0, Landroidx/compose/foundation/lazy/LazyListState;->prefetchingEnabled:Z

    if-nez v0, :cond_0

    return-void

    .line 325
    :cond_0
    invoke-virtual {p0}, Landroidx/compose/foundation/lazy/LazyListState;->getLayoutInfo()Landroidx/compose/foundation/lazy/LazyListLayoutInfo;

    move-result-object v0

    .line 326
    invoke-interface {v0}, Landroidx/compose/foundation/lazy/LazyListLayoutInfo;->getVisibleItemsInfo()Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    if-eqz v1, :cond_4

    const/4 v1, 0x0

    cmpg-float p1, p1, v1

    if-gez p1, :cond_1

    move p1, v2

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_2

    .line 329
    invoke-interface {v0}, Landroidx/compose/foundation/lazy/LazyListLayoutInfo;->getVisibleItemsInfo()Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->last(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/compose/foundation/lazy/LazyListItemInfo;

    invoke-interface {v1}, Landroidx/compose/foundation/lazy/LazyListItemInfo;->getIndex()I

    move-result v1

    add-int/2addr v1, v2

    goto :goto_1

    .line 331
    :cond_2
    invoke-interface {v0}, Landroidx/compose/foundation/lazy/LazyListLayoutInfo;->getVisibleItemsInfo()Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/compose/foundation/lazy/LazyListItemInfo;

    invoke-interface {v1}, Landroidx/compose/foundation/lazy/LazyListItemInfo;->getIndex()I

    move-result v1

    sub-int/2addr v1, v2

    :goto_1
    iget v2, p0, Landroidx/compose/foundation/lazy/LazyListState;->indexToPrefetch:I

    if-eq v1, v2, :cond_4

    if-ltz v1, :cond_4

    .line 334
    invoke-interface {v0}, Landroidx/compose/foundation/lazy/LazyListLayoutInfo;->getTotalItemsCount()I

    move-result v0

    if-ge v1, v0, :cond_4

    iget-boolean v0, p0, Landroidx/compose/foundation/lazy/LazyListState;->wasScrollingForward:Z

    if-eq v0, p1, :cond_3

    iget-object v0, p0, Landroidx/compose/foundation/lazy/LazyListState;->currentPrefetchHandle:Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState$PrefetchHandle;

    if-eqz v0, :cond_3

    .line 341
    invoke-interface {v0}, Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState$PrefetchHandle;->cancel()V

    :cond_3
    iput-boolean p1, p0, Landroidx/compose/foundation/lazy/LazyListState;->wasScrollingForward:Z

    iput v1, p0, Landroidx/compose/foundation/lazy/LazyListState;->indexToPrefetch:I

    iget-object p1, p0, Landroidx/compose/foundation/lazy/LazyListState;->prefetchState:Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState;

    iget-wide v2, p0, Landroidx/compose/foundation/lazy/LazyListState;->premeasureConstraints:J

    .line 345
    invoke-virtual {p1, v1, v2, v3}, Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState;->schedulePrefetch-0kLqBqw(IJ)Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState$PrefetchHandle;

    move-result-object p1

    iput-object p1, p0, Landroidx/compose/foundation/lazy/LazyListState;->currentPrefetchHandle:Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState$PrefetchHandle;

    :cond_4
    return-void
.end method

.method public static synthetic scrollToItem$default(Landroidx/compose/foundation/lazy/LazyListState;IILkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 0

    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_0

    const/4 p2, 0x0

    .line 240
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Landroidx/compose/foundation/lazy/LazyListState;->scrollToItem(IILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private setCanScrollBackward(Z)V
    .locals 0

    iget-object p0, p0, Landroidx/compose/foundation/lazy/LazyListState;->canScrollBackward$delegate:Landroidx/compose/runtime/MutableState;

    .line 281
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    .line 445
    invoke-interface {p0, p1}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method private setCanScrollForward(Z)V
    .locals 0

    iget-object p0, p0, Landroidx/compose/foundation/lazy/LazyListState;->canScrollForward$delegate:Landroidx/compose/runtime/MutableState;

    .line 279
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    .line 442
    invoke-interface {p0, p1}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic updateScrollPositionIfTheFirstItemWasMoved$foundation_release$default(Landroidx/compose/foundation/lazy/LazyListState;Landroidx/compose/foundation/lazy/LazyListItemProvider;IILjava/lang/Object;)I
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    .line 409
    sget-object p2, Landroidx/compose/runtime/snapshots/Snapshot;->Companion:Landroidx/compose/runtime/snapshots/Snapshot$Companion;

    .line 448
    invoke-virtual {p2}, Landroidx/compose/runtime/snapshots/Snapshot$Companion;->createNonObservableSnapshot()Landroidx/compose/runtime/snapshots/Snapshot;

    move-result-object p2

    .line 451
    :try_start_0
    invoke-virtual {p2}, Landroidx/compose/runtime/snapshots/Snapshot;->makeCurrent()Landroidx/compose/runtime/snapshots/Snapshot;

    move-result-object p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 409
    :try_start_1
    iget-object p4, p0, Landroidx/compose/foundation/lazy/LazyListState;->scrollPosition:Landroidx/compose/foundation/lazy/LazyListScrollPosition;

    invoke-virtual {p4}, Landroidx/compose/foundation/lazy/LazyListScrollPosition;->getIndex()I

    move-result p4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 455
    :try_start_2
    invoke-virtual {p2, p3}, Landroidx/compose/runtime/snapshots/Snapshot;->restoreCurrent(Landroidx/compose/runtime/snapshots/Snapshot;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 456
    invoke-virtual {p2}, Landroidx/compose/runtime/snapshots/Snapshot;->dispose()V

    move p2, p4

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 455
    :try_start_3
    invoke-virtual {p2, p3}, Landroidx/compose/runtime/snapshots/Snapshot;->restoreCurrent(Landroidx/compose/runtime/snapshots/Snapshot;)V

    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p0

    .line 456
    invoke-virtual {p2}, Landroidx/compose/runtime/snapshots/Snapshot;->dispose()V

    throw p0

    .line 407
    :cond_0
    :goto_0
    invoke-virtual {p0, p1, p2}, Landroidx/compose/foundation/lazy/LazyListState;->updateScrollPositionIfTheFirstItemWasMoved$foundation_release(Landroidx/compose/foundation/lazy/LazyListItemProvider;I)I

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

    iget-object p0, p0, Landroidx/compose/foundation/lazy/LazyListState;->animateScrollScope:Landroidx/compose/foundation/lazy/LazyListAnimateScrollScope;

    .line 382
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

.method public final applyMeasureResult$foundation_release(Landroidx/compose/foundation/lazy/LazyListMeasureResult;)V
    .locals 2

    const-string v0, "result"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/compose/foundation/lazy/LazyListState;->scrollPosition:Landroidx/compose/foundation/lazy/LazyListScrollPosition;

    .line 389
    invoke-virtual {v0, p1}, Landroidx/compose/foundation/lazy/LazyListScrollPosition;->updateFromMeasureResult(Landroidx/compose/foundation/lazy/LazyListMeasureResult;)V

    iget v0, p0, Landroidx/compose/foundation/lazy/LazyListState;->scrollToBeConsumed:F

    .line 390
    invoke-virtual {p1}, Landroidx/compose/foundation/lazy/LazyListMeasureResult;->getConsumedScroll()F

    move-result v1

    sub-float/2addr v0, v1

    iput v0, p0, Landroidx/compose/foundation/lazy/LazyListState;->scrollToBeConsumed:F

    iget-object v0, p0, Landroidx/compose/foundation/lazy/LazyListState;->layoutInfoState:Landroidx/compose/runtime/MutableState;

    .line 391
    invoke-interface {v0, p1}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    .line 393
    invoke-virtual {p1}, Landroidx/compose/foundation/lazy/LazyListMeasureResult;->getCanScrollForward()Z

    move-result v0

    invoke-direct {p0, v0}, Landroidx/compose/foundation/lazy/LazyListState;->setCanScrollForward(Z)V

    .line 394
    invoke-virtual {p1}, Landroidx/compose/foundation/lazy/LazyListMeasureResult;->getFirstVisibleItem()Landroidx/compose/foundation/lazy/LazyListMeasuredItem;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->getIndex()I

    move-result v0

    if-nez v0, :cond_1

    .line 395
    :cond_0
    invoke-virtual {p1}, Landroidx/compose/foundation/lazy/LazyListMeasureResult;->getFirstVisibleItemScrollOffset()I

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .line 394
    :goto_0
    invoke-direct {p0, v0}, Landroidx/compose/foundation/lazy/LazyListState;->setCanScrollBackward(Z)V

    iget v0, p0, Landroidx/compose/foundation/lazy/LazyListState;->numMeasurePasses:I

    add-int/2addr v0, v1

    iput v0, p0, Landroidx/compose/foundation/lazy/LazyListState;->numMeasurePasses:I

    .line 399
    check-cast p1, Landroidx/compose/foundation/lazy/LazyListLayoutInfo;

    invoke-direct {p0, p1}, Landroidx/compose/foundation/lazy/LazyListState;->cancelPrefetchIfVisibleItemsChanged(Landroidx/compose/foundation/lazy/LazyListLayoutInfo;)V

    return-void
.end method

.method public dispatchRawDelta(F)F
    .locals 0

    iget-object p0, p0, Landroidx/compose/foundation/lazy/LazyListState;->scrollableState:Landroidx/compose/foundation/gestures/ScrollableState;

    .line 274
    invoke-interface {p0, p1}, Landroidx/compose/foundation/gestures/ScrollableState;->dispatchRawDelta(F)F

    move-result p0

    return p0
.end method

.method public final getAwaitLayoutModifier$foundation_release()Landroidx/compose/foundation/lazy/layout/AwaitFirstLayoutModifier;
    .locals 0

    iget-object p0, p0, Landroidx/compose/foundation/lazy/LazyListState;->awaitLayoutModifier:Landroidx/compose/foundation/lazy/layout/AwaitFirstLayoutModifier;

    return-object p0
.end method

.method public final getBeyondBoundsInfo$foundation_release()Landroidx/compose/foundation/lazy/layout/LazyLayoutBeyondBoundsInfo;
    .locals 0

    iget-object p0, p0, Landroidx/compose/foundation/lazy/LazyListState;->beyondBoundsInfo:Landroidx/compose/foundation/lazy/layout/LazyLayoutBeyondBoundsInfo;

    return-object p0
.end method

.method public getCanScrollBackward()Z
    .locals 0

    iget-object p0, p0, Landroidx/compose/foundation/lazy/LazyListState;->canScrollBackward$delegate:Landroidx/compose/runtime/MutableState;

    .line 281
    check-cast p0, Landroidx/compose/runtime/State;

    .line 444
    invoke-interface {p0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public getCanScrollForward()Z
    .locals 0

    iget-object p0, p0, Landroidx/compose/foundation/lazy/LazyListState;->canScrollForward$delegate:Landroidx/compose/runtime/MutableState;

    .line 279
    check-cast p0, Landroidx/compose/runtime/State;

    .line 441
    invoke-interface {p0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public final getDensity$foundation_release()Landroidx/compose/ui/unit/Density;
    .locals 0

    iget-object p0, p0, Landroidx/compose/foundation/lazy/LazyListState;->density:Landroidx/compose/ui/unit/Density;

    return-object p0
.end method

.method public final getFirstVisibleItemIndex()I
    .locals 0

    iget-object p0, p0, Landroidx/compose/foundation/lazy/LazyListState;->scrollPosition:Landroidx/compose/foundation/lazy/LazyListScrollPosition;

    .line 107
    invoke-virtual {p0}, Landroidx/compose/foundation/lazy/LazyListScrollPosition;->getIndex()I

    move-result p0

    return p0
.end method

.method public final getFirstVisibleItemScrollOffset()I
    .locals 0

    iget-object p0, p0, Landroidx/compose/foundation/lazy/LazyListState;->scrollPosition:Landroidx/compose/foundation/lazy/LazyListScrollPosition;

    .line 117
    invoke-virtual {p0}, Landroidx/compose/foundation/lazy/LazyListScrollPosition;->getScrollOffset()I

    move-result p0

    return p0
.end method

.method public final getInteractionSource()Landroidx/compose/foundation/interaction/InteractionSource;
    .locals 0

    iget-object p0, p0, Landroidx/compose/foundation/lazy/LazyListState;->internalInteractionSource:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    .line 142
    check-cast p0, Landroidx/compose/foundation/interaction/InteractionSource;

    return-object p0
.end method

.method public final getInternalInteractionSource$foundation_release()Landroidx/compose/foundation/interaction/MutableInteractionSource;
    .locals 0

    iget-object p0, p0, Landroidx/compose/foundation/lazy/LazyListState;->internalInteractionSource:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    return-object p0
.end method

.method public final getLayoutInfo()Landroidx/compose/foundation/lazy/LazyListLayoutInfo;
    .locals 0

    iget-object p0, p0, Landroidx/compose/foundation/lazy/LazyListState;->layoutInfoState:Landroidx/compose/runtime/MutableState;

    .line 135
    invoke-interface {p0}, Landroidx/compose/runtime/MutableState;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/compose/foundation/lazy/LazyListLayoutInfo;

    return-object p0
.end method

.method public final getNearestRange$foundation_release()Lkotlin/ranges/IntRange;
    .locals 0

    iget-object p0, p0, Landroidx/compose/foundation/lazy/LazyListState;->scrollPosition:Landroidx/compose/foundation/lazy/LazyListScrollPosition;

    .line 229
    invoke-virtual {p0}, Landroidx/compose/foundation/lazy/LazyListScrollPosition;->getNearestRangeState()Landroidx/compose/foundation/lazy/layout/LazyLayoutNearestRangeState;

    move-result-object p0

    check-cast p0, Landroidx/compose/runtime/State;

    .line 440
    invoke-interface {p0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lkotlin/ranges/IntRange;

    return-object p0
.end method

.method public final getNumMeasurePasses$foundation_release()I
    .locals 0

    iget p0, p0, Landroidx/compose/foundation/lazy/LazyListState;->numMeasurePasses:I

    return p0
.end method

.method public final getPinnedItems$foundation_release()Landroidx/compose/foundation/lazy/layout/LazyLayoutPinnedItemList;
    .locals 0

    iget-object p0, p0, Landroidx/compose/foundation/lazy/LazyListState;->pinnedItems:Landroidx/compose/foundation/lazy/layout/LazyLayoutPinnedItemList;

    return-object p0
.end method

.method public final getPlacementAnimator$foundation_release()Landroidx/compose/foundation/lazy/LazyListItemPlacementAnimator;
    .locals 0

    iget-object p0, p0, Landroidx/compose/foundation/lazy/LazyListState;->placementAnimator:Landroidx/compose/foundation/lazy/LazyListItemPlacementAnimator;

    return-object p0
.end method

.method public final getPrefetchState$foundation_release()Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState;
    .locals 0

    iget-object p0, p0, Landroidx/compose/foundation/lazy/LazyListState;->prefetchState:Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState;

    return-object p0
.end method

.method public final getPrefetchingEnabled$foundation_release()Z
    .locals 0

    iget-boolean p0, p0, Landroidx/compose/foundation/lazy/LazyListState;->prefetchingEnabled:Z

    return p0
.end method

.method public final getPremeasureConstraints-msEJaDk$foundation_release()J
    .locals 2

    iget-wide v0, p0, Landroidx/compose/foundation/lazy/LazyListState;->premeasureConstraints:J

    return-wide v0
.end method

.method public final getRemeasurement$foundation_release()Landroidx/compose/ui/layout/Remeasurement;
    .locals 0

    iget-object p0, p0, Landroidx/compose/foundation/lazy/LazyListState;->remeasurement:Landroidx/compose/ui/layout/Remeasurement;

    return-object p0
.end method

.method public final getRemeasurementModifier$foundation_release()Landroidx/compose/ui/layout/RemeasurementModifier;
    .locals 0

    iget-object p0, p0, Landroidx/compose/foundation/lazy/LazyListState;->remeasurementModifier:Landroidx/compose/ui/layout/RemeasurementModifier;

    return-object p0
.end method

.method public final getScrollToBeConsumed$foundation_release()F
    .locals 0

    iget p0, p0, Landroidx/compose/foundation/lazy/LazyListState;->scrollToBeConsumed:F

    return p0
.end method

.method public isScrollInProgress()Z
    .locals 0

    iget-object p0, p0, Landroidx/compose/foundation/lazy/LazyListState;->scrollableState:Landroidx/compose/foundation/gestures/ScrollableState;

    .line 277
    invoke-interface {p0}, Landroidx/compose/foundation/gestures/ScrollableState;->isScrollInProgress()Z

    move-result p0

    return p0
.end method

.method public final onScroll$foundation_release(F)F
    .locals 4

    const/4 v0, 0x0

    cmpg-float v1, p1, v0

    if-gez v1, :cond_0

    .line 288
    invoke-virtual {p0}, Landroidx/compose/foundation/lazy/LazyListState;->getCanScrollForward()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    cmpl-float v1, p1, v0

    if-lez v1, :cond_2

    invoke-virtual {p0}, Landroidx/compose/foundation/lazy/LazyListState;->getCanScrollBackward()Z

    move-result v1

    if-nez v1, :cond_2

    :cond_1
    return v0

    :cond_2
    iget v1, p0, Landroidx/compose/foundation/lazy/LazyListState;->scrollToBeConsumed:F

    .line 291
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const/high16 v2, 0x3f000000    # 0.5f

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_6

    iget v1, p0, Landroidx/compose/foundation/lazy/LazyListState;->scrollToBeConsumed:F

    add-float/2addr v1, p1

    iput v1, p0, Landroidx/compose/foundation/lazy/LazyListState;->scrollToBeConsumed:F

    .line 299
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpl-float v1, v1, v2

    if-lez v1, :cond_4

    iget v1, p0, Landroidx/compose/foundation/lazy/LazyListState;->scrollToBeConsumed:F

    iget-object v3, p0, Landroidx/compose/foundation/lazy/LazyListState;->remeasurement:Landroidx/compose/ui/layout/Remeasurement;

    if-eqz v3, :cond_3

    .line 301
    invoke-interface {v3}, Landroidx/compose/ui/layout/Remeasurement;->forceRemeasure()V

    :cond_3
    iget-boolean v3, p0, Landroidx/compose/foundation/lazy/LazyListState;->prefetchingEnabled:Z

    if-eqz v3, :cond_4

    iget v3, p0, Landroidx/compose/foundation/lazy/LazyListState;->scrollToBeConsumed:F

    sub-float/2addr v1, v3

    .line 303
    invoke-direct {p0, v1}, Landroidx/compose/foundation/lazy/LazyListState;->notifyPrefetch(F)V

    :cond_4
    iget v1, p0, Landroidx/compose/foundation/lazy/LazyListState;->scrollToBeConsumed:F

    .line 308
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_5

    return p1

    :cond_5
    iget v1, p0, Landroidx/compose/foundation/lazy/LazyListState;->scrollToBeConsumed:F

    sub-float/2addr p1, v1

    iput v0, p0, Landroidx/compose/foundation/lazy/LazyListState;->scrollToBeConsumed:F

    return p1

    .line 292
    :cond_6
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "entered drag with non-zero pending scroll: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p0, p0, Landroidx/compose/foundation/lazy/LazyListState;->scrollToBeConsumed:F

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 291
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

    instance-of v0, p3, Landroidx/compose/foundation/lazy/LazyListState$scroll$1;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Landroidx/compose/foundation/lazy/LazyListState$scroll$1;

    iget v1, v0, Landroidx/compose/foundation/lazy/LazyListState$scroll$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p3, v0, Landroidx/compose/foundation/lazy/LazyListState$scroll$1;->label:I

    sub-int/2addr p3, v2

    iput p3, v0, Landroidx/compose/foundation/lazy/LazyListState$scroll$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Landroidx/compose/foundation/lazy/LazyListState$scroll$1;

    invoke-direct {v0, p0, p3}, Landroidx/compose/foundation/lazy/LazyListState$scroll$1;-><init>(Landroidx/compose/foundation/lazy/LazyListState;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p3, v0, Landroidx/compose/foundation/lazy/LazyListState$scroll$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 265
    iget v2, v0, Landroidx/compose/foundation/lazy/LazyListState$scroll$1;->label:I

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
    iget-object p0, v0, Landroidx/compose/foundation/lazy/LazyListState$scroll$1;->L$2:Ljava/lang/Object;

    move-object p2, p0

    check-cast p2, Lkotlin/jvm/functions/Function2;

    iget-object p0, v0, Landroidx/compose/foundation/lazy/LazyListState$scroll$1;->L$1:Ljava/lang/Object;

    move-object p1, p0

    check-cast p1, Landroidx/compose/foundation/MutatePriority;

    iget-object p0, v0, Landroidx/compose/foundation/lazy/LazyListState$scroll$1;->L$0:Ljava/lang/Object;

    check-cast p0, Landroidx/compose/foundation/lazy/LazyListState;

    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p3, p0, Landroidx/compose/foundation/lazy/LazyListState;->awaitLayoutModifier:Landroidx/compose/foundation/lazy/layout/AwaitFirstLayoutModifier;

    .line 269
    iput-object p0, v0, Landroidx/compose/foundation/lazy/LazyListState$scroll$1;->L$0:Ljava/lang/Object;

    iput-object p1, v0, Landroidx/compose/foundation/lazy/LazyListState$scroll$1;->L$1:Ljava/lang/Object;

    iput-object p2, v0, Landroidx/compose/foundation/lazy/LazyListState$scroll$1;->L$2:Ljava/lang/Object;

    iput v4, v0, Landroidx/compose/foundation/lazy/LazyListState$scroll$1;->label:I

    invoke-virtual {p3, v0}, Landroidx/compose/foundation/lazy/layout/AwaitFirstLayoutModifier;->waitForFirstLayout(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p3

    if-ne p3, v1, :cond_4

    return-object v1

    .line 270
    :cond_4
    :goto_1
    iget-object p0, p0, Landroidx/compose/foundation/lazy/LazyListState;->scrollableState:Landroidx/compose/foundation/gestures/ScrollableState;

    const/4 p3, 0x0

    iput-object p3, v0, Landroidx/compose/foundation/lazy/LazyListState$scroll$1;->L$0:Ljava/lang/Object;

    iput-object p3, v0, Landroidx/compose/foundation/lazy/LazyListState$scroll$1;->L$1:Ljava/lang/Object;

    iput-object p3, v0, Landroidx/compose/foundation/lazy/LazyListState$scroll$1;->L$2:Ljava/lang/Object;

    iput v3, v0, Landroidx/compose/foundation/lazy/LazyListState$scroll$1;->label:I

    invoke-interface {p0, p1, p2, v0}, Landroidx/compose/foundation/gestures/ScrollableState;->scroll(Landroidx/compose/foundation/MutatePriority;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_5

    return-object v1

    .line 271
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

    .line 245
    move-object v0, p0

    check-cast v0, Landroidx/compose/foundation/gestures/ScrollableState;

    const/4 v1, 0x0

    new-instance v2, Landroidx/compose/foundation/lazy/LazyListState$scrollToItem$2;

    const/4 v3, 0x0

    invoke-direct {v2, p0, p1, p2, v3}, Landroidx/compose/foundation/lazy/LazyListState$scrollToItem$2;-><init>(Landroidx/compose/foundation/lazy/LazyListState;IILkotlin/coroutines/Continuation;)V

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

    iput-object p1, p0, Landroidx/compose/foundation/lazy/LazyListState;->density:Landroidx/compose/ui/unit/Density;

    return-void
.end method

.method public final setPrefetchingEnabled$foundation_release(Z)V
    .locals 0

    iput-boolean p1, p0, Landroidx/compose/foundation/lazy/LazyListState;->prefetchingEnabled:Z

    return-void
.end method

.method public final setPremeasureConstraints-BRTryo0$foundation_release(J)V
    .locals 0

    iput-wide p1, p0, Landroidx/compose/foundation/lazy/LazyListState;->premeasureConstraints:J

    return-void
.end method

.method public final snapToItemIndexInternal$foundation_release(II)V
    .locals 1

    iget-object v0, p0, Landroidx/compose/foundation/lazy/LazyListState;->scrollPosition:Landroidx/compose/foundation/lazy/LazyListScrollPosition;

    .line 251
    invoke-virtual {v0, p1, p2}, Landroidx/compose/foundation/lazy/LazyListScrollPosition;->requestPosition(II)V

    iget-object p1, p0, Landroidx/compose/foundation/lazy/LazyListState;->placementAnimator:Landroidx/compose/foundation/lazy/LazyListItemPlacementAnimator;

    .line 253
    invoke-virtual {p1}, Landroidx/compose/foundation/lazy/LazyListItemPlacementAnimator;->reset()V

    iget-object p0, p0, Landroidx/compose/foundation/lazy/LazyListState;->remeasurement:Landroidx/compose/ui/layout/Remeasurement;

    if-eqz p0, :cond_0

    .line 254
    invoke-interface {p0}, Landroidx/compose/ui/layout/Remeasurement;->forceRemeasure()V

    :cond_0
    return-void
.end method

.method public final updateScrollPositionIfTheFirstItemWasMoved$foundation_release(Landroidx/compose/foundation/lazy/LazyListItemProvider;I)I
    .locals 1

    const-string v0, "itemProvider"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Landroidx/compose/foundation/lazy/LazyListState;->scrollPosition:Landroidx/compose/foundation/lazy/LazyListScrollPosition;

    .line 410
    invoke-virtual {p0, p1, p2}, Landroidx/compose/foundation/lazy/LazyListScrollPosition;->updateScrollPositionIfTheFirstItemWasMoved(Landroidx/compose/foundation/lazy/LazyListItemProvider;I)I

    move-result p0

    return p0
.end method
