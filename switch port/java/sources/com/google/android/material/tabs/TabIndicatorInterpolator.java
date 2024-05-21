package com.google.android.material.tabs;

import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.view.View;
import com.google.android.material.animation.AnimationUtils;
import com.google.android.material.internal.ViewUtils;
import com.google.android.material.tabs.TabLayout;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public class TabIndicatorInterpolator {
    private static final int MIN_INDICATOR_WIDTH = 24;

    static RectF calculateTabViewContentBounds(TabLayout.TabView tabView, int i) {
        int contentWidth = tabView.getContentWidth();
        int contentHeight = tabView.getContentHeight();
        int dpToPx = (int) ViewUtils.dpToPx(tabView.getContext(), i);
        if (contentWidth < dpToPx) {
            contentWidth = dpToPx;
        }
        int left = (tabView.getLeft() + tabView.getRight()) / 2;
        int top = (tabView.getTop() + tabView.getBottom()) / 2;
        int i2 = contentWidth / 2;
        return new RectF(left - i2, top - (contentHeight / 2), i2 + left, top + (left / 2));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static RectF calculateIndicatorWidthForTab(TabLayout tabLayout, View view) {
        if (view == null) {
            return new RectF();
        }
        if (!tabLayout.isTabIndicatorFullWidth() && (view instanceof TabLayout.TabView)) {
            return calculateTabViewContentBounds((TabLayout.TabView) view, 24);
        }
        return new RectF(view.getLeft(), view.getTop(), view.getRight(), view.getBottom());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setIndicatorBoundsForTab(TabLayout tabLayout, View view, Drawable drawable) {
        RectF calculateIndicatorWidthForTab = calculateIndicatorWidthForTab(tabLayout, view);
        drawable.setBounds((int) calculateIndicatorWidthForTab.left, drawable.getBounds().top, (int) calculateIndicatorWidthForTab.right, drawable.getBounds().bottom);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void updateIndicatorForOffset(TabLayout tabLayout, View view, View view2, float f, Drawable drawable) {
        RectF calculateIndicatorWidthForTab = calculateIndicatorWidthForTab(tabLayout, view);
        RectF calculateIndicatorWidthForTab2 = calculateIndicatorWidthForTab(tabLayout, view2);
        drawable.setBounds(AnimationUtils.lerp((int) calculateIndicatorWidthForTab.left, (int) calculateIndicatorWidthForTab2.left, f), drawable.getBounds().top, AnimationUtils.lerp((int) calculateIndicatorWidthForTab.right, (int) calculateIndicatorWidthForTab2.right, f), drawable.getBounds().bottom);
    }
}
