package androidx.compose.foundation.pager;

import androidx.compose.animation.core.AnimationSpec;
import androidx.compose.animation.core.AnimationSpecKt;
import androidx.compose.foundation.MutatePriority;
import androidx.compose.foundation.gestures.ScrollScope;
import androidx.compose.foundation.gestures.ScrollableState;
import androidx.compose.foundation.gestures.ScrollableStateKt;
import androidx.compose.foundation.gestures.snapping.SnapPositionInLayoutKt;
import androidx.compose.foundation.interaction.InteractionSource;
import androidx.compose.foundation.interaction.InteractionSourceKt;
import androidx.compose.foundation.interaction.MutableInteractionSource;
import androidx.compose.foundation.lazy.layout.AwaitFirstLayoutModifier;
import androidx.compose.foundation.lazy.layout.LazyLayoutBeyondBoundsInfo;
import androidx.compose.foundation.lazy.layout.LazyLayoutPinnedItemList;
import androidx.compose.foundation.lazy.layout.LazyLayoutPrefetchState;
import androidx.compose.runtime.MutableFloatState;
import androidx.compose.runtime.MutableIntState;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.PrimitiveSnapshotStateKt;
import androidx.compose.runtime.SnapshotIntStateKt;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.runtime.SnapshotStateKt__SnapshotStateKt;
import androidx.compose.runtime.State;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.layout.Remeasurement;
import androidx.compose.ui.layout.RemeasurementModifier;
import androidx.compose.ui.unit.ConstraintsKt;
import androidx.compose.ui.unit.Density;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.math.MathKt;
import kotlin.ranges.IntRange;
import kotlin.ranges.RangesKt;

/* compiled from: PagerState.kt */
@Metadata(d1 = {"\u0000Þ\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0007\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0013\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u000e\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u000f\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0013\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\r\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b'\u0018\u00002\u00020\u0001B\u0019\u0012\b\b\u0002\u0010\u0002\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J:\u0010\u0099\u0001\u001a\u00030\u009a\u00012\u0007\u0010\u009b\u0001\u001a\u00020\u00032\t\b\u0002\u0010\u009c\u0001\u001a\u00020\u00052\u0010\b\u0002\u0010\u009d\u0001\u001a\t\u0012\u0004\u0012\u00020\u00050\u009e\u0001H\u0086@ø\u0001\u0000¢\u0006\u0003\u0010\u009f\u0001J\u001a\u0010 \u0001\u001a\u00030\u009a\u00012\b\u0010¡\u0001\u001a\u00030¢\u0001H\u0000¢\u0006\u0003\b£\u0001J\u0014\u0010¤\u0001\u001a\u00030\u009a\u0001H\u0082@ø\u0001\u0000¢\u0006\u0003\u0010¥\u0001J\u0013\u0010¦\u0001\u001a\u00030\u009a\u00012\u0007\u0010§\u0001\u001a\u00020EH\u0002J\u0012\u0010¨\u0001\u001a\u00020\u00052\u0007\u0010©\u0001\u001a\u00020\u0005H\u0016J\u0010\u0010ª\u0001\u001a\u00020\u00052\u0007\u0010\u009b\u0001\u001a\u00020\u0003J\u0013\u0010«\u0001\u001a\u00030\u009a\u00012\u0007\u0010©\u0001\u001a\u00020\u0005H\u0002J\u0012\u0010¬\u0001\u001a\u00020\u00052\u0007\u0010\u00ad\u0001\u001a\u00020\u0005H\u0002JN\u0010®\u0001\u001a\u00030\u009a\u00012\b\u0010¯\u0001\u001a\u00030°\u00012.\u0010±\u0001\u001a)\b\u0001\u0012\u0005\u0012\u00030³\u0001\u0012\f\u0012\n\u0012\u0005\u0012\u00030\u009a\u00010´\u0001\u0012\u0007\u0012\u0005\u0018\u00010µ\u00010²\u0001¢\u0006\u0003\b¶\u0001H\u0096@ø\u0001\u0000¢\u0006\u0003\u0010·\u0001J(\u0010¸\u0001\u001a\u00030\u009a\u00012\u0007\u0010\u009b\u0001\u001a\u00020\u00032\t\b\u0002\u0010\u009c\u0001\u001a\u00020\u0005H\u0086@ø\u0001\u0000¢\u0006\u0003\u0010¹\u0001J\r\u0010º\u0001\u001a\u00020\u0003*\u00020\u0003H\u0002R+\u0010\b\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00020\u00038B@BX\u0082\u008e\u0002¢\u0006\u0012\n\u0004\b\r\u0010\u000e\u001a\u0004\b\t\u0010\n\"\u0004\b\u000b\u0010\fR\u0014\u0010\u000f\u001a\u00020\u0010X\u0080\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0011\u0010\u0012R\u0014\u0010\u0013\u001a\u00020\u0014X\u0080\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0015\u0010\u0016R+\u0010\u0018\u001a\u00020\u00172\u0006\u0010\u0007\u001a\u00020\u00178F@BX\u0086\u008e\u0002¢\u0006\u0012\n\u0004\b\u001d\u0010\u001e\u001a\u0004\b\u0019\u0010\u001a\"\u0004\b\u001b\u0010\u001cR+\u0010\u001f\u001a\u00020\u00172\u0006\u0010\u0007\u001a\u00020\u00178F@BX\u0086\u008e\u0002¢\u0006\u0012\n\u0004\b\"\u0010\u001e\u001a\u0004\b \u0010\u001a\"\u0004\b!\u0010\u001cR\u0011\u0010#\u001a\u00020\u00038F¢\u0006\u0006\u001a\u0004\b$\u0010\nR\u001b\u0010%\u001a\u00020\u00058FX\u0086\u0084\u0002¢\u0006\f\n\u0004\b(\u0010)\u001a\u0004\b&\u0010'R\u0010\u0010*\u001a\u0004\u0018\u00010+X\u0082\u000e¢\u0006\u0002\n\u0000R\u001a\u0010,\u001a\u00020-X\u0080\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b.\u0010/\"\u0004\b0\u00101R\u0014\u00102\u001a\u00020\u00058BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b3\u0010'R\u0014\u00104\u001a\u00020\u00038@X\u0080\u0004¢\u0006\u0006\u001a\u0004\b5\u0010\nR\u0014\u00106\u001a\u00020\u00038@X\u0080\u0004¢\u0006\u0006\u001a\u0004\b7\u0010\nR\u000e\u00108\u001a\u00020\u0003X\u0082\u000e¢\u0006\u0002\n\u0000R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b9\u0010\nR\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b:\u0010'R\u0011\u0010;\u001a\u00020<8F¢\u0006\u0006\u001a\u0004\b=\u0010>R\u0014\u0010?\u001a\u00020@X\u0080\u0004¢\u0006\b\n\u0000\u001a\u0004\bA\u0010BR\u0014\u0010C\u001a\u00020\u00178VX\u0096\u0004¢\u0006\u0006\u001a\u0004\bC\u0010\u001aR\u0014\u0010D\u001a\u00020E8@X\u0080\u0004¢\u0006\u0006\u001a\u0004\bF\u0010GR\u001b\u0010H\u001a\u00020I8@X\u0080\u0084\u0002¢\u0006\f\u001a\u0004\bL\u0010M*\u0004\bJ\u0010KR\u001e\u0010N\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00020\u0003@BX\u0080\u000e¢\u0006\b\n\u0000\u001a\u0004\bO\u0010\nR\u0014\u0010P\u001a\u00020\u00038BX\u0082\u0004¢\u0006\u0006\u001a\u0004\bQ\u0010\nR\u0012\u0010R\u001a\u00020\u0003X¦\u0004¢\u0006\u0006\u001a\u0004\bS\u0010\nR\u0014\u0010T\u001a\u00020\u00038@X\u0080\u0004¢\u0006\u0006\u001a\u0004\bU\u0010\nR\u0014\u0010V\u001a\u00020\u00038@X\u0080\u0004¢\u0006\u0006\u001a\u0004\bW\u0010\nR\u0014\u0010X\u001a\b\u0012\u0004\u0012\u00020E0YX\u0082\u000e¢\u0006\u0002\n\u0000R\u0014\u0010Z\u001a\u00020[X\u0080\u0004¢\u0006\b\n\u0000\u001a\u0004\b\\\u0010]R\u0014\u0010^\u001a\u00020\u00058BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b_\u0010'R\u0014\u0010`\u001a\u00020aX\u0080\u0004¢\u0006\b\n\u0000\u001a\u0004\bb\u0010cR\u001a\u0010d\u001a\u00020\u0017X\u0080\u000e¢\u0006\u000e\n\u0000\u001a\u0004\be\u0010\u001a\"\u0004\bf\u0010\u001cR%\u0010g\u001a\u00020hX\u0080\u000eø\u0001\u0000ø\u0001\u0001ø\u0001\u0002¢\u0006\u0010\n\u0002\u0010m\u001a\u0004\bi\u0010j\"\u0004\bk\u0010lR/\u0010o\u001a\u0004\u0018\u00010n2\b\u0010\u0007\u001a\u0004\u0018\u00010n8@@BX\u0080\u008e\u0002¢\u0006\u0012\n\u0004\bt\u0010\u001e\u001a\u0004\bp\u0010q\"\u0004\br\u0010sR\u0014\u0010u\u001a\u00020vX\u0080\u0004¢\u0006\b\n\u0000\u001a\u0004\bw\u0010xR\u000e\u0010y\u001a\u00020zX\u0082\u0004¢\u0006\u0002\n\u0000R\u001e\u0010{\u001a\u00020\u00052\u0006\u0010\u0007\u001a\u00020\u0005@BX\u0080\u000e¢\u0006\b\n\u0000\u001a\u0004\b|\u0010'R\u000e\u0010}\u001a\u00020\u0001X\u0082\u0004¢\u0006\u0002\n\u0000R\u001c\u0010~\u001a\u00020\u00038FX\u0086\u0084\u0002¢\u0006\r\n\u0005\b\u0080\u0001\u0010)\u001a\u0004\b\u007f\u0010\nR/\u0010\u0081\u0001\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00020\u00038B@BX\u0082\u008e\u0002¢\u0006\u0015\n\u0005\b\u0084\u0001\u0010\u000e\u001a\u0005\b\u0082\u0001\u0010\n\"\u0005\b\u0083\u0001\u0010\fR1\u0010\u0085\u0001\u001a\u00020\u00052\u0006\u0010\u0007\u001a\u00020\u00058@@@X\u0080\u008e\u0002¢\u0006\u0017\n\u0006\b\u0089\u0001\u0010\u008a\u0001\u001a\u0005\b\u0086\u0001\u0010'\"\u0006\b\u0087\u0001\u0010\u0088\u0001R\u001e\u0010\u008b\u0001\u001a\u00020\u00038FX\u0086\u0084\u0002¢\u0006\u000e\n\u0005\b\u008d\u0001\u0010)\u001a\u0005\b\u008c\u0001\u0010\nR:\u0010\u008f\u0001\u001a\u00030\u008e\u00012\u0007\u0010\u0007\u001a\u00030\u008e\u00018@@@X\u0080\u008e\u0002ø\u0001\u0000ø\u0001\u0001ø\u0001\u0002¢\u0006\u0015\n\u0005\b\u0092\u0001\u0010\u001e\u001a\u0005\b\u0090\u0001\u0010j\"\u0005\b\u0091\u0001\u0010lR\u001f\u0010\u0093\u0001\u001a\n\u0012\u0005\u0012\u00030\u0095\u00010\u0094\u00018BX\u0082\u0004¢\u0006\b\u001a\u0006\b\u0096\u0001\u0010\u0097\u0001R\u000f\u0010\u0098\u0001\u001a\u00020\u0017X\u0082\u000e¢\u0006\u0002\n\u0000\u0082\u0002\u000f\n\u0002\b\u0019\n\u0005\b¡\u001e0\u0001\n\u0002\b!¨\u0006»\u0001"}, d2 = {"Landroidx/compose/foundation/pager/PagerState;", "Landroidx/compose/foundation/gestures/ScrollableState;", "initialPage", "", "initialPageOffsetFraction", "", "(IF)V", "<set-?>", "animationTargetPage", "getAnimationTargetPage", "()I", "setAnimationTargetPage", "(I)V", "animationTargetPage$delegate", "Landroidx/compose/runtime/MutableIntState;", "awaitLayoutModifier", "Landroidx/compose/foundation/lazy/layout/AwaitFirstLayoutModifier;", "getAwaitLayoutModifier$foundation_release", "()Landroidx/compose/foundation/lazy/layout/AwaitFirstLayoutModifier;", "beyondBoundsInfo", "Landroidx/compose/foundation/lazy/layout/LazyLayoutBeyondBoundsInfo;", "getBeyondBoundsInfo$foundation_release", "()Landroidx/compose/foundation/lazy/layout/LazyLayoutBeyondBoundsInfo;", "", "canScrollBackward", "getCanScrollBackward", "()Z", "setCanScrollBackward", "(Z)V", "canScrollBackward$delegate", "Landroidx/compose/runtime/MutableState;", "canScrollForward", "getCanScrollForward", "setCanScrollForward", "canScrollForward$delegate", "currentPage", "getCurrentPage", "currentPageOffsetFraction", "getCurrentPageOffsetFraction", "()F", "currentPageOffsetFraction$delegate", "Landroidx/compose/runtime/State;", "currentPrefetchHandle", "Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState$PrefetchHandle;", "density", "Landroidx/compose/ui/unit/Density;", "getDensity$foundation_release", "()Landroidx/compose/ui/unit/Density;", "setDensity$foundation_release", "(Landroidx/compose/ui/unit/Density;)V", "distanceToSnapPosition", "getDistanceToSnapPosition", "firstVisiblePage", "getFirstVisiblePage$foundation_release", "firstVisiblePageOffset", "getFirstVisiblePageOffset$foundation_release", "indexToPrefetch", "getInitialPage", "getInitialPageOffsetFraction", "interactionSource", "Landroidx/compose/foundation/interaction/InteractionSource;", "getInteractionSource", "()Landroidx/compose/foundation/interaction/InteractionSource;", "internalInteractionSource", "Landroidx/compose/foundation/interaction/MutableInteractionSource;", "getInternalInteractionSource$foundation_release", "()Landroidx/compose/foundation/interaction/MutableInteractionSource;", "isScrollInProgress", "layoutInfo", "Landroidx/compose/foundation/pager/PagerLayoutInfo;", "getLayoutInfo$foundation_release", "()Landroidx/compose/foundation/pager/PagerLayoutInfo;", "nearestRange", "Lkotlin/ranges/IntRange;", "getNearestRange$foundation_release$delegate", "(Landroidx/compose/foundation/pager/PagerState;)Ljava/lang/Object;", "getNearestRange$foundation_release", "()Lkotlin/ranges/IntRange;", "numMeasurePasses", "getNumMeasurePasses$foundation_release", "pageAvailableSpace", "getPageAvailableSpace", "pageCount", "getPageCount", "pageSize", "getPageSize$foundation_release", "pageSpacing", "getPageSpacing$foundation_release", "pagerLayoutInfoState", "Landroidx/compose/runtime/MutableState;", "pinnedPages", "Landroidx/compose/foundation/lazy/layout/LazyLayoutPinnedItemList;", "getPinnedPages$foundation_release", "()Landroidx/compose/foundation/lazy/layout/LazyLayoutPinnedItemList;", "positionThresholdFraction", "getPositionThresholdFraction", "prefetchState", "Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState;", "getPrefetchState$foundation_release", "()Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState;", "prefetchingEnabled", "getPrefetchingEnabled$foundation_release", "setPrefetchingEnabled$foundation_release", "premeasureConstraints", "Landroidx/compose/ui/unit/Constraints;", "getPremeasureConstraints-msEJaDk$foundation_release", "()J", "setPremeasureConstraints-BRTryo0$foundation_release", "(J)V", "J", "Landroidx/compose/ui/layout/Remeasurement;", "remeasurement", "getRemeasurement$foundation_release", "()Landroidx/compose/ui/layout/Remeasurement;", "setRemeasurement", "(Landroidx/compose/ui/layout/Remeasurement;)V", "remeasurement$delegate", "remeasurementModifier", "Landroidx/compose/ui/layout/RemeasurementModifier;", "getRemeasurementModifier$foundation_release", "()Landroidx/compose/ui/layout/RemeasurementModifier;", "scrollPosition", "Landroidx/compose/foundation/pager/PagerScrollPosition;", "scrollToBeConsumed", "getScrollToBeConsumed$foundation_release", "scrollableState", "settledPage", "getSettledPage", "settledPage$delegate", "settledPageState", "getSettledPageState", "setSettledPageState", "settledPageState$delegate", "snapRemainingScrollOffset", "getSnapRemainingScrollOffset$foundation_release", "setSnapRemainingScrollOffset$foundation_release", "(F)V", "snapRemainingScrollOffset$delegate", "Landroidx/compose/runtime/MutableFloatState;", "targetPage", "getTargetPage", "targetPage$delegate", "Landroidx/compose/ui/geometry/Offset;", "upDownDifference", "getUpDownDifference-F1C5BW0$foundation_release", "setUpDownDifference-k-4lQ0M$foundation_release", "upDownDifference$delegate", "visiblePages", "", "Landroidx/compose/foundation/pager/PageInfo;", "getVisiblePages", "()Ljava/util/List;", "wasScrollingForward", "animateScrollToPage", "", "page", "pageOffsetFraction", "animationSpec", "Landroidx/compose/animation/core/AnimationSpec;", "(IFLandroidx/compose/animation/core/AnimationSpec;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "applyMeasureResult", "result", "Landroidx/compose/foundation/pager/PagerMeasureResult;", "applyMeasureResult$foundation_release", "awaitScrollDependencies", "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "cancelPrefetchIfVisibleItemsChanged", "info", "dispatchRawDelta", "delta", "getOffsetFractionForPage", "notifyPrefetch", "performScroll", "distance", "scroll", "scrollPriority", "Landroidx/compose/foundation/MutatePriority;", "block", "Lkotlin/Function2;", "Landroidx/compose/foundation/gestures/ScrollScope;", "Lkotlin/coroutines/Continuation;", "", "Lkotlin/ExtensionFunctionType;", "(Landroidx/compose/foundation/MutatePriority;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "scrollToPage", "(IFLkotlin/coroutines/Continuation;)Ljava/lang/Object;", "coerceInPageRange", "foundation_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public abstract class PagerState implements ScrollableState {
    public static final int $stable = 0;

    /* renamed from: animationTargetPage$delegate, reason: from kotlin metadata */
    private final MutableIntState animationTargetPage;
    private final AwaitFirstLayoutModifier awaitLayoutModifier;
    private final LazyLayoutBeyondBoundsInfo beyondBoundsInfo;

    /* renamed from: canScrollBackward$delegate, reason: from kotlin metadata */
    private final MutableState canScrollBackward;

    /* renamed from: canScrollForward$delegate, reason: from kotlin metadata */
    private final MutableState canScrollForward;

    /* renamed from: currentPageOffsetFraction$delegate, reason: from kotlin metadata */
    private final State currentPageOffsetFraction;
    private LazyLayoutPrefetchState.PrefetchHandle currentPrefetchHandle;
    private Density density;
    private int indexToPrefetch;
    private final int initialPage;
    private final float initialPageOffsetFraction;
    private final MutableInteractionSource internalInteractionSource;
    private int numMeasurePasses;
    private MutableState<PagerLayoutInfo> pagerLayoutInfoState;
    private final LazyLayoutPinnedItemList pinnedPages;
    private final LazyLayoutPrefetchState prefetchState;
    private boolean prefetchingEnabled;
    private long premeasureConstraints;

    /* renamed from: remeasurement$delegate, reason: from kotlin metadata */
    private final MutableState remeasurement;
    private final RemeasurementModifier remeasurementModifier;
    private final PagerScrollPosition scrollPosition;
    private float scrollToBeConsumed;
    private final ScrollableState scrollableState;

    /* renamed from: settledPage$delegate, reason: from kotlin metadata */
    private final State settledPage;

    /* renamed from: settledPageState$delegate, reason: from kotlin metadata */
    private final MutableIntState settledPageState;

    /* renamed from: snapRemainingScrollOffset$delegate, reason: from kotlin metadata */
    private final MutableFloatState snapRemainingScrollOffset;

    /* renamed from: targetPage$delegate, reason: from kotlin metadata */
    private final State targetPage;

    /* renamed from: upDownDifference$delegate, reason: from kotlin metadata */
    private final MutableState upDownDifference;
    private boolean wasScrollingForward;

    public PagerState() {
        this(0, 0.0f, 3, null);
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

    public final int getInitialPage() {
        return this.initialPage;
    }

    public final float getInitialPageOffsetFraction() {
        return this.initialPageOffsetFraction;
    }

    /* renamed from: getInternalInteractionSource$foundation_release, reason: from getter */
    public final MutableInteractionSource getInternalInteractionSource() {
        return this.internalInteractionSource;
    }

    /* renamed from: getNumMeasurePasses$foundation_release, reason: from getter */
    public final int getNumMeasurePasses() {
        return this.numMeasurePasses;
    }

    public abstract int getPageCount();

    /* renamed from: getPinnedPages$foundation_release, reason: from getter */
    public final LazyLayoutPinnedItemList getPinnedPages() {
        return this.pinnedPages;
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

    /* renamed from: getRemeasurementModifier$foundation_release, reason: from getter */
    public final RemeasurementModifier getRemeasurementModifier() {
        return this.remeasurementModifier;
    }

    /* renamed from: getScrollToBeConsumed$foundation_release, reason: from getter */
    public final float getScrollToBeConsumed() {
        return this.scrollToBeConsumed;
    }

    @Override // androidx.compose.foundation.gestures.ScrollableState
    public Object scroll(MutatePriority mutatePriority, Function2<? super ScrollScope, ? super Continuation<? super Unit>, ? extends Object> function2, Continuation<? super Unit> continuation) {
        return scroll$suspendImpl(this, mutatePriority, function2, continuation);
    }

    public final void setDensity$foundation_release(Density density) {
        Intrinsics.checkNotNullParameter(density, "<set-?>");
        this.density = density;
    }

    public final void setPrefetchingEnabled$foundation_release(boolean z) {
        this.prefetchingEnabled = z;
    }

    /* renamed from: setPremeasureConstraints-BRTryo0$foundation_release, reason: not valid java name */
    public final void m712setPremeasureConstraintsBRTryo0$foundation_release(long j) {
        this.premeasureConstraints = j;
    }

    public PagerState(int i, float f) {
        MutableState mutableStateOf$default;
        MutableState<PagerLayoutInfo> mutableStateOf$default2;
        MutableState mutableStateOf$default3;
        MutableState mutableStateOf$default4;
        MutableState mutableStateOf$default5;
        this.initialPage = i;
        this.initialPageOffsetFraction = f;
        double d = f;
        if (-0.5d <= d && d <= 0.5d) {
            mutableStateOf$default = SnapshotStateKt__SnapshotStateKt.mutableStateOf$default(Offset.m2389boximpl(Offset.INSTANCE.m2416getZeroF1C5BW0()), null, 2, null);
            this.upDownDifference = mutableStateOf$default;
            this.snapRemainingScrollOffset = PrimitiveSnapshotStateKt.mutableFloatStateOf(0.0f);
            PagerScrollPosition pagerScrollPosition = new PagerScrollPosition(i, 0);
            this.scrollPosition = pagerScrollPosition;
            this.scrollableState = ScrollableStateKt.ScrollableState(new Function1<Float, Float>() { // from class: androidx.compose.foundation.pager.PagerState$scrollableState$1
                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    super(1);
                }

                public final Float invoke(float f2) {
                    float performScroll;
                    performScroll = PagerState.this.performScroll(-f2);
                    return Float.valueOf(-performScroll);
                }

                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ Float invoke(Float f2) {
                    return invoke(f2.floatValue());
                }
            });
            this.prefetchingEnabled = true;
            this.indexToPrefetch = -1;
            mutableStateOf$default2 = SnapshotStateKt__SnapshotStateKt.mutableStateOf$default(PagerStateKt.getEmptyLayoutInfo(), null, 2, null);
            this.pagerLayoutInfoState = mutableStateOf$default2;
            this.density = PagerStateKt.access$getUnitDensity$p();
            this.internalInteractionSource = InteractionSourceKt.MutableInteractionSource();
            this.animationTargetPage = SnapshotIntStateKt.mutableIntStateOf(-1);
            this.settledPageState = SnapshotIntStateKt.mutableIntStateOf(i);
            this.settledPage = SnapshotStateKt.derivedStateOf(SnapshotStateKt.structuralEqualityPolicy(), new Function0<Integer>() { // from class: androidx.compose.foundation.pager.PagerState$settledPage$2
                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    super(0);
                }

                /* JADX WARN: Can't rename method to resolve collision */
                @Override // kotlin.jvm.functions.Function0
                public final Integer invoke() {
                    int currentPage;
                    if (PagerState.this.isScrollInProgress()) {
                        currentPage = PagerState.this.getSettledPageState();
                    } else {
                        currentPage = PagerState.this.getCurrentPage();
                    }
                    return Integer.valueOf(currentPage);
                }
            });
            this.targetPage = SnapshotStateKt.derivedStateOf(SnapshotStateKt.structuralEqualityPolicy(), new Function0<Integer>() { // from class: androidx.compose.foundation.pager.PagerState$targetPage$2
                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    super(0);
                }

                /* JADX WARN: Can't rename method to resolve collision */
                @Override // kotlin.jvm.functions.Function0
                public final Integer invoke() {
                    int animationTargetPage;
                    int pageAvailableSpace;
                    int roundToInt;
                    float positionThresholdFraction;
                    int coerceInPageRange;
                    if (PagerState.this.isScrollInProgress()) {
                        animationTargetPage = PagerState.this.getAnimationTargetPage();
                        if (animationTargetPage != -1) {
                            roundToInt = PagerState.this.getAnimationTargetPage();
                        } else if (PagerState.this.getSnapRemainingScrollOffset$foundation_release() == 0.0f) {
                            float abs = Math.abs(PagerState.this.getCurrentPageOffsetFraction());
                            positionThresholdFraction = PagerState.this.getPositionThresholdFraction();
                            if (abs >= Math.abs(positionThresholdFraction)) {
                                roundToInt = PagerState.this.getCurrentPage() + ((int) Math.signum(PagerState.this.getCurrentPageOffsetFraction()));
                            } else {
                                roundToInt = PagerState.this.getCurrentPage();
                            }
                        } else {
                            float snapRemainingScrollOffset$foundation_release = PagerState.this.getSnapRemainingScrollOffset$foundation_release();
                            pageAvailableSpace = PagerState.this.getPageAvailableSpace();
                            roundToInt = MathKt.roundToInt(snapRemainingScrollOffset$foundation_release / pageAvailableSpace) + PagerState.this.getCurrentPage();
                        }
                    } else {
                        roundToInt = PagerState.this.getCurrentPage();
                    }
                    coerceInPageRange = PagerState.this.coerceInPageRange(roundToInt);
                    return Integer.valueOf(coerceInPageRange);
                }
            });
            this.currentPageOffsetFraction = SnapshotStateKt.derivedStateOf(SnapshotStateKt.structuralEqualityPolicy(), new Function0<Float>() { // from class: androidx.compose.foundation.pager.PagerState$currentPageOffsetFraction$2
                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    super(0);
                }

                /* JADX WARN: Can't rename method to resolve collision */
                @Override // kotlin.jvm.functions.Function0
                public final Float invoke() {
                    PageInfo pageInfo;
                    int pageAvailableSpace;
                    float coerceIn;
                    List<PageInfo> visiblePagesInfo = PagerState.this.getLayoutInfo$foundation_release().getVisiblePagesInfo();
                    PagerState pagerState = PagerState.this;
                    int size = visiblePagesInfo.size();
                    int i2 = 0;
                    while (true) {
                        if (i2 >= size) {
                            pageInfo = null;
                            break;
                        }
                        pageInfo = visiblePagesInfo.get(i2);
                        if (pageInfo.getIndex() == pagerState.getCurrentPage()) {
                            break;
                        }
                        i2++;
                    }
                    PageInfo pageInfo2 = pageInfo;
                    int offset = pageInfo2 != null ? pageInfo2.getOffset() : 0;
                    pageAvailableSpace = PagerState.this.getPageAvailableSpace();
                    float f2 = pageAvailableSpace;
                    if (f2 == 0.0f) {
                        coerceIn = PagerState.this.getInitialPageOffsetFraction();
                    } else {
                        coerceIn = RangesKt.coerceIn((-offset) / f2, -0.5f, 0.5f);
                    }
                    return Float.valueOf(coerceIn);
                }
            });
            this.prefetchState = new LazyLayoutPrefetchState();
            this.beyondBoundsInfo = new LazyLayoutBeyondBoundsInfo();
            this.awaitLayoutModifier = new AwaitFirstLayoutModifier();
            mutableStateOf$default3 = SnapshotStateKt__SnapshotStateKt.mutableStateOf$default(null, null, 2, null);
            this.remeasurement = mutableStateOf$default3;
            this.remeasurementModifier = new RemeasurementModifier() { // from class: androidx.compose.foundation.pager.PagerState$remeasurementModifier$1
                @Override // androidx.compose.ui.layout.RemeasurementModifier
                public void onRemeasurementAvailable(Remeasurement remeasurement) {
                    Intrinsics.checkNotNullParameter(remeasurement, "remeasurement");
                    PagerState.this.setRemeasurement(remeasurement);
                }
            };
            this.premeasureConstraints = ConstraintsKt.Constraints$default(0, 0, 0, 0, 15, null);
            this.pinnedPages = new LazyLayoutPinnedItemList();
            pagerScrollPosition.getNearestRangeState();
            mutableStateOf$default4 = SnapshotStateKt__SnapshotStateKt.mutableStateOf$default(false, null, 2, null);
            this.canScrollForward = mutableStateOf$default4;
            mutableStateOf$default5 = SnapshotStateKt__SnapshotStateKt.mutableStateOf$default(false, null, 2, null);
            this.canScrollBackward = mutableStateOf$default5;
            return;
        }
        throw new IllegalArgumentException(("initialPageOffsetFraction " + f + " is not within the range -0.5 to 0.5").toString());
    }

    public /* synthetic */ PagerState(int i, float f, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this((i2 & 1) != 0 ? 0 : i, (i2 & 2) != 0 ? 0.0f : f);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: getUpDownDifference-F1C5BW0$foundation_release, reason: not valid java name */
    public final long m711getUpDownDifferenceF1C5BW0$foundation_release() {
        return ((Offset) this.upDownDifference.getValue()).getPackedValue();
    }

    /* renamed from: setUpDownDifference-k-4lQ0M$foundation_release, reason: not valid java name */
    public final void m713setUpDownDifferencek4lQ0M$foundation_release(long j) {
        this.upDownDifference.setValue(Offset.m2389boximpl(j));
    }

    public final float getSnapRemainingScrollOffset$foundation_release() {
        return this.snapRemainingScrollOffset.getFloatValue();
    }

    public final int getFirstVisiblePage$foundation_release() {
        return this.scrollPosition.getFirstVisiblePage();
    }

    public final int getFirstVisiblePageOffset$foundation_release() {
        return this.scrollPosition.getScrollOffset();
    }

    public final PagerLayoutInfo getLayoutInfo$foundation_release() {
        return this.pagerLayoutInfoState.getValue();
    }

    public final int getPageSpacing$foundation_release() {
        return this.pagerLayoutInfoState.getValue().getPageSpacing();
    }

    public final int getPageSize$foundation_release() {
        return this.pagerLayoutInfoState.getValue().getPageSize();
    }

    private final List<PageInfo> getVisiblePages() {
        return this.pagerLayoutInfoState.getValue().getVisiblePagesInfo();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final int getPageAvailableSpace() {
        return getPageSize$foundation_release() + getPageSpacing$foundation_release();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final float getPositionThresholdFraction() {
        return Math.min(this.density.mo335toPx0680j_4(PagerStateKt.getDefaultPositionThreshold()), getPageSize$foundation_release() / 2.0f) / getPageSize$foundation_release();
    }

    private final float getDistanceToSnapPosition() {
        PageInfo closestPageToSnapPosition = getLayoutInfo$foundation_release().getClosestPageToSnapPosition();
        if (closestPageToSnapPosition != null) {
            return SnapPositionInLayoutKt.calculateDistanceToDesiredSnapPosition(this.density, PagerLayoutInfoKt.getMainAxisViewportSize(getLayoutInfo$foundation_release()), getLayoutInfo$foundation_release().getBeforeContentPadding(), getLayoutInfo$foundation_release().getAfterContentPadding(), getLayoutInfo$foundation_release().getPageSize(), closestPageToSnapPosition.getOffset(), closestPageToSnapPosition.getIndex(), PagerStateKt.getSnapAlignmentStartToStart());
        }
        return 0.0f;
    }

    public final InteractionSource getInteractionSource() {
        return this.internalInteractionSource;
    }

    public final int getCurrentPage() {
        return this.scrollPosition.getCurrentPage();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final int getAnimationTargetPage() {
        return this.animationTargetPage.getIntValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final int getSettledPageState() {
        return this.settledPageState.getIntValue();
    }

    public final Remeasurement getRemeasurement$foundation_release() {
        return (Remeasurement) this.remeasurement.getValue();
    }

    public final IntRange getNearestRange$foundation_release() {
        return this.scrollPosition.getNearestRangeState().getValue();
    }

    public static /* synthetic */ Object scrollToPage$default(PagerState pagerState, int i, float f, Continuation continuation, int i2, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: scrollToPage");
        }
        if ((i2 & 2) != 0) {
            f = 0.0f;
        }
        return pagerState.scrollToPage(i, f, continuation);
    }

    public final Object scrollToPage(int i, float f, Continuation<? super Unit> continuation) {
        Object scroll$default = ScrollableState.scroll$default(this, null, new PagerState$scrollToPage$2(this, f, i, null), continuation, 1, null);
        return scroll$default == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? scroll$default : Unit.INSTANCE;
    }

    /* JADX WARN: Removed duplicated region for block: B:21:0x013e A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:45:0x0061  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0026  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object animateScrollToPage(int r11, float r12, androidx.compose.animation.core.AnimationSpec<java.lang.Float> r13, kotlin.coroutines.Continuation<? super kotlin.Unit> r14) {
        /*
            Method dump skipped, instructions count: 357
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.foundation.pager.PagerState.animateScrollToPage(int, float, androidx.compose.animation.core.AnimationSpec, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ Object animateScrollToPage$default(PagerState pagerState, int i, float f, AnimationSpec animationSpec, Continuation continuation, int i2, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: animateScrollToPage");
        }
        if ((i2 & 2) != 0) {
            f = 0.0f;
        }
        if ((i2 & 4) != 0) {
            animationSpec = AnimationSpecKt.spring$default(0.0f, 400.0f, null, 5, null);
        }
        return pagerState.animateScrollToPage(i, f, animationSpec, continuation);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Object awaitScrollDependencies(Continuation<? super Unit> continuation) {
        Object waitForFirstLayout = this.awaitLayoutModifier.waitForFirstLayout(continuation);
        return waitForFirstLayout == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? waitForFirstLayout : Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Removed duplicated region for block: B:19:0x006a A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:20:0x0047  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0025  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static /* synthetic */ java.lang.Object scroll$suspendImpl(androidx.compose.foundation.pager.PagerState r5, androidx.compose.foundation.MutatePriority r6, kotlin.jvm.functions.Function2<? super androidx.compose.foundation.gestures.ScrollScope, ? super kotlin.coroutines.Continuation<? super kotlin.Unit>, ? extends java.lang.Object> r7, kotlin.coroutines.Continuation<? super kotlin.Unit> r8) {
        /*
            boolean r0 = r8 instanceof androidx.compose.foundation.pager.PagerState$scroll$1
            if (r0 == 0) goto L14
            r0 = r8
            androidx.compose.foundation.pager.PagerState$scroll$1 r0 = (androidx.compose.foundation.pager.PagerState$scroll$1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r1 = r1 & r2
            if (r1 == 0) goto L14
            int r8 = r0.label
            int r8 = r8 - r2
            r0.label = r8
            goto L19
        L14:
            androidx.compose.foundation.pager.PagerState$scroll$1 r0 = new androidx.compose.foundation.pager.PagerState$scroll$1
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
            goto L6b
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
            androidx.compose.foundation.pager.PagerState r5 = (androidx.compose.foundation.pager.PagerState) r5
            kotlin.ResultKt.throwOnFailure(r8)
            goto L59
        L47:
            kotlin.ResultKt.throwOnFailure(r8)
            r0.L$0 = r5
            r0.L$1 = r6
            r0.L$2 = r7
            r0.label = r4
            java.lang.Object r8 = r5.awaitScrollDependencies(r0)
            if (r8 != r1) goto L59
            return r1
        L59:
            androidx.compose.foundation.gestures.ScrollableState r5 = r5.scrollableState
            r8 = 0
            r0.L$0 = r8
            r0.L$1 = r8
            r0.L$2 = r8
            r0.label = r3
            java.lang.Object r5 = r5.scroll(r6, r7, r0)
            if (r5 != r1) goto L6b
            return r1
        L6b:
            kotlin.Unit r5 = kotlin.Unit.INSTANCE
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.foundation.pager.PagerState.scroll$suspendImpl(androidx.compose.foundation.pager.PagerState, androidx.compose.foundation.MutatePriority, kotlin.jvm.functions.Function2, kotlin.coroutines.Continuation):java.lang.Object");
    }

    @Override // androidx.compose.foundation.gestures.ScrollableState
    public float dispatchRawDelta(float delta) {
        return this.scrollableState.dispatchRawDelta(delta);
    }

    @Override // androidx.compose.foundation.gestures.ScrollableState
    public boolean isScrollInProgress() {
        return this.scrollableState.isScrollInProgress();
    }

    private final void setCanScrollForward(boolean z) {
        this.canScrollForward.setValue(Boolean.valueOf(z));
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // androidx.compose.foundation.gestures.ScrollableState
    public final boolean getCanScrollForward() {
        return ((Boolean) this.canScrollForward.getValue()).booleanValue();
    }

    private final void setCanScrollBackward(boolean z) {
        this.canScrollBackward.setValue(Boolean.valueOf(z));
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // androidx.compose.foundation.gestures.ScrollableState
    public final boolean getCanScrollBackward() {
        return ((Boolean) this.canScrollBackward.getValue()).booleanValue();
    }

    public final void applyMeasureResult$foundation_release(PagerMeasureResult result) {
        Intrinsics.checkNotNullParameter(result, "result");
        this.scrollPosition.updateFromMeasureResult(result);
        this.scrollToBeConsumed -= result.getConsumedScroll();
        this.pagerLayoutInfoState.setValue(result);
        setCanScrollForward(result.getCanScrollForward());
        MeasuredPage firstVisiblePage = result.getFirstVisiblePage();
        setCanScrollBackward(((firstVisiblePage == null || firstVisiblePage.getIndex() == 0) && result.getFirstVisiblePageOffset() == 0) ? false : true);
        this.numMeasurePasses++;
        cancelPrefetchIfVisibleItemsChanged(result);
        if (isScrollInProgress()) {
            return;
        }
        setSettledPageState(getCurrentPage());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final int coerceInPageRange(int i) {
        if (getPageCount() > 0) {
            return RangesKt.coerceIn(i, 0, getPageCount() - 1);
        }
        return 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final float performScroll(float distance) {
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
            Remeasurement remeasurement$foundation_release = getRemeasurement$foundation_release();
            if (remeasurement$foundation_release != null) {
                remeasurement$foundation_release.forceRemeasure();
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
            PagerLayoutInfo layoutInfo$foundation_release = getLayoutInfo$foundation_release();
            if (!layoutInfo$foundation_release.getVisiblePagesInfo().isEmpty()) {
                boolean z = delta < 0.0f;
                if (z) {
                    index = ((PageInfo) CollectionsKt.last((List) layoutInfo$foundation_release.getVisiblePagesInfo())).getIndex() + 1;
                } else {
                    index = ((PageInfo) CollectionsKt.first((List) layoutInfo$foundation_release.getVisiblePagesInfo())).getIndex() - 1;
                }
                if (index == this.indexToPrefetch || index < 0 || index >= layoutInfo$foundation_release.getPagesCount()) {
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

    private final void cancelPrefetchIfVisibleItemsChanged(PagerLayoutInfo info) {
        int index;
        if (this.indexToPrefetch == -1 || !(!info.getVisiblePagesInfo().isEmpty())) {
            return;
        }
        if (this.wasScrollingForward) {
            index = ((PageInfo) CollectionsKt.last((List) info.getVisiblePagesInfo())).getIndex() + 1;
        } else {
            index = ((PageInfo) CollectionsKt.first((List) info.getVisiblePagesInfo())).getIndex() - 1;
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

    public final float getOffsetFractionForPage(int page) {
        if (page < 0 || page > getPageCount()) {
            throw new IllegalArgumentException(("page " + page + " is not within the range 0 to pageCount").toString());
        }
        return (getCurrentPage() - page) + getCurrentPageOffsetFraction();
    }

    public final void setSnapRemainingScrollOffset$foundation_release(float f) {
        this.snapRemainingScrollOffset.setFloatValue(f);
    }

    private final void setAnimationTargetPage(int i) {
        this.animationTargetPage.setIntValue(i);
    }

    private final void setSettledPageState(int i) {
        this.settledPageState.setIntValue(i);
    }

    public final int getSettledPage() {
        return ((Number) this.settledPage.getValue()).intValue();
    }

    public final int getTargetPage() {
        return ((Number) this.targetPage.getValue()).intValue();
    }

    public final float getCurrentPageOffsetFraction() {
        return ((Number) this.currentPageOffsetFraction.getValue()).floatValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void setRemeasurement(Remeasurement remeasurement) {
        this.remeasurement.setValue(remeasurement);
    }
}
