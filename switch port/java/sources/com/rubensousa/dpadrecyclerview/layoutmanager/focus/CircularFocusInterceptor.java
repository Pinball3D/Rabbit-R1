package com.rubensousa.dpadrecyclerview.layoutmanager.focus;

import android.view.View;
import androidx.recyclerview.widget.RecyclerView;
import com.rubensousa.dpadrecyclerview.layoutmanager.LayoutConfiguration;
import com.rubensousa.dpadrecyclerview.layoutmanager.layout.LayoutInfo;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: CircularFocusInterceptor.kt */
@Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0000\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J*\u0010\u0005\u001a\u0004\u0018\u00010\u00062\u0006\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\u00062\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\u000bH\u0016J\u001a\u0010\u0005\u001a\u0004\u0018\u00010\u00062\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\rH\u0002R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u000e"}, d2 = {"Lcom/rubensousa/dpadrecyclerview/layoutmanager/focus/CircularFocusInterceptor;", "Lcom/rubensousa/dpadrecyclerview/layoutmanager/focus/FocusInterceptor;", "layoutInfo", "Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutInfo;", "(Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutInfo;)V", "findFocus", "Landroid/view/View;", "recyclerView", "Landroidx/recyclerview/widget/RecyclerView;", "focusedView", "position", "", "direction", "Lcom/rubensousa/dpadrecyclerview/layoutmanager/focus/FocusDirection;", "dpadrecyclerview_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
/* loaded from: classes3.dex */
public final class CircularFocusInterceptor implements FocusInterceptor {
    private final LayoutInfo layoutInfo;

    public CircularFocusInterceptor(LayoutInfo layoutInfo) {
        Intrinsics.checkNotNullParameter(layoutInfo, "layoutInfo");
        this.layoutInfo = layoutInfo;
    }

    @Override // com.rubensousa.dpadrecyclerview.layoutmanager.focus.FocusInterceptor
    public View findFocus(RecyclerView recyclerView, View focusedView, int position, int direction) {
        Intrinsics.checkNotNullParameter(recyclerView, "recyclerView");
        Intrinsics.checkNotNullParameter(focusedView, "focusedView");
        FocusDirection from = FocusDirection.INSTANCE.from(direction, this.layoutInfo.isVertical(), this.layoutInfo.shouldReverseLayout());
        if (from == null) {
            return null;
        }
        return findFocus(position, from);
    }

    private final View findFocus(int position, FocusDirection direction) {
        int spanCount;
        if (direction != FocusDirection.PREVIOUS_COLUMN && direction != FocusDirection.NEXT_COLUMN) {
            return null;
        }
        int startSpanIndex = this.layoutInfo.getStartSpanIndex(position);
        LayoutConfiguration configuration = this.layoutInfo.getConfiguration();
        if (configuration.getSpanSizeLookup().getSpanSize(position) == configuration.getSpanCount()) {
            return null;
        }
        int spanGroupIndex = this.layoutInfo.getSpanGroupIndex(position);
        int i = direction == FocusDirection.NEXT_COLUMN ? position + 1 : position - 1;
        int spanGroupIndex2 = this.layoutInfo.getSpanGroupIndex(i);
        int endSpanIndex = this.layoutInfo.getEndSpanIndex(position);
        while (spanGroupIndex2 == spanGroupIndex && i >= 0) {
            View findViewByPosition = this.layoutInfo.findViewByPosition(i);
            if (findViewByPosition != null && this.layoutInfo.isViewFocusable(findViewByPosition)) {
                return null;
            }
            i = direction == FocusDirection.NEXT_COLUMN ? i + 1 : i - 1;
            spanGroupIndex2 = this.layoutInfo.getSpanGroupIndex(i);
        }
        if (direction == FocusDirection.NEXT_COLUMN) {
            spanCount = position - configuration.getSpanCount();
            while (true) {
                spanCount++;
                if (spanCount > position - 1) {
                    break;
                }
                int spanGroupIndex3 = this.layoutInfo.getSpanGroupIndex(spanCount);
                int startSpanIndex2 = this.layoutInfo.getStartSpanIndex(spanCount);
                View findViewByPosition2 = this.layoutInfo.findViewByPosition(spanCount);
                if (spanGroupIndex3 == spanGroupIndex && startSpanIndex2 != startSpanIndex && findViewByPosition2 != null && this.layoutInfo.isViewFocusable(findViewByPosition2)) {
                    break;
                }
            }
        } else {
            spanCount = configuration.getSpanCount() + position;
            while (true) {
                spanCount--;
                if (spanCount < position + 1) {
                    break;
                }
                int endSpanIndex2 = this.layoutInfo.getEndSpanIndex(spanCount);
                int spanGroupIndex4 = this.layoutInfo.getSpanGroupIndex(spanCount);
                View findViewByPosition3 = this.layoutInfo.findViewByPosition(spanCount);
                if (spanGroupIndex4 == spanGroupIndex && endSpanIndex2 != endSpanIndex && findViewByPosition3 != null && this.layoutInfo.isViewFocusable(findViewByPosition3)) {
                    break;
                }
            }
        }
        View findViewByPosition4 = this.layoutInfo.findViewByPosition(spanCount);
        if (findViewByPosition4 == null || this.layoutInfo.isViewFocusable(findViewByPosition4)) {
            return findViewByPosition4;
        }
        return null;
    }
}
