package androidx.compose.foundation.lazy.staggeredgrid;

import androidx.compose.foundation.gestures.ScrollScope;
import androidx.compose.foundation.gestures.ScrollableState;
import androidx.compose.foundation.lazy.layout.LazyAnimateScrollScope;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.IntOffset;
import androidx.compose.ui.unit.IntSize;
import io.sentry.protocol.SentryThread;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: LazyStaggeredGridAnimateScrollScope.kt */
@Metadata(d1 = {"\u0000H\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u000b\n\u0002\u0010\u0007\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0001\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\u0018\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\n2\u0006\u0010\u0018\u001a\u00020\nH\u0016J\u0017\u0010\u0019\u001a\u0004\u0018\u00010\n2\u0006\u0010\u0017\u001a\u00020\nH\u0016¢\u0006\u0002\u0010\u001aJ:\u0010\u001b\u001a\u00020\u001c2'\u0010\u001d\u001a#\b\u0001\u0012\u0004\u0012\u00020\u001f\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u001c0 \u0012\u0006\u0012\u0004\u0018\u00010!0\u001e¢\u0006\u0002\b\"H\u0096@ø\u0001\u0000¢\u0006\u0002\u0010#J\u001c\u0010$\u001a\u00020\u001c*\u00020\u001f2\u0006\u0010\u0017\u001a\u00020\n2\u0006\u0010%\u001a\u00020\nH\u0016R\u0014\u0010\u0005\u001a\u00020\u00068VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u0007\u0010\bR\u0014\u0010\t\u001a\u00020\n8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u000b\u0010\fR\u0014\u0010\r\u001a\u00020\n8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u000e\u0010\fR\u0014\u0010\u000f\u001a\u00020\n8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u0010\u0010\fR\u0014\u0010\u0011\u001a\u00020\n8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u0012\u0010\fR\u0014\u0010\u0013\u001a\u00020\n8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u0014\u0010\fR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006&"}, d2 = {"Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridAnimateScrollScope;", "Landroidx/compose/foundation/lazy/layout/LazyAnimateScrollScope;", SentryThread.JsonKeys.STATE, "Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;", "(Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;)V", "density", "Landroidx/compose/ui/unit/Density;", "getDensity", "()Landroidx/compose/ui/unit/Density;", "firstVisibleItemIndex", "", "getFirstVisibleItemIndex", "()I", "firstVisibleItemScrollOffset", "getFirstVisibleItemScrollOffset", "itemCount", "getItemCount", "lastVisibleItemIndex", "getLastVisibleItemIndex", "numOfItemsForTeleport", "getNumOfItemsForTeleport", "expectedDistanceTo", "", "index", "targetScrollOffset", "getTargetItemOffset", "(I)Ljava/lang/Integer;", "scroll", "", "block", "Lkotlin/Function2;", "Landroidx/compose/foundation/gestures/ScrollScope;", "Lkotlin/coroutines/Continuation;", "", "Lkotlin/ExtensionFunctionType;", "(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "snapToItem", "scrollOffset", "foundation_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class LazyStaggeredGridAnimateScrollScope implements LazyAnimateScrollScope {
    private final LazyStaggeredGridState state;

    public LazyStaggeredGridAnimateScrollScope(LazyStaggeredGridState state) {
        Intrinsics.checkNotNullParameter(state, "state");
        this.state = state;
    }

    @Override // androidx.compose.foundation.lazy.layout.LazyAnimateScrollScope
    public Density getDensity() {
        return this.state.getDensity();
    }

    @Override // androidx.compose.foundation.lazy.layout.LazyAnimateScrollScope
    public int getFirstVisibleItemIndex() {
        return this.state.getFirstVisibleItemIndex();
    }

    @Override // androidx.compose.foundation.lazy.layout.LazyAnimateScrollScope
    public int getFirstVisibleItemScrollOffset() {
        return this.state.getFirstVisibleItemScrollOffset();
    }

    @Override // androidx.compose.foundation.lazy.layout.LazyAnimateScrollScope
    public int getLastVisibleItemIndex() {
        LazyStaggeredGridItemInfo lazyStaggeredGridItemInfo = (LazyStaggeredGridItemInfo) CollectionsKt.lastOrNull((List) this.state.getLayoutInfo().getVisibleItemsInfo());
        if (lazyStaggeredGridItemInfo != null) {
            return lazyStaggeredGridItemInfo.getIndex();
        }
        return 0;
    }

    @Override // androidx.compose.foundation.lazy.layout.LazyAnimateScrollScope
    public int getItemCount() {
        return this.state.getLayoutInfo().getTotalItemsCount();
    }

    @Override // androidx.compose.foundation.lazy.layout.LazyAnimateScrollScope
    public Integer getTargetItemOffset(int index) {
        LazyStaggeredGridItemInfo findVisibleItem = LazyStaggeredGridMeasureResultKt.findVisibleItem(this.state.getLayoutInfo(), index);
        if (findVisibleItem == null) {
            return null;
        }
        long offset = findVisibleItem.getOffset();
        return Integer.valueOf(this.state.getIsVertical() ? IntOffset.m5002getYimpl(offset) : IntOffset.m5001getXimpl(offset));
    }

    @Override // androidx.compose.foundation.lazy.layout.LazyAnimateScrollScope
    public void snapToItem(ScrollScope scrollScope, int i, int i2) {
        Intrinsics.checkNotNullParameter(scrollScope, "<this>");
        this.state.snapToItemInternal$foundation_release(scrollScope, i, i2);
    }

    @Override // androidx.compose.foundation.lazy.layout.LazyAnimateScrollScope
    public float expectedDistanceTo(int index, int targetScrollOffset) {
        LazyStaggeredGridLayoutInfo layoutInfo = this.state.getLayoutInfo();
        List<LazyStaggeredGridItemInfo> visibleItemsInfo = layoutInfo.getVisibleItemsInfo();
        int size = visibleItemsInfo.size();
        int i = 0;
        for (int i2 = 0; i2 < size; i2++) {
            LazyStaggeredGridItemInfo lazyStaggeredGridItemInfo = visibleItemsInfo.get(i2);
            i += this.state.getIsVertical() ? IntSize.m5042getHeightimpl(lazyStaggeredGridItemInfo.getSize()) : IntSize.m5043getWidthimpl(lazyStaggeredGridItemInfo.getSize());
        }
        int size2 = (i / visibleItemsInfo.size()) + layoutInfo.getMainAxisItemSpacing();
        int laneCount$foundation_release = (index / this.state.getLaneCount$foundation_release()) - (getFirstVisibleItemIndex() / this.state.getLaneCount$foundation_release());
        int min = Math.min(Math.abs(targetScrollOffset), size2);
        if (targetScrollOffset < 0) {
            min *= -1;
        }
        return ((size2 * laneCount$foundation_release) + min) - getFirstVisibleItemScrollOffset();
    }

    @Override // androidx.compose.foundation.lazy.layout.LazyAnimateScrollScope
    public int getNumOfItemsForTeleport() {
        return this.state.getLaneCount$foundation_release() * 100;
    }

    @Override // androidx.compose.foundation.lazy.layout.LazyAnimateScrollScope
    public Object scroll(Function2<? super ScrollScope, ? super Continuation<? super Unit>, ? extends Object> function2, Continuation<? super Unit> continuation) {
        Object scroll$default = ScrollableState.scroll$default(this.state, null, function2, continuation, 1, null);
        return scroll$default == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? scroll$default : Unit.INSTANCE;
    }
}
