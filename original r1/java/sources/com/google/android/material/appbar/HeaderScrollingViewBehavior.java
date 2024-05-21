package com.google.android.material.appbar;

import android.content.Context;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.view.View;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.core.math.MathUtils;
import androidx.core.view.GravityCompat;
import androidx.core.view.ViewCompat;
import androidx.core.view.WindowInsetsCompat;
import java.util.List;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public abstract class HeaderScrollingViewBehavior extends ViewOffsetBehavior<View> {
    private int overlayTop;
    final Rect tempRect1;
    final Rect tempRect2;
    private int verticalLayoutGap;

    private static int resolveGravity(int i) {
        if (i == 0) {
            return 8388659;
        }
        return i;
    }

    abstract View findFirstDependency(List<View> list);

    float getOverlapRatioForOffset(View view) {
        return 1.0f;
    }

    public final int getOverlayTop() {
        return this.overlayTop;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final int getVerticalLayoutGap() {
        return this.verticalLayoutGap;
    }

    public final void setOverlayTop(int i) {
        this.overlayTop = i;
    }

    protected boolean shouldHeaderOverlapScrollingChild() {
        return false;
    }

    public HeaderScrollingViewBehavior() {
        this.tempRect1 = new Rect();
        this.tempRect2 = new Rect();
        this.verticalLayoutGap = 0;
    }

    public HeaderScrollingViewBehavior(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.tempRect1 = new Rect();
        this.tempRect2 = new Rect();
        this.verticalLayoutGap = 0;
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    public boolean onMeasureChild(CoordinatorLayout coordinatorLayout, View view, int i, int i2, int i3, int i4) {
        View findFirstDependency;
        WindowInsetsCompat lastWindowInsets;
        int i5 = view.getLayoutParams().height;
        if ((i5 != -1 && i5 != -2) || (findFirstDependency = findFirstDependency(coordinatorLayout.getDependencies(view))) == null) {
            return false;
        }
        int size = View.MeasureSpec.getSize(i3);
        if (size > 0) {
            if (ViewCompat.getFitsSystemWindows(findFirstDependency) && (lastWindowInsets = coordinatorLayout.getLastWindowInsets()) != null) {
                size += lastWindowInsets.getSystemWindowInsetTop() + lastWindowInsets.getSystemWindowInsetBottom();
            }
        } else {
            size = coordinatorLayout.getHeight();
        }
        int scrollRange = size + getScrollRange(findFirstDependency);
        int measuredHeight = findFirstDependency.getMeasuredHeight();
        if (shouldHeaderOverlapScrollingChild()) {
            view.setTranslationY(-measuredHeight);
        } else {
            view.setTranslationY(0.0f);
            scrollRange -= measuredHeight;
        }
        coordinatorLayout.onMeasureChild(view, i, i2, View.MeasureSpec.makeMeasureSpec(scrollRange, i5 == -1 ? 1073741824 : Integer.MIN_VALUE), i4);
        return true;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.material.appbar.ViewOffsetBehavior
    public void layoutChild(CoordinatorLayout coordinatorLayout, View view, int i) {
        View findFirstDependency = findFirstDependency(coordinatorLayout.getDependencies(view));
        if (findFirstDependency != null) {
            CoordinatorLayout.LayoutParams layoutParams = (CoordinatorLayout.LayoutParams) view.getLayoutParams();
            Rect rect = this.tempRect1;
            rect.set(coordinatorLayout.getPaddingLeft() + layoutParams.leftMargin, findFirstDependency.getBottom() + layoutParams.topMargin, (coordinatorLayout.getWidth() - coordinatorLayout.getPaddingRight()) - layoutParams.rightMargin, ((coordinatorLayout.getHeight() + findFirstDependency.getBottom()) - coordinatorLayout.getPaddingBottom()) - layoutParams.bottomMargin);
            WindowInsetsCompat lastWindowInsets = coordinatorLayout.getLastWindowInsets();
            if (lastWindowInsets != null && ViewCompat.getFitsSystemWindows(coordinatorLayout) && !ViewCompat.getFitsSystemWindows(view)) {
                rect.left += lastWindowInsets.getSystemWindowInsetLeft();
                rect.right -= lastWindowInsets.getSystemWindowInsetRight();
            }
            Rect rect2 = this.tempRect2;
            GravityCompat.apply(resolveGravity(layoutParams.gravity), view.getMeasuredWidth(), view.getMeasuredHeight(), rect, rect2, i);
            int overlapPixelsForOffset = getOverlapPixelsForOffset(findFirstDependency);
            view.layout(rect2.left, rect2.top - overlapPixelsForOffset, rect2.right, rect2.bottom - overlapPixelsForOffset);
            this.verticalLayoutGap = rect2.top - findFirstDependency.getBottom();
            return;
        }
        super.layoutChild(coordinatorLayout, view, i);
        this.verticalLayoutGap = 0;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final int getOverlapPixelsForOffset(View view) {
        if (this.overlayTop == 0) {
            return 0;
        }
        float overlapRatioForOffset = getOverlapRatioForOffset(view);
        int i = this.overlayTop;
        return MathUtils.clamp((int) (overlapRatioForOffset * i), 0, i);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int getScrollRange(View view) {
        return view.getMeasuredHeight();
    }
}
