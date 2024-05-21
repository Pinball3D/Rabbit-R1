package com.airbnb.lottie.model.layer;

import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.RectF;
import com.airbnb.lottie.LottieDrawable;
import com.airbnb.lottie.LottieImageAsset;
import com.airbnb.lottie.LottieProperty;
import com.airbnb.lottie.animation.LPaint;
import com.airbnb.lottie.animation.keyframe.BaseKeyframeAnimation;
import com.airbnb.lottie.animation.keyframe.ValueCallbackKeyframeAnimation;
import com.airbnb.lottie.utils.Utils;
import com.airbnb.lottie.value.LottieValueCallback;

/* loaded from: classes2.dex */
public class ImageLayer extends BaseLayer {
    private BaseKeyframeAnimation<ColorFilter, ColorFilter> colorFilterAnimation;
    private final Rect dst;
    private BaseKeyframeAnimation<Bitmap, Bitmap> imageAnimation;
    private final LottieImageAsset lottieImageAsset;
    private final Paint paint;
    private final Rect src;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ImageLayer(LottieDrawable lottieDrawable, Layer layer) {
        super(lottieDrawable, layer);
        this.paint = new LPaint(3);
        this.src = new Rect();
        this.dst = new Rect();
        this.lottieImageAsset = lottieDrawable.getLottieImageAssetForId(layer.getRefId());
    }

    @Override // com.airbnb.lottie.model.layer.BaseLayer
    public void drawLayer(Canvas canvas, Matrix matrix, int i) {
        Bitmap bitmap = getBitmap();
        if (bitmap == null || bitmap.isRecycled() || this.lottieImageAsset == null) {
            return;
        }
        float dpScale = Utils.dpScale();
        this.paint.setAlpha(i);
        BaseKeyframeAnimation<ColorFilter, ColorFilter> baseKeyframeAnimation = this.colorFilterAnimation;
        if (baseKeyframeAnimation != null) {
            this.paint.setColorFilter(baseKeyframeAnimation.getValue());
        }
        canvas.save();
        canvas.concat(matrix);
        this.src.set(0, 0, bitmap.getWidth(), bitmap.getHeight());
        if (this.lottieDrawable.getMaintainOriginalImageBounds()) {
            this.dst.set(0, 0, (int) (this.lottieImageAsset.getWidth() * dpScale), (int) (this.lottieImageAsset.getHeight() * dpScale));
        } else {
            this.dst.set(0, 0, (int) (bitmap.getWidth() * dpScale), (int) (bitmap.getHeight() * dpScale));
        }
        canvas.drawBitmap(bitmap, this.src, this.dst, this.paint);
        canvas.restore();
    }

    @Override // com.airbnb.lottie.model.layer.BaseLayer, com.airbnb.lottie.animation.content.DrawingContent
    public void getBounds(RectF rectF, Matrix matrix, boolean z) {
        super.getBounds(rectF, matrix, z);
        if (this.lottieImageAsset != null) {
            float dpScale = Utils.dpScale();
            rectF.set(0.0f, 0.0f, this.lottieImageAsset.getWidth() * dpScale, this.lottieImageAsset.getHeight() * dpScale);
            this.boundsMatrix.mapRect(rectF);
        }
    }

    private Bitmap getBitmap() {
        Bitmap value;
        BaseKeyframeAnimation<Bitmap, Bitmap> baseKeyframeAnimation = this.imageAnimation;
        if (baseKeyframeAnimation != null && (value = baseKeyframeAnimation.getValue()) != null) {
            return value;
        }
        Bitmap bitmapForId = this.lottieDrawable.getBitmapForId(this.layerModel.getRefId());
        if (bitmapForId != null) {
            return bitmapForId;
        }
        LottieImageAsset lottieImageAsset = this.lottieImageAsset;
        if (lottieImageAsset != null) {
            return lottieImageAsset.getBitmap();
        }
        return null;
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
        if (t == LottieProperty.IMAGE) {
            if (lottieValueCallback == null) {
                this.imageAnimation = null;
            } else {
                this.imageAnimation = new ValueCallbackKeyframeAnimation(lottieValueCallback);
            }
        }
    }
}
