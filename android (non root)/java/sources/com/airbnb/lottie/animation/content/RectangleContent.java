package com.airbnb.lottie.animation.content;

import android.graphics.Path;
import android.graphics.PointF;
import android.graphics.RectF;
import com.airbnb.lottie.LottieDrawable;
import com.airbnb.lottie.LottieProperty;
import com.airbnb.lottie.animation.keyframe.BaseKeyframeAnimation;
import com.airbnb.lottie.animation.keyframe.FloatKeyframeAnimation;
import com.airbnb.lottie.model.KeyPath;
import com.airbnb.lottie.model.content.RectangleShape;
import com.airbnb.lottie.model.content.ShapeTrimPath;
import com.airbnb.lottie.model.layer.BaseLayer;
import com.airbnb.lottie.utils.MiscUtils;
import com.airbnb.lottie.value.LottieValueCallback;
import java.util.List;

/* loaded from: classes2.dex */
public class RectangleContent implements BaseKeyframeAnimation.AnimationListener, KeyPathElementContent, PathContent {
    private final BaseKeyframeAnimation<?, Float> cornerRadiusAnimation;
    private final boolean hidden;
    private boolean isPathValid;
    private final LottieDrawable lottieDrawable;
    private final String name;
    private final BaseKeyframeAnimation<?, PointF> positionAnimation;
    private final BaseKeyframeAnimation<?, PointF> sizeAnimation;
    private final Path path = new Path();
    private final RectF rect = new RectF();
    private final CompoundTrimPathContent trimPaths = new CompoundTrimPathContent();
    private BaseKeyframeAnimation<Float, Float> roundedCornersAnimation = null;

    @Override // com.airbnb.lottie.animation.content.Content
    public String getName() {
        return this.name;
    }

    public RectangleContent(LottieDrawable lottieDrawable, BaseLayer baseLayer, RectangleShape rectangleShape) {
        this.name = rectangleShape.getName();
        this.hidden = rectangleShape.isHidden();
        this.lottieDrawable = lottieDrawable;
        BaseKeyframeAnimation<PointF, PointF> createAnimation = rectangleShape.getPosition().createAnimation();
        this.positionAnimation = createAnimation;
        BaseKeyframeAnimation<PointF, PointF> createAnimation2 = rectangleShape.getSize().createAnimation();
        this.sizeAnimation = createAnimation2;
        BaseKeyframeAnimation<Float, Float> createAnimation3 = rectangleShape.getCornerRadius().createAnimation();
        this.cornerRadiusAnimation = createAnimation3;
        baseLayer.addAnimation(createAnimation);
        baseLayer.addAnimation(createAnimation2);
        baseLayer.addAnimation(createAnimation3);
        createAnimation.addUpdateListener(this);
        createAnimation2.addUpdateListener(this);
        createAnimation3.addUpdateListener(this);
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
            if (content instanceof RoundedCornersContent) {
                this.roundedCornersAnimation = ((RoundedCornersContent) content).getRoundedCorners();
            }
        }
    }

    @Override // com.airbnb.lottie.animation.content.PathContent
    public Path getPath() {
        BaseKeyframeAnimation<Float, Float> baseKeyframeAnimation;
        if (this.isPathValid) {
            return this.path;
        }
        this.path.reset();
        if (this.hidden) {
            this.isPathValid = true;
            return this.path;
        }
        PointF value = this.sizeAnimation.getValue();
        float f = value.x / 2.0f;
        float f2 = value.y / 2.0f;
        BaseKeyframeAnimation<?, Float> baseKeyframeAnimation2 = this.cornerRadiusAnimation;
        float floatValue = baseKeyframeAnimation2 == null ? 0.0f : ((FloatKeyframeAnimation) baseKeyframeAnimation2).getFloatValue();
        if (floatValue == 0.0f && (baseKeyframeAnimation = this.roundedCornersAnimation) != null) {
            floatValue = Math.min(baseKeyframeAnimation.getValue().floatValue(), Math.min(f, f2));
        }
        float min = Math.min(f, f2);
        if (floatValue > min) {
            floatValue = min;
        }
        PointF value2 = this.positionAnimation.getValue();
        this.path.moveTo(value2.x + f, (value2.y - f2) + floatValue);
        this.path.lineTo(value2.x + f, (value2.y + f2) - floatValue);
        if (floatValue > 0.0f) {
            float f3 = floatValue * 2.0f;
            this.rect.set((value2.x + f) - f3, (value2.y + f2) - f3, value2.x + f, value2.y + f2);
            this.path.arcTo(this.rect, 0.0f, 90.0f, false);
        }
        this.path.lineTo((value2.x - f) + floatValue, value2.y + f2);
        if (floatValue > 0.0f) {
            float f4 = floatValue * 2.0f;
            this.rect.set(value2.x - f, (value2.y + f2) - f4, (value2.x - f) + f4, value2.y + f2);
            this.path.arcTo(this.rect, 90.0f, 90.0f, false);
        }
        this.path.lineTo(value2.x - f, (value2.y - f2) + floatValue);
        if (floatValue > 0.0f) {
            float f5 = floatValue * 2.0f;
            this.rect.set(value2.x - f, value2.y - f2, (value2.x - f) + f5, (value2.y - f2) + f5);
            this.path.arcTo(this.rect, 180.0f, 90.0f, false);
        }
        this.path.lineTo((value2.x + f) - floatValue, value2.y - f2);
        if (floatValue > 0.0f) {
            float f6 = floatValue * 2.0f;
            this.rect.set((value2.x + f) - f6, value2.y - f2, value2.x + f, (value2.y - f2) + f6);
            this.path.arcTo(this.rect, 270.0f, 90.0f, false);
        }
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
        if (t == LottieProperty.RECTANGLE_SIZE) {
            this.sizeAnimation.setValueCallback(lottieValueCallback);
        } else if (t == LottieProperty.POSITION) {
            this.positionAnimation.setValueCallback(lottieValueCallback);
        } else if (t == LottieProperty.CORNER_RADIUS) {
            this.cornerRadiusAnimation.setValueCallback(lottieValueCallback);
        }
    }
}
