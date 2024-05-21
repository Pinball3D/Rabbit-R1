package com.rubensousa.dpadrecyclerview.layoutmanager.scroll;

import android.graphics.PointF;
import android.view.View;
import androidx.recyclerview.widget.RecyclerView;
import com.rubensousa.dpadrecyclerview.DpadSpanSizeLookup;
import com.rubensousa.dpadrecyclerview.layoutmanager.PivotSelector;
import com.rubensousa.dpadrecyclerview.layoutmanager.alignment.LayoutAlignment;
import com.rubensousa.dpadrecyclerview.layoutmanager.focus.SpanFocusFinder;
import com.rubensousa.dpadrecyclerview.layoutmanager.layout.LayoutInfo;
import io.sentry.protocol.SentryThread;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: SearchPivotSmoothScroller.kt */
@Metadata(d1 = {"\u0000f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\r\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0000\u0018\u0000 ,2\u00020\u0001:\u0002,-B=\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\b\u001a\u00020\t\u0012\u0006\u0010\n\u001a\u00020\u000b\u0012\u0006\u0010\f\u001a\u00020\r\u0012\u0006\u0010\u000e\u001a\u00020\u000f¢\u0006\u0002\u0010\u0010J\u000e\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u0016J\u0012\u0010\u0017\u001a\u0004\u0018\u00010\u00182\u0006\u0010\u0019\u001a\u00020\u0005H\u0016J$\u0010\u001a\u001a\u0004\u0018\u00010\u001b2\u0006\u0010\u001c\u001a\u00020\u00052\u0006\u0010\b\u001a\u00020\t2\b\b\u0002\u0010\u001d\u001a\u00020\u0016H\u0002J\u0012\u0010\u001e\u001a\u0004\u0018\u00010\u001b2\u0006\u0010\u001c\u001a\u00020\u0005H\u0002J\u0006\u0010\u001f\u001a\u00020\u0014J\u0006\u0010 \u001a\u00020\u0014J\u000e\u0010!\u001a\u00020\u00142\u0006\u0010\"\u001a\u00020\u001bJ\u000e\u0010#\u001a\u00020\u00142\u0006\u0010$\u001a\u00020\u001bJ\b\u0010%\u001a\u00020\u0014H\u0014J \u0010&\u001a\u00020\u00142\u0006\u0010'\u001a\u00020\u001b2\u0006\u0010(\u001a\u00020)2\u0006\u0010*\u001a\u00020+H\u0014R\u000e\u0010\f\u001a\u00020\rX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u000fX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\u0012X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\tX\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006."}, d2 = {"Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/SearchPivotSmoothScroller;", "Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/BaseSmoothScroller;", "recyclerView", "Landroidx/recyclerview/widget/RecyclerView;", "maxPendingMoves", "", "layoutInfo", "Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutInfo;", "spanFocusFinder", "Lcom/rubensousa/dpadrecyclerview/layoutmanager/focus/SpanFocusFinder;", "pivotSelector", "Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotSelector;", "alignment", "Lcom/rubensousa/dpadrecyclerview/layoutmanager/alignment/LayoutAlignment;", "listener", "Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/SearchPivotSmoothScroller$Listener;", "(Landroidx/recyclerview/widget/RecyclerView;ILcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutInfo;Lcom/rubensousa/dpadrecyclerview/layoutmanager/focus/SpanFocusFinder;Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotSelector;Lcom/rubensousa/dpadrecyclerview/layoutmanager/alignment/LayoutAlignment;Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/SearchPivotSmoothScroller$Listener;)V", "movements", "Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/PendingScrollMovements;", "addScrollMovement", "", "forward", "", "computeScrollVectorForPosition", "Landroid/graphics/PointF;", "targetPosition", "consumeGridMovements", "Landroid/view/View;", "pivotPosition", "consumeAll", "consumeOneLinearMovement", "consumeOneMovement", "onBlockLaidOut", "onChildCreated", "child", "onChildLaidOut", "view", "onStop", "onTargetFound", "targetView", SentryThread.JsonKeys.STATE, "Landroidx/recyclerview/widget/RecyclerView$State;", "action", "Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;", "Companion", "Listener", "dpadrecyclerview_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
/* loaded from: classes3.dex */
public final class SearchPivotSmoothScroller extends BaseSmoothScroller {
    public static final int UNDEFINED_TARGET = -2;
    private final LayoutAlignment alignment;
    private final Listener listener;
    private final PendingScrollMovements movements;
    private final PivotSelector pivotSelector;
    private final SpanFocusFinder spanFocusFinder;

    /* compiled from: SearchPivotSmoothScroller.kt */
    @Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\bf\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H&J\u0010\u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00020\bH&J\u0010\u0010\t\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00020\bH&J\u0010\u0010\n\u001a\u00020\u00032\u0006\u0010\u000b\u001a\u00020\u0005H&J\b\u0010\f\u001a\u00020\u0003H&¨\u0006\r"}, d2 = {"Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/SearchPivotSmoothScroller$Listener;", "", "onPivotAttached", "", "adapterPosition", "", "onPivotFound", "pivotView", "Landroid/view/View;", "onPivotLaidOut", "onPivotNotFound", "targetPosition", "onSmoothScrollerStopped", "dpadrecyclerview_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    /* loaded from: classes3.dex */
    public interface Listener {
        void onPivotAttached(int adapterPosition);

        void onPivotFound(View pivotView);

        void onPivotLaidOut(View pivotView);

        void onPivotNotFound(int targetPosition);

        void onSmoothScrollerStopped();
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SearchPivotSmoothScroller(RecyclerView recyclerView, int i, LayoutInfo layoutInfo, SpanFocusFinder spanFocusFinder, PivotSelector pivotSelector, LayoutAlignment alignment, Listener listener) {
        super(recyclerView, layoutInfo);
        Intrinsics.checkNotNullParameter(recyclerView, "recyclerView");
        Intrinsics.checkNotNullParameter(layoutInfo, "layoutInfo");
        Intrinsics.checkNotNullParameter(spanFocusFinder, "spanFocusFinder");
        Intrinsics.checkNotNullParameter(pivotSelector, "pivotSelector");
        Intrinsics.checkNotNullParameter(alignment, "alignment");
        Intrinsics.checkNotNullParameter(listener, "listener");
        this.spanFocusFinder = spanFocusFinder;
        this.pivotSelector = pivotSelector;
        this.alignment = alignment;
        this.listener = listener;
        this.movements = new PendingScrollMovements(i, layoutInfo);
        setTargetPosition(-2);
    }

    @Override // androidx.recyclerview.widget.LinearSmoothScroller, androidx.recyclerview.widget.RecyclerView.SmoothScroller
    protected void onTargetFound(View targetView, RecyclerView.State state, RecyclerView.SmoothScroller.Action action) {
        Intrinsics.checkNotNullParameter(targetView, "targetView");
        Intrinsics.checkNotNullParameter(state, "state");
        Intrinsics.checkNotNullParameter(action, "action");
        int i = 0;
        int calculateScrollOffset = this.alignment.calculateScrollOffset(targetView, 0);
        if (calculateScrollOffset == 0) {
            return;
        }
        if (getLayoutInfo().isHorizontal()) {
            i = calculateScrollOffset;
            calculateScrollOffset = 0;
        }
        action.update(i, calculateScrollOffset, calculateTimeForDeceleration((int) Math.sqrt((i * i) + (calculateScrollOffset * calculateScrollOffset))), this.mDecelerateInterpolator);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.SmoothScroller
    public PointF computeScrollVectorForPosition(int targetPosition) {
        if (this.movements.getPendingMoves() == 0) {
            return null;
        }
        float f = this.movements.getPendingMoves() < 0 ? -1.0f : 1.0f;
        if (getLayoutInfo().isHorizontal()) {
            return new PointF(f, 0.0f);
        }
        return new PointF(0.0f, f);
    }

    public final void onChildCreated(View child) {
        RecyclerView.ViewHolder childViewHolder;
        Intrinsics.checkNotNullParameter(child, "child");
        if (getLayoutInfo().isGrid() || !this.movements.hasPendingMoves() || (childViewHolder = getLayoutInfo().getChildViewHolder(child)) == null) {
            return;
        }
        int absoluteAdapterPosition = childViewHolder.getAbsoluteAdapterPosition();
        if (getLayoutInfo().isViewFocusable(child) && absoluteAdapterPosition != -1 && this.movements.shouldScrollToView(absoluteAdapterPosition, this.pivotSelector.getPosition()) && this.movements.consume()) {
            this.listener.onPivotAttached(absoluteAdapterPosition);
        }
    }

    public final void onChildLaidOut(View view) {
        Intrinsics.checkNotNullParameter(view, "view");
        if (getLayoutInfo().isGrid()) {
            return;
        }
        RecyclerView.ViewHolder childViewHolder = getLayoutInfo().getChildViewHolder(view);
        if (childViewHolder != null && childViewHolder.getAbsoluteAdapterPosition() == this.pivotSelector.getPosition()) {
            this.listener.onPivotLaidOut(view);
        }
        if (this.movements.shouldStopScrolling()) {
            setTargetPosition(this.pivotSelector.getPosition());
            stop();
        }
    }

    public final void consumeOneMovement() {
        View consumeOneLinearMovement;
        if (getLayoutInfo().isGrid()) {
            consumeOneLinearMovement = consumeGridMovements(this.pivotSelector.getPosition(), this.spanFocusFinder, false);
        } else {
            consumeOneLinearMovement = consumeOneLinearMovement(this.pivotSelector.getPosition());
        }
        if (consumeOneLinearMovement != null) {
            this.listener.onPivotAttached(getLayoutInfo().getAdapterPositionOf(consumeOneLinearMovement));
            this.listener.onPivotLaidOut(consumeOneLinearMovement);
        }
    }

    public final void onBlockLaidOut() {
        if (getLayoutInfo().isGrid()) {
            View consumeGridMovements$default = consumeGridMovements$default(this, this.pivotSelector.getPosition(), this.spanFocusFinder, false, 4, null);
            if (consumeGridMovements$default != null) {
                this.listener.onPivotAttached(getLayoutInfo().getAdapterPositionOf(consumeGridMovements$default));
                this.listener.onPivotLaidOut(consumeGridMovements$default);
            }
            if (this.movements.shouldStopScrolling()) {
                setTargetPosition(this.pivotSelector.getPosition());
                stop();
            }
        }
    }

    public final void addScrollMovement(boolean forward) {
        this.movements.add(forward);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.recyclerview.widget.LinearSmoothScroller, androidx.recyclerview.widget.RecyclerView.SmoothScroller
    public void onStop() {
        super.onStop();
        if (getIsCanceled()) {
            this.listener.onSmoothScrollerStopped();
            return;
        }
        this.movements.clear();
        View findViewByPosition = findViewByPosition(getTargetPosition());
        if (findViewByPosition != null) {
            this.listener.onPivotFound(findViewByPosition);
        } else {
            this.listener.onPivotNotFound(getTargetPosition());
        }
        this.listener.onSmoothScrollerStopped();
    }

    private final View consumeOneLinearMovement(int pivotPosition) {
        View childClosestToStart;
        if (!this.movements.hasPendingMoves()) {
            return null;
        }
        boolean shouldReverseLayout = getLayoutInfo().shouldReverseLayout();
        boolean z = false;
        if (shouldReverseLayout ? this.movements.getPendingMoves() < 0 : this.movements.getPendingMoves() > 0) {
            z = true;
        }
        if (z != shouldReverseLayout) {
            childClosestToStart = getLayoutInfo().getChildClosestToEnd();
        } else {
            childClosestToStart = getLayoutInfo().getChildClosestToStart();
        }
        if (childClosestToStart == null) {
            return null;
        }
        int layoutPositionOf = getLayoutInfo().getLayoutPositionOf(childClosestToStart);
        int i = z ? 1 : -1;
        while (pivotPosition != layoutPositionOf && this.movements.hasPendingMoves()) {
            View findViewByPosition = getLayoutInfo().findViewByPosition(pivotPosition);
            pivotPosition += i;
            if (findViewByPosition != null && getLayoutInfo().isViewFocusable(findViewByPosition)) {
                this.movements.consume();
                return findViewByPosition;
            }
        }
        return null;
    }

    static /* synthetic */ View consumeGridMovements$default(SearchPivotSmoothScroller searchPivotSmoothScroller, int i, SpanFocusFinder spanFocusFinder, boolean z, int i2, Object obj) {
        if ((i2 & 4) != 0) {
            z = true;
        }
        return searchPivotSmoothScroller.consumeGridMovements(i, spanFocusFinder, z);
    }

    private final View consumeGridMovements(int pivotPosition, SpanFocusFinder spanFocusFinder, boolean consumeAll) {
        View childClosestToStart;
        View view = null;
        if (!this.movements.hasPendingMoves()) {
            return null;
        }
        boolean shouldReverseLayout = getLayoutInfo().shouldReverseLayout();
        boolean z = shouldReverseLayout ? this.movements.getPendingMoves() < 0 : this.movements.getPendingMoves() > 0;
        if (z != shouldReverseLayout) {
            childClosestToStart = getLayoutInfo().getChildClosestToEnd();
        } else {
            childClosestToStart = getLayoutInfo().getChildClosestToStart();
        }
        if (childClosestToStart == null) {
            return null;
        }
        DpadSpanSizeLookup spanSizeLookup = getLayoutInfo().getConfiguration().getSpanSizeLookup();
        int layoutPositionOf = getLayoutInfo().getLayoutPositionOf(childClosestToStart);
        int i = pivotPosition;
        while (i != layoutPositionOf && this.movements.hasPendingMoves()) {
            i = spanFocusFinder.findNextSpanPosition(i, spanSizeLookup, z, layoutPositionOf, shouldReverseLayout);
            if (i == -1) {
                break;
            }
            View findViewByPosition = getLayoutInfo().findViewByPosition(i);
            if (findViewByPosition != null && getLayoutInfo().isViewFocusable(findViewByPosition)) {
                spanFocusFinder.save(i, spanSizeLookup);
                this.movements.consume();
                view = findViewByPosition;
                if (!consumeAll) {
                    break;
                }
            }
        }
        if (view == null) {
            spanFocusFinder.save(pivotPosition, spanSizeLookup);
        }
        return view;
    }
}
