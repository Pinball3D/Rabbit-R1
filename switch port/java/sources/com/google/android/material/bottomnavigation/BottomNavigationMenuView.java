package com.google.android.material.bottomnavigation;

import android.content.Context;
import android.content.res.Resources;
import android.view.View;
import android.widget.FrameLayout;
import androidx.appcompat.view.menu.MenuBuilder;
import androidx.core.view.ViewCompat;
import com.google.android.material.R;
import com.google.android.material.navigation.NavigationBarItemView;
import com.google.android.material.navigation.NavigationBarMenuView;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes2.dex */
public class BottomNavigationMenuView extends NavigationBarMenuView {
    private final int activeItemMaxWidth;
    private final int activeItemMinWidth;
    private final int inactiveItemMaxWidth;
    private final int inactiveItemMinWidth;
    private boolean itemHorizontalTranslationEnabled;
    private final List<Integer> tempChildWidths;

    public boolean isItemHorizontalTranslationEnabled() {
        return this.itemHorizontalTranslationEnabled;
    }

    public void setItemHorizontalTranslationEnabled(boolean z) {
        this.itemHorizontalTranslationEnabled = z;
    }

    public BottomNavigationMenuView(Context context) {
        super(context);
        this.tempChildWidths = new ArrayList();
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-2, -2);
        layoutParams.gravity = 17;
        setLayoutParams(layoutParams);
        Resources resources = getResources();
        this.inactiveItemMaxWidth = resources.getDimensionPixelSize(R.dimen.design_bottom_navigation_item_max_width);
        this.inactiveItemMinWidth = resources.getDimensionPixelSize(R.dimen.design_bottom_navigation_item_min_width);
        this.activeItemMaxWidth = resources.getDimensionPixelSize(R.dimen.design_bottom_navigation_active_item_max_width);
        this.activeItemMinWidth = resources.getDimensionPixelSize(R.dimen.design_bottom_navigation_active_item_min_width);
    }

    @Override // android.view.View
    protected void onMeasure(int i, int i2) {
        int i3;
        int i4;
        MenuBuilder menu = getMenu();
        int size = View.MeasureSpec.getSize(i);
        int size2 = menu.getVisibleItems().size();
        int childCount = getChildCount();
        this.tempChildWidths.clear();
        int size3 = View.MeasureSpec.getSize(i2);
        int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(size3, 1073741824);
        if (isShifting(getLabelVisibilityMode(), size2) && isItemHorizontalTranslationEnabled()) {
            View childAt = getChildAt(getSelectedItemPosition());
            int i5 = this.activeItemMinWidth;
            if (childAt.getVisibility() != 8) {
                childAt.measure(View.MeasureSpec.makeMeasureSpec(this.activeItemMaxWidth, Integer.MIN_VALUE), makeMeasureSpec);
                i5 = Math.max(i5, childAt.getMeasuredWidth());
            }
            int i6 = size2 - (childAt.getVisibility() != 8 ? 1 : 0);
            int min = Math.min(size - (this.inactiveItemMinWidth * i6), Math.min(i5, this.activeItemMaxWidth));
            int i7 = size - min;
            int min2 = Math.min(i7 / (i6 != 0 ? i6 : 1), this.inactiveItemMaxWidth);
            int i8 = i7 - (i6 * min2);
            int i9 = 0;
            while (i9 < childCount) {
                if (getChildAt(i9).getVisibility() != 8) {
                    i4 = i9 == getSelectedItemPosition() ? min : min2;
                    if (i8 > 0) {
                        i4++;
                        i8--;
                    }
                } else {
                    i4 = 0;
                }
                this.tempChildWidths.add(Integer.valueOf(i4));
                i9++;
            }
        } else {
            int min3 = Math.min(size / (size2 != 0 ? size2 : 1), this.activeItemMaxWidth);
            int i10 = size - (size2 * min3);
            for (int i11 = 0; i11 < childCount; i11++) {
                if (getChildAt(i11).getVisibility() == 8) {
                    i3 = 0;
                } else if (i10 > 0) {
                    i3 = min3 + 1;
                    i10--;
                } else {
                    i3 = min3;
                }
                this.tempChildWidths.add(Integer.valueOf(i3));
            }
        }
        int i12 = 0;
        for (int i13 = 0; i13 < childCount; i13++) {
            View childAt2 = getChildAt(i13);
            if (childAt2.getVisibility() != 8) {
                childAt2.measure(View.MeasureSpec.makeMeasureSpec(this.tempChildWidths.get(i13).intValue(), 1073741824), makeMeasureSpec);
                childAt2.getLayoutParams().width = childAt2.getMeasuredWidth();
                i12 += childAt2.getMeasuredWidth();
            }
        }
        setMeasuredDimension(i12, size3);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        int childCount = getChildCount();
        int i5 = i3 - i;
        int i6 = i4 - i2;
        int i7 = 0;
        for (int i8 = 0; i8 < childCount; i8++) {
            View childAt = getChildAt(i8);
            if (childAt.getVisibility() != 8) {
                if (ViewCompat.getLayoutDirection(this) == 1) {
                    int i9 = i5 - i7;
                    childAt.layout(i9 - childAt.getMeasuredWidth(), 0, i9, i6);
                } else {
                    childAt.layout(i7, 0, childAt.getMeasuredWidth() + i7, i6);
                }
                i7 += childAt.getMeasuredWidth();
            }
        }
    }

    @Override // com.google.android.material.navigation.NavigationBarMenuView
    protected NavigationBarItemView createNavigationBarItemView(Context context) {
        return new BottomNavigationItemView(context);
    }
}
