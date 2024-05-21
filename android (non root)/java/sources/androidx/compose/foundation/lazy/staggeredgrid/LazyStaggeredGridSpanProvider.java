package androidx.compose.foundation.lazy.staggeredgrid;

import androidx.compose.foundation.lazy.layout.IntervalList;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: LazyStaggeredGridSpan.kt */
@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\b\n\u0000\b\u0000\u0018\u00002\u00020\u0001B\u0013\u0012\f\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003¢\u0006\u0002\u0010\u0005J\u000e\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000bR\u0017\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007¨\u0006\f"}, d2 = {"Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridSpanProvider;", "", "intervals", "Landroidx/compose/foundation/lazy/layout/IntervalList;", "Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridInterval;", "(Landroidx/compose/foundation/lazy/layout/IntervalList;)V", "getIntervals", "()Landroidx/compose/foundation/lazy/layout/IntervalList;", "isFullSpan", "", "itemIndex", "", "foundation_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class LazyStaggeredGridSpanProvider {
    private final IntervalList<LazyStaggeredGridInterval> intervals;

    public final IntervalList<LazyStaggeredGridInterval> getIntervals() {
        return this.intervals;
    }

    public LazyStaggeredGridSpanProvider(IntervalList<LazyStaggeredGridInterval> intervals) {
        Intrinsics.checkNotNullParameter(intervals, "intervals");
        this.intervals = intervals;
    }

    public final boolean isFullSpan(int itemIndex) {
        if (itemIndex < 0 || itemIndex >= this.intervals.getSize()) {
            return false;
        }
        IntervalList.Interval<LazyStaggeredGridInterval> interval = this.intervals.get(itemIndex);
        Function1<Integer, StaggeredGridItemSpan> span = interval.getValue().getSpan();
        return span != null && span.invoke(Integer.valueOf(itemIndex - interval.getStartIndex())) == StaggeredGridItemSpan.INSTANCE.getFullLine();
    }
}
