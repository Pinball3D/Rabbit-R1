package com.google.android.material.carousel;

import android.view.View;

/* loaded from: classes2.dex */
public abstract class CarouselStrategy {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static float getChildMaskPercentage(float f, float f2, float f3) {
        return 1.0f - ((f - f3) / (f2 - f3));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean isContained() {
        return true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract KeylineState onFirstChildMeasuredWithMargins(Carousel carousel, View view);

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean shouldRefreshKeylineState(Carousel carousel, int i) {
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int[] doubleCounts(int[] iArr) {
        int length = iArr.length;
        int[] iArr2 = new int[length];
        for (int i = 0; i < length; i++) {
            iArr2[i] = iArr[i] * 2;
        }
        return iArr2;
    }
}
