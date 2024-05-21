package com.rubensousa.dpadrecyclerview.layoutmanager.layout;

import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import androidx.recyclerview.widget.RecyclerView;
import com.rubensousa.dpadrecyclerview.DpadLoopDirection;
import com.rubensousa.dpadrecyclerview.DpadRecyclerView;
import com.rubensousa.dpadrecyclerview.ParentAlignment;
import com.rubensousa.dpadrecyclerview.layoutmanager.alignment.LayoutAlignment;
import com.rubensousa.dpadrecyclerview.layoutmanager.layout.provider.RecyclerViewProvider;
import com.rubensousa.dpadrecyclerview.layoutmanager.layout.provider.ScrapViewProvider;
import com.rubensousa.dpadrecyclerview.layoutmanager.layout.provider.ViewProvider;
import io.sentry.protocol.SentryThread;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: StructureEngineer.kt */
@Metadata(d1 = {"\u0000\u0096\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\b\u001e\b \u0018\u0000 `2\u00020\u0001:\u0001`B\u001d\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007¢\u0006\u0002\u0010\bJ\u0018\u0010#\u001a\u00020$2\u0006\u0010%\u001a\u00020&2\u0006\u0010\u0011\u001a\u00020\u0012H\u0004J$\u0010'\u001a\u00020$2\u0006\u0010(\u001a\u00020&2\n\u0010)\u001a\u00060*R\u00020+2\u0006\u0010,\u001a\u00020-H\u0002J,\u0010.\u001a\u00020/2\u0006\u00100\u001a\u0002012\n\u0010)\u001a\u00060*R\u00020+2\u0006\u0010,\u001a\u00020-2\u0006\u00102\u001a\u000203H\u0002J\u0006\u00104\u001a\u00020$J,\u00105\u001a\u0002032\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u00106\u001a\u0002072\n\u0010)\u001a\u00060*R\u00020+2\u0006\u0010,\u001a\u00020-H\u0004J\b\u00108\u001a\u00020$H\u0002J<\u00109\u001a\u00020$2\u0006\u0010:\u001a\u0002032\u0006\u0010;\u001a\u0002032\u0006\u0010<\u001a\u00020&2\u0006\u00102\u001a\u0002032\n\u0010)\u001a\u00060*R\u00020+2\u0006\u0010,\u001a\u00020-H\u0002J<\u0010=\u001a\u00020$2\u0006\u0010:\u001a\u0002032\u0006\u0010;\u001a\u0002032\u0006\u0010>\u001a\u00020&2\u0006\u00102\u001a\u0002032\n\u0010)\u001a\u00060*R\u00020+2\u0006\u0010,\u001a\u00020-H\u0002J4\u0010?\u001a\u00020&2\u0006\u0010@\u001a\u0002032\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u00106\u001a\u0002072\n\u0010)\u001a\u00060*R\u00020+2\u0006\u0010,\u001a\u00020-H$J\u0018\u0010A\u001a\u00020/2\u0006\u0010,\u001a\u00020-2\u0006\u0010B\u001a\u00020CH\u0002J4\u0010D\u001a\u00020$2\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u00106\u001a\u0002072\n\u0010)\u001a\u00060*R\u00020+2\u0006\u0010,\u001a\u00020-2\u0006\u0010\u0013\u001a\u00020\u0014H$J*\u0010E\u001a\u00020$2\u0006\u0010@\u001a\u0002032\u0006\u0010B\u001a\u00020C2\n\u0010)\u001a\u00060*R\u00020+2\u0006\u0010,\u001a\u00020-J<\u0010F\u001a\u00020$2\u0006\u0010G\u001a\u00020&2\u0006\u0010H\u001a\u00020&2\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0019\u001a\u00020\u001a2\n\u0010)\u001a\u00060*R\u00020+2\u0006\u0010,\u001a\u00020-H$J,\u0010I\u001a\u00020$2\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u00106\u001a\u0002072\n\u0010)\u001a\u00060*R\u00020+2\u0006\u0010,\u001a\u00020-H\u0002J4\u0010J\u001a\u00020/2\u0006\u0010(\u001a\u00020&2\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u00106\u001a\u0002072\n\u0010)\u001a\u00060*R\u00020+2\u0006\u0010,\u001a\u00020-H\u0016J\u001c\u0010K\u001a\u00020$2\n\u0010)\u001a\u00060*R\u00020+2\u0006\u0010,\u001a\u00020-H\u0002J\u0006\u0010L\u001a\u00020$J\u0010\u0010M\u001a\u00020$2\u0006\u0010N\u001a\u000203H\u0002J\u0010\u0010O\u001a\u00020$2\u0006\u0010N\u001a\u000203H\u0014J\b\u0010P\u001a\u00020$H\u0016J\b\u0010Q\u001a\u00020$H\u0016J\u0010\u0010R\u001a\u00020$2\u0006\u0010,\u001a\u00020-H\u0016J\u0018\u0010S\u001a\u00020$2\u0006\u0010%\u001a\u00020&2\u0006\u0010T\u001a\u00020\u001cH\u0004J,\u0010U\u001a\u00020$2\u0006\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0011\u001a\u00020\u00122\n\u0010)\u001a\u00060*R\u00020+2\u0006\u0010,\u001a\u00020-H\u0002J\"\u0010V\u001a\u00020$2\u0006\u0010@\u001a\u0002032\n\u0010)\u001a\u00060*R\u00020+2\u0006\u0010,\u001a\u00020-J\u0014\u0010W\u001a\u00020$2\n\u0010)\u001a\u00060*R\u00020+H\u0002J*\u0010X\u001a\u0002032\u0006\u0010N\u001a\u0002032\n\u0010)\u001a\u00060*R\u00020+2\u0006\u0010,\u001a\u00020-2\u0006\u0010Y\u001a\u00020/J(\u0010Z\u001a\u00020/2\u0006\u0010[\u001a\u0002032\u0006\u00106\u001a\u0002072\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010,\u001a\u00020-H\u0002J\u0010\u0010\\\u001a\u00020/2\u0006\u0010%\u001a\u00020&H\u0004J(\u0010]\u001a\u00020$2\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010,\u001a\u00020-2\u0006\u0010^\u001a\u0002032\u0006\u0010Y\u001a\u00020/H\u0002J\b\u0010_\u001a\u00020$H\u0002R\u000e\u0010\t\u001a\u00020\nX\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\u0006\u001a\u00020\u0007X\u0084\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\fR\u0014\u0010\u0004\u001a\u00020\u0005X\u0084\u0004¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\u000eR\u0014\u0010\u0002\u001a\u00020\u0003X\u0084\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\u0010R\u000e\u0010\u0011\u001a\u00020\u0012X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0013\u001a\u00020\u0014X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0015\u001a\u00020\u0016X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0017\u001a\u00020\u0018X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0019\u001a\u00020\u001aX\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\u001b\u001a\u00020\u001cX\u0084\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u001d\u0010\u001eR\u0014\u0010\u001f\u001a\u00020 X\u0084\u0004¢\u0006\b\n\u0000\u001a\u0004\b!\u0010\"¨\u0006a"}, d2 = {"Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/StructureEngineer;", "", "layoutManager", "Landroidx/recyclerview/widget/RecyclerView$LayoutManager;", "layoutInfo", "Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutInfo;", "layoutAlignment", "Lcom/rubensousa/dpadrecyclerview/layoutmanager/alignment/LayoutAlignment;", "(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutInfo;Lcom/rubensousa/dpadrecyclerview/layoutmanager/alignment/LayoutAlignment;)V", "extraLayoutSpaceCalculator", "Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/ExtraLayoutSpaceCalculator;", "getLayoutAlignment", "()Lcom/rubensousa/dpadrecyclerview/layoutmanager/alignment/LayoutAlignment;", "getLayoutInfo", "()Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutInfo;", "getLayoutManager", "()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;", "layoutRequest", "Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutRequest;", "layoutResult", "Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutResult;", "preLayoutRequest", "Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/PreLayoutRequest;", "recyclerViewProvider", "Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/provider/RecyclerViewProvider;", "scrapViewProvider", "Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/provider/ScrapViewProvider;", "viewBounds", "Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/ViewBounds;", "getViewBounds", "()Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/ViewBounds;", "viewRecycler", "Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/ViewRecycler;", "getViewRecycler", "()Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/ViewRecycler;", "addView", "", "view", "Landroid/view/View;", "alignPivot", "pivotView", "recycler", "Landroidx/recyclerview/widget/RecyclerView$Recycler;", "Landroidx/recyclerview/widget/RecyclerView;", SentryThread.JsonKeys.STATE, "Landroidx/recyclerview/widget/RecyclerView$State;", "alignToEdge", "", "alignment", "Lcom/rubensousa/dpadrecyclerview/ParentAlignment;", "remainingScroll", "", "clear", "fill", "viewProvider", "Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/provider/ViewProvider;", "finishLayout", "fixEndGap", "startEdge", "endEdge", "startView", "fixStartGap", "endView", "initLayout", "pivotPosition", "isNewLayoutRequired", "itemChanges", "Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/ItemChanges;", "layoutBlock", "layoutChildren", "layoutDisappearingViews", "firstView", "lastView", "layoutExtraSpace", "layoutLoop", "layoutScrap", "logChildren", "offsetChildren", "offset", "onChildrenOffset", "onLayoutCleared", "onLayoutFinished", "onLayoutStarted", "performLayout", "bounds", "preLayout", "preLayoutChildren", "removeInvisibleViews", "scrollBy", "recycleChildren", "shouldContinueLayout", "remainingSpace", "shouldSkipSpaceOf", "updateLayoutRequestForScroll", "scrollOffset", "updateLoopingState", "Companion", "dpadrecyclerview_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
/* loaded from: classes3.dex */
public abstract class StructureEngineer {
    public static final String TAG = "StructureEngineer";
    private final ExtraLayoutSpaceCalculator extraLayoutSpaceCalculator;
    private final LayoutAlignment layoutAlignment;
    private final LayoutInfo layoutInfo;
    private final RecyclerView.LayoutManager layoutManager;
    private final LayoutRequest layoutRequest;
    private final LayoutResult layoutResult;
    private final PreLayoutRequest preLayoutRequest;
    private final RecyclerViewProvider recyclerViewProvider;
    private final ScrapViewProvider scrapViewProvider;
    private final ViewBounds viewBounds;
    private final ViewRecycler viewRecycler;

    /* JADX INFO: Access modifiers changed from: protected */
    public final LayoutAlignment getLayoutAlignment() {
        return this.layoutAlignment;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final LayoutInfo getLayoutInfo() {
        return this.layoutInfo;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final RecyclerView.LayoutManager getLayoutManager() {
        return this.layoutManager;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final ViewBounds getViewBounds() {
        return this.viewBounds;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final ViewRecycler getViewRecycler() {
        return this.viewRecycler;
    }

    protected abstract View initLayout(int pivotPosition, LayoutRequest layoutRequest, ViewProvider viewProvider, RecyclerView.Recycler recycler, RecyclerView.State state);

    protected abstract void layoutBlock(LayoutRequest layoutRequest, ViewProvider viewProvider, RecyclerView.Recycler recycler, RecyclerView.State state, LayoutResult layoutResult);

    protected abstract void layoutDisappearingViews(View firstView, View lastView, LayoutRequest layoutRequest, ScrapViewProvider scrapViewProvider, RecyclerView.Recycler recycler, RecyclerView.State state);

    public boolean layoutLoop(View pivotView, LayoutRequest layoutRequest, ViewProvider viewProvider, RecyclerView.Recycler recycler, RecyclerView.State state) {
        Intrinsics.checkNotNullParameter(pivotView, "pivotView");
        Intrinsics.checkNotNullParameter(layoutRequest, "layoutRequest");
        Intrinsics.checkNotNullParameter(viewProvider, "viewProvider");
        Intrinsics.checkNotNullParameter(recycler, "recycler");
        Intrinsics.checkNotNullParameter(state, "state");
        return false;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void onChildrenOffset(int offset) {
    }

    public void onLayoutCleared() {
    }

    public void onLayoutFinished() {
    }

    public StructureEngineer(RecyclerView.LayoutManager layoutManager, LayoutInfo layoutInfo, LayoutAlignment layoutAlignment) {
        Intrinsics.checkNotNullParameter(layoutManager, "layoutManager");
        Intrinsics.checkNotNullParameter(layoutInfo, "layoutInfo");
        Intrinsics.checkNotNullParameter(layoutAlignment, "layoutAlignment");
        this.layoutManager = layoutManager;
        this.layoutInfo = layoutInfo;
        this.layoutAlignment = layoutAlignment;
        this.viewBounds = new ViewBounds(0, 0, 0, 0, 15, null);
        this.viewRecycler = new ViewRecycler(layoutManager, layoutInfo);
        this.extraLayoutSpaceCalculator = new ExtraLayoutSpaceCalculator(layoutInfo);
        this.preLayoutRequest = new PreLayoutRequest();
        this.layoutRequest = new LayoutRequest();
        this.layoutResult = new LayoutResult();
        this.recyclerViewProvider = new RecyclerViewProvider();
        this.scrapViewProvider = new ScrapViewProvider();
    }

    public void onLayoutStarted(RecyclerView.State state) {
        Intrinsics.checkNotNullParameter(state, "state");
        this.layoutRequest.init(state.getItemCount(), this.layoutInfo.getConfiguration().getGravity(), this.layoutInfo.isVertical(), this.layoutInfo.shouldReverseLayout(), this.layoutInfo.isInfinite(), this.layoutInfo.getConfiguration().getLoopDirection());
        this.layoutAlignment.setLayoutProperties(this.layoutRequest.getIsVertical(), this.layoutRequest.getReverseLayout());
        this.layoutRequest.setIsLoopingStart(this.layoutInfo.getIsLoopingStart());
    }

    public final void preLayoutChildren(int pivotPosition, RecyclerView.Recycler recycler, RecyclerView.State state) {
        View childAt;
        RecyclerView.ViewHolder childViewHolder;
        Intrinsics.checkNotNullParameter(recycler, "recycler");
        Intrinsics.checkNotNullParameter(state, "state");
        this.recyclerViewProvider.updateRecycler(recycler);
        int childCount = this.layoutInfo.getChildCount();
        View childAt2 = this.layoutInfo.getChildAt(0);
        if (childAt2 == null || (childAt = this.layoutInfo.getChildAt(childCount - 1)) == null) {
            return;
        }
        int oldPositionOf = this.layoutInfo.getOldPositionOf(childAt2);
        int oldPositionOf2 = this.layoutInfo.getOldPositionOf(childAt);
        this.preLayoutRequest.reset(oldPositionOf, childAt2, oldPositionOf2, childAt);
        for (int i = 0; i < childCount; i++) {
            View childAt3 = this.layoutManager.getChildAt(i);
            if (childAt3 != null && (childViewHolder = this.layoutInfo.getChildViewHolder(childAt3)) != null && this.layoutInfo.didViewHolderStateChange(childViewHolder, pivotPosition, oldPositionOf, oldPositionOf2, this.layoutRequest.getReverseLayout())) {
                this.preLayoutRequest.updateOffsets(this.layoutInfo.getDecoratedStart(childAt3), this.layoutInfo.getDecoratedEnd(childAt3));
            }
        }
        if (this.preLayoutRequest.getExtraLayoutSpace() > 0) {
            preLayout(this.preLayoutRequest, this.layoutRequest, recycler, state);
        }
        this.recyclerViewProvider.clearRecycler();
    }

    private final void preLayout(PreLayoutRequest preLayoutRequest, LayoutRequest layoutRequest, RecyclerView.Recycler recycler, RecyclerView.State state) {
        this.layoutManager.detachAndScrapAttachedViews(recycler);
        View firstView = preLayoutRequest.getFirstView();
        if (firstView != null) {
            int firstPosition = preLayoutRequest.getFirstPosition();
            layoutRequest.clear();
            layoutRequest.direction = LayoutDirection.START;
            layoutRequest.currentItemDirection = layoutRequest.getDefaultItemDirection().opposite();
            layoutRequest.currentPosition = firstPosition;
            layoutRequest.moveToNextPosition();
            layoutRequest.setCheckpoint(getLayoutInfo().getDecoratedStart(firstView));
            layoutRequest.setFillSpace(preLayoutRequest.getExtraLayoutSpace());
            fill(layoutRequest, this.recyclerViewProvider, recycler, state);
        }
        View lastView = preLayoutRequest.getLastView();
        if (lastView != null) {
            int lastPosition = preLayoutRequest.getLastPosition();
            layoutRequest.clear();
            layoutRequest.direction = LayoutDirection.END;
            layoutRequest.currentItemDirection = layoutRequest.getDefaultItemDirection();
            layoutRequest.currentPosition = lastPosition;
            layoutRequest.moveToNextPosition();
            layoutRequest.setCheckpoint(getLayoutInfo().getDecoratedEnd(lastView));
            layoutRequest.setFillSpace(preLayoutRequest.getExtraLayoutSpace());
            fill(layoutRequest, this.recyclerViewProvider, recycler, state);
        }
    }

    public final void layoutChildren(int pivotPosition, ItemChanges itemChanges, RecyclerView.Recycler recycler, RecyclerView.State state) {
        Intrinsics.checkNotNullParameter(itemChanges, "itemChanges");
        Intrinsics.checkNotNullParameter(recycler, "recycler");
        Intrinsics.checkNotNullParameter(state, "state");
        if (!isNewLayoutRequired(state, itemChanges)) {
            if (DpadRecyclerView.INSTANCE.getDEBUG$dpadrecyclerview_release()) {
                Log.i(TAG, "layout changes are out of bounds, so skip full layout: " + itemChanges);
            }
            finishLayout();
            return;
        }
        this.recyclerViewProvider.updateRecycler(recycler);
        this.layoutManager.detachAndScrapAttachedViews(recycler);
        View initLayout = initLayout(pivotPosition, this.layoutRequest, this.recyclerViewProvider, recycler, state);
        if (this.layoutRequest.getLoopDirection() != DpadLoopDirection.NONE) {
            LayoutRequest layoutRequest = this.layoutRequest;
            layoutRequest.setIsLoopingAllowed(layoutLoop(initLayout, layoutRequest, this.recyclerViewProvider, recycler, state));
            updateLoopingState();
        }
        alignPivot(initLayout, recycler, state);
        layoutScrap(recycler, state);
        if (this.layoutRequest.getLoopDirection() == DpadLoopDirection.NONE) {
            updateLoopingState();
            layoutExtraSpace(this.layoutRequest, this.recyclerViewProvider, recycler, state);
        }
        if (!state.willRunSimpleAnimations() && !state.willRunPredictiveAnimations()) {
            removeInvisibleViews(recycler);
        }
        finishLayout();
    }

    private final void layoutExtraSpace(LayoutRequest layoutRequest, ViewProvider viewProvider, RecyclerView.Recycler recycler, RecyclerView.State state) {
        View childClosestToStart = this.layoutInfo.getChildClosestToStart();
        if (childClosestToStart == null) {
            return;
        }
        int layoutPositionOf = this.layoutInfo.getLayoutPositionOf(childClosestToStart);
        layoutRequest.clear();
        layoutRequest.direction = LayoutDirection.START;
        layoutRequest.currentItemDirection = layoutRequest.getDefaultItemDirection().opposite();
        layoutRequest.currentPosition = layoutPositionOf;
        layoutRequest.moveToNextPosition();
        this.extraLayoutSpaceCalculator.update(layoutRequest, state);
        layoutRequest.setCheckpoint(getLayoutInfo().getDecoratedStart(childClosestToStart));
        layoutRequest.setFillSpace(layoutRequest.getExtraLayoutSpaceStart());
        fill(layoutRequest, viewProvider, recycler, state);
        View childClosestToEnd = this.layoutInfo.getChildClosestToEnd();
        if (childClosestToEnd == null) {
            return;
        }
        int layoutPositionOf2 = this.layoutInfo.getLayoutPositionOf(childClosestToEnd);
        layoutRequest.clear();
        layoutRequest.direction = LayoutDirection.END;
        layoutRequest.currentItemDirection = layoutRequest.getDefaultItemDirection();
        layoutRequest.currentPosition = layoutPositionOf2;
        layoutRequest.moveToNextPosition();
        this.extraLayoutSpaceCalculator.update(layoutRequest, state);
        layoutRequest.setCheckpoint(getLayoutInfo().getDecoratedEnd(childClosestToEnd));
        layoutRequest.setFillSpace(layoutRequest.getExtraLayoutSpaceEnd());
        fill(layoutRequest, viewProvider, recycler, state);
    }

    private final void finishLayout() {
        this.layoutInfo.updateLoopingState(this.layoutRequest.getIsLoopingStart(), this.layoutRequest.getIsLoopingAllowed());
        this.recyclerViewProvider.clearRecycler();
        this.layoutAlignment.updateScrollLimits();
        this.preLayoutRequest.clear();
    }

    private final void layoutScrap(RecyclerView.Recycler recycler, RecyclerView.State state) {
        View childAt = this.layoutManager.getChildAt(0);
        RecyclerView.LayoutManager layoutManager = this.layoutManager;
        View childAt2 = layoutManager.getChildAt(layoutManager.getChildCount() - 1);
        if (childAt == null || childAt2 == null || !state.willRunPredictiveAnimations()) {
            return;
        }
        Intrinsics.checkNotNullExpressionValue(recycler.getScrapList(), "getScrapList(...)");
        if (!r2.isEmpty()) {
            this.layoutRequest.setLayingOutScrap(true);
            this.scrapViewProvider.updateScrap(recycler.getScrapList());
            layoutDisappearingViews(childAt, childAt2, this.layoutRequest, this.scrapViewProvider, recycler, state);
            this.scrapViewProvider.updateScrap(null);
            this.layoutRequest.setLayingOutScrap(false);
        }
    }

    private final boolean isNewLayoutRequired(RecyclerView.State state, ItemChanges itemChanges) {
        boolean isOutOfBounds;
        if (!state.didStructureChange() && itemChanges.isValid() && this.preLayoutRequest.getExtraLayoutSpace() <= 0 && this.layoutRequest.getLoopDirection() == DpadLoopDirection.NONE) {
            int findFirstAddedPosition = this.layoutInfo.findFirstAddedPosition();
            int findLastAddedPosition = this.layoutInfo.findLastAddedPosition();
            if (findFirstAddedPosition != -1 && findLastAddedPosition != -1) {
                if (!this.layoutRequest.getReverseLayout()) {
                    isOutOfBounds = itemChanges.isOutOfBounds(findFirstAddedPosition, findLastAddedPosition);
                } else {
                    isOutOfBounds = itemChanges.isOutOfBounds(findLastAddedPosition, findFirstAddedPosition);
                }
                return !isOutOfBounds;
            }
        }
        return true;
    }

    public final int scrollBy(int offset, RecyclerView.Recycler recycler, RecyclerView.State state, boolean recycleChildren) {
        Intrinsics.checkNotNullParameter(recycler, "recycler");
        Intrinsics.checkNotNullParameter(state, "state");
        if (recycleChildren) {
            this.recyclerViewProvider.updateRecycler(recycler);
        }
        updateLayoutRequestForScroll(this.layoutRequest, state, offset, recycleChildren);
        offsetChildren(-offset);
        int fill = fill(this.layoutRequest, this.recyclerViewProvider, recycler, state);
        if (recycleChildren) {
            this.recyclerViewProvider.clearRecycler();
        }
        if (fill == 0) {
            this.layoutAlignment.updateScrollLimits();
        }
        this.layoutRequest.setRecyclingEnabled(false);
        updateLoopingState();
        return offset;
    }

    private final void updateLayoutRequestForScroll(LayoutRequest layoutRequest, RecyclerView.State state, int scrollOffset, boolean recycleChildren) {
        int abs = Math.abs(scrollOffset);
        layoutRequest.setRecyclingEnabled(recycleChildren);
        if (scrollOffset < 0) {
            View childClosestToStart = this.layoutInfo.getChildClosestToStart();
            if (childClosestToStart == null) {
                return;
            }
            int layoutPositionOf = this.layoutInfo.getLayoutPositionOf(childClosestToStart);
            layoutRequest.clear();
            layoutRequest.direction = LayoutDirection.START;
            layoutRequest.currentItemDirection = layoutRequest.getDefaultItemDirection().opposite();
            layoutRequest.currentPosition = layoutPositionOf;
            layoutRequest.moveToNextPosition();
            layoutRequest.setCheckpoint(getLayoutInfo().getDecoratedStart(childClosestToStart));
            this.extraLayoutSpaceCalculator.update(layoutRequest, state);
            layoutRequest.setFillSpace((abs + layoutRequest.getExtraLayoutSpaceStart()) - Math.max(0, getLayoutInfo().getStartAfterPadding() - layoutRequest.getCheckpoint()));
            return;
        }
        View childClosestToEnd = this.layoutInfo.getChildClosestToEnd();
        if (childClosestToEnd == null) {
            return;
        }
        int layoutPositionOf2 = this.layoutInfo.getLayoutPositionOf(childClosestToEnd);
        layoutRequest.clear();
        layoutRequest.direction = LayoutDirection.END;
        layoutRequest.currentItemDirection = layoutRequest.getDefaultItemDirection();
        layoutRequest.currentPosition = layoutPositionOf2;
        layoutRequest.moveToNextPosition();
        layoutRequest.setCheckpoint(getLayoutInfo().getDecoratedEnd(childClosestToEnd));
        this.extraLayoutSpaceCalculator.update(layoutRequest, state);
        layoutRequest.setFillSpace((abs + layoutRequest.getExtraLayoutSpaceEnd()) - Math.max(0, layoutRequest.getCheckpoint() - getLayoutInfo().getEndAfterPadding()));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final int fill(LayoutRequest layoutRequest, ViewProvider viewProvider, RecyclerView.Recycler recycler, RecyclerView.State state) {
        Intrinsics.checkNotNullParameter(layoutRequest, "layoutRequest");
        Intrinsics.checkNotNullParameter(viewProvider, "viewProvider");
        Intrinsics.checkNotNullParameter(recycler, "recycler");
        Intrinsics.checkNotNullParameter(state, "state");
        int fillSpace = layoutRequest.getFillSpace();
        this.layoutResult.reset();
        this.viewRecycler.recycleByLayoutRequest(recycler, layoutRequest);
        int i = 0;
        while (shouldContinueLayout(fillSpace, viewProvider, layoutRequest, state)) {
            layoutBlock(layoutRequest, viewProvider, recycler, state, this.layoutResult);
            layoutRequest.offsetCheckpoint(this.layoutResult.getConsumedSpace() * layoutRequest.getDirection().getValue());
            i += this.layoutResult.getConsumedSpace();
            if (!this.layoutResult.getSkipConsumption()) {
                fillSpace -= this.layoutResult.getConsumedSpace();
            }
            if (this.layoutResult.getConsumedSpace() > 0) {
                this.viewRecycler.recycleByLayoutRequest(recycler, layoutRequest);
            }
            this.layoutResult.reset();
        }
        this.viewRecycler.recycleByLayoutRequest(recycler, layoutRequest);
        return i;
    }

    private final void updateLoopingState() {
        if (!this.layoutRequest.getIsLoopingAllowed() || this.layoutManager.getChildCount() == 0) {
            this.layoutRequest.setIsLoopingStart(false);
            this.layoutInfo.updateLoopingState(false, false);
        } else {
            if (this.layoutRequest.getLoopDirection() == DpadLoopDirection.MIN_MAX) {
                this.layoutRequest.setIsLoopingStart(true);
                this.layoutInfo.updateLoopingState(true, true);
                return;
            }
            int childCount = !this.layoutRequest.getReverseLayout() ? 0 : this.layoutManager.getChildCount() - 1;
            View findViewByPosition = this.layoutInfo.findViewByPosition(0);
            if (findViewByPosition == null) {
                this.layoutRequest.setIsLoopingStart(false);
            } else {
                this.layoutRequest.setIsLoopingStart(this.layoutManager.getChildAt(childCount) != findViewByPosition);
            }
            this.layoutInfo.updateLoopingState(this.layoutRequest.getIsLoopingStart(), this.layoutRequest.getIsLoopingAllowed());
        }
    }

    private final void removeInvisibleViews(RecyclerView.Recycler recycler) {
        this.layoutRequest.setRecyclingEnabled(true);
        this.viewRecycler.recycleFromStart(recycler, this.layoutRequest);
        this.viewRecycler.recycleFromEnd(recycler, this.layoutRequest);
    }

    private final void offsetChildren(int offset) {
        this.layoutInfo.getOrientationHelper().offsetChildren(offset);
        this.layoutRequest.offsetCheckpoint(offset);
        onChildrenOffset(offset);
    }

    public final void logChildren() {
        Log.i(TAG, "Children laid out " + this.layoutManager.getChildCount() + ':');
        int childCount = this.layoutManager.getChildCount();
        for (int i = 0; i < childCount; i++) {
            View childAt = this.layoutManager.getChildAt(i);
            Intrinsics.checkNotNull(childAt);
            Log.i(TAG, "View " + this.layoutInfo.getLayoutPositionOf(childAt) + ": [" + this.layoutManager.getDecoratedLeft(childAt) + ", " + this.layoutManager.getDecoratedTop(childAt) + ", " + this.layoutManager.getDecoratedRight(childAt) + ", " + this.layoutManager.getDecoratedBottom(childAt) + ']');
        }
    }

    private final void alignPivot(View pivotView, RecyclerView.Recycler recycler, RecyclerView.State state) {
        int remainingScrollHorizontal;
        if (this.layoutRequest.getIsVertical()) {
            remainingScrollHorizontal = state.getRemainingScrollVertical();
        } else {
            remainingScrollHorizontal = state.getRemainingScrollHorizontal();
        }
        if (Math.abs(remainingScrollHorizontal) > this.layoutInfo.getTotalSpace()) {
            remainingScrollHorizontal = 0;
        }
        ParentAlignment parentAlignment = this.layoutAlignment.getParentAlignment();
        if (parentAlignment.getEdge() != ParentAlignment.Edge.NONE && alignToEdge(parentAlignment, recycler, state, remainingScrollHorizontal)) {
            this.layoutAlignment.updateScrollLimits();
        } else {
            scrollBy(this.layoutAlignment.calculateScrollForAlignment(pivotView) - remainingScrollHorizontal, recycler, state, false);
        }
    }

    private final boolean alignToEdge(ParentAlignment alignment, RecyclerView.Recycler recycler, RecyclerView.State state, int remainingScroll) {
        View childClosestToEnd;
        View childClosestToStart = this.layoutInfo.getChildClosestToStart();
        if (childClosestToStart == null || (childClosestToEnd = this.layoutInfo.getChildClosestToEnd()) == null) {
            return false;
        }
        int decoratedStart = this.layoutInfo.getDecoratedStart(childClosestToStart);
        int decoratedEnd = this.layoutInfo.getDecoratedEnd(childClosestToEnd);
        if (decoratedStart <= this.layoutInfo.getStartAfterPadding() && decoratedEnd >= this.layoutInfo.getEndAfterPadding()) {
            return false;
        }
        ParentAlignment.Edge edge = alignment.getEdge();
        boolean preferKeylineOverEdge = alignment.getPreferKeylineOverEdge();
        if (edge == ParentAlignment.Edge.MIN || edge == ParentAlignment.Edge.MIN_MAX) {
            if (!this.layoutRequest.getReverseLayout() && decoratedStart >= this.layoutInfo.getStartAfterPadding()) {
                if (preferKeylineOverEdge) {
                    return false;
                }
                scrollBy(decoratedStart, recycler, state, false);
                return false;
            }
            if (this.layoutRequest.getReverseLayout() && decoratedEnd <= this.layoutInfo.getEndAfterPadding()) {
                if (preferKeylineOverEdge) {
                    return false;
                }
                scrollBy(-(this.layoutInfo.getEndAfterPadding() - decoratedEnd), recycler, state, false);
                return false;
            }
        }
        if (edge == ParentAlignment.Edge.MIN || edge == ParentAlignment.Edge.MIN_MAX) {
            if (!this.layoutRequest.getReverseLayout() && decoratedStart < this.layoutInfo.getStartAfterPadding()) {
                int endAfterPadding = this.layoutInfo.getEndAfterPadding() - decoratedEnd;
                if (endAfterPadding > 0) {
                    if (edge == ParentAlignment.Edge.MIN) {
                        return false;
                    }
                    LayoutRequest layoutRequest = this.layoutRequest;
                    int layoutPositionOf = this.layoutInfo.getLayoutPositionOf(childClosestToStart);
                    layoutRequest.clear();
                    layoutRequest.direction = LayoutDirection.START;
                    layoutRequest.currentItemDirection = layoutRequest.getDefaultItemDirection().opposite();
                    layoutRequest.currentPosition = layoutPositionOf;
                    layoutRequest.moveToNextPosition();
                    layoutRequest.setCheckpoint(decoratedStart);
                    layoutRequest.setFillSpace(endAfterPadding);
                    decoratedStart = Math.max(decoratedStart - Math.min(fill(this.layoutRequest, this.recyclerViewProvider, recycler, state), endAfterPadding), -endAfterPadding);
                }
                scrollBy(decoratedStart - remainingScroll, recycler, state, false);
                return true;
            }
            if (this.layoutRequest.getReverseLayout() && decoratedEnd > this.layoutInfo.getEndAfterPadding()) {
                int startAfterPadding = decoratedStart - this.layoutInfo.getStartAfterPadding();
                int endAfterPadding2 = decoratedEnd - this.layoutInfo.getEndAfterPadding();
                if (startAfterPadding > 0) {
                    if (edge == ParentAlignment.Edge.MIN) {
                        return false;
                    }
                    LayoutRequest layoutRequest2 = this.layoutRequest;
                    int layoutPositionOf2 = this.layoutInfo.getLayoutPositionOf(childClosestToEnd);
                    layoutRequest2.clear();
                    layoutRequest2.direction = LayoutDirection.END;
                    layoutRequest2.currentItemDirection = layoutRequest2.getDefaultItemDirection();
                    layoutRequest2.currentPosition = layoutPositionOf2;
                    layoutRequest2.moveToNextPosition();
                    layoutRequest2.setCheckpoint(decoratedEnd);
                    layoutRequest2.setFillSpace(startAfterPadding);
                    endAfterPadding2 = Math.min(endAfterPadding2 + Math.min(fill(this.layoutRequest, this.recyclerViewProvider, recycler, state), startAfterPadding), startAfterPadding);
                }
                scrollBy(endAfterPadding2 - remainingScroll, recycler, state, false);
                return true;
            }
        }
        if (edge == ParentAlignment.Edge.MAX) {
            if (!this.layoutRequest.getReverseLayout() && decoratedEnd <= this.layoutInfo.getEndAfterPadding()) {
                if (decoratedStart >= this.layoutInfo.getStartAfterPadding() && preferKeylineOverEdge) {
                    return false;
                }
                fixEndGap(decoratedStart, decoratedEnd, childClosestToStart, remainingScroll, recycler, state);
                return true;
            }
            if (this.layoutRequest.getReverseLayout() && decoratedStart >= this.layoutInfo.getStartAfterPadding()) {
                if (decoratedEnd <= this.layoutInfo.getEndAfterPadding() && preferKeylineOverEdge) {
                    return false;
                }
                fixStartGap(decoratedStart, decoratedEnd, childClosestToEnd, remainingScroll, recycler, state);
                return true;
            }
        }
        return false;
    }

    private final void fixEndGap(int startEdge, int endEdge, View startView, int remainingScroll, RecyclerView.Recycler recycler, RecyclerView.State state) {
        int max = Math.max(0, this.layoutInfo.getEndAfterPadding() - endEdge);
        LayoutRequest layoutRequest = this.layoutRequest;
        int layoutPositionOf = this.layoutInfo.getLayoutPositionOf(startView);
        layoutRequest.clear();
        layoutRequest.direction = LayoutDirection.START;
        layoutRequest.currentItemDirection = layoutRequest.getDefaultItemDirection().opposite();
        layoutRequest.currentPosition = layoutPositionOf;
        layoutRequest.moveToNextPosition();
        layoutRequest.setCheckpoint(startEdge);
        layoutRequest.setFillSpace(max);
        scrollBy(Math.max(-max, (-fill(this.layoutRequest, this.recyclerViewProvider, recycler, state)) + Math.min(0, startEdge)) - remainingScroll, recycler, state, false);
    }

    private final void fixStartGap(int startEdge, int endEdge, View endView, int remainingScroll, RecyclerView.Recycler recycler, RecyclerView.State state) {
        int max = Math.max(0, startEdge - this.layoutInfo.getStartAfterPadding());
        LayoutRequest layoutRequest = this.layoutRequest;
        int layoutPositionOf = this.layoutInfo.getLayoutPositionOf(endView);
        layoutRequest.clear();
        layoutRequest.direction = LayoutDirection.END;
        layoutRequest.currentItemDirection = layoutRequest.getDefaultItemDirection();
        layoutRequest.currentPosition = layoutPositionOf;
        layoutRequest.moveToNextPosition();
        layoutRequest.setCheckpoint(endEdge);
        layoutRequest.setFillSpace(max);
        scrollBy(Math.min(max, fill(this.layoutRequest, this.recyclerViewProvider, recycler, state) + Math.max(0, endEdge - this.layoutInfo.getEndAfterPadding())) - remainingScroll, recycler, state, false);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void addView(View view, LayoutRequest layoutRequest) {
        Intrinsics.checkNotNullParameter(view, "view");
        Intrinsics.checkNotNullParameter(layoutRequest, "layoutRequest");
        if (!layoutRequest.getIsLayingOutScrap()) {
            if (layoutRequest.isAppending()) {
                this.layoutManager.addView(view);
                return;
            } else {
                this.layoutManager.addView(view, 0);
                return;
            }
        }
        if (layoutRequest.isAppending()) {
            this.layoutManager.addDisappearingView(view);
        } else {
            this.layoutManager.addDisappearingView(view, 0);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final boolean shouldSkipSpaceOf(View view) {
        Intrinsics.checkNotNullParameter(view, "view");
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        Intrinsics.checkNotNull(layoutParams, "null cannot be cast to non-null type androidx.recyclerview.widget.RecyclerView.LayoutParams");
        RecyclerView.LayoutParams layoutParams2 = (RecyclerView.LayoutParams) layoutParams;
        return layoutParams2.isItemRemoved() || layoutParams2.isItemChanged();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void performLayout(View view, ViewBounds bounds) {
        Intrinsics.checkNotNullParameter(view, "view");
        Intrinsics.checkNotNullParameter(bounds, "bounds");
        this.layoutManager.layoutDecoratedWithMargins(view, bounds.getLeft(), bounds.getTop(), bounds.getRight(), bounds.getBottom());
    }

    public final void clear() {
        this.layoutManager.removeAllViews();
        this.layoutRequest.clear();
    }

    private final boolean shouldContinueLayout(int remainingSpace, ViewProvider viewProvider, LayoutRequest layoutRequest, RecyclerView.State state) {
        return viewProvider.hasNext(layoutRequest, state) && (remainingSpace > 0 || layoutRequest.getIsInfinite());
    }
}
