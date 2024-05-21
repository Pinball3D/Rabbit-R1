package com.rubensousa.dpadrecyclerview;

import androidx.collection.SparseArrayCompat;
import androidx.recyclerview.widget.RecyclerView;
import io.sentry.protocol.MetricSummary;
import java.util.LinkedList;
import java.util.Queue;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: UnboundViewPool.kt */
@Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0007\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\b\u0010\u0007\u001a\u00020\bH\u0016J\u0016\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u00060\n2\u0006\u0010\u000b\u001a\u00020\fH\u0002J\u0012\u0010\r\u001a\u0004\u0018\u00010\u00062\u0006\u0010\u000b\u001a\u00020\fH\u0016J\u0010\u0010\u000e\u001a\u00020\f2\u0006\u0010\u000b\u001a\u00020\fH\u0016J\u0010\u0010\u000f\u001a\u00020\b2\u0006\u0010\u0010\u001a\u00020\u0006H\u0016J\u0018\u0010\u0011\u001a\u00020\b2\u0006\u0010\u000b\u001a\u00020\f2\u0006\u0010\u0012\u001a\u00020\fH\u0016R\u001a\u0010\u0003\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00060\u00050\u0004X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0013"}, d2 = {"Lcom/rubensousa/dpadrecyclerview/UnboundViewPool;", "Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;", "()V", "viewHolderQueues", "Landroidx/collection/SparseArrayCompat;", "Ljava/util/LinkedList;", "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;", "clear", "", "getOrCreateQueue", "Ljava/util/Queue;", "viewType", "", "getRecycledView", "getRecycledViewCount", "putRecycledView", "viewHolder", "setMaxRecycledViews", MetricSummary.JsonKeys.MAX, "dpadrecyclerview_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
/* loaded from: classes3.dex */
public final class UnboundViewPool extends RecyclerView.RecycledViewPool {
    private final SparseArrayCompat<LinkedList<RecyclerView.ViewHolder>> viewHolderQueues = new SparseArrayCompat<>(0, 1, null);

    @Override // androidx.recyclerview.widget.RecyclerView.RecycledViewPool
    public void setMaxRecycledViews(int viewType, int max) {
    }

    @Override // androidx.recyclerview.widget.RecyclerView.RecycledViewPool
    public void clear() {
        this.viewHolderQueues.clear();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.RecycledViewPool
    public RecyclerView.ViewHolder getRecycledView(int viewType) {
        LinkedList<RecyclerView.ViewHolder> linkedList = this.viewHolderQueues.get(viewType);
        if (linkedList != null) {
            return linkedList.poll();
        }
        return null;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.RecycledViewPool
    public int getRecycledViewCount(int viewType) {
        LinkedList<RecyclerView.ViewHolder> linkedList = this.viewHolderQueues.get(viewType);
        if (linkedList != null) {
            return linkedList.size();
        }
        return 0;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.RecycledViewPool
    public void putRecycledView(RecyclerView.ViewHolder viewHolder) {
        Intrinsics.checkNotNullParameter(viewHolder, "viewHolder");
        getOrCreateQueue(viewHolder.getItemViewType()).add(viewHolder);
    }

    private final Queue<RecyclerView.ViewHolder> getOrCreateQueue(int viewType) {
        LinkedList<RecyclerView.ViewHolder> linkedList = this.viewHolderQueues.get(viewType);
        if (linkedList == null) {
            linkedList = new LinkedList<>();
            this.viewHolderQueues.put(viewType, linkedList);
        }
        return linkedList;
    }
}
