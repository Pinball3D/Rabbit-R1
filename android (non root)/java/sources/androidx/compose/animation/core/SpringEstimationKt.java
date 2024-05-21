package androidx.compose.animation.core;

import io.sentry.protocol.ViewHierarchyNode;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import tech.rabbit.r1launcher.BuildConfig;

/* compiled from: SpringEstimation.kt */
@Metadata(d1 = {"\u0000.\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u0006\n\u0002\b\u0007\n\u0002\u0010\u0007\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\u001a.\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0005\u001a\u00020\u00032\u0006\u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00020\u0003\u001a6\u0010\u0000\u001a\u00020\u00012\u0006\u0010\b\u001a\u00020\u00032\u0006\u0010\t\u001a\u00020\u00032\u0006\u0010\n\u001a\u00020\u00032\u0006\u0010\u0005\u001a\u00020\u00032\u0006\u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00020\u0003\u001a.\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u000b2\u0006\u0010\u0004\u001a\u00020\u000b2\u0006\u0010\u0005\u001a\u00020\u000b2\u0006\u0010\u0006\u001a\u00020\u000b2\u0006\u0010\u0007\u001a\u00020\u000b\u001a(\u0010\f\u001a\u00020\u00032\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u00032\u0006\u0010\u0010\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00020\u0003H\u0002\u001a8\u0010\u0011\u001a\u00020\u00012\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u0012\u001a\u00020\u000e2\u0006\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0005\u001a\u00020\u00032\u0006\u0010\u0013\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00020\u0003H\u0002\u001a0\u0010\u0014\u001a\u00020\u00032\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u0012\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u00032\u0006\u0010\u0010\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00020\u0003H\u0002\u001a(\u0010\u0015\u001a\u00020\u00032\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u00032\u0006\u0010\u0010\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00020\u0003H\u0002\u001a9\u0010\u0016\u001a\u00020\u00032\u0006\u0010\u0017\u001a\u00020\u00032\u0012\u0010\u0018\u001a\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00030\u00192\u0012\u0010\u001a\u001a\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00030\u0019H\u0082\b\u001a\r\u0010\u001b\u001a\u00020\u001c*\u00020\u0003H\u0082\b¨\u0006\u001d"}, d2 = {"estimateAnimationDurationMillis", "", "stiffness", "", "dampingRatio", "initialVelocity", "initialDisplacement", "delta", "springConstant", "dampingCoefficient", "mass", "", "estimateCriticallyDamped", "firstRoot", "Landroidx/compose/animation/core/ComplexDouble;", "p0", "v0", "estimateDurationInternal", "secondRoot", "initialPosition", "estimateOverDamped", "estimateUnderDamped", "iterateNewtonsMethod", ViewHierarchyNode.JsonKeys.X, "fn", "Lkotlin/Function1;", "fnPrime", "isNotFinite", "", "animation-core_release"}, k = 2, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class SpringEstimationKt {
    public static final long estimateAnimationDurationMillis(float f, float f2, float f3, float f4, float f5) {
        return estimateAnimationDurationMillis(f, f2, f3, f4, f5);
    }

    public static final long estimateAnimationDurationMillis(double d, double d2, double d3, double d4, double d5) {
        double sqrt = 2.0d * d2 * Math.sqrt(d);
        double d6 = (sqrt * sqrt) - (4.0d * d);
        double d7 = -sqrt;
        ComplexDouble complexSqrt = ComplexDoubleKt.complexSqrt(d6);
        complexSqrt._real += d7;
        complexSqrt._real *= 0.5d;
        complexSqrt._imaginary *= 0.5d;
        ComplexDouble complexSqrt2 = ComplexDoubleKt.complexSqrt(d6);
        double d8 = -1;
        complexSqrt2._real *= d8;
        complexSqrt2._imaginary *= d8;
        complexSqrt2._real += d7;
        complexSqrt2._real *= 0.5d;
        complexSqrt2._imaginary *= 0.5d;
        return estimateDurationInternal(complexSqrt, complexSqrt2, d2, d3, d4, d5);
    }

    public static final long estimateAnimationDurationMillis(double d, double d2, double d3, double d4, double d5, double d6) {
        double sqrt = d2 / (Math.sqrt(d * d3) * 2.0d);
        double d7 = (d2 * d2) - ((4.0d * d3) * d);
        double d8 = 1.0d / (2.0d * d3);
        double d9 = -d2;
        ComplexDouble complexSqrt = ComplexDoubleKt.complexSqrt(d7);
        complexSqrt._real += d9;
        complexSqrt._real *= d8;
        complexSqrt._imaginary *= d8;
        ComplexDouble complexSqrt2 = ComplexDoubleKt.complexSqrt(d7);
        double d10 = -1;
        complexSqrt2._real *= d10;
        complexSqrt2._imaginary *= d10;
        complexSqrt2._real += d9;
        complexSqrt2._real *= d8;
        complexSqrt2._imaginary *= d8;
        return estimateDurationInternal(complexSqrt, complexSqrt2, sqrt, d4, d5, d6);
    }

    private static final double estimateUnderDamped(ComplexDouble complexDouble, double d, double d2, double d3) {
        double real = complexDouble.getReal();
        double imaginary = (d2 - (real * d)) / complexDouble.getImaginary();
        return Math.log(d3 / Math.sqrt((d * d) + (imaginary * imaginary))) / real;
    }

    private static final double estimateCriticallyDamped(ComplexDouble complexDouble, double d, double d2, double d3) {
        double d4;
        int i;
        double d5 = d3;
        double real = complexDouble.getReal();
        double d6 = real * d;
        double d7 = d2 - d6;
        double log = Math.log(Math.abs(d5 / d)) / real;
        double log2 = Math.log(Math.abs(d5 / d7));
        double d8 = log2;
        for (int i2 = 0; i2 < 6; i2++) {
            d8 = log2 - Math.log(Math.abs(d8 / real));
        }
        double d9 = d8 / real;
        if (!((Double.isInfinite(log) || Double.isNaN(log)) ? false : true)) {
            log = d9;
        } else if (!(!((Double.isInfinite(d9) || Double.isNaN(d9)) ? false : true))) {
            log = Math.max(log, d9);
        }
        double d10 = (-(d6 + d7)) / (real * d7);
        double d11 = real * d10;
        double exp = (Math.exp(d11) * d) + (d7 * d10 * Math.exp(d11));
        if (!Double.isNaN(d10) && d10 > BuildConfig.SENTRY_SAMPLE_RATE) {
            if (d10 <= BuildConfig.SENTRY_SAMPLE_RATE || (-exp) >= d5) {
                log = (-(2.0d / real)) - (d / d7);
                d4 = Double.MAX_VALUE;
                i = 0;
                while (d4 > 0.001d && i < 100) {
                    i++;
                    double d12 = real * log;
                    double d13 = d5;
                    double exp2 = log - ((((d + (d7 * log)) * Math.exp(d12)) + d5) / ((((1 + d12) * d7) + d6) * Math.exp(d12)));
                    d4 = Math.abs(log - exp2);
                    log = exp2;
                    d5 = d13;
                }
                return log;
            }
            if (d7 < BuildConfig.SENTRY_SAMPLE_RATE && d > BuildConfig.SENTRY_SAMPLE_RATE) {
                log = 0.0d;
            }
        }
        d5 = -d5;
        d4 = Double.MAX_VALUE;
        i = 0;
        while (d4 > 0.001d) {
            i++;
            double d122 = real * log;
            double d132 = d5;
            double exp22 = log - ((((d + (d7 * log)) * Math.exp(d122)) + d5) / ((((1 + d122) * d7) + d6) * Math.exp(d122)));
            d4 = Math.abs(log - exp22);
            log = exp22;
            d5 = d132;
        }
        return log;
    }

    /* JADX WARN: Removed duplicated region for block: B:25:0x00c9 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:27:0x00ca  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static final double estimateOverDamped(androidx.compose.animation.core.ComplexDouble r29, androidx.compose.animation.core.ComplexDouble r30, double r31, double r33, double r35) {
        /*
            Method dump skipped, instructions count: 269
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.animation.core.SpringEstimationKt.estimateOverDamped(androidx.compose.animation.core.ComplexDouble, androidx.compose.animation.core.ComplexDouble, double, double, double):double");
    }

    private static final double estimateOverDamped$xInflection(double d, double d2, double d3, double d4, double d5) {
        return (d * Math.exp(d2 * d3)) + (d4 * Math.exp(d5 * d3));
    }

    private static final long estimateDurationInternal(ComplexDouble complexDouble, ComplexDouble complexDouble2, double d, double d2, double d3, double d4) {
        double estimateCriticallyDamped;
        double d5 = d2;
        if (d3 == BuildConfig.SENTRY_SAMPLE_RATE && d5 == BuildConfig.SENTRY_SAMPLE_RATE) {
            return 0L;
        }
        if (d3 < BuildConfig.SENTRY_SAMPLE_RATE) {
            d5 = -d5;
        }
        double abs = Math.abs(d3);
        if (d > 1.0d) {
            estimateCriticallyDamped = estimateOverDamped(complexDouble, complexDouble2, abs, d5, d4);
        } else if (d < 1.0d) {
            estimateCriticallyDamped = estimateUnderDamped(complexDouble, abs, d5, d4);
        } else {
            estimateCriticallyDamped = estimateCriticallyDamped(complexDouble, abs, d5, d4);
        }
        return (long) (estimateCriticallyDamped * 1000.0d);
    }

    private static final double iterateNewtonsMethod(double d, Function1<? super Double, Double> function1, Function1<? super Double, Double> function12) {
        return d - (function1.invoke(Double.valueOf(d)).doubleValue() / function12.invoke(Double.valueOf(d)).doubleValue());
    }

    private static final boolean isNotFinite(double d) {
        return !((Double.isInfinite(d) || Double.isNaN(d)) ? false : true);
    }
}
