package com.rubensousa.dpadrecyclerview.layoutmanager.alignment;

import android.view.View;
import android.view.ViewGroup;
import androidx.recyclerview.widget.RecyclerView;
import com.rubensousa.dpadrecyclerview.ChildAlignment;
import com.rubensousa.dpadrecyclerview.DpadViewHolder;
import com.rubensousa.dpadrecyclerview.ParentAlignment;
import com.rubensousa.dpadrecyclerview.SubPositionAlignment;
import com.rubensousa.dpadrecyclerview.layoutmanager.DpadLayoutParams;
import com.rubensousa.dpadrecyclerview.layoutmanager.layout.LayoutInfo;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.ArraysKt;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.math.MathKt;

/* compiled from: LayoutAlignment.kt */
@Metadata(d1 = {"\u0000X\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0011\n\u0002\u0010\u0002\n\u0002\b\b\b\u0000\u0018\u0000 92\u00020\u0001:\u00019B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J \u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u00132\u0006\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u0016H\u0002J\u000e\u0010\u0018\u001a\u00020\u00132\u0006\u0010\u0015\u001a\u00020\u0016J\u0018\u0010\u0019\u001a\u00020\u00132\u0006\u0010\u0015\u001a\u00020\u00162\b\u0010\u0017\u001a\u0004\u0018\u00010\u0016J\u0016\u0010\u0019\u001a\u00020\u00132\u0006\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u001a\u001a\u00020\u0013J\u0010\u0010\u001b\u001a\u00020\u00132\u0006\u0010\u0015\u001a\u00020\u0016H\u0002J\u0010\u0010\u001c\u001a\u00020\u00132\u0006\u0010\u0015\u001a\u00020\u0016H\u0002J\u000e\u0010\u001d\u001a\u00020\u00132\u0006\u0010\u001e\u001a\u00020\u0013J\u0006\u0010\u001f\u001a\u00020 J\u000e\u0010!\u001a\u00020\u00132\u0006\u0010\u0015\u001a\u00020\u0016J\u0017\u0010\"\u001a\u0004\u0018\u00010\u00132\u0006\u0010#\u001a\u00020\u0013H\u0002¢\u0006\u0002\u0010$J\u0010\u0010%\u001a\u00020\u00132\u0006\u0010\u0015\u001a\u00020\u0016H\u0002J\u0006\u0010&\u001a\u00020\fJ\u0006\u0010'\u001a\u00020\u0013J\u0017\u0010(\u001a\u0004\u0018\u00010\u00132\u0006\u0010#\u001a\u00020\u0013H\u0002¢\u0006\u0002\u0010$J\u001a\u0010)\u001a\u00020\u00132\b\u0010\u0015\u001a\u0004\u0018\u00010\u00162\b\u0010\u0017\u001a\u0004\u0018\u00010\u0016J\u0010\u0010*\u001a\u00020\u00132\u0006\u0010\u0015\u001a\u00020\u0016H\u0002J\u0018\u0010+\u001a\u0004\u0018\u00010\u00162\u0006\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u001a\u001a\u00020\u0013J \u0010,\u001a\u00020\n2\u0006\u0010-\u001a\u00020\u00132\u0006\u0010.\u001a\u00020\u00132\u0006\u0010/\u001a\u00020\u0013H\u0002J \u00100\u001a\u00020\n2\u0006\u0010-\u001a\u00020\u00132\u0006\u0010.\u001a\u00020\u00132\u0006\u0010/\u001a\u00020\u0013H\u0002J\u000e\u00101\u001a\u0002022\u0006\u00103\u001a\u00020 J\u0016\u00104\u001a\u0002022\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000f\u001a\u00020\nJ\u000e\u00105\u001a\u0002022\u0006\u00106\u001a\u00020\fJ\u0010\u00107\u001a\u0002022\u0006\u0010\u0015\u001a\u00020\u0016H\u0002J\u0006\u00108\u001a\u000202R\u000e\u0010\u0007\u001a\u00020\bX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\nX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\fX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u000eX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\nX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u0011X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006:"}, d2 = {"Lcom/rubensousa/dpadrecyclerview/layoutmanager/alignment/LayoutAlignment;", "", "layoutManager", "Landroidx/recyclerview/widget/RecyclerView$LayoutManager;", "layoutInfo", "Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutInfo;", "(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutInfo;)V", "childAlignment", "Lcom/rubensousa/dpadrecyclerview/layoutmanager/alignment/ChildScrollAlignment;", "isVertical", "", "parentAlignment", "Lcom/rubensousa/dpadrecyclerview/ParentAlignment;", "parentAlignmentCalculator", "Lcom/rubensousa/dpadrecyclerview/layoutmanager/alignment/ParentAlignmentCalculator;", "reverseLayout", "viewHolderAlignment", "Lcom/rubensousa/dpadrecyclerview/layoutmanager/alignment/SubPositionScrollAlignment;", "calculateAdjustedAlignedScrollDistance", "", "offset", "view", "Landroid/view/View;", "childView", "calculateScrollForAlignment", "calculateScrollOffset", "subPosition", "calculateScrollToTarget", "getAnchor", "getCappedScroll", "scrollOffset", "getChildAlignment", "Lcom/rubensousa/dpadrecyclerview/ChildAlignment;", "getChildStart", "getEndEdge", "index", "(I)Ljava/lang/Integer;", "getHorizontalAnchor", "getParentAlignment", "getParentKeyline", "getStartEdge", "getSubPositionOfView", "getVerticalAnchor", "getViewAtSubPosition", "isEndAvailable", "adapterPosition", "maxLayoutPosition", "minLayoutPosition", "isStartAvailable", "setChildAlignment", "", "config", "setLayoutProperties", "setParentAlignment", "alignment", "updateChildAlignments", "updateScrollLimits", "Companion", "dpadrecyclerview_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
/* loaded from: classes3.dex */
public final class LayoutAlignment {
    public static final String TAG = "LayoutAlignment";
    private final ChildScrollAlignment childAlignment;
    private boolean isVertical;
    private final LayoutInfo layoutInfo;
    private final RecyclerView.LayoutManager layoutManager;
    private ParentAlignment parentAlignment;
    private final ParentAlignmentCalculator parentAlignmentCalculator;
    private boolean reverseLayout;
    private final SubPositionScrollAlignment viewHolderAlignment;

    private final boolean isEndAvailable(int adapterPosition, int maxLayoutPosition, int minLayoutPosition) {
        if (this.reverseLayout) {
            if (adapterPosition == minLayoutPosition) {
                return true;
            }
        } else if (adapterPosition == maxLayoutPosition) {
            return true;
        }
        return false;
    }

    private final boolean isStartAvailable(int adapterPosition, int maxLayoutPosition, int minLayoutPosition) {
        if (this.reverseLayout) {
            if (adapterPosition == maxLayoutPosition) {
                return true;
            }
        } else if (adapterPosition == minLayoutPosition) {
            return true;
        }
        return false;
    }

    public final ParentAlignment getParentAlignment() {
        return this.parentAlignment;
    }

    public final void setParentAlignment(ParentAlignment alignment) {
        Intrinsics.checkNotNullParameter(alignment, "alignment");
        this.parentAlignment = alignment;
    }

    public LayoutAlignment(RecyclerView.LayoutManager layoutManager, LayoutInfo layoutInfo) {
        Intrinsics.checkNotNullParameter(layoutManager, "layoutManager");
        Intrinsics.checkNotNullParameter(layoutInfo, "layoutInfo");
        this.layoutManager = layoutManager;
        this.layoutInfo = layoutInfo;
        this.parentAlignment = new ParentAlignment(null, 0, 0.0f, false, false, 31, null);
        this.parentAlignmentCalculator = new ParentAlignmentCalculator();
        this.childAlignment = new ChildScrollAlignment();
        this.viewHolderAlignment = new SubPositionScrollAlignment();
        this.isVertical = true;
    }

    public final void setLayoutProperties(boolean isVertical, boolean reverseLayout) {
        this.isVertical = isVertical;
        this.reverseLayout = reverseLayout;
        this.parentAlignmentCalculator.updateLayoutInfo(this.layoutManager, isVertical, reverseLayout);
    }

    public final void setChildAlignment(ChildAlignment config) {
        Intrinsics.checkNotNullParameter(config, "config");
        this.childAlignment.setAlignment(config);
    }

    public final ChildAlignment getChildAlignment() {
        return this.childAlignment.getAlignment();
    }

    public final int getChildStart(View view) {
        Intrinsics.checkNotNullParameter(view, "view");
        updateChildAlignments(view);
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        Intrinsics.checkNotNull(layoutParams, "null cannot be cast to non-null type com.rubensousa.dpadrecyclerview.layoutmanager.DpadLayoutParams");
        return getParentKeyline() - ((DpadLayoutParams) layoutParams).getAlignmentAnchor();
    }

    public final int getParentKeyline() {
        return this.parentAlignmentCalculator.calculateKeyline(this.parentAlignment);
    }

    public final View getViewAtSubPosition(View view, int subPosition) {
        List<SubPositionAlignment> subPositionAlignments;
        Intrinsics.checkNotNullParameter(view, "view");
        Object childViewHolder = this.layoutInfo.getChildViewHolder(view);
        DpadViewHolder dpadViewHolder = childViewHolder instanceof DpadViewHolder ? (DpadViewHolder) childViewHolder : null;
        if (dpadViewHolder == null || (subPositionAlignments = dpadViewHolder.getSubPositionAlignments()) == null || subPosition >= subPositionAlignments.size()) {
            return null;
        }
        return view.findViewById(subPositionAlignments.get(subPosition).getFocusViewId());
    }

    public final int getSubPositionOfView(View view, View childView) {
        if (view != null && childView != null) {
            Object childViewHolder = this.layoutInfo.getChildViewHolder(view);
            if (!(childViewHolder instanceof DpadViewHolder)) {
                return 0;
            }
            List<SubPositionAlignment> subPositionAlignments = ((DpadViewHolder) childViewHolder).getSubPositionAlignments();
            if (subPositionAlignments.isEmpty()) {
                return 0;
            }
            while (childView != view && childView != null) {
                if (childView.getId() != -1) {
                    int i = 0;
                    for (Object obj : subPositionAlignments) {
                        int i2 = i + 1;
                        if (i < 0) {
                            CollectionsKt.throwIndexOverflow();
                        }
                        SubPositionAlignment subPositionAlignment = (SubPositionAlignment) obj;
                        int id = childView.getId();
                        if (id != -1 && subPositionAlignment.getFocusViewId() == id) {
                            return i;
                        }
                        i = i2;
                    }
                }
                Object parent = childView.getParent();
                childView = parent instanceof View ? (View) parent : null;
            }
        }
        return 0;
    }

    public final int getCappedScroll(int scrollOffset) {
        int endScrollLimit = this.parentAlignmentCalculator.getEndScrollLimit();
        int startScrollLimit = this.parentAlignmentCalculator.getStartScrollLimit();
        if (scrollOffset > 0) {
            if (this.parentAlignmentCalculator.isScrollLimitInvalid(endScrollLimit)) {
                return scrollOffset;
            }
            if (MathKt.getSign(scrollOffset) == MathKt.getSign(endScrollLimit)) {
                return scrollOffset > endScrollLimit ? endScrollLimit : scrollOffset;
            }
        } else if (MathKt.getSign(scrollOffset) == MathKt.getSign(startScrollLimit)) {
            return (!this.parentAlignmentCalculator.isScrollLimitInvalid(startScrollLimit) && scrollOffset < startScrollLimit) ? startScrollLimit : scrollOffset;
        }
        return 0;
    }

    public final int calculateScrollForAlignment(View view) {
        Intrinsics.checkNotNullParameter(view, "view");
        updateChildAlignments(view);
        updateScrollLimits();
        return calculateScrollToTarget(view);
    }

    public final int calculateScrollOffset(View view, int subPosition) {
        Intrinsics.checkNotNullParameter(view, "view");
        return calculateScrollOffset(view, getViewAtSubPosition(view, subPosition));
    }

    public final int calculateScrollOffset(View view, View childView) {
        Intrinsics.checkNotNullParameter(view, "view");
        int calculateScrollForAlignment = calculateScrollForAlignment(view);
        return childView != null ? calculateAdjustedAlignedScrollDistance(calculateScrollForAlignment, view, childView) : calculateScrollForAlignment;
    }

    private final void updateChildAlignments(View view) {
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        Intrinsics.checkNotNull(layoutParams, "null cannot be cast to non-null type com.rubensousa.dpadrecyclerview.layoutmanager.DpadLayoutParams");
        DpadLayoutParams dpadLayoutParams = (DpadLayoutParams) layoutParams;
        Object childViewHolder = this.layoutInfo.getChildViewHolder(view);
        if (childViewHolder == null) {
            return;
        }
        List<SubPositionAlignment> subPositionAlignments = childViewHolder instanceof DpadViewHolder ? ((DpadViewHolder) childViewHolder).getSubPositionAlignments() : null;
        List<SubPositionAlignment> list = subPositionAlignments;
        if (list == null || list.isEmpty()) {
            this.childAlignment.updateAlignments(view, dpadLayoutParams, this.isVertical, this.reverseLayout);
        } else {
            this.viewHolderAlignment.updateAlignments(view, dpadLayoutParams, subPositionAlignments, this.isVertical, this.reverseLayout);
        }
    }

    public final void updateScrollLimits() {
        int findLastAddedPosition;
        int i;
        int i2;
        int i3;
        int i4;
        int i5;
        int i6;
        int itemCount = this.layoutManager.getItemCount();
        if (itemCount == 0) {
            return;
        }
        if (!this.reverseLayout) {
            int findLastAddedPosition2 = this.layoutInfo.findLastAddedPosition();
            i3 = itemCount - 1;
            findLastAddedPosition = this.layoutInfo.findFirstAddedPosition();
            i = findLastAddedPosition2;
            i2 = 0;
        } else {
            int findFirstAddedPosition = this.layoutInfo.findFirstAddedPosition();
            findLastAddedPosition = this.layoutInfo.findLastAddedPosition();
            i = findFirstAddedPosition;
            i2 = itemCount - 1;
            i3 = 0;
        }
        if (i < 0 || findLastAddedPosition < 0) {
            this.parentAlignmentCalculator.invalidateScrollLimits();
            return;
        }
        boolean isEndAvailable = isEndAvailable(i, i3, i2);
        boolean isStartAvailable = isStartAvailable(findLastAddedPosition, i3, i2);
        if (isEndAvailable || !this.parentAlignmentCalculator.isEndUnknown() || isStartAvailable || !this.parentAlignmentCalculator.isStartUnknown()) {
            if (isEndAvailable) {
                Integer endEdge = getEndEdge(i);
                r1 = endEdge != null ? endEdge.intValue() : Integer.MAX_VALUE;
                View findViewByPosition = this.layoutManager.findViewByPosition(i);
                if (findViewByPosition != null) {
                    i4 = getAnchor(findViewByPosition);
                    ViewGroup.LayoutParams layoutParams = findViewByPosition.getLayoutParams();
                    Intrinsics.checkNotNull(layoutParams, "null cannot be cast to non-null type com.rubensousa.dpadrecyclerview.layoutmanager.DpadLayoutParams");
                    int[] subPositionAnchors = ((DpadLayoutParams) layoutParams).getSubPositionAnchors();
                    if (subPositionAnchors != null) {
                        if (true ^ (subPositionAnchors.length == 0)) {
                            i4 += ArraysKt.last(subPositionAnchors) - ArraysKt.first(subPositionAnchors);
                        }
                    }
                } else {
                    i4 = 0;
                }
            } else {
                i4 = Integer.MAX_VALUE;
            }
            if (isStartAvailable) {
                Integer startEdge = getStartEdge(findLastAddedPosition);
                int intValue = startEdge != null ? startEdge.intValue() : Integer.MIN_VALUE;
                View findViewByPosition2 = this.layoutManager.findViewByPosition(findLastAddedPosition);
                i5 = intValue;
                i6 = findViewByPosition2 != null ? getAnchor(findViewByPosition2) : 0;
            } else {
                i5 = Integer.MIN_VALUE;
                i6 = Integer.MIN_VALUE;
            }
            if (!this.reverseLayout) {
                this.parentAlignmentCalculator.updateScrollLimits(i5, r1, i6, i4, this.parentAlignment);
                if (this.layoutInfo.getIsLoopingAllowed()) {
                    this.parentAlignmentCalculator.invalidateEndLimit();
                }
                if (this.layoutInfo.getIsLoopingStart()) {
                    this.parentAlignmentCalculator.invalidateStartLimit();
                    return;
                }
                return;
            }
            this.parentAlignmentCalculator.updateScrollLimits(r1, i5, i4, i6, this.parentAlignment);
            if (this.layoutInfo.getIsLoopingAllowed()) {
                this.parentAlignmentCalculator.invalidateStartLimit();
            }
            if (this.layoutInfo.getIsLoopingStart()) {
                this.parentAlignmentCalculator.invalidateEndLimit();
            }
        }
    }

    private final Integer getEndEdge(int index) {
        View findViewByPosition = this.layoutManager.findViewByPosition(index);
        if (findViewByPosition == null) {
            return null;
        }
        if (!this.reverseLayout) {
            return Integer.valueOf(this.layoutInfo.getDecoratedEnd(findViewByPosition));
        }
        return Integer.valueOf(this.layoutInfo.getDecoratedStart(findViewByPosition));
    }

    private final Integer getStartEdge(int index) {
        View findViewByPosition = this.layoutManager.findViewByPosition(index);
        if (findViewByPosition == null) {
            return null;
        }
        if (!this.reverseLayout) {
            return Integer.valueOf(this.layoutInfo.getDecoratedStart(findViewByPosition));
        }
        return Integer.valueOf(this.layoutInfo.getDecoratedEnd(findViewByPosition));
    }

    private final int getAnchor(View view) {
        if (this.isVertical) {
            return getVerticalAnchor(view);
        }
        return getHorizontalAnchor(view);
    }

    private final int getHorizontalAnchor(View view) {
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        Intrinsics.checkNotNull(layoutParams, "null cannot be cast to non-null type com.rubensousa.dpadrecyclerview.layoutmanager.DpadLayoutParams");
        return view.getLeft() + ((DpadLayoutParams) layoutParams).getAlignmentAnchor();
    }

    private final int getVerticalAnchor(View view) {
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        Intrinsics.checkNotNull(layoutParams, "null cannot be cast to non-null type com.rubensousa.dpadrecyclerview.layoutmanager.DpadLayoutParams");
        return view.getTop() + ((DpadLayoutParams) layoutParams).getAlignmentAnchor();
    }

    private final int calculateScrollToTarget(View view) {
        return this.parentAlignmentCalculator.calculateScrollOffset(getAnchor(view), this.parentAlignment);
    }

    private final int calculateAdjustedAlignedScrollDistance(int offset, View view, View childView) {
        int subPositionOfView = getSubPositionOfView(view, childView);
        if (subPositionOfView == 0) {
            return offset;
        }
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        Intrinsics.checkNotNull(layoutParams, "null cannot be cast to non-null type com.rubensousa.dpadrecyclerview.layoutmanager.DpadLayoutParams");
        int[] subPositionAnchors = ((DpadLayoutParams) layoutParams).getSubPositionAnchors();
        if (subPositionAnchors != null) {
            return (subPositionAnchors.length == 0) ^ true ? offset + (subPositionAnchors[subPositionOfView] - subPositionAnchors[0]) : offset;
        }
        return offset;
    }
}
