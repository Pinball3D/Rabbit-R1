package androidx.core.content.res;

import tech.rabbit.r1launcher.BuildConfig;

/* loaded from: classes.dex */
final class ViewingConditions {
    static final ViewingConditions DEFAULT = make(CamUtils.WHITE_POINT_D65, (float) ((CamUtils.yFromLStar(50.0f) * 63.66197723675813d) / 100.0d), 50.0f, 2.0f, false);
    private final float mAw;
    private final float mC;
    private final float mFl;
    private final float mFlRoot;
    private final float mN;
    private final float mNbb;
    private final float mNc;
    private final float mNcb;
    private final float[] mRgbD;
    private final float mZ;

    /* JADX INFO: Access modifiers changed from: package-private */
    public float getAw() {
        return this.mAw;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public float getC() {
        return this.mC;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public float getFl() {
        return this.mFl;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public float getFlRoot() {
        return this.mFlRoot;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public float getN() {
        return this.mN;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public float getNbb() {
        return this.mNbb;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public float getNc() {
        return this.mNc;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public float getNcb() {
        return this.mNcb;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public float[] getRgbD() {
        return this.mRgbD;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public float getZ() {
        return this.mZ;
    }

    private ViewingConditions(float f, float f2, float f3, float f4, float f5, float f6, float[] fArr, float f7, float f8, float f9) {
        this.mN = f;
        this.mAw = f2;
        this.mNbb = f3;
        this.mNcb = f4;
        this.mC = f5;
        this.mNc = f6;
        this.mRgbD = fArr;
        this.mFl = f7;
        this.mFlRoot = f8;
        this.mZ = f9;
    }

    static ViewingConditions make(float[] fArr, float f, float f2, float f3, boolean z) {
        float[][] fArr2 = CamUtils.XYZ_TO_CAM16RGB;
        float f4 = fArr[0];
        float[] fArr3 = fArr2[0];
        float f5 = fArr3[0] * f4;
        float f6 = fArr[1];
        float f7 = f5 + (fArr3[1] * f6);
        float f8 = fArr[2];
        float f9 = f7 + (fArr3[2] * f8);
        float[] fArr4 = fArr2[1];
        float f10 = (fArr4[0] * f4) + (fArr4[1] * f6) + (fArr4[2] * f8);
        float[] fArr5 = fArr2[2];
        float f11 = (f4 * fArr5[0]) + (f6 * fArr5[1]) + (f8 * fArr5[2]);
        float f12 = (f3 / 10.0f) + 0.8f;
        float lerp = ((double) f12) >= 0.9d ? CamUtils.lerp(0.59f, 0.69f, (f12 - 0.9f) * 10.0f) : CamUtils.lerp(0.525f, 0.59f, (f12 - 0.8f) * 10.0f);
        float exp = z ? 1.0f : (1.0f - (((float) Math.exp(((-f) - 42.0f) / 92.0f)) * 0.2777778f)) * f12;
        double d = exp;
        if (d > 1.0d) {
            exp = 1.0f;
        } else if (d < BuildConfig.SENTRY_SAMPLE_RATE) {
            exp = 0.0f;
        }
        float[] fArr6 = {(((100.0f / f9) * exp) + 1.0f) - exp, (((100.0f / f10) * exp) + 1.0f) - exp, (((100.0f / f11) * exp) + 1.0f) - exp};
        float f13 = 1.0f / ((5.0f * f) + 1.0f);
        float f14 = f13 * f13 * f13 * f13;
        float f15 = 1.0f - f14;
        float cbrt = (f14 * f) + (0.1f * f15 * f15 * ((float) Math.cbrt(f * 5.0d)));
        float yFromLStar = CamUtils.yFromLStar(f2) / fArr[1];
        double d2 = yFromLStar;
        float sqrt = ((float) Math.sqrt(d2)) + 1.48f;
        float pow = 0.725f / ((float) Math.pow(d2, 0.2d));
        float pow2 = (float) Math.pow(((fArr6[2] * cbrt) * f11) / 100.0d, 0.42d);
        float[] fArr7 = {(float) Math.pow(((fArr6[0] * cbrt) * f9) / 100.0d, 0.42d), (float) Math.pow(((fArr6[1] * cbrt) * f10) / 100.0d, 0.42d), pow2};
        float f16 = fArr7[0];
        float f17 = fArr7[1];
        return new ViewingConditions(yFromLStar, ((((f16 * 400.0f) / (f16 + 27.13f)) * 2.0f) + ((f17 * 400.0f) / (f17 + 27.13f)) + (((400.0f * pow2) / (pow2 + 27.13f)) * 0.05f)) * pow, pow, pow, lerp, f12, fArr6, cbrt, (float) Math.pow(cbrt, 0.25d), sqrt);
    }
}
