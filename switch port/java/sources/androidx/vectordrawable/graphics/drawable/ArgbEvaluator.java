package androidx.vectordrawable.graphics.drawable;

import android.animation.TypeEvaluator;

/* loaded from: classes2.dex */
public class ArgbEvaluator implements TypeEvaluator {
    private static final ArgbEvaluator sInstance = new ArgbEvaluator();

    public static ArgbEvaluator getInstance() {
        return sInstance;
    }

    @Override // android.animation.TypeEvaluator
    public Object evaluate(float f, Object obj, Object obj2) {
        int intValue = ((Integer) obj).intValue();
        float f2 = ((intValue >> 24) & 255) / 255.0f;
        int intValue2 = ((Integer) obj2).intValue();
        float pow = (float) Math.pow(((intValue >> 16) & 255) / 255.0f, 2.2d);
        float pow2 = (float) Math.pow(((intValue >> 8) & 255) / 255.0f, 2.2d);
        float pow3 = (float) Math.pow((intValue & 255) / 255.0f, 2.2d);
        float pow4 = (float) Math.pow(((intValue2 >> 16) & 255) / 255.0f, 2.2d);
        float f3 = f2 + (((((intValue2 >> 24) & 255) / 255.0f) - f2) * f);
        float pow5 = pow2 + ((((float) Math.pow(((intValue2 >> 8) & 255) / 255.0f, 2.2d)) - pow2) * f);
        float pow6 = pow3 + (f * (((float) Math.pow((intValue2 & 255) / 255.0f, 2.2d)) - pow3));
        float pow7 = ((float) Math.pow(pow + ((pow4 - pow) * f), 0.45454545454545453d)) * 255.0f;
        float pow8 = ((float) Math.pow(pow5, 0.45454545454545453d)) * 255.0f;
        return Integer.valueOf(Math.round(((float) Math.pow(pow6, 0.45454545454545453d)) * 255.0f) | (Math.round(pow7) << 16) | (Math.round(f3 * 255.0f) << 24) | (Math.round(pow8) << 8));
    }
}
