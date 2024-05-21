package com.rubensousa.dpadrecyclerview.layoutmanager.scroll;

import android.graphics.PointF;
import android.util.DisplayMetrics;
import android.view.View;
import androidx.recyclerview.widget.RecyclerView;
import com.rubensousa.dpadrecyclerview.layoutmanager.alignment.LayoutAlignment;
import com.rubensousa.dpadrecyclerview.layoutmanager.layout.LayoutInfo;
import io.sentry.protocol.SentryThread;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: PivotSelectionSmoothScroller.kt */
@Metadata(d1 = {"\u0000b\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0007\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0000\u0018\u00002\u00020\u0001:\u0001 B5\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\u0007\u001a\u00020\b\u0012\u0006\u0010\t\u001a\u00020\n\u0012\u0006\u0010\u000b\u001a\u00020\f¢\u0006\u0002\u0010\rJ\u0012\u0010\u000e\u001a\u00020\u000f2\b\u0010\u0010\u001a\u0004\u0018\u00010\u0011H\u0014J\u0012\u0010\u0012\u001a\u0004\u0018\u00010\u00132\u0006\u0010\u0014\u001a\u00020\u0005H\u0016J\u0010\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0014\u001a\u00020\u0005H\u0002J\b\u0010\u0017\u001a\u00020\u0018H\u0014J \u0010\u0019\u001a\u00020\u00182\u0006\u0010\u001a\u001a\u00020\u001b2\u0006\u0010\u001c\u001a\u00020\u001d2\u0006\u0010\u001e\u001a\u00020\u001fH\u0014R\u000e\u0010\t\u001a\u00020\nX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\fX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006!"}, d2 = {"Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/PivotSelectionSmoothScroller;", "Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/BaseSmoothScroller;", "recyclerView", "Landroidx/recyclerview/widget/RecyclerView;", "position", "", "subPosition", "layoutInfo", "Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutInfo;", "alignment", "Lcom/rubensousa/dpadrecyclerview/layoutmanager/alignment/LayoutAlignment;", "listener", "Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/PivotSelectionSmoothScroller$Listener;", "(Landroidx/recyclerview/widget/RecyclerView;IILcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutInfo;Lcom/rubensousa/dpadrecyclerview/layoutmanager/alignment/LayoutAlignment;Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/PivotSelectionSmoothScroller$Listener;)V", "calculateSpeedPerPixel", "", "displayMetrics", "Landroid/util/DisplayMetrics;", "computeScrollVectorForPosition", "Landroid/graphics/PointF;", "targetPosition", "isGoingTowardsStart", "", "onStop", "", "onTargetFound", "targetView", "Landroid/view/View;", SentryThread.JsonKeys.STATE, "Landroidx/recyclerview/widget/RecyclerView$State;", "action", "Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;", "Listener", "dpadrecyclerview_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
/* loaded from: classes3.dex */
public final class PivotSelectionSmoothScroller extends BaseSmoothScroller {
    private final LayoutAlignment alignment;
    private final Listener listener;
    private final int position;
    private final RecyclerView recyclerView;
    private final int subPosition;

    /* compiled from: PivotSelectionSmoothScroller.kt */
    @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0004\bf\u0018\u00002\u00020\u0001J \u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\u0007H&J\u0010\u0010\t\u001a\u00020\u00032\u0006\u0010\u0006\u001a\u00020\u0007H&J\b\u0010\n\u001a\u00020\u0003H&¨\u0006\u000b"}, d2 = {"Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/PivotSelectionSmoothScroller$Listener;", "", "onPivotFound", "", "pivotView", "Landroid/view/View;", "position", "", "subPosition", "onPivotNotFound", "onSmoothScrollerStopped", "dpadrecyclerview_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    /* loaded from: classes3.dex */
    public interface Listener {
        void onPivotFound(View pivotView, int position, int subPosition);

        void onPivotNotFound(int position);

        void onSmoothScrollerStopped();
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PivotSelectionSmoothScroller(RecyclerView recyclerView, int i, int i2, LayoutInfo layoutInfo, LayoutAlignment alignment, Listener listener) {
        super(recyclerView, layoutInfo);
        Intrinsics.checkNotNullParameter(recyclerView, "recyclerView");
        Intrinsics.checkNotNullParameter(layoutInfo, "layoutInfo");
        Intrinsics.checkNotNullParameter(alignment, "alignment");
        Intrinsics.checkNotNullParameter(listener, "listener");
        this.recyclerView = recyclerView;
        this.position = i;
        this.subPosition = i2;
        this.alignment = alignment;
        this.listener = listener;
        setTargetPosition(i);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.rubensousa.dpadrecyclerview.layoutmanager.scroll.BaseSmoothScroller, androidx.recyclerview.widget.LinearSmoothScroller
    public float calculateSpeedPerPixel(DisplayMetrics displayMetrics) {
        return super.calculateSpeedPerPixel(displayMetrics) * getLayoutInfo().getConfiguration().getSmoothScrollSpeedFactor();
    }

    @Override // androidx.recyclerview.widget.LinearSmoothScroller, androidx.recyclerview.widget.RecyclerView.SmoothScroller
    protected void onTargetFound(View targetView, RecyclerView.State state, RecyclerView.SmoothScroller.Action action) {
        Intrinsics.checkNotNullParameter(targetView, "targetView");
        Intrinsics.checkNotNullParameter(state, "state");
        Intrinsics.checkNotNullParameter(action, "action");
        int calculateScrollOffset = this.alignment.calculateScrollOffset(targetView, this.subPosition);
        if (calculateScrollOffset == 0) {
            return;
        }
        int i = 0;
        if (!getLayoutInfo().isHorizontal()) {
            i = calculateScrollOffset;
            calculateScrollOffset = 0;
        }
        action.update(calculateScrollOffset, i, calculateTimeForDeceleration((int) Math.sqrt((calculateScrollOffset * calculateScrollOffset) + (i * i))), this.mDecelerateInterpolator);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.SmoothScroller
    public PointF computeScrollVectorForPosition(int targetPosition) {
        if (getChildCount() == 0) {
            return null;
        }
        float f = isGoingTowardsStart(targetPosition) ? -1.0f : 1.0f;
        if (getLayoutInfo().isHorizontal()) {
            return new PointF(f, 0.0f);
        }
        return new PointF(0.0f, f);
    }

    private final boolean isGoingTowardsStart(int targetPosition) {
        View childAt = this.recyclerView.getChildAt(0);
        if (childAt == null) {
            throw new IllegalArgumentException("Required value was null.".toString());
        }
        int layoutPositionOf = getLayoutInfo().getLayoutPositionOf(childAt);
        if (getLayoutInfo().shouldReverseLayout()) {
            if (targetPosition <= layoutPositionOf) {
                return false;
            }
        } else if (targetPosition >= layoutPositionOf) {
            return false;
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.recyclerview.widget.LinearSmoothScroller, androidx.recyclerview.widget.RecyclerView.SmoothScroller
    public void onStop() {
        super.onStop();
        if (!getIsCanceled()) {
            View findViewByPosition = findViewByPosition(getTargetPosition());
            if (findViewByPosition != null) {
                this.listener.onPivotFound(findViewByPosition, getTargetPosition(), this.subPosition);
            } else if (getTargetPosition() >= 0) {
                this.listener.onPivotNotFound(getTargetPosition());
            }
        }
        this.listener.onSmoothScrollerStopped();
    }
}
