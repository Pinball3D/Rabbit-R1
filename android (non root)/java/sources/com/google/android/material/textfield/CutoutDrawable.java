package com.google.android.material.textfield;

import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.view.View;
import com.google.android.material.shape.MaterialShapeDrawable;
import com.google.android.material.shape.ShapeAppearanceModel;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public class CutoutDrawable extends MaterialShapeDrawable {
    CutoutDrawableState drawableState;

    /* JADX INFO: Access modifiers changed from: package-private */
    public static CutoutDrawable create(ShapeAppearanceModel shapeAppearanceModel) {
        if (shapeAppearanceModel == null) {
            shapeAppearanceModel = new ShapeAppearanceModel();
        }
        return create(new CutoutDrawableState(shapeAppearanceModel, new RectF()));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static CutoutDrawable create(CutoutDrawableState cutoutDrawableState) {
        return new ImplApi18(cutoutDrawableState);
    }

    private CutoutDrawable(CutoutDrawableState cutoutDrawableState) {
        super(cutoutDrawableState);
        this.drawableState = cutoutDrawableState;
    }

    @Override // com.google.android.material.shape.MaterialShapeDrawable, android.graphics.drawable.Drawable
    public Drawable mutate() {
        this.drawableState = new CutoutDrawableState(this.drawableState);
        return this;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean hasCutout() {
        return !this.drawableState.cutoutBounds.isEmpty();
    }

    void setCutout(float f, float f2, float f3, float f4) {
        if (f == this.drawableState.cutoutBounds.left && f2 == this.drawableState.cutoutBounds.top && f3 == this.drawableState.cutoutBounds.right && f4 == this.drawableState.cutoutBounds.bottom) {
            return;
        }
        this.drawableState.cutoutBounds.set(f, f2, f3, f4);
        invalidateSelf();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setCutout(RectF rectF) {
        setCutout(rectF.left, rectF.top, rectF.right, rectF.bottom);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void removeCutout() {
        setCutout(0.0f, 0.0f, 0.0f, 0.0f);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public static class ImplApi18 extends CutoutDrawable {
        ImplApi18(CutoutDrawableState cutoutDrawableState) {
            super(cutoutDrawableState);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.android.material.shape.MaterialShapeDrawable
        public void drawStrokeShape(Canvas canvas) {
            if (this.drawableState.cutoutBounds.isEmpty()) {
                super.drawStrokeShape(canvas);
                return;
            }
            canvas.save();
            canvas.clipOutRect(this.drawableState.cutoutBounds);
            super.drawStrokeShape(canvas);
            canvas.restore();
        }
    }

    /* loaded from: classes2.dex */
    private static class ImplApi14 extends CutoutDrawable {
        private Paint cutoutPaint;
        private int savedLayer;

        ImplApi14(CutoutDrawableState cutoutDrawableState) {
            super(cutoutDrawableState);
        }

        @Override // com.google.android.material.shape.MaterialShapeDrawable, android.graphics.drawable.Drawable
        public void draw(Canvas canvas) {
            preDraw(canvas);
            super.draw(canvas);
            postDraw(canvas);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.android.material.shape.MaterialShapeDrawable
        public void drawStrokeShape(Canvas canvas) {
            super.drawStrokeShape(canvas);
            canvas.drawRect(this.drawableState.cutoutBounds, getCutoutPaint());
        }

        private Paint getCutoutPaint() {
            if (this.cutoutPaint == null) {
                Paint paint = new Paint(1);
                this.cutoutPaint = paint;
                paint.setStyle(Paint.Style.FILL_AND_STROKE);
                this.cutoutPaint.setColor(-1);
                this.cutoutPaint.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.DST_OUT));
            }
            return this.cutoutPaint;
        }

        private void preDraw(Canvas canvas) {
            Drawable.Callback callback = getCallback();
            if (useHardwareLayer(callback)) {
                View view = (View) callback;
                if (view.getLayerType() != 2) {
                    view.setLayerType(2, null);
                    return;
                }
                return;
            }
            saveCanvasLayer(canvas);
        }

        private void saveCanvasLayer(Canvas canvas) {
            this.savedLayer = canvas.saveLayer(0.0f, 0.0f, canvas.getWidth(), canvas.getHeight(), null);
        }

        private void postDraw(Canvas canvas) {
            if (useHardwareLayer(getCallback())) {
                return;
            }
            canvas.restoreToCount(this.savedLayer);
        }

        private boolean useHardwareLayer(Drawable.Callback callback) {
            return callback instanceof View;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public static final class CutoutDrawableState extends MaterialShapeDrawable.MaterialShapeDrawableState {
        private final RectF cutoutBounds;

        private CutoutDrawableState(ShapeAppearanceModel shapeAppearanceModel, RectF rectF) {
            super(shapeAppearanceModel, null);
            this.cutoutBounds = rectF;
        }

        private CutoutDrawableState(CutoutDrawableState cutoutDrawableState) {
            super(cutoutDrawableState);
            this.cutoutBounds = cutoutDrawableState.cutoutBounds;
        }

        @Override // com.google.android.material.shape.MaterialShapeDrawable.MaterialShapeDrawableState, android.graphics.drawable.Drawable.ConstantState
        public Drawable newDrawable() {
            CutoutDrawable create = CutoutDrawable.create(this);
            create.invalidateSelf();
            return create;
        }
    }
}
