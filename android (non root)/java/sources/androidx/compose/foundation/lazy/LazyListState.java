package androidx.compose.foundation.lazy;

import androidx.compose.foundation.gestures.ScrollableState;
import androidx.compose.foundation.gestures.ScrollableStateKt;
import androidx.compose.foundation.interaction.InteractionSource;
import androidx.compose.foundation.interaction.InteractionSourceKt;
import androidx.compose.foundation.interaction.MutableInteractionSource;
import androidx.compose.foundation.lazy.layout.AwaitFirstLayoutModifier;
import androidx.compose.foundation.lazy.layout.LazyAnimateScrollKt;
import androidx.compose.foundation.lazy.layout.LazyLayoutBeyondBoundsInfo;
import androidx.compose.foundation.lazy.layout.LazyLayoutPinnedItemList;
import androidx.compose.foundation.lazy.layout.LazyLayoutPrefetchState;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.SnapshotStateKt__SnapshotStateKt;
import androidx.compose.runtime.saveable.ListSaverKt;
import androidx.compose.runtime.saveable.Saver;
import androidx.compose.runtime.saveable.SaverScope;
import androidx.compose.runtime.snapshots.Snapshot;
import androidx.compose.ui.layout.Remeasurement;
import androidx.compose.ui.layout.RemeasurementModifier;
import androidx.compose.ui.unit.ConstraintsKt;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.DensityKt;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.IntRange;

/* compiled from: LazyListState.kt */
@Metadata(d1 = {"\u0000Ö\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\f\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0010\u0007\n\u0002\b\u0006\n\u0002\u0010\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0007\u0018\u0000 \u0089\u00012\u00020\u0001:\u0002\u0089\u0001B\u0019\u0012\b\b\u0002\u0010\u0002\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0003¢\u0006\u0002\u0010\u0005J#\u0010f\u001a\u00020g2\u0006\u0010h\u001a\u00020\u00032\b\b\u0002\u0010i\u001a\u00020\u0003H\u0086@ø\u0001\u0000¢\u0006\u0002\u0010jJ\u0015\u0010k\u001a\u00020g2\u0006\u0010l\u001a\u00020mH\u0000¢\u0006\u0002\bnJ\u0010\u0010o\u001a\u00020g2\u0006\u0010p\u001a\u000203H\u0002J\u0010\u0010q\u001a\u00020`2\u0006\u0010r\u001a\u00020`H\u0016J\u0010\u0010s\u001a\u00020g2\u0006\u0010r\u001a\u00020`H\u0002J\u0015\u0010t\u001a\u00020`2\u0006\u0010u\u001a\u00020`H\u0000¢\u0006\u0002\bvJC\u0010w\u001a\u00020g2\u0006\u0010x\u001a\u00020y2'\u0010z\u001a#\b\u0001\u0012\u0004\u0012\u00020|\u0012\n\u0012\b\u0012\u0004\u0012\u00020g0}\u0012\u0006\u0012\u0004\u0018\u00010~0{¢\u0006\u0002\b\u007fH\u0096@ø\u0001\u0000¢\u0006\u0003\u0010\u0080\u0001J$\u0010\u0081\u0001\u001a\u00020g2\u0006\u0010h\u001a\u00020\u00032\b\b\u0002\u0010i\u001a\u00020\u0003H\u0086@ø\u0001\u0000¢\u0006\u0002\u0010jJ\u001f\u0010\u0082\u0001\u001a\u00020g2\u0006\u0010h\u001a\u00020\u00032\u0006\u0010i\u001a\u00020\u0003H\u0000¢\u0006\u0003\b\u0083\u0001J$\u0010\u0084\u0001\u001a\u00020\u00032\b\u0010\u0085\u0001\u001a\u00030\u0086\u00012\t\b\u0002\u0010\u0087\u0001\u001a\u00020\u0003H\u0000¢\u0006\u0003\b\u0088\u0001R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\b\u001a\u00020\tX\u0080\u0004¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000bR\u0014\u0010\f\u001a\u00020\rX\u0080\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\u000fR+\u0010\u0012\u001a\u00020\u00112\u0006\u0010\u0010\u001a\u00020\u00118V@RX\u0096\u008e\u0002¢\u0006\u0012\n\u0004\b\u0017\u0010\u0018\u001a\u0004\b\u0013\u0010\u0014\"\u0004\b\u0015\u0010\u0016R+\u0010\u0019\u001a\u00020\u00112\u0006\u0010\u0010\u001a\u00020\u00118V@RX\u0096\u008e\u0002¢\u0006\u0012\n\u0004\b\u001c\u0010\u0018\u001a\u0004\b\u001a\u0010\u0014\"\u0004\b\u001b\u0010\u0016R\u0010\u0010\u001d\u001a\u0004\u0018\u00010\u001eX\u0082\u000e¢\u0006\u0002\n\u0000R\u001a\u0010\u001f\u001a\u00020 X\u0080\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b!\u0010\"\"\u0004\b#\u0010$R\u0011\u0010\u0002\u001a\u00020\u00038F¢\u0006\u0006\u001a\u0004\b%\u0010&R\u0011\u0010\u0004\u001a\u00020\u00038F¢\u0006\u0006\u001a\u0004\b'\u0010&R\u000e\u0010(\u001a\u00020\u0003X\u0082\u000e¢\u0006\u0002\n\u0000R\u0011\u0010)\u001a\u00020*8F¢\u0006\u0006\u001a\u0004\b+\u0010,R\u0014\u0010-\u001a\u00020.X\u0080\u0004¢\u0006\b\n\u0000\u001a\u0004\b/\u00100R\u0014\u00101\u001a\u00020\u00118VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b1\u0010\u0014R\u0011\u00102\u001a\u0002038F¢\u0006\u0006\u001a\u0004\b4\u00105R\u0014\u00106\u001a\b\u0012\u0004\u0012\u00020307X\u0082\u0004¢\u0006\u0002\n\u0000R\u001b\u00108\u001a\u0002098@X\u0080\u0084\u0002¢\u0006\f\u001a\u0004\b<\u0010=*\u0004\b:\u0010;R\u001e\u0010>\u001a\u00020\u00032\u0006\u0010\u0010\u001a\u00020\u0003@BX\u0080\u000e¢\u0006\b\n\u0000\u001a\u0004\b?\u0010&R\u0014\u0010@\u001a\u00020AX\u0080\u0004¢\u0006\b\n\u0000\u001a\u0004\bB\u0010CR\u0014\u0010D\u001a\u00020EX\u0080\u0004¢\u0006\b\n\u0000\u001a\u0004\bF\u0010GR\u0014\u0010H\u001a\u00020IX\u0080\u0004¢\u0006\b\n\u0000\u001a\u0004\bJ\u0010KR\u001a\u0010L\u001a\u00020\u0011X\u0080\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bM\u0010\u0014\"\u0004\bN\u0010\u0016R%\u0010O\u001a\u00020PX\u0080\u000eø\u0001\u0000ø\u0001\u0001ø\u0001\u0002¢\u0006\u0010\n\u0002\u0010U\u001a\u0004\bQ\u0010R\"\u0004\bS\u0010TR\"\u0010W\u001a\u0004\u0018\u00010V2\b\u0010\u0010\u001a\u0004\u0018\u00010V@BX\u0080\u000e¢\u0006\b\n\u0000\u001a\u0004\bX\u0010YR\u0014\u0010Z\u001a\u00020[X\u0080\u0004¢\u0006\b\n\u0000\u001a\u0004\b\\\u0010]R\u000e\u0010^\u001a\u00020_X\u0082\u0004¢\u0006\u0002\n\u0000R\u001e\u0010a\u001a\u00020`2\u0006\u0010\u0010\u001a\u00020`@BX\u0080\u000e¢\u0006\b\n\u0000\u001a\u0004\bb\u0010cR\u000e\u0010d\u001a\u00020\u0001X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010e\u001a\u00020\u0011X\u0082\u000e¢\u0006\u0002\n\u0000\u0082\u0002\u000f\n\u0002\b\u0019\n\u0005\b¡\u001e0\u0001\n\u0002\b!¨\u0006\u008a\u0001"}, d2 = {"Landroidx/compose/foundation/lazy/LazyListState;", "Landroidx/compose/foundation/gestures/ScrollableState;", "firstVisibleItemIndex", "", "firstVisibleItemScrollOffset", "(II)V", "animateScrollScope", "Landroidx/compose/foundation/lazy/LazyListAnimateScrollScope;", "awaitLayoutModifier", "Landroidx/compose/foundation/lazy/layout/AwaitFirstLayoutModifier;", "getAwaitLayoutModifier$foundation_release", "()Landroidx/compose/foundation/lazy/layout/AwaitFirstLayoutModifier;", "beyondBoundsInfo", "Landroidx/compose/foundation/lazy/layout/LazyLayoutBeyondBoundsInfo;", "getBeyondBoundsInfo$foundation_release", "()Landroidx/compose/foundation/lazy/layout/LazyLayoutBeyondBoundsInfo;", "<set-?>", "", "canScrollBackward", "getCanScrollBackward", "()Z", "setCanScrollBackward", "(Z)V", "canScrollBackward$delegate", "Landroidx/compose/runtime/MutableState;", "canScrollForward", "getCanScrollForward", "setCanScrollForward", "canScrollForward$delegate", "currentPrefetchHandle", "Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState$PrefetchHandle;", "density", "Landroidx/compose/ui/unit/Density;", "getDensity$foundation_release", "()Landroidx/compose/ui/unit/Density;", "setDensity$foundation_release", "(Landroidx/compose/ui/unit/Density;)V", "getFirstVisibleItemIndex", "()I", "getFirstVisibleItemScrollOffset", "indexToPrefetch", "interactionSource", "Landroidx/compose/foundation/interaction/InteractionSource;", "getInteractionSource", "()Landroidx/compose/foundation/interaction/InteractionSource;", "internalInteractionSource", "Landroidx/compose/foundation/interaction/MutableInteractionSource;", "getInternalInteractionSource$foundation_release", "()Landroidx/compose/foundation/interaction/MutableInteractionSource;", "isScrollInProgress", "layoutInfo", "Landroidx/compose/foundation/lazy/LazyListLayoutInfo;", "getLayoutInfo", "()Landroidx/compose/foundation/lazy/LazyListLayoutInfo;", "layoutInfoState", "Landroidx/compose/runtime/MutableState;", "nearestRange", "Lkotlin/ranges/IntRange;", "getNearestRange$foundation_release$delegate", "(Landroidx/compose/foundation/lazy/LazyListState;)Ljava/lang/Object;", "getNearestRange$foundation_release", "()Lkotlin/ranges/IntRange;", "numMeasurePasses", "getNumMeasurePasses$foundation_release", "pinnedItems", "Landroidx/compose/foundation/lazy/layout/LazyLayoutPinnedItemList;", "getPinnedItems$foundation_release", "()Landroidx/compose/foundation/lazy/layout/LazyLayoutPinnedItemList;", "placementAnimator", "Landroidx/compose/foundation/lazy/LazyListItemPlacementAnimator;", "getPlacementAnimator$foundation_release", "()Landroidx/compose/foundation/lazy/LazyListItemPlacementAnimator;", "prefetchState", "Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState;", "getPrefetchState$foundation_release", "()Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState;", "prefetchingEnabled", "getPrefetchingEnabled$foundation_release", "setPrefetchingEnabled$foundation_release", "premeasureConstraints", "Landroidx/compose/ui/unit/Constraints;", "getPremeasureConstraints-msEJaDk$foundation_release", "()J", "setPremeasureConstraints-BRTryo0$foundation_release", "(J)V", "J", "Landroidx/compose/ui/layout/Remeasurement;", "remeasurement", "getRemeasurement$foundation_release", "()Landroidx/compose/ui/layout/Remeasurement;", "remeasurementModifier", "Landroidx/compose/ui/layout/RemeasurementModifier;", "getRemeasurementModifier$foundation_release", "()Landroidx/compose/ui/layout/RemeasurementModifier;", "scrollPosition", "Landroidx/compose/foundation/lazy/LazyListScrollPosition;", "", "scrollToBeConsumed", "getScrollToBeConsumed$foundation_release", "()F", "scrollableState", "wasScrollingForward", "animateScrollToItem", "", "index", "scrollOffset", "(IILkotlin/coroutines/Continuation;)Ljava/lang/Object;", "applyMeasureResult", "result", "Landroidx/compose/foundation/lazy/LazyListMeasureResult;", "applyMeasureResult$foundation_release", "cancelPrefetchIfVisibleItemsChanged", "info", "dispatchRawDelta", "delta", "notifyPrefetch", "onScroll", "distance", "onScroll$foundation_release", "scroll", "scrollPriority", "Landroidx/compose/foundation/MutatePriority;", "block", "Lkotlin/Function2;", "Landroidx/compose/foundation/gestures/ScrollScope;", "Lkotlin/coroutines/Continuation;", "", "Lkotlin/ExtensionFunctionType;", "(Landroidx/compose/foundation/MutatePriority;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "scrollToItem", "snapToItemIndexInternal", "snapToItemIndexInternal$foundation_release", "updateScrollPositionIfTheFirstItemWasMoved", "itemProvider", "Landroidx/compose/foundation/lazy/LazyListItemProvider;", "firstItemIndex", "updateScrollPositionIfTheFirstItemWasMoved$foundation_release", "Companion", "foundation_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class LazyListState implements ScrollableState {
    public static final int $stable = 0;

    /* renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final Saver<LazyListState, ?> Saver = ListSaverKt.listSaver(new Function2<SaverScope, LazyListState, List<? extends Integer>>() { // from class: androidx.compose.foundation.lazy.LazyListState$Companion$Saver$1
        @Override // kotlin.jvm.functions.Function2
        public final List<Integer> invoke(SaverScope listSaver, LazyListState it) {
            Intrinsics.checkNotNullParameter(listSaver, "$this$listSaver");
            Intrinsics.checkNotNullParameter(it, "it");
            return CollectionsKt.listOf((Object[]) new Integer[]{Integer.valueOf(it.getFirstVisibleItemIndex()), Integer.valueOf(it.getFirstVisibleItemScrollOffset())});
        }
    }, new Function1<List<? extends Integer>, LazyListState>() { // from class: androidx.compose.foundation.lazy.LazyListState$Companion$Saver$2
        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ LazyListState invoke(List<? extends Integer> list) {
            return invoke2((List<Integer>) list);
        }

        /* renamed from: invoke, reason: avoid collision after fix types in other method */
        public final LazyListState invoke2(List<Integer> it) {
            Intrinsics.checkNotNullParameter(it, "it");
            return new LazyListState(it.get(0).intValue(), it.get(1).intValue());
        }
    });
    private final LazyListAnimateScrollScope animateScrollScope;
    private final AwaitFirstLayoutModifier awaitLayoutModifier;
    private final LazyLayoutBeyondBoundsInfo beyondBoundsInfo;

    /* renamed from: canScrollBackward$delegate, reason: from kotlin metadata */
    private final MutableState canScrollBackward;

    /* renamed from: canScrollForward$delegate, reason: from kotlin metadata */
    private final MutableState canScrollForward;
    private LazyLayoutPrefetchState.PrefetchHandle currentPrefetchHandle;
    private Density density;
    private int indexToPrefetch;
    private final MutableInteractionSource internalInteractionSource;
    private final MutableState<LazyListLayoutInfo> layoutInfoState;
    private int numMeasurePasses;
    private final LazyLayoutPinnedItemList pinnedItems;
    private final LazyListItemPlacementAnimator placementAnimator;
    private final LazyLayoutPrefetchState prefetchState;
    private boolean prefetchingEnabled;
    private long premeasureConstraints;
    private Remeasurement remeasurement;
    private final RemeasurementModifier remeasurementModifier;
    private final LazyListScrollPosition scrollPosition;
    private float scrollToBeConsumed;
    private final ScrollableState scrollableState;
    private boolean wasScrollingForward;

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public LazyListState() {
        /*
            r3 = this;
            r0 = 3
            r1 = 0
            r2 = 0
            r3.<init>(r2, r2, r0, r1)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.foundation.lazy.LazyListState.<init>():void");
    }

    /* renamed from: getAwaitLayoutModifier$foundation_release, reason: from getter */
    public final AwaitFirstLayoutModifier getAwaitLayoutModifier() {
        return this.awaitLayoutModifier;
    }

    /* renamed from: getBeyondBoundsInfo$foundation_release, reason: from getter */
    public final LazyLayoutBeyondBoundsInfo getBeyondBoundsInfo() {
        return this.beyondBoundsInfo;
    }

    /* renamed from: getDensity$foundation_release, reason: from getter */
    public final Density getDensity() {
        return this.density;
    }

    /* renamed from: getInternalInteractionSource$foundation_release, reason: from getter */
    public final MutableInteractionSource getInternalInteractionSource() {
        return this.internalInteractionSource;
    }

    /* renamed from: getNumMeasurePasses$foundation_release, reason: from getter */
    public final int getNumMeasurePasses() {
        return this.numMeasurePasses;
    }

    /* renamed from: getPinnedItems$foundation_release, reason: from getter */
    public final LazyLayoutPinnedItemList getPinnedItems() {
        return this.pinnedItems;
    }

    /* renamed from: getPlacementAnimator$foundation_release, reason: from getter */
    public final LazyListItemPlacementAnimator getPlacementAnimator() {
        return this.placementAnimator;
    }

    /* renamed from: getPrefetchState$foundation_release, reason: from getter */
    public final LazyLayoutPrefetchState getPrefetchState() {
        return this.prefetchState;
    }

    /* renamed from: getPrefetchingEnabled$foundation_release, reason: from getter */
    public final boolean getPrefetchingEnabled() {
        return this.prefetchingEnabled;
    }

    /* renamed from: getPremeasureConstraints-msEJaDk$foundation_release, reason: not valid java name and from getter */
    public final long getPremeasureConstraints() {
        return this.premeasureConstraints;
    }

    /* renamed from: getRemeasurement$foundation_release, reason: from getter */
    public final Remeasurement getRemeasurement() {
        return this.remeasurement;
    }

    /* renamed from: getRemeasurementModifier$foundation_release, reason: from getter */
    public final RemeasurementModifier getRemeasurementModifier() {
        return this.remeasurementModifier;
    }

    /* renamed from: getScrollToBeConsumed$foundation_release, reason: from getter */
    public final float getScrollToBeConsumed() {
        return this.scrollToBeConsumed;
    }

    public final void setDensity$foundation_release(Density density) {
        Intrinsics.checkNotNullParameter(density, "<set-?>");
        this.density = density;
    }

    public final void setPrefetchingEnabled$foundation_release(boolean z) {
        this.prefetchingEnabled = z;
    }

    /* renamed from: setPremeasureConstraints-BRTryo0$foundation_release, reason: not valid java name */
    public final void m603setPremeasureConstraintsBRTryo0$foundation_release(long j) {
        this.premeasureConstraints = j;
    }

    public LazyListState(int i, int i2) {
        MutableState<LazyListLayoutInfo> mutableStateOf$default;
        MutableState mutableStateOf$default2;
        MutableState mutableStateOf$default3;
        LazyListScrollPosition lazyListScrollPosition = new LazyListScrollPosition(i, i2);
        this.scrollPosition = lazyListScrollPosition;
        this.animateScrollScope = new LazyListAnimateScrollScope(this);
        mutableStateOf$default = SnapshotStateKt__SnapshotStateKt.mutableStateOf$default(EmptyLazyListLayoutInfo.INSTANCE, null, 2, null);
        this.layoutInfoState = mutableStateOf$default;
        this.internalInteractionSource = InteractionSourceKt.MutableInteractionSource();
        this.density = DensityKt.Density(1.0f, 1.0f);
        this.scrollableState = ScrollableStateKt.ScrollableState(new Function1<Float, Float>() { // from class: androidx.compose.foundation.lazy.LazyListState$scrollableState$1
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(1);
            }

            public final Float invoke(float f) {
                return Float.valueOf(-LazyListState.this.onScroll$foundation_release(-f));
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Float invoke(Float f) {
                return invoke(f.floatValue());
            }
        });
        this.prefetchingEnabled = true;
        this.indexToPrefetch = -1;
        this.remeasurementModifier = new RemeasurementModifier() { // from class: androidx.compose.foundation.lazy.LazyListState$remeasurementModifier$1
            @Override // androidx.compose.ui.layout.RemeasurementModifier
            public void onRemeasurementAvailable(Remeasurement remeasurement) {
                Intrinsics.checkNotNullParameter(remeasurement, "remeasurement");
                LazyListState.this.remeasurement = remeasurement;
            }
        };
        this.awaitLayoutModifier = new AwaitFirstLayoutModifier();
        this.placementAnimator = new LazyListItemPlacementAnimator();
        this.beyondBoundsInfo = new LazyLayoutBeyondBoundsInfo();
        this.premeasureConstraints = ConstraintsKt.Constraints$default(0, 0, 0, 0, 15, null);
        this.pinnedItems = new LazyLayoutPinnedItemList();
        lazyListScrollPosition.getNearestRangeState();
        mutableStateOf$default2 = SnapshotStateKt__SnapshotStateKt.mutableStateOf$default(false, null, 2, null);
        this.canScrollForward = mutableStateOf$default2;
        mutableStateOf$default3 = SnapshotStateKt__SnapshotStateKt.mutableStateOf$default(false, null, 2, null);
        this.canScrollBackward = mutableStateOf$default3;
        this.prefetchState = new LazyLayoutPrefetchState();
    }

    public /* synthetic */ LazyListState(int i, int i2, int i3, DefaultConstructorMarker defaultConstructorMarker) {
        this((i3 & 1) != 0 ? 0 : i, (i3 & 2) != 0 ? 0 : i2);
    }

    public final int getFirstVisibleItemIndex() {
        return this.scrollPosition.getIndex();
    }

    public final int getFirstVisibleItemScrollOffset() {
        return this.scrollPosition.getScrollOffset();
    }

    public final LazyListLayoutInfo getLayoutInfo() {
        return this.layoutInfoState.getValue();
    }

    public final InteractionSource getInteractionSource() {
        return this.internalInteractionSource;
    }

    public final IntRange getNearestRange$foundation_release() {
        return this.scrollPosition.getNearestRangeState().getValue();
    }

    public static /* synthetic */ Object scrollToItem$default(LazyListState lazyListState, int i, int i2, Continuation continuation, int i3, Object obj) {
        if ((i3 & 2) != 0) {
            i2 = 0;
        }
        return lazyListState.scrollToItem(i, i2, continuation);
    }

    public final Object scrollToItem(int i, int i2, Continuation<? super Unit> continuation) {
        Object scroll$default = ScrollableState.scroll$default(this, null, new LazyListState$scrollToItem$2(this, i, i2, null), continuation, 1, null);
        return scroll$default == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? scroll$default : Unit.INSTANCE;
    }

    public final void snapToItemIndexInternal$foundation_release(int index, int scrollOffset) {
        this.scrollPosition.requestPosition(index, scrollOffset);
        this.placementAnimator.reset();
        Remeasurement remeasurement = this.remeasurement;
        if (remeasurement != null) {
            remeasurement.forceRemeasure();
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:19:0x006c A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:20:0x0047  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0025  */
    @Override // androidx.compose.foundation.gestures.ScrollableState
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object scroll(androidx.compose.foundation.MutatePriority r6, kotlin.jvm.functions.Function2<? super androidx.compose.foundation.gestures.ScrollScope, ? super kotlin.coroutines.Continuation<? super kotlin.Unit>, ? extends java.lang.Object> r7, kotlin.coroutines.Continuation<? super kotlin.Unit> r8) {
        /*
            r5 = this;
            boolean r0 = r8 instanceof androidx.compose.foundation.lazy.LazyListState$scroll$1
            if (r0 == 0) goto L14
            r0 = r8
            androidx.compose.foundation.lazy.LazyListState$scroll$1 r0 = (androidx.compose.foundation.lazy.LazyListState$scroll$1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r1 = r1 & r2
            if (r1 == 0) goto L14
            int r8 = r0.label
            int r8 = r8 - r2
            r0.label = r8
            goto L19
        L14:
            androidx.compose.foundation.lazy.LazyListState$scroll$1 r0 = new androidx.compose.foundation.lazy.LazyListState$scroll$1
            r0.<init>(r5, r8)
        L19:
            java.lang.Object r8 = r0.result
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.label
            r3 = 2
            r4 = 1
            if (r2 == 0) goto L47
            if (r2 == r4) goto L35
            if (r2 != r3) goto L2d
            kotlin.ResultKt.throwOnFailure(r8)
            goto L6d
        L2d:
            java.lang.IllegalStateException r5 = new java.lang.IllegalStateException
            java.lang.String r6 = "call to 'resume' before 'invoke' with coroutine"
            r5.<init>(r6)
            throw r5
        L35:
            java.lang.Object r5 = r0.L$2
            r7 = r5
            kotlin.jvm.functions.Function2 r7 = (kotlin.jvm.functions.Function2) r7
            java.lang.Object r5 = r0.L$1
            r6 = r5
            androidx.compose.foundation.MutatePriority r6 = (androidx.compose.foundation.MutatePriority) r6
            java.lang.Object r5 = r0.L$0
            androidx.compose.foundation.lazy.LazyListState r5 = (androidx.compose.foundation.lazy.LazyListState) r5
            kotlin.ResultKt.throwOnFailure(r8)
            goto L5b
        L47:
            kotlin.ResultKt.throwOnFailure(r8)
            androidx.compose.foundation.lazy.layout.AwaitFirstLayoutModifier r8 = r5.awaitLayoutModifier
            r0.L$0 = r5
            r0.L$1 = r6
            r0.L$2 = r7
            r0.label = r4
            java.lang.Object r8 = r8.waitForFirstLayout(r0)
            if (r8 != r1) goto L5b
            return r1
        L5b:
            androidx.compose.foundation.gestures.ScrollableState r5 = r5.scrollableState
            r8 = 0
            r0.L$0 = r8
            r0.L$1 = r8
            r0.L$2 = r8
            r0.label = r3
            java.lang.Object r5 = r5.scroll(r6, r7, r0)
            if (r5 != r1) goto L6d
            return r1
        L6d:
            kotlin.Unit r5 = kotlin.Unit.INSTANCE
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.foundation.lazy.LazyListState.scroll(androidx.compose.foundation.MutatePriority, kotlin.jvm.functions.Function2, kotlin.coroutines.Continuation):java.lang.Object");
    }

    @Override // androidx.compose.foundation.gestures.ScrollableState
    public float dispatchRawDelta(float delta) {
        return this.scrollableState.dispatchRawDelta(delta);
    }

    @Override // androidx.compose.foundation.gestures.ScrollableState
    public boolean isScrollInProgress() {
        return this.scrollableState.isScrollInProgress();
    }

    private void setCanScrollForward(boolean z) {
        this.canScrollForward.setValue(Boolean.valueOf(z));
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // androidx.compose.foundation.gestures.ScrollableState
    public boolean getCanScrollForward() {
        return ((Boolean) this.canScrollForward.getValue()).booleanValue();
    }

    private void setCanScrollBackward(boolean z) {
        this.canScrollBackward.setValue(Boolean.valueOf(z));
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // androidx.compose.foundation.gestures.ScrollableState
    public boolean getCanScrollBackward() {
        return ((Boolean) this.canScrollBackward.getValue()).booleanValue();
    }

    public final float onScroll$foundation_release(float distance) {
        if ((distance < 0.0f && !getCanScrollForward()) || (distance > 0.0f && !getCanScrollBackward())) {
            return 0.0f;
        }
        if (Math.abs(this.scrollToBeConsumed) > 0.5f) {
            throw new IllegalStateException(("entered drag with non-zero pending scroll: " + this.scrollToBeConsumed).toString());
        }
        float f = this.scrollToBeConsumed + distance;
        this.scrollToBeConsumed = f;
        if (Math.abs(f) > 0.5f) {
            float f2 = this.scrollToBeConsumed;
            Remeasurement remeasurement = this.remeasurement;
            if (remeasurement != null) {
                remeasurement.forceRemeasure();
            }
            if (this.prefetchingEnabled) {
                notifyPrefetch(f2 - this.scrollToBeConsumed);
            }
        }
        if (Math.abs(this.scrollToBeConsumed) <= 0.5f) {
            return distance;
        }
        float f3 = distance - this.scrollToBeConsumed;
        this.scrollToBeConsumed = 0.0f;
        return f3;
    }

    private final void notifyPrefetch(float delta) {
        int index;
        LazyLayoutPrefetchState.PrefetchHandle prefetchHandle;
        if (this.prefetchingEnabled) {
            LazyListLayoutInfo layoutInfo = getLayoutInfo();
            if (!layoutInfo.getVisibleItemsInfo().isEmpty()) {
                boolean z = delta < 0.0f;
                if (z) {
                    index = ((LazyListItemInfo) CollectionsKt.last((List) layoutInfo.getVisibleItemsInfo())).getIndex() + 1;
                } else {
                    index = ((LazyListItemInfo) CollectionsKt.first((List) layoutInfo.getVisibleItemsInfo())).getIndex() - 1;
                }
                if (index == this.indexToPrefetch || index < 0 || index >= layoutInfo.getTotalItemsCount()) {
                    return;
                }
                if (this.wasScrollingForward != z && (prefetchHandle = this.currentPrefetchHandle) != null) {
                    prefetchHandle.cancel();
                }
                this.wasScrollingForward = z;
                this.indexToPrefetch = index;
                this.currentPrefetchHandle = this.prefetchState.m649schedulePrefetch0kLqBqw(index, this.premeasureConstraints);
            }
        }
    }

    private final void cancelPrefetchIfVisibleItemsChanged(LazyListLayoutInfo info) {
        int index;
        if (this.indexToPrefetch == -1 || !(!info.getVisibleItemsInfo().isEmpty())) {
            return;
        }
        if (this.wasScrollingForward) {
            index = ((LazyListItemInfo) CollectionsKt.last((List) info.getVisibleItemsInfo())).getIndex() + 1;
        } else {
            index = ((LazyListItemInfo) CollectionsKt.first((List) info.getVisibleItemsInfo())).getIndex() - 1;
        }
        if (this.indexToPrefetch != index) {
            this.indexToPrefetch = -1;
            LazyLayoutPrefetchState.PrefetchHandle prefetchHandle = this.currentPrefetchHandle;
            if (prefetchHandle != null) {
                prefetchHandle.cancel();
            }
            this.currentPrefetchHandle = null;
        }
    }

    public static /* synthetic */ Object animateScrollToItem$default(LazyListState lazyListState, int i, int i2, Continuation continuation, int i3, Object obj) {
        if ((i3 & 2) != 0) {
            i2 = 0;
        }
        return lazyListState.animateScrollToItem(i, i2, continuation);
    }

    public final Object animateScrollToItem(int i, int i2, Continuation<? super Unit> continuation) {
        Object animateScrollToItem = LazyAnimateScrollKt.animateScrollToItem(this.animateScrollScope, i, i2, continuation);
        return animateScrollToItem == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? animateScrollToItem : Unit.INSTANCE;
    }

    public final void applyMeasureResult$foundation_release(LazyListMeasureResult result) {
        Intrinsics.checkNotNullParameter(result, "result");
        this.scrollPosition.updateFromMeasureResult(result);
        this.scrollToBeConsumed -= result.getConsumedScroll();
        this.layoutInfoState.setValue(result);
        setCanScrollForward(result.getCanScrollForward());
        LazyListMeasuredItem firstVisibleItem = result.getFirstVisibleItem();
        setCanScrollBackward(((firstVisibleItem == null || firstVisibleItem.getIndex() == 0) && result.getFirstVisibleItemScrollOffset() == 0) ? false : true);
        this.numMeasurePasses++;
        cancelPrefetchIfVisibleItemsChanged(result);
    }

    public static /* synthetic */ int updateScrollPositionIfTheFirstItemWasMoved$foundation_release$default(LazyListState lazyListState, LazyListItemProvider lazyListItemProvider, int i, int i2, Object obj) {
        if ((i2 & 2) != 0) {
            Snapshot createNonObservableSnapshot = Snapshot.INSTANCE.createNonObservableSnapshot();
            try {
                Snapshot makeCurrent = createNonObservableSnapshot.makeCurrent();
                try {
                    int index = lazyListState.scrollPosition.getIndex();
                    createNonObservableSnapshot.dispose();
                    i = index;
                } finally {
                    createNonObservableSnapshot.restoreCurrent(makeCurrent);
                }
            } catch (Throwable th) {
                createNonObservableSnapshot.dispose();
                throw th;
            }
        }
        return lazyListState.updateScrollPositionIfTheFirstItemWasMoved$foundation_release(lazyListItemProvider, i);
    }

    public final int updateScrollPositionIfTheFirstItemWasMoved$foundation_release(LazyListItemProvider itemProvider, int firstItemIndex) {
        Intrinsics.checkNotNullParameter(itemProvider, "itemProvider");
        return this.scrollPosition.updateScrollPositionIfTheFirstItemWasMoved(itemProvider, firstItemIndex);
    }

    /* compiled from: LazyListState.kt */
    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u001b\u0010\u0003\u001a\f\u0012\u0004\u0012\u00020\u0005\u0012\u0002\b\u00030\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Landroidx/compose/foundation/lazy/LazyListState$Companion;", "", "()V", "Saver", "Landroidx/compose/runtime/saveable/Saver;", "Landroidx/compose/foundation/lazy/LazyListState;", "getSaver", "()Landroidx/compose/runtime/saveable/Saver;", "foundation_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    /* loaded from: classes.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final Saver<LazyListState, ?> getSaver() {
            return LazyListState.Saver;
        }
    }
}
