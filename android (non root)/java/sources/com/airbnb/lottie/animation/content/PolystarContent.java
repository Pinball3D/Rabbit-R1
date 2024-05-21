package com.airbnb.lottie.animation.content;

import android.graphics.Path;
import android.graphics.PathMeasure;
import android.graphics.PointF;
import com.airbnb.lottie.LottieDrawable;
import com.airbnb.lottie.LottieProperty;
import com.airbnb.lottie.animation.keyframe.BaseKeyframeAnimation;
import com.airbnb.lottie.model.KeyPath;
import com.airbnb.lottie.model.content.PolystarShape;
import com.airbnb.lottie.model.content.ShapeTrimPath;
import com.airbnb.lottie.model.layer.BaseLayer;
import com.airbnb.lottie.utils.MiscUtils;
import com.airbnb.lottie.value.LottieValueCallback;
import java.util.List;
import tech.rabbit.r1launcher.BuildConfig;

/* loaded from: classes2.dex */
public class PolystarContent implements PathContent, BaseKeyframeAnimation.AnimationListener, KeyPathElementContent {
    private static final float POLYGON_MAGIC_NUMBER = 0.25f;
    private static final float POLYSTAR_MAGIC_NUMBER = 0.47829f;
    private final boolean hidden;
    private final BaseKeyframeAnimation<?, Float> innerRadiusAnimation;
    private final BaseKeyframeAnimation<?, Float> innerRoundednessAnimation;
    private boolean isPathValid;
    private final boolean isReversed;
    private final LottieDrawable lottieDrawable;
    private final String name;
    private final BaseKeyframeAnimation<?, Float> outerRadiusAnimation;
    private final BaseKeyframeAnimation<?, Float> outerRoundednessAnimation;
    private final BaseKeyframeAnimation<?, Float> pointsAnimation;
    private final BaseKeyframeAnimation<?, PointF> positionAnimation;
    private final BaseKeyframeAnimation<?, Float> rotationAnimation;
    private final PolystarShape.Type type;
    private final Path path = new Path();
    private final Path lastSegmentPath = new Path();
    private final PathMeasure lastSegmentPathMeasure = new PathMeasure();
    private final float[] lastSegmentPosition = new float[2];
    private final CompoundTrimPathContent trimPaths = new CompoundTrimPathContent();

    @Override // com.airbnb.lottie.animation.content.Content
    public String getName() {
        return this.name;
    }

    public PolystarContent(LottieDrawable lottieDrawable, BaseLayer baseLayer, PolystarShape polystarShape) {
        this.lottieDrawable = lottieDrawable;
        this.name = polystarShape.getName();
        PolystarShape.Type type = polystarShape.getType();
        this.type = type;
        this.hidden = polystarShape.isHidden();
        this.isReversed = polystarShape.isReversed();
        BaseKeyframeAnimation<Float, Float> createAnimation = polystarShape.getPoints().createAnimation();
        this.pointsAnimation = createAnimation;
        BaseKeyframeAnimation<PointF, PointF> createAnimation2 = polystarShape.getPosition().createAnimation();
        this.positionAnimation = createAnimation2;
        BaseKeyframeAnimation<Float, Float> createAnimation3 = polystarShape.getRotation().createAnimation();
        this.rotationAnimation = createAnimation3;
        BaseKeyframeAnimation<Float, Float> createAnimation4 = polystarShape.getOuterRadius().createAnimation();
        this.outerRadiusAnimation = createAnimation4;
        BaseKeyframeAnimation<Float, Float> createAnimation5 = polystarShape.getOuterRoundedness().createAnimation();
        this.outerRoundednessAnimation = createAnimation5;
        if (type == PolystarShape.Type.STAR) {
            this.innerRadiusAnimation = polystarShape.getInnerRadius().createAnimation();
            this.innerRoundednessAnimation = polystarShape.getInnerRoundedness().createAnimation();
        } else {
            this.innerRadiusAnimation = null;
            this.innerRoundednessAnimation = null;
        }
        baseLayer.addAnimation(createAnimation);
        baseLayer.addAnimation(createAnimation2);
        baseLayer.addAnimation(createAnimation3);
        baseLayer.addAnimation(createAnimation4);
        baseLayer.addAnimation(createAnimation5);
        if (type == PolystarShape.Type.STAR) {
            baseLayer.addAnimation(this.innerRadiusAnimation);
            baseLayer.addAnimation(this.innerRoundednessAnimation);
        }
        createAnimation.addUpdateListener(this);
        createAnimation2.addUpdateListener(this);
        createAnimation3.addUpdateListener(this);
        createAnimation4.addUpdateListener(this);
        createAnimation5.addUpdateListener(this);
        if (type == PolystarShape.Type.STAR) {
            this.innerRadiusAnimation.addUpdateListener(this);
            this.innerRoundednessAnimation.addUpdateListener(this);
        }
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
        if (this.hidden) {
            this.isPathValid = true;
            return this.path;
        }
        int i = AnonymousClass1.$SwitchMap$com$airbnb$lottie$model$content$PolystarShape$Type[this.type.ordinal()];
        if (i == 1) {
            createStarPath();
        } else if (i == 2) {
            createPolygonPath();
        }
        this.path.close();
        this.trimPaths.apply(this.path);
        this.isPathValid = true;
        return this.path;
    }

    /* renamed from: com.airbnb.lottie.animation.content.PolystarContent$1, reason: invalid class name */
    /* loaded from: classes2.dex */
    static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$com$airbnb$lottie$model$content$PolystarShape$Type;

        static {
            int[] iArr = new int[PolystarShape.Type.values().length];
            $SwitchMap$com$airbnb$lottie$model$content$PolystarShape$Type = iArr;
            try {
                iArr[PolystarShape.Type.STAR.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$airbnb$lottie$model$content$PolystarShape$Type[PolystarShape.Type.POLYGON.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    private void createStarPath() {
        int i;
        float f;
        float f2;
        double d;
        float f3;
        float f4;
        float f5;
        float f6;
        double d2;
        float f7;
        float f8;
        float f9;
        double d3;
        float floatValue = this.pointsAnimation.getValue().floatValue();
        double radians = Math.toRadians((this.rotationAnimation == null ? BuildConfig.SENTRY_SAMPLE_RATE : r2.getValue().floatValue()) - 90.0d);
        double d4 = floatValue;
        float f10 = (float) (6.283185307179586d / d4);
        if (this.isReversed) {
            f10 *= -1.0f;
        }
        float f11 = f10 / 2.0f;
        float f12 = floatValue - ((int) floatValue);
        int i2 = (f12 > 0.0f ? 1 : (f12 == 0.0f ? 0 : -1));
        if (i2 != 0) {
            radians += (1.0f - f12) * f11;
        }
        float floatValue2 = this.outerRadiusAnimation.getValue().floatValue();
        float floatValue3 = this.innerRadiusAnimation.getValue().floatValue();
        BaseKeyframeAnimation<?, Float> baseKeyframeAnimation = this.innerRoundednessAnimation;
        float floatValue4 = baseKeyframeAnimation != null ? baseKeyframeAnimation.getValue().floatValue() / 100.0f : 0.0f;
        BaseKeyframeAnimation<?, Float> baseKeyframeAnimation2 = this.outerRoundednessAnimation;
        float floatValue5 = baseKeyframeAnimation2 != null ? baseKeyframeAnimation2.getValue().floatValue() / 100.0f : 0.0f;
        if (i2 != 0) {
            f4 = ((floatValue2 - floatValue3) * f12) + floatValue3;
            i = i2;
            double d5 = f4;
            float cos = (float) (d5 * Math.cos(radians));
            f3 = (float) (d5 * Math.sin(radians));
            this.path.moveTo(cos, f3);
            d = radians + ((f10 * f12) / 2.0f);
            f = cos;
            f2 = f11;
        } else {
            i = i2;
            double d6 = floatValue2;
            float cos2 = (float) (Math.cos(radians) * d6);
            float sin = (float) (d6 * Math.sin(radians));
            this.path.moveTo(cos2, sin);
            f = cos2;
            f2 = f11;
            d = radians + f2;
            f3 = sin;
            f4 = 0.0f;
        }
        double ceil = Math.ceil(d4) * 2.0d;
        int i3 = 0;
        float f13 = f2;
        float f14 = f;
        boolean z = false;
        while (true) {
            double d7 = i3;
            if (d7 < ceil) {
                float f15 = z ? floatValue2 : floatValue3;
                if (f4 == 0.0f || d7 != ceil - 2.0d) {
                    f5 = f10;
                    f6 = f13;
                } else {
                    f5 = f10;
                    f6 = (f10 * f12) / 2.0f;
                }
                if (f4 == 0.0f || d7 != ceil - 1.0d) {
                    d2 = d7;
                    f7 = f4;
                    f4 = f15;
                } else {
                    d2 = d7;
                    f7 = f4;
                }
                double d8 = f4;
                double d9 = ceil;
                float cos3 = (float) (d8 * Math.cos(d));
                float sin2 = (float) (d8 * Math.sin(d));
                if (floatValue4 == 0.0f && floatValue5 == 0.0f) {
                    this.path.lineTo(cos3, sin2);
                    d3 = d;
                    f8 = floatValue4;
                    f9 = floatValue5;
                } else {
                    f8 = floatValue4;
                    double atan2 = (float) (Math.atan2(f3, f14) - 1.5707963267948966d);
                    float cos4 = (float) Math.cos(atan2);
                    float sin3 = (float) Math.sin(atan2);
                    f9 = floatValue5;
                    d3 = d;
                    double atan22 = (float) (Math.atan2(sin2, cos3) - 1.5707963267948966d);
                    float cos5 = (float) Math.cos(atan22);
                    float sin4 = (float) Math.sin(atan22);
                    float f16 = z ? f8 : f9;
                    float f17 = z ? f9 : f8;
                    float f18 = z ? floatValue3 : floatValue2;
                    float f19 = z ? floatValue2 : floatValue3;
                    float f20 = f18 * f16 * POLYSTAR_MAGIC_NUMBER;
                    float f21 = cos4 * f20;
                    float f22 = f20 * sin3;
                    float f23 = f19 * f17 * POLYSTAR_MAGIC_NUMBER;
                    float f24 = cos5 * f23;
                    float f25 = f23 * sin4;
                    if (i != 0) {
                        if (i3 == 0) {
                            f21 *= f12;
                            f22 *= f12;
                        } else if (d2 == d9 - 1.0d) {
                            f24 *= f12;
                            f25 *= f12;
                        }
                    }
                    this.path.cubicTo(f14 - f21, f3 - f22, cos3 + f24, sin2 + f25, cos3, sin2);
                }
                d = d3 + f6;
                z = !z;
                i3++;
                f14 = cos3;
                f3 = sin2;
                floatValue5 = f9;
                floatValue4 = f8;
                f4 = f7;
                f10 = f5;
                ceil = d9;
            } else {
                PointF value = this.positionAnimation.getValue();
                this.path.offset(value.x, value.y);
                this.path.close();
                return;
            }
        }
    }

    private void createPolygonPath() {
        double d;
        float f;
        PolystarContent polystarContent;
        PolystarContent polystarContent2 = this;
        int floor = (int) Math.floor(polystarContent2.pointsAnimation.getValue().floatValue());
        double radians = Math.toRadians((polystarContent2.rotationAnimation == null ? BuildConfig.SENTRY_SAMPLE_RATE : r2.getValue().floatValue()) - 90.0d);
        double d2 = floor;
        float floatValue = polystarContent2.outerRoundednessAnimation.getValue().floatValue() / 100.0f;
        float floatValue2 = polystarContent2.outerRadiusAnimation.getValue().floatValue();
        double d3 = floatValue2;
        float cos = (float) (Math.cos(radians) * d3);
        float sin = (float) (Math.sin(radians) * d3);
        polystarContent2.path.moveTo(cos, sin);
        double d4 = (float) (6.283185307179586d / d2);
        double ceil = Math.ceil(d2);
        double d5 = radians + d4;
        int i = 0;
        while (true) {
            double d6 = i;
            if (d6 < ceil) {
                int i2 = i;
                float cos2 = (float) (d3 * Math.cos(d5));
                double d7 = d4;
                float sin2 = (float) (d3 * Math.sin(d5));
                if (floatValue != 0.0f) {
                    d = d3;
                    double atan2 = (float) (Math.atan2(sin, cos) - 1.5707963267948966d);
                    float cos3 = (float) Math.cos(atan2);
                    float sin3 = (float) Math.sin(atan2);
                    f = sin2;
                    double atan22 = (float) (Math.atan2(sin2, cos2) - 1.5707963267948966d);
                    float cos4 = (float) Math.cos(atan22);
                    float sin4 = (float) Math.sin(atan22);
                    float f2 = floatValue2 * floatValue * POLYGON_MAGIC_NUMBER;
                    float f3 = cos3 * f2;
                    float f4 = sin3 * f2;
                    float f5 = cos4 * f2;
                    float f6 = f2 * sin4;
                    if (d6 == ceil - 1.0d) {
                        polystarContent = this;
                        polystarContent.lastSegmentPath.reset();
                        polystarContent.lastSegmentPath.moveTo(cos, sin);
                        float f7 = cos - f3;
                        float f8 = sin - f4;
                        float f9 = cos2 + f5;
                        float f10 = f6 + f;
                        polystarContent.lastSegmentPath.cubicTo(f7, f8, f9, f10, cos2, f);
                        polystarContent.lastSegmentPathMeasure.setPath(polystarContent.lastSegmentPath, false);
                        PathMeasure pathMeasure = polystarContent.lastSegmentPathMeasure;
                        pathMeasure.getPosTan(pathMeasure.getLength() * 0.9999f, polystarContent.lastSegmentPosition, null);
                        Path path = polystarContent.path;
                        float[] fArr = polystarContent.lastSegmentPosition;
                        path.cubicTo(f7, f8, f9, f10, fArr[0], fArr[1]);
                    } else {
                        polystarContent = this;
                        polystarContent.path.cubicTo(cos - f3, sin - f4, cos2 + f5, f + f6, cos2, f);
                    }
                } else {
                    d = d3;
                    f = sin2;
                    polystarContent = polystarContent2;
                    if (d6 == ceil - 1.0d) {
                        sin = f;
                        cos = cos2;
                        d4 = d7;
                        i = i2 + 1;
                        polystarContent2 = polystarContent;
                        d3 = d;
                    } else {
                        polystarContent.path.lineTo(cos2, f);
                    }
                }
                d5 += d7;
                sin = f;
                cos = cos2;
                d4 = d7;
                i = i2 + 1;
                polystarContent2 = polystarContent;
                d3 = d;
            } else {
                PolystarContent polystarContent3 = polystarContent2;
                PointF value = polystarContent3.positionAnimation.getValue();
                polystarContent3.path.offset(value.x, value.y);
                polystarContent3.path.close();
                return;
            }
        }
    }

    @Override // com.airbnb.lottie.model.KeyPathElement
    public void resolveKeyPath(KeyPath keyPath, int i, List<KeyPath> list, KeyPath keyPath2) {
        MiscUtils.resolveKeyPath(keyPath, i, list, keyPath2, this);
    }

    @Override // com.airbnb.lottie.model.KeyPathElement
    public <T> void addValueCallback(T t, LottieValueCallback<T> lottieValueCallback) {
        BaseKeyframeAnimation<?, Float> baseKeyframeAnimation;
        BaseKeyframeAnimation<?, Float> baseKeyframeAnimation2;
        if (t == LottieProperty.POLYSTAR_POINTS) {
            this.pointsAnimation.setValueCallback(lottieValueCallback);
            return;
        }
        if (t == LottieProperty.POLYSTAR_ROTATION) {
            this.rotationAnimation.setValueCallback(lottieValueCallback);
            return;
        }
        if (t == LottieProperty.POSITION) {
            this.positionAnimation.setValueCallback(lottieValueCallback);
            return;
        }
        if (t == LottieProperty.POLYSTAR_INNER_RADIUS && (baseKeyframeAnimation2 = this.innerRadiusAnimation) != null) {
            baseKeyframeAnimation2.setValueCallback(lottieValueCallback);
            return;
        }
        if (t == LottieProperty.POLYSTAR_OUTER_RADIUS) {
            this.outerRadiusAnimation.setValueCallback(lottieValueCallback);
            return;
        }
        if (t == LottieProperty.POLYSTAR_INNER_ROUNDEDNESS && (baseKeyframeAnimation = this.innerRoundednessAnimation) != null) {
            baseKeyframeAnimation.setValueCallback(lottieValueCallback);
        } else if (t == LottieProperty.POLYSTAR_OUTER_ROUNDEDNESS) {
            this.outerRoundednessAnimation.setValueCallback(lottieValueCallback);
        }
    }
}
