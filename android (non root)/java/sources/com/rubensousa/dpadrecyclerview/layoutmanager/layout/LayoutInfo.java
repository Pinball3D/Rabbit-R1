package com.rubensousa.dpadrecyclerview.layoutmanager.layout;

import android.graphics.Rect;
import android.view.View;
import android.view.ViewGroup;
import androidx.recyclerview.widget.OrientationHelper;
import androidx.recyclerview.widget.RecyclerView;
import com.rubensousa.dpadrecyclerview.layoutmanager.DpadLayoutParams;
import com.rubensousa.dpadrecyclerview.layoutmanager.LayoutConfiguration;
import io.flutter.plugin.editing.SpellCheckPlugin;
import io.sentry.protocol.Device;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: LayoutInfo.kt */
@Metadata(d1 = {"\u0000f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\t\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\b\u0014\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b!\b\u0000\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J.\u0010\u001e\u001a\u00020\b2\u0006\u0010\u001f\u001a\u00020 2\u0006\u0010!\u001a\u00020\u00122\u0006\u0010\"\u001a\u00020\u00122\u0006\u0010#\u001a\u00020\u00122\u0006\u0010$\u001a\u00020\bJ\u0006\u0010%\u001a\u00020\u0012J \u0010&\u001a\u00020\u00122\u0006\u0010'\u001a\u00020\u00122\u0006\u0010(\u001a\u00020\u00122\u0006\u0010)\u001a\u00020\bH\u0002J\u0006\u0010*\u001a\u00020\u0012J\b\u0010+\u001a\u0004\u0018\u00010,J\u0006\u0010-\u001a\u00020\u0012J\u0010\u0010.\u001a\u00020\u00122\b\u0010/\u001a\u0004\u0018\u00010,J\u0006\u00100\u001a\u00020\u0012J\u0006\u00101\u001a\u00020\u0012J\b\u00102\u001a\u0004\u0018\u00010,J\u0006\u00103\u001a\u00020\u0012J\u0010\u00104\u001a\u0004\u0018\u00010,2\u0006\u00105\u001a\u00020\u0012J\u0010\u00106\u001a\u0004\u0018\u00010,2\u0006\u00105\u001a\u00020\u0012J\u000e\u00107\u001a\u00020\u00122\u0006\u0010/\u001a\u00020,J\u000e\u00108\u001a\u00020\u00122\u0006\u00109\u001a\u00020\u0012J\u0010\u0010:\u001a\u0004\u0018\u00010,2\u0006\u00109\u001a\u00020\u0012J\b\u0010;\u001a\u0004\u0018\u00010,J\b\u0010<\u001a\u0004\u0018\u00010,J\u0006\u0010=\u001a\u00020\u0012J\u0010\u0010>\u001a\u0004\u0018\u00010 2\u0006\u0010/\u001a\u00020,J\u0006\u0010?\u001a\u00020\u0005J\u000e\u0010@\u001a\u00020A2\u0006\u0010/\u001a\u00020,J\u000e\u0010B\u001a\u00020\u00122\u0006\u0010/\u001a\u00020,J\u000e\u0010C\u001a\u00020\u00122\u0006\u0010/\u001a\u00020,J\u000e\u0010D\u001a\u00020\u00122\u0006\u0010/\u001a\u00020,J\u0016\u0010E\u001a\u00020F2\u0006\u0010/\u001a\u00020,2\u0006\u0010G\u001a\u00020HJ\u0006\u0010I\u001a\u00020\u0012J\u000e\u0010J\u001a\u00020\u00122\u0006\u00105\u001a\u00020\u0012J\u000e\u0010K\u001a\u00020L2\u0006\u0010M\u001a\u00020,J\u000e\u0010N\u001a\u00020\u00122\u0006\u0010/\u001a\u00020,J\u000e\u0010O\u001a\u00020\u00122\u0006\u0010/\u001a\u00020,J\b\u0010P\u001a\u00020\u0012H\u0002J\u000e\u0010Q\u001a\u00020\u00122\u0006\u0010/\u001a\u00020,J\b\u0010R\u001a\u0004\u0018\u00010\u001aJ\u0006\u0010S\u001a\u00020\u0012J\u0006\u0010T\u001a\u00020\u0012J\u0006\u0010U\u001a\u00020\u0012J\u0006\u0010V\u001a\u00020\u0012J\u000e\u0010W\u001a\u00020\u00122\u0006\u00105\u001a\u00020\u0012J\u000e\u0010X\u001a\u00020\u00122\u0006\u00105\u001a\u00020\u0012J\u0006\u0010Y\u001a\u00020\u0012J\u000e\u0010Z\u001a\u00020\u00122\u0006\u00105\u001a\u00020\u0012J\u0006\u0010[\u001a\u00020\u0012J\u0006\u0010\\\u001a\u00020\bJ\u0006\u0010]\u001a\u00020\bJ\u0006\u0010^\u001a\u00020\bJ\u0006\u0010_\u001a\u00020\bJ\u0006\u0010`\u001a\u00020\bJ\u000e\u0010a\u001a\u00020\b2\u0006\u00105\u001a\u00020\u0012J\u0006\u0010b\u001a\u00020\bJ\u0006\u0010c\u001a\u00020\bJ\u000e\u0010d\u001a\u00020\b2\u0006\u0010/\u001a\u00020,J\u0006\u0010e\u001a\u00020FJ\u000e\u0010f\u001a\u00020F2\u0006\u0010\u000f\u001a\u00020\bJ\u000e\u0010g\u001a\u00020F2\u0006\u0010\u000f\u001a\u00020\bJ\u0006\u0010h\u001a\u00020FJ\u0010\u0010i\u001a\u00020F2\b\u0010\u0019\u001a\u0004\u0018\u00010\u001aJ\u0006\u0010j\u001a\u00020\bJ\u0016\u0010k\u001a\u00020F2\u0006\u0010\u000e\u001a\u00020\b2\u0006\u0010\r\u001a\u00020\bJ\u0006\u0010l\u001a\u00020FR\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u001e\u0010\t\u001a\u00020\b2\u0006\u0010\u0007\u001a\u00020\b@BX\u0086\u000e¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000bR\u001e\u0010\f\u001a\u00020\b2\u0006\u0010\u0007\u001a\u00020\b@BX\u0086\u000e¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\u000bR\u001e\u0010\r\u001a\u00020\b2\u0006\u0010\u0007\u001a\u00020\b@BX\u0086\u000e¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\u000bR\u001e\u0010\u000e\u001a\u00020\b2\u0006\u0010\u0007\u001a\u00020\b@BX\u0086\u000e¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\u000bR\u001e\u0010\u000f\u001a\u00020\b2\u0006\u0010\u0007\u001a\u00020\b@BX\u0086\u000e¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\u000bR\u001e\u0010\u0010\u001a\u00020\b2\u0006\u0010\u0007\u001a\u00020\b@BX\u0086\u000e¢\u0006\b\n\u0000\u001a\u0004\b\u0010\u0010\u000bR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u0011\u0010\u0011\u001a\u00020\u00128F¢\u0006\u0006\u001a\u0004\b\u0013\u0010\u0014R\u001e\u0010\u0016\u001a\u00020\u00152\u0006\u0010\u0007\u001a\u00020\u0015@BX\u0086\u000e¢\u0006\b\n\u0000\u001a\u0004\b\u0017\u0010\u0018R\u0010\u0010\u0019\u001a\u0004\u0018\u00010\u001aX\u0082\u000e¢\u0006\u0002\n\u0000R.\u0010\u001c\u001a\n \u001b*\u0004\u0018\u00010\u00150\u00152\u000e\u0010\u0007\u001a\n \u001b*\u0004\u0018\u00010\u00150\u0015@BX\u0086\u000e¢\u0006\b\n\u0000\u001a\u0004\b\u001d\u0010\u0018¨\u0006m"}, d2 = {"Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutInfo;", "", "layout", "Landroidx/recyclerview/widget/RecyclerView$LayoutManager;", "configuration", "Lcom/rubensousa/dpadrecyclerview/layoutmanager/LayoutConfiguration;", "(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;Lcom/rubensousa/dpadrecyclerview/layoutmanager/LayoutConfiguration;)V", "<set-?>", "", "hasLaidOutViews", "getHasLaidOutViews", "()Z", "isLayoutInProgress", "isLoopingAllowed", "isLoopingStart", "isScrolling", "isScrollingToTarget", Device.JsonKeys.ORIENTATION, "", "getOrientation", "()I", "Landroidx/recyclerview/widget/OrientationHelper;", "orientationHelper", "getOrientationHelper", "()Landroidx/recyclerview/widget/OrientationHelper;", "recyclerView", "Landroidx/recyclerview/widget/RecyclerView;", "kotlin.jvm.PlatformType", "secondaryOrientationHelper", "getSecondaryOrientationHelper", "didViewHolderStateChange", "viewHolder", "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;", "pivotPosition", "startOldPosition", "endOldPosition", "reverseLayout", "findFirstAddedPosition", "findFirstChildWithinParentBounds", SpellCheckPlugin.START_INDEX_KEY, SpellCheckPlugin.END_INDEX_KEY, "onlyCompletelyVisible", "findFirstCompletelyVisiblePosition", "findFirstVisibleChild", "Landroid/view/View;", "findFirstVisiblePosition", "findIndexOf", "view", "findLastAddedPosition", "findLastCompletelyVisiblePosition", "findLastVisibleChild", "findLastVisiblePosition", "findViewByAdapterPosition", "position", "findViewByPosition", "getAdapterPositionOf", "getAdapterPositionOfChildAt", "index", "getChildAt", "getChildClosestToEnd", "getChildClosestToStart", "getChildCount", "getChildViewHolder", "getConfiguration", "getDecoratedBounds", "Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/ViewBounds;", "getDecoratedEnd", "getDecoratedSize", "getDecoratedStart", "getDecorationInsets", "", "rect", "Landroid/graphics/Rect;", "getEndAfterPadding", "getEndSpanIndex", "getLayoutParams", "Lcom/rubensousa/dpadrecyclerview/layoutmanager/DpadLayoutParams;", "child", "getLayoutPositionOf", "getOldPositionOf", "getOppositeOrientation", "getPerpendicularDecoratedSize", "getRecyclerView", "getSecondaryEndAfterPadding", "getSecondaryStartAfterPadding", "getSecondaryTotalSpace", "getSpanCount", "getSpanGroupIndex", "getSpanSize", "getStartAfterPadding", "getStartSpanIndex", "getTotalSpace", "hasCreatedFirstItem", "hasCreatedLastItem", "isGrid", "isHorizontal", "isInfinite", "isItemFullyVisible", "isRTL", "isVertical", "isViewFocusable", "onLayoutCompleted", "setIsScrolling", "setIsScrollingToTarget", "setLayoutInProgress", "setRecyclerView", "shouldReverseLayout", "updateLoopingState", "updateOrientation", "dpadrecyclerview_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
/* loaded from: classes3.dex */
public final class LayoutInfo {
    private final LayoutConfiguration configuration;
    private boolean hasLaidOutViews;
    private boolean isLayoutInProgress;
    private boolean isLoopingAllowed;
    private boolean isLoopingStart;
    private boolean isScrolling;
    private boolean isScrollingToTarget;
    private final RecyclerView.LayoutManager layout;
    private OrientationHelper orientationHelper;
    private RecyclerView recyclerView;
    private OrientationHelper secondaryOrientationHelper;

    public final LayoutConfiguration getConfiguration() {
        return this.configuration;
    }

    public final boolean getHasLaidOutViews() {
        return this.hasLaidOutViews;
    }

    public final OrientationHelper getOrientationHelper() {
        return this.orientationHelper;
    }

    public final RecyclerView getRecyclerView() {
        return this.recyclerView;
    }

    public final OrientationHelper getSecondaryOrientationHelper() {
        return this.secondaryOrientationHelper;
    }

    /* renamed from: isLayoutInProgress, reason: from getter */
    public final boolean getIsLayoutInProgress() {
        return this.isLayoutInProgress;
    }

    /* renamed from: isLoopingAllowed, reason: from getter */
    public final boolean getIsLoopingAllowed() {
        return this.isLoopingAllowed;
    }

    /* renamed from: isLoopingStart, reason: from getter */
    public final boolean getIsLoopingStart() {
        return this.isLoopingStart;
    }

    /* renamed from: isScrolling, reason: from getter */
    public final boolean getIsScrolling() {
        return this.isScrolling;
    }

    /* renamed from: isScrollingToTarget, reason: from getter */
    public final boolean getIsScrollingToTarget() {
        return this.isScrollingToTarget;
    }

    public final void setIsScrolling(boolean isScrolling) {
        this.isScrolling = isScrolling;
    }

    public final void setIsScrollingToTarget(boolean isScrolling) {
        this.isScrollingToTarget = isScrolling;
    }

    public final void setLayoutInProgress() {
        this.isLayoutInProgress = true;
    }

    public final void setRecyclerView(RecyclerView recyclerView) {
        this.recyclerView = recyclerView;
    }

    public final void updateLoopingState(boolean isLoopingStart, boolean isLoopingAllowed) {
        this.isLoopingStart = isLoopingStart;
        this.isLoopingAllowed = isLoopingAllowed;
    }

    public LayoutInfo(RecyclerView.LayoutManager layout, LayoutConfiguration configuration) {
        Intrinsics.checkNotNullParameter(layout, "layout");
        Intrinsics.checkNotNullParameter(configuration, "configuration");
        this.layout = layout;
        this.configuration = configuration;
        OrientationHelper createOrientationHelper = OrientationHelper.createOrientationHelper(layout, configuration.getOrientation());
        Intrinsics.checkNotNullExpressionValue(createOrientationHelper, "createOrientationHelper(...)");
        this.orientationHelper = createOrientationHelper;
        this.secondaryOrientationHelper = OrientationHelper.createOrientationHelper(layout, getOppositeOrientation());
    }

    public final int getOrientation() {
        return this.configuration.getOrientation();
    }

    public final boolean isRTL() {
        return this.layout.getLayoutDirection() == 1;
    }

    public final boolean isHorizontal() {
        return this.configuration.isHorizontal();
    }

    public final boolean isVertical() {
        return this.configuration.isVertical();
    }

    public final void updateOrientation() {
        OrientationHelper createOrientationHelper = OrientationHelper.createOrientationHelper(this.layout, this.configuration.getOrientation());
        Intrinsics.checkNotNullExpressionValue(createOrientationHelper, "createOrientationHelper(...)");
        this.orientationHelper = createOrientationHelper;
        this.secondaryOrientationHelper = OrientationHelper.createOrientationHelper(this.layout, getOppositeOrientation());
    }

    public final void onLayoutCompleted() {
        this.isLayoutInProgress = false;
        this.orientationHelper.onLayoutComplete();
        this.hasLaidOutViews = this.layout.getChildCount() > 0;
    }

    public final int getSpanCount() {
        return this.configuration.getSpanCount();
    }

    public final boolean isGrid() {
        return this.configuration.getSpanCount() > 1;
    }

    public final int getSpanSize(int position) {
        return this.configuration.getSpanSizeLookup().getSpanSize(position);
    }

    public final int getStartSpanIndex(int position) {
        return this.configuration.getSpanSizeLookup().getCachedSpanIndex(position, this.configuration.getSpanCount());
    }

    public final int getEndSpanIndex(int position) {
        return (getStartSpanIndex(position) + this.configuration.getSpanSizeLookup().getSpanSize(position)) - 1;
    }

    public final int getSpanGroupIndex(int position) {
        return this.configuration.getSpanSizeLookup().getCachedSpanGroupIndex(position, this.configuration.getSpanCount());
    }

    public final int getAdapterPositionOfChildAt(int index) {
        View childAt = this.layout.getChildAt(index);
        if (childAt == null) {
            return -1;
        }
        return getAdapterPositionOf(childAt);
    }

    public final int getAdapterPositionOf(View view) {
        Intrinsics.checkNotNullParameter(view, "view");
        return getLayoutParams(view).getAbsoluteAdapterPosition();
    }

    public final int getLayoutPositionOf(View view) {
        Intrinsics.checkNotNullParameter(view, "view");
        return getLayoutParams(view).getViewLayoutPosition();
    }

    public final int getStartAfterPadding() {
        return this.orientationHelper.getStartAfterPadding();
    }

    public final int getSecondaryStartAfterPadding() {
        return this.secondaryOrientationHelper.getStartAfterPadding();
    }

    public final int getEndAfterPadding() {
        return this.orientationHelper.getEndAfterPadding();
    }

    public final int getSecondaryEndAfterPadding() {
        return this.secondaryOrientationHelper.getEndAfterPadding();
    }

    public final int getTotalSpace() {
        return this.orientationHelper.getTotalSpace();
    }

    public final int getSecondaryTotalSpace() {
        return this.secondaryOrientationHelper.getTotalSpace();
    }

    public final int getDecoratedStart(View view) {
        Intrinsics.checkNotNullParameter(view, "view");
        return this.orientationHelper.getDecoratedStart(view);
    }

    public final int getDecoratedEnd(View view) {
        Intrinsics.checkNotNullParameter(view, "view");
        return this.orientationHelper.getDecoratedEnd(view);
    }

    public final int getDecoratedSize(View view) {
        Intrinsics.checkNotNullParameter(view, "view");
        return this.orientationHelper.getDecoratedMeasurement(view);
    }

    public final boolean hasCreatedLastItem() {
        int itemCount = this.layout.getItemCount();
        if (itemCount == 0) {
            return true;
        }
        RecyclerView recyclerView = this.recyclerView;
        return (recyclerView != null ? recyclerView.findViewHolderForAdapterPosition(itemCount - 1) : null) != null;
    }

    public final boolean hasCreatedFirstItem() {
        if (this.layout.getItemCount() != 0) {
            RecyclerView recyclerView = this.recyclerView;
            if ((recyclerView != null ? recyclerView.findViewHolderForAdapterPosition(0) : null) == null) {
                return false;
            }
        }
        return true;
    }

    public final DpadLayoutParams getLayoutParams(View child) {
        Intrinsics.checkNotNullParameter(child, "child");
        ViewGroup.LayoutParams layoutParams = child.getLayoutParams();
        Intrinsics.checkNotNull(layoutParams, "null cannot be cast to non-null type com.rubensousa.dpadrecyclerview.layoutmanager.DpadLayoutParams");
        return (DpadLayoutParams) layoutParams;
    }

    public final int getPerpendicularDecoratedSize(View view) {
        Intrinsics.checkNotNullParameter(view, "view");
        return this.orientationHelper.getDecoratedMeasurementInOther(view);
    }

    public final boolean isItemFullyVisible(int position) {
        RecyclerView.ViewHolder findViewHolderForAdapterPosition;
        View view;
        RecyclerView recyclerView = this.recyclerView;
        return recyclerView != null && (findViewHolderForAdapterPosition = recyclerView.findViewHolderForAdapterPosition(position)) != null && (view = findViewHolderForAdapterPosition.itemView) != null && view.getLeft() >= 0 && view.getRight() <= recyclerView.getWidth() && view.getTop() >= 0 && view.getBottom() <= recyclerView.getHeight();
    }

    public final int findIndexOf(View view) {
        if (view == null || view == this.recyclerView) {
            return -1;
        }
        int childCount = this.layout.getChildCount();
        for (int i = 0; i < childCount; i++) {
            if (this.layout.getChildAt(i) == view) {
                return i;
            }
        }
        return -1;
    }

    public final View getChildClosestToStart() {
        return this.layout.getChildAt(0);
    }

    public final View getChildClosestToEnd() {
        return this.layout.getChildAt(r1.getChildCount() - 1);
    }

    public final int findFirstAddedPosition() {
        View childAt;
        if (this.layout.getChildCount() == 0 || (childAt = this.layout.getChildAt(0)) == null) {
            return -1;
        }
        return getAdapterPositionOf(childAt);
    }

    public final int getOldPositionOf(View view) {
        Intrinsics.checkNotNullParameter(view, "view");
        RecyclerView.ViewHolder childViewHolder = getChildViewHolder(view);
        if (childViewHolder != null) {
            return childViewHolder.getOldPosition();
        }
        return -1;
    }

    public final int findLastAddedPosition() {
        if (this.layout.getChildCount() == 0) {
            return -1;
        }
        View childAt = this.layout.getChildAt(r0.getChildCount() - 1);
        if (childAt == null) {
            return -1;
        }
        return getAdapterPositionOf(childAt);
    }

    public final int findFirstVisiblePosition() {
        return findFirstChildWithinParentBounds(0, this.layout.getChildCount(), false);
    }

    public final int findFirstCompletelyVisiblePosition() {
        return findFirstChildWithinParentBounds(0, this.layout.getChildCount(), true);
    }

    public final int findLastVisiblePosition() {
        return findFirstChildWithinParentBounds(this.layout.getChildCount() - 1, -1, false);
    }

    public final int findLastCompletelyVisiblePosition() {
        return findFirstChildWithinParentBounds(this.layout.getChildCount() - 1, -1, true);
    }

    public final View findFirstVisibleChild() {
        int findFirstVisiblePosition = findFirstVisiblePosition();
        if (findFirstVisiblePosition == -1) {
            return null;
        }
        return this.layout.findViewByPosition(findFirstVisiblePosition);
    }

    public final View findLastVisibleChild() {
        int findLastVisiblePosition = findLastVisiblePosition();
        if (findLastVisiblePosition == -1) {
            return null;
        }
        return this.layout.findViewByPosition(findLastVisiblePosition);
    }

    private final int findFirstChildWithinParentBounds(int startIndex, int endIndex, boolean onlyCompletelyVisible) {
        int i = startIndex < endIndex ? 1 : -1;
        int startAfterPadding = this.orientationHelper.getStartAfterPadding();
        int endAfterPadding = this.orientationHelper.getEndAfterPadding();
        while (startIndex != endIndex) {
            View childAt = this.layout.getChildAt(startIndex);
            if (childAt != null) {
                int decoratedStart = getDecoratedStart(childAt);
                int decoratedEnd = getDecoratedEnd(childAt);
                boolean z = false;
                boolean z2 = decoratedStart >= startAfterPadding && decoratedEnd <= endAfterPadding;
                if (!onlyCompletelyVisible) {
                    boolean z3 = decoratedEnd >= startAfterPadding && decoratedStart <= startAfterPadding;
                    if (decoratedStart <= endAfterPadding && decoratedEnd >= endAfterPadding) {
                        z = true;
                    }
                    if (z2 || z || z3) {
                        return getLayoutPositionOf(childAt);
                    }
                } else if (z2) {
                    return getLayoutPositionOf(childAt);
                }
                startIndex += i;
            }
        }
        return -1;
    }

    public final RecyclerView.ViewHolder getChildViewHolder(View view) {
        Intrinsics.checkNotNullParameter(view, "view");
        RecyclerView recyclerView = this.recyclerView;
        if (recyclerView != null) {
            return recyclerView.findContainingViewHolder(view);
        }
        return null;
    }

    public final View findViewByPosition(int position) {
        return this.layout.findViewByPosition(position);
    }

    public final View findViewByAdapterPosition(int position) {
        RecyclerView.ViewHolder findViewHolderForAdapterPosition;
        RecyclerView recyclerView = this.recyclerView;
        if (recyclerView == null || (findViewHolderForAdapterPosition = recyclerView.findViewHolderForAdapterPosition(position)) == null) {
            return null;
        }
        return findViewHolderForAdapterPosition.itemView;
    }

    public final int getChildCount() {
        return this.layout.getChildCount();
    }

    public final View getChildAt(int index) {
        return this.layout.getChildAt(index);
    }

    public final boolean shouldReverseLayout() {
        if (this.configuration.isVertical() || !isRTL()) {
            return this.configuration.getReverseLayout();
        }
        return !this.configuration.getReverseLayout();
    }

    public final boolean isInfinite() {
        RecyclerView recyclerView = this.recyclerView;
        if (recyclerView == null) {
            return false;
        }
        ViewGroup.LayoutParams layoutParams = recyclerView.getLayoutParams();
        return (isVertical() && layoutParams.height == -2) || (isHorizontal() && layoutParams.width == -2);
    }

    public final boolean isViewFocusable(View view) {
        Intrinsics.checkNotNullParameter(view, "view");
        return view.getVisibility() == 0 && view.hasFocusable();
    }

    public final boolean didViewHolderStateChange(RecyclerView.ViewHolder viewHolder, int pivotPosition, int startOldPosition, int endOldPosition, boolean reverseLayout) {
        Intrinsics.checkNotNullParameter(viewHolder, "viewHolder");
        View itemView = viewHolder.itemView;
        Intrinsics.checkNotNullExpressionValue(itemView, "itemView");
        ViewGroup.LayoutParams layoutParams = itemView.getLayoutParams();
        Intrinsics.checkNotNull(layoutParams, "null cannot be cast to non-null type androidx.recyclerview.widget.RecyclerView.LayoutParams");
        RecyclerView.LayoutParams layoutParams2 = (RecyclerView.LayoutParams) layoutParams;
        if (layoutParams2.isItemChanged() || layoutParams2.isItemRemoved() || itemView.isLayoutRequested()) {
            return true;
        }
        if (itemView.hasFocus() && pivotPosition != layoutParams2.getAbsoluteAdapterPosition()) {
            return true;
        }
        if (!itemView.hasFocus() && pivotPosition == layoutParams2.getAbsoluteAdapterPosition()) {
            return true;
        }
        int adapterPositionOf = getAdapterPositionOf(itemView);
        if (reverseLayout) {
            if (adapterPositionOf > startOldPosition || adapterPositionOf < endOldPosition) {
                return true;
            }
        } else if (adapterPositionOf < startOldPosition || adapterPositionOf > endOldPosition) {
            return true;
        }
        return false;
    }

    public final void getDecorationInsets(View view, Rect rect) {
        Intrinsics.checkNotNullParameter(view, "view");
        Intrinsics.checkNotNullParameter(rect, "rect");
        rect.left = this.layout.getLeftDecorationWidth(view);
        rect.top = this.layout.getTopDecorationHeight(view);
        rect.right = this.layout.getRightDecorationWidth(view);
        rect.bottom = this.layout.getBottomDecorationHeight(view);
    }

    public final ViewBounds getDecoratedBounds(View view) {
        Intrinsics.checkNotNullParameter(view, "view");
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        Intrinsics.checkNotNull(layoutParams, "null cannot be cast to non-null type com.rubensousa.dpadrecyclerview.layoutmanager.DpadLayoutParams");
        DpadLayoutParams dpadLayoutParams = (DpadLayoutParams) layoutParams;
        return new ViewBounds(this.layout.getDecoratedLeft(view) - dpadLayoutParams.leftMargin, this.layout.getDecoratedTop(view) - dpadLayoutParams.topMargin, this.layout.getDecoratedRight(view) + dpadLayoutParams.rightMargin, this.layout.getDecoratedBottom(view) + dpadLayoutParams.bottomMargin);
    }

    private final int getOppositeOrientation() {
        return !this.configuration.isVertical() ? 1 : 0;
    }
}
