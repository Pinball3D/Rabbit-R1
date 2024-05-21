package com.google.android.material.color.utilities;

import tech.rabbit.r1launcher.BuildConfig;

/* loaded from: classes2.dex */
public final class ViewingConditions {
    public static final ViewingConditions DEFAULT = defaultWithBackgroundLstar(50.0d);
    private final double aw;
    private final double c;
    private final double fl;
    private final double flRoot;
    private final double n;
    private final double nbb;
    private final double nc;
    private final double ncb;
    private final double[] rgbD;
    private final double z;

    public double getAw() {
        return this.aw;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public double getC() {
        return this.c;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public double getFl() {
        return this.fl;
    }

    public double getFlRoot() {
        return this.flRoot;
    }

    public double getN() {
        return this.n;
    }

    public double getNbb() {
        return this.nbb;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public double getNc() {
        return this.nc;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public double getNcb() {
        return this.ncb;
    }

    public double[] getRgbD() {
        return this.rgbD;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public double getZ() {
        return this.z;
    }

    public static ViewingConditions make(double[] dArr, double d, double d2, double d3, boolean z) {
        double lerp;
        double max = Math.max(0.1d, d2);
        double[][] dArr2 = Cam16.XYZ_TO_CAM16RGB;
        double d4 = dArr[0];
        double[] dArr3 = dArr2[0];
        double d5 = dArr3[0] * d4;
        double d6 = dArr[1];
        double d7 = d5 + (dArr3[1] * d6);
        double d8 = dArr[2];
        double d9 = d7 + (dArr3[2] * d8);
        double[] dArr4 = dArr2[1];
        double d10 = (dArr4[0] * d4) + (dArr4[1] * d6) + (dArr4[2] * d8);
        double[] dArr5 = dArr2[2];
        double d11 = (d4 * dArr5[0]) + (d6 * dArr5[1]) + (d8 * dArr5[2]);
        double d12 = (d3 / 10.0d) + 0.8d;
        if (d12 >= 0.9d) {
            lerp = MathUtils.lerp(0.59d, 0.69d, (d12 - 0.9d) * 10.0d);
        } else {
            lerp = MathUtils.lerp(0.525d, 0.59d, (d12 - 0.8d) * 10.0d);
        }
        double d13 = lerp;
        double clampDouble = MathUtils.clampDouble(BuildConfig.SENTRY_SAMPLE_RATE, 1.0d, z ? 1.0d : (1.0d - (Math.exp(((-d) - 42.0d) / 92.0d) * 0.2777777777777778d)) * d12);
        double[] dArr6 = {(((100.0d / d9) * clampDouble) + 1.0d) - clampDouble, (((100.0d / d10) * clampDouble) + 1.0d) - clampDouble, (((100.0d / d11) * clampDouble) + 1.0d) - clampDouble};
        double d14 = 5.0d * d;
        double d15 = 1.0d / (d14 + 1.0d);
        double d16 = d15 * d15 * d15 * d15;
        double d17 = 1.0d - d16;
        double cbrt = (d16 * d) + (0.1d * d17 * d17 * Math.cbrt(d14));
        double yFromLstar = ColorUtils.yFromLstar(max) / dArr[1];
        double sqrt = Math.sqrt(yFromLstar) + 1.48d;
        double pow = 0.725d / Math.pow(yFromLstar, 0.2d);
        double pow2 = Math.pow(((dArr6[2] * cbrt) * d11) / 100.0d, 0.42d);
        double[] dArr7 = {Math.pow(((dArr6[0] * cbrt) * d9) / 100.0d, 0.42d), Math.pow(((dArr6[1] * cbrt) * d10) / 100.0d, 0.42d), pow2};
        double d18 = dArr7[0];
        double d19 = dArr7[1];
        return new ViewingConditions(yFromLstar, ((((d18 * 400.0d) / (d18 + 27.13d)) * 2.0d) + ((d19 * 400.0d) / (d19 + 27.13d)) + (((400.0d * pow2) / (pow2 + 27.13d)) * 0.05d)) * pow, pow, pow, d13, d12, dArr6, cbrt, Math.pow(cbrt, 0.25d), sqrt);
    }

    public static ViewingConditions defaultWithBackgroundLstar(double d) {
        return make(ColorUtils.whitePointD65(), (ColorUtils.yFromLstar(50.0d) * 63.66197723675813d) / 100.0d, d, 2.0d, false);
    }

    private ViewingConditions(double d, double d2, double d3, double d4, double d5, double d6, double[] dArr, double d7, double d8, double d9) {
        this.n = d;
        this.aw = d2;
        this.nbb = d3;
        this.ncb = d4;
        this.c = d5;
        this.nc = d6;
        this.rgbD = dArr;
        this.fl = d7;
        this.flRoot = d8;
        this.z = d9;
    }
}
