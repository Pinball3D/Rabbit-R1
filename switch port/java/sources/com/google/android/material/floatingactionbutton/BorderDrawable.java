package com.google.android.material.floatingactionbutton;

import android.content.res.ColorStateList;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.LinearGradient;
import android.graphics.Outline;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Shader;
import android.graphics.drawable.Drawable;
import androidx.core.graphics.ColorUtils;
import com.google.android.material.drawable.DrawableUtils;
import com.google.android.material.shape.ShapeAppearanceModel;
import com.google.android.material.shape.ShapeAppearancePathProvider;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public class BorderDrawable extends Drawable {
    private static final float DRAW_STROKE_WIDTH_MULTIPLE = 1.3333f;
    private ColorStateList borderTint;
    float borderWidth;
    private int bottomInnerStrokeColor;
    private int bottomOuterStrokeColor;
    private int currentBorderTintColor;
    private final Paint paint;
    private ShapeAppearanceModel shapeAppearanceModel;
    private int topInnerStrokeColor;
    private int topOuterStrokeColor;
    private final ShapeAppearancePathProvider pathProvider = ShapeAppearancePathProvider.getInstance();
    private final Path shapePath = new Path();
    private final Rect rect = new Rect();
    private final RectF rectF = new RectF();
    private final RectF boundsRectF = new RectF();
    private final BorderState state = new BorderState();
    private boolean invalidateShader = true;

    @Override // android.graphics.drawable.Drawable
    public Drawable.ConstantState getConstantState() {
        return this.state;
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        return this.borderWidth > 0.0f ? -3 : -2;
    }

    public ShapeAppearanceModel getShapeAppearanceModel() {
        return this.shapeAppearanceModel;
    }

    @Override // android.graphics.drawable.Drawable
    protected void onBoundsChange(Rect rect) {
        this.invalidateShader = true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setGradientColors(int i, int i2, int i3, int i4) {
        this.topOuterStrokeColor = i;
        this.topInnerStrokeColor = i2;
        this.bottomOuterStrokeColor = i3;
        this.bottomInnerStrokeColor = i4;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public BorderDrawable(ShapeAppearanceModel shapeAppearanceModel) {
        this.shapeAppearanceModel = shapeAppearanceModel;
        Paint paint = new Paint(1);
        this.paint = paint;
        paint.setStyle(Paint.Style.STROKE);
    }

    public void setBorderWidth(float f) {
        if (this.borderWidth != f) {
            this.borderWidth = f;
            this.paint.setStrokeWidth(f * DRAW_STROKE_WIDTH_MULTIPLE);
            this.invalidateShader = true;
            invalidateSelf();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setBorderTint(ColorStateList colorStateList) {
        if (colorStateList != null) {
            this.currentBorderTintColor = colorStateList.getColorForState(getState(), this.currentBorderTintColor);
        }
        this.borderTint = colorStateList;
        this.invalidateShader = true;
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
        this.paint.setColorFilter(colorFilter);
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        if (this.invalidateShader) {
            this.paint.setShader(createGradientShader());
            this.invalidateShader = false;
        }
        float strokeWidth = this.paint.getStrokeWidth() / 2.0f;
        copyBounds(this.rect);
        this.rectF.set(this.rect);
        float min = Math.min(this.shapeAppearanceModel.getTopLeftCornerSize().getCornerSize(getBoundsAsRectF()), this.rectF.width() / 2.0f);
        if (this.shapeAppearanceModel.isRoundRect(getBoundsAsRectF())) {
            this.rectF.inset(strokeWidth, strokeWidth);
            canvas.drawRoundRect(this.rectF, min, min, this.paint);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void getOutline(Outline outline) {
        if (this.shapeAppearanceModel.isRoundRect(getBoundsAsRectF())) {
            outline.setRoundRect(getBounds(), this.shapeAppearanceModel.getTopLeftCornerSize().getCornerSize(getBoundsAsRectF()));
        } else {
            copyBounds(this.rect);
            this.rectF.set(this.rect);
            this.pathProvider.calculatePath(this.shapeAppearanceModel, 1.0f, this.rectF, this.shapePath);
            DrawableUtils.setOutlineToPath(outline, this.shapePath);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public boolean getPadding(Rect rect) {
        if (!this.shapeAppearanceModel.isRoundRect(getBoundsAsRectF())) {
            return true;
        }
        int round = Math.round(this.borderWidth);
        rect.set(round, round, round, round);
        return true;
    }

    protected RectF getBoundsAsRectF() {
        this.boundsRectF.set(getBounds());
        return this.boundsRectF;
    }

    public void setShapeAppearanceModel(ShapeAppearanceModel shapeAppearanceModel) {
        this.shapeAppearanceModel = shapeAppearanceModel;
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i) {
        this.paint.setAlpha(i);
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public boolean isStateful() {
        ColorStateList colorStateList = this.borderTint;
        return (colorStateList != null && colorStateList.isStateful()) || super.isStateful();
    }

    @Override // android.graphics.drawable.Drawable
    protected boolean onStateChange(int[] iArr) {
        int colorForState;
        ColorStateList colorStateList = this.borderTint;
        if (colorStateList != null && (colorForState = colorStateList.getColorForState(iArr, this.currentBorderTintColor)) != this.currentBorderTintColor) {
            this.invalidateShader = true;
            this.currentBorderTintColor = colorForState;
        }
        if (this.invalidateShader) {
            invalidateSelf();
        }
        return this.invalidateShader;
    }

    private Shader createGradientShader() {
        copyBounds(this.rect);
        float height = this.borderWidth / r0.height();
        return new LinearGradient(0.0f, r0.top, 0.0f, r0.bottom, new int[]{ColorUtils.compositeColors(this.topOuterStrokeColor, this.currentBorderTintColor), ColorUtils.compositeColors(this.topInnerStrokeColor, this.currentBorderTintColor), ColorUtils.compositeColors(ColorUtils.setAlphaComponent(this.topInnerStrokeColor, 0), this.currentBorderTintColor), ColorUtils.compositeColors(ColorUtils.setAlphaComponent(this.bottomInnerStrokeColor, 0), this.currentBorderTintColor), ColorUtils.compositeColors(this.bottomInnerStrokeColor, this.currentBorderTintColor), ColorUtils.compositeColors(this.bottomOuterStrokeColor, this.currentBorderTintColor)}, new float[]{0.0f, height, 0.5f, 0.5f, 1.0f - height, 1.0f}, Shader.TileMode.CLAMP);
    }

    /* loaded from: classes2.dex */
    private class BorderState extends Drawable.ConstantState {
        @Override // android.graphics.drawable.Drawable.ConstantState
        public int getChangingConfigurations() {
            return 0;
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public Drawable newDrawable() {
            return BorderDrawable.this;
        }

        private BorderState() {
        }
    }
}
