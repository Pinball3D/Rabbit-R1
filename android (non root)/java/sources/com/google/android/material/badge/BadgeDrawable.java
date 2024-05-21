package com.google.android.material.badge;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.text.TextUtils;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.core.view.ViewCompat;
import com.google.android.material.R;
import com.google.android.material.animation.AnimationUtils;
import com.google.android.material.badge.BadgeState;
import com.google.android.material.internal.TextDrawableHelper;
import com.google.android.material.internal.ThemeEnforcement;
import com.google.android.material.resources.MaterialResources;
import com.google.android.material.resources.TextAppearance;
import com.google.android.material.shape.MaterialShapeDrawable;
import com.google.android.material.shape.ShapeAppearanceModel;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.ref.WeakReference;
import java.text.NumberFormat;
import java.util.Locale;

/* loaded from: classes2.dex */
public class BadgeDrawable extends Drawable implements TextDrawableHelper.TextDrawableDelegate {
    public static final int BADGE_CONTENT_NOT_TRUNCATED = -2;
    static final int BADGE_RADIUS_NOT_SPECIFIED = -1;

    @Deprecated
    public static final int BOTTOM_END = 8388693;

    @Deprecated
    public static final int BOTTOM_START = 8388691;
    static final String DEFAULT_EXCEED_MAX_BADGE_NUMBER_SUFFIX = "+";
    static final String DEFAULT_EXCEED_MAX_BADGE_TEXT_SUFFIX = "…";
    private static final int DEFAULT_STYLE = R.style.Widget_MaterialComponents_Badge;
    private static final int DEFAULT_THEME_ATTR = R.attr.badgeStyle;
    private static final float FONT_SCALE_THRESHOLD = 0.3f;
    static final int OFFSET_ALIGNMENT_MODE_EDGE = 0;
    static final int OFFSET_ALIGNMENT_MODE_LEGACY = 1;
    private static final String TAG = "Badge";
    public static final int TOP_END = 8388661;
    public static final int TOP_START = 8388659;
    private WeakReference<View> anchorViewRef;
    private final Rect badgeBounds;
    private float badgeCenterX;
    private float badgeCenterY;
    private final WeakReference<Context> contextRef;
    private float cornerRadius;
    private WeakReference<FrameLayout> customBadgeParentRef;
    private float halfBadgeHeight;
    private float halfBadgeWidth;
    private int maxBadgeNumber;
    private final MaterialShapeDrawable shapeDrawable;
    private final BadgeState state;
    private final TextDrawableHelper textDrawableHelper;

    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes2.dex */
    public @interface BadgeGravity {
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        return -3;
    }

    @Override // android.graphics.drawable.Drawable
    public boolean isStateful() {
        return false;
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public BadgeState.State getSavedState() {
        return this.state.getOverridingState();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static BadgeDrawable createFromSavedState(Context context, BadgeState.State state) {
        return new BadgeDrawable(context, 0, DEFAULT_THEME_ATTR, DEFAULT_STYLE, state);
    }

    public static BadgeDrawable create(Context context) {
        return new BadgeDrawable(context, 0, DEFAULT_THEME_ATTR, DEFAULT_STYLE, null);
    }

    public static BadgeDrawable createFromResource(Context context, int i) {
        return new BadgeDrawable(context, i, DEFAULT_THEME_ATTR, DEFAULT_STYLE, null);
    }

    public void setVisible(boolean z) {
        this.state.setVisible(z);
        onVisibilityUpdated();
    }

    private void onVisibilityUpdated() {
        boolean isVisible = this.state.isVisible();
        setVisible(isVisible, false);
        if (!BadgeUtils.USE_COMPAT_PARENT || getCustomBadgeParent() == null || isVisible) {
            return;
        }
        ((ViewGroup) getCustomBadgeParent().getParent()).invalidate();
    }

    private void restoreState() {
        onBadgeShapeAppearanceUpdated();
        onBadgeTextAppearanceUpdated();
        onMaxBadgeLengthUpdated();
        onBadgeContentUpdated();
        onAlphaUpdated();
        onBackgroundColorUpdated();
        onBadgeTextColorUpdated();
        onBadgeGravityUpdated();
        updateCenterAndBounds();
        onVisibilityUpdated();
    }

    private BadgeDrawable(Context context, int i, int i2, int i3, BadgeState.State state) {
        int badgeShapeAppearanceResId;
        int badgeShapeAppearanceOverlayResId;
        this.contextRef = new WeakReference<>(context);
        ThemeEnforcement.checkMaterialTheme(context);
        this.badgeBounds = new Rect();
        TextDrawableHelper textDrawableHelper = new TextDrawableHelper(this);
        this.textDrawableHelper = textDrawableHelper;
        textDrawableHelper.getTextPaint().setTextAlign(Paint.Align.CENTER);
        BadgeState badgeState = new BadgeState(context, i, i2, i3, state);
        this.state = badgeState;
        if (hasBadgeContent()) {
            badgeShapeAppearanceResId = badgeState.getBadgeWithTextShapeAppearanceResId();
        } else {
            badgeShapeAppearanceResId = badgeState.getBadgeShapeAppearanceResId();
        }
        if (hasBadgeContent()) {
            badgeShapeAppearanceOverlayResId = badgeState.getBadgeWithTextShapeAppearanceOverlayResId();
        } else {
            badgeShapeAppearanceOverlayResId = badgeState.getBadgeShapeAppearanceOverlayResId();
        }
        this.shapeDrawable = new MaterialShapeDrawable(ShapeAppearanceModel.builder(context, badgeShapeAppearanceResId, badgeShapeAppearanceOverlayResId).build());
        restoreState();
    }

    @Deprecated
    public void updateBadgeCoordinates(View view, ViewGroup viewGroup) {
        if (!(viewGroup instanceof FrameLayout)) {
            throw new IllegalArgumentException("customBadgeParent must be a FrameLayout");
        }
        updateBadgeCoordinates(view, (FrameLayout) viewGroup);
    }

    public void updateBadgeCoordinates(View view) {
        updateBadgeCoordinates(view, (FrameLayout) null);
    }

    public void updateBadgeCoordinates(View view, FrameLayout frameLayout) {
        this.anchorViewRef = new WeakReference<>(view);
        if (BadgeUtils.USE_COMPAT_PARENT && frameLayout == null) {
            tryWrapAnchorInCompatParent(view);
        } else {
            this.customBadgeParentRef = new WeakReference<>(frameLayout);
        }
        if (!BadgeUtils.USE_COMPAT_PARENT) {
            updateAnchorParentToNotClip(view);
        }
        updateCenterAndBounds();
        invalidateSelf();
    }

    private boolean isAnchorViewWrappedInCompatParent() {
        FrameLayout customBadgeParent = getCustomBadgeParent();
        return customBadgeParent != null && customBadgeParent.getId() == R.id.mtrl_anchor_parent;
    }

    public FrameLayout getCustomBadgeParent() {
        WeakReference<FrameLayout> weakReference = this.customBadgeParentRef;
        if (weakReference != null) {
            return weakReference.get();
        }
        return null;
    }

    private void tryWrapAnchorInCompatParent(final View view) {
        ViewGroup viewGroup = (ViewGroup) view.getParent();
        if (viewGroup == null || viewGroup.getId() != R.id.mtrl_anchor_parent) {
            WeakReference<FrameLayout> weakReference = this.customBadgeParentRef;
            if (weakReference == null || weakReference.get() != viewGroup) {
                updateAnchorParentToNotClip(view);
                final FrameLayout frameLayout = new FrameLayout(view.getContext());
                frameLayout.setId(R.id.mtrl_anchor_parent);
                frameLayout.setClipChildren(false);
                frameLayout.setClipToPadding(false);
                frameLayout.setLayoutParams(view.getLayoutParams());
                frameLayout.setMinimumWidth(view.getWidth());
                frameLayout.setMinimumHeight(view.getHeight());
                int indexOfChild = viewGroup.indexOfChild(view);
                viewGroup.removeViewAt(indexOfChild);
                view.setLayoutParams(new FrameLayout.LayoutParams(-1, -1));
                frameLayout.addView(view);
                viewGroup.addView(frameLayout, indexOfChild);
                this.customBadgeParentRef = new WeakReference<>(frameLayout);
                frameLayout.post(new Runnable() { // from class: com.google.android.material.badge.BadgeDrawable.1
                    @Override // java.lang.Runnable
                    public void run() {
                        BadgeDrawable.this.updateBadgeCoordinates(view, frameLayout);
                    }
                });
            }
        }
    }

    private static void updateAnchorParentToNotClip(View view) {
        ViewGroup viewGroup = (ViewGroup) view.getParent();
        viewGroup.setClipChildren(false);
        viewGroup.setClipToPadding(false);
    }

    public int getBackgroundColor() {
        return this.shapeDrawable.getFillColor().getDefaultColor();
    }

    public void setBackgroundColor(int i) {
        this.state.setBackgroundColor(i);
        onBackgroundColorUpdated();
    }

    private void onBackgroundColorUpdated() {
        ColorStateList valueOf = ColorStateList.valueOf(this.state.getBackgroundColor());
        if (this.shapeDrawable.getFillColor() != valueOf) {
            this.shapeDrawable.setFillColor(valueOf);
            invalidateSelf();
        }
    }

    public int getBadgeTextColor() {
        return this.textDrawableHelper.getTextPaint().getColor();
    }

    public void setBadgeTextColor(int i) {
        if (this.textDrawableHelper.getTextPaint().getColor() != i) {
            this.state.setBadgeTextColor(i);
            onBadgeTextColorUpdated();
        }
    }

    private void onBadgeTextColorUpdated() {
        this.textDrawableHelper.getTextPaint().setColor(this.state.getBadgeTextColor());
        invalidateSelf();
    }

    public Locale getBadgeNumberLocale() {
        return this.state.getNumberLocale();
    }

    public void setBadgeNumberLocale(Locale locale) {
        if (locale.equals(this.state.getNumberLocale())) {
            return;
        }
        this.state.setNumberLocale(locale);
        invalidateSelf();
    }

    public boolean hasNumber() {
        return !this.state.hasText() && this.state.hasNumber();
    }

    public int getNumber() {
        if (this.state.hasNumber()) {
            return this.state.getNumber();
        }
        return 0;
    }

    public void setNumber(int i) {
        int max = Math.max(0, i);
        if (this.state.getNumber() != max) {
            this.state.setNumber(max);
            onNumberUpdated();
        }
    }

    public void clearNumber() {
        if (this.state.hasNumber()) {
            this.state.clearNumber();
            onNumberUpdated();
        }
    }

    private void onNumberUpdated() {
        if (hasText()) {
            return;
        }
        onBadgeContentUpdated();
    }

    public boolean hasText() {
        return this.state.hasText();
    }

    public String getText() {
        return this.state.getText();
    }

    public void setText(String str) {
        if (TextUtils.equals(this.state.getText(), str)) {
            return;
        }
        this.state.setText(str);
        onTextUpdated();
    }

    public void clearText() {
        if (this.state.hasText()) {
            this.state.clearText();
            onTextUpdated();
        }
    }

    private void onTextUpdated() {
        onBadgeContentUpdated();
    }

    public int getMaxCharacterCount() {
        return this.state.getMaxCharacterCount();
    }

    public void setMaxCharacterCount(int i) {
        if (this.state.getMaxCharacterCount() != i) {
            this.state.setMaxCharacterCount(i);
            onMaxBadgeLengthUpdated();
        }
    }

    public int getMaxNumber() {
        return this.state.getMaxNumber();
    }

    public void setMaxNumber(int i) {
        if (this.state.getMaxNumber() != i) {
            this.state.setMaxNumber(i);
            onMaxBadgeLengthUpdated();
        }
    }

    private void onMaxBadgeLengthUpdated() {
        updateMaxBadgeNumber();
        this.textDrawableHelper.setTextSizeDirty(true);
        updateCenterAndBounds();
        invalidateSelf();
    }

    public int getBadgeGravity() {
        return this.state.getBadgeGravity();
    }

    public void setBadgeGravity(int i) {
        if (i == 8388691 || i == 8388693) {
            Log.w(TAG, "Bottom badge gravities are deprecated; please use a top gravity instead.");
        }
        if (this.state.getBadgeGravity() != i) {
            this.state.setBadgeGravity(i);
            onBadgeGravityUpdated();
        }
    }

    private void onBadgeGravityUpdated() {
        WeakReference<View> weakReference = this.anchorViewRef;
        if (weakReference == null || weakReference.get() == null) {
            return;
        }
        View view = this.anchorViewRef.get();
        WeakReference<FrameLayout> weakReference2 = this.customBadgeParentRef;
        updateBadgeCoordinates(view, weakReference2 != null ? weakReference2.get() : null);
    }

    @Override // android.graphics.drawable.Drawable
    public int getAlpha() {
        return this.state.getAlpha();
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i) {
        this.state.setAlpha(i);
        onAlphaUpdated();
    }

    private void onAlphaUpdated() {
        this.textDrawableHelper.getTextPaint().setAlpha(getAlpha());
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicHeight() {
        return this.badgeBounds.height();
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicWidth() {
        return this.badgeBounds.width();
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        if (getBounds().isEmpty() || getAlpha() == 0 || !isVisible()) {
            return;
        }
        this.shapeDrawable.draw(canvas);
        if (hasBadgeContent()) {
            drawBadgeContent(canvas);
        }
    }

    @Override // com.google.android.material.internal.TextDrawableHelper.TextDrawableDelegate
    public void onTextSizeChange() {
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable, com.google.android.material.internal.TextDrawableHelper.TextDrawableDelegate
    public boolean onStateChange(int[] iArr) {
        return super.onStateChange(iArr);
    }

    public void setContentDescriptionForText(CharSequence charSequence) {
        this.state.setContentDescriptionForText(charSequence);
    }

    public void setContentDescriptionNumberless(CharSequence charSequence) {
        this.state.setContentDescriptionNumberless(charSequence);
    }

    public void setContentDescriptionQuantityStringsResource(int i) {
        this.state.setContentDescriptionQuantityStringsResource(i);
    }

    public void setContentDescriptionExceedsMaxBadgeNumberStringResource(int i) {
        this.state.setContentDescriptionExceedsMaxBadgeNumberStringResource(i);
    }

    public CharSequence getContentDescription() {
        if (!isVisible()) {
            return null;
        }
        if (hasText()) {
            return getTextContentDescription();
        }
        if (hasNumber()) {
            return getNumberContentDescription();
        }
        return getEmptyContentDescription();
    }

    private String getNumberContentDescription() {
        Context context;
        if (this.state.getContentDescriptionQuantityStrings() == 0 || (context = this.contextRef.get()) == null) {
            return null;
        }
        if (this.maxBadgeNumber == -2 || getNumber() <= this.maxBadgeNumber) {
            return context.getResources().getQuantityString(this.state.getContentDescriptionQuantityStrings(), getNumber(), Integer.valueOf(getNumber()));
        }
        return context.getString(this.state.getContentDescriptionExceedsMaxBadgeNumberStringResource(), Integer.valueOf(this.maxBadgeNumber));
    }

    private CharSequence getTextContentDescription() {
        CharSequence contentDescriptionForText = this.state.getContentDescriptionForText();
        return contentDescriptionForText != null ? contentDescriptionForText : getText();
    }

    private CharSequence getEmptyContentDescription() {
        return this.state.getContentDescriptionNumberless();
    }

    public void setHorizontalPadding(int i) {
        if (i != this.state.getBadgeHorizontalPadding()) {
            this.state.setBadgeHorizontalPadding(i);
            updateCenterAndBounds();
        }
    }

    public int getHorizontalPadding() {
        return this.state.getBadgeHorizontalPadding();
    }

    public void setVerticalPadding(int i) {
        if (i != this.state.getBadgeVerticalPadding()) {
            this.state.setBadgeVerticalPadding(i);
            updateCenterAndBounds();
        }
    }

    public int getVerticalPadding() {
        return this.state.getBadgeVerticalPadding();
    }

    public void setHorizontalOffset(int i) {
        setHorizontalOffsetWithoutText(i);
        setHorizontalOffsetWithText(i);
    }

    public int getHorizontalOffset() {
        return this.state.getHorizontalOffsetWithoutText();
    }

    public void setHorizontalOffsetWithoutText(int i) {
        this.state.setHorizontalOffsetWithoutText(i);
        updateCenterAndBounds();
    }

    public int getHorizontalOffsetWithoutText() {
        return this.state.getHorizontalOffsetWithoutText();
    }

    public void setHorizontalOffsetWithText(int i) {
        this.state.setHorizontalOffsetWithText(i);
        updateCenterAndBounds();
    }

    public int getHorizontalOffsetWithText() {
        return this.state.getHorizontalOffsetWithText();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setAdditionalHorizontalOffset(int i) {
        this.state.setAdditionalHorizontalOffset(i);
        updateCenterAndBounds();
    }

    int getAdditionalHorizontalOffset() {
        return this.state.getAdditionalHorizontalOffset();
    }

    public void setVerticalOffset(int i) {
        setVerticalOffsetWithoutText(i);
        setVerticalOffsetWithText(i);
    }

    public int getVerticalOffset() {
        return this.state.getVerticalOffsetWithoutText();
    }

    public void setVerticalOffsetWithoutText(int i) {
        this.state.setVerticalOffsetWithoutText(i);
        updateCenterAndBounds();
    }

    public int getVerticalOffsetWithoutText() {
        return this.state.getVerticalOffsetWithoutText();
    }

    public void setVerticalOffsetWithText(int i) {
        this.state.setVerticalOffsetWithText(i);
        updateCenterAndBounds();
    }

    public int getVerticalOffsetWithText() {
        return this.state.getVerticalOffsetWithText();
    }

    public void setLargeFontVerticalOffsetAdjustment(int i) {
        this.state.setLargeFontVerticalOffsetAdjustment(i);
        updateCenterAndBounds();
    }

    public int getLargeFontVerticalOffsetAdjustment() {
        return this.state.getLargeFontVerticalOffsetAdjustment();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setAdditionalVerticalOffset(int i) {
        this.state.setAdditionalVerticalOffset(i);
        updateCenterAndBounds();
    }

    int getAdditionalVerticalOffset() {
        return this.state.getAdditionalVerticalOffset();
    }

    public void setAutoAdjustToWithinGrandparentBounds(boolean z) {
        if (this.state.isAutoAdjustedToGrandparentBounds() == z) {
            return;
        }
        this.state.setAutoAdjustToGrandparentBounds(z);
        WeakReference<View> weakReference = this.anchorViewRef;
        if (weakReference == null || weakReference.get() == null) {
            return;
        }
        autoAdjustWithinGrandparentBounds(this.anchorViewRef.get());
    }

    public void setTextAppearance(int i) {
        this.state.setTextAppearanceResId(i);
        onBadgeTextAppearanceUpdated();
    }

    private void onBadgeTextAppearanceUpdated() {
        TextAppearance textAppearance;
        Context context = this.contextRef.get();
        if (context == null || this.textDrawableHelper.getTextAppearance() == (textAppearance = new TextAppearance(context, this.state.getTextAppearanceResId()))) {
            return;
        }
        this.textDrawableHelper.setTextAppearance(textAppearance, context);
        onBadgeTextColorUpdated();
        updateCenterAndBounds();
        invalidateSelf();
    }

    public void setBadgeWithoutTextShapeAppearance(int i) {
        this.state.setBadgeShapeAppearanceResId(i);
        onBadgeShapeAppearanceUpdated();
    }

    public void setBadgeWithoutTextShapeAppearanceOverlay(int i) {
        this.state.setBadgeShapeAppearanceOverlayResId(i);
        onBadgeShapeAppearanceUpdated();
    }

    public void setBadgeWithTextShapeAppearance(int i) {
        this.state.setBadgeWithTextShapeAppearanceResId(i);
        onBadgeShapeAppearanceUpdated();
    }

    public void setBadgeWithTextShapeAppearanceOverlay(int i) {
        this.state.setBadgeWithTextShapeAppearanceOverlayResId(i);
        onBadgeShapeAppearanceUpdated();
    }

    private void onBadgeShapeAppearanceUpdated() {
        int badgeShapeAppearanceResId;
        int badgeShapeAppearanceOverlayResId;
        Context context = this.contextRef.get();
        if (context == null) {
            return;
        }
        MaterialShapeDrawable materialShapeDrawable = this.shapeDrawable;
        if (hasBadgeContent()) {
            badgeShapeAppearanceResId = this.state.getBadgeWithTextShapeAppearanceResId();
        } else {
            badgeShapeAppearanceResId = this.state.getBadgeShapeAppearanceResId();
        }
        if (hasBadgeContent()) {
            badgeShapeAppearanceOverlayResId = this.state.getBadgeWithTextShapeAppearanceOverlayResId();
        } else {
            badgeShapeAppearanceOverlayResId = this.state.getBadgeShapeAppearanceOverlayResId();
        }
        materialShapeDrawable.setShapeAppearanceModel(ShapeAppearanceModel.builder(context, badgeShapeAppearanceResId, badgeShapeAppearanceOverlayResId).build());
        invalidateSelf();
    }

    private void updateCenterAndBounds() {
        Context context = this.contextRef.get();
        WeakReference<View> weakReference = this.anchorViewRef;
        View view = weakReference != null ? weakReference.get() : null;
        if (context == null || view == null) {
            return;
        }
        Rect rect = new Rect();
        rect.set(this.badgeBounds);
        Rect rect2 = new Rect();
        view.getDrawingRect(rect2);
        WeakReference<FrameLayout> weakReference2 = this.customBadgeParentRef;
        FrameLayout frameLayout = weakReference2 != null ? weakReference2.get() : null;
        if (frameLayout != null || BadgeUtils.USE_COMPAT_PARENT) {
            if (frameLayout == null) {
                frameLayout = (ViewGroup) view.getParent();
            }
            frameLayout.offsetDescendantRectToMyCoords(view, rect2);
        }
        calculateCenterAndBounds(rect2, view);
        BadgeUtils.updateBadgeBounds(this.badgeBounds, this.badgeCenterX, this.badgeCenterY, this.halfBadgeWidth, this.halfBadgeHeight);
        float f = this.cornerRadius;
        if (f != -1.0f) {
            this.shapeDrawable.setCornerSize(f);
        }
        if (rect.equals(this.badgeBounds)) {
            return;
        }
        this.shapeDrawable.setBounds(this.badgeBounds);
    }

    private int getTotalVerticalOffsetForState() {
        int verticalOffsetWithoutText = this.state.getVerticalOffsetWithoutText();
        if (hasBadgeContent()) {
            verticalOffsetWithoutText = this.state.getVerticalOffsetWithText();
            Context context = this.contextRef.get();
            if (context != null) {
                verticalOffsetWithoutText = AnimationUtils.lerp(verticalOffsetWithoutText, verticalOffsetWithoutText - this.state.getLargeFontVerticalOffsetAdjustment(), AnimationUtils.lerp(0.0f, 1.0f, FONT_SCALE_THRESHOLD, 1.0f, MaterialResources.getFontScale(context) - 1.0f));
            }
        }
        if (this.state.offsetAlignmentMode == 0) {
            verticalOffsetWithoutText -= Math.round(this.halfBadgeHeight);
        }
        return verticalOffsetWithoutText + this.state.getAdditionalVerticalOffset();
    }

    private int getTotalHorizontalOffsetForState() {
        int horizontalOffsetWithoutText;
        if (hasBadgeContent()) {
            horizontalOffsetWithoutText = this.state.getHorizontalOffsetWithText();
        } else {
            horizontalOffsetWithoutText = this.state.getHorizontalOffsetWithoutText();
        }
        if (this.state.offsetAlignmentMode == 1) {
            horizontalOffsetWithoutText += hasBadgeContent() ? this.state.horizontalInsetWithText : this.state.horizontalInset;
        }
        return horizontalOffsetWithoutText + this.state.getAdditionalHorizontalOffset();
    }

    private void calculateCenterAndBounds(Rect rect, View view) {
        float f;
        float f2;
        float f3 = hasBadgeContent() ? this.state.badgeWithTextRadius : this.state.badgeRadius;
        this.cornerRadius = f3;
        if (f3 != -1.0f) {
            this.halfBadgeWidth = f3;
            this.halfBadgeHeight = f3;
        } else {
            this.halfBadgeWidth = Math.round((hasBadgeContent() ? this.state.badgeWithTextWidth : this.state.badgeWidth) / 2.0f);
            this.halfBadgeHeight = Math.round((hasBadgeContent() ? this.state.badgeWithTextHeight : this.state.badgeHeight) / 2.0f);
        }
        if (hasBadgeContent()) {
            String badgeContent = getBadgeContent();
            this.halfBadgeWidth = Math.max(this.halfBadgeWidth, (this.textDrawableHelper.getTextWidth(badgeContent) / 2.0f) + this.state.getBadgeHorizontalPadding());
            float max = Math.max(this.halfBadgeHeight, (this.textDrawableHelper.getTextHeight(badgeContent) / 2.0f) + this.state.getBadgeVerticalPadding());
            this.halfBadgeHeight = max;
            this.halfBadgeWidth = Math.max(this.halfBadgeWidth, max);
        }
        int totalVerticalOffsetForState = getTotalVerticalOffsetForState();
        int badgeGravity = this.state.getBadgeGravity();
        if (badgeGravity == 8388691 || badgeGravity == 8388693) {
            this.badgeCenterY = rect.bottom - totalVerticalOffsetForState;
        } else {
            this.badgeCenterY = rect.top + totalVerticalOffsetForState;
        }
        int totalHorizontalOffsetForState = getTotalHorizontalOffsetForState();
        int badgeGravity2 = this.state.getBadgeGravity();
        if (badgeGravity2 == 8388659 || badgeGravity2 == 8388691) {
            if (ViewCompat.getLayoutDirection(view) == 0) {
                f = (rect.left - this.halfBadgeWidth) + totalHorizontalOffsetForState;
            } else {
                f = (rect.right + this.halfBadgeWidth) - totalHorizontalOffsetForState;
            }
            this.badgeCenterX = f;
        } else {
            if (ViewCompat.getLayoutDirection(view) == 0) {
                f2 = (rect.right + this.halfBadgeWidth) - totalHorizontalOffsetForState;
            } else {
                f2 = (rect.left - this.halfBadgeWidth) + totalHorizontalOffsetForState;
            }
            this.badgeCenterX = f2;
        }
        if (this.state.isAutoAdjustedToGrandparentBounds()) {
            autoAdjustWithinGrandparentBounds(view);
        }
    }

    private void autoAdjustWithinGrandparentBounds(View view) {
        float f;
        float f2;
        View customBadgeParent = getCustomBadgeParent();
        if (customBadgeParent == null) {
            if (!(view.getParent() instanceof View)) {
                return;
            }
            float y = view.getY();
            f2 = view.getX();
            customBadgeParent = (View) view.getParent();
            f = y;
        } else if (!isAnchorViewWrappedInCompatParent()) {
            f = 0.0f;
            f2 = 0.0f;
        } else {
            if (!(customBadgeParent.getParent() instanceof View)) {
                return;
            }
            f = customBadgeParent.getY();
            f2 = customBadgeParent.getX();
            customBadgeParent = (View) customBadgeParent.getParent();
        }
        float topCutOff = getTopCutOff(customBadgeParent, f);
        float leftCutOff = getLeftCutOff(customBadgeParent, f2);
        float bottomCutOff = getBottomCutOff(customBadgeParent, f);
        float rightCutoff = getRightCutoff(customBadgeParent, f2);
        if (topCutOff < 0.0f) {
            this.badgeCenterY += Math.abs(topCutOff);
        }
        if (leftCutOff < 0.0f) {
            this.badgeCenterX += Math.abs(leftCutOff);
        }
        if (bottomCutOff > 0.0f) {
            this.badgeCenterY -= Math.abs(bottomCutOff);
        }
        if (rightCutoff > 0.0f) {
            this.badgeCenterX -= Math.abs(rightCutoff);
        }
    }

    private float getTopCutOff(View view, float f) {
        return (this.badgeCenterY - this.halfBadgeHeight) + view.getY() + f;
    }

    private float getLeftCutOff(View view, float f) {
        return (this.badgeCenterX - this.halfBadgeWidth) + view.getX() + f;
    }

    private float getBottomCutOff(View view, float f) {
        if (!(view.getParent() instanceof View)) {
            return 0.0f;
        }
        return ((this.badgeCenterY + this.halfBadgeHeight) - (((View) view.getParent()).getHeight() - view.getY())) + f;
    }

    private float getRightCutoff(View view, float f) {
        if (!(view.getParent() instanceof View)) {
            return 0.0f;
        }
        return ((this.badgeCenterX + this.halfBadgeWidth) - (((View) view.getParent()).getWidth() - view.getX())) + f;
    }

    private void drawBadgeContent(Canvas canvas) {
        String badgeContent = getBadgeContent();
        if (badgeContent != null) {
            Rect rect = new Rect();
            this.textDrawableHelper.getTextPaint().getTextBounds(badgeContent, 0, badgeContent.length(), rect);
            float exactCenterY = this.badgeCenterY - rect.exactCenterY();
            canvas.drawText(badgeContent, this.badgeCenterX, rect.bottom <= 0 ? (int) exactCenterY : Math.round(exactCenterY), this.textDrawableHelper.getTextPaint());
        }
    }

    private boolean hasBadgeContent() {
        return hasText() || hasNumber();
    }

    private String getBadgeContent() {
        if (hasText()) {
            return getTextBadgeText();
        }
        if (hasNumber()) {
            return getNumberBadgeText();
        }
        return null;
    }

    private String getTextBadgeText() {
        String text = getText();
        int maxCharacterCount = getMaxCharacterCount();
        if (maxCharacterCount == -2 || text == null || text.length() <= maxCharacterCount) {
            return text;
        }
        Context context = this.contextRef.get();
        if (context == null) {
            return "";
        }
        return String.format(context.getString(R.string.m3_exceed_max_badge_text_suffix), text.substring(0, maxCharacterCount - 1), DEFAULT_EXCEED_MAX_BADGE_TEXT_SUFFIX);
    }

    private String getNumberBadgeText() {
        if (this.maxBadgeNumber == -2 || getNumber() <= this.maxBadgeNumber) {
            return NumberFormat.getInstance(this.state.getNumberLocale()).format(getNumber());
        }
        Context context = this.contextRef.get();
        return context == null ? "" : String.format(this.state.getNumberLocale(), context.getString(R.string.mtrl_exceed_max_badge_number_suffix), Integer.valueOf(this.maxBadgeNumber), DEFAULT_EXCEED_MAX_BADGE_NUMBER_SUFFIX);
    }

    private void onBadgeContentUpdated() {
        this.textDrawableHelper.setTextSizeDirty(true);
        onBadgeShapeAppearanceUpdated();
        updateCenterAndBounds();
        invalidateSelf();
    }

    private void updateMaxBadgeNumber() {
        if (getMaxCharacterCount() != -2) {
            this.maxBadgeNumber = ((int) Math.pow(10.0d, getMaxCharacterCount() - 1.0d)) - 1;
        } else {
            this.maxBadgeNumber = getMaxNumber();
        }
    }
}
