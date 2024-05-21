package com.google.zxing.common.detector;

import com.google.zxing.NotFoundException;
import com.google.zxing.ResultPoint;
import com.google.zxing.common.BitMatrix;

@Deprecated
/* loaded from: classes3.dex */
public final class MonochromeRectangleDetector {
    private static final int MAX_MODULES = 32;
    private final BitMatrix image;

    public MonochromeRectangleDetector(BitMatrix bitMatrix) {
        this.image = bitMatrix;
    }

    public ResultPoint[] detect() throws NotFoundException {
        int height = this.image.getHeight();
        int width = this.image.getWidth();
        int i = height / 2;
        int i2 = width / 2;
        int max = Math.max(1, height / 256);
        int max2 = Math.max(1, width / 256);
        int i3 = -max;
        int i4 = i2 / 2;
        int y = ((int) findCornerFromCenter(i2, 0, 0, width, i, i3, 0, height, i4).getY()) - 1;
        int i5 = i / 2;
        ResultPoint findCornerFromCenter = findCornerFromCenter(i2, -max2, 0, width, i, 0, y, height, i5);
        int x = ((int) findCornerFromCenter.getX()) - 1;
        ResultPoint findCornerFromCenter2 = findCornerFromCenter(i2, max2, x, width, i, 0, y, height, i5);
        int x2 = ((int) findCornerFromCenter2.getX()) + 1;
        ResultPoint findCornerFromCenter3 = findCornerFromCenter(i2, 0, x, x2, i, max, y, height, i4);
        return new ResultPoint[]{findCornerFromCenter(i2, 0, x, x2, i, i3, y, ((int) findCornerFromCenter3.getY()) + 1, i2 / 4), findCornerFromCenter, findCornerFromCenter2, findCornerFromCenter3};
    }

    private ResultPoint findCornerFromCenter(int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8, int i9) throws NotFoundException {
        int[] blackWhiteRange;
        int[] iArr = null;
        int i10 = i;
        int i11 = i5;
        while (i11 < i8 && i11 >= i7 && i10 < i4 && i10 >= i3) {
            if (i2 == 0) {
                blackWhiteRange = blackWhiteRange(i11, i9, i3, i4, true);
            } else {
                blackWhiteRange = blackWhiteRange(i10, i9, i7, i8, false);
            }
            if (blackWhiteRange == null) {
                if (iArr == null) {
                    throw NotFoundException.getNotFoundInstance();
                }
                if (i2 == 0) {
                    int i12 = i11 - i6;
                    if (iArr[0] < i) {
                        if (iArr[1] > i) {
                            return new ResultPoint(iArr[i6 > 0 ? (char) 0 : (char) 1], i12);
                        }
                        return new ResultPoint(iArr[0], i12);
                    }
                    return new ResultPoint(iArr[1], i12);
                }
                int i13 = i10 - i2;
                if (iArr[0] < i5) {
                    if (iArr[1] > i5) {
                        return new ResultPoint(i13, iArr[i2 < 0 ? (char) 0 : (char) 1]);
                    }
                    return new ResultPoint(i13, iArr[0]);
                }
                return new ResultPoint(i13, iArr[1]);
            }
            i11 += i6;
            i10 += i2;
            iArr = blackWhiteRange;
        }
        throw NotFoundException.getNotFoundInstance();
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x0020  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x0057  */
    /* JADX WARN: Removed duplicated region for block: B:67:0x0068 A[EDGE_INSN: B:67:0x0068->B:47:0x0068 BREAK  A[LOOP:3: B:39:0x0053->B:61:0x0053], SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:81:0x0031 A[EDGE_INSN: B:81:0x0031->B:21:0x0031 BREAK  A[LOOP:1: B:13:0x001c->B:75:0x001c], SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private int[] blackWhiteRange(int r5, int r6, int r7, int r8, boolean r9) {
        /*
            r4 = this;
            int r0 = r7 + r8
            int r0 = r0 / 2
            r1 = r0
        L5:
            if (r1 < r7) goto L3a
            com.google.zxing.common.BitMatrix r2 = r4.image
            if (r9 == 0) goto L12
            boolean r2 = r2.get(r1, r5)
            if (r2 == 0) goto L1b
            goto L18
        L12:
            boolean r2 = r2.get(r5, r1)
            if (r2 == 0) goto L1b
        L18:
            int r1 = r1 + (-1)
            goto L5
        L1b:
            r2 = r1
        L1c:
            int r2 = r2 + (-1)
            if (r2 < r7) goto L31
            com.google.zxing.common.BitMatrix r3 = r4.image
            if (r9 == 0) goto L2b
            boolean r3 = r3.get(r2, r5)
            if (r3 == 0) goto L1c
            goto L31
        L2b:
            boolean r3 = r3.get(r5, r2)
            if (r3 == 0) goto L1c
        L31:
            int r3 = r1 - r2
            if (r2 < r7) goto L3a
            if (r3 <= r6) goto L38
            goto L3a
        L38:
            r1 = r2
            goto L5
        L3a:
            int r1 = r1 + 1
        L3c:
            if (r0 >= r8) goto L71
            com.google.zxing.common.BitMatrix r7 = r4.image
            if (r9 == 0) goto L49
            boolean r7 = r7.get(r0, r5)
            if (r7 == 0) goto L52
            goto L4f
        L49:
            boolean r7 = r7.get(r5, r0)
            if (r7 == 0) goto L52
        L4f:
            int r0 = r0 + 1
            goto L3c
        L52:
            r7 = r0
        L53:
            int r7 = r7 + 1
            if (r7 >= r8) goto L68
            com.google.zxing.common.BitMatrix r2 = r4.image
            if (r9 == 0) goto L62
            boolean r2 = r2.get(r7, r5)
            if (r2 == 0) goto L53
            goto L68
        L62:
            boolean r2 = r2.get(r5, r7)
            if (r2 == 0) goto L53
        L68:
            int r2 = r7 - r0
            if (r7 >= r8) goto L71
            if (r2 <= r6) goto L6f
            goto L71
        L6f:
            r0 = r7
            goto L3c
        L71:
            int r0 = r0 + (-1)
            if (r0 <= r1) goto L7a
            int[] r4 = new int[]{r1, r0}
            return r4
        L7a:
            r4 = 0
            return r4
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.zxing.common.detector.MonochromeRectangleDetector.blackWhiteRange(int, int, int, int, boolean):int[]");
    }
}
