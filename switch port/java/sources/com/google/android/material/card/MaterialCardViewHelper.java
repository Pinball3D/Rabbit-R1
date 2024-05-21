package com.google.android.material.card;

import android.animation.TimeInterpolator;
import android.animation.ValueAnimator;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.InsetDrawable;
import android.graphics.drawable.LayerDrawable;
import android.graphics.drawable.RippleDrawable;
import android.graphics.drawable.StateListDrawable;
import android.util.AttributeSet;
import android.view.View;
import androidx.core.graphics.drawable.DrawableCompat;
import androidx.core.view.GravityCompat;
import androidx.core.view.ViewCompat;
import com.google.android.material.R;
import com.google.android.material.animation.AnimationUtils;
import com.google.android.material.color.MaterialColors;
import com.google.android.material.motion.MotionUtils;
import com.google.android.material.resources.MaterialResources;
import com.google.android.material.ripple.RippleUtils;
import com.google.android.material.shape.CornerTreatment;
import com.google.android.material.shape.CutCornerTreatment;
import com.google.android.material.shape.MaterialShapeDrawable;
import com.google.android.material.shape.RoundedCornerTreatment;
import com.google.android.material.shape.ShapeAppearanceModel;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public class MaterialCardViewHelper {
    private static final float CARD_VIEW_SHADOW_MULTIPLIER = 1.5f;
    private static final int CHECKED_ICON_LAYER_INDEX = 2;
    public static final int DEFAULT_FADE_ANIM_DURATION = 300;
    private static final int DEFAULT_STROKE_VALUE = -1;
    private final MaterialShapeDrawable bgDrawable;
    private boolean checkable;
    private Drawable checkedIcon;
    private int checkedIconGravity;
    private int checkedIconMargin;
    private int checkedIconSize;
    private ColorStateList checkedIconTint;
    private LayerDrawable clickableForegroundDrawable;
    private MaterialShapeDrawable compatRippleDrawable;
    private Drawable fgDrawable;
    private final MaterialShapeDrawable foregroundContentDrawable;
    private MaterialShapeDrawable foregroundShapeDrawable;
    private ValueAnimator iconAnimator;
    private final TimeInterpolator iconFadeAnimInterpolator;
    private final int iconFadeInAnimDuration;
    private final int iconFadeOutAnimDuration;
    private final MaterialCardView materialCardView;
    private ColorStateList rippleColor;
    private Drawable rippleDrawable;
    private ShapeAppearanceModel shapeAppearanceModel;
    private ColorStateList strokeColor;
    private int strokeWidth;
    private static final double COS_45 = Math.cos(Math.toRadians(45.0d));
    private static final Drawable CHECKED_ICON_NONE = null;
    private final Rect userContentPadding = new Rect();
    private boolean isBackgroundOverwritten = false;
    private float checkedAnimationProgress = 0.0f;

    private boolean isCheckedIconBottom() {
        return (this.checkedIconGravity & 80) == 80;
    }

    private boolean isCheckedIconEnd() {
        return (this.checkedIconGravity & GravityCompat.END) == 8388613;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public MaterialShapeDrawable getBackground() {
        return this.bgDrawable;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Drawable getCheckedIcon() {
        return this.checkedIcon;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int getCheckedIconGravity() {
        return this.checkedIconGravity;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int getCheckedIconMargin() {
        return this.checkedIconMargin;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int getCheckedIconSize() {
        return this.checkedIconSize;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public ColorStateList getCheckedIconTint() {
        return this.checkedIconTint;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public ColorStateList getRippleColor() {
        return this.rippleColor;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public ShapeAppearanceModel getShapeAppearanceModel() {
        return this.shapeAppearanceModel;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public ColorStateList getStrokeColorStateList() {
        return this.strokeColor;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int getStrokeWidth() {
        return this.strokeWidth;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Rect getUserContentPadding() {
        return this.userContentPadding;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean isBackgroundOverwritten() {
        return this.isBackgroundOverwritten;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean isCheckable() {
        return this.checkable;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setBackgroundOverwritten(boolean z) {
        this.isBackgroundOverwritten = z;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setCheckable(boolean z) {
        this.checkable = z;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setCheckedIconMargin(int i) {
        this.checkedIconMargin = i;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setCheckedIconSize(int i) {
        this.checkedIconSize = i;
    }

    public MaterialCardViewHelper(MaterialCardView materialCardView, AttributeSet attributeSet, int i, int i2) {
        this.materialCardView = materialCardView;
        MaterialShapeDrawable materialShapeDrawable = new MaterialShapeDrawable(materialCardView.getContext(), attributeSet, i, i2);
        this.bgDrawable = materialShapeDrawable;
        materialShapeDrawable.initializeElevationOverlay(materialCardView.getContext());
        materialShapeDrawable.setShadowColor(-12303292);
        ShapeAppearanceModel.Builder builder = materialShapeDrawable.getShapeAppearanceModel().toBuilder();
        TypedArray obtainStyledAttributes = materialCardView.getContext().obtainStyledAttributes(attributeSet, R.styleable.CardView, i, R.style.CardView);
        if (obtainStyledAttributes.hasValue(R.styleable.CardView_cardCornerRadius)) {
            builder.setAllCornerSizes(obtainStyledAttributes.getDimension(R.styleable.CardView_cardCornerRadius, 0.0f));
        }
        this.foregroundContentDrawable = new MaterialShapeDrawable();
        setShapeAppearanceModel(builder.build());
        this.iconFadeAnimInterpolator = MotionUtils.resolveThemeInterpolator(materialCardView.getContext(), R.attr.motionEasingLinearInterpolator, AnimationUtils.LINEAR_INTERPOLATOR);
        this.iconFadeInAnimDuration = MotionUtils.resolveThemeDuration(materialCardView.getContext(), R.attr.motionDurationShort2, 300);
        this.iconFadeOutAnimDuration = MotionUtils.resolveThemeDuration(materialCardView.getContext(), R.attr.motionDurationShort1, 300);
        obtainStyledAttributes.recycle();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void loadFromAttributes(TypedArray typedArray) {
        ColorStateList colorStateList = MaterialResources.getColorStateList(this.materialCardView.getContext(), typedArray, R.styleable.MaterialCardView_strokeColor);
        this.strokeColor = colorStateList;
        if (colorStateList == null) {
            this.strokeColor = ColorStateList.valueOf(-1);
        }
        this.strokeWidth = typedArray.getDimensionPixelSize(R.styleable.MaterialCardView_strokeWidth, 0);
        boolean z = typedArray.getBoolean(R.styleable.MaterialCardView_android_checkable, false);
        this.checkable = z;
        this.materialCardView.setLongClickable(z);
        this.checkedIconTint = MaterialResources.getColorStateList(this.materialCardView.getContext(), typedArray, R.styleable.MaterialCardView_checkedIconTint);
        setCheckedIcon(MaterialResources.getDrawable(this.materialCardView.getContext(), typedArray, R.styleable.MaterialCardView_checkedIcon));
        setCheckedIconSize(typedArray.getDimensionPixelSize(R.styleable.MaterialCardView_checkedIconSize, 0));
        setCheckedIconMargin(typedArray.getDimensionPixelSize(R.styleable.MaterialCardView_checkedIconMargin, 0));
        this.checkedIconGravity = typedArray.getInteger(R.styleable.MaterialCardView_checkedIconGravity, 8388661);
        ColorStateList colorStateList2 = MaterialResources.getColorStateList(this.materialCardView.getContext(), typedArray, R.styleable.MaterialCardView_rippleColor);
        this.rippleColor = colorStateList2;
        if (colorStateList2 == null) {
            this.rippleColor = ColorStateList.valueOf(MaterialColors.getColor(this.materialCardView, R.attr.colorControlHighlight));
        }
        setCardForegroundColor(MaterialResources.getColorStateList(this.materialCardView.getContext(), typedArray, R.styleable.MaterialCardView_cardForegroundColor));
        updateRippleColor();
        updateElevation();
        updateStroke();
        this.materialCardView.setBackgroundInternal(insetDrawable(this.bgDrawable));
        Drawable clickableForeground = shouldUseClickableForeground() ? getClickableForeground() : this.foregroundContentDrawable;
        this.fgDrawable = clickableForeground;
        this.materialCardView.setForeground(insetDrawable(clickableForeground));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setStrokeColor(ColorStateList colorStateList) {
        if (this.strokeColor == colorStateList) {
            return;
        }
        this.strokeColor = colorStateList;
        updateStroke();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int getStrokeColor() {
        ColorStateList colorStateList = this.strokeColor;
        if (colorStateList == null) {
            return -1;
        }
        return colorStateList.getDefaultColor();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setStrokeWidth(int i) {
        if (i == this.strokeWidth) {
            return;
        }
        this.strokeWidth = i;
        updateStroke();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setCardBackgroundColor(ColorStateList colorStateList) {
        this.bgDrawable.setFillColor(colorStateList);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public ColorStateList getCardBackgroundColor() {
        return this.bgDrawable.getFillColor();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setCardForegroundColor(ColorStateList colorStateList) {
        MaterialShapeDrawable materialShapeDrawable = this.foregroundContentDrawable;
        if (colorStateList == null) {
            colorStateList = ColorStateList.valueOf(0);
        }
        materialShapeDrawable.setFillColor(colorStateList);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public ColorStateList getCardForegroundColor() {
        return this.foregroundContentDrawable.getFillColor();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setUserContentPadding(int i, int i2, int i3, int i4) {
        this.userContentPadding.set(i, i2, i3, i4);
        updateContentPadding();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void updateClickable() {
        Drawable drawable = this.fgDrawable;
        Drawable clickableForeground = shouldUseClickableForeground() ? getClickableForeground() : this.foregroundContentDrawable;
        this.fgDrawable = clickableForeground;
        if (drawable != clickableForeground) {
            updateInsetForeground(clickableForeground);
        }
    }

    public void animateCheckedIcon(boolean z) {
        float f = z ? 1.0f : 0.0f;
        float f2 = z ? 1.0f - this.checkedAnimationProgress : this.checkedAnimationProgress;
        ValueAnimator valueAnimator = this.iconAnimator;
        if (valueAnimator != null) {
            valueAnimator.cancel();
            this.iconAnimator = null;
        }
        ValueAnimator ofFloat = ValueAnimator.ofFloat(this.checkedAnimationProgress, f);
        this.iconAnimator = ofFloat;
        ofFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.google.android.material.card.MaterialCardViewHelper$$ExternalSyntheticLambda0
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator2) {
                MaterialCardViewHelper.this.m5483xa4d79c2b(valueAnimator2);
            }
        });
        this.iconAnimator.setInterpolator(this.iconFadeAnimInterpolator);
        this.iconAnimator.setDuration((z ? this.iconFadeInAnimDuration : this.iconFadeOutAnimDuration) * f2);
        this.iconAnimator.start();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: lambda$animateCheckedIcon$0$com-google-android-material-card-MaterialCardViewHelper, reason: not valid java name */
    public /* synthetic */ void m5483xa4d79c2b(ValueAnimator valueAnimator) {
        float floatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
        this.checkedIcon.setAlpha((int) (255.0f * floatValue));
        this.checkedAnimationProgress = floatValue;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setCornerRadius(float f) {
        setShapeAppearanceModel(this.shapeAppearanceModel.withCornerSize(f));
        this.fgDrawable.invalidateSelf();
        if (shouldAddCornerPaddingOutsideCardBackground() || shouldAddCornerPaddingInsideCardBackground()) {
            updateContentPadding();
        }
        if (shouldAddCornerPaddingOutsideCardBackground()) {
            updateInsets();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public float getCornerRadius() {
        return this.bgDrawable.getTopLeftCornerResolvedSize();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setProgress(float f) {
        this.bgDrawable.setInterpolation(f);
        MaterialShapeDrawable materialShapeDrawable = this.foregroundContentDrawable;
        if (materialShapeDrawable != null) {
            materialShapeDrawable.setInterpolation(f);
        }
        MaterialShapeDrawable materialShapeDrawable2 = this.foregroundShapeDrawable;
        if (materialShapeDrawable2 != null) {
            materialShapeDrawable2.setInterpolation(f);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public float getProgress() {
        return this.bgDrawable.getInterpolation();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void updateElevation() {
        this.bgDrawable.setElevation(this.materialCardView.getCardElevation());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void updateInsets() {
        if (!isBackgroundOverwritten()) {
            this.materialCardView.setBackgroundInternal(insetDrawable(this.bgDrawable));
        }
        this.materialCardView.setForeground(insetDrawable(this.fgDrawable));
    }

    void updateStroke() {
        this.foregroundContentDrawable.setStroke(this.strokeWidth, this.strokeColor);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void updateContentPadding() {
        int calculateActualCornerPadding = (int) (((shouldAddCornerPaddingInsideCardBackground() || shouldAddCornerPaddingOutsideCardBackground()) ? calculateActualCornerPadding() : 0.0f) - getParentCardViewCalculatedCornerPadding());
        this.materialCardView.setAncestorContentPadding(this.userContentPadding.left + calculateActualCornerPadding, this.userContentPadding.top + calculateActualCornerPadding, this.userContentPadding.right + calculateActualCornerPadding, this.userContentPadding.bottom + calculateActualCornerPadding);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setRippleColor(ColorStateList colorStateList) {
        this.rippleColor = colorStateList;
        updateRippleColor();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setCheckedIconTint(ColorStateList colorStateList) {
        this.checkedIconTint = colorStateList;
        Drawable drawable = this.checkedIcon;
        if (drawable != null) {
            DrawableCompat.setTintList(drawable, colorStateList);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setCheckedIcon(Drawable drawable) {
        if (drawable != null) {
            Drawable mutate = DrawableCompat.wrap(drawable).mutate();
            this.checkedIcon = mutate;
            DrawableCompat.setTintList(mutate, this.checkedIconTint);
            setChecked(this.materialCardView.isChecked());
        } else {
            this.checkedIcon = CHECKED_ICON_NONE;
        }
        LayerDrawable layerDrawable = this.clickableForegroundDrawable;
        if (layerDrawable != null) {
            layerDrawable.setDrawableByLayerId(R.id.mtrl_card_checked_layer_id, this.checkedIcon);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void recalculateCheckedIconPosition(int i, int i2) {
        int i3;
        int i4;
        int i5;
        int i6;
        if (this.clickableForegroundDrawable != null) {
            if (this.materialCardView.getUseCompatPadding()) {
                i3 = (int) Math.ceil(calculateVerticalBackgroundPadding() * 2.0f);
                i4 = (int) Math.ceil(calculateHorizontalBackgroundPadding() * 2.0f);
            } else {
                i3 = 0;
                i4 = 0;
            }
            int i7 = isCheckedIconEnd() ? ((i - this.checkedIconMargin) - this.checkedIconSize) - i4 : this.checkedIconMargin;
            int i8 = isCheckedIconBottom() ? this.checkedIconMargin : ((i2 - this.checkedIconMargin) - this.checkedIconSize) - i3;
            int i9 = isCheckedIconEnd() ? this.checkedIconMargin : ((i - this.checkedIconMargin) - this.checkedIconSize) - i4;
            int i10 = isCheckedIconBottom() ? ((i2 - this.checkedIconMargin) - this.checkedIconSize) - i3 : this.checkedIconMargin;
            if (ViewCompat.getLayoutDirection(this.materialCardView) == 1) {
                i6 = i9;
                i5 = i7;
            } else {
                i5 = i9;
                i6 = i7;
            }
            this.clickableForegroundDrawable.setLayerInset(2, i6, i10, i5, i8);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void forceRippleRedraw() {
        Drawable drawable = this.rippleDrawable;
        if (drawable != null) {
            Rect bounds = drawable.getBounds();
            int i = bounds.bottom;
            this.rippleDrawable.setBounds(bounds.left, bounds.top, bounds.right, i - 1);
            this.rippleDrawable.setBounds(bounds.left, bounds.top, bounds.right, i);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setShapeAppearanceModel(ShapeAppearanceModel shapeAppearanceModel) {
        this.shapeAppearanceModel = shapeAppearanceModel;
        this.bgDrawable.setShapeAppearanceModel(shapeAppearanceModel);
        this.bgDrawable.setShadowBitmapDrawingEnable(!r0.isRoundRect());
        MaterialShapeDrawable materialShapeDrawable = this.foregroundContentDrawable;
        if (materialShapeDrawable != null) {
            materialShapeDrawable.setShapeAppearanceModel(shapeAppearanceModel);
        }
        MaterialShapeDrawable materialShapeDrawable2 = this.foregroundShapeDrawable;
        if (materialShapeDrawable2 != null) {
            materialShapeDrawable2.setShapeAppearanceModel(shapeAppearanceModel);
        }
        MaterialShapeDrawable materialShapeDrawable3 = this.compatRippleDrawable;
        if (materialShapeDrawable3 != null) {
            materialShapeDrawable3.setShapeAppearanceModel(shapeAppearanceModel);
        }
    }

    private void updateInsetForeground(Drawable drawable) {
        if (this.materialCardView.getForeground() instanceof InsetDrawable) {
            ((InsetDrawable) this.materialCardView.getForeground()).setDrawable(drawable);
        } else {
            this.materialCardView.setForeground(insetDrawable(drawable));
        }
    }

    private Drawable insetDrawable(Drawable drawable) {
        int i;
        int i2;
        if (this.materialCardView.getUseCompatPadding()) {
            i2 = (int) Math.ceil(calculateVerticalBackgroundPadding());
            i = (int) Math.ceil(calculateHorizontalBackgroundPadding());
        } else {
            i = 0;
            i2 = 0;
        }
        return new InsetDrawable(drawable, i, i2, i, i2) { // from class: com.google.android.material.card.MaterialCardViewHelper.1
            @Override // android.graphics.drawable.Drawable
            public int getMinimumHeight() {
                return -1;
            }

            @Override // android.graphics.drawable.Drawable
            public int getMinimumWidth() {
                return -1;
            }

            @Override // android.graphics.drawable.InsetDrawable, android.graphics.drawable.DrawableWrapper, android.graphics.drawable.Drawable
            public boolean getPadding(Rect rect) {
                return false;
            }
        };
    }

    private float calculateVerticalBackgroundPadding() {
        return (this.materialCardView.getMaxCardElevation() * CARD_VIEW_SHADOW_MULTIPLIER) + (shouldAddCornerPaddingOutsideCardBackground() ? calculateActualCornerPadding() : 0.0f);
    }

    private float calculateHorizontalBackgroundPadding() {
        return this.materialCardView.getMaxCardElevation() + (shouldAddCornerPaddingOutsideCardBackground() ? calculateActualCornerPadding() : 0.0f);
    }

    private boolean canClipToOutline() {
        return this.bgDrawable.isRoundRect();
    }

    private float getParentCardViewCalculatedCornerPadding() {
        if (this.materialCardView.getPreventCornerOverlap() && this.materialCardView.getUseCompatPadding()) {
            return (float) ((1.0d - COS_45) * this.materialCardView.getCardViewRadius());
        }
        return 0.0f;
    }

    private boolean shouldAddCornerPaddingInsideCardBackground() {
        return this.materialCardView.getPreventCornerOverlap() && !canClipToOutline();
    }

    private boolean shouldAddCornerPaddingOutsideCardBackground() {
        return this.materialCardView.getPreventCornerOverlap() && canClipToOutline() && this.materialCardView.getUseCompatPadding();
    }

    private float calculateActualCornerPadding() {
        return Math.max(Math.max(calculateCornerPaddingForCornerTreatment(this.shapeAppearanceModel.getTopLeftCorner(), this.bgDrawable.getTopLeftCornerResolvedSize()), calculateCornerPaddingForCornerTreatment(this.shapeAppearanceModel.getTopRightCorner(), this.bgDrawable.getTopRightCornerResolvedSize())), Math.max(calculateCornerPaddingForCornerTreatment(this.shapeAppearanceModel.getBottomRightCorner(), this.bgDrawable.getBottomRightCornerResolvedSize()), calculateCornerPaddingForCornerTreatment(this.shapeAppearanceModel.getBottomLeftCorner(), this.bgDrawable.getBottomLeftCornerResolvedSize())));
    }

    private float calculateCornerPaddingForCornerTreatment(CornerTreatment cornerTreatment, float f) {
        if (cornerTreatment instanceof RoundedCornerTreatment) {
            return (float) ((1.0d - COS_45) * f);
        }
        if (cornerTreatment instanceof CutCornerTreatment) {
            return f / 2.0f;
        }
        return 0.0f;
    }

    private boolean shouldUseClickableForeground() {
        if (this.materialCardView.isClickable()) {
            return true;
        }
        View view = this.materialCardView;
        while (view.isDuplicateParentStateEnabled() && (view.getParent() instanceof View)) {
            view = (View) view.getParent();
        }
        return view.isClickable();
    }

    private Drawable getClickableForeground() {
        if (this.rippleDrawable == null) {
            this.rippleDrawable = createForegroundRippleDrawable();
        }
        if (this.clickableForegroundDrawable == null) {
            LayerDrawable layerDrawable = new LayerDrawable(new Drawable[]{this.rippleDrawable, this.foregroundContentDrawable, this.checkedIcon});
            this.clickableForegroundDrawable = layerDrawable;
            layerDrawable.setId(2, R.id.mtrl_card_checked_layer_id);
        }
        return this.clickableForegroundDrawable;
    }

    private Drawable createForegroundRippleDrawable() {
        if (RippleUtils.USE_FRAMEWORK_RIPPLE) {
            this.foregroundShapeDrawable = createForegroundShapeDrawable();
            return new RippleDrawable(this.rippleColor, null, this.foregroundShapeDrawable);
        }
        return createCompatRippleDrawable();
    }

    private Drawable createCompatRippleDrawable() {
        StateListDrawable stateListDrawable = new StateListDrawable();
        MaterialShapeDrawable createForegroundShapeDrawable = createForegroundShapeDrawable();
        this.compatRippleDrawable = createForegroundShapeDrawable;
        createForegroundShapeDrawable.setFillColor(this.rippleColor);
        stateListDrawable.addState(new int[]{android.R.attr.state_pressed}, this.compatRippleDrawable);
        return stateListDrawable;
    }

    private void updateRippleColor() {
        Drawable drawable;
        if (RippleUtils.USE_FRAMEWORK_RIPPLE && (drawable = this.rippleDrawable) != null) {
            ((RippleDrawable) drawable).setColor(this.rippleColor);
            return;
        }
        MaterialShapeDrawable materialShapeDrawable = this.compatRippleDrawable;
        if (materialShapeDrawable != null) {
            materialShapeDrawable.setFillColor(this.rippleColor);
        }
    }

    private MaterialShapeDrawable createForegroundShapeDrawable() {
        return new MaterialShapeDrawable(this.shapeAppearanceModel);
    }

    public void setChecked(boolean z) {
        setChecked(z, false);
    }

    public void setChecked(boolean z, boolean z2) {
        Drawable drawable = this.checkedIcon;
        if (drawable != null) {
            if (z2) {
                animateCheckedIcon(z);
            } else {
                drawable.setAlpha(z ? 255 : 0);
                this.checkedAnimationProgress = z ? 1.0f : 0.0f;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setCheckedIconGravity(int i) {
        this.checkedIconGravity = i;
        recalculateCheckedIconPosition(this.materialCardView.getMeasuredWidth(), this.materialCardView.getMeasuredHeight());
    }
}
