package com.rubensousa.dpadrecyclerview.layoutmanager.focus;

import android.view.View;
import androidx.recyclerview.widget.RecyclerView;
import com.rubensousa.dpadrecyclerview.layoutmanager.layout.LayoutInfo;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: ContinuousFocusInterceptor.kt */
@Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0000\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J*\u0010\u0005\u001a\u0004\u0018\u00010\u00062\u0006\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\u00062\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\u000bH\u0016J\u001a\u0010\u0005\u001a\u0004\u0018\u00010\u00062\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\rH\u0002R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u000e"}, d2 = {"Lcom/rubensousa/dpadrecyclerview/layoutmanager/focus/ContinuousFocusInterceptor;", "Lcom/rubensousa/dpadrecyclerview/layoutmanager/focus/FocusInterceptor;", "layoutInfo", "Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutInfo;", "(Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutInfo;)V", "findFocus", "Landroid/view/View;", "recyclerView", "Landroidx/recyclerview/widget/RecyclerView;", "focusedView", "position", "", "direction", "Lcom/rubensousa/dpadrecyclerview/layoutmanager/focus/FocusDirection;", "dpadrecyclerview_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
/* loaded from: classes3.dex */
public final class ContinuousFocusInterceptor implements FocusInterceptor {
    private final LayoutInfo layoutInfo;

    public ContinuousFocusInterceptor(LayoutInfo layoutInfo) {
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
        if (direction != FocusDirection.PREVIOUS_COLUMN && direction != FocusDirection.NEXT_COLUMN) {
            return null;
        }
        int spanGroupIndex = this.layoutInfo.getSpanGroupIndex(position);
        int i = direction == FocusDirection.NEXT_COLUMN ? position + 1 : position - 1;
        int spanGroupIndex2 = this.layoutInfo.getSpanGroupIndex(i);
        while (spanGroupIndex2 == spanGroupIndex && i >= 0) {
            View findViewByPosition = this.layoutInfo.findViewByPosition(i);
            if (findViewByPosition != null && this.layoutInfo.isViewFocusable(findViewByPosition)) {
                return null;
            }
            i = direction == FocusDirection.NEXT_COLUMN ? i + 1 : i - 1;
            spanGroupIndex2 = this.layoutInfo.getSpanGroupIndex(i);
        }
        if (spanGroupIndex2 == 0 && spanGroupIndex == 0) {
            return null;
        }
        View findViewByPosition2 = this.layoutInfo.findViewByPosition(i);
        while (findViewByPosition2 != null && !this.layoutInfo.isViewFocusable(findViewByPosition2)) {
            i = direction == FocusDirection.NEXT_COLUMN ? i + 1 : i - 1;
            findViewByPosition2 = this.layoutInfo.findViewByPosition(i);
        }
        if (findViewByPosition2 == null || this.layoutInfo.isViewFocusable(findViewByPosition2)) {
            return findViewByPosition2;
        }
        return null;
    }
}
