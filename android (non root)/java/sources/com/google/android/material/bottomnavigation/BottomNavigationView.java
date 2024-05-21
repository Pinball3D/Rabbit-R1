package com.google.android.material.bottomnavigation;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.widget.FrameLayout;
import androidx.appcompat.widget.TintTypedArray;
import androidx.core.content.ContextCompat;
import androidx.core.view.ViewCompat;
import androidx.core.view.WindowInsetsCompat;
import com.google.android.material.R;
import com.google.android.material.internal.ThemeEnforcement;
import com.google.android.material.internal.ViewUtils;
import com.google.android.material.navigation.NavigationBarMenuView;
import com.google.android.material.navigation.NavigationBarView;

/* loaded from: classes2.dex */
public class BottomNavigationView extends NavigationBarView {
    private static final int MAX_ITEM_COUNT = 5;

    @Deprecated
    /* loaded from: classes2.dex */
    public interface OnNavigationItemReselectedListener extends NavigationBarView.OnItemReselectedListener {
    }

    @Deprecated
    /* loaded from: classes2.dex */
    public interface OnNavigationItemSelectedListener extends NavigationBarView.OnItemSelectedListener {
    }

    private boolean shouldDrawCompatibilityTopDivider() {
        return false;
    }

    @Override // com.google.android.material.navigation.NavigationBarView
    public int getMaxItemCount() {
        return 5;
    }

    public BottomNavigationView(Context context) {
        this(context, null);
    }

    public BottomNavigationView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.bottomNavigationStyle);
    }

    public BottomNavigationView(Context context, AttributeSet attributeSet, int i) {
        this(context, attributeSet, i, R.style.Widget_Design_BottomNavigationView);
    }

    public BottomNavigationView(Context context, AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i, i2);
        Context context2 = getContext();
        TintTypedArray obtainTintedStyledAttributes = ThemeEnforcement.obtainTintedStyledAttributes(context2, attributeSet, R.styleable.BottomNavigationView, i, i2, new int[0]);
        setItemHorizontalTranslationEnabled(obtainTintedStyledAttributes.getBoolean(R.styleable.BottomNavigationView_itemHorizontalTranslationEnabled, true));
        if (obtainTintedStyledAttributes.hasValue(R.styleable.BottomNavigationView_android_minHeight)) {
            setMinimumHeight(obtainTintedStyledAttributes.getDimensionPixelSize(R.styleable.BottomNavigationView_android_minHeight, 0));
        }
        if (obtainTintedStyledAttributes.getBoolean(R.styleable.BottomNavigationView_compatShadowEnabled, true) && shouldDrawCompatibilityTopDivider()) {
            addCompatibilityTopDivider(context2);
        }
        obtainTintedStyledAttributes.recycle();
        applyWindowInsets();
    }

    private void applyWindowInsets() {
        ViewUtils.doOnApplyWindowInsets(this, new ViewUtils.OnApplyWindowInsetsListener() { // from class: com.google.android.material.bottomnavigation.BottomNavigationView.1
            @Override // com.google.android.material.internal.ViewUtils.OnApplyWindowInsetsListener
            public WindowInsetsCompat onApplyWindowInsets(View view, WindowInsetsCompat windowInsetsCompat, ViewUtils.RelativePadding relativePadding) {
                relativePadding.bottom += windowInsetsCompat.getSystemWindowInsetBottom();
                boolean z = ViewCompat.getLayoutDirection(view) == 1;
                int systemWindowInsetLeft = windowInsetsCompat.getSystemWindowInsetLeft();
                int systemWindowInsetRight = windowInsetsCompat.getSystemWindowInsetRight();
                relativePadding.start += z ? systemWindowInsetRight : systemWindowInsetLeft;
                int i = relativePadding.end;
                if (!z) {
                    systemWindowInsetLeft = systemWindowInsetRight;
                }
                relativePadding.end = i + systemWindowInsetLeft;
                relativePadding.applyToView(view);
                return windowInsetsCompat;
            }
        });
    }

    @Override // android.widget.FrameLayout, android.view.View
    protected void onMeasure(int i, int i2) {
        super.onMeasure(i, makeMinHeightSpec(i2));
    }

    private int makeMinHeightSpec(int i) {
        int suggestedMinimumHeight = getSuggestedMinimumHeight();
        if (View.MeasureSpec.getMode(i) == 1073741824 || suggestedMinimumHeight <= 0) {
            return i;
        }
        return View.MeasureSpec.makeMeasureSpec(Math.min(View.MeasureSpec.getSize(i), suggestedMinimumHeight + getPaddingTop() + getPaddingBottom()), 1073741824);
    }

    public void setItemHorizontalTranslationEnabled(boolean z) {
        BottomNavigationMenuView bottomNavigationMenuView = (BottomNavigationMenuView) getMenuView();
        if (bottomNavigationMenuView.isItemHorizontalTranslationEnabled() != z) {
            bottomNavigationMenuView.setItemHorizontalTranslationEnabled(z);
            getPresenter().updateMenuView(false);
        }
    }

    public boolean isItemHorizontalTranslationEnabled() {
        return ((BottomNavigationMenuView) getMenuView()).isItemHorizontalTranslationEnabled();
    }

    @Override // com.google.android.material.navigation.NavigationBarView
    protected NavigationBarMenuView createNavigationBarMenuView(Context context) {
        return new BottomNavigationMenuView(context);
    }

    private void addCompatibilityTopDivider(Context context) {
        View view = new View(context);
        view.setBackgroundColor(ContextCompat.getColor(context, R.color.design_bottom_navigation_shadow_color));
        view.setLayoutParams(new FrameLayout.LayoutParams(-1, getResources().getDimensionPixelSize(R.dimen.design_bottom_navigation_shadow_height)));
        addView(view);
    }

    @Deprecated
    public void setOnNavigationItemSelectedListener(OnNavigationItemSelectedListener onNavigationItemSelectedListener) {
        setOnItemSelectedListener(onNavigationItemSelectedListener);
    }

    @Deprecated
    public void setOnNavigationItemReselectedListener(OnNavigationItemReselectedListener onNavigationItemReselectedListener) {
        setOnItemReselectedListener(onNavigationItemReselectedListener);
    }
}
