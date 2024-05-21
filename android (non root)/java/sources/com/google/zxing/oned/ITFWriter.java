package com.google.zxing.oned;

import com.google.zxing.BarcodeFormat;
import java.util.Collection;
import java.util.Collections;

/* loaded from: classes3.dex */
public final class ITFWriter extends OneDimensionalCodeWriter {
    private static final int N = 1;
    private static final int W = 3;
    private static final int[] START_PATTERN = {1, 1, 1, 1};
    private static final int[] END_PATTERN = {3, 1, 1};
    private static final int[][] PATTERNS = {new int[]{1, 1, 3, 3, 1}, new int[]{3, 1, 1, 1, 3}, new int[]{1, 3, 1, 1, 3}, new int[]{3, 3, 1, 1, 1}, new int[]{1, 1, 3, 1, 3}, new int[]{3, 1, 3, 1, 1}, new int[]{1, 3, 3, 1, 1}, new int[]{1, 1, 1, 3, 3}, new int[]{3, 1, 1, 3, 1}, new int[]{1, 3, 1, 3, 1}};

    @Override // com.google.zxing.oned.OneDimensionalCodeWriter
    protected Collection<BarcodeFormat> getSupportedWriteFormats() {
        return Collections.singleton(BarcodeFormat.ITF);
    }

    @Override // com.google.zxing.oned.OneDimensionalCodeWriter
    public boolean[] encode(String str) {
        int length = str.length();
        if (length % 2 != 0) {
            throw new IllegalArgumentException("The length of the input should be even");
        }
        if (length > 80) {
            throw new IllegalArgumentException("Requested contents should be less than 80 digits long, but got ".concat(String.valueOf(length)));
        }
        checkNumeric(str);
        boolean[] zArr = new boolean[(length * 9) + 9];
        int appendPattern = appendPattern(zArr, 0, START_PATTERN, true);
        for (int i = 0; i < length; i += 2) {
            int digit = Character.digit(str.charAt(i), 10);
            int digit2 = Character.digit(str.charAt(i + 1), 10);
            int[] iArr = new int[10];
            for (int i2 = 0; i2 < 5; i2++) {
                int i3 = i2 * 2;
                int[][] iArr2 = PATTERNS;
                iArr[i3] = iArr2[digit][i2];
                iArr[i3 + 1] = iArr2[digit2][i2];
            }
            appendPattern += appendPattern(zArr, appendPattern, iArr, true);
        }
        appendPattern(zArr, appendPattern, END_PATTERN, true);
        return zArr;
    }
}
