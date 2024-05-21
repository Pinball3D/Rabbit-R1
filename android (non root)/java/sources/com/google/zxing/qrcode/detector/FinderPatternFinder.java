package com.google.zxing.qrcode.detector;

import com.google.zxing.DecodeHintType;
import com.google.zxing.NotFoundException;
import com.google.zxing.ResultPoint;
import com.google.zxing.ResultPointCallback;
import com.google.zxing.common.BitMatrix;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* loaded from: classes3.dex */
public class FinderPatternFinder {
    private static final int CENTER_QUORUM = 2;
    protected static final int MAX_MODULES = 97;
    protected static final int MIN_SKIP = 3;
    private static final EstimatedModuleComparator moduleComparator = new EstimatedModuleComparator();
    private final int[] crossCheckStateCount;
    private boolean hasSkipped;
    private final BitMatrix image;
    private final List<FinderPattern> possibleCenters;
    private final ResultPointCallback resultPointCallback;

    /* JADX INFO: Access modifiers changed from: protected */
    public final BitMatrix getImage() {
        return this.image;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final List<FinderPattern> getPossibleCenters() {
        return this.possibleCenters;
    }

    public FinderPatternFinder(BitMatrix bitMatrix) {
        this(bitMatrix, null);
    }

    public FinderPatternFinder(BitMatrix bitMatrix, ResultPointCallback resultPointCallback) {
        this.image = bitMatrix;
        this.possibleCenters = new ArrayList();
        this.crossCheckStateCount = new int[5];
        this.resultPointCallback = resultPointCallback;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final FinderPatternInfo find(Map<DecodeHintType, ?> map) throws NotFoundException {
        boolean z = map != null && map.containsKey(DecodeHintType.TRY_HARDER);
        int height = this.image.getHeight();
        int width = this.image.getWidth();
        int i = (height * 3) / 388;
        if (i < 3 || z) {
            i = 3;
        }
        int[] iArr = new int[5];
        int i2 = i - 1;
        boolean z2 = false;
        while (i2 < height && !z2) {
            doClearCounts(iArr);
            int i3 = 0;
            int i4 = 0;
            while (i3 < width) {
                if (this.image.get(i3, i2)) {
                    if ((i4 & 1) == 1) {
                        i4++;
                    }
                    iArr[i4] = iArr[i4] + 1;
                } else if ((i4 & 1) != 0) {
                    iArr[i4] = iArr[i4] + 1;
                } else if (i4 == 4) {
                    if (foundPatternCross(iArr)) {
                        if (!handlePossibleCenter(iArr, i2, i3)) {
                            doShiftCounts2(iArr);
                        } else {
                            if (this.hasSkipped) {
                                z2 = haveMultiplyConfirmedCenters();
                            } else {
                                int findRowSkip = findRowSkip();
                                int i5 = iArr[2];
                                if (findRowSkip > i5) {
                                    i2 += (findRowSkip - i5) - 2;
                                    i3 = width - 1;
                                }
                            }
                            doClearCounts(iArr);
                            i = 2;
                            i4 = 0;
                        }
                    } else {
                        doShiftCounts2(iArr);
                    }
                    i4 = 3;
                } else {
                    i4++;
                    iArr[i4] = iArr[i4] + 1;
                }
                i3++;
            }
            if (foundPatternCross(iArr) && handlePossibleCenter(iArr, i2, width)) {
                i = iArr[0];
                if (this.hasSkipped) {
                    z2 = haveMultiplyConfirmedCenters();
                }
            }
            i2 += i;
        }
        FinderPattern[] selectBestPatterns = selectBestPatterns();
        ResultPoint.orderBestPatterns(selectBestPatterns);
        return new FinderPatternInfo(selectBestPatterns);
    }

    private static float centerFromEnd(int[] iArr, int i) {
        return ((i - iArr[4]) - iArr[3]) - (iArr[2] / 2.0f);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static boolean foundPatternCross(int[] iArr) {
        int i = 0;
        for (int i2 = 0; i2 < 5; i2++) {
            int i3 = iArr[i2];
            if (i3 == 0) {
                return false;
            }
            i += i3;
        }
        if (i < 7) {
            return false;
        }
        float f = i / 7.0f;
        float f2 = f / 2.0f;
        return Math.abs(f - ((float) iArr[0])) < f2 && Math.abs(f - ((float) iArr[1])) < f2 && Math.abs((f * 3.0f) - ((float) iArr[2])) < 3.0f * f2 && Math.abs(f - ((float) iArr[3])) < f2 && Math.abs(f - ((float) iArr[4])) < f2;
    }

    protected static boolean foundPatternDiagonal(int[] iArr) {
        int i = 0;
        for (int i2 = 0; i2 < 5; i2++) {
            int i3 = iArr[i2];
            if (i3 == 0) {
                return false;
            }
            i += i3;
        }
        if (i < 7) {
            return false;
        }
        float f = i / 7.0f;
        float f2 = f / 1.333f;
        return Math.abs(f - ((float) iArr[0])) < f2 && Math.abs(f - ((float) iArr[1])) < f2 && Math.abs((f * 3.0f) - ((float) iArr[2])) < 3.0f * f2 && Math.abs(f - ((float) iArr[3])) < f2 && Math.abs(f - ((float) iArr[4])) < f2;
    }

    private int[] getCrossCheckStateCount() {
        doClearCounts(this.crossCheckStateCount);
        return this.crossCheckStateCount;
    }

    @Deprecated
    protected final void clearCounts(int[] iArr) {
        doClearCounts(iArr);
    }

    @Deprecated
    protected final void shiftCounts2(int[] iArr) {
        doShiftCounts2(iArr);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static void doClearCounts(int[] iArr) {
        Arrays.fill(iArr, 0);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static void doShiftCounts2(int[] iArr) {
        iArr[0] = iArr[2];
        iArr[1] = iArr[3];
        iArr[2] = iArr[4];
        iArr[3] = 1;
        iArr[4] = 0;
    }

    private boolean crossCheckDiagonal(int i, int i2) {
        int i3;
        int i4;
        int i5;
        int[] crossCheckStateCount = getCrossCheckStateCount();
        int i6 = 0;
        while (i >= i6 && i2 >= i6 && this.image.get(i2 - i6, i - i6)) {
            crossCheckStateCount[2] = crossCheckStateCount[2] + 1;
            i6++;
        }
        if (crossCheckStateCount[2] == 0) {
            return false;
        }
        while (i >= i6 && i2 >= i6 && !this.image.get(i2 - i6, i - i6)) {
            crossCheckStateCount[1] = crossCheckStateCount[1] + 1;
            i6++;
        }
        if (crossCheckStateCount[1] == 0) {
            return false;
        }
        while (i >= i6 && i2 >= i6 && this.image.get(i2 - i6, i - i6)) {
            crossCheckStateCount[0] = crossCheckStateCount[0] + 1;
            i6++;
        }
        if (crossCheckStateCount[0] == 0) {
            return false;
        }
        int height = this.image.getHeight();
        int width = this.image.getWidth();
        int i7 = 1;
        while (true) {
            int i8 = i + i7;
            if (i8 >= height || (i5 = i2 + i7) >= width || !this.image.get(i5, i8)) {
                break;
            }
            crossCheckStateCount[2] = crossCheckStateCount[2] + 1;
            i7++;
        }
        while (true) {
            int i9 = i + i7;
            if (i9 >= height || (i4 = i2 + i7) >= width || this.image.get(i4, i9)) {
                break;
            }
            crossCheckStateCount[3] = crossCheckStateCount[3] + 1;
            i7++;
        }
        if (crossCheckStateCount[3] == 0) {
            return false;
        }
        while (true) {
            int i10 = i + i7;
            if (i10 >= height || (i3 = i2 + i7) >= width || !this.image.get(i3, i10)) {
                break;
            }
            crossCheckStateCount[4] = crossCheckStateCount[4] + 1;
            i7++;
        }
        if (crossCheckStateCount[4] == 0) {
            return false;
        }
        return foundPatternDiagonal(crossCheckStateCount);
    }

    /* JADX WARN: Code restructure failed: missing block: B:51:0x0082, code lost:
    
        if (r9[3] < r12) goto L49;
     */
    /* JADX WARN: Code restructure failed: missing block: B:53:0x0086, code lost:
    
        if (r10 >= r1) goto L81;
     */
    /* JADX WARN: Code restructure failed: missing block: B:55:0x008c, code lost:
    
        if (r0.get(r11, r10) == false) goto L82;
     */
    /* JADX WARN: Code restructure failed: missing block: B:56:0x008e, code lost:
    
        r8 = r9[4];
     */
    /* JADX WARN: Code restructure failed: missing block: B:57:0x0090, code lost:
    
        if (r8 >= r12) goto L80;
     */
    /* JADX WARN: Code restructure failed: missing block: B:58:0x0092, code lost:
    
        r9[4] = r8 + 1;
        r10 = r10 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:60:0x0099, code lost:
    
        r11 = r9[4];
     */
    /* JADX WARN: Code restructure failed: missing block: B:61:0x009b, code lost:
    
        if (r11 < r12) goto L59;
     */
    /* JADX WARN: Code restructure failed: missing block: B:62:0x009d, code lost:
    
        return Float.NaN;
     */
    /* JADX WARN: Code restructure failed: missing block: B:64:0x00b2, code lost:
    
        if ((java.lang.Math.abs(((((r9[0] + r9[1]) + r9[2]) + r9[3]) + r11) - r13) * 5) < (r13 * 2)) goto L62;
     */
    /* JADX WARN: Code restructure failed: missing block: B:65:0x00b4, code lost:
    
        return Float.NaN;
     */
    /* JADX WARN: Code restructure failed: missing block: B:67:0x00b9, code lost:
    
        if (foundPatternCross(r9) == false) goto L66;
     */
    /* JADX WARN: Code restructure failed: missing block: B:69:0x00bf, code lost:
    
        return centerFromEnd(r9, r10);
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private float crossCheckVertical(int r10, int r11, int r12, int r13) {
        /*
            r9 = this;
            com.google.zxing.common.BitMatrix r0 = r9.image
            int r1 = r0.getHeight()
            int[] r9 = r9.getCrossCheckStateCount()
            r2 = r10
        Lb:
            r3 = 2
            r4 = 1
            if (r2 < 0) goto L1d
            boolean r5 = r0.get(r11, r2)
            if (r5 == 0) goto L1d
            r5 = r9[r3]
            int r5 = r5 + r4
            r9[r3] = r5
            int r2 = r2 + (-1)
            goto Lb
        L1d:
            r5 = 2143289344(0x7fc00000, float:NaN)
            if (r2 >= 0) goto L22
            return r5
        L22:
            if (r2 < 0) goto L35
            boolean r6 = r0.get(r11, r2)
            if (r6 != 0) goto L35
            r6 = r9[r4]
            if (r6 > r12) goto L35
            int r6 = r6 + 1
            r9[r4] = r6
            int r2 = r2 + (-1)
            goto L22
        L35:
            if (r2 < 0) goto Lc0
            r6 = r9[r4]
            if (r6 <= r12) goto L3d
            goto Lc0
        L3d:
            r6 = 0
            if (r2 < 0) goto L51
            boolean r7 = r0.get(r11, r2)
            if (r7 == 0) goto L51
            r7 = r9[r6]
            if (r7 > r12) goto L51
            int r7 = r7 + 1
            r9[r6] = r7
            int r2 = r2 + (-1)
            goto L3d
        L51:
            r2 = r9[r6]
            if (r2 <= r12) goto L56
            return r5
        L56:
            int r10 = r10 + r4
        L57:
            if (r10 >= r1) goto L67
            boolean r2 = r0.get(r11, r10)
            if (r2 == 0) goto L67
            r2 = r9[r3]
            int r2 = r2 + r4
            r9[r3] = r2
            int r10 = r10 + 1
            goto L57
        L67:
            if (r10 != r1) goto L6a
            return r5
        L6a:
            r2 = 3
            if (r10 >= r1) goto L7e
            boolean r7 = r0.get(r11, r10)
            if (r7 != 0) goto L7e
            r7 = r9[r2]
            if (r7 >= r12) goto L7e
            int r7 = r7 + 1
            r9[r2] = r7
            int r10 = r10 + 1
            goto L6a
        L7e:
            if (r10 == r1) goto Lc0
            r7 = r9[r2]
            if (r7 < r12) goto L85
            goto Lc0
        L85:
            r7 = 4
            if (r10 >= r1) goto L99
            boolean r8 = r0.get(r11, r10)
            if (r8 == 0) goto L99
            r8 = r9[r7]
            if (r8 >= r12) goto L99
            int r8 = r8 + 1
            r9[r7] = r8
            int r10 = r10 + 1
            goto L85
        L99:
            r11 = r9[r7]
            if (r11 < r12) goto L9e
            return r5
        L9e:
            r12 = r9[r6]
            r0 = r9[r4]
            int r12 = r12 + r0
            r0 = r9[r3]
            int r12 = r12 + r0
            r0 = r9[r2]
            int r12 = r12 + r0
            int r12 = r12 + r11
            int r12 = r12 - r13
            int r11 = java.lang.Math.abs(r12)
            int r11 = r11 * 5
            int r13 = r13 * r3
            if (r11 < r13) goto Lb5
            return r5
        Lb5:
            boolean r11 = foundPatternCross(r9)
            if (r11 == 0) goto Lc0
            float r9 = centerFromEnd(r9, r10)
            return r9
        Lc0:
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.zxing.qrcode.detector.FinderPatternFinder.crossCheckVertical(int, int, int, int):float");
    }

    /* JADX WARN: Code restructure failed: missing block: B:51:0x0082, code lost:
    
        if (r9[3] < r12) goto L49;
     */
    /* JADX WARN: Code restructure failed: missing block: B:53:0x0086, code lost:
    
        if (r10 >= r1) goto L81;
     */
    /* JADX WARN: Code restructure failed: missing block: B:55:0x008c, code lost:
    
        if (r0.get(r10, r11) == false) goto L82;
     */
    /* JADX WARN: Code restructure failed: missing block: B:56:0x008e, code lost:
    
        r8 = r9[4];
     */
    /* JADX WARN: Code restructure failed: missing block: B:57:0x0090, code lost:
    
        if (r8 >= r12) goto L80;
     */
    /* JADX WARN: Code restructure failed: missing block: B:58:0x0092, code lost:
    
        r9[4] = r8 + 1;
        r10 = r10 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:60:0x0099, code lost:
    
        r11 = r9[4];
     */
    /* JADX WARN: Code restructure failed: missing block: B:61:0x009b, code lost:
    
        if (r11 < r12) goto L59;
     */
    /* JADX WARN: Code restructure failed: missing block: B:62:0x009d, code lost:
    
        return Float.NaN;
     */
    /* JADX WARN: Code restructure failed: missing block: B:64:0x00b1, code lost:
    
        if ((java.lang.Math.abs(((((r9[0] + r9[1]) + r9[2]) + r9[3]) + r11) - r13) * 5) < r13) goto L62;
     */
    /* JADX WARN: Code restructure failed: missing block: B:65:0x00b3, code lost:
    
        return Float.NaN;
     */
    /* JADX WARN: Code restructure failed: missing block: B:67:0x00b8, code lost:
    
        if (foundPatternCross(r9) == false) goto L66;
     */
    /* JADX WARN: Code restructure failed: missing block: B:69:0x00be, code lost:
    
        return centerFromEnd(r9, r10);
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private float crossCheckHorizontal(int r10, int r11, int r12, int r13) {
        /*
            r9 = this;
            com.google.zxing.common.BitMatrix r0 = r9.image
            int r1 = r0.getWidth()
            int[] r9 = r9.getCrossCheckStateCount()
            r2 = r10
        Lb:
            r3 = 2
            r4 = 1
            if (r2 < 0) goto L1d
            boolean r5 = r0.get(r2, r11)
            if (r5 == 0) goto L1d
            r5 = r9[r3]
            int r5 = r5 + r4
            r9[r3] = r5
            int r2 = r2 + (-1)
            goto Lb
        L1d:
            r5 = 2143289344(0x7fc00000, float:NaN)
            if (r2 >= 0) goto L22
            return r5
        L22:
            if (r2 < 0) goto L35
            boolean r6 = r0.get(r2, r11)
            if (r6 != 0) goto L35
            r6 = r9[r4]
            if (r6 > r12) goto L35
            int r6 = r6 + 1
            r9[r4] = r6
            int r2 = r2 + (-1)
            goto L22
        L35:
            if (r2 < 0) goto Lbf
            r6 = r9[r4]
            if (r6 <= r12) goto L3d
            goto Lbf
        L3d:
            r6 = 0
            if (r2 < 0) goto L51
            boolean r7 = r0.get(r2, r11)
            if (r7 == 0) goto L51
            r7 = r9[r6]
            if (r7 > r12) goto L51
            int r7 = r7 + 1
            r9[r6] = r7
            int r2 = r2 + (-1)
            goto L3d
        L51:
            r2 = r9[r6]
            if (r2 <= r12) goto L56
            return r5
        L56:
            int r10 = r10 + r4
        L57:
            if (r10 >= r1) goto L67
            boolean r2 = r0.get(r10, r11)
            if (r2 == 0) goto L67
            r2 = r9[r3]
            int r2 = r2 + r4
            r9[r3] = r2
            int r10 = r10 + 1
            goto L57
        L67:
            if (r10 != r1) goto L6a
            return r5
        L6a:
            r2 = 3
            if (r10 >= r1) goto L7e
            boolean r7 = r0.get(r10, r11)
            if (r7 != 0) goto L7e
            r7 = r9[r2]
            if (r7 >= r12) goto L7e
            int r7 = r7 + 1
            r9[r2] = r7
            int r10 = r10 + 1
            goto L6a
        L7e:
            if (r10 == r1) goto Lbf
            r7 = r9[r2]
            if (r7 < r12) goto L85
            goto Lbf
        L85:
            r7 = 4
            if (r10 >= r1) goto L99
            boolean r8 = r0.get(r10, r11)
            if (r8 == 0) goto L99
            r8 = r9[r7]
            if (r8 >= r12) goto L99
            int r8 = r8 + 1
            r9[r7] = r8
            int r10 = r10 + 1
            goto L85
        L99:
            r11 = r9[r7]
            if (r11 < r12) goto L9e
            return r5
        L9e:
            r12 = r9[r6]
            r0 = r9[r4]
            int r12 = r12 + r0
            r0 = r9[r3]
            int r12 = r12 + r0
            r0 = r9[r2]
            int r12 = r12 + r0
            int r12 = r12 + r11
            int r12 = r12 - r13
            int r11 = java.lang.Math.abs(r12)
            int r11 = r11 * 5
            if (r11 < r13) goto Lb4
            return r5
        Lb4:
            boolean r11 = foundPatternCross(r9)
            if (r11 == 0) goto Lbf
            float r9 = centerFromEnd(r9, r10)
            return r9
        Lbf:
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.zxing.qrcode.detector.FinderPatternFinder.crossCheckHorizontal(int, int, int, int):float");
    }

    @Deprecated
    protected final boolean handlePossibleCenter(int[] iArr, int i, int i2, boolean z) {
        return handlePossibleCenter(iArr, i, i2);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final boolean handlePossibleCenter(int[] iArr, int i, int i2) {
        int i3 = 0;
        int i4 = iArr[0] + iArr[1] + iArr[2] + iArr[3] + iArr[4];
        int centerFromEnd = (int) centerFromEnd(iArr, i2);
        float crossCheckVertical = crossCheckVertical(i, centerFromEnd, iArr[2], i4);
        if (!Float.isNaN(crossCheckVertical)) {
            int i5 = (int) crossCheckVertical;
            float crossCheckHorizontal = crossCheckHorizontal(centerFromEnd, i5, iArr[2], i4);
            if (!Float.isNaN(crossCheckHorizontal) && crossCheckDiagonal(i5, (int) crossCheckHorizontal)) {
                float f = i4 / 7.0f;
                while (true) {
                    if (i3 < this.possibleCenters.size()) {
                        FinderPattern finderPattern = this.possibleCenters.get(i3);
                        if (finderPattern.aboutEquals(f, crossCheckVertical, crossCheckHorizontal)) {
                            this.possibleCenters.set(i3, finderPattern.combineEstimate(crossCheckVertical, crossCheckHorizontal, f));
                            break;
                        }
                        i3++;
                    } else {
                        FinderPattern finderPattern2 = new FinderPattern(crossCheckHorizontal, crossCheckVertical, f);
                        this.possibleCenters.add(finderPattern2);
                        ResultPointCallback resultPointCallback = this.resultPointCallback;
                        if (resultPointCallback != null) {
                            resultPointCallback.foundPossibleResultPoint(finderPattern2);
                        }
                    }
                }
                return true;
            }
        }
        return false;
    }

    private int findRowSkip() {
        if (this.possibleCenters.size() <= 1) {
            return 0;
        }
        FinderPattern finderPattern = null;
        for (FinderPattern finderPattern2 : this.possibleCenters) {
            if (finderPattern2.getCount() >= 2) {
                if (finderPattern != null) {
                    this.hasSkipped = true;
                    return ((int) (Math.abs(finderPattern.getX() - finderPattern2.getX()) - Math.abs(finderPattern.getY() - finderPattern2.getY()))) / 2;
                }
                finderPattern = finderPattern2;
            }
        }
        return 0;
    }

    private boolean haveMultiplyConfirmedCenters() {
        int size = this.possibleCenters.size();
        float f = 0.0f;
        int i = 0;
        float f2 = 0.0f;
        for (FinderPattern finderPattern : this.possibleCenters) {
            if (finderPattern.getCount() >= 2) {
                i++;
                f2 += finderPattern.getEstimatedModuleSize();
            }
        }
        if (i < 3) {
            return false;
        }
        float f3 = f2 / size;
        Iterator<FinderPattern> it = this.possibleCenters.iterator();
        while (it.hasNext()) {
            f += Math.abs(it.next().getEstimatedModuleSize() - f3);
        }
        return f <= f2 * 0.05f;
    }

    private static double squaredDistance(FinderPattern finderPattern, FinderPattern finderPattern2) {
        double x = finderPattern.getX() - finderPattern2.getX();
        double y = finderPattern.getY() - finderPattern2.getY();
        return (x * x) + (y * y);
    }

    /* JADX WARN: Removed duplicated region for block: B:23:0x00bd  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x00c5 A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private com.google.zxing.qrcode.detector.FinderPattern[] selectBestPatterns() throws com.google.zxing.NotFoundException {
        /*
            r26 = this;
            r0 = r26
            java.util.List<com.google.zxing.qrcode.detector.FinderPattern> r1 = r0.possibleCenters
            int r1 = r1.size()
            r2 = 3
            if (r1 < r2) goto Ld7
            java.util.List<com.google.zxing.qrcode.detector.FinderPattern> r1 = r0.possibleCenters
            com.google.zxing.qrcode.detector.FinderPatternFinder$EstimatedModuleComparator r3 = com.google.zxing.qrcode.detector.FinderPatternFinder.moduleComparator
            r1.sort(r3)
            com.google.zxing.qrcode.detector.FinderPattern[] r1 = new com.google.zxing.qrcode.detector.FinderPattern[r2]
            r2 = 0
            r5 = r2
            r6 = 9218868437227405311(0x7fefffffffffffff, double:1.7976931348623157E308)
        L1b:
            java.util.List<com.google.zxing.qrcode.detector.FinderPattern> r8 = r0.possibleCenters
            int r8 = r8.size()
            r9 = 2
            int r8 = r8 - r9
            if (r5 >= r8) goto Lc8
            java.util.List<com.google.zxing.qrcode.detector.FinderPattern> r8 = r0.possibleCenters
            java.lang.Object r8 = r8.get(r5)
            com.google.zxing.qrcode.detector.FinderPattern r8 = (com.google.zxing.qrcode.detector.FinderPattern) r8
            float r10 = r8.getEstimatedModuleSize()
            int r5 = r5 + 1
            r11 = r5
        L34:
            java.util.List<com.google.zxing.qrcode.detector.FinderPattern> r12 = r0.possibleCenters
            int r12 = r12.size()
            r13 = 1
            int r12 = r12 - r13
            if (r11 >= r12) goto L1b
            java.util.List<com.google.zxing.qrcode.detector.FinderPattern> r12 = r0.possibleCenters
            java.lang.Object r12 = r12.get(r11)
            com.google.zxing.qrcode.detector.FinderPattern r12 = (com.google.zxing.qrcode.detector.FinderPattern) r12
            double r14 = squaredDistance(r8, r12)
            int r11 = r11 + 1
            r3 = r11
        L4d:
            java.util.List<com.google.zxing.qrcode.detector.FinderPattern> r4 = r0.possibleCenters
            int r4 = r4.size()
            if (r3 >= r4) goto L34
            java.util.List<com.google.zxing.qrcode.detector.FinderPattern> r4 = r0.possibleCenters
            java.lang.Object r4 = r4.get(r3)
            com.google.zxing.qrcode.detector.FinderPattern r4 = (com.google.zxing.qrcode.detector.FinderPattern) r4
            float r16 = r4.getEstimatedModuleSize()
            r17 = 1068708659(0x3fb33333, float:1.4)
            float r17 = r17 * r10
            int r16 = (r16 > r17 ? 1 : (r16 == r17 ? 0 : -1))
            if (r16 > 0) goto Lc5
            double r16 = squaredDistance(r12, r4)
            double r18 = squaredDistance(r8, r4)
            int r20 = (r14 > r16 ? 1 : (r14 == r16 ? 0 : -1))
            if (r20 >= 0) goto L8d
            int r20 = (r16 > r18 ? 1 : (r16 == r18 ? 0 : -1))
            if (r20 <= 0) goto L84
            int r20 = (r14 > r18 ? 1 : (r14 == r18 ? 0 : -1))
            if (r20 >= 0) goto L81
            r20 = r14
            goto La5
        L81:
            r20 = r18
            goto L99
        L84:
            r20 = r14
            r24 = r16
            r16 = r18
            r18 = r24
            goto La5
        L8d:
            int r20 = (r16 > r18 ? 1 : (r16 == r18 ? 0 : -1))
            if (r20 >= 0) goto L9f
            int r20 = (r14 > r18 ? 1 : (r14 == r18 ? 0 : -1))
            if (r20 >= 0) goto L9c
            r20 = r16
            r16 = r18
        L99:
            r18 = r14
            goto La5
        L9c:
            r20 = r16
            goto La3
        L9f:
            r20 = r18
            r18 = r16
        La3:
            r16 = r14
        La5:
            r22 = 4611686018427387904(0x4000000000000000, double:2.0)
            double r18 = r18 * r22
            double r18 = r16 - r18
            double r18 = java.lang.Math.abs(r18)
            double r20 = r20 * r22
            double r16 = r16 - r20
            double r16 = java.lang.Math.abs(r16)
            double r18 = r18 + r16
            int r16 = (r18 > r6 ? 1 : (r18 == r6 ? 0 : -1))
            if (r16 >= 0) goto Lc5
            r1[r2] = r8
            r1[r13] = r12
            r1[r9] = r4
            r6 = r18
        Lc5:
            int r3 = r3 + 1
            goto L4d
        Lc8:
            r3 = 9218868437227405311(0x7fefffffffffffff, double:1.7976931348623157E308)
            int r0 = (r6 > r3 ? 1 : (r6 == r3 ? 0 : -1))
            if (r0 == 0) goto Ld2
            return r1
        Ld2:
            com.google.zxing.NotFoundException r0 = com.google.zxing.NotFoundException.getNotFoundInstance()
            throw r0
        Ld7:
            com.google.zxing.NotFoundException r0 = com.google.zxing.NotFoundException.getNotFoundInstance()
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.zxing.qrcode.detector.FinderPatternFinder.selectBestPatterns():com.google.zxing.qrcode.detector.FinderPattern[]");
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes3.dex */
    public static final class EstimatedModuleComparator implements Serializable, Comparator<FinderPattern> {
        private EstimatedModuleComparator() {
        }

        @Override // java.util.Comparator
        public int compare(FinderPattern finderPattern, FinderPattern finderPattern2) {
            return Float.compare(finderPattern.getEstimatedModuleSize(), finderPattern2.getEstimatedModuleSize());
        }
    }
}
