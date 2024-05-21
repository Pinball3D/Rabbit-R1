package com.rubensousa.dpadrecyclerview.layoutmanager.layout;

import android.view.View;
import androidx.recyclerview.widget.RecyclerView;
import io.flutter.plugin.editing.SpellCheckPlugin;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: ViewRecycler.kt */
@Metadata(d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0010\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J$\u0010\u000b\u001a\u00020\f2\n\u0010\r\u001a\u00060\u000eR\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u0011H\u0002J\u001a\u0010\u0013\u001a\u00020\f2\n\u0010\r\u001a\u00060\u000eR\u00020\u000f2\u0006\u0010\u0014\u001a\u00020\u0015J\u001a\u0010\u0016\u001a\u00020\f2\n\u0010\r\u001a\u00060\u000eR\u00020\u000f2\u0006\u0010\u0014\u001a\u00020\u0015J\u001a\u0010\u0017\u001a\u00020\f2\n\u0010\r\u001a\u00060\u000eR\u00020\u000f2\u0006\u0010\u0014\u001a\u00020\u0015J\u001c\u0010\u0018\u001a\u00020\f2\u0006\u0010\u0019\u001a\u00020\u00112\n\u0010\r\u001a\u00060\u000eR\u00020\u000fH\u0002R\u0014\u0010\u0004\u001a\u00020\u0005X\u0084\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\bR\u0014\u0010\u0002\u001a\u00020\u0003X\u0084\u0004¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\n¨\u0006\u001a"}, d2 = {"Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/ViewRecycler;", "", "layoutManager", "Landroidx/recyclerview/widget/RecyclerView$LayoutManager;", "layoutInfo", "Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutInfo;", "(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutInfo;)V", "getLayoutInfo", "()Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutInfo;", "getLayoutManager", "()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;", "recycle", "", "recycler", "Landroidx/recyclerview/widget/RecyclerView$Recycler;", "Landroidx/recyclerview/widget/RecyclerView;", SpellCheckPlugin.START_INDEX_KEY, "", SpellCheckPlugin.END_INDEX_KEY, "recycleByLayoutRequest", "layoutRequest", "Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutRequest;", "recycleFromEnd", "recycleFromStart", "recycleViewAt", "index", "dpadrecyclerview_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
/* loaded from: classes3.dex */
public class ViewRecycler {
    private final LayoutInfo layoutInfo;
    private final RecyclerView.LayoutManager layoutManager;

    protected final LayoutInfo getLayoutInfo() {
        return this.layoutInfo;
    }

    protected final RecyclerView.LayoutManager getLayoutManager() {
        return this.layoutManager;
    }

    public ViewRecycler(RecyclerView.LayoutManager layoutManager, LayoutInfo layoutInfo) {
        Intrinsics.checkNotNullParameter(layoutManager, "layoutManager");
        Intrinsics.checkNotNullParameter(layoutInfo, "layoutInfo");
        this.layoutManager = layoutManager;
        this.layoutInfo = layoutInfo;
    }

    public final void recycleByLayoutRequest(RecyclerView.Recycler recycler, LayoutRequest layoutRequest) {
        Intrinsics.checkNotNullParameter(recycler, "recycler");
        Intrinsics.checkNotNullParameter(layoutRequest, "layoutRequest");
        if (!layoutRequest.getIsRecyclingEnabled() || layoutRequest.getIsInfinite()) {
            return;
        }
        if (layoutRequest.isPrepending()) {
            recycleFromEnd(recycler, layoutRequest);
        } else {
            recycleFromStart(recycler, layoutRequest);
        }
    }

    public final void recycleFromStart(RecyclerView.Recycler recycler, LayoutRequest layoutRequest) {
        Intrinsics.checkNotNullParameter(recycler, "recycler");
        Intrinsics.checkNotNullParameter(layoutRequest, "layoutRequest");
        int i = -layoutRequest.getExtraLayoutSpaceStart();
        int childCount = this.layoutInfo.getChildCount();
        for (int i2 = 0; i2 < childCount; i2++) {
            View childAt = this.layoutInfo.getChildAt(i2);
            if (childAt != null && (this.layoutInfo.getDecoratedEnd(childAt) > i || this.layoutInfo.getOrientationHelper().getTransformedEndWithDecoration(childAt) > i)) {
                recycle(recycler, 0, i2);
                return;
            }
        }
    }

    public final void recycleFromEnd(RecyclerView.Recycler recycler, LayoutRequest layoutRequest) {
        Intrinsics.checkNotNullParameter(recycler, "recycler");
        Intrinsics.checkNotNullParameter(layoutRequest, "layoutRequest");
        int end = this.layoutInfo.getOrientationHelper().getEnd() + layoutRequest.getExtraLayoutSpaceEnd();
        int childCount = this.layoutInfo.getChildCount() - 1;
        for (int i = childCount; -1 < i; i--) {
            View childAt = this.layoutInfo.getChildAt(i);
            if (childAt != null && (this.layoutInfo.getDecoratedStart(childAt) < end || this.layoutInfo.getOrientationHelper().getTransformedStartWithDecoration(childAt) < end)) {
                recycle(recycler, childCount, i);
                return;
            }
        }
    }

    private final void recycle(RecyclerView.Recycler recycler, int startIndex, int endIndex) {
        if (startIndex == endIndex) {
            return;
        }
        if (endIndex > startIndex) {
            int i = endIndex - 1;
            if (startIndex > i) {
                return;
            }
            while (true) {
                recycleViewAt(i, recycler);
                if (i == startIndex) {
                    return;
                } else {
                    i--;
                }
            }
        } else {
            int i2 = endIndex + 1;
            if (i2 > startIndex) {
                return;
            }
            while (true) {
                recycleViewAt(startIndex, recycler);
                if (startIndex == i2) {
                    return;
                } else {
                    startIndex--;
                }
            }
        }
    }

    private final void recycleViewAt(int index, RecyclerView.Recycler recycler) {
        View childAt = this.layoutInfo.getChildAt(index);
        if (childAt != null) {
            this.layoutManager.removeAndRecycleView(childAt, recycler);
        }
    }
}
