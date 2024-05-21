package com.google.zxing.pdf417.decoder;

import com.google.zxing.common.detector.MathUtils;
import com.google.zxing.pdf417.PDF417Common;
import java.lang.reflect.Array;

/* loaded from: classes3.dex */
final class PDF417CodewordDecoder {
    private static final float[][] RATIOS_TABLE = (float[][]) Array.newInstance((Class<?>) Float.TYPE, PDF417Common.SYMBOL_TABLE.length, 8);

    static {
        int i;
        for (int i2 = 0; i2 < PDF417Common.SYMBOL_TABLE.length; i2++) {
            int i3 = PDF417Common.SYMBOL_TABLE[i2];
            int i4 = i3 & 1;
            int i5 = 0;
            while (i5 < 8) {
                float f = 0.0f;
                while (true) {
                    i = i3 & 1;
                    if (i == i4) {
                        f += 1.0f;
                        i3 >>= 1;
                    }
                }
                RATIOS_TABLE[i2][7 - i5] = f / 17.0f;
                i5++;
                i4 = i;
            }
        }
    }

    private PDF417CodewordDecoder() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int getDecodedValue(int[] iArr) {
        int decodedCodewordValue = getDecodedCodewordValue(sampleBitCounts(iArr));
        return decodedCodewordValue != -1 ? decodedCodewordValue : getClosestDecodedValue(iArr);
    }

    private static int[] sampleBitCounts(int[] iArr) {
        float sum = MathUtils.sum(iArr);
        int[] iArr2 = new int[8];
        int i = 0;
        int i2 = 0;
        for (int i3 = 0; i3 < 17; i3++) {
            float f = (sum / 34.0f) + ((i3 * sum) / 17.0f);
            int i4 = iArr[i2];
            if (i + i4 <= f) {
                i += i4;
                i2++;
            }
            iArr2[i2] = iArr2[i2] + 1;
        }
        return iArr2;
    }

    private static int getDecodedCodewordValue(int[] iArr) {
        int bitValue = getBitValue(iArr);
        if (PDF417Common.getCodeword(bitValue) == -1) {
            return -1;
        }
        return bitValue;
    }

    private static int getBitValue(int[] iArr) {
        long j = 0;
        for (int i = 0; i < iArr.length; i++) {
            for (int i2 = 0; i2 < iArr[i]; i2++) {
                int i3 = 1;
                long j2 = j << 1;
                if (i % 2 != 0) {
                    i3 = 0;
                }
                j = j2 | i3;
            }
        }
        return (int) j;
    }

    private static int getClosestDecodedValue(int[] iArr) {
        int sum = MathUtils.sum(iArr);
        float[] fArr = new float[8];
        if (sum > 1) {
            for (int i = 0; i < 8; i++) {
                fArr[i] = iArr[i] / sum;
            }
        }
        float f = Float.MAX_VALUE;
        int i2 = -1;
        int i3 = 0;
        while (true) {
            float[][] fArr2 = RATIOS_TABLE;
            if (i3 >= fArr2.length) {
                return i2;
            }
            float[] fArr3 = fArr2[i3];
            float f2 = 0.0f;
            for (int i4 = 0; i4 < 8; i4++) {
                float f3 = fArr3[i4] - fArr[i4];
                f2 += f3 * f3;
                if (f2 >= f) {
                    break;
                }
            }
            if (f2 < f) {
                i2 = PDF417Common.SYMBOL_TABLE[i3];
                f = f2;
            }
            i3++;
        }
    }
}
