package com.rubensousa.dpadrecyclerview.layoutmanager.layout.grid;

import android.graphics.Rect;
import android.util.Log;
import android.view.View;
import androidx.collection.SparseArrayCompat;
import androidx.recyclerview.widget.RecyclerView;
import com.rubensousa.dpadrecyclerview.DpadRecyclerView;
import com.rubensousa.dpadrecyclerview.layoutmanager.DpadLayoutParams;
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
import io.sentry.SentryBaseEvent;
import io.sentry.protocol.SentryThread;
import kotlin.Metadata;
import kotlin.collections.ArraysKt;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: GridLayoutEngineer.kt */
@Metadata(d1 = {"\u0000¤\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0011\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\u0006\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u000e\n\u0002\u0018\u0002\n\u0002\b\t\b\u0000\u0018\u0000 `2\u00020\u0001:\u0001`B%\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\b\u001a\u00020\t¢\u0006\u0002\u0010\nJ \u0010\u0019\u001a\u00020\u00122\u0006\u0010\u001a\u001a\u00020\u001b2\u0006\u0010\u001c\u001a\u00020\u00122\u0006\u0010\u001d\u001a\u00020\u0012H\u0002J \u0010\u001e\u001a\u00020\u00122\u0006\u0010\u001f\u001a\u00020\u00122\u0006\u0010 \u001a\u00020\u00102\u0006\u0010!\u001a\u00020\u001bH\u0002J\u0010\u0010\"\u001a\u00020\u00152\u0006\u0010#\u001a\u00020\u0012H\u0002J$\u0010$\u001a\u00020\u00122\n\u0010%\u001a\u00060&R\u00020'2\u0006\u0010(\u001a\u00020)2\u0006\u0010*\u001a\u00020\u0012H\u0002J$\u0010+\u001a\u00020\u00122\n\u0010%\u001a\u00060&R\u00020'2\u0006\u0010(\u001a\u00020)2\u0006\u0010*\u001a\u00020\u0012H\u0002J$\u0010,\u001a\u00020\u00122\n\u0010%\u001a\u00060&R\u00020'2\u0006\u0010(\u001a\u00020)2\u0006\u0010*\u001a\u00020\u0012H\u0002J<\u0010-\u001a\u00020\u00122\u0006\u0010!\u001a\u00020\u001b2\u0006\u0010.\u001a\u00020/2\n\u0010%\u001a\u00060&R\u00020'2\u0006\u0010(\u001a\u00020)2\u0006\u0010\u001c\u001a\u00020\u00122\u0006\u00100\u001a\u00020\u0012H\u0002J4\u00101\u001a\u00020\u00152\u0006\u00102\u001a\u00020\u00122\u0006\u0010!\u001a\u00020\u001b2\u0006\u0010.\u001a\u00020/2\n\u0010%\u001a\u00060&R\u00020'2\u0006\u0010(\u001a\u00020)H\u0014J \u00103\u001a\u0002042\u0006\u00105\u001a\u00020\u00122\u0006\u00106\u001a\u00020\u00122\u0006\u00107\u001a\u00020\u0012H\u0002J0\u00108\u001a\u0002042\u0006\u0010\u001f\u001a\u00020\u00122\u0006\u0010.\u001a\u00020/2\u0006\u0010!\u001a\u00020\u001b2\u0006\u0010(\u001a\u00020)2\u0006\u00109\u001a\u00020\u0012H\u0002J4\u0010:\u001a\u00020;2\u0006\u0010!\u001a\u00020\u001b2\u0006\u0010.\u001a\u00020/2\n\u0010%\u001a\u00060&R\u00020'2\u0006\u0010(\u001a\u00020)2\u0006\u0010<\u001a\u00020=H\u0014J<\u0010>\u001a\u00020;2\u0006\u0010?\u001a\u00020\u00152\u0006\u0010@\u001a\u00020\u00152\u0006\u0010!\u001a\u00020\u001b2\u0006\u0010A\u001a\u00020B2\n\u0010%\u001a\u00060&R\u00020'2\u0006\u0010(\u001a\u00020)H\u0014J4\u0010C\u001a\u00020\u00152\u0006\u00102\u001a\u00020\u00122\u0006\u0010!\u001a\u00020\u001b2\u0006\u0010.\u001a\u00020/2\n\u0010%\u001a\u00060&R\u00020'2\u0006\u0010(\u001a\u00020)H\u0002J(\u0010\u000f\u001a\u0002042\u0006\u0010\u001f\u001a\u00020\u00122\u0006\u0010 \u001a\u00020\u00102\u0006\u0010D\u001a\u00020E2\u0006\u0010!\u001a\u00020\u001bH\u0002J8\u0010F\u001a\u00020;2\u0006\u0010G\u001a\u00020\u00152\u0006\u0010 \u001a\u00020\u00102\u0006\u0010H\u001a\u00020I2\u0006\u0010J\u001a\u00020\u00122\u0006\u0010K\u001a\u0002042\u0006\u0010!\u001a\u00020\u001bH\u0002J0\u0010L\u001a\u00020;2\u0006\u0010M\u001a\u00020\u00152\u0006\u0010H\u001a\u00020I2\u0006\u0010N\u001a\u00020\u00122\u0006\u0010O\u001a\u00020\u00122\u0006\u0010K\u001a\u000204H\u0002J\u0010\u0010P\u001a\u00020;2\u0006\u0010Q\u001a\u00020\u0012H\u0014J\b\u0010R\u001a\u00020;H\u0016J\b\u0010S\u001a\u00020;H\u0016J\u0010\u0010T\u001a\u00020;2\u0006\u0010(\u001a\u00020)H\u0016J \u0010U\u001a\u00020;2\u0006\u0010 \u001a\u00020\u00102\u0006\u0010\u001f\u001a\u00020\u00122\u0006\u0010!\u001a\u00020\u001bH\u0002J(\u0010V\u001a\u0002042\u0006\u0010M\u001a\u00020\u00152\u0006\u0010N\u001a\u00020\u00122\u0006\u0010O\u001a\u00020\u00122\u0006\u0010W\u001a\u00020XH\u0002J(\u0010Y\u001a\u0002042\u0006\u0010M\u001a\u00020\u00152\u0006\u0010N\u001a\u00020\u00122\u0006\u0010O\u001a\u00020\u00122\u0006\u0010W\u001a\u00020XH\u0002J0\u0010Z\u001a\u00020;2\u0006\u0010[\u001a\u0002042\u0006\u0010\\\u001a\u0002042\u0006\u0010]\u001a\u00020\u00122\u0006\u0010^\u001a\u00020\u00122\u0006\u0010D\u001a\u00020EH\u0002J(\u0010_\u001a\u00020;2\u0006\u0010G\u001a\u00020\u00152\u0006\u0010!\u001a\u00020\u001b2\u0006\u0010H\u001a\u00020I2\u0006\u0010D\u001a\u00020EH\u0002R\u000e\u0010\u000b\u001a\u00020\fX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u000eX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u0010X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\tX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\u0012X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0013\u001a\u00020\u0010X\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0014\u001a\u0004\u0018\u00010\u0015X\u0082\u000e¢\u0006\u0002\n\u0000R\u0018\u0010\u0016\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00150\u0017X\u0082\u0004¢\u0006\u0004\n\u0002\u0010\u0018¨\u0006a"}, d2 = {"Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/grid/GridLayoutEngineer;", "Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/StructureEngineer;", "layoutManager", "Landroidx/recyclerview/widget/RecyclerView$LayoutManager;", "layoutInfo", "Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutInfo;", "layoutAlignment", "Lcom/rubensousa/dpadrecyclerview/layoutmanager/alignment/LayoutAlignment;", "onChildLayoutListener", "Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/OnChildLayoutListener;", "(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutInfo;Lcom/rubensousa/dpadrecyclerview/layoutmanager/alignment/LayoutAlignment;Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/OnChildLayoutListener;)V", "gridState", "Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/grid/GridState;", "insets", "Landroid/graphics/Rect;", "layoutRow", "Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/grid/GridRow;", "pivotLayoutPosition", "", "pivotRow", "pivotView", "Landroid/view/View;", "rowViews", "", "[Landroid/view/View;", "calculateAvailableSpans", SentryBaseEvent.JsonKeys.REQUEST, "Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutRequest;", "anchorSpanIndex", "anchorSpanSize", "fillRow", "viewCount", "row", "layoutRequest", "getRowViewAt", "index", "getSpanGroupIndex", "recycler", "Landroidx/recyclerview/widget/RecyclerView$Recycler;", "Landroidx/recyclerview/widget/RecyclerView;", SentryThread.JsonKeys.STATE, "Landroidx/recyclerview/widget/RecyclerView$State;", "position", "getSpanIndex", "getSpanSize", "getViewsForRow", "viewProvider", "Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/provider/ViewProvider;", "availableSpans", "initLayout", "pivotPosition", "isMeasurementUpToDate", "", "childSize", "spec", "dimension", "isRowIncomplete", "remainingSpans", "layoutBlock", "", "layoutResult", "Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutResult;", "layoutDisappearingViews", "firstView", "lastView", "scrapViewProvider", "Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/provider/ScrapViewProvider;", "layoutPivotRow", "bounds", "Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/ViewBounds;", "measureChild", "view", "layoutParams", "Lcom/rubensousa/dpadrecyclerview/layoutmanager/DpadLayoutParams;", "secondarySpecMode", "alreadyMeasured", "measureChildWithDecorationsAndMargins", "child", "widthSpec", "heightSpec", "onChildrenOffset", "offset", "onLayoutCleared", "onLayoutFinished", "onLayoutStarted", "reMeasureChildren", "shouldMeasureChild", "lp", "Landroidx/recyclerview/widget/RecyclerView$LayoutParams;", "shouldReMeasureChild", "updateLayoutBounds", "isVertical", "isPrepending", "checkpoint", "rowHeight", "updateViewBounds", "Companion", "dpadrecyclerview_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
/* loaded from: classes3.dex */
public final class GridLayoutEngineer extends StructureEngineer {
    public static final String TAG = "GridLayoutEngineer";
    private final GridState gridState;
    private final Rect insets;
    private final GridRow layoutRow;
    private final OnChildLayoutListener onChildLayoutListener;
    private int pivotLayoutPosition;
    private final GridRow pivotRow;
    private View pivotView;
    private final View[] rowViews;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public GridLayoutEngineer(RecyclerView.LayoutManager layoutManager, LayoutInfo layoutInfo, LayoutAlignment layoutAlignment, OnChildLayoutListener onChildLayoutListener) {
        super(layoutManager, layoutInfo, layoutAlignment);
        Intrinsics.checkNotNullParameter(layoutManager, "layoutManager");
        Intrinsics.checkNotNullParameter(layoutInfo, "layoutInfo");
        Intrinsics.checkNotNullParameter(layoutAlignment, "layoutAlignment");
        Intrinsics.checkNotNullParameter(onChildLayoutListener, "onChildLayoutListener");
        this.onChildLayoutListener = onChildLayoutListener;
        this.insets = new Rect();
        int spanCount = layoutInfo.getSpanCount();
        View[] viewArr = new View[spanCount];
        for (int i = 0; i < spanCount; i++) {
            viewArr[i] = null;
        }
        this.rowViews = viewArr;
        GridRow gridRow = new GridRow(layoutInfo.getSpanCount(), layoutInfo.getSecondaryTotalSpace());
        this.layoutRow = gridRow;
        this.gridState = new GridState(layoutManager);
        this.pivotRow = new GridRow(gridRow);
        this.pivotLayoutPosition = -1;
    }

    @Override // com.rubensousa.dpadrecyclerview.layoutmanager.layout.StructureEngineer
    public void onLayoutStarted(RecyclerView.State state) {
        Intrinsics.checkNotNullParameter(state, "state");
        super.onLayoutStarted(state);
        this.gridState.save();
        this.layoutRow.setWidth(getLayoutInfo().getSecondaryTotalSpace());
        this.pivotRow.setWidth(this.layoutRow.getWidth());
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.rubensousa.dpadrecyclerview.layoutmanager.layout.StructureEngineer
    public void onChildrenOffset(int offset) {
        super.onChildrenOffset(offset);
        this.layoutRow.offsetBy(offset);
        this.pivotRow.offsetBy(offset);
    }

    @Override // com.rubensousa.dpadrecyclerview.layoutmanager.layout.StructureEngineer
    protected View initLayout(int pivotPosition, LayoutRequest layoutRequest, ViewProvider viewProvider, RecyclerView.Recycler recycler, RecyclerView.State state) {
        Intrinsics.checkNotNullParameter(layoutRequest, "layoutRequest");
        Intrinsics.checkNotNullParameter(viewProvider, "viewProvider");
        Intrinsics.checkNotNullParameter(recycler, "recycler");
        Intrinsics.checkNotNullParameter(state, "state");
        this.pivotLayoutPosition = pivotPosition;
        this.layoutRow.reset(getLayoutAlignment().getParentKeyline());
        this.pivotRow.reset(getLayoutAlignment().getParentKeyline());
        View layoutPivotRow = layoutPivotRow(pivotPosition, layoutRequest, viewProvider, recycler, state);
        this.pivotRow.copy(this.layoutRow);
        int firstPosition = this.pivotRow.getFirstPosition();
        layoutRequest.clear();
        layoutRequest.direction = LayoutDirection.START;
        layoutRequest.currentItemDirection = layoutRequest.getDefaultItemDirection().opposite();
        layoutRequest.currentPosition = firstPosition;
        layoutRequest.moveToNextPosition();
        layoutRequest.setCheckpoint(this.pivotRow.getStartOffset());
        layoutRequest.setFillSpace(layoutRequest.getCheckpoint() - getLayoutInfo().getStartAfterPadding());
        fill(layoutRequest, viewProvider, recycler, state);
        int lastPosition = this.pivotRow.getLastPosition();
        layoutRequest.clear();
        layoutRequest.direction = LayoutDirection.END;
        layoutRequest.currentItemDirection = layoutRequest.getDefaultItemDirection();
        layoutRequest.currentPosition = lastPosition;
        layoutRequest.moveToNextPosition();
        layoutRequest.setCheckpoint(this.pivotRow.getEndOffset());
        layoutRequest.setFillSpace(getLayoutInfo().getEndAfterPadding() - layoutRequest.getCheckpoint());
        fill(layoutRequest, viewProvider, recycler, state);
        this.pivotLayoutPosition = -1;
        return layoutPivotRow;
    }

    private final View layoutPivotRow(int pivotPosition, LayoutRequest layoutRequest, ViewProvider viewProvider, RecyclerView.Recycler recycler, RecyclerView.State state) {
        int max = Math.max(0, pivotPosition - getSpanIndex(recycler, state, pivotPosition));
        if (!layoutRequest.getReverseLayout()) {
            layoutRequest.clear();
            layoutRequest.direction = LayoutDirection.END;
            layoutRequest.currentItemDirection = layoutRequest.getDefaultItemDirection();
            layoutRequest.currentPosition = max;
            layoutRequest.moveToNextPosition();
            layoutRequest.setCurrentPosition(max);
            layoutRequest.setCheckpoint(getLayoutAlignment().getParentKeyline());
            layoutRequest.setFillSpace(1);
        } else {
            layoutRequest.clear();
            layoutRequest.direction = LayoutDirection.START;
            layoutRequest.currentItemDirection = layoutRequest.getDefaultItemDirection().opposite();
            layoutRequest.currentPosition = max;
            layoutRequest.moveToNextPosition();
            layoutRequest.setCurrentPosition(max);
            layoutRequest.setCheckpoint(getLayoutAlignment().getParentKeyline());
            layoutRequest.setFillSpace(1);
        }
        fill(layoutRequest, viewProvider, recycler, state);
        View view = this.pivotView;
        if (view == null) {
            throw new IllegalArgumentException("Required value was null.".toString());
        }
        this.pivotView = null;
        return view;
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
        SparseArrayCompat sparseArrayCompat = new SparseArrayCompat(0, 1, null);
        SparseArrayCompat sparseArrayCompat2 = new SparseArrayCompat(0, 1, null);
        SparseArrayCompat<RecyclerView.ViewHolder> scrap = scrapViewProvider.getScrap();
        int size = scrap.size();
        int i = 0;
        while (i < size) {
            int keyAt = scrap.keyAt(i);
            RecyclerView.ViewHolder valueAt = scrap.valueAt(i);
            LayoutInfo layoutInfo = getLayoutInfo();
            SparseArrayCompat<RecyclerView.ViewHolder> sparseArrayCompat3 = scrap;
            View itemView = valueAt.itemView;
            int i2 = size;
            Intrinsics.checkNotNullExpressionValue(itemView, "itemView");
            int spanGroupIndex = layoutInfo.getLayoutParams(itemView).getSpanGroupIndex();
            if (spanGroupIndex != -1) {
                if ((keyAt < layoutPositionOf) != layoutRequest.getReverseLayout()) {
                    layoutDirection = LayoutDirection.START;
                } else {
                    layoutDirection = LayoutDirection.END;
                }
                LayoutInfo layoutInfo2 = getLayoutInfo();
                View itemView2 = valueAt.itemView;
                Intrinsics.checkNotNullExpressionValue(itemView2, "itemView");
                int decoratedSize = layoutInfo2.getDecoratedSize(itemView2);
                if (layoutDirection == LayoutDirection.START) {
                    sparseArrayCompat.put(spanGroupIndex, Integer.valueOf(decoratedSize));
                } else {
                    sparseArrayCompat2.put(spanGroupIndex, Integer.valueOf(decoratedSize));
                }
            }
            i++;
            scrap = sparseArrayCompat3;
            size = i2;
        }
        int size2 = sparseArrayCompat.size();
        int i3 = 0;
        for (int i4 = 0; i4 < size2; i4++) {
            sparseArrayCompat.keyAt(i4);
            i3 += ((Number) sparseArrayCompat.valueAt(i4)).intValue();
        }
        int size3 = sparseArrayCompat2.size();
        int i5 = 0;
        for (int i6 = 0; i6 < size3; i6++) {
            sparseArrayCompat2.keyAt(i6);
            i5 += ((Number) sparseArrayCompat2.valueAt(i6)).intValue();
        }
        if (DpadRecyclerView.INSTANCE.getDEBUG$dpadrecyclerview_release()) {
            Log.i(TAG, "Scrap extra: " + i3 + ", " + i5);
        }
        if (i3 > 0) {
            int layoutPositionOf2 = getLayoutInfo().getLayoutPositionOf(firstView);
            layoutRequest.clear();
            layoutRequest.direction = LayoutDirection.START;
            layoutRequest.currentItemDirection = layoutRequest.getDefaultItemDirection().opposite();
            layoutRequest.currentPosition = layoutPositionOf2;
            layoutRequest.moveToNextPosition();
            layoutRequest.setCheckpoint(getLayoutInfo().getDecoratedStart(firstView));
            layoutRequest.setFillSpace(i3);
            scrapViewProvider.setNextLayoutPosition(layoutRequest);
            fill(layoutRequest, scrapViewProvider, recycler, state);
        }
        if (i5 > 0) {
            int layoutPositionOf3 = getLayoutInfo().getLayoutPositionOf(lastView);
            layoutRequest.clear();
            layoutRequest.direction = LayoutDirection.END;
            layoutRequest.currentItemDirection = layoutRequest.getDefaultItemDirection();
            layoutRequest.currentPosition = layoutPositionOf3;
            layoutRequest.moveToNextPosition();
            layoutRequest.setCheckpoint(getLayoutInfo().getDecoratedEnd(lastView));
            layoutRequest.setFillSpace(i5);
            scrapViewProvider.setNextLayoutPosition(layoutRequest);
            fill(layoutRequest, scrapViewProvider, recycler, state);
        }
    }

    @Override // com.rubensousa.dpadrecyclerview.layoutmanager.layout.StructureEngineer
    public void onLayoutFinished() {
        this.gridState.clear();
    }

    @Override // com.rubensousa.dpadrecyclerview.layoutmanager.layout.StructureEngineer
    public void onLayoutCleared() {
        this.gridState.clear();
    }

    @Override // com.rubensousa.dpadrecyclerview.layoutmanager.layout.StructureEngineer
    protected void layoutBlock(LayoutRequest layoutRequest, ViewProvider viewProvider, RecyclerView.Recycler recycler, RecyclerView.State state, LayoutResult layoutResult) {
        Intrinsics.checkNotNullParameter(layoutRequest, "layoutRequest");
        Intrinsics.checkNotNullParameter(viewProvider, "viewProvider");
        Intrinsics.checkNotNullParameter(recycler, "recycler");
        Intrinsics.checkNotNullParameter(state, "state");
        Intrinsics.checkNotNullParameter(layoutResult, "layoutResult");
        this.layoutRow.reset(layoutRequest.getCheckpoint());
        int spanIndex = getSpanIndex(recycler, state, layoutRequest.getCurrentPosition());
        int viewsForRow = getViewsForRow(layoutRequest, viewProvider, recycler, state, spanIndex, calculateAvailableSpans(layoutRequest, spanIndex, getSpanSize(recycler, state, layoutRequest.getCurrentPosition())));
        layoutResult.setConsumedSpace(fillRow(viewsForRow, this.layoutRow, layoutRequest));
        reMeasureChildren(this.layoutRow, viewsForRow, layoutRequest);
        layoutResult.setSkipConsumption(layoutRow(viewsForRow, this.layoutRow, getViewBounds(), layoutRequest));
    }

    private final int fillRow(int viewCount, GridRow row, LayoutRequest layoutRequest) {
        int modeInOther = getLayoutInfo().getOrientationHelper().getModeInOther();
        for (int i = 0; i < viewCount; i++) {
            View rowViewAt = getRowViewAt(i);
            DpadLayoutParams layoutParams = getLayoutInfo().getLayoutParams(rowViewAt);
            addView(rowViewAt, layoutRequest);
            getLayoutManager().calculateItemDecorationsForChild(rowViewAt, this.insets);
            measureChild(rowViewAt, row, layoutParams, modeInOther, false, layoutRequest);
            this.onChildLayoutListener.onChildCreated(rowViewAt);
            int decoratedSize = getLayoutInfo().getDecoratedSize(rowViewAt);
            if (layoutRequest.isAppending()) {
                row.append(decoratedSize, layoutParams.getViewLayoutPosition(), layoutParams.getSpanIndex(), layoutParams.getSpanSize());
            } else {
                row.prepend(decoratedSize, layoutParams.getViewLayoutPosition(), layoutParams.getSpanIndex(), layoutParams.getSpanSize());
            }
        }
        return row.getHeight();
    }

    private final boolean layoutRow(int viewCount, GridRow row, ViewBounds bounds, LayoutRequest layoutRequest) {
        updateLayoutBounds(layoutRequest.getIsVertical(), layoutRequest.isPrepending(), layoutRequest.getCheckpoint(), row.getHeight(), bounds);
        boolean z = false;
        for (int i = 0; i < viewCount; i++) {
            View rowViewAt = getRowViewAt(i);
            updateViewBounds(rowViewAt, layoutRequest, getLayoutInfo().getLayoutParams(rowViewAt), bounds);
            performLayout(rowViewAt, bounds);
            this.onChildLayoutListener.onChildLaidOut(rowViewAt);
            if (DpadRecyclerView.INSTANCE.getDEBUG$dpadrecyclerview_release()) {
                Log.i(TAG, "Laid out view " + getLayoutInfo().getLayoutPositionOf(rowViewAt) + " at: " + getViewBounds());
            }
            if (shouldSkipSpaceOf(rowViewAt)) {
                z = true;
            }
        }
        bounds.setEmpty();
        this.onChildLayoutListener.onBlockLaidOut();
        ArraysKt.fill$default(this.rowViews, (Object) null, 0, 0, 6, (Object) null);
        return z;
    }

    private final void updateLayoutBounds(boolean isVertical, boolean isPrepending, int checkpoint, int rowHeight, ViewBounds bounds) {
        if (isVertical) {
            if (isPrepending) {
                bounds.setBottom(checkpoint);
                bounds.setTop(bounds.getBottom() - rowHeight);
                return;
            } else {
                bounds.setTop(checkpoint);
                bounds.setBottom(bounds.getTop() + rowHeight);
                return;
            }
        }
        if (isPrepending) {
            bounds.setRight(checkpoint);
            bounds.setLeft(bounds.getRight() - rowHeight);
        } else {
            bounds.setLeft(checkpoint);
            bounds.setRight(bounds.getLeft() + rowHeight);
        }
    }

    private final void updateViewBounds(View view, LayoutRequest layoutRequest, DpadLayoutParams layoutParams, ViewBounds bounds) {
        int perpendicularDecoratedSize = getLayoutInfo().getPerpendicularDecoratedSize(view);
        if (layoutRequest.getIsVertical()) {
            if (!layoutRequest.getReverseLayout()) {
                bounds.setLeft(getLayoutManager().getPaddingLeft() + this.layoutRow.getSpanBorder(layoutParams.getSpanIndex()));
                bounds.setRight(bounds.getLeft() + perpendicularDecoratedSize);
                return;
            } else {
                GridRow gridRow = this.layoutRow;
                bounds.setRight(gridRow.getSpanBorder(gridRow.getNumberOfSpans() - layoutParams.getSpanIndex()) - getLayoutManager().getPaddingRight());
                bounds.setLeft(bounds.getRight() - perpendicularDecoratedSize);
                return;
            }
        }
        if (!layoutRequest.getReverseLayout()) {
            bounds.setTop(getLayoutManager().getPaddingTop() + this.layoutRow.getSpanBorder(layoutParams.getSpanIndex()));
            bounds.setBottom(bounds.getTop() + perpendicularDecoratedSize);
        } else {
            GridRow gridRow2 = this.layoutRow;
            bounds.setBottom(gridRow2.getSpanBorder(gridRow2.getNumberOfSpans() - layoutParams.getSpanIndex()) - getLayoutManager().getPaddingBottom());
            bounds.setTop(bounds.getBottom() - perpendicularDecoratedSize);
        }
    }

    private final void reMeasureChildren(GridRow row, int viewCount, LayoutRequest layoutRequest) {
        int makeMeasureSpec;
        int childMeasureSpec;
        int height = row.getHeight();
        for (int i = 0; i < viewCount; i++) {
            View rowViewAt = getRowViewAt(i);
            DpadLayoutParams layoutParams = getLayoutInfo().getLayoutParams(rowViewAt);
            if (getLayoutInfo().getDecoratedSize(rowViewAt) != height) {
                getLayoutInfo().getDecorationInsets(rowViewAt, this.insets);
                int i2 = this.insets.top + this.insets.bottom + layoutParams.topMargin + layoutParams.bottomMargin;
                int i3 = this.insets.left + this.insets.right + layoutParams.leftMargin + layoutParams.rightMargin;
                int spaceForSpanRange = row.getSpaceForSpanRange(layoutParams.getSpanIndex(), layoutParams.getSpanSize(), layoutRequest.getReverseLayout());
                if (getLayoutInfo().isVertical()) {
                    makeMeasureSpec = RecyclerView.LayoutManager.getChildMeasureSpec(spaceForSpanRange, 1073741824, i3, layoutParams.width, false);
                    childMeasureSpec = View.MeasureSpec.makeMeasureSpec(height - i2, 1073741824);
                } else {
                    makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(height - i3, 1073741824);
                    childMeasureSpec = RecyclerView.LayoutManager.getChildMeasureSpec(spaceForSpanRange, 1073741824, i2, layoutParams.height, false);
                }
                measureChildWithDecorationsAndMargins(rowViewAt, layoutParams, makeMeasureSpec, childMeasureSpec, true);
            }
        }
    }

    private final void measureChild(View view, GridRow row, DpadLayoutParams layoutParams, int secondarySpecMode, boolean alreadyMeasured, LayoutRequest layoutRequest) {
        int childMeasureSpec;
        int childMeasureSpec2;
        int i = this.insets.top + this.insets.bottom + layoutParams.topMargin + layoutParams.bottomMargin;
        int i2 = this.insets.left + this.insets.right + layoutParams.leftMargin + layoutParams.rightMargin;
        int spaceForSpanRange = row.getSpaceForSpanRange(layoutParams.getSpanIndex(), layoutParams.getSpanSize(), layoutRequest.getReverseLayout());
        if (getLayoutInfo().isVertical()) {
            childMeasureSpec2 = RecyclerView.LayoutManager.getChildMeasureSpec(spaceForSpanRange, secondarySpecMode, i2, layoutParams.width, false);
            childMeasureSpec = RecyclerView.LayoutManager.getChildMeasureSpec(getLayoutInfo().getTotalSpace(), getLayoutManager().getHeightMode(), i, layoutParams.height, true);
        } else {
            childMeasureSpec = RecyclerView.LayoutManager.getChildMeasureSpec(spaceForSpanRange, secondarySpecMode, i, layoutParams.height, false);
            childMeasureSpec2 = RecyclerView.LayoutManager.getChildMeasureSpec(getLayoutInfo().getTotalSpace(), getLayoutManager().getWidthMode(), i2, layoutParams.width, true);
        }
        measureChildWithDecorationsAndMargins(view, layoutParams, childMeasureSpec2, childMeasureSpec, alreadyMeasured);
    }

    private final void measureChildWithDecorationsAndMargins(View child, DpadLayoutParams layoutParams, int widthSpec, int heightSpec, boolean alreadyMeasured) {
        boolean shouldMeasureChild;
        if (alreadyMeasured) {
            shouldMeasureChild = shouldReMeasureChild(child, widthSpec, heightSpec, layoutParams);
        } else {
            shouldMeasureChild = shouldMeasureChild(child, widthSpec, heightSpec, layoutParams);
        }
        if (shouldMeasureChild) {
            child.measure(widthSpec, heightSpec);
        }
    }

    private final int calculateAvailableSpans(LayoutRequest request, int anchorSpanIndex, int anchorSpanSize) {
        return request.isAppending() != request.getReverseLayout() ? this.layoutRow.getNumberOfSpans() - anchorSpanIndex : anchorSpanIndex + anchorSpanSize;
    }

    private final int getViewsForRow(LayoutRequest layoutRequest, ViewProvider viewProvider, RecyclerView.Recycler recycler, RecyclerView.State state, int anchorSpanIndex, int availableSpans) {
        int i = 0;
        while (isRowIncomplete(i, viewProvider, layoutRequest, state, availableSpans)) {
            int currentPosition = layoutRequest.getCurrentPosition();
            int spanSize = getSpanSize(recycler, state, currentPosition);
            if (spanSize > this.layoutRow.getNumberOfSpans()) {
                throw new IllegalArgumentException("Item at position " + currentPosition + " requires " + spanSize + ", but spanCount is " + this.layoutRow.getNumberOfSpans());
            }
            availableSpans -= spanSize;
            if (availableSpans < 0) {
                break;
            }
            View next = viewProvider.next(layoutRequest, state);
            getLayoutInfo().getLayoutParams(next).updateSpan$dpadrecyclerview_release(anchorSpanIndex, getSpanGroupIndex(recycler, state, currentPosition), spanSize);
            if (currentPosition == this.pivotLayoutPosition) {
                this.pivotView = next;
            }
            this.rowViews[i] = next;
            i++;
            anchorSpanIndex = layoutRequest.isAppending() != layoutRequest.getReverseLayout() ? anchorSpanIndex + spanSize : anchorSpanIndex - spanSize;
        }
        return i;
    }

    private final boolean isRowIncomplete(int viewCount, ViewProvider viewProvider, LayoutRequest layoutRequest, RecyclerView.State state, int remainingSpans) {
        return viewCount < this.layoutRow.getNumberOfSpans() && viewProvider.hasNext(layoutRequest, state) && remainingSpans > 0;
    }

    private final int getSpanIndex(RecyclerView.Recycler recycler, RecyclerView.State state, int position) {
        if (!state.isPreLayout()) {
            return getLayoutInfo().getStartSpanIndex(position);
        }
        int spanIndex = this.gridState.getSpanIndex(position);
        if (spanIndex != -1) {
            return spanIndex;
        }
        int convertPreLayoutPositionToPostLayout = recycler.convertPreLayoutPositionToPostLayout(position);
        if (convertPreLayoutPositionToPostLayout == -1) {
            Log.w(DpadRecyclerView.TAG, "Cannot find post layout position for pre layout position: " + position);
            return getLayoutInfo().getStartSpanIndex(position);
        }
        return getLayoutInfo().getStartSpanIndex(convertPreLayoutPositionToPostLayout);
    }

    private final int getSpanSize(RecyclerView.Recycler recycler, RecyclerView.State state, int position) {
        if (!state.isPreLayout()) {
            return getLayoutInfo().getSpanSize(position);
        }
        int spanSize = this.gridState.getSpanSize(position);
        if (spanSize != -1) {
            return spanSize;
        }
        int convertPreLayoutPositionToPostLayout = recycler.convertPreLayoutPositionToPostLayout(position);
        if (convertPreLayoutPositionToPostLayout == -1) {
            Log.w(DpadRecyclerView.TAG, "Cannot find post layout position for pre layout position: " + position);
            return getLayoutInfo().getSpanSize(position);
        }
        return getLayoutInfo().getSpanSize(convertPreLayoutPositionToPostLayout);
    }

    private final int getSpanGroupIndex(RecyclerView.Recycler recycler, RecyclerView.State state, int position) {
        if (!state.isPreLayout()) {
            return getLayoutInfo().getSpanGroupIndex(position);
        }
        int spanGroupIndex = this.gridState.getSpanGroupIndex(position);
        if (spanGroupIndex != -1) {
            return spanGroupIndex;
        }
        int convertPreLayoutPositionToPostLayout = recycler.convertPreLayoutPositionToPostLayout(position);
        if (convertPreLayoutPositionToPostLayout == -1) {
            Log.w(DpadRecyclerView.TAG, "Cannot find post layout position for pre layout position: " + position);
            return getLayoutInfo().getSpanGroupIndex(position);
        }
        return getLayoutInfo().getSpanGroupIndex(convertPreLayoutPositionToPostLayout);
    }

    private final View getRowViewAt(int index) {
        View view = this.rowViews[index];
        if (view != null) {
            return view;
        }
        throw new IllegalArgumentException("Required value was null.".toString());
    }

    private final boolean shouldReMeasureChild(View child, int widthSpec, int heightSpec, RecyclerView.LayoutParams lp) {
        return (getLayoutManager().isMeasurementCacheEnabled() && isMeasurementUpToDate(child.getMeasuredWidth(), widthSpec, lp.width) && isMeasurementUpToDate(child.getMeasuredHeight(), heightSpec, lp.height)) ? false : true;
    }

    private final boolean shouldMeasureChild(View child, int widthSpec, int heightSpec, RecyclerView.LayoutParams lp) {
        return (!child.isLayoutRequested() && getLayoutManager().isMeasurementCacheEnabled() && isMeasurementUpToDate(child.getWidth(), widthSpec, lp.width) && isMeasurementUpToDate(child.getHeight(), heightSpec, lp.height)) ? false : true;
    }

    private final boolean isMeasurementUpToDate(int childSize, int spec, int dimension) {
        int mode = View.MeasureSpec.getMode(spec);
        int size = View.MeasureSpec.getSize(spec);
        if (dimension > 0 && childSize != dimension) {
            return false;
        }
        if (mode == Integer.MIN_VALUE) {
            return size >= childSize;
        }
        if (mode != 0) {
            return mode == 1073741824 && size == childSize;
        }
        return true;
    }
}
