package androidx.interpolator.view.animation;

import android.view.animation.Interpolator;

/* loaded from: classes2.dex */
abstract class LookupTableInterpolator implements Interpolator {
    private final float mStepSize;
    private final float[] mValues;

    /* JADX INFO: Access modifiers changed from: protected */
    public LookupTableInterpolator(float[] fArr) {
        this.mValues = fArr;
        this.mStepSize = 1.0f / (fArr.length - 1);
    }

    @Override // android.animation.TimeInterpolator
    public float getInterpolation(float f) {
        if (f >= 1.0f) {
            return 1.0f;
        }
        if (f <= 0.0f) {
            return 0.0f;
        }
        float[] fArr = this.mValues;
        int min = Math.min((int) ((fArr.length - 1) * f), fArr.length - 2);
        float f2 = this.mStepSize;
        float f3 = (f - (min * f2)) / f2;
        float[] fArr2 = this.mValues;
        float f4 = fArr2[min];
        return f4 + (f3 * (fArr2[min + 1] - f4));
    }
}
