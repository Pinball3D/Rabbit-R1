package com.google.android.material.carousel;

import androidx.core.math.MathUtils;

/* loaded from: classes2.dex */
final class Arrangement {
    private static final float MEDIUM_ITEM_FLEX_PERCENTAGE = 0.1f;
    final float cost;
    final int largeCount;
    float largeSize;
    int mediumCount;
    float mediumSize;
    final int priority;
    int smallCount;
    float smallSize;

    private float calculateLargeSize(float f, int i, float f2, int i2, int i3) {
        if (i <= 0) {
            f2 = 0.0f;
        }
        float f3 = i;
        float f4 = i2 / 2.0f;
        return (f - ((f3 + f4) * f2)) / (i3 + f4);
    }

    private float getSpace() {
        return (this.largeSize * this.largeCount) + (this.mediumSize * this.mediumCount) + (this.smallSize * this.smallCount);
    }

    private boolean isValid() {
        int i = this.largeCount;
        if (i <= 0 || this.smallCount <= 0 || this.mediumCount <= 0) {
            return i <= 0 || this.smallCount <= 0 || this.largeSize > this.smallSize;
        }
        float f = this.largeSize;
        float f2 = this.mediumSize;
        return f > f2 && f2 > this.smallSize;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int getItemCount() {
        return this.smallCount + this.mediumCount + this.largeCount;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Arrangement(int i, float f, float f2, float f3, int i2, float f4, int i3, float f5, int i4, float f6) {
        this.priority = i;
        this.smallSize = MathUtils.clamp(f, f2, f3);
        this.smallCount = i2;
        this.mediumSize = f4;
        this.mediumCount = i3;
        this.largeSize = f5;
        this.largeCount = i4;
        fit(f6, f2, f3, f5);
        this.cost = cost(f5);
    }

    public String toString() {
        return "Arrangement [priority=" + this.priority + ", smallCount=" + this.smallCount + ", smallSize=" + this.smallSize + ", mediumCount=" + this.mediumCount + ", mediumSize=" + this.mediumSize + ", largeCount=" + this.largeCount + ", largeSize=" + this.largeSize + ", cost=" + this.cost + "]";
    }

    private void fit(float f, float f2, float f3, float f4) {
        float space = f - getSpace();
        int i = this.smallCount;
        if (i > 0 && space > 0.0f) {
            float f5 = this.smallSize;
            this.smallSize = f5 + Math.min(space / i, f3 - f5);
        } else if (i > 0 && space < 0.0f) {
            float f6 = this.smallSize;
            this.smallSize = f6 + Math.max(space / i, f2 - f6);
        }
        int i2 = this.smallCount;
        float f7 = i2 > 0 ? this.smallSize : 0.0f;
        this.smallSize = f7;
        float calculateLargeSize = calculateLargeSize(f, i2, f7, this.mediumCount, this.largeCount);
        this.largeSize = calculateLargeSize;
        float f8 = (this.smallSize + calculateLargeSize) / 2.0f;
        this.mediumSize = f8;
        int i3 = this.mediumCount;
        if (i3 <= 0 || calculateLargeSize == f4) {
            return;
        }
        float f9 = (f4 - calculateLargeSize) * this.largeCount;
        float min = Math.min(Math.abs(f9), f8 * 0.1f * i3);
        if (f9 > 0.0f) {
            this.mediumSize -= min / this.mediumCount;
            this.largeSize += min / this.largeCount;
        } else {
            this.mediumSize += min / this.mediumCount;
            this.largeSize -= min / this.largeCount;
        }
    }

    private float cost(float f) {
        if (isValid()) {
            return Math.abs(f - this.largeSize) * this.priority;
        }
        return Float.MAX_VALUE;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static Arrangement findLowestCostArrangement(float f, float f2, float f3, float f4, int[] iArr, float f5, int[] iArr2, float f6, int[] iArr3) {
        Arrangement arrangement = null;
        int i = 1;
        for (int i2 : iArr3) {
            int length = iArr2.length;
            int i3 = 0;
            while (i3 < length) {
                int i4 = iArr2[i3];
                int length2 = iArr.length;
                int i5 = 0;
                while (i5 < length2) {
                    int i6 = i5;
                    int i7 = length2;
                    int i8 = i3;
                    int i9 = length;
                    Arrangement arrangement2 = new Arrangement(i, f2, f3, f4, iArr[i5], f5, i4, f6, i2, f);
                    if (arrangement == null || arrangement2.cost < arrangement.cost) {
                        if (arrangement2.cost == 0.0f) {
                            return arrangement2;
                        }
                        arrangement = arrangement2;
                    }
                    i++;
                    i5 = i6 + 1;
                    length2 = i7;
                    i3 = i8;
                    length = i9;
                }
                i3++;
            }
        }
        return arrangement;
    }
}
