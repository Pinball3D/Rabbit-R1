package com.rubensousa.dpadrecyclerview.layoutmanager.layout.grid;

import android.util.SparseIntArray;
import android.view.View;
import android.view.ViewGroup;
import androidx.recyclerview.widget.RecyclerView;
import com.rubensousa.dpadrecyclerview.layoutmanager.DpadLayoutParams;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: GridState.kt */
@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0005\b\u0000\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\u0006\u0010\t\u001a\u00020\nJ\u000e\u0010\u000b\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\fJ\u000e\u0010\u000e\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\fJ\u000e\u0010\u000f\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\fJ\u0006\u0010\u0010\u001a\u00020\nR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0006X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\u0006X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0011"}, d2 = {"Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/grid/GridState;", "", "layoutManager", "Landroidx/recyclerview/widget/RecyclerView$LayoutManager;", "(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V", "preLayoutSpanGroupIndexCache", "Landroid/util/SparseIntArray;", "preLayoutSpanIndexCache", "preLayoutSpanSizeCache", "clear", "", "getSpanGroupIndex", "", "position", "getSpanIndex", "getSpanSize", "save", "dpadrecyclerview_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
/* loaded from: classes3.dex */
public final class GridState {
    private final RecyclerView.LayoutManager layoutManager;
    private final SparseIntArray preLayoutSpanGroupIndexCache;
    private final SparseIntArray preLayoutSpanIndexCache;
    private final SparseIntArray preLayoutSpanSizeCache;

    public GridState(RecyclerView.LayoutManager layoutManager) {
        Intrinsics.checkNotNullParameter(layoutManager, "layoutManager");
        this.layoutManager = layoutManager;
        this.preLayoutSpanSizeCache = new SparseIntArray();
        this.preLayoutSpanIndexCache = new SparseIntArray();
        this.preLayoutSpanGroupIndexCache = new SparseIntArray();
    }

    public final int getSpanGroupIndex(int position) {
        return this.preLayoutSpanGroupIndexCache.get(position, -1);
    }

    public final int getSpanIndex(int position) {
        return this.preLayoutSpanIndexCache.get(position, -1);
    }

    public final int getSpanSize(int position) {
        return this.preLayoutSpanSizeCache.get(position, -1);
    }

    public final void save() {
        int childCount = this.layoutManager.getChildCount();
        for (int i = 0; i < childCount; i++) {
            View childAt = this.layoutManager.getChildAt(i);
            if (childAt != null) {
                ViewGroup.LayoutParams layoutParams = childAt.getLayoutParams();
                Intrinsics.checkNotNull(layoutParams, "null cannot be cast to non-null type com.rubensousa.dpadrecyclerview.layoutmanager.DpadLayoutParams");
                DpadLayoutParams dpadLayoutParams = (DpadLayoutParams) layoutParams;
                int viewLayoutPosition = dpadLayoutParams.getViewLayoutPosition();
                this.preLayoutSpanSizeCache.put(viewLayoutPosition, dpadLayoutParams.getSpanSize());
                this.preLayoutSpanIndexCache.put(viewLayoutPosition, dpadLayoutParams.getSpanIndex());
                this.preLayoutSpanGroupIndexCache.put(viewLayoutPosition, dpadLayoutParams.getSpanGroupIndex());
            }
        }
    }

    public final void clear() {
        this.preLayoutSpanSizeCache.clear();
        this.preLayoutSpanIndexCache.clear();
    }
}
