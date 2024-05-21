package androidx.constraintlayout.motion.utils;

import tech.rabbit.r1launcher.BuildConfig;

/* loaded from: classes.dex */
public abstract class CurveFit {
    public static final int CONSTANT = 2;
    public static final int LINEAR = 1;
    public static final int SPLINE = 0;

    public abstract double getPos(double d, int i);

    public abstract void getPos(double d, double[] dArr);

    public abstract void getPos(double d, float[] fArr);

    public abstract double getSlope(double d, int i);

    public abstract void getSlope(double d, double[] dArr);

    public abstract double[] getTimePoints();

    public static CurveFit get(int i, double[] dArr, double[][] dArr2) {
        if (dArr.length == 1) {
            i = 2;
        }
        if (i == 0) {
            return new MonotonicCurveFit(dArr, dArr2);
        }
        if (i == 2) {
            return new Constant(dArr[0], dArr2[0]);
        }
        return new LinearCurveFit(dArr, dArr2);
    }

    public static CurveFit getArc(int[] iArr, double[] dArr, double[][] dArr2) {
        return new ArcCurveFit(iArr, dArr, dArr2);
    }

    /* loaded from: classes.dex */
    static class Constant extends CurveFit {
        double mTime;
        double[] mValue;

        @Override // androidx.constraintlayout.motion.utils.CurveFit
        public double getSlope(double d, int i) {
            return BuildConfig.SENTRY_SAMPLE_RATE;
        }

        @Override // androidx.constraintlayout.motion.utils.CurveFit
        public double[] getTimePoints() {
            return new double[]{this.mTime};
        }

        Constant(double d, double[] dArr) {
            this.mTime = d;
            this.mValue = dArr;
        }

        @Override // androidx.constraintlayout.motion.utils.CurveFit
        public void getPos(double d, double[] dArr) {
            double[] dArr2 = this.mValue;
            System.arraycopy(dArr2, 0, dArr, 0, dArr2.length);
        }

        @Override // androidx.constraintlayout.motion.utils.CurveFit
        public void getPos(double d, float[] fArr) {
            int i = 0;
            while (true) {
                double[] dArr = this.mValue;
                if (i >= dArr.length) {
                    return;
                }
                fArr[i] = (float) dArr[i];
                i++;
            }
        }

        @Override // androidx.constraintlayout.motion.utils.CurveFit
        public double getPos(double d, int i) {
            return this.mValue[i];
        }

        @Override // androidx.constraintlayout.motion.utils.CurveFit
        public void getSlope(double d, double[] dArr) {
            for (int i = 0; i < this.mValue.length; i++) {
                dArr[i] = 0.0d;
            }
        }
    }
}
