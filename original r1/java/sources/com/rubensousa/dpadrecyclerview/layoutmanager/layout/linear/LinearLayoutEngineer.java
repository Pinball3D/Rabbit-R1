package com.rubensousa.dpadrecyclerview.layoutmanager.layout.linear;

import android.util.Log;
import android.view.Gravity;
import android.view.View;
import androidx.collection.SparseArrayCompat;
import androidx.core.view.GravityCompat;
import androidx.recyclerview.widget.RecyclerView;
import com.rubensousa.dpadrecyclerview.DpadRecyclerView;
import com.rubensousa.dpadrecyclerview.layoutmanager.alignment.LayoutAlignment;
import com.rubensousa.dpadrecyclerview.layoutmanager.layout.LayoutDirection;
import com.rubensousa.dpadrecyclerview.layoutmanager.layout.LayoutInfo;
import com.rubensousa.dpadrecyclerview.layoutmanager.layout.LayoutRequest;
import com.rubensousa.dpadrecyclerview.layoutmanager.layout.LayoutResult;
import com.rubensousa.dpadrecyclerview.layoutmanager.layout.OnChildLayoutListener;
import com.rubensousa.dpadrecyclerview.layoutmanager.layout.StructureEngineer;
import com.rubensousa.dpadrecyclerview.layoutmanager.layout.ViewBounds;
import com.rubensousa.dpadrecyclerview.layoutmanager.layout.provider.ScrapViewProvider;
import com.rubensousa.dpadrecyclerview.layoutmanager.layout.provider.ViewProvider;
import io.sentry.protocol.SentryThread;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: LinearLayoutEngineer.kt */
@Metadata(d1 = {"\u0000r\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0006\b\u0000\u0018\u0000 /2\u00020\u0001:\u0001/B%\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\b\u001a\u00020\t¢\u0006\u0002\u0010\nJ \u0010\u000b\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u0012H\u0002J \u0010\u0013\u001a\u00020\u00142\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u0012H\u0002J \u0010\u0015\u001a\u00020\u00142\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u0012H\u0002J\u0018\u0010\u0016\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u0011\u001a\u00020\u0012H\u0002J\u0018\u0010\u0017\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u0011\u001a\u00020\u0012H\u0002J4\u0010\u0018\u001a\u00020\u000e2\u0006\u0010\u0019\u001a\u00020\f2\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u001a\u001a\u00020\u001b2\n\u0010\u001c\u001a\u00060\u001dR\u00020\u001e2\u0006\u0010\u001f\u001a\u00020 H\u0014J4\u0010!\u001a\u00020\u00142\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u001a\u001a\u00020\u001b2\n\u0010\u001c\u001a\u00060\u001dR\u00020\u001e2\u0006\u0010\u001f\u001a\u00020 2\u0006\u0010\"\u001a\u00020#H\u0014J<\u0010$\u001a\u00020\u00142\u0006\u0010%\u001a\u00020\u000e2\u0006\u0010&\u001a\u00020\u000e2\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010'\u001a\u00020(2\n\u0010\u001c\u001a\u00060\u001dR\u00020\u001e2\u0006\u0010\u001f\u001a\u00020 H\u0014J4\u0010)\u001a\u00020*2\u0006\u0010+\u001a\u00020\u000e2\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u001a\u001a\u00020\u001b2\n\u0010\u001c\u001a\u00060\u001dR\u00020\u001e2\u0006\u0010\u001f\u001a\u00020 H\u0016J\u0018\u0010,\u001a\u00020\u00142\u0006\u0010+\u001a\u00020\u000e2\u0006\u0010\u0011\u001a\u00020\u0012H\u0002J \u0010-\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u0012H\u0002J \u0010.\u001a\u00020\u00142\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u0012H\u0002R\u000e\u0010\b\u001a\u00020\tX\u0082\u0004¢\u0006\u0002\n\u0000¨\u00060"}, d2 = {"Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/linear/LinearLayoutEngineer;", "Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/StructureEngineer;", "layoutManager", "Landroidx/recyclerview/widget/RecyclerView$LayoutManager;", "layoutInfo", "Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutInfo;", "layoutAlignment", "Lcom/rubensousa/dpadrecyclerview/layoutmanager/alignment/LayoutAlignment;", "onChildLayoutListener", "Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/OnChildLayoutListener;", "(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutInfo;Lcom/rubensousa/dpadrecyclerview/layoutmanager/alignment/LayoutAlignment;Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/OnChildLayoutListener;)V", "append", "", "view", "Landroid/view/View;", "bounds", "Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/ViewBounds;", "layoutRequest", "Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutRequest;", "applyHorizontalGravity", "", "applyVerticalGravity", "getEndDecorationSize", "getStartDecorationSize", "initLayout", "pivotPosition", "viewProvider", "Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/provider/ViewProvider;", "recycler", "Landroidx/recyclerview/widget/RecyclerView$Recycler;", "Landroidx/recyclerview/widget/RecyclerView;", SentryThread.JsonKeys.STATE, "Landroidx/recyclerview/widget/RecyclerView$State;", "layoutBlock", "layoutResult", "Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutResult;", "layoutDisappearingViews", "firstView", "lastView", "scrapViewProvider", "Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/provider/ScrapViewProvider;", "layoutLoop", "", "pivotView", "layoutPivot", "prepend", "updatePivotBounds", "Companion", "dpadrecyclerview_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
/* loaded from: classes3.dex */
public final class LinearLayoutEngineer extends StructureEngineer {
    public static final String TAG = "LinearLayoutEngineer";
    private final OnChildLayoutListener onChildLayoutListener;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public LinearLayoutEngineer(RecyclerView.LayoutManager layoutManager, LayoutInfo layoutInfo, LayoutAlignment layoutAlignment, OnChildLayoutListener onChildLayoutListener) {
        super(layoutManager, layoutInfo, layoutAlignment);
        Intrinsics.checkNotNullParameter(layoutManager, "layoutManager");
        Intrinsics.checkNotNullParameter(layoutInfo, "layoutInfo");
        Intrinsics.checkNotNullParameter(layoutAlignment, "layoutAlignment");
        Intrinsics.checkNotNullParameter(onChildLayoutListener, "onChildLayoutListener");
        this.onChildLayoutListener = onChildLayoutListener;
    }

    @Override // com.rubensousa.dpadrecyclerview.layoutmanager.layout.StructureEngineer
    protected View initLayout(int pivotPosition, LayoutRequest layoutRequest, ViewProvider viewProvider, RecyclerView.Recycler recycler, RecyclerView.State state) {
        Intrinsics.checkNotNullParameter(layoutRequest, "layoutRequest");
        Intrinsics.checkNotNullParameter(viewProvider, "viewProvider");
        Intrinsics.checkNotNullParameter(recycler, "recycler");
        Intrinsics.checkNotNullParameter(state, "state");
        View viewForPosition = recycler.getViewForPosition(pivotPosition);
        Intrinsics.checkNotNullExpressionValue(viewForPosition, "getViewForPosition(...)");
        layoutPivot(viewForPosition, layoutRequest);
        layoutRequest.clear();
        layoutRequest.direction = LayoutDirection.START;
        layoutRequest.currentItemDirection = layoutRequest.getDefaultItemDirection().opposite();
        layoutRequest.currentPosition = pivotPosition;
        layoutRequest.moveToNextPosition();
        layoutRequest.setCheckpoint(getLayoutInfo().getDecoratedStart(viewForPosition));
        layoutRequest.setFillSpace(Math.max(0, layoutRequest.getCheckpoint() - getLayoutInfo().getStartAfterPadding()));
        fill(layoutRequest, viewProvider, recycler, state);
        layoutRequest.clear();
        layoutRequest.direction = LayoutDirection.END;
        layoutRequest.currentItemDirection = layoutRequest.getDefaultItemDirection();
        layoutRequest.currentPosition = pivotPosition;
        layoutRequest.moveToNextPosition();
        layoutRequest.setCheckpoint(getLayoutInfo().getDecoratedEnd(viewForPosition));
        layoutRequest.setFillSpace(Math.max(0, getLayoutInfo().getEndAfterPadding() - layoutRequest.getCheckpoint()));
        fill(layoutRequest, viewProvider, recycler, state);
        return viewForPosition;
    }

    private final void layoutPivot(View pivotView, LayoutRequest layoutRequest) {
        getLayoutManager().addView(pivotView);
        updatePivotBounds(pivotView, getViewBounds(), layoutRequest);
        this.onChildLayoutListener.onChildCreated(pivotView);
        performLayout(pivotView, getViewBounds());
        if (DpadRecyclerView.INSTANCE.getDEBUG$dpadrecyclerview_release()) {
            Log.i(TAG, "Laid pivot " + getLayoutInfo().getLayoutPositionOf(pivotView) + " at: " + getViewBounds());
        }
        getViewBounds().setEmpty();
        this.onChildLayoutListener.onChildLaidOut(pivotView);
    }

    @Override // com.rubensousa.dpadrecyclerview.layoutmanager.layout.StructureEngineer
    public boolean layoutLoop(View pivotView, LayoutRequest layoutRequest, ViewProvider viewProvider, RecyclerView.Recycler recycler, RecyclerView.State state) {
        int layoutPositionOf;
        View childClosestToStart;
        int layoutPositionOf2;
        Intrinsics.checkNotNullParameter(pivotView, "pivotView");
        Intrinsics.checkNotNullParameter(layoutRequest, "layoutRequest");
        Intrinsics.checkNotNullParameter(viewProvider, "viewProvider");
        Intrinsics.checkNotNullParameter(recycler, "recycler");
        Intrinsics.checkNotNullParameter(state, "state");
        View childClosestToEnd = getLayoutInfo().getChildClosestToEnd();
        if (childClosestToEnd == null || (layoutPositionOf = getLayoutInfo().getLayoutPositionOf(childClosestToEnd)) == -1 || (childClosestToStart = getLayoutInfo().getChildClosestToStart()) == null || (layoutPositionOf2 = getLayoutInfo().getLayoutPositionOf(childClosestToStart)) == -1) {
            return false;
        }
        int max = Math.max(0, getLayoutInfo().getDecoratedStart(pivotView));
        int max2 = Math.max(0, getLayoutInfo().getEndAfterPadding() - getLayoutInfo().getDecoratedEnd(pivotView)) + getLayoutInfo().getDecoratedSize(pivotView);
        int decoratedSize = max + getLayoutInfo().getDecoratedSize(pivotView);
        int totalSpace = getLayoutInfo().getTotalSpace() + getLayoutInfo().getDecoratedSize(pivotView);
        layoutRequest.setRecyclingEnabled(true);
        layoutRequest.clear();
        layoutRequest.direction = LayoutDirection.END;
        layoutRequest.currentItemDirection = layoutRequest.getDefaultItemDirection();
        layoutRequest.currentPosition = layoutPositionOf;
        layoutRequest.moveToNextPosition();
        layoutRequest.setCheckpoint(getLayoutInfo().getDecoratedEnd(childClosestToEnd));
        layoutRequest.setFillSpace(decoratedSize);
        fill(layoutRequest, viewProvider, recycler, state);
        int checkpoint = layoutRequest.getCheckpoint();
        getViewRecycler().recycleFromEnd(recycler, layoutRequest);
        layoutRequest.clear();
        layoutRequest.direction = LayoutDirection.START;
        layoutRequest.currentItemDirection = layoutRequest.getDefaultItemDirection().opposite();
        layoutRequest.currentPosition = layoutPositionOf2;
        layoutRequest.moveToNextPosition();
        layoutRequest.setCheckpoint(getLayoutInfo().getDecoratedStart(childClosestToStart));
        layoutRequest.setFillSpace(max2);
        fill(layoutRequest, viewProvider, recycler, state);
        int checkpoint2 = layoutRequest.getCheckpoint();
        getViewRecycler().recycleFromStart(recycler, layoutRequest);
        layoutRequest.setRecyclingEnabled(false);
        if (checkpoint - checkpoint2 < totalSpace) {
            layoutRequest.setCurrentPosition(layoutPositionOf);
            layoutRequest.moveToNextPosition();
            return false;
        }
        layoutRequest.setIsLoopingAllowed(true);
        layoutRequest.clear();
        layoutRequest.direction = LayoutDirection.END;
        layoutRequest.currentItemDirection = layoutRequest.getDefaultItemDirection();
        layoutRequest.currentPosition = layoutPositionOf;
        layoutRequest.moveToNextPosition();
        layoutRequest.setCheckpoint(getLayoutInfo().getDecoratedEnd(childClosestToEnd));
        layoutRequest.setFillSpace(Math.max(0, getLayoutInfo().getEndAfterPadding() - getLayoutInfo().getDecoratedEnd(childClosestToEnd)));
        fill(layoutRequest, viewProvider, recycler, state);
        layoutRequest.clear();
        layoutRequest.direction = LayoutDirection.START;
        layoutRequest.currentItemDirection = layoutRequest.getDefaultItemDirection().opposite();
        layoutRequest.currentPosition = layoutPositionOf2;
        layoutRequest.moveToNextPosition();
        layoutRequest.setCheckpoint(getLayoutInfo().getDecoratedStart(childClosestToStart));
        layoutRequest.setFillSpace(Math.max(0, getLayoutInfo().getDecoratedStart(childClosestToStart) - getLayoutInfo().getStartAfterPadding()));
        fill(layoutRequest, viewProvider, recycler, state);
        return true;
    }

    @Override // com.rubensousa.dpadrecyclerview.layoutmanager.layout.StructureEngineer
    protected void layoutDisappearingViews(View firstView, View lastView, LayoutRequest layoutRequest, ScrapViewProvider scrapViewProvider, RecyclerView.Recycler recycler, RecyclerView.State state) {
        LayoutDirection layoutDirection;
        Intrinsics.checkNotNullParameter(firstView, "firstView");
        Intrinsics.checkNotNullParameter(lastView, "lastView");
        Intrinsics.checkNotNullParameter(layoutRequest, "layoutRequest");
        Intrinsics.checkNotNullParameter(scrapViewProvider, "scrapViewProvider");
        Intrinsics.checkNotNullParameter(recycler, "recycler");
        Intrinsics.checkNotNullParameter(state, "state");
        int layoutPositionOf = getLayoutInfo().getLayoutPositionOf(firstView);
        SparseArrayCompat<RecyclerView.ViewHolder> scrap = scrapViewProvider.getScrap();
        int size = scrap.size();
        int i = 0;
        int i2 = 0;
        int i3 = 0;
        while (i < size) {
            int keyAt = scrap.keyAt(i);
            RecyclerView.ViewHolder valueAt = scrap.valueAt(i);
            if ((keyAt < layoutPositionOf) != layoutRequest.getReverseLayout()) {
                layoutDirection = LayoutDirection.START;
            } else {
                layoutDirection = LayoutDirection.END;
            }
            int i4 = layoutPositionOf;
            if (layoutDirection == LayoutDirection.START) {
                LayoutInfo layoutInfo = getLayoutInfo();
                View itemView = valueAt.itemView;
                Intrinsics.checkNotNullExpressionValue(itemView, "itemView");
                i2 += layoutInfo.getDecoratedSize(itemView);
            } else {
                LayoutInfo layoutInfo2 = getLayoutInfo();
                View itemView2 = valueAt.itemView;
                Intrinsics.checkNotNullExpressionValue(itemView2, "itemView");
                i3 += layoutInfo2.getDecoratedSize(itemView2);
            }
            i++;
            layoutPositionOf = i4;
        }
        if (DpadRecyclerView.INSTANCE.getDEBUG$dpadrecyclerview_release()) {
            Log.i(TAG, "Scrap extra layout: " + i2 + ", " + i3);
        }
        if (i2 > 0) {
            int layoutPositionOf2 = getLayoutInfo().getLayoutPositionOf(firstView);
            layoutRequest.clear();
            layoutRequest.direction = LayoutDirection.START;
            layoutRequest.currentItemDirection = layoutRequest.getDefaultItemDirection().opposite();
            layoutRequest.currentPosition = layoutPositionOf2;
            layoutRequest.moveToNextPosition();
            layoutRequest.setRecyclingEnabled(false);
            layoutRequest.setCheckpoint(getLayoutInfo().getDecoratedStart(firstView));
            layoutRequest.setFillSpace(i2);
            scrapViewProvider.setNextLayoutPosition(layoutRequest);
            fill(layoutRequest, scrapViewProvider, recycler, state);
        }
        if (i3 > 0) {
            int layoutPositionOf3 = getLayoutInfo().getLayoutPositionOf(lastView);
            layoutRequest.clear();
            layoutRequest.direction = LayoutDirection.END;
            layoutRequest.currentItemDirection = layoutRequest.getDefaultItemDirection();
            layoutRequest.currentPosition = layoutPositionOf3;
            layoutRequest.moveToNextPosition();
            layoutRequest.setRecyclingEnabled(false);
            layoutRequest.setCheckpoint(getLayoutInfo().getDecoratedEnd(lastView));
            layoutRequest.setFillSpace(i3);
            scrapViewProvider.setNextLayoutPosition(layoutRequest);
            fill(layoutRequest, scrapViewProvider, recycler, state);
        }
    }

    private final void updatePivotBounds(View view, ViewBounds bounds, LayoutRequest layoutRequest) {
        int measuredWidth;
        getLayoutManager().measureChildWithMargins(view, 0, 0);
        if (layoutRequest.getIsVertical()) {
            measuredWidth = view.getMeasuredHeight();
        } else {
            measuredWidth = view.getMeasuredWidth();
        }
        int childStart = getLayoutAlignment().getChildStart(view);
        int i = measuredWidth + childStart;
        int startDecorationSize = childStart - getStartDecorationSize(view, layoutRequest);
        int endDecorationSize = i + getEndDecorationSize(view, layoutRequest);
        if (layoutRequest.getIsVertical()) {
            bounds.setTop(startDecorationSize);
            bounds.setBottom(endDecorationSize);
            applyHorizontalGravity(view, bounds, layoutRequest);
        } else {
            bounds.setLeft(startDecorationSize);
            bounds.setRight(endDecorationSize);
            applyVerticalGravity(view, bounds, layoutRequest);
        }
    }

    @Override // com.rubensousa.dpadrecyclerview.layoutmanager.layout.StructureEngineer
    protected void layoutBlock(LayoutRequest layoutRequest, ViewProvider viewProvider, RecyclerView.Recycler recycler, RecyclerView.State state, LayoutResult layoutResult) {
        int prepend;
        Intrinsics.checkNotNullParameter(layoutRequest, "layoutRequest");
        Intrinsics.checkNotNullParameter(viewProvider, "viewProvider");
        Intrinsics.checkNotNullParameter(recycler, "recycler");
        Intrinsics.checkNotNullParameter(state, "state");
        Intrinsics.checkNotNullParameter(layoutResult, "layoutResult");
        View next = viewProvider.next(layoutRequest, state);
        addView(next, layoutRequest);
        this.onChildLayoutListener.onChildCreated(next);
        getLayoutManager().measureChildWithMargins(next, 0, 0);
        if (layoutRequest.isAppending()) {
            prepend = append(next, getViewBounds(), layoutRequest);
        } else {
            prepend = prepend(next, getViewBounds(), layoutRequest);
        }
        layoutResult.setConsumedSpace(prepend);
        if (DpadRecyclerView.INSTANCE.getDEBUG$dpadrecyclerview_release()) {
            Log.i(TAG, "Laid out view " + getLayoutInfo().getLayoutPositionOf(next) + " at: " + getViewBounds());
        }
        if (shouldSkipSpaceOf(next)) {
            layoutResult.setSkipConsumption(true);
        }
        performLayout(next, getViewBounds());
        getViewBounds().setEmpty();
        this.onChildLayoutListener.onChildLaidOut(next);
        this.onChildLayoutListener.onBlockLaidOut();
    }

    private final int append(View view, ViewBounds bounds, LayoutRequest layoutRequest) {
        int decoratedSize = getLayoutInfo().getDecoratedSize(view);
        if (layoutRequest.getIsVertical()) {
            applyHorizontalGravity(view, bounds, layoutRequest);
            bounds.setTop(layoutRequest.getCheckpoint());
            bounds.setBottom(bounds.getTop() + decoratedSize);
        } else {
            applyVerticalGravity(view, bounds, layoutRequest);
            bounds.setLeft(layoutRequest.getCheckpoint());
            bounds.setRight(bounds.getLeft() + decoratedSize);
        }
        return decoratedSize;
    }

    private final int prepend(View view, ViewBounds bounds, LayoutRequest layoutRequest) {
        int decoratedSize = getLayoutInfo().getDecoratedSize(view);
        if (layoutRequest.getIsVertical()) {
            applyHorizontalGravity(view, bounds, layoutRequest);
            bounds.setBottom(layoutRequest.getCheckpoint());
            bounds.setTop(bounds.getBottom() - decoratedSize);
        } else {
            applyVerticalGravity(view, bounds, layoutRequest);
            bounds.setRight(layoutRequest.getCheckpoint());
            bounds.setLeft(bounds.getRight() - decoratedSize);
        }
        return decoratedSize;
    }

    private final void applyHorizontalGravity(View view, ViewBounds bounds, LayoutRequest layoutRequest) {
        int gravity;
        if (layoutRequest.getReverseLayout()) {
            gravity = Gravity.getAbsoluteGravity(layoutRequest.getGravity() & GravityCompat.RELATIVE_HORIZONTAL_GRAVITY_MASK, 1);
        } else {
            gravity = layoutRequest.getGravity() & 7;
        }
        if (gravity != 1) {
            if (gravity == 5) {
                int perpendicularDecoratedSize = getLayoutInfo().getPerpendicularDecoratedSize(view);
                bounds.setRight(getLayoutManager().getWidth() - getLayoutManager().getPaddingRight());
                bounds.setLeft(bounds.getRight() - perpendicularDecoratedSize);
                return;
            } else if (gravity != 17) {
                bounds.setLeft(getLayoutManager().getPaddingLeft());
                bounds.setRight(bounds.getLeft() + getLayoutInfo().getPerpendicularDecoratedSize(view));
                return;
            }
        }
        int perpendicularDecoratedSize2 = getLayoutInfo().getPerpendicularDecoratedSize(view);
        bounds.setLeft((getLayoutManager().getWidth() / 2) - (perpendicularDecoratedSize2 / 2));
        bounds.setRight(bounds.getLeft() + perpendicularDecoratedSize2);
    }

    private final void applyVerticalGravity(View view, ViewBounds bounds, LayoutRequest layoutRequest) {
        int gravity = layoutRequest.getGravity() & 112;
        if (gravity == 16 || gravity == 17) {
            int perpendicularDecoratedSize = getLayoutInfo().getPerpendicularDecoratedSize(view);
            bounds.setTop((getLayoutManager().getHeight() / 2) - (perpendicularDecoratedSize / 2));
            bounds.setBottom(bounds.getTop() + perpendicularDecoratedSize);
        } else if (gravity == 80) {
            int perpendicularDecoratedSize2 = getLayoutInfo().getPerpendicularDecoratedSize(view);
            bounds.setBottom(getLayoutManager().getHeight() - getLayoutManager().getPaddingBottom());
            bounds.setTop(bounds.getBottom() - perpendicularDecoratedSize2);
        } else {
            bounds.setTop(getLayoutManager().getPaddingTop());
            bounds.setBottom(bounds.getTop() + getLayoutInfo().getPerpendicularDecoratedSize(view));
        }
    }

    private final int getStartDecorationSize(View view, LayoutRequest layoutRequest) {
        if (layoutRequest.getIsVertical()) {
            return getLayoutManager().getTopDecorationHeight(view);
        }
        return getLayoutManager().getLeftDecorationWidth(view);
    }

    private final int getEndDecorationSize(View view, LayoutRequest layoutRequest) {
        if (layoutRequest.getIsVertical()) {
            return getLayoutManager().getBottomDecorationHeight(view);
        }
        return getLayoutManager().getRightDecorationWidth(view);
    }
}
