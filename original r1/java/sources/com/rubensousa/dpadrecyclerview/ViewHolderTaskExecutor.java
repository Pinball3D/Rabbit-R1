package com.rubensousa.dpadrecyclerview;

import androidx.recyclerview.widget.RecyclerView;
import io.sentry.MonitorConfig;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: ViewHolderTaskExecutor.kt */
@Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\b\u0000\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u0010\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000bH\u0002J*\u0010\f\u001a\u00020\t2\u0006\u0010\r\u001a\u00020\u000e2\b\u0010\u000f\u001a\u0004\u0018\u00010\u000b2\u0006\u0010\u0010\u001a\u00020\u00062\u0006\u0010\u0011\u001a\u00020\u0006H\u0016J*\u0010\u0012\u001a\u00020\t2\u0006\u0010\r\u001a\u00020\u000e2\b\u0010\u000f\u001a\u0004\u0018\u00010\u000b2\u0006\u0010\u0010\u001a\u00020\u00062\u0006\u0010\u0011\u001a\u00020\u0006H\u0016J\u0016\u0010\u0013\u001a\u00020\t2\u0006\u0010\u0010\u001a\u00020\u00062\u0006\u0010\u0014\u001a\u00020\u0004J\u001e\u0010\u0013\u001a\u00020\t2\u0006\u0010\u0010\u001a\u00020\u00062\u0006\u0010\u0011\u001a\u00020\u00062\u0006\u0010\u0014\u001a\u00020\u0004R\u0010\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0006X\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\u0015"}, d2 = {"Lcom/rubensousa/dpadrecyclerview/ViewHolderTaskExecutor;", "Lcom/rubensousa/dpadrecyclerview/OnViewHolderSelectedListener;", "()V", "pendingTask", "Lcom/rubensousa/dpadrecyclerview/ViewHolderTask;", "targetPosition", "", "targetSubPosition", "executePendingTask", "", "viewHolder", "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;", "onViewHolderSelected", "parent", "Landroidx/recyclerview/widget/RecyclerView;", "child", "position", "subPosition", "onViewHolderSelectedAndAligned", MonitorConfig.JsonKeys.SCHEDULE, "task", "dpadrecyclerview_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
/* loaded from: classes3.dex */
public final class ViewHolderTaskExecutor implements OnViewHolderSelectedListener {
    private ViewHolderTask pendingTask;
    private int targetPosition = -1;
    private int targetSubPosition = -1;

    public final void schedule(int position, int subPosition, ViewHolderTask task) {
        Intrinsics.checkNotNullParameter(task, "task");
        this.targetPosition = position;
        this.targetSubPosition = subPosition;
        this.pendingTask = task;
    }

    public final void schedule(int position, ViewHolderTask task) {
        Intrinsics.checkNotNullParameter(task, "task");
        this.targetPosition = position;
        this.targetSubPosition = -1;
        this.pendingTask = task;
    }

    @Override // com.rubensousa.dpadrecyclerview.OnViewHolderSelectedListener
    public void onViewHolderSelected(RecyclerView parent, RecyclerView.ViewHolder child, int position, int subPosition) {
        ViewHolderTask viewHolderTask;
        Intrinsics.checkNotNullParameter(parent, "parent");
        if (position != this.targetPosition || child == null) {
            return;
        }
        int i = this.targetSubPosition;
        if ((i != -1 && i != subPosition) || (viewHolderTask = this.pendingTask) == null || viewHolderTask.getExecuteWhenAligned()) {
            return;
        }
        executePendingTask(child);
    }

    @Override // com.rubensousa.dpadrecyclerview.OnViewHolderSelectedListener
    public void onViewHolderSelectedAndAligned(RecyclerView parent, RecyclerView.ViewHolder child, int position, int subPosition) {
        ViewHolderTask viewHolderTask;
        Intrinsics.checkNotNullParameter(parent, "parent");
        if (position != this.targetPosition || child == null) {
            return;
        }
        int i = this.targetSubPosition;
        if ((i == -1 || i == subPosition) && (viewHolderTask = this.pendingTask) != null && viewHolderTask.getExecuteWhenAligned()) {
            executePendingTask(child);
        }
    }

    private final void executePendingTask(RecyclerView.ViewHolder viewHolder) {
        ViewHolderTask viewHolderTask = this.pendingTask;
        if (viewHolderTask != null) {
            viewHolderTask.execute(viewHolder);
        }
        this.pendingTask = null;
        this.targetPosition = -1;
    }
}
