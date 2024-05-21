package com.rubensousa.dpadrecyclerview.layoutmanager.layout;

import android.view.View;
import androidx.recyclerview.widget.RecyclerView;
import io.sentry.protocol.SentryThread;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: LayoutPrefetchCollector.kt */
@Metadata(d1 = {"\u0000J\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0002\b\u0002\b\u0000\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\u0018\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\nH\u0002J\u0010\u0010\u000b\u001a\u00020\f2\u0006\u0010\t\u001a\u00020\nH\u0002J\u0010\u0010\r\u001a\u00020\n2\u0006\u0010\u000e\u001a\u00020\u0006H\u0002J&\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00062\u0006\u0010\u0012\u001a\u00020\u00062\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u0016J&\u0010\u0017\u001a\u00020\u00102\u0006\u0010\u0018\u001a\u00020\u00062\u0006\u0010\u0019\u001a\u00020\u00062\u0006\u0010\u001a\u001a\u00020\u00062\u0006\u0010\u0015\u001a\u00020\u0016J\u0012\u0010\u001b\u001a\u0004\u0018\u00010\b2\u0006\u0010\t\u001a\u00020\nH\u0002J\u0018\u0010\u001c\u001a\u00020\u001d2\u0006\u0010\u001e\u001a\u00020\u00062\u0006\u0010\u0013\u001a\u00020\u0014H\u0002R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u001f"}, d2 = {"Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutPrefetchCollector;", "", "layoutInfo", "Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutInfo;", "(Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutInfo;)V", "calculateAvailableScrollSpace", "", "view", "Landroid/view/View;", "layoutDirection", "Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutDirection;", "calculateItemDirection", "Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/ItemDirection;", "calculateLayoutDirection", "scrollOffset", "collectAdjacentPrefetchPositions", "", "dx", "dy", SentryThread.JsonKeys.STATE, "Landroidx/recyclerview/widget/RecyclerView$State;", "layoutPrefetchRegistry", "Landroidx/recyclerview/widget/RecyclerView$LayoutManager$LayoutPrefetchRegistry;", "collectInitialPrefetchPositions", "adapterItemCount", "prefetchItemCount", "pivotPosition", "getViewAtLayoutEdge", "hasMoreItemsToLayout", "", "position", "dpadrecyclerview_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
/* loaded from: classes3.dex */
public final class LayoutPrefetchCollector {
    private final LayoutInfo layoutInfo;

    public LayoutPrefetchCollector(LayoutInfo layoutInfo) {
        Intrinsics.checkNotNullParameter(layoutInfo, "layoutInfo");
        this.layoutInfo = layoutInfo;
    }

    public final void collectInitialPrefetchPositions(int adapterItemCount, int prefetchItemCount, int pivotPosition, RecyclerView.LayoutManager.LayoutPrefetchRegistry layoutPrefetchRegistry) {
        Intrinsics.checkNotNullParameter(layoutPrefetchRegistry, "layoutPrefetchRegistry");
        if (prefetchItemCount == 0 || adapterItemCount == 0) {
            return;
        }
        int max = Math.max(0, Math.min(pivotPosition - ((prefetchItemCount - 1) / 2), adapterItemCount - prefetchItemCount));
        for (int i = max; i < adapterItemCount && i < max + prefetchItemCount; i++) {
            layoutPrefetchRegistry.addPosition(i, 0);
        }
    }

    public final void collectAdjacentPrefetchPositions(int dx, int dy, RecyclerView.State state, RecyclerView.LayoutManager.LayoutPrefetchRegistry layoutPrefetchRegistry) {
        Intrinsics.checkNotNullParameter(state, "state");
        Intrinsics.checkNotNullParameter(layoutPrefetchRegistry, "layoutPrefetchRegistry");
        if (this.layoutInfo.isVertical()) {
            dx = dy;
        }
        if (this.layoutInfo.getChildCount() == 0 || dx == 0) {
            return;
        }
        LayoutDirection calculateLayoutDirection = calculateLayoutDirection(dx);
        ItemDirection calculateItemDirection = calculateItemDirection(calculateLayoutDirection);
        View viewAtLayoutEdge = getViewAtLayoutEdge(calculateLayoutDirection);
        if (viewAtLayoutEdge == null) {
            return;
        }
        int layoutPositionOf = this.layoutInfo.getLayoutPositionOf(viewAtLayoutEdge) + calculateItemDirection.getValue();
        int spanCount = this.layoutInfo.getSpanCount();
        int calculateAvailableScrollSpace = calculateAvailableScrollSpace(viewAtLayoutEdge, calculateLayoutDirection);
        int i = spanCount;
        for (int i2 = 0; i2 < spanCount && hasMoreItemsToLayout(layoutPositionOf, state) && i > 0; i2++) {
            layoutPrefetchRegistry.addPosition(layoutPositionOf, Math.max(0, calculateAvailableScrollSpace));
            i -= this.layoutInfo.getSpanSize(layoutPositionOf);
            layoutPositionOf += calculateItemDirection.getValue();
        }
    }

    private final View getViewAtLayoutEdge(LayoutDirection layoutDirection) {
        if (layoutDirection == LayoutDirection.END) {
            return this.layoutInfo.getChildClosestToEnd();
        }
        return this.layoutInfo.getChildClosestToStart();
    }

    private final int calculateAvailableScrollSpace(View view, LayoutDirection layoutDirection) {
        if (layoutDirection == LayoutDirection.END) {
            return this.layoutInfo.getDecoratedEnd(view) - this.layoutInfo.getEndAfterPadding();
        }
        return (-this.layoutInfo.getDecoratedStart(view)) + this.layoutInfo.getStartAfterPadding();
    }

    private final ItemDirection calculateItemDirection(LayoutDirection layoutDirection) {
        ItemDirection itemDirection;
        if (layoutDirection == LayoutDirection.END) {
            itemDirection = ItemDirection.TAIL;
        } else {
            itemDirection = ItemDirection.HEAD;
        }
        return this.layoutInfo.shouldReverseLayout() ? itemDirection.opposite() : itemDirection;
    }

    private final LayoutDirection calculateLayoutDirection(int scrollOffset) {
        if (scrollOffset > 0) {
            return LayoutDirection.END;
        }
        return LayoutDirection.START;
    }

    private final boolean hasMoreItemsToLayout(int position, RecyclerView.State state) {
        return position >= 0 && position < state.getItemCount();
    }
}
