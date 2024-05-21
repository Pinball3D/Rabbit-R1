package com.rubensousa.dpadrecyclerview.layoutmanager.scroll;

import com.rubensousa.dpadrecyclerview.layoutmanager.layout.LayoutInfo;
import io.sentry.protocol.MetricSummary;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: PendingScrollMovements.kt */
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\r\b\u0000\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J\u000e\u0010\u000b\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\u000eJ\u0006\u0010\u000f\u001a\u00020\fJ\u0006\u0010\u0010\u001a\u00020\u000eJ\b\u0010\u0011\u001a\u00020\fH\u0002J\u0006\u0010\u0012\u001a\u00020\u000eJ\b\u0010\u0013\u001a\u00020\fH\u0002J\b\u0010\u0014\u001a\u00020\u000eH\u0002J\u0010\u0010\u0015\u001a\u00020\f2\u0006\u0010\u0016\u001a\u00020\u0003H\u0007J\u0016\u0010\u0017\u001a\u00020\u000e2\u0006\u0010\u0018\u001a\u00020\u00032\u0006\u0010\u0019\u001a\u00020\u0003J\u0006\u0010\u001a\u001a\u00020\u000eR\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u000e¢\u0006\u0002\n\u0000R\u001e\u0010\b\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00020\u0003@BX\u0086\u000e¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\n¨\u0006\u001b"}, d2 = {"Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/PendingScrollMovements;", "", "maxPendingMoves", "", "layoutInfo", "Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutInfo;", "(ILcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutInfo;)V", "<set-?>", "pendingMoves", "getPendingMoves", "()I", "add", "", "forward", "", "clear", "consume", "decrease", "hasPendingMoves", "increase", "isLayoutCompleteInScrollingDirection", "setMaxPendingMoves", MetricSummary.JsonKeys.MAX, "shouldScrollToView", "viewPosition", "pivotPosition", "shouldStopScrolling", "dpadrecyclerview_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
/* loaded from: classes3.dex */
public final class PendingScrollMovements {
    private final LayoutInfo layoutInfo;
    private int maxPendingMoves;
    private int pendingMoves;

    private final void decrease() {
        int i = this.pendingMoves;
        if (i > (-this.maxPendingMoves)) {
            this.pendingMoves = i - 1;
        }
    }

    private final void increase() {
        int i = this.pendingMoves;
        if (i < this.maxPendingMoves) {
            this.pendingMoves = i + 1;
        }
    }

    public final void clear() {
        this.pendingMoves = 0;
    }

    public final boolean consume() {
        int i = this.pendingMoves;
        if (i == 0) {
            return false;
        }
        if (i > 0) {
            this.pendingMoves = i - 1;
        } else {
            this.pendingMoves = i + 1;
        }
        return true;
    }

    public final int getPendingMoves() {
        return this.pendingMoves;
    }

    public final boolean hasPendingMoves() {
        return this.pendingMoves != 0;
    }

    public PendingScrollMovements(int i, LayoutInfo layoutInfo) {
        Intrinsics.checkNotNullParameter(layoutInfo, "layoutInfo");
        this.maxPendingMoves = i;
        this.layoutInfo = layoutInfo;
    }

    public final void setMaxPendingMoves(int max) {
        this.maxPendingMoves = Math.max(1, max);
    }

    public final boolean shouldStopScrolling() {
        return !hasPendingMoves() || isLayoutCompleteInScrollingDirection();
    }

    public final boolean shouldScrollToView(int viewPosition, int pivotPosition) {
        if (viewPosition == pivotPosition || this.layoutInfo.getIsLoopingAllowed()) {
            return true;
        }
        if (this.layoutInfo.shouldReverseLayout()) {
            int i = this.pendingMoves;
            if (i < 0 && viewPosition > pivotPosition) {
                return true;
            }
            if (i > 0 && viewPosition < pivotPosition) {
                return true;
            }
        } else {
            int i2 = this.pendingMoves;
            if (i2 < 0 && viewPosition < pivotPosition) {
                return true;
            }
            if (i2 > 0 && viewPosition > pivotPosition) {
                return true;
            }
        }
        return false;
    }

    private final boolean isLayoutCompleteInScrollingDirection() {
        if (this.layoutInfo.getIsLoopingAllowed()) {
            return false;
        }
        if (!this.layoutInfo.shouldReverseLayout()) {
            if ((!this.layoutInfo.hasCreatedFirstItem() || this.pendingMoves >= 0) && (!this.layoutInfo.hasCreatedLastItem() || this.pendingMoves <= 0)) {
                return false;
            }
        } else if ((!this.layoutInfo.hasCreatedLastItem() || this.pendingMoves >= 0) && (!this.layoutInfo.hasCreatedFirstItem() || this.pendingMoves <= 0)) {
            return false;
        }
        return true;
    }

    public final void add(boolean forward) {
        if (forward != this.layoutInfo.shouldReverseLayout()) {
            increase();
        } else {
            decrease();
        }
    }
}
