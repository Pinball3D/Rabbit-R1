package com.airbnb.lottie.animation.content;

import android.graphics.Path;
import android.graphics.PointF;
import com.airbnb.lottie.LottieDrawable;
import com.airbnb.lottie.LottieProperty;
import com.airbnb.lottie.animation.keyframe.BaseKeyframeAnimation;
import com.airbnb.lottie.model.KeyPath;
import com.airbnb.lottie.model.content.CircleShape;
import com.airbnb.lottie.model.content.ShapeTrimPath;
import com.airbnb.lottie.model.layer.BaseLayer;
import com.airbnb.lottie.utils.MiscUtils;
import com.airbnb.lottie.value.LottieValueCallback;
import java.util.List;

/* loaded from: classes2.dex */
public class EllipseContent implements PathContent, BaseKeyframeAnimation.AnimationListener, KeyPathElementContent {
    private static final float ELLIPSE_CONTROL_POINT_PERCENTAGE = 0.55228f;
    private final CircleShape circleShape;
    private boolean isPathValid;
    private final LottieDrawable lottieDrawable;
    private final String name;
    private final BaseKeyframeAnimation<?, PointF> positionAnimation;
    private final BaseKeyframeAnimation<?, PointF> sizeAnimation;
    private final Path path = new Path();
    private final CompoundTrimPathContent trimPaths = new CompoundTrimPathContent();

    @Override // com.airbnb.lottie.animation.content.Content
    public String getName() {
        return this.name;
    }

    public EllipseContent(LottieDrawable lottieDrawable, BaseLayer baseLayer, CircleShape circleShape) {
        this.name = circleShape.getName();
        this.lottieDrawable = lottieDrawable;
        BaseKeyframeAnimation<PointF, PointF> createAnimation = circleShape.getSize().createAnimation();
        this.sizeAnimation = createAnimation;
        BaseKeyframeAnimation<PointF, PointF> createAnimation2 = circleShape.getPosition().createAnimation();
        this.positionAnimation = createAnimation2;
        this.circleShape = circleShape;
        baseLayer.addAnimation(createAnimation);
        baseLayer.addAnimation(createAnimation2);
        createAnimation.addUpdateListener(this);
        createAnimation2.addUpdateListener(this);
    }

    @Override // com.airbnb.lottie.animation.keyframe.BaseKeyframeAnimation.AnimationListener
    public void onValueChanged() {
        invalidate();
    }

    private void invalidate() {
        this.isPathValid = false;
        this.lottieDrawable.invalidateSelf();
    }

    @Override // com.airbnb.lottie.animation.content.Content
    public void setContents(List<Content> list, List<Content> list2) {
        for (int i = 0; i < list.size(); i++) {
            Content content = list.get(i);
            if (content instanceof TrimPathContent) {
                TrimPathContent trimPathContent = (TrimPathContent) content;
                if (trimPathContent.getType() == ShapeTrimPath.Type.SIMULTANEOUSLY) {
                    this.trimPaths.addTrimPath(trimPathContent);
                    trimPathContent.addListener(this);
                }
            }
        }
    }

    @Override // com.airbnb.lottie.animation.content.PathContent
    public Path getPath() {
        if (this.isPathValid) {
            return this.path;
        }
        this.path.reset();
        if (this.circleShape.isHidden()) {
            this.isPathValid = true;
            return this.path;
        }
        PointF value = this.sizeAnimation.getValue();
        float f = value.x / 2.0f;
        float f2 = value.y / 2.0f;
        float f3 = f * ELLIPSE_CONTROL_POINT_PERCENTAGE;
        float f4 = ELLIPSE_CONTROL_POINT_PERCENTAGE * f2;
        this.path.reset();
        if (this.circleShape.isReversed()) {
            float f5 = -f2;
            this.path.moveTo(0.0f, f5);
            float f6 = 0.0f - f3;
            float f7 = -f;
            float f8 = 0.0f - f4;
            this.path.cubicTo(f6, f5, f7, f8, f7, 0.0f);
            float f9 = f4 + 0.0f;
            this.path.cubicTo(f7, f9, f6, f2, 0.0f, f2);
            float f10 = f3 + 0.0f;
            this.path.cubicTo(f10, f2, f, f9, f, 0.0f);
            this.path.cubicTo(f, f8, f10, f5, 0.0f, f5);
        } else {
            float f11 = -f2;
            this.path.moveTo(0.0f, f11);
            float f12 = f3 + 0.0f;
            float f13 = 0.0f - f4;
            this.path.cubicTo(f12, f11, f, f13, f, 0.0f);
            float f14 = f4 + 0.0f;
            this.path.cubicTo(f, f14, f12, f2, 0.0f, f2);
            float f15 = 0.0f - f3;
            float f16 = -f;
            this.path.cubicTo(f15, f2, f16, f14, f16, 0.0f);
            this.path.cubicTo(f16, f13, f15, f11, 0.0f, f11);
        }
        PointF value2 = this.positionAnimation.getValue();
        this.path.offset(value2.x, value2.y);
        this.path.close();
        this.trimPaths.apply(this.path);
        this.isPathValid = true;
        return this.path;
    }

    @Override // com.airbnb.lottie.model.KeyPathElement
    public void resolveKeyPath(KeyPath keyPath, int i, List<KeyPath> list, KeyPath keyPath2) {
        MiscUtils.resolveKeyPath(keyPath, i, list, keyPath2, this);
    }

    @Override // com.airbnb.lottie.model.KeyPathElement
    public <T> void addValueCallback(T t, LottieValueCallback<T> lottieValueCallback) {
        if (t == LottieProperty.ELLIPSE_SIZE) {
            this.sizeAnimation.setValueCallback(lottieValueCallback);
        } else if (t == LottieProperty.POSITION) {
            this.positionAnimation.setValueCallback(lottieValueCallback);
        }
    }
}
