package androidx.compose.foundation.lazy.staggeredgrid;

import androidx.compose.foundation.lazy.layout.LazyLayoutMeasureScope;
import androidx.compose.runtime.snapshots.Snapshot;
import androidx.exifinterface.media.ExifInterface;
import io.flutter.embedding.android.KeyboardMap;
import io.sentry.protocol.SentryThread;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.ArrayDeque;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;
import kotlin.math.MathKt;

/* compiled from: LazyStaggeredGridMeasure.kt */
@Metadata(d1 = {"\u0000\u0090\u0001\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0015\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\b\f\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\n\u001a\u0017\u0010\u0004\u001a\u00020\u00052\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\b0\u0007H\u0082\b\u001a5\u0010\t\u001a\u0002H\n\"\u0004\b\u0000\u0010\n2\u0006\u0010\u000b\u001a\u00020\f2\u0017\u0010\r\u001a\u0013\u0012\u0004\u0012\u00020\f\u0012\u0004\u0012\u0002H\n0\u000e¢\u0006\u0002\b\u000fH\u0083\b¢\u0006\u0002\u0010\u0010\u001aJ\u0010\u0011\u001a\b\u0012\u0004\u0012\u00020\u00130\u0012*\u00020\u00142\u0012\u0010\u0015\u001a\u000e\u0012\u0004\u0012\u00020\u0013\u0012\u0004\u0012\u00020\u00050\u000e2!\u0010\u0016\u001a\u001d\u0012\u0013\u0012\u00110\u0003¢\u0006\f\b\u0017\u0012\b\b\u0018\u0012\u0004\b\b(\u0019\u0012\u0004\u0012\u00020\u00010\u000eH\u0083\b\u001a;\u0010\u001a\u001a\b\u0012\u0004\u0012\u00020\u00130\u0012*\u00020\u00142\u0012\u0010\u001b\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00130\u001d0\u001c2\u0006\u0010\u001e\u001a\u00020\u001f2\u0006\u0010 \u001a\u00020\u0003H\u0002¢\u0006\u0002\u0010!\u001a\u001d\u0010\"\u001a\u00020\b*\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00130\u001d0\u001cH\u0002¢\u0006\u0002\u0010#\u001a\u001c\u0010$\u001a\u00020\u0005*\u00020\u00142\u0006\u0010%\u001a\u00020\u001f2\u0006\u0010&\u001a\u00020\u0003H\u0002\u001a\u001c\u0010'\u001a\u00020\u0003*\u00020\u00142\u0006\u0010(\u001a\u00020\u00032\u0006\u0010)\u001a\u00020\u0003H\u0002\u001a.\u0010*\u001a\u00020\u0005*\u00020+2\u0012\u0010\r\u001a\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00050\u000eH\u0082\bø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\b,\u0010-\u001a\f\u0010.\u001a\u00020\u0003*\u00020\u001fH\u0002\u001a2\u0010/\u001a\u00020\u0003\"\u0004\b\u0000\u0010\n*\b\u0012\u0004\u0012\u0002H\n0\u001c2\u0012\u0010\r\u001a\u000e\u0012\u0004\u0012\u0002H\n\u0012\u0004\u0012\u00020\u00030\u000eH\u0082\b¢\u0006\u0002\u00100\u001a\u0016\u00101\u001a\u00020\u0003*\u00020\u001f2\b\b\u0002\u00102\u001a\u00020\u0003H\u0000\u001a!\u00103\u001a\u00020\u0003*\u00020\u001f2\u0006\u00104\u001a\u00020+H\u0002ø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\b5\u00106\u001a,\u00107\u001a\u000208*\u00020\u00142\u0006\u00109\u001a\u00020\u00032\u0006\u0010:\u001a\u00020\u001f2\u0006\u0010;\u001a\u00020\u001f2\u0006\u0010<\u001a\u00020\u0001H\u0003\u001a\u007f\u0010=\u001a\u000208*\u00020\f2\u0006\u0010>\u001a\u00020?2\f\u0010@\u001a\b\u0012\u0004\u0012\u00020\u00030\u00122\u0006\u0010A\u001a\u00020B2\u0006\u0010C\u001a\u00020D2\u0006\u0010E\u001a\u00020F2\u0006\u0010G\u001a\u00020\u00012\u0006\u0010H\u001a\u00020\u00012\u0006\u0010I\u001a\u00020J2\u0006\u0010K\u001a\u00020\u00032\u0006\u0010L\u001a\u00020\u00032\u0006\u0010M\u001a\u00020\u00032\u0006\u0010N\u001a\u00020\u0003H\u0001ø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\bO\u0010P\u001a\u0014\u0010Q\u001a\u00020\u0005*\u00020\u001f2\u0006\u0010R\u001a\u00020\u0003H\u0002\u001a!\u0010S\u001a\u00020\u001f*\u00020\u001f2\u0012\u0010\r\u001a\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00030\u000eH\u0082\b\"\u000e\u0010\u0000\u001a\u00020\u0001X\u0082T¢\u0006\u0002\n\u0000\"\u000e\u0010\u0002\u001a\u00020\u0003X\u0082T¢\u0006\u0002\n\u0000\u0082\u0002\u000b\n\u0005\b¡\u001e0\u0001\n\u0002\b\u0019¨\u0006T"}, d2 = {"DebugLoggingEnabled", "", "Unset", "", "debugLog", "", "message", "Lkotlin/Function0;", "", "withDebugLogging", ExifInterface.GPS_DIRECTION_TRUE, "scope", "Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScope;", "block", "Lkotlin/Function1;", "Lkotlin/ExtensionFunctionType;", "(Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScope;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;", "calculateExtraItems", "", "Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasuredItem;", "Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureContext;", "position", "filter", "Lkotlin/ParameterName;", "name", "itemIndex", "calculateVisibleItems", "measuredItems", "", "Lkotlin/collections/ArrayDeque;", "itemScrollOffsets", "", "mainAxisLayoutSize", "(Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureContext;[Lkotlin/collections/ArrayDeque;[II)Ljava/util/List;", "debugRender", "([Lkotlin/collections/ArrayDeque;)Ljava/lang/String;", "ensureIndicesInRange", "indices", "itemCount", "findPreviousItemIndex", "item", "lane", "forEach", "Landroidx/compose/foundation/lazy/staggeredgrid/SpanRange;", "forEach-nIS5qE8", "(JLkotlin/jvm/functions/Function1;)V", "indexOfMaxValue", "indexOfMinBy", "([Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)I", "indexOfMinValue", "minBound", "maxInRange", "indexRange", "maxInRange-jy6DScQ", "([IJ)I", "measure", "Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureResult;", "initialScrollDelta", "initialItemIndices", "initialItemOffsets", "canRestartMeasure", "measureStaggeredGrid", SentryThread.JsonKeys.STATE, "Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;", "pinnedItems", "itemProvider", "Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridItemProvider;", "resolvedSlots", "Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridSlots;", "constraints", "Landroidx/compose/ui/unit/Constraints;", "isVertical", "reverseLayout", "contentOffset", "Landroidx/compose/ui/unit/IntOffset;", "mainAxisAvailableSize", "mainAxisSpacing", "beforeContentPadding", "afterContentPadding", "measureStaggeredGrid-dSVRQoE", "(Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScope;Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;Ljava/util/List;Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridItemProvider;Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridSlots;JZZJIIII)Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureResult;", "offsetBy", "delta", "transform", "foundation_release"}, k = 2, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class LazyStaggeredGridMeasureKt {
    private static final boolean DebugLoggingEnabled = false;
    private static final int Unset = Integer.MIN_VALUE;

    private static final void debugLog(Function0<String> function0) {
    }

    private static final String debugRender(ArrayDeque<LazyStaggeredGridMeasuredItem>[] arrayDequeArr) {
        return "";
    }

    private static final <T> T withDebugLogging(LazyLayoutMeasureScope lazyLayoutMeasureScope, Function1<? super LazyLayoutMeasureScope, ? extends T> function1) {
        return function1.invoke(lazyLayoutMeasureScope);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: measureStaggeredGrid-dSVRQoE, reason: not valid java name */
    public static final LazyStaggeredGridMeasureResult m674measureStaggeredGriddSVRQoE(LazyLayoutMeasureScope measureStaggeredGrid, LazyStaggeredGridState state, List<Integer> pinnedItems, LazyStaggeredGridItemProvider itemProvider, LazyStaggeredGridSlots resolvedSlots, long j, boolean z, boolean z2, long j2, int i, int i2, int i3, int i4) {
        T t;
        int m673maxInRangejy6DScQ;
        T t2;
        int i5;
        Intrinsics.checkNotNullParameter(measureStaggeredGrid, "$this$measureStaggeredGrid");
        Intrinsics.checkNotNullParameter(state, "state");
        Intrinsics.checkNotNullParameter(pinnedItems, "pinnedItems");
        Intrinsics.checkNotNullParameter(itemProvider, "itemProvider");
        Intrinsics.checkNotNullParameter(resolvedSlots, "resolvedSlots");
        LazyStaggeredGridMeasureContext lazyStaggeredGridMeasureContext = new LazyStaggeredGridMeasureContext(state, pinnedItems, itemProvider, resolvedSlots, j, z, measureStaggeredGrid, i, j2, i3, i4, z2, i2, null);
        Ref.ObjectRef objectRef = new Ref.ObjectRef();
        Ref.ObjectRef objectRef2 = new Ref.ObjectRef();
        Snapshot createNonObservableSnapshot = Snapshot.INSTANCE.createNonObservableSnapshot();
        try {
            Snapshot makeCurrent = createNonObservableSnapshot.makeCurrent();
            try {
                int[] updateScrollPositionIfTheFirstItemWasMoved$foundation_release = state.updateScrollPositionIfTheFirstItemWasMoved$foundation_release(itemProvider, state.getScrollPosition().getIndices());
                int[] offsets = state.getScrollPosition().getOffsets();
                if (updateScrollPositionIfTheFirstItemWasMoved$foundation_release.length == lazyStaggeredGridMeasureContext.getLaneCount()) {
                    t = updateScrollPositionIfTheFirstItemWasMoved$foundation_release;
                } else {
                    lazyStaggeredGridMeasureContext.getLaneInfo().reset();
                    int laneCount = lazyStaggeredGridMeasureContext.getLaneCount();
                    int[] iArr = new int[laneCount];
                    int i6 = 0;
                    while (i6 < laneCount) {
                        if (i6 >= updateScrollPositionIfTheFirstItemWasMoved$foundation_release.length || (m673maxInRangejy6DScQ = updateScrollPositionIfTheFirstItemWasMoved$foundation_release[i6]) == -1) {
                            m673maxInRangejy6DScQ = i6 == 0 ? 0 : m673maxInRangejy6DScQ(iArr, SpanRange.m683constructorimpl(0, i6)) + 1;
                        }
                        iArr[i6] = m673maxInRangejy6DScQ;
                        lazyStaggeredGridMeasureContext.getLaneInfo().setLane(iArr[i6], i6);
                        i6++;
                    }
                    t = iArr;
                }
                objectRef.element = t;
                if (offsets.length == lazyStaggeredGridMeasureContext.getLaneCount()) {
                    t2 = offsets;
                } else {
                    int laneCount2 = lazyStaggeredGridMeasureContext.getLaneCount();
                    int[] iArr2 = new int[laneCount2];
                    int i7 = 0;
                    while (i7 < laneCount2) {
                        if (i7 < offsets.length) {
                            i5 = offsets[i7];
                        } else {
                            i5 = i7 == 0 ? 0 : iArr2[i7 - 1];
                        }
                        iArr2[i7] = i5;
                        i7++;
                    }
                    t2 = iArr2;
                }
                objectRef2.element = t2;
                Unit unit = Unit.INSTANCE;
                createNonObservableSnapshot.dispose();
                return measure(lazyStaggeredGridMeasureContext, MathKt.roundToInt(state.getScrollToBeConsumed()), (int[]) objectRef.element, (int[]) objectRef2.element, true);
            } finally {
                createNonObservableSnapshot.restoreCurrent(makeCurrent);
            }
        } catch (Throwable th) {
            createNonObservableSnapshot.dispose();
            throw th;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:105:0x020a, code lost:
    
        r2 = 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:106:0x0220, code lost:
    
        r5 = indexOfMinValue$default(r12, 0, 1, null);
        r1 = kotlin.collections.ArraysKt.maxOrThrow(r10) + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:107:0x0229, code lost:
    
        if (r1 < r15) goto L299;
     */
    /* JADX WARN: Code restructure failed: missing block: B:108:0x06b4, code lost:
    
        r14 = r0;
        r4 = r10;
        r0 = r15;
        r7 = r25;
        r13 = r26;
        r25 = r3;
        r3 = r11;
        r10 = r14.m670getSpanRangelOCCd4c(r38.getItemProvider(), r1, r5);
        r2 = r38.getLaneInfo();
        r15 = r6;
        r5 = (int) (r10 & io.flutter.embedding.android.KeyboardMap.kValueMask);
        r7 = (int) (r10 >> 32);
        r8 = r5 - r7;
     */
    /* JADX WARN: Code restructure failed: missing block: B:109:0x06df, code lost:
    
        if (r8 == 1) goto L302;
     */
    /* JADX WARN: Code restructure failed: missing block: B:110:0x06e1, code lost:
    
        r6 = -2;
     */
    /* JADX WARN: Code restructure failed: missing block: B:111:0x06e4, code lost:
    
        r2.setLane(r1, r6);
        r2 = r38.getMeasuredItemProvider().m678getAndMeasurejy6DScQ(r1, r10);
        r6 = m673maxInRangejy6DScQ(r12, r10);
     */
    /* JADX WARN: Code restructure failed: missing block: B:112:0x06f4, code lost:
    
        if (r8 == 1) goto L308;
     */
    /* JADX WARN: Code restructure failed: missing block: B:113:0x06f6, code lost:
    
        r8 = r38.getLaneInfo().getGaps(r1);
     */
    /* JADX WARN: Code restructure failed: missing block: B:114:0x06fe, code lost:
    
        if (r8 != null) goto L309;
     */
    /* JADX WARN: Code restructure failed: missing block: B:115:0x0700, code lost:
    
        r8 = new int[r38.getLaneCount()];
     */
    /* JADX WARN: Code restructure failed: missing block: B:116:0x0708, code lost:
    
        r11 = r7;
     */
    /* JADX WARN: Code restructure failed: missing block: B:117:0x0709, code lost:
    
        if (r11 >= r5) goto L345;
     */
    /* JADX WARN: Code restructure failed: missing block: B:118:0x070b, code lost:
    
        if (r8 == null) goto L347;
     */
    /* JADX WARN: Code restructure failed: missing block: B:119:0x070d, code lost:
    
        r8[r11] = r6 - r12[r11];
     */
    /* JADX WARN: Code restructure failed: missing block: B:121:0x0713, code lost:
    
        r4[r11] = r1;
        r12[r11] = r6 + r2.getSizeWithSpacings();
        r9[r11].addLast(r2);
        r11 = r11 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:124:0x0726, code lost:
    
        r38.getLaneInfo().setGaps(r1, r8);
     */
    /* JADX WARN: Code restructure failed: missing block: B:125:0x0735, code lost:
    
        if (r12[r7] > (r29 + r38.getMainAxisSpacing())) goto L341;
     */
    /* JADX WARN: Code restructure failed: missing block: B:126:0x0737, code lost:
    
        r2.setVisible(false);
     */
    /* JADX WARN: Code restructure failed: missing block: B:130:0x0707, code lost:
    
        r8 = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:131:0x06e3, code lost:
    
        r6 = r7;
     */
    /* JADX WARN: Code restructure failed: missing block: B:222:0x051e, code lost:
    
        if (r8[r13] > r10) goto L243;
     */
    /* JADX WARN: Code restructure failed: missing block: B:284:0x066d, code lost:
    
        r11 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:309:0x02d6, code lost:
    
        r5 = indexOfMinValue$default(r4, 0, 1, null);
     */
    /* JADX WARN: Code restructure failed: missing block: B:310:0x02e1, code lost:
    
        if (r5 == indexOfMaxValue(r27)) goto L142;
     */
    /* JADX WARN: Code restructure failed: missing block: B:311:0x02e3, code lost:
    
        r1 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:312:0x02e4, code lost:
    
        r7 = r27[r5];
     */
    /* JADX WARN: Code restructure failed: missing block: B:313:0x02e7, code lost:
    
        if (r7 != (-1)) goto L145;
     */
    /* JADX WARN: Code restructure failed: missing block: B:314:0x02e9, code lost:
    
        r7 = r15;
     */
    /* JADX WARN: Code restructure failed: missing block: B:315:0x02ea, code lost:
    
        r7 = findPreviousItemIndex(r0, r7, r5);
     */
    /* JADX WARN: Code restructure failed: missing block: B:316:0x02ee, code lost:
    
        if (r7 >= 0) goto L161;
     */
    /* JADX WARN: Code restructure failed: missing block: B:317:0x032e, code lost:
    
        r13 = r26;
        r8 = r27;
        r39 = r10;
        r24 = r11;
        r10 = r0.m670getSpanRangelOCCd4c(r38.getItemProvider(), r7, r5);
        r5 = r38.getLaneInfo();
        r26 = r15;
        r14 = (int) (r10 & io.flutter.embedding.android.KeyboardMap.kValueMask);
        r27 = r1;
        r41 = r2;
        r1 = (int) (r10 >> 32);
        r2 = r14 - r1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:318:0x0358, code lost:
    
        if (r2 == 1) goto L164;
     */
    /* JADX WARN: Code restructure failed: missing block: B:319:0x035a, code lost:
    
        r15 = -2;
     */
    /* JADX WARN: Code restructure failed: missing block: B:320:0x035d, code lost:
    
        r5.setLane(r7, r15);
        r5 = r38.getMeasuredItemProvider().m678getAndMeasurejy6DScQ(r7, r10);
        r10 = m673maxInRangejy6DScQ(r4, r10);
     */
    /* JADX WARN: Code restructure failed: missing block: B:321:0x036d, code lost:
    
        if (r2 == 1) goto L168;
     */
    /* JADX WARN: Code restructure failed: missing block: B:322:0x036f, code lost:
    
        r2 = r38.getLaneInfo().getGaps(r7);
     */
    /* JADX WARN: Code restructure failed: missing block: B:324:0x0379, code lost:
    
        if (r1 >= r14) goto L382;
     */
    /* JADX WARN: Code restructure failed: missing block: B:326:0x037d, code lost:
    
        if (r4[r1] == r10) goto L173;
     */
    /* JADX WARN: Code restructure failed: missing block: B:327:0x037f, code lost:
    
        r27 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:328:0x0381, code lost:
    
        r9[r1].addFirst(r5);
        r8[r1] = r7;
     */
    /* JADX WARN: Code restructure failed: missing block: B:329:0x0388, code lost:
    
        if (r2 != null) goto L176;
     */
    /* JADX WARN: Code restructure failed: missing block: B:330:0x038a, code lost:
    
        r11 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:332:0x038e, code lost:
    
        r4[r1] = (r5.getSizeWithSpacings() + r10) + r11;
        r1 = r1 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:333:0x038c, code lost:
    
        r11 = r2[r1];
     */
    /* JADX WARN: Code restructure failed: missing block: B:337:0x0378, code lost:
    
        r2 = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:338:0x035c, code lost:
    
        r15 = r1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:340:0x02f0, code lost:
    
        r8 = r27;
     */
    /* JADX WARN: Code restructure failed: missing block: B:341:0x02f2, code lost:
    
        if (r1 != false) goto L151;
     */
    /* JADX WARN: Code restructure failed: missing block: B:343:0x02f8, code lost:
    
        if (measure$lambda$38$misalignedStart(r8, r0, r4, r5) == false) goto L160;
     */
    /* JADX WARN: Code restructure failed: missing block: B:344:0x0324, code lost:
    
        r13 = r26;
        r41 = r2;
        r39 = r10;
        r24 = r11;
     */
    /* JADX WARN: Code restructure failed: missing block: B:354:0x02fa, code lost:
    
        if (r42 == false) goto L160;
     */
    /* JADX WARN: Code restructure failed: missing block: B:355:0x02fc, code lost:
    
        r38.getLaneInfo().reset();
        r1 = r8.length;
        r2 = new int[r1];
        r3 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:356:0x0307, code lost:
    
        if (r3 >= r1) goto L386;
     */
    /* JADX WARN: Code restructure failed: missing block: B:357:0x0309, code lost:
    
        r2[r3] = -1;
        r3 = r3 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:359:0x030f, code lost:
    
        r1 = r4.length;
        r3 = new int[r1];
        r6 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:360:0x0313, code lost:
    
        if (r6 >= r1) goto L387;
     */
    /* JADX WARN: Code restructure failed: missing block: B:361:0x0315, code lost:
    
        r3[r6] = r4[r5];
        r6 = r6 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:364:0x0323, code lost:
    
        return measure(r0, r26, r2, r3, false);
     */
    /* JADX WARN: Removed duplicated region for block: B:259:0x05de  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static final androidx.compose.foundation.lazy.staggeredgrid.LazyStaggeredGridMeasureResult measure(final androidx.compose.foundation.lazy.staggeredgrid.LazyStaggeredGridMeasureContext r38, int r39, int[] r40, int[] r41, boolean r42) {
        /*
            Method dump skipped, instructions count: 1977
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.foundation.lazy.staggeredgrid.LazyStaggeredGridMeasureKt.measure(androidx.compose.foundation.lazy.staggeredgrid.LazyStaggeredGridMeasureContext, int, int[], int[], boolean):androidx.compose.foundation.lazy.staggeredgrid.LazyStaggeredGridMeasureResult");
    }

    private static final boolean measure$lambda$38$hasSpaceBeforeFirst(int[] iArr, int[] iArr2, LazyStaggeredGridMeasureContext lazyStaggeredGridMeasureContext) {
        int length = iArr.length;
        for (int i = 0; i < length; i++) {
            int i2 = iArr[i];
            if (iArr2[i] < Math.max(-lazyStaggeredGridMeasureContext.getMainAxisSpacing(), 0) && i2 > 0) {
                return true;
            }
        }
        return false;
    }

    private static final boolean measure$lambda$38$misalignedStart(int[] iArr, LazyStaggeredGridMeasureContext lazyStaggeredGridMeasureContext, int[] iArr2, int i) {
        int length = iArr.length;
        for (int i2 = 0; i2 < length; i2++) {
            if (findPreviousItemIndex(lazyStaggeredGridMeasureContext, iArr[i2], i2) == -1 && iArr2[i2] != iArr2[i]) {
                return true;
            }
        }
        int length2 = iArr.length;
        for (int i3 = 0; i3 < length2; i3++) {
            if (findPreviousItemIndex(lazyStaggeredGridMeasureContext, iArr[i3], i3) != -1 && iArr2[i3] >= iArr2[i]) {
                return true;
            }
        }
        int lane = lazyStaggeredGridMeasureContext.getLaneInfo().getLane(0);
        return (lane == 0 || lane == -1 || lane == -2) ? false : true;
    }

    private static final List<LazyStaggeredGridMeasuredItem> calculateVisibleItems(LazyStaggeredGridMeasureContext lazyStaggeredGridMeasureContext, ArrayDeque<LazyStaggeredGridMeasuredItem>[] arrayDequeArr, int[] iArr, int i) {
        int i2 = 0;
        for (ArrayDeque<LazyStaggeredGridMeasuredItem> arrayDeque : arrayDequeArr) {
            i2 += arrayDeque.size();
        }
        ArrayList arrayList = new ArrayList(i2);
        while (true) {
            for (ArrayDeque<LazyStaggeredGridMeasuredItem> arrayDeque2 : arrayDequeArr) {
                if (!arrayDeque2.isEmpty()) {
                    int length = arrayDequeArr.length;
                    int i3 = -1;
                    int i4 = Integer.MAX_VALUE;
                    for (int i5 = 0; i5 < length; i5++) {
                        LazyStaggeredGridMeasuredItem firstOrNull = arrayDequeArr[i5].firstOrNull();
                        int index = firstOrNull != null ? firstOrNull.getIndex() : Integer.MAX_VALUE;
                        if (i4 > index) {
                            i3 = i5;
                            i4 = index;
                        }
                    }
                    LazyStaggeredGridMeasuredItem removeFirst = arrayDequeArr[i3].removeFirst();
                    if (removeFirst.getLane() == i3) {
                        long m683constructorimpl = SpanRange.m683constructorimpl(removeFirst.getLane(), removeFirst.getSpan());
                        int m673maxInRangejy6DScQ = m673maxInRangejy6DScQ(iArr, m683constructorimpl);
                        int i6 = lazyStaggeredGridMeasureContext.getResolvedSlots().getPositions()[i3];
                        if (removeFirst.getPlaceablesCount() != 0) {
                            removeFirst.position(m673maxInRangejy6DScQ, i6, i);
                            arrayList.add(removeFirst);
                            int i7 = (int) (m683constructorimpl & KeyboardMap.kValueMask);
                            for (int i8 = (int) (m683constructorimpl >> 32); i8 < i7; i8++) {
                                iArr[i8] = removeFirst.getSizeWithSpacings() + m673maxInRangejy6DScQ;
                            }
                        }
                    }
                }
            }
            return arrayList;
        }
    }

    private static final List<LazyStaggeredGridMeasuredItem> calculateExtraItems(LazyStaggeredGridMeasureContext lazyStaggeredGridMeasureContext, Function1<? super LazyStaggeredGridMeasuredItem, Unit> function1, Function1<? super Integer, Boolean> function12) {
        List<Integer> pinnedItems = lazyStaggeredGridMeasureContext.getPinnedItems();
        int size = pinnedItems.size();
        ArrayList arrayList = null;
        for (int i = 0; i < size; i++) {
            int intValue = pinnedItems.get(i).intValue();
            if (function12.invoke(Integer.valueOf(intValue)).booleanValue()) {
                long m670getSpanRangelOCCd4c = lazyStaggeredGridMeasureContext.m670getSpanRangelOCCd4c(lazyStaggeredGridMeasureContext.getItemProvider(), intValue, 0);
                if (arrayList == null) {
                    arrayList = new ArrayList();
                }
                LazyStaggeredGridMeasuredItem m678getAndMeasurejy6DScQ = lazyStaggeredGridMeasureContext.getMeasuredItemProvider().m678getAndMeasurejy6DScQ(intValue, m670getSpanRangelOCCd4c);
                function1.invoke(m678getAndMeasurejy6DScQ);
                arrayList.add(m678getAndMeasurejy6DScQ);
            }
        }
        return arrayList == null ? CollectionsKt.emptyList() : arrayList;
    }

    /* renamed from: forEach-nIS5qE8, reason: not valid java name */
    private static final void m672forEachnIS5qE8(long j, Function1<? super Integer, Unit> function1) {
        int i = (int) (j & KeyboardMap.kValueMask);
        for (int i2 = (int) (j >> 32); i2 < i; i2++) {
            function1.invoke(Integer.valueOf(i2));
        }
    }

    private static final void offsetBy(int[] iArr, int i) {
        int length = iArr.length;
        for (int i2 = 0; i2 < length; i2++) {
            iArr[i2] = iArr[i2] + i;
        }
    }

    /* renamed from: maxInRange-jy6DScQ, reason: not valid java name */
    private static final int m673maxInRangejy6DScQ(int[] iArr, long j) {
        int i = (int) (j & KeyboardMap.kValueMask);
        int i2 = Integer.MIN_VALUE;
        for (int i3 = (int) (j >> 32); i3 < i; i3++) {
            i2 = Math.max(i2, iArr[i3]);
        }
        return i2;
    }

    public static /* synthetic */ int indexOfMinValue$default(int[] iArr, int i, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            i = Integer.MIN_VALUE;
        }
        return indexOfMinValue(iArr, i);
    }

    public static final int indexOfMinValue(int[] iArr, int i) {
        Intrinsics.checkNotNullParameter(iArr, "<this>");
        int length = iArr.length;
        int i2 = -1;
        int i3 = Integer.MAX_VALUE;
        for (int i4 = 0; i4 < length; i4++) {
            int i5 = i + 1;
            int i6 = iArr[i4];
            if (i5 <= i6 && i6 < i3) {
                i2 = i4;
                i3 = i6;
            }
        }
        return i2;
    }

    private static final <T> int indexOfMinBy(T[] tArr, Function1<? super T, Integer> function1) {
        int length = tArr.length;
        int i = -1;
        int i2 = Integer.MAX_VALUE;
        for (int i3 = 0; i3 < length; i3++) {
            int intValue = function1.invoke(tArr[i3]).intValue();
            if (i2 > intValue) {
                i = i3;
                i2 = intValue;
            }
        }
        return i;
    }

    private static final int indexOfMaxValue(int[] iArr) {
        int length = iArr.length;
        int i = -1;
        int i2 = Integer.MIN_VALUE;
        for (int i3 = 0; i3 < length; i3++) {
            int i4 = iArr[i3];
            if (i2 < i4) {
                i = i3;
                i2 = i4;
            }
        }
        return i;
    }

    private static final int[] transform(int[] iArr, Function1<? super Integer, Integer> function1) {
        int length = iArr.length;
        for (int i = 0; i < length; i++) {
            iArr[i] = function1.invoke(Integer.valueOf(iArr[i])).intValue();
        }
        return iArr;
    }

    private static final void ensureIndicesInRange(LazyStaggeredGridMeasureContext lazyStaggeredGridMeasureContext, int[] iArr, int i) {
        int length = iArr.length - 1;
        if (length < 0) {
            return;
        }
        while (true) {
            int i2 = length - 1;
            while (true) {
                if (iArr[length] < i && lazyStaggeredGridMeasureContext.getLaneInfo().assignedToLane(iArr[length], length)) {
                    break;
                } else {
                    iArr[length] = findPreviousItemIndex(lazyStaggeredGridMeasureContext, iArr[length], length);
                }
            }
            if (iArr[length] >= 0 && !lazyStaggeredGridMeasureContext.isFullSpan(lazyStaggeredGridMeasureContext.getItemProvider(), iArr[length])) {
                lazyStaggeredGridMeasureContext.getLaneInfo().setLane(iArr[length], length);
            }
            if (i2 < 0) {
                return;
            } else {
                length = i2;
            }
        }
    }

    private static final int findPreviousItemIndex(LazyStaggeredGridMeasureContext lazyStaggeredGridMeasureContext, int i, int i2) {
        return lazyStaggeredGridMeasureContext.getLaneInfo().findPreviousItemIndex(i, i2);
    }
}
