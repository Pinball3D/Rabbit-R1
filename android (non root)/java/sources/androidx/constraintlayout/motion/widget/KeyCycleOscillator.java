package androidx.constraintlayout.motion.widget;

import android.util.Log;
import android.view.View;
import androidx.constraintlayout.motion.utils.CurveFit;
import androidx.constraintlayout.motion.utils.Oscillator;
import androidx.constraintlayout.widget.ConstraintAttribute;
import androidx.core.app.NotificationCompat;
import io.sentry.protocol.ViewHierarchyNode;
import java.lang.reflect.Array;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.text.DecimalFormat;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.Iterator;
import tech.rabbit.r1launcher.BuildConfig;

/* loaded from: classes.dex */
public abstract class KeyCycleOscillator {
    private static final String TAG = "KeyCycleOscillator";
    private CurveFit mCurveFit;
    protected ConstraintAttribute mCustom;
    private CycleOscillator mCycleOscillator;
    private String mType;
    private int mWaveShape = 0;
    public int mVariesBy = 0;
    ArrayList<WavePoint> mWavePoints = new ArrayList<>();

    public CurveFit getCurveFit() {
        return this.mCurveFit;
    }

    public abstract void setProperty(View view, float f);

    public void setType(String str) {
        this.mType = str;
    }

    public boolean variesByPath() {
        return this.mVariesBy == 1;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public static class WavePoint {
        float mOffset;
        float mPeriod;
        int mPosition;
        float mValue;

        public WavePoint(int i, float f, float f2, float f3) {
            this.mPosition = i;
            this.mValue = f3;
            this.mOffset = f2;
            this.mPeriod = f;
        }
    }

    public String toString() {
        String str = this.mType;
        DecimalFormat decimalFormat = new DecimalFormat("##.##");
        Iterator<WavePoint> it = this.mWavePoints.iterator();
        while (it.hasNext()) {
            str = str + "[" + it.next().mPosition + " , " + decimalFormat.format(r2.mValue) + "] ";
        }
        return str;
    }

    public float get(float f) {
        return (float) this.mCycleOscillator.getValues(f);
    }

    public float getSlope(float f) {
        return (float) this.mCycleOscillator.getSlope(f);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static KeyCycleOscillator makeSpline(String str) {
        if (str.startsWith("CUSTOM")) {
            return new CustomSet();
        }
        str.hashCode();
        char c = 65535;
        switch (str.hashCode()) {
            case -1249320806:
                if (str.equals("rotationX")) {
                    c = 0;
                    break;
                }
                break;
            case -1249320805:
                if (str.equals("rotationY")) {
                    c = 1;
                    break;
                }
                break;
            case -1225497657:
                if (str.equals("translationX")) {
                    c = 2;
                    break;
                }
                break;
            case -1225497656:
                if (str.equals("translationY")) {
                    c = 3;
                    break;
                }
                break;
            case -1225497655:
                if (str.equals("translationZ")) {
                    c = 4;
                    break;
                }
                break;
            case -1001078227:
                if (str.equals(NotificationCompat.CATEGORY_PROGRESS)) {
                    c = 5;
                    break;
                }
                break;
            case -908189618:
                if (str.equals("scaleX")) {
                    c = 6;
                    break;
                }
                break;
            case -908189617:
                if (str.equals("scaleY")) {
                    c = 7;
                    break;
                }
                break;
            case -797520672:
                if (str.equals("waveVariesBy")) {
                    c = '\b';
                    break;
                }
                break;
            case -40300674:
                if (str.equals("rotation")) {
                    c = '\t';
                    break;
                }
                break;
            case -4379043:
                if (str.equals("elevation")) {
                    c = '\n';
                    break;
                }
                break;
            case 37232917:
                if (str.equals("transitionPathRotate")) {
                    c = 11;
                    break;
                }
                break;
            case 92909918:
                if (str.equals(ViewHierarchyNode.JsonKeys.ALPHA)) {
                    c = '\f';
                    break;
                }
                break;
            case 156108012:
                if (str.equals("waveOffset")) {
                    c = '\r';
                    break;
                }
                break;
        }
        switch (c) {
            case 0:
                return new RotationXset();
            case 1:
                return new RotationYset();
            case 2:
                return new TranslationXset();
            case 3:
                return new TranslationYset();
            case 4:
                return new TranslationZset();
            case 5:
                return new ProgressSet();
            case 6:
                return new ScaleXset();
            case 7:
                return new ScaleYset();
            case '\b':
                return new AlphaSet();
            case '\t':
                return new RotationSet();
            case '\n':
                return new ElevationSet();
            case 11:
                return new PathRotateSet();
            case '\f':
                return new AlphaSet();
            case '\r':
                return new AlphaSet();
            default:
                return null;
        }
    }

    public void setPoint(int i, int i2, int i3, float f, float f2, float f3, ConstraintAttribute constraintAttribute) {
        this.mWavePoints.add(new WavePoint(i, f, f2, f3));
        if (i3 != -1) {
            this.mVariesBy = i3;
        }
        this.mWaveShape = i2;
        this.mCustom = constraintAttribute;
    }

    public void setPoint(int i, int i2, int i3, float f, float f2, float f3) {
        this.mWavePoints.add(new WavePoint(i, f, f2, f3));
        if (i3 != -1) {
            this.mVariesBy = i3;
        }
        this.mWaveShape = i2;
    }

    public void setup(float f) {
        int size = this.mWavePoints.size();
        if (size == 0) {
            return;
        }
        Collections.sort(this.mWavePoints, new Comparator<WavePoint>() { // from class: androidx.constraintlayout.motion.widget.KeyCycleOscillator.1
            @Override // java.util.Comparator
            public int compare(WavePoint wavePoint, WavePoint wavePoint2) {
                return Integer.compare(wavePoint.mPosition, wavePoint2.mPosition);
            }
        });
        double[] dArr = new double[size];
        double[][] dArr2 = (double[][]) Array.newInstance((Class<?>) Double.TYPE, size, 2);
        this.mCycleOscillator = new CycleOscillator(this.mWaveShape, this.mVariesBy, size);
        Iterator<WavePoint> it = this.mWavePoints.iterator();
        int i = 0;
        while (it.hasNext()) {
            WavePoint next = it.next();
            dArr[i] = next.mPeriod * 0.01d;
            dArr2[i][0] = next.mValue;
            dArr2[i][1] = next.mOffset;
            this.mCycleOscillator.setPoint(i, next.mPosition, next.mPeriod, next.mOffset, next.mValue);
            i++;
        }
        this.mCycleOscillator.setup(f);
        this.mCurveFit = CurveFit.get(0, dArr, dArr2);
    }

    /* loaded from: classes.dex */
    static class ElevationSet extends KeyCycleOscillator {
        ElevationSet() {
        }

        @Override // androidx.constraintlayout.motion.widget.KeyCycleOscillator
        public void setProperty(View view, float f) {
            view.setElevation(get(f));
        }
    }

    /* loaded from: classes.dex */
    static class AlphaSet extends KeyCycleOscillator {
        AlphaSet() {
        }

        @Override // androidx.constraintlayout.motion.widget.KeyCycleOscillator
        public void setProperty(View view, float f) {
            view.setAlpha(get(f));
        }
    }

    /* loaded from: classes.dex */
    static class RotationSet extends KeyCycleOscillator {
        RotationSet() {
        }

        @Override // androidx.constraintlayout.motion.widget.KeyCycleOscillator
        public void setProperty(View view, float f) {
            view.setRotation(get(f));
        }
    }

    /* loaded from: classes.dex */
    static class RotationXset extends KeyCycleOscillator {
        RotationXset() {
        }

        @Override // androidx.constraintlayout.motion.widget.KeyCycleOscillator
        public void setProperty(View view, float f) {
            view.setRotationX(get(f));
        }
    }

    /* loaded from: classes.dex */
    static class RotationYset extends KeyCycleOscillator {
        RotationYset() {
        }

        @Override // androidx.constraintlayout.motion.widget.KeyCycleOscillator
        public void setProperty(View view, float f) {
            view.setRotationY(get(f));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public static class PathRotateSet extends KeyCycleOscillator {
        @Override // androidx.constraintlayout.motion.widget.KeyCycleOscillator
        public void setProperty(View view, float f) {
        }

        PathRotateSet() {
        }

        public void setPathRotate(View view, float f, double d, double d2) {
            view.setRotation(get(f) + ((float) Math.toDegrees(Math.atan2(d2, d))));
        }
    }

    /* loaded from: classes.dex */
    static class ScaleXset extends KeyCycleOscillator {
        ScaleXset() {
        }

        @Override // androidx.constraintlayout.motion.widget.KeyCycleOscillator
        public void setProperty(View view, float f) {
            view.setScaleX(get(f));
        }
    }

    /* loaded from: classes.dex */
    static class ScaleYset extends KeyCycleOscillator {
        ScaleYset() {
        }

        @Override // androidx.constraintlayout.motion.widget.KeyCycleOscillator
        public void setProperty(View view, float f) {
            view.setScaleY(get(f));
        }
    }

    /* loaded from: classes.dex */
    static class TranslationXset extends KeyCycleOscillator {
        TranslationXset() {
        }

        @Override // androidx.constraintlayout.motion.widget.KeyCycleOscillator
        public void setProperty(View view, float f) {
            view.setTranslationX(get(f));
        }
    }

    /* loaded from: classes.dex */
    static class TranslationYset extends KeyCycleOscillator {
        TranslationYset() {
        }

        @Override // androidx.constraintlayout.motion.widget.KeyCycleOscillator
        public void setProperty(View view, float f) {
            view.setTranslationY(get(f));
        }
    }

    /* loaded from: classes.dex */
    static class TranslationZset extends KeyCycleOscillator {
        TranslationZset() {
        }

        @Override // androidx.constraintlayout.motion.widget.KeyCycleOscillator
        public void setProperty(View view, float f) {
            view.setTranslationZ(get(f));
        }
    }

    /* loaded from: classes.dex */
    static class CustomSet extends KeyCycleOscillator {
        float[] value = new float[1];

        CustomSet() {
        }

        @Override // androidx.constraintlayout.motion.widget.KeyCycleOscillator
        public void setProperty(View view, float f) {
            this.value[0] = get(f);
            this.mCustom.setInterpolatedValue(view, this.value);
        }
    }

    /* loaded from: classes.dex */
    static class ProgressSet extends KeyCycleOscillator {
        boolean mNoMethod = false;

        ProgressSet() {
        }

        @Override // androidx.constraintlayout.motion.widget.KeyCycleOscillator
        public void setProperty(View view, float f) {
            Method method;
            if (view instanceof MotionLayout) {
                ((MotionLayout) view).setProgress(get(f));
                return;
            }
            if (this.mNoMethod) {
                return;
            }
            try {
                method = view.getClass().getMethod("setProgress", Float.TYPE);
            } catch (NoSuchMethodException unused) {
                this.mNoMethod = true;
                method = null;
            }
            if (method != null) {
                try {
                    method.invoke(view, Float.valueOf(get(f)));
                } catch (IllegalAccessException e) {
                    Log.e(KeyCycleOscillator.TAG, "unable to setProgress", e);
                } catch (InvocationTargetException e2) {
                    Log.e(KeyCycleOscillator.TAG, "unable to setProgress", e2);
                }
            }
        }
    }

    /* loaded from: classes.dex */
    private static class IntDoubleSort {
        private IntDoubleSort() {
        }

        static void sort(int[] iArr, float[] fArr, int i, int i2) {
            int[] iArr2 = new int[iArr.length + 10];
            iArr2[0] = i2;
            iArr2[1] = i;
            int i3 = 2;
            while (i3 > 0) {
                int i4 = iArr2[i3 - 1];
                int i5 = i3 - 2;
                int i6 = iArr2[i5];
                if (i4 < i6) {
                    int partition = partition(iArr, fArr, i4, i6);
                    iArr2[i5] = partition - 1;
                    iArr2[i3 - 1] = i4;
                    int i7 = i3 + 1;
                    iArr2[i3] = i6;
                    i3 += 2;
                    iArr2[i7] = partition + 1;
                } else {
                    i3 = i5;
                }
            }
        }

        private static int partition(int[] iArr, float[] fArr, int i, int i2) {
            int i3 = iArr[i2];
            int i4 = i;
            while (i < i2) {
                if (iArr[i] <= i3) {
                    swap(iArr, fArr, i4, i);
                    i4++;
                }
                i++;
            }
            swap(iArr, fArr, i4, i2);
            return i4;
        }

        private static void swap(int[] iArr, float[] fArr, int i, int i2) {
            int i3 = iArr[i];
            iArr[i] = iArr[i2];
            iArr[i2] = i3;
            float f = fArr[i];
            fArr[i] = fArr[i2];
            fArr[i2] = f;
        }
    }

    /* loaded from: classes.dex */
    private static class IntFloatFloatSort {
        private IntFloatFloatSort() {
        }

        static void sort(int[] iArr, float[] fArr, float[] fArr2, int i, int i2) {
            int[] iArr2 = new int[iArr.length + 10];
            iArr2[0] = i2;
            iArr2[1] = i;
            int i3 = 2;
            while (i3 > 0) {
                int i4 = iArr2[i3 - 1];
                int i5 = i3 - 2;
                int i6 = iArr2[i5];
                if (i4 < i6) {
                    int partition = partition(iArr, fArr, fArr2, i4, i6);
                    iArr2[i5] = partition - 1;
                    iArr2[i3 - 1] = i4;
                    int i7 = i3 + 1;
                    iArr2[i3] = i6;
                    i3 += 2;
                    iArr2[i7] = partition + 1;
                } else {
                    i3 = i5;
                }
            }
        }

        private static int partition(int[] iArr, float[] fArr, float[] fArr2, int i, int i2) {
            int i3 = iArr[i2];
            int i4 = i;
            while (i < i2) {
                if (iArr[i] <= i3) {
                    swap(iArr, fArr, fArr2, i4, i);
                    i4++;
                }
                i++;
            }
            swap(iArr, fArr, fArr2, i4, i2);
            return i4;
        }

        private static void swap(int[] iArr, float[] fArr, float[] fArr2, int i, int i2) {
            int i3 = iArr[i];
            iArr[i] = iArr[i2];
            iArr[i2] = i3;
            float f = fArr[i];
            fArr[i] = fArr[i2];
            fArr[i2] = f;
            float f2 = fArr2[i];
            fArr2[i] = fArr2[i2];
            fArr2[i2] = f2;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public static class CycleOscillator {
        private static final String TAG = "CycleOscillator";
        static final int UNSET = -1;
        CurveFit mCurveFit;
        float[] mOffset;
        float mPathLength;
        float[] mPeriod;
        double[] mPosition;
        float[] mScale;
        double[] mSplineSlopeCache;
        double[] mSplineValueCache;
        float[] mValues;
        private final int mVariesBy;
        int mWaveShape;
        Oscillator mOscillator = new Oscillator();
        public HashMap<String, ConstraintAttribute> mCustomConstraints = new HashMap<>();

        CycleOscillator(int i, int i2, int i3) {
            this.mWaveShape = i;
            this.mVariesBy = i2;
            this.mOscillator.setType(i);
            this.mValues = new float[i3];
            this.mPosition = new double[i3];
            this.mPeriod = new float[i3];
            this.mOffset = new float[i3];
            this.mScale = new float[i3];
        }

        public double getValues(float f) {
            CurveFit curveFit = this.mCurveFit;
            if (curveFit != null) {
                curveFit.getPos(f, this.mSplineValueCache);
            } else {
                double[] dArr = this.mSplineValueCache;
                dArr[0] = this.mOffset[0];
                dArr[1] = this.mValues[0];
            }
            return this.mSplineValueCache[0] + (this.mOscillator.getValue(f) * this.mSplineValueCache[1]);
        }

        public double getSlope(float f) {
            CurveFit curveFit = this.mCurveFit;
            if (curveFit != null) {
                double d = f;
                curveFit.getSlope(d, this.mSplineSlopeCache);
                this.mCurveFit.getPos(d, this.mSplineValueCache);
            } else {
                double[] dArr = this.mSplineSlopeCache;
                dArr[0] = 0.0d;
                dArr[1] = 0.0d;
            }
            double d2 = f;
            double value = this.mOscillator.getValue(d2);
            double slope = this.mOscillator.getSlope(d2);
            double[] dArr2 = this.mSplineSlopeCache;
            return dArr2[0] + (value * dArr2[1]) + (slope * this.mSplineValueCache[1]);
        }

        private ConstraintAttribute get(String str, ConstraintAttribute.AttributeType attributeType) {
            if (this.mCustomConstraints.containsKey(str)) {
                ConstraintAttribute constraintAttribute = this.mCustomConstraints.get(str);
                if (constraintAttribute.getType() == attributeType) {
                    return constraintAttribute;
                }
                throw new IllegalArgumentException("ConstraintAttribute is already a " + constraintAttribute.getType().name());
            }
            ConstraintAttribute constraintAttribute2 = new ConstraintAttribute(str, attributeType);
            this.mCustomConstraints.put(str, constraintAttribute2);
            return constraintAttribute2;
        }

        public void setPoint(int i, int i2, float f, float f2, float f3) {
            this.mPosition[i] = i2 / 100.0d;
            this.mPeriod[i] = f;
            this.mOffset[i] = f2;
            this.mValues[i] = f3;
        }

        public void setup(float f) {
            this.mPathLength = f;
            double[][] dArr = (double[][]) Array.newInstance((Class<?>) Double.TYPE, this.mPosition.length, 2);
            float[] fArr = this.mValues;
            this.mSplineValueCache = new double[fArr.length + 1];
            this.mSplineSlopeCache = new double[fArr.length + 1];
            if (this.mPosition[0] > BuildConfig.SENTRY_SAMPLE_RATE) {
                this.mOscillator.addPoint(BuildConfig.SENTRY_SAMPLE_RATE, this.mPeriod[0]);
            }
            double[] dArr2 = this.mPosition;
            int length = dArr2.length - 1;
            if (dArr2[length] < 1.0d) {
                this.mOscillator.addPoint(1.0d, this.mPeriod[length]);
            }
            for (int i = 0; i < dArr.length; i++) {
                dArr[i][0] = this.mOffset[i];
                int i2 = 0;
                while (true) {
                    if (i2 < this.mValues.length) {
                        dArr[i2][1] = r4[i2];
                        i2++;
                    }
                }
                this.mOscillator.addPoint(this.mPosition[i], this.mPeriod[i]);
            }
            this.mOscillator.normalize();
            double[] dArr3 = this.mPosition;
            if (dArr3.length > 1) {
                this.mCurveFit = CurveFit.get(0, dArr3, dArr);
            } else {
                this.mCurveFit = null;
            }
        }
    }
}
