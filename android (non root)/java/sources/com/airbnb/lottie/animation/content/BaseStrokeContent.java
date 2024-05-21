package com.airbnb.lottie.animation.content;

import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.DashPathEffect;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PathMeasure;
import android.graphics.RectF;
import com.airbnb.lottie.L;
import com.airbnb.lottie.LottieDrawable;
import com.airbnb.lottie.LottieProperty;
import com.airbnb.lottie.animation.LPaint;
import com.airbnb.lottie.animation.keyframe.BaseKeyframeAnimation;
import com.airbnb.lottie.animation.keyframe.DropShadowKeyframeAnimation;
import com.airbnb.lottie.animation.keyframe.FloatKeyframeAnimation;
import com.airbnb.lottie.animation.keyframe.IntegerKeyframeAnimation;
import com.airbnb.lottie.animation.keyframe.ValueCallbackKeyframeAnimation;
import com.airbnb.lottie.model.KeyPath;
import com.airbnb.lottie.model.animatable.AnimatableFloatValue;
import com.airbnb.lottie.model.animatable.AnimatableIntegerValue;
import com.airbnb.lottie.model.content.ShapeTrimPath;
import com.airbnb.lottie.model.layer.BaseLayer;
import com.airbnb.lottie.utils.MiscUtils;
import com.airbnb.lottie.utils.Utils;
import com.airbnb.lottie.value.LottieValueCallback;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes2.dex */
public abstract class BaseStrokeContent implements BaseKeyframeAnimation.AnimationListener, KeyPathElementContent, DrawingContent {
    private BaseKeyframeAnimation<Float, Float> blurAnimation;
    float blurMaskFilterRadius;
    private BaseKeyframeAnimation<ColorFilter, ColorFilter> colorFilterAnimation;
    private final List<BaseKeyframeAnimation<?, Float>> dashPatternAnimations;
    private final BaseKeyframeAnimation<?, Float> dashPatternOffsetAnimation;
    private final float[] dashPatternValues;
    private DropShadowKeyframeAnimation dropShadowAnimation;
    protected final BaseLayer layer;
    private final LottieDrawable lottieDrawable;
    private final BaseKeyframeAnimation<?, Integer> opacityAnimation;
    final Paint paint;
    private final BaseKeyframeAnimation<?, Float> widthAnimation;
    private final PathMeasure pm = new PathMeasure();
    private final Path path = new Path();
    private final Path trimPathPath = new Path();
    private final RectF rect = new RectF();
    private final List<PathGroup> pathGroups = new ArrayList();

    /* JADX INFO: Access modifiers changed from: package-private */
    public BaseStrokeContent(LottieDrawable lottieDrawable, BaseLayer baseLayer, Paint.Cap cap, Paint.Join join, float f, AnimatableIntegerValue animatableIntegerValue, AnimatableFloatValue animatableFloatValue, List<AnimatableFloatValue> list, AnimatableFloatValue animatableFloatValue2) {
        LPaint lPaint = new LPaint(1);
        this.paint = lPaint;
        this.blurMaskFilterRadius = 0.0f;
        this.lottieDrawable = lottieDrawable;
        this.layer = baseLayer;
        lPaint.setStyle(Paint.Style.STROKE);
        lPaint.setStrokeCap(cap);
        lPaint.setStrokeJoin(join);
        lPaint.setStrokeMiter(f);
        this.opacityAnimation = animatableIntegerValue.createAnimation();
        this.widthAnimation = animatableFloatValue.createAnimation();
        if (animatableFloatValue2 == null) {
            this.dashPatternOffsetAnimation = null;
        } else {
            this.dashPatternOffsetAnimation = animatableFloatValue2.createAnimation();
        }
        this.dashPatternAnimations = new ArrayList(list.size());
        this.dashPatternValues = new float[list.size()];
        for (int i = 0; i < list.size(); i++) {
            this.dashPatternAnimations.add(list.get(i).createAnimation());
        }
        baseLayer.addAnimation(this.opacityAnimation);
        baseLayer.addAnimation(this.widthAnimation);
        for (int i2 = 0; i2 < this.dashPatternAnimations.size(); i2++) {
            baseLayer.addAnimation(this.dashPatternAnimations.get(i2));
        }
        BaseKeyframeAnimation<?, Float> baseKeyframeAnimation = this.dashPatternOffsetAnimation;
        if (baseKeyframeAnimation != null) {
            baseLayer.addAnimation(baseKeyframeAnimation);
        }
        this.opacityAnimation.addUpdateListener(this);
        this.widthAnimation.addUpdateListener(this);
        for (int i3 = 0; i3 < list.size(); i3++) {
            this.dashPatternAnimations.get(i3).addUpdateListener(this);
        }
        BaseKeyframeAnimation<?, Float> baseKeyframeAnimation2 = this.dashPatternOffsetAnimation;
        if (baseKeyframeAnimation2 != null) {
            baseKeyframeAnimation2.addUpdateListener(this);
        }
        if (baseLayer.getBlurEffect() != null) {
            BaseKeyframeAnimation<Float, Float> createAnimation = baseLayer.getBlurEffect().getBlurriness().createAnimation();
            this.blurAnimation = createAnimation;
            createAnimation.addUpdateListener(this);
            baseLayer.addAnimation(this.blurAnimation);
        }
        if (baseLayer.getDropShadowEffect() != null) {
            this.dropShadowAnimation = new DropShadowKeyframeAnimation(this, baseLayer, baseLayer.getDropShadowEffect());
        }
    }

    @Override // com.airbnb.lottie.animation.keyframe.BaseKeyframeAnimation.AnimationListener
    public void onValueChanged() {
        this.lottieDrawable.invalidateSelf();
    }

    @Override // com.airbnb.lottie.animation.content.Content
    public void setContents(List<Content> list, List<Content> list2) {
        TrimPathContent trimPathContent = null;
        for (int size = list.size() - 1; size >= 0; size--) {
            Content content = list.get(size);
            if (content instanceof TrimPathContent) {
                TrimPathContent trimPathContent2 = (TrimPathContent) content;
                if (trimPathContent2.getType() == ShapeTrimPath.Type.INDIVIDUALLY) {
                    trimPathContent = trimPathContent2;
                }
            }
        }
        if (trimPathContent != null) {
            trimPathContent.addListener(this);
        }
        PathGroup pathGroup = null;
        for (int size2 = list2.size() - 1; size2 >= 0; size2--) {
            Content content2 = list2.get(size2);
            if (content2 instanceof TrimPathContent) {
                TrimPathContent trimPathContent3 = (TrimPathContent) content2;
                if (trimPathContent3.getType() == ShapeTrimPath.Type.INDIVIDUALLY) {
                    if (pathGroup != null) {
                        this.pathGroups.add(pathGroup);
                    }
                    pathGroup = new PathGroup(trimPathContent3);
                    trimPathContent3.addListener(this);
                }
            }
            if (content2 instanceof PathContent) {
                if (pathGroup == null) {
                    pathGroup = new PathGroup(trimPathContent);
                }
                pathGroup.paths.add((PathContent) content2);
            }
        }
        if (pathGroup != null) {
            this.pathGroups.add(pathGroup);
        }
    }

    @Override // com.airbnb.lottie.animation.content.DrawingContent
    public void draw(Canvas canvas, Matrix matrix, int i) {
        L.beginSection("StrokeContent#draw");
        if (Utils.hasZeroScaleAxis(matrix)) {
            L.endSection("StrokeContent#draw");
            return;
        }
        this.paint.setAlpha(MiscUtils.clamp((int) ((((i / 255.0f) * ((IntegerKeyframeAnimation) this.opacityAnimation).getIntValue()) / 100.0f) * 255.0f), 0, 255));
        this.paint.setStrokeWidth(((FloatKeyframeAnimation) this.widthAnimation).getFloatValue() * Utils.getScale(matrix));
        if (this.paint.getStrokeWidth() <= 0.0f) {
            L.endSection("StrokeContent#draw");
            return;
        }
        applyDashPatternIfNeeded(matrix);
        BaseKeyframeAnimation<ColorFilter, ColorFilter> baseKeyframeAnimation = this.colorFilterAnimation;
        if (baseKeyframeAnimation != null) {
            this.paint.setColorFilter(baseKeyframeAnimation.getValue());
        }
        BaseKeyframeAnimation<Float, Float> baseKeyframeAnimation2 = this.blurAnimation;
        if (baseKeyframeAnimation2 != null) {
            float floatValue = baseKeyframeAnimation2.getValue().floatValue();
            if (floatValue == 0.0f) {
                this.paint.setMaskFilter(null);
            } else if (floatValue != this.blurMaskFilterRadius) {
                this.paint.setMaskFilter(this.layer.getBlurMaskFilter(floatValue));
            }
            this.blurMaskFilterRadius = floatValue;
        }
        DropShadowKeyframeAnimation dropShadowKeyframeAnimation = this.dropShadowAnimation;
        if (dropShadowKeyframeAnimation != null) {
            dropShadowKeyframeAnimation.applyTo(this.paint);
        }
        for (int i2 = 0; i2 < this.pathGroups.size(); i2++) {
            PathGroup pathGroup = this.pathGroups.get(i2);
            if (pathGroup.trimPath != null) {
                applyTrimPath(canvas, pathGroup, matrix);
            } else {
                L.beginSection("StrokeContent#buildPath");
                this.path.reset();
                for (int size = pathGroup.paths.size() - 1; size >= 0; size--) {
                    this.path.addPath(((PathContent) pathGroup.paths.get(size)).getPath(), matrix);
                }
                L.endSection("StrokeContent#buildPath");
                L.beginSection("StrokeContent#drawPath");
                canvas.drawPath(this.path, this.paint);
                L.endSection("StrokeContent#drawPath");
            }
        }
        L.endSection("StrokeContent#draw");
    }

    private void applyTrimPath(Canvas canvas, PathGroup pathGroup, Matrix matrix) {
        L.beginSection("StrokeContent#applyTrimPath");
        if (pathGroup.trimPath == null) {
            L.endSection("StrokeContent#applyTrimPath");
            return;
        }
        this.path.reset();
        for (int size = pathGroup.paths.size() - 1; size >= 0; size--) {
            this.path.addPath(((PathContent) pathGroup.paths.get(size)).getPath(), matrix);
        }
        float floatValue = pathGroup.trimPath.getStart().getValue().floatValue() / 100.0f;
        float floatValue2 = pathGroup.trimPath.getEnd().getValue().floatValue() / 100.0f;
        float floatValue3 = pathGroup.trimPath.getOffset().getValue().floatValue() / 360.0f;
        if (floatValue < 0.01f && floatValue2 > 0.99f) {
            canvas.drawPath(this.path, this.paint);
            L.endSection("StrokeContent#applyTrimPath");
            return;
        }
        this.pm.setPath(this.path, false);
        float length = this.pm.getLength();
        while (this.pm.nextContour()) {
            length += this.pm.getLength();
        }
        float f = floatValue3 * length;
        float f2 = (floatValue * length) + f;
        float min = Math.min((floatValue2 * length) + f, (f2 + length) - 1.0f);
        float f3 = 0.0f;
        for (int size2 = pathGroup.paths.size() - 1; size2 >= 0; size2--) {
            this.trimPathPath.set(((PathContent) pathGroup.paths.get(size2)).getPath());
            this.trimPathPath.transform(matrix);
            this.pm.setPath(this.trimPathPath, false);
            float length2 = this.pm.getLength();
            if (min > length) {
                float f4 = min - length;
                if (f4 < f3 + length2 && f3 < f4) {
                    Utils.applyTrimPathIfNeeded(this.trimPathPath, f2 > length ? (f2 - length) / length2 : 0.0f, Math.min(f4 / length2, 1.0f), 0.0f);
                    canvas.drawPath(this.trimPathPath, this.paint);
                    f3 += length2;
                }
            }
            float f5 = f3 + length2;
            if (f5 >= f2 && f3 <= min) {
                if (f5 <= min && f2 < f3) {
                    canvas.drawPath(this.trimPathPath, this.paint);
                } else {
                    Utils.applyTrimPathIfNeeded(this.trimPathPath, f2 < f3 ? 0.0f : (f2 - f3) / length2, min > f5 ? 1.0f : (min - f3) / length2, 0.0f);
                    canvas.drawPath(this.trimPathPath, this.paint);
                }
            }
            f3 += length2;
        }
        L.endSection("StrokeContent#applyTrimPath");
    }

    @Override // com.airbnb.lottie.animation.content.DrawingContent
    public void getBounds(RectF rectF, Matrix matrix, boolean z) {
        L.beginSection("StrokeContent#getBounds");
        this.path.reset();
        for (int i = 0; i < this.pathGroups.size(); i++) {
            PathGroup pathGroup = this.pathGroups.get(i);
            for (int i2 = 0; i2 < pathGroup.paths.size(); i2++) {
                this.path.addPath(((PathContent) pathGroup.paths.get(i2)).getPath(), matrix);
            }
        }
        this.path.computeBounds(this.rect, false);
        float floatValue = ((FloatKeyframeAnimation) this.widthAnimation).getFloatValue();
        RectF rectF2 = this.rect;
        float f = floatValue / 2.0f;
        rectF2.set(rectF2.left - f, this.rect.top - f, this.rect.right + f, this.rect.bottom + f);
        rectF.set(this.rect);
        rectF.set(rectF.left - 1.0f, rectF.top - 1.0f, rectF.right + 1.0f, rectF.bottom + 1.0f);
        L.endSection("StrokeContent#getBounds");
    }

    private void applyDashPatternIfNeeded(Matrix matrix) {
        L.beginSection("StrokeContent#applyDashPattern");
        if (this.dashPatternAnimations.isEmpty()) {
            L.endSection("StrokeContent#applyDashPattern");
            return;
        }
        float scale = Utils.getScale(matrix);
        for (int i = 0; i < this.dashPatternAnimations.size(); i++) {
            this.dashPatternValues[i] = this.dashPatternAnimations.get(i).getValue().floatValue();
            if (i % 2 == 0) {
                float[] fArr = this.dashPatternValues;
                if (fArr[i] < 1.0f) {
                    fArr[i] = 1.0f;
                }
            } else {
                float[] fArr2 = this.dashPatternValues;
                if (fArr2[i] < 0.1f) {
                    fArr2[i] = 0.1f;
                }
            }
            float[] fArr3 = this.dashPatternValues;
            fArr3[i] = fArr3[i] * scale;
        }
        BaseKeyframeAnimation<?, Float> baseKeyframeAnimation = this.dashPatternOffsetAnimation;
        this.paint.setPathEffect(new DashPathEffect(this.dashPatternValues, baseKeyframeAnimation == null ? 0.0f : scale * baseKeyframeAnimation.getValue().floatValue()));
        L.endSection("StrokeContent#applyDashPattern");
    }

    @Override // com.airbnb.lottie.model.KeyPathElement
    public void resolveKeyPath(KeyPath keyPath, int i, List<KeyPath> list, KeyPath keyPath2) {
        MiscUtils.resolveKeyPath(keyPath, i, list, keyPath2, this);
    }

    @Override // com.airbnb.lottie.model.KeyPathElement
    public <T> void addValueCallback(T t, LottieValueCallback<T> lottieValueCallback) {
        DropShadowKeyframeAnimation dropShadowKeyframeAnimation;
        DropShadowKeyframeAnimation dropShadowKeyframeAnimation2;
        DropShadowKeyframeAnimation dropShadowKeyframeAnimation3;
        DropShadowKeyframeAnimation dropShadowKeyframeAnimation4;
        DropShadowKeyframeAnimation dropShadowKeyframeAnimation5;
        if (t == LottieProperty.OPACITY) {
            this.opacityAnimation.setValueCallback(lottieValueCallback);
            return;
        }
        if (t == LottieProperty.STROKE_WIDTH) {
            this.widthAnimation.setValueCallback(lottieValueCallback);
            return;
        }
        if (t == LottieProperty.COLOR_FILTER) {
            BaseKeyframeAnimation<ColorFilter, ColorFilter> baseKeyframeAnimation = this.colorFilterAnimation;
            if (baseKeyframeAnimation != null) {
                this.layer.removeAnimation(baseKeyframeAnimation);
            }
            if (lottieValueCallback == null) {
                this.colorFilterAnimation = null;
                return;
            }
            ValueCallbackKeyframeAnimation valueCallbackKeyframeAnimation = new ValueCallbackKeyframeAnimation(lottieValueCallback);
            this.colorFilterAnimation = valueCallbackKeyframeAnimation;
            valueCallbackKeyframeAnimation.addUpdateListener(this);
            this.layer.addAnimation(this.colorFilterAnimation);
            return;
        }
        if (t == LottieProperty.BLUR_RADIUS) {
            BaseKeyframeAnimation<Float, Float> baseKeyframeAnimation2 = this.blurAnimation;
            if (baseKeyframeAnimation2 != null) {
                baseKeyframeAnimation2.setValueCallback(lottieValueCallback);
                return;
            }
            ValueCallbackKeyframeAnimation valueCallbackKeyframeAnimation2 = new ValueCallbackKeyframeAnimation(lottieValueCallback);
            this.blurAnimation = valueCallbackKeyframeAnimation2;
            valueCallbackKeyframeAnimation2.addUpdateListener(this);
            this.layer.addAnimation(this.blurAnimation);
            return;
        }
        if (t == LottieProperty.DROP_SHADOW_COLOR && (dropShadowKeyframeAnimation5 = this.dropShadowAnimation) != null) {
            dropShadowKeyframeAnimation5.setColorCallback(lottieValueCallback);
            return;
        }
        if (t == LottieProperty.DROP_SHADOW_OPACITY && (dropShadowKeyframeAnimation4 = this.dropShadowAnimation) != null) {
            dropShadowKeyframeAnimation4.setOpacityCallback(lottieValueCallback);
            return;
        }
        if (t == LottieProperty.DROP_SHADOW_DIRECTION && (dropShadowKeyframeAnimation3 = this.dropShadowAnimation) != null) {
            dropShadowKeyframeAnimation3.setDirectionCallback(lottieValueCallback);
            return;
        }
        if (t == LottieProperty.DROP_SHADOW_DISTANCE && (dropShadowKeyframeAnimation2 = this.dropShadowAnimation) != null) {
            dropShadowKeyframeAnimation2.setDistanceCallback(lottieValueCallback);
        } else {
            if (t != LottieProperty.DROP_SHADOW_RADIUS || (dropShadowKeyframeAnimation = this.dropShadowAnimation) == null) {
                return;
            }
            dropShadowKeyframeAnimation.setRadiusCallback(lottieValueCallback);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public static final class PathGroup {
        private final List<PathContent> paths;
        private final TrimPathContent trimPath;

        private PathGroup(TrimPathContent trimPathContent) {
            this.paths = new ArrayList();
            this.trimPath = trimPathContent;
        }
    }
}
