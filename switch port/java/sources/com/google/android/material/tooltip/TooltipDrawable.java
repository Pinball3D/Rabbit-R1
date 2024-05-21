package com.google.android.material.tooltip;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.View;
import androidx.core.graphics.ColorUtils;
import com.google.android.material.R;
import com.google.android.material.animation.AnimationUtils;
import com.google.android.material.color.MaterialColors;
import com.google.android.material.internal.TextDrawableHelper;
import com.google.android.material.internal.ThemeEnforcement;
import com.google.android.material.resources.MaterialResources;
import com.google.android.material.resources.TextAppearance;
import com.google.android.material.shape.EdgeTreatment;
import com.google.android.material.shape.MarkerEdgeTreatment;
import com.google.android.material.shape.MaterialShapeDrawable;
import com.google.android.material.shape.OffsetEdgeTreatment;

/* loaded from: classes2.dex */
public class TooltipDrawable extends MaterialShapeDrawable implements TextDrawableHelper.TextDrawableDelegate {
    private static final int DEFAULT_STYLE = R.style.Widget_MaterialComponents_Tooltip;
    private static final int DEFAULT_THEME_ATTR = R.attr.tooltipStyle;
    private int arrowSize;
    private final View.OnLayoutChangeListener attachedViewLayoutChangeListener;
    private final Context context;
    private final Rect displayFrame;
    private final Paint.FontMetrics fontMetrics;
    private float labelOpacity;
    private int layoutMargin;
    private int locationOnScreenX;
    private int minHeight;
    private int minWidth;
    private int padding;
    private CharSequence text;
    private final TextDrawableHelper textDrawableHelper;
    private final float tooltipPivotX;
    private float tooltipPivotY;
    private float tooltipScaleX;
    private float tooltipScaleY;

    public int getLayoutMargin() {
        return this.layoutMargin;
    }

    public int getMinHeight() {
        return this.minHeight;
    }

    public int getMinWidth() {
        return this.minWidth;
    }

    public CharSequence getText() {
        return this.text;
    }

    public int getTextPadding() {
        return this.padding;
    }

    public static TooltipDrawable createFromAttributes(Context context, AttributeSet attributeSet, int i, int i2) {
        TooltipDrawable tooltipDrawable = new TooltipDrawable(context, attributeSet, i, i2);
        tooltipDrawable.loadFromAttributes(attributeSet, i, i2);
        return tooltipDrawable;
    }

    public static TooltipDrawable createFromAttributes(Context context, AttributeSet attributeSet) {
        return createFromAttributes(context, attributeSet, DEFAULT_THEME_ATTR, DEFAULT_STYLE);
    }

    public static TooltipDrawable create(Context context) {
        return createFromAttributes(context, null, DEFAULT_THEME_ATTR, DEFAULT_STYLE);
    }

    private TooltipDrawable(Context context, AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i, i2);
        this.fontMetrics = new Paint.FontMetrics();
        TextDrawableHelper textDrawableHelper = new TextDrawableHelper(this);
        this.textDrawableHelper = textDrawableHelper;
        this.attachedViewLayoutChangeListener = new View.OnLayoutChangeListener() { // from class: com.google.android.material.tooltip.TooltipDrawable.1
            @Override // android.view.View.OnLayoutChangeListener
            public void onLayoutChange(View view, int i3, int i4, int i5, int i6, int i7, int i8, int i9, int i10) {
                TooltipDrawable.this.updateLocationOnScreen(view);
            }
        };
        this.displayFrame = new Rect();
        this.tooltipScaleX = 1.0f;
        this.tooltipScaleY = 1.0f;
        this.tooltipPivotX = 0.5f;
        this.tooltipPivotY = 0.5f;
        this.labelOpacity = 1.0f;
        this.context = context;
        textDrawableHelper.getTextPaint().density = context.getResources().getDisplayMetrics().density;
        textDrawableHelper.getTextPaint().setTextAlign(Paint.Align.CENTER);
    }

    private void loadFromAttributes(AttributeSet attributeSet, int i, int i2) {
        TypedArray obtainStyledAttributes = ThemeEnforcement.obtainStyledAttributes(this.context, attributeSet, R.styleable.Tooltip, i, i2, new int[0]);
        this.arrowSize = this.context.getResources().getDimensionPixelSize(R.dimen.mtrl_tooltip_arrowSize);
        setShapeAppearanceModel(getShapeAppearanceModel().toBuilder().setBottomEdge(createMarkerEdge()).build());
        setText(obtainStyledAttributes.getText(R.styleable.Tooltip_android_text));
        TextAppearance textAppearance = MaterialResources.getTextAppearance(this.context, obtainStyledAttributes, R.styleable.Tooltip_android_textAppearance);
        if (textAppearance != null && obtainStyledAttributes.hasValue(R.styleable.Tooltip_android_textColor)) {
            textAppearance.setTextColor(MaterialResources.getColorStateList(this.context, obtainStyledAttributes, R.styleable.Tooltip_android_textColor));
        }
        setTextAppearance(textAppearance);
        setFillColor(ColorStateList.valueOf(obtainStyledAttributes.getColor(R.styleable.Tooltip_backgroundTint, MaterialColors.layer(ColorUtils.setAlphaComponent(MaterialColors.getColor(this.context, android.R.attr.colorBackground, TooltipDrawable.class.getCanonicalName()), 229), ColorUtils.setAlphaComponent(MaterialColors.getColor(this.context, R.attr.colorOnBackground, TooltipDrawable.class.getCanonicalName()), 153)))));
        setStrokeColor(ColorStateList.valueOf(MaterialColors.getColor(this.context, R.attr.colorSurface, TooltipDrawable.class.getCanonicalName())));
        this.padding = obtainStyledAttributes.getDimensionPixelSize(R.styleable.Tooltip_android_padding, 0);
        this.minWidth = obtainStyledAttributes.getDimensionPixelSize(R.styleable.Tooltip_android_minWidth, 0);
        this.minHeight = obtainStyledAttributes.getDimensionPixelSize(R.styleable.Tooltip_android_minHeight, 0);
        this.layoutMargin = obtainStyledAttributes.getDimensionPixelSize(R.styleable.Tooltip_android_layout_margin, 0);
        obtainStyledAttributes.recycle();
    }

    public void setTextResource(int i) {
        setText(this.context.getResources().getString(i));
    }

    public void setText(CharSequence charSequence) {
        if (TextUtils.equals(this.text, charSequence)) {
            return;
        }
        this.text = charSequence;
        this.textDrawableHelper.setTextWidthDirty(true);
        invalidateSelf();
    }

    public TextAppearance getTextAppearance() {
        return this.textDrawableHelper.getTextAppearance();
    }

    public void setTextAppearanceResource(int i) {
        setTextAppearance(new TextAppearance(this.context, i));
    }

    public void setTextAppearance(TextAppearance textAppearance) {
        this.textDrawableHelper.setTextAppearance(textAppearance, this.context);
    }

    public void setMinWidth(int i) {
        this.minWidth = i;
        invalidateSelf();
    }

    public void setMinHeight(int i) {
        this.minHeight = i;
        invalidateSelf();
    }

    public void setTextPadding(int i) {
        this.padding = i;
        invalidateSelf();
    }

    public void setLayoutMargin(int i) {
        this.layoutMargin = i;
        invalidateSelf();
    }

    public void setRevealFraction(float f) {
        this.tooltipPivotY = 1.2f;
        this.tooltipScaleX = f;
        this.tooltipScaleY = f;
        this.labelOpacity = AnimationUtils.lerp(0.0f, 1.0f, 0.19f, 1.0f, f);
        invalidateSelf();
    }

    public void setRelativeToView(View view) {
        if (view == null) {
            return;
        }
        updateLocationOnScreen(view);
        view.addOnLayoutChangeListener(this.attachedViewLayoutChangeListener);
    }

    public void detachView(View view) {
        if (view == null) {
            return;
        }
        view.removeOnLayoutChangeListener(this.attachedViewLayoutChangeListener);
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicWidth() {
        return (int) Math.max((this.padding * 2) + getTextWidth(), this.minWidth);
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicHeight() {
        return (int) Math.max(this.textDrawableHelper.getTextPaint().getTextSize(), this.minHeight);
    }

    @Override // com.google.android.material.shape.MaterialShapeDrawable, android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        canvas.save();
        float calculatePointerOffset = calculatePointerOffset();
        float f = (float) (-((this.arrowSize * Math.sqrt(2.0d)) - this.arrowSize));
        canvas.scale(this.tooltipScaleX, this.tooltipScaleY, getBounds().left + (getBounds().width() * 0.5f), getBounds().top + (getBounds().height() * this.tooltipPivotY));
        canvas.translate(calculatePointerOffset, f);
        super.draw(canvas);
        drawText(canvas);
        canvas.restore();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.material.shape.MaterialShapeDrawable, android.graphics.drawable.Drawable
    public void onBoundsChange(Rect rect) {
        super.onBoundsChange(rect);
        setShapeAppearanceModel(getShapeAppearanceModel().toBuilder().setBottomEdge(createMarkerEdge()).build());
    }

    @Override // com.google.android.material.shape.MaterialShapeDrawable, android.graphics.drawable.Drawable, com.google.android.material.internal.TextDrawableHelper.TextDrawableDelegate
    public boolean onStateChange(int[] iArr) {
        return super.onStateChange(iArr);
    }

    @Override // com.google.android.material.internal.TextDrawableHelper.TextDrawableDelegate
    public void onTextSizeChange() {
        invalidateSelf();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateLocationOnScreen(View view) {
        int[] iArr = new int[2];
        view.getLocationOnScreen(iArr);
        this.locationOnScreenX = iArr[0];
        view.getWindowVisibleDisplayFrame(this.displayFrame);
    }

    private float calculatePointerOffset() {
        int i;
        if (((this.displayFrame.right - getBounds().right) - this.locationOnScreenX) - this.layoutMargin < 0) {
            i = ((this.displayFrame.right - getBounds().right) - this.locationOnScreenX) - this.layoutMargin;
        } else {
            if (((this.displayFrame.left - getBounds().left) - this.locationOnScreenX) + this.layoutMargin <= 0) {
                return 0.0f;
            }
            i = ((this.displayFrame.left - getBounds().left) - this.locationOnScreenX) + this.layoutMargin;
        }
        return i;
    }

    private EdgeTreatment createMarkerEdge() {
        float f = -calculatePointerOffset();
        float width = ((float) (getBounds().width() - (this.arrowSize * Math.sqrt(2.0d)))) / 2.0f;
        return new OffsetEdgeTreatment(new MarkerEdgeTreatment(this.arrowSize), Math.min(Math.max(f, -width), width));
    }

    private void drawText(Canvas canvas) {
        if (this.text == null) {
            return;
        }
        int calculateTextOriginAndAlignment = (int) calculateTextOriginAndAlignment(getBounds());
        if (this.textDrawableHelper.getTextAppearance() != null) {
            this.textDrawableHelper.getTextPaint().drawableState = getState();
            this.textDrawableHelper.updateTextPaintDrawState(this.context);
            this.textDrawableHelper.getTextPaint().setAlpha((int) (this.labelOpacity * 255.0f));
        }
        CharSequence charSequence = this.text;
        canvas.drawText(charSequence, 0, charSequence.length(), r0.centerX(), calculateTextOriginAndAlignment, this.textDrawableHelper.getTextPaint());
    }

    private float getTextWidth() {
        CharSequence charSequence = this.text;
        if (charSequence == null) {
            return 0.0f;
        }
        return this.textDrawableHelper.getTextWidth(charSequence.toString());
    }

    private float calculateTextOriginAndAlignment(Rect rect) {
        return rect.centerY() - calculateTextCenterFromBaseline();
    }

    private float calculateTextCenterFromBaseline() {
        this.textDrawableHelper.getTextPaint().getFontMetrics(this.fontMetrics);
        return (this.fontMetrics.descent + this.fontMetrics.ascent) / 2.0f;
    }
}
