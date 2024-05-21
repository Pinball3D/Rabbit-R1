package com.google.android.material.transition;

/* loaded from: classes2.dex */
class FadeModeResult {
    final int endAlpha;
    final boolean endOnTop;
    final int startAlpha;

    /* JADX INFO: Access modifiers changed from: package-private */
    public static FadeModeResult startOnTop(int i, int i2) {
        return new FadeModeResult(i, i2, false);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static FadeModeResult endOnTop(int i, int i2) {
        return new FadeModeResult(i, i2, true);
    }

    private FadeModeResult(int i, int i2, boolean z) {
        this.startAlpha = i;
        this.endAlpha = i2;
        this.endOnTop = z;
    }
}
