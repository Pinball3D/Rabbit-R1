package com.airbnb.lottie.model.layer;

import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.ColorFilter;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.RectF;
import com.airbnb.lottie.LottieDrawable;
import com.airbnb.lottie.LottieProperty;
import com.airbnb.lottie.animation.LPaint;
import com.airbnb.lottie.animation.keyframe.BaseKeyframeAnimation;
import com.airbnb.lottie.animation.keyframe.ValueCallbackKeyframeAnimation;
import com.airbnb.lottie.value.LottieValueCallback;

/* loaded from: classes2.dex */
public class SolidLayer extends BaseLayer {
    private BaseKeyframeAnimation<Integer, Integer> colorAnimation;
    private BaseKeyframeAnimation<ColorFilter, ColorFilter> colorFilterAnimation;
    private final Layer layerModel;
    private final Paint paint;
    private final Path path;
    private final float[] points;
    private final RectF rect;

    /* JADX INFO: Access modifiers changed from: package-private */
    public SolidLayer(LottieDrawable lottieDrawable, Layer layer) {
        super(lottieDrawable, layer);
        this.rect = new RectF();
        LPaint lPaint = new LPaint();
        this.paint = lPaint;
        this.points = new float[8];
        this.path = new Path();
        this.layerModel = layer;
        lPaint.setAlpha(0);
        lPaint.setStyle(Paint.Style.FILL);
        lPaint.setColor(layer.getSolidColor());
    }

    @Override // com.airbnb.lottie.model.layer.BaseLayer
    public void drawLayer(Canvas canvas, Matrix matrix, int i) {
        int alpha = Color.alpha(this.layerModel.getSolidColor());
        if (alpha == 0) {
            return;
        }
        BaseKeyframeAnimation<Integer, Integer> baseKeyframeAnimation = this.colorAnimation;
        Integer value = baseKeyframeAnimation == null ? null : baseKeyframeAnimation.getValue();
        if (value != null) {
            this.paint.setColor(value.intValue());
        } else {
            this.paint.setColor(this.layerModel.getSolidColor());
        }
        int intValue = (int) ((i / 255.0f) * (((alpha / 255.0f) * (this.transform.getOpacity() == null ? 100 : this.transform.getOpacity().getValue().intValue())) / 100.0f) * 255.0f);
        this.paint.setAlpha(intValue);
        BaseKeyframeAnimation<ColorFilter, ColorFilter> baseKeyframeAnimation2 = this.colorFilterAnimation;
        if (baseKeyframeAnimation2 != null) {
            this.paint.setColorFilter(baseKeyframeAnimation2.getValue());
        }
        if (intValue > 0) {
            float[] fArr = this.points;
            fArr[0] = 0.0f;
            fArr[1] = 0.0f;
            fArr[2] = this.layerModel.getSolidWidth();
            float[] fArr2 = this.points;
            fArr2[3] = 0.0f;
            fArr2[4] = this.layerModel.getSolidWidth();
            this.points[5] = this.layerModel.getSolidHeight();
            float[] fArr3 = this.points;
            fArr3[6] = 0.0f;
            fArr3[7] = this.layerModel.getSolidHeight();
            matrix.mapPoints(this.points);
            this.path.reset();
            Path path = this.path;
            float[] fArr4 = this.points;
            path.moveTo(fArr4[0], fArr4[1]);
            Path path2 = this.path;
            float[] fArr5 = this.points;
            path2.lineTo(fArr5[2], fArr5[3]);
            Path path3 = this.path;
            float[] fArr6 = this.points;
            path3.lineTo(fArr6[4], fArr6[5]);
            Path path4 = this.path;
            float[] fArr7 = this.points;
            path4.lineTo(fArr7[6], fArr7[7]);
            Path path5 = this.path;
            float[] fArr8 = this.points;
            path5.lineTo(fArr8[0], fArr8[1]);
            this.path.close();
            canvas.drawPath(this.path, this.paint);
        }
    }

    @Override // com.airbnb.lottie.model.layer.BaseLayer, com.airbnb.lottie.animation.content.DrawingContent
    public void getBounds(RectF rectF, Matrix matrix, boolean z) {
        super.getBounds(rectF, matrix, z);
        this.rect.set(0.0f, 0.0f, this.layerModel.getSolidWidth(), this.layerModel.getSolidHeight());
        this.boundsMatrix.mapRect(this.rect);
        rectF.set(this.rect);
    }

    @Override // com.airbnb.lottie.model.layer.BaseLayer, com.airbnb.lottie.model.KeyPathElement
    public <T> void addValueCallback(T t, LottieValueCallback<T> lottieValueCallback) {
        super.addValueCallback(t, lottieValueCallback);
        if (t == LottieProperty.COLOR_FILTER) {
            if (lottieValueCallback == null) {
                this.colorFilterAnimation = null;
                return;
            } else {
                this.colorFilterAnimation = new ValueCallbackKeyframeAnimation(lottieValueCallback);
                return;
            }
        }
        if (t == LottieProperty.COLOR) {
            if (lottieValueCallback == null) {
                this.colorAnimation = null;
                this.paint.setColor(this.layerModel.getSolidColor());
            } else {
                this.colorAnimation = new ValueCallbackKeyframeAnimation(lottieValueCallback);
            }
        }
    }
}
