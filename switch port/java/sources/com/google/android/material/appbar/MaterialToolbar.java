package com.google.android.material.appbar;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.util.Pair;
import android.view.Menu;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.appcompat.view.menu.MenuBuilder;
import androidx.appcompat.widget.Toolbar;
import androidx.core.graphics.drawable.DrawableCompat;
import androidx.core.view.ViewCompat;
import com.google.android.material.R;
import com.google.android.material.drawable.DrawableUtils;
import com.google.android.material.internal.ToolbarUtils;
import com.google.android.material.shape.MaterialShapeDrawable;
import com.google.android.material.shape.MaterialShapeUtils;

/* loaded from: classes2.dex */
public class MaterialToolbar extends Toolbar {
    private static final int DEF_STYLE_RES = R.style.Widget_MaterialComponents_Toolbar;
    private static final ImageView.ScaleType[] LOGO_SCALE_TYPE_ARRAY = {ImageView.ScaleType.MATRIX, ImageView.ScaleType.FIT_XY, ImageView.ScaleType.FIT_START, ImageView.ScaleType.FIT_CENTER, ImageView.ScaleType.FIT_END, ImageView.ScaleType.CENTER, ImageView.ScaleType.CENTER_CROP, ImageView.ScaleType.CENTER_INSIDE};
    private Boolean logoAdjustViewBounds;
    private ImageView.ScaleType logoScaleType;
    private Integer navigationIconTint;
    private boolean subtitleCentered;
    private boolean titleCentered;

    public ImageView.ScaleType getLogoScaleType() {
        return this.logoScaleType;
    }

    public Integer getNavigationIconTint() {
        return this.navigationIconTint;
    }

    public boolean isSubtitleCentered() {
        return this.subtitleCentered;
    }

    public boolean isTitleCentered() {
        return this.titleCentered;
    }

    public MaterialToolbar(Context context) {
        this(context, null);
    }

    public MaterialToolbar(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.toolbarStyle);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public MaterialToolbar(android.content.Context r8, android.util.AttributeSet r9, int r10) {
        /*
            r7 = this;
            int r4 = com.google.android.material.appbar.MaterialToolbar.DEF_STYLE_RES
            android.content.Context r8 = com.google.android.material.theme.overlay.MaterialThemeOverlay.wrap(r8, r9, r10, r4)
            r7.<init>(r8, r9, r10)
            android.content.Context r8 = r7.getContext()
            int[] r2 = com.google.android.material.R.styleable.MaterialToolbar
            r6 = 0
            int[] r5 = new int[r6]
            r0 = r8
            r1 = r9
            r3 = r10
            android.content.res.TypedArray r9 = com.google.android.material.internal.ThemeEnforcement.obtainStyledAttributes(r0, r1, r2, r3, r4, r5)
            int r10 = com.google.android.material.R.styleable.MaterialToolbar_navigationIconTint
            boolean r10 = r9.hasValue(r10)
            r0 = -1
            if (r10 == 0) goto L2b
            int r10 = com.google.android.material.R.styleable.MaterialToolbar_navigationIconTint
            int r10 = r9.getColor(r10, r0)
            r7.setNavigationIconTint(r10)
        L2b:
            int r10 = com.google.android.material.R.styleable.MaterialToolbar_titleCentered
            boolean r10 = r9.getBoolean(r10, r6)
            r7.titleCentered = r10
            int r10 = com.google.android.material.R.styleable.MaterialToolbar_subtitleCentered
            boolean r10 = r9.getBoolean(r10, r6)
            r7.subtitleCentered = r10
            int r10 = com.google.android.material.R.styleable.MaterialToolbar_logoScaleType
            int r10 = r9.getInt(r10, r0)
            if (r10 < 0) goto L4c
            android.widget.ImageView$ScaleType[] r0 = com.google.android.material.appbar.MaterialToolbar.LOGO_SCALE_TYPE_ARRAY
            int r1 = r0.length
            if (r10 >= r1) goto L4c
            r10 = r0[r10]
            r7.logoScaleType = r10
        L4c:
            int r10 = com.google.android.material.R.styleable.MaterialToolbar_logoAdjustViewBounds
            boolean r10 = r9.hasValue(r10)
            if (r10 == 0) goto L60
            int r10 = com.google.android.material.R.styleable.MaterialToolbar_logoAdjustViewBounds
            boolean r10 = r9.getBoolean(r10, r6)
            java.lang.Boolean r10 = java.lang.Boolean.valueOf(r10)
            r7.logoAdjustViewBounds = r10
        L60:
            r9.recycle()
            r7.initBackground(r8)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.appbar.MaterialToolbar.<init>(android.content.Context, android.util.AttributeSet, int):void");
    }

    @Override // androidx.appcompat.widget.Toolbar
    public void inflateMenu(int i) {
        Menu menu = getMenu();
        boolean z = menu instanceof MenuBuilder;
        if (z) {
            ((MenuBuilder) menu).stopDispatchingItemsChanged();
        }
        super.inflateMenu(i);
        if (z) {
            ((MenuBuilder) menu).startDispatchingItemsChanged();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.appcompat.widget.Toolbar, android.view.ViewGroup, android.view.View
    public void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        maybeCenterTitleViews();
        updateLogoImageView();
    }

    private void maybeCenterTitleViews() {
        if (this.titleCentered || this.subtitleCentered) {
            TextView titleTextView = ToolbarUtils.getTitleTextView(this);
            TextView subtitleTextView = ToolbarUtils.getSubtitleTextView(this);
            if (titleTextView == null && subtitleTextView == null) {
                return;
            }
            Pair<Integer, Integer> calculateTitleBoundLimits = calculateTitleBoundLimits(titleTextView, subtitleTextView);
            if (this.titleCentered && titleTextView != null) {
                layoutTitleCenteredHorizontally(titleTextView, calculateTitleBoundLimits);
            }
            if (!this.subtitleCentered || subtitleTextView == null) {
                return;
            }
            layoutTitleCenteredHorizontally(subtitleTextView, calculateTitleBoundLimits);
        }
    }

    private Pair<Integer, Integer> calculateTitleBoundLimits(TextView textView, TextView textView2) {
        int measuredWidth = getMeasuredWidth();
        int i = measuredWidth / 2;
        int paddingLeft = getPaddingLeft();
        int paddingRight = measuredWidth - getPaddingRight();
        for (int i2 = 0; i2 < getChildCount(); i2++) {
            View childAt = getChildAt(i2);
            if (childAt.getVisibility() != 8 && childAt != textView && childAt != textView2) {
                if (childAt.getRight() < i && childAt.getRight() > paddingLeft) {
                    paddingLeft = childAt.getRight();
                }
                if (childAt.getLeft() > i && childAt.getLeft() < paddingRight) {
                    paddingRight = childAt.getLeft();
                }
            }
        }
        return new Pair<>(Integer.valueOf(paddingLeft), Integer.valueOf(paddingRight));
    }

    private void layoutTitleCenteredHorizontally(View view, Pair<Integer, Integer> pair) {
        int measuredWidth = getMeasuredWidth();
        int measuredWidth2 = view.getMeasuredWidth();
        int i = (measuredWidth / 2) - (measuredWidth2 / 2);
        int i2 = measuredWidth2 + i;
        int max = Math.max(Math.max(((Integer) pair.first).intValue() - i, 0), Math.max(i2 - ((Integer) pair.second).intValue(), 0));
        if (max > 0) {
            i += max;
            i2 -= max;
            view.measure(View.MeasureSpec.makeMeasureSpec(i2 - i, 1073741824), view.getMeasuredHeightAndState());
        }
        view.layout(i, view.getTop(), i2, view.getBottom());
    }

    private void updateLogoImageView() {
        ImageView logoImageView = ToolbarUtils.getLogoImageView(this);
        if (logoImageView != null) {
            Boolean bool = this.logoAdjustViewBounds;
            if (bool != null) {
                logoImageView.setAdjustViewBounds(bool.booleanValue());
            }
            ImageView.ScaleType scaleType = this.logoScaleType;
            if (scaleType != null) {
                logoImageView.setScaleType(scaleType);
            }
        }
    }

    public void setLogoScaleType(ImageView.ScaleType scaleType) {
        if (this.logoScaleType != scaleType) {
            this.logoScaleType = scaleType;
            requestLayout();
        }
    }

    public boolean isLogoAdjustViewBounds() {
        Boolean bool = this.logoAdjustViewBounds;
        return bool != null && bool.booleanValue();
    }

    public void setLogoAdjustViewBounds(boolean z) {
        Boolean bool = this.logoAdjustViewBounds;
        if (bool == null || bool.booleanValue() != z) {
            this.logoAdjustViewBounds = Boolean.valueOf(z);
            requestLayout();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.appcompat.widget.Toolbar, android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        MaterialShapeUtils.setParentAbsoluteElevation(this);
    }

    @Override // android.view.View
    public void setElevation(float f) {
        super.setElevation(f);
        MaterialShapeUtils.setElevation(this, f);
    }

    @Override // androidx.appcompat.widget.Toolbar
    public void setNavigationIcon(Drawable drawable) {
        super.setNavigationIcon(maybeTintNavigationIcon(drawable));
    }

    public void setNavigationIconTint(int i) {
        this.navigationIconTint = Integer.valueOf(i);
        Drawable navigationIcon = getNavigationIcon();
        if (navigationIcon != null) {
            setNavigationIcon(navigationIcon);
        }
    }

    public void clearNavigationIconTint() {
        this.navigationIconTint = null;
        Drawable navigationIcon = getNavigationIcon();
        if (navigationIcon != null) {
            DrawableCompat.setTintList(DrawableCompat.wrap(navigationIcon.mutate()), null);
            setNavigationIcon(navigationIcon);
        }
    }

    public void setTitleCentered(boolean z) {
        if (this.titleCentered != z) {
            this.titleCentered = z;
            requestLayout();
        }
    }

    public void setSubtitleCentered(boolean z) {
        if (this.subtitleCentered != z) {
            this.subtitleCentered = z;
            requestLayout();
        }
    }

    private void initBackground(Context context) {
        ColorStateList colorStateListOrNull;
        Drawable background = getBackground();
        if (background == null) {
            colorStateListOrNull = ColorStateList.valueOf(0);
        } else {
            colorStateListOrNull = DrawableUtils.getColorStateListOrNull(background);
        }
        if (colorStateListOrNull != null) {
            MaterialShapeDrawable materialShapeDrawable = new MaterialShapeDrawable();
            materialShapeDrawable.setFillColor(colorStateListOrNull);
            materialShapeDrawable.initializeElevationOverlay(context);
            materialShapeDrawable.setElevation(ViewCompat.getElevation(this));
            ViewCompat.setBackground(this, materialShapeDrawable);
        }
    }

    private Drawable maybeTintNavigationIcon(Drawable drawable) {
        if (drawable == null || this.navigationIconTint == null) {
            return drawable;
        }
        Drawable wrap = DrawableCompat.wrap(drawable.mutate());
        DrawableCompat.setTint(wrap, this.navigationIconTint.intValue());
        return wrap;
    }
}
