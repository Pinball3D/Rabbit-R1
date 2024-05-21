package com.google.android.material.sidesheet;

/* loaded from: classes2.dex */
final class SheetUtils {
    private SheetUtils() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean isSwipeMostlyHorizontal(float f, float f2) {
        return Math.abs(f) > Math.abs(f2);
    }
}
