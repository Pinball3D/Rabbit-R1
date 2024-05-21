package androidx.compose.foundation.lazy.layout;

import androidx.compose.foundation.lazy.layout.IntervalList;
import androidx.compose.foundation.lazy.layout.LazyLayoutIntervalContent;
import java.util.HashMap;
import java.util.Map;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.ArraysKt;
import kotlin.collections.MapsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.IntRange;

/* compiled from: LazyLayoutKeyIndexMap.kt */
@Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0011\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010$\n\u0002\b\u0005\b\u0001\u0018\u00002\u00020\u0001B\u0019\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\n\u0010\u0004\u001a\u0006\u0012\u0002\b\u00030\u0005¢\u0006\u0002\u0010\u0006J\u0010\u0010\u000f\u001a\u00020\f2\u0006\u0010\u0010\u001a\u00020\tH\u0016J\u0012\u0010\u0011\u001a\u0004\u0018\u00010\t2\u0006\u0010\u0012\u001a\u00020\fH\u0016R\u0018\u0010\u0007\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\t0\bX\u0082\u0004¢\u0006\u0004\n\u0002\u0010\nR\u000e\u0010\u000b\u001a\u00020\fX\u0082\u0004¢\u0006\u0002\n\u0000R\u001a\u0010\r\u001a\u000e\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\f0\u000eX\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0013"}, d2 = {"Landroidx/compose/foundation/lazy/layout/NearestRangeKeyIndexMap;", "Landroidx/compose/foundation/lazy/layout/LazyLayoutKeyIndexMap;", "nearestRange", "Lkotlin/ranges/IntRange;", "intervalContent", "Landroidx/compose/foundation/lazy/layout/LazyLayoutIntervalContent;", "(Lkotlin/ranges/IntRange;Landroidx/compose/foundation/lazy/layout/LazyLayoutIntervalContent;)V", "keys", "", "", "[Ljava/lang/Object;", "keysStartIndex", "", "map", "", "getIndex", "key", "getKey", "index", "foundation_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class NearestRangeKeyIndexMap implements LazyLayoutKeyIndexMap {
    private final Object[] keys;
    private final int keysStartIndex;
    private final Map<Object, Integer> map;

    public NearestRangeKeyIndexMap(IntRange nearestRange, LazyLayoutIntervalContent<?> intervalContent) {
        Intrinsics.checkNotNullParameter(nearestRange, "nearestRange");
        Intrinsics.checkNotNullParameter(intervalContent, "intervalContent");
        IntervalList<?> intervals = intervalContent.getIntervals();
        final int first = nearestRange.getFirst();
        if (first < 0) {
            throw new IllegalStateException("Check failed.".toString());
        }
        final int min = Math.min(nearestRange.getLast(), intervals.getSize() - 1);
        if (min < first) {
            this.map = MapsKt.emptyMap();
            this.keys = new Object[0];
            this.keysStartIndex = 0;
        } else {
            this.keys = new Object[(min - first) + 1];
            this.keysStartIndex = first;
            final HashMap hashMap = new HashMap();
            intervals.forEach(first, min, new Function1<IntervalList.Interval<? extends LazyLayoutIntervalContent.Interval>, Unit>() { // from class: androidx.compose.foundation.lazy.layout.NearestRangeKeyIndexMap$1$1
                /* JADX INFO: Access modifiers changed from: package-private */
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(1);
                }

                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ Unit invoke(IntervalList.Interval<? extends LazyLayoutIntervalContent.Interval> interval) {
                    invoke2(interval);
                    return Unit.INSTANCE;
                }

                /* JADX WARN: Code restructure failed: missing block: B:5:0x003c, code lost:
                
                    if (r3 == null) goto L7;
                 */
                /* renamed from: invoke, reason: avoid collision after fix types in other method */
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                    To view partially-correct add '--show-bad-code' argument
                */
                public final void invoke2(androidx.compose.foundation.lazy.layout.IntervalList.Interval<? extends androidx.compose.foundation.lazy.layout.LazyLayoutIntervalContent.Interval> r7) {
                    /*
                        r6 = this;
                        java.lang.String r0 = "it"
                        kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r7, r0)
                        java.lang.Object r0 = r7.getValue()
                        androidx.compose.foundation.lazy.layout.LazyLayoutIntervalContent$Interval r0 = (androidx.compose.foundation.lazy.layout.LazyLayoutIntervalContent.Interval) r0
                        kotlin.jvm.functions.Function1 r0 = r0.getKey()
                        int r1 = r1
                        int r2 = r7.getStartIndex()
                        int r1 = java.lang.Math.max(r1, r2)
                        int r2 = r2
                        int r3 = r7.getStartIndex()
                        int r4 = r7.getSize()
                        int r3 = r3 + r4
                        int r3 = r3 + (-1)
                        int r2 = java.lang.Math.min(r2, r3)
                        if (r1 > r2) goto L62
                    L2c:
                        if (r0 == 0) goto L3e
                        int r3 = r7.getStartIndex()
                        int r3 = r1 - r3
                        java.lang.Integer r3 = java.lang.Integer.valueOf(r3)
                        java.lang.Object r3 = r0.invoke(r3)
                        if (r3 != 0) goto L42
                    L3e:
                        java.lang.Object r3 = androidx.compose.foundation.lazy.layout.Lazy_androidKt.getDefaultLazyLayoutKey(r1)
                    L42:
                        java.lang.Integer r4 = java.lang.Integer.valueOf(r1)
                        java.util.HashMap<java.lang.Object, java.lang.Integer> r5 = r3
                        java.util.Map r5 = (java.util.Map) r5
                        r5.put(r3, r4)
                        androidx.compose.foundation.lazy.layout.NearestRangeKeyIndexMap r4 = r4
                        java.lang.Object[] r4 = androidx.compose.foundation.lazy.layout.NearestRangeKeyIndexMap.access$getKeys$p(r4)
                        androidx.compose.foundation.lazy.layout.NearestRangeKeyIndexMap r5 = r4
                        int r5 = androidx.compose.foundation.lazy.layout.NearestRangeKeyIndexMap.access$getKeysStartIndex$p(r5)
                        int r5 = r1 - r5
                        r4[r5] = r3
                        if (r1 == r2) goto L62
                        int r1 = r1 + 1
                        goto L2c
                    L62:
                        return
                    */
                    throw new UnsupportedOperationException("Method not decompiled: androidx.compose.foundation.lazy.layout.NearestRangeKeyIndexMap$1$1.invoke2(androidx.compose.foundation.lazy.layout.IntervalList$Interval):void");
                }
            });
            this.map = hashMap;
        }
    }

    @Override // androidx.compose.foundation.lazy.layout.LazyLayoutKeyIndexMap
    public int getIndex(Object key) {
        Intrinsics.checkNotNullParameter(key, "key");
        Integer num = this.map.get(key);
        if (num == null) {
            num = -1;
        }
        return num.intValue();
    }

    @Override // androidx.compose.foundation.lazy.layout.LazyLayoutKeyIndexMap
    public Object getKey(int index) {
        Object[] objArr = this.keys;
        int i = index - this.keysStartIndex;
        if (i < 0 || i > ArraysKt.getLastIndex(objArr)) {
            return null;
        }
        return objArr[i];
    }
}
