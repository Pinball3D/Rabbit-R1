package com.google.android.material.internal;

/* loaded from: classes2.dex */
final class FadeThroughUtils {
    static final float THRESHOLD_ALPHA = 0.5f;

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void calculateFadeOutAndInAlphas(float f, float[] fArr) {
        if (f <= 0.5f) {
            fArr[0] = 1.0f - (f * 2.0f);
            fArr[1] = 0.0f;
        } else {
            fArr[0] = 0.0f;
            fArr[1] = (f * 2.0f) - 1.0f;
        }
    }

    private FadeThroughUtils() {
    }
}
