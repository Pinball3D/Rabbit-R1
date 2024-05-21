package com.rubensousa.dpadrecyclerview.layoutmanager.alignment;

import androidx.recyclerview.widget.RecyclerView;
import com.rubensousa.dpadrecyclerview.ParentAlignment;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: ParentAlignmentCalculator.kt */
@Metadata(d1 = {"\u0000<\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u000e\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0000\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u000e\u0010\u0014\u001a\u00020\u00042\u0006\u0010\u0015\u001a\u00020\u0016J\u0016\u0010\u0017\u001a\u00020\u00042\u0006\u0010\u0018\u001a\u00020\u00042\u0006\u0010\u0015\u001a\u00020\u0016J\u0010\u0010\u0019\u001a\u00020\u00042\u0006\u0010\u001a\u001a\u00020\u0004H\u0002J\u0018\u0010\u001b\u001a\u00020\u00042\u0006\u0010\u001a\u001a\u00020\u00042\u0006\u0010\u001c\u001a\u00020\u0004H\u0002J\u0010\u0010\u001d\u001a\u00020\u00042\u0006\u0010\u001a\u001a\u00020\u0004H\u0002J\b\u0010\u001e\u001a\u00020\u0004H\u0002J\b\u0010\u001f\u001a\u00020\u0004H\u0002J\u0006\u0010 \u001a\u00020!J\u0006\u0010\"\u001a\u00020!J\u0006\u0010#\u001a\u00020!J\u0010\u0010$\u001a\u00020\n2\u0006\u0010%\u001a\u00020&H\u0002J\b\u0010'\u001a\u00020\nH\u0002J\b\u0010(\u001a\u00020\nH\u0002J\u000e\u0010)\u001a\u00020\n2\u0006\u0010*\u001a\u00020\u0004J\u0010\u0010+\u001a\u00020\n2\u0006\u0010%\u001a\u00020&H\u0002J\u0010\u0010,\u001a\u00020\n2\u0006\u0010\u0015\u001a\u00020\u0016H\u0002J\u0010\u0010-\u001a\u00020\n2\u0006\u0010\u0015\u001a\u00020\u0016H\u0002J\u0010\u0010.\u001a\u00020\n2\u0006\u0010\u0015\u001a\u00020\u0016H\u0002J\u0010\u0010/\u001a\u00020\n2\u0006\u0010%\u001a\u00020&H\u0002J\u0010\u00100\u001a\u00020\n2\u0006\u0010%\u001a\u00020&H\u0002J \u00101\u001a\u00020\n2\u0006\u0010\u0018\u001a\u00020\u00042\u0006\u0010\u001c\u001a\u00020\u00042\u0006\u0010\u0015\u001a\u00020\u0016H\u0002J \u00102\u001a\u00020\n2\u0006\u0010\u0018\u001a\u00020\u00042\u0006\u0010\u001c\u001a\u00020\u00042\u0006\u0010\u0015\u001a\u00020\u0016H\u0002J\u001e\u00103\u001a\u00020!2\u0006\u00104\u001a\u0002052\u0006\u00106\u001a\u00020\n2\u0006\u0010\u000f\u001a\u00020\nJ.\u00107\u001a\u00020!2\u0006\u0010\u0011\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u00042\u0006\u00108\u001a\u00020\u00042\u0006\u00109\u001a\u00020\u00042\u0006\u0010\u0015\u001a\u00020\u0016R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u000e¢\u0006\u0002\n\u0000R\u001e\u0010\u0006\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0004@BX\u0086\u000e¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\bR\u0011\u0010\t\u001a\u00020\n8F¢\u0006\u0006\u001a\u0004\b\t\u0010\u000bR\u0011\u0010\f\u001a\u00020\n8F¢\u0006\u0006\u001a\u0004\b\f\u0010\u000bR\u000e\u0010\r\u001a\u00020\u0004X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u0004X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\nX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u0004X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\u0004X\u0082\u000e¢\u0006\u0002\n\u0000R\u001e\u0010\u0012\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0004@BX\u0086\u000e¢\u0006\b\n\u0000\u001a\u0004\b\u0013\u0010\b¨\u0006:"}, d2 = {"Lcom/rubensousa/dpadrecyclerview/layoutmanager/alignment/ParentAlignmentCalculator;", "", "()V", "endEdge", "", "<set-?>", "endScrollLimit", "getEndScrollLimit", "()I", "isEndUnknown", "", "()Z", "isStartUnknown", "paddingEnd", "paddingStart", "reverseLayout", "size", "startEdge", "startScrollLimit", "getStartScrollLimit", "calculateKeyline", "alignment", "Lcom/rubensousa/dpadrecyclerview/ParentAlignment;", "calculateScrollOffset", "viewAnchor", "calculateScrollOffsetToEndEdge", "anchor", "calculateScrollOffsetToKeyline", "keyline", "calculateScrollOffsetToStartEdge", "getLayoutAbsoluteEnd", "getLayoutAbsoluteStart", "invalidateEndLimit", "", "invalidateScrollLimits", "invalidateStartLimit", "isEndEdge", "edge", "Lcom/rubensousa/dpadrecyclerview/ParentAlignment$Edge;", "isLayoutComplete", "isLayoutStartKnown", "isScrollLimitInvalid", "scroll", "isStartEdge", "preferKeylineOverEdge", "shouldAlignEndToKeyline", "shouldAlignStartToKeyline", "shouldAlignToEndEdge", "shouldAlignToStartEdge", "shouldAlignViewToEnd", "shouldAlignViewToStart", "updateLayoutInfo", "layoutManager", "Landroidx/recyclerview/widget/RecyclerView$LayoutManager;", "isVertical", "updateScrollLimits", "startViewAnchor", "endViewAnchor", "dpadrecyclerview_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
/* loaded from: classes3.dex */
public final class ParentAlignmentCalculator {
    private int paddingEnd;
    private int paddingStart;
    private boolean reverseLayout;
    private int size;
    private int startScrollLimit = Integer.MIN_VALUE;
    private int endScrollLimit = Integer.MAX_VALUE;
    private int endEdge = Integer.MAX_VALUE;
    private int startEdge = Integer.MIN_VALUE;

    private final int calculateScrollOffsetToKeyline(int anchor, int keyline) {
        return anchor - keyline;
    }

    private final int getLayoutAbsoluteEnd() {
        return this.size - this.paddingEnd;
    }

    /* renamed from: getLayoutAbsoluteStart, reason: from getter */
    private final int getPaddingStart() {
        return this.paddingStart;
    }

    public final int getEndScrollLimit() {
        return this.endScrollLimit;
    }

    public final int getStartScrollLimit() {
        return this.startScrollLimit;
    }

    public final void invalidateEndLimit() {
        this.endEdge = Integer.MAX_VALUE;
        this.endScrollLimit = Integer.MAX_VALUE;
    }

    public final void invalidateStartLimit() {
        this.startEdge = Integer.MIN_VALUE;
        this.startScrollLimit = Integer.MIN_VALUE;
    }

    public final boolean isScrollLimitInvalid(int scroll) {
        return scroll == Integer.MIN_VALUE || scroll == Integer.MAX_VALUE;
    }

    public final boolean isStartUnknown() {
        return isScrollLimitInvalid(this.startEdge);
    }

    public final boolean isEndUnknown() {
        return isScrollLimitInvalid(this.endEdge);
    }

    public final void updateLayoutInfo(RecyclerView.LayoutManager layoutManager, boolean isVertical, boolean reverseLayout) {
        int width;
        Intrinsics.checkNotNullParameter(layoutManager, "layoutManager");
        if (isVertical) {
            width = layoutManager.getHeight();
        } else {
            width = layoutManager.getWidth();
        }
        this.size = width;
        this.reverseLayout = reverseLayout;
        if (isVertical) {
            this.paddingStart = layoutManager.getPaddingTop();
            this.paddingEnd = layoutManager.getPaddingBottom();
        } else {
            this.paddingStart = layoutManager.getPaddingStart();
            this.paddingEnd = layoutManager.getPaddingEnd();
        }
    }

    public final void invalidateScrollLimits() {
        invalidateStartLimit();
        invalidateEndLimit();
    }

    public final void updateScrollLimits(int startEdge, int endEdge, int startViewAnchor, int endViewAnchor, ParentAlignment alignment) {
        int calculateScrollOffsetToKeyline;
        Intrinsics.checkNotNullParameter(alignment, "alignment");
        this.startEdge = startEdge;
        this.endEdge = endEdge;
        int calculateKeyline = calculateKeyline(alignment);
        int i = 0;
        if (isStartUnknown()) {
            calculateScrollOffsetToKeyline = Integer.MIN_VALUE;
        } else if (shouldAlignViewToStart(startViewAnchor, calculateKeyline, alignment)) {
            calculateScrollOffsetToKeyline = calculateScrollOffsetToStartEdge(startEdge);
        } else {
            calculateScrollOffsetToKeyline = shouldAlignStartToKeyline(alignment) ? calculateScrollOffsetToKeyline(startViewAnchor, calculateKeyline) : 0;
        }
        this.startScrollLimit = calculateScrollOffsetToKeyline;
        if (isEndUnknown()) {
            i = Integer.MAX_VALUE;
        } else if (shouldAlignViewToEnd(endViewAnchor, calculateKeyline, alignment)) {
            i = calculateScrollOffsetToEndEdge(endEdge);
        } else if (shouldAlignEndToKeyline(alignment)) {
            i = calculateScrollOffsetToKeyline(endViewAnchor, calculateKeyline);
        }
        this.endScrollLimit = i;
    }

    private final boolean shouldAlignStartToKeyline(ParentAlignment alignment) {
        return !shouldAlignToStartEdge(alignment.getEdge()) || preferKeylineOverEdge(alignment);
    }

    private final boolean shouldAlignEndToKeyline(ParentAlignment alignment) {
        return !shouldAlignToEndEdge(alignment.getEdge()) || preferKeylineOverEdge(alignment);
    }

    private final int calculateScrollOffsetToEndEdge(int anchor) {
        return anchor - getLayoutAbsoluteEnd();
    }

    private final int calculateScrollOffsetToStartEdge(int anchor) {
        return anchor - getPaddingStart();
    }

    public final int calculateScrollOffset(int viewAnchor, ParentAlignment alignment) {
        Intrinsics.checkNotNullParameter(alignment, "alignment");
        int calculateKeyline = calculateKeyline(alignment);
        boolean shouldAlignViewToStart = shouldAlignViewToStart(viewAnchor, calculateKeyline, alignment);
        boolean shouldAlignViewToEnd = shouldAlignViewToEnd(viewAnchor, calculateKeyline, alignment);
        if (this.reverseLayout) {
            if (shouldAlignViewToEnd) {
                return Math.max(this.endScrollLimit, calculateScrollOffsetToEndEdge(viewAnchor));
            }
            if (shouldAlignViewToStart) {
                return Math.min(this.startScrollLimit, calculateScrollOffsetToStartEdge(viewAnchor));
            }
        } else {
            if (shouldAlignViewToStart) {
                return Math.min(this.startScrollLimit, calculateScrollOffsetToStartEdge(viewAnchor));
            }
            if (shouldAlignViewToEnd) {
                return Math.max(this.endScrollLimit, calculateScrollOffsetToEndEdge(viewAnchor));
            }
        }
        return calculateScrollOffsetToKeyline(viewAnchor, calculateKeyline);
    }

    public final int calculateKeyline(ParentAlignment alignment) {
        int i;
        int offset;
        Intrinsics.checkNotNullParameter(alignment, "alignment");
        if (!this.reverseLayout) {
            return (alignment.isFractionEnabled() ? (int) (this.size * alignment.getFraction()) : 0) + alignment.getOffset();
        }
        if (alignment.isFractionEnabled()) {
            i = (int) (this.size * (1.0f - alignment.getFraction()));
            offset = alignment.getOffset();
        } else {
            i = this.size;
            offset = alignment.getOffset();
        }
        return i - offset;
    }

    private final boolean shouldAlignViewToStart(int viewAnchor, int keyline, ParentAlignment alignment) {
        if (isStartUnknown() || !shouldAlignToStartEdge(alignment.getEdge())) {
            return false;
        }
        return isLayoutComplete() ? viewAnchor + getPaddingStart() <= this.startEdge + keyline : isLayoutStartKnown() && !preferKeylineOverEdge(alignment);
    }

    private final boolean shouldAlignViewToEnd(int viewAnchor, int keyline, ParentAlignment alignment) {
        if (isEndUnknown() || !shouldAlignToEndEdge(alignment.getEdge())) {
            return false;
        }
        return isLayoutComplete() ? viewAnchor + getLayoutAbsoluteEnd() >= this.endEdge + keyline : isLayoutStartKnown() && !preferKeylineOverEdge(alignment);
    }

    private final boolean isLayoutComplete() {
        if (isEndUnknown() && isStartUnknown()) {
            return true;
        }
        if (!this.reverseLayout) {
            if (this.startEdge <= getPaddingStart() && (this.endEdge >= getLayoutAbsoluteEnd() || isEndUnknown())) {
                return true;
            }
        } else if (this.endEdge >= getLayoutAbsoluteEnd() && (this.startEdge <= getPaddingStart() || isStartUnknown())) {
            return true;
        }
        return false;
    }

    private final boolean preferKeylineOverEdge(ParentAlignment alignment) {
        return alignment.getPreferKeylineOverEdge() || alignment.getEdge() == ParentAlignment.Edge.NONE;
    }

    private final boolean isLayoutStartKnown() {
        if (!this.reverseLayout) {
            if (!isStartUnknown()) {
                return true;
            }
        } else if (!isEndUnknown()) {
            return true;
        }
        return false;
    }

    private final boolean isStartEdge(ParentAlignment.Edge edge) {
        return (!this.reverseLayout && edge == ParentAlignment.Edge.MIN) || (this.reverseLayout && edge == ParentAlignment.Edge.MAX);
    }

    private final boolean isEndEdge(ParentAlignment.Edge edge) {
        return (!this.reverseLayout && edge == ParentAlignment.Edge.MAX) || (this.reverseLayout && edge == ParentAlignment.Edge.MIN);
    }

    private final boolean shouldAlignToStartEdge(ParentAlignment.Edge edge) {
        return edge == ParentAlignment.Edge.MIN_MAX || isStartEdge(edge);
    }

    private final boolean shouldAlignToEndEdge(ParentAlignment.Edge edge) {
        return edge == ParentAlignment.Edge.MIN_MAX || isEndEdge(edge);
    }
}
