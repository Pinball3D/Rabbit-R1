package androidx.compose.animation.core;

import kotlin.Metadata;

/* compiled from: EasingFunctions.kt */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0018\u0002\n\u0002\bE\"\u0011\u0010\u0000\u001a\u00020\u0001¢\u0006\b\n\u0000\u001a\u0004\b\u0002\u0010\u0003\"\u0011\u0010\u0004\u001a\u00020\u0001¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0003\"\u0011\u0010\u0006\u001a\u00020\u0001¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\u0003\"\u0011\u0010\b\u001a\u00020\u0001¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\u0003\"\u0011\u0010\n\u001a\u00020\u0001¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\u0003\"\u0011\u0010\f\u001a\u00020\u0001¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\u0003\"\u0011\u0010\u000e\u001a\u00020\u0001¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\u0003\"\u0011\u0010\u0010\u001a\u00020\u0001¢\u0006\b\n\u0000\u001a\u0004\b\u0011\u0010\u0003\"\u0011\u0010\u0012\u001a\u00020\u0001¢\u0006\b\n\u0000\u001a\u0004\b\u0013\u0010\u0003\"\u0011\u0010\u0014\u001a\u00020\u0001¢\u0006\b\n\u0000\u001a\u0004\b\u0015\u0010\u0003\"\u0011\u0010\u0016\u001a\u00020\u0001¢\u0006\b\n\u0000\u001a\u0004\b\u0017\u0010\u0003\"\u0011\u0010\u0018\u001a\u00020\u0001¢\u0006\b\n\u0000\u001a\u0004\b\u0019\u0010\u0003\"\u0011\u0010\u001a\u001a\u00020\u0001¢\u0006\b\n\u0000\u001a\u0004\b\u001b\u0010\u0003\"\u0011\u0010\u001c\u001a\u00020\u0001¢\u0006\b\n\u0000\u001a\u0004\b\u001d\u0010\u0003\"\u0011\u0010\u001e\u001a\u00020\u0001¢\u0006\b\n\u0000\u001a\u0004\b\u001f\u0010\u0003\"\u0011\u0010 \u001a\u00020\u0001¢\u0006\b\n\u0000\u001a\u0004\b!\u0010\u0003\"\u0011\u0010\"\u001a\u00020\u0001¢\u0006\b\n\u0000\u001a\u0004\b#\u0010\u0003\"\u0011\u0010$\u001a\u00020\u0001¢\u0006\b\n\u0000\u001a\u0004\b%\u0010\u0003\"\u0011\u0010&\u001a\u00020\u0001¢\u0006\b\n\u0000\u001a\u0004\b'\u0010\u0003\"\u0011\u0010(\u001a\u00020\u0001¢\u0006\b\n\u0000\u001a\u0004\b)\u0010\u0003\"\u0011\u0010*\u001a\u00020\u0001¢\u0006\b\n\u0000\u001a\u0004\b+\u0010\u0003\"\u0011\u0010,\u001a\u00020\u0001¢\u0006\b\n\u0000\u001a\u0004\b-\u0010\u0003\"\u0011\u0010.\u001a\u00020\u0001¢\u0006\b\n\u0000\u001a\u0004\b/\u0010\u0003\"\u0011\u00100\u001a\u00020\u0001¢\u0006\b\n\u0000\u001a\u0004\b1\u0010\u0003\"\u0011\u00102\u001a\u00020\u0001¢\u0006\b\n\u0000\u001a\u0004\b3\u0010\u0003\"\u0011\u00104\u001a\u00020\u0001¢\u0006\b\n\u0000\u001a\u0004\b5\u0010\u0003\"\u0011\u00106\u001a\u00020\u0001¢\u0006\b\n\u0000\u001a\u0004\b7\u0010\u0003\"\u0011\u00108\u001a\u00020\u0001¢\u0006\b\n\u0000\u001a\u0004\b9\u0010\u0003\"\u0011\u0010:\u001a\u00020\u0001¢\u0006\b\n\u0000\u001a\u0004\b;\u0010\u0003\"\u0011\u0010<\u001a\u00020\u0001¢\u0006\b\n\u0000\u001a\u0004\b=\u0010\u0003\"\u0011\u0010>\u001a\u00020\u0001¢\u0006\b\n\u0000\u001a\u0004\b?\u0010\u0003\"\u0011\u0010@\u001a\u00020\u0001¢\u0006\b\n\u0000\u001a\u0004\bA\u0010\u0003\"\u0011\u0010B\u001a\u00020\u0001¢\u0006\b\n\u0000\u001a\u0004\bC\u0010\u0003\"\u0011\u0010D\u001a\u00020\u0001¢\u0006\b\n\u0000\u001a\u0004\bE\u0010\u0003¨\u0006F"}, d2 = {"Ease", "Landroidx/compose/animation/core/Easing;", "getEase", "()Landroidx/compose/animation/core/Easing;", "EaseIn", "getEaseIn", "EaseInBack", "getEaseInBack", "EaseInBounce", "getEaseInBounce", "EaseInCirc", "getEaseInCirc", "EaseInCubic", "getEaseInCubic", "EaseInElastic", "getEaseInElastic", "EaseInExpo", "getEaseInExpo", "EaseInOut", "getEaseInOut", "EaseInOutBack", "getEaseInOutBack", "EaseInOutBounce", "getEaseInOutBounce", "EaseInOutCirc", "getEaseInOutCirc", "EaseInOutCubic", "getEaseInOutCubic", "EaseInOutElastic", "getEaseInOutElastic", "EaseInOutExpo", "getEaseInOutExpo", "EaseInOutQuad", "getEaseInOutQuad", "EaseInOutQuart", "getEaseInOutQuart", "EaseInOutQuint", "getEaseInOutQuint", "EaseInOutSine", "getEaseInOutSine", "EaseInQuad", "getEaseInQuad", "EaseInQuart", "getEaseInQuart", "EaseInQuint", "getEaseInQuint", "EaseInSine", "getEaseInSine", "EaseOut", "getEaseOut", "EaseOutBack", "getEaseOutBack", "EaseOutBounce", "getEaseOutBounce", "EaseOutCirc", "getEaseOutCirc", "EaseOutCubic", "getEaseOutCubic", "EaseOutElastic", "getEaseOutElastic", "EaseOutExpo", "getEaseOutExpo", "EaseOutQuad", "getEaseOutQuad", "EaseOutQuart", "getEaseOutQuart", "EaseOutQuint", "getEaseOutQuint", "EaseOutSine", "getEaseOutSine", "animation-core_release"}, k = 2, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class EasingFunctionsKt {
    private static final Easing Ease = new CubicBezierEasing(0.25f, 0.1f, 0.25f, 1.0f);
    private static final Easing EaseOut = new CubicBezierEasing(0.0f, 0.0f, 0.58f, 1.0f);
    private static final Easing EaseIn = new CubicBezierEasing(0.42f, 0.0f, 1.0f, 1.0f);
    private static final Easing EaseInOut = new CubicBezierEasing(0.42f, 0.0f, 0.58f, 1.0f);
    private static final Easing EaseInSine = new CubicBezierEasing(0.12f, 0.0f, 0.39f, 0.0f);
    private static final Easing EaseOutSine = new CubicBezierEasing(0.61f, 1.0f, 0.88f, 1.0f);
    private static final Easing EaseInOutSine = new CubicBezierEasing(0.37f, 0.0f, 0.63f, 1.0f);
    private static final Easing EaseInCubic = new CubicBezierEasing(0.32f, 0.0f, 0.67f, 0.0f);
    private static final Easing EaseOutCubic = new CubicBezierEasing(0.33f, 1.0f, 0.68f, 1.0f);
    private static final Easing EaseInOutCubic = new CubicBezierEasing(0.65f, 0.0f, 0.35f, 1.0f);
    private static final Easing EaseInQuint = new CubicBezierEasing(0.64f, 0.0f, 0.78f, 0.0f);
    private static final Easing EaseOutQuint = new CubicBezierEasing(0.22f, 1.0f, 0.36f, 1.0f);
    private static final Easing EaseInOutQuint = new CubicBezierEasing(0.83f, 0.0f, 0.17f, 1.0f);
    private static final Easing EaseInCirc = new CubicBezierEasing(0.55f, 0.0f, 1.0f, 0.45f);
    private static final Easing EaseOutCirc = new CubicBezierEasing(0.0f, 0.55f, 0.45f, 1.0f);
    private static final Easing EaseInOutCirc = new CubicBezierEasing(0.85f, 0.0f, 0.15f, 1.0f);
    private static final Easing EaseInQuad = new CubicBezierEasing(0.11f, 0.0f, 0.5f, 0.0f);
    private static final Easing EaseOutQuad = new CubicBezierEasing(0.5f, 1.0f, 0.89f, 1.0f);
    private static final Easing EaseInOutQuad = new CubicBezierEasing(0.45f, 0.0f, 0.55f, 1.0f);
    private static final Easing EaseInQuart = new CubicBezierEasing(0.5f, 0.0f, 0.75f, 0.0f);
    private static final Easing EaseOutQuart = new CubicBezierEasing(0.25f, 1.0f, 0.5f, 1.0f);
    private static final Easing EaseInOutQuart = new CubicBezierEasing(0.76f, 0.0f, 0.24f, 1.0f);
    private static final Easing EaseInExpo = new CubicBezierEasing(0.7f, 0.0f, 0.84f, 0.0f);
    private static final Easing EaseOutExpo = new CubicBezierEasing(0.16f, 1.0f, 0.3f, 1.0f);
    private static final Easing EaseInOutExpo = new CubicBezierEasing(0.87f, 0.0f, 0.13f, 1.0f);
    private static final Easing EaseInBack = new CubicBezierEasing(0.36f, 0.0f, 0.66f, -0.56f);
    private static final Easing EaseOutBack = new CubicBezierEasing(0.34f, 1.56f, 0.64f, 1.0f);
    private static final Easing EaseInOutBack = new CubicBezierEasing(0.68f, -0.6f, 0.32f, 1.6f);
    private static final Easing EaseInElastic = new Easing() { // from class: androidx.compose.animation.core.EasingFunctionsKt$EaseInElastic$1
        @Override // androidx.compose.animation.core.Easing
        public final float transform(float f) {
            if (f == 0.0f) {
                return 0.0f;
            }
            if (f == 1.0f) {
                return 1.0f;
            }
            float f2 = f * 10.0f;
            return (float) ((-((float) Math.pow(2.0f, f2 - 10.0f))) * Math.sin((f2 - 10.75f) * 2.0943951023931953d));
        }
    };
    private static final Easing EaseOutElastic = new Easing() { // from class: androidx.compose.animation.core.EasingFunctionsKt$EaseOutElastic$1
        @Override // androidx.compose.animation.core.Easing
        public final float transform(float f) {
            if (f == 0.0f) {
                return 0.0f;
            }
            if (f == 1.0f) {
                return 1.0f;
            }
            return (float) ((((float) Math.pow(2.0f, (-10.0f) * f)) * Math.sin(((f * 10.0f) - 0.75f) * 2.0943951023931953d)) + 1.0f);
        }
    };
    private static final Easing EaseInOutElastic = new Easing() { // from class: androidx.compose.animation.core.EasingFunctionsKt$EaseInOutElastic$1
        @Override // androidx.compose.animation.core.Easing
        public final float transform(float f) {
            if (f == 0.0f) {
                return 0.0f;
            }
            if (f == 1.0f) {
                return 1.0f;
            }
            if (0.0f <= f && f <= 0.5f) {
                float f2 = f * 20.0f;
                return (float) ((-(((float) Math.pow(r7, f2 - 10.0f)) * Math.sin((f2 - 11.125f) * 1.3962634015954636d))) / 2.0f);
            }
            return ((float) ((((float) Math.pow(r7, ((-20.0f) * f) + 10.0f)) * Math.sin(((f * 20.0f) - 11.125f) * 1.3962634015954636d)) / 2.0f)) + 1.0f;
        }
    };
    private static final Easing EaseOutBounce = new Easing() { // from class: androidx.compose.animation.core.EasingFunctionsKt$EaseOutBounce$1
        @Override // androidx.compose.animation.core.Easing
        public final float transform(float f) {
            float f2;
            float f3;
            if (f < 0.36363637f) {
                return 7.5625f * f * f;
            }
            if (f < 0.72727275f) {
                float f4 = f - 0.54545456f;
                f2 = 7.5625f * f4 * f4;
                f3 = 0.75f;
            } else if (f < 0.90909094f) {
                float f5 = f - 0.8181818f;
                f2 = 7.5625f * f5 * f5;
                f3 = 0.9375f;
            } else {
                float f6 = f - 0.95454544f;
                f2 = 7.5625f * f6 * f6;
                f3 = 0.984375f;
            }
            return f2 + f3;
        }
    };
    private static final Easing EaseInBounce = new Easing() { // from class: androidx.compose.animation.core.EasingFunctionsKt$EaseInBounce$1
        @Override // androidx.compose.animation.core.Easing
        public final float transform(float f) {
            return 1 - EasingFunctionsKt.getEaseOutBounce().transform(1.0f - f);
        }
    };
    private static final Easing EaseInOutBounce = new Easing() { // from class: androidx.compose.animation.core.EasingFunctionsKt$EaseInOutBounce$1
        @Override // androidx.compose.animation.core.Easing
        public final float transform(float f) {
            float transform;
            if (f < 0.5d) {
                transform = 1 - EasingFunctionsKt.getEaseOutBounce().transform(1.0f - (f * 2.0f));
            } else {
                transform = 1 + EasingFunctionsKt.getEaseOutBounce().transform((f * 2.0f) - 1.0f);
            }
            return transform / 2.0f;
        }
    };

    public static final Easing getEase() {
        return Ease;
    }

    public static final Easing getEaseIn() {
        return EaseIn;
    }

    public static final Easing getEaseInBack() {
        return EaseInBack;
    }

    public static final Easing getEaseInBounce() {
        return EaseInBounce;
    }

    public static final Easing getEaseInCirc() {
        return EaseInCirc;
    }

    public static final Easing getEaseInCubic() {
        return EaseInCubic;
    }

    public static final Easing getEaseInElastic() {
        return EaseInElastic;
    }

    public static final Easing getEaseInExpo() {
        return EaseInExpo;
    }

    public static final Easing getEaseInOut() {
        return EaseInOut;
    }

    public static final Easing getEaseInOutBack() {
        return EaseInOutBack;
    }

    public static final Easing getEaseInOutBounce() {
        return EaseInOutBounce;
    }

    public static final Easing getEaseInOutCirc() {
        return EaseInOutCirc;
    }

    public static final Easing getEaseInOutCubic() {
        return EaseInOutCubic;
    }

    public static final Easing getEaseInOutElastic() {
        return EaseInOutElastic;
    }

    public static final Easing getEaseInOutExpo() {
        return EaseInOutExpo;
    }

    public static final Easing getEaseInOutQuad() {
        return EaseInOutQuad;
    }

    public static final Easing getEaseInOutQuart() {
        return EaseInOutQuart;
    }

    public static final Easing getEaseInOutQuint() {
        return EaseInOutQuint;
    }

    public static final Easing getEaseInOutSine() {
        return EaseInOutSine;
    }

    public static final Easing getEaseInQuad() {
        return EaseInQuad;
    }

    public static final Easing getEaseInQuart() {
        return EaseInQuart;
    }

    public static final Easing getEaseInQuint() {
        return EaseInQuint;
    }

    public static final Easing getEaseInSine() {
        return EaseInSine;
    }

    public static final Easing getEaseOut() {
        return EaseOut;
    }

    public static final Easing getEaseOutBack() {
        return EaseOutBack;
    }

    public static final Easing getEaseOutBounce() {
        return EaseOutBounce;
    }

    public static final Easing getEaseOutCirc() {
        return EaseOutCirc;
    }

    public static final Easing getEaseOutCubic() {
        return EaseOutCubic;
    }

    public static final Easing getEaseOutElastic() {
        return EaseOutElastic;
    }

    public static final Easing getEaseOutExpo() {
        return EaseOutExpo;
    }

    public static final Easing getEaseOutQuad() {
        return EaseOutQuad;
    }

    public static final Easing getEaseOutQuart() {
        return EaseOutQuart;
    }

    public static final Easing getEaseOutQuint() {
        return EaseOutQuint;
    }

    public static final Easing getEaseOutSine() {
        return EaseOutSine;
    }
}
