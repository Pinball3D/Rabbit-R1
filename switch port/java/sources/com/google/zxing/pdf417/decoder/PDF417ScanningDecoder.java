package com.google.zxing.pdf417.decoder;

import com.google.zxing.ChecksumException;
import com.google.zxing.FormatException;
import com.google.zxing.NotFoundException;
import com.google.zxing.ResultPoint;
import com.google.zxing.common.BitMatrix;
import com.google.zxing.common.DecoderResult;
import com.google.zxing.common.detector.MathUtils;
import com.google.zxing.pdf417.PDF417Common;
import com.google.zxing.pdf417.decoder.ec.ErrorCorrection;
import java.lang.reflect.Array;
import java.util.ArrayList;
import java.util.Formatter;

/* loaded from: classes3.dex */
public final class PDF417ScanningDecoder {
    private static final int CODEWORD_SKEW_SIZE = 2;
    private static final int MAX_EC_CODEWORDS = 512;
    private static final int MAX_ERRORS = 3;
    private static final ErrorCorrection errorCorrection = new ErrorCorrection();

    private static boolean checkCodewordSkew(int i, int i2, int i3) {
        return i2 + (-2) <= i && i <= i3 + 2;
    }

    private static int getNumberOfECCodeWords(int i) {
        return 2 << i;
    }

    private PDF417ScanningDecoder() {
    }

    /* JADX WARN: Code restructure failed: missing block: B:18:0x0068, code lost:
    
        if (r0 == null) goto L21;
     */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x006a, code lost:
    
        r0 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x006d, code lost:
    
        r2 = r26;
        r6 = r27;
        r7 = 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x0072, code lost:
    
        if (r7 > r5) goto L67;
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x0074, code lost:
    
        if (r0 == false) goto L26;
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x0076, code lost:
    
        r8 = r7;
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x007e, code lost:
    
        if (r3.getDetectionResultColumn(r8) != null) goto L68;
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x0080, code lost:
    
        if (r8 == 0) goto L34;
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x0082, code lost:
    
        if (r8 != r5) goto L32;
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x0085, code lost:
    
        r10 = new com.google.zxing.pdf417.decoder.DetectionResultColumn(r9);
     */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x008a, code lost:
    
        r15 = r10;
     */
    /* JADX WARN: Code restructure failed: missing block: B:30:0x0097, code lost:
    
        r3.setDetectionResultColumn(r8, r15);
        r14 = -1;
        r13 = r9.getMinY();
        r12 = -1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x00a5, code lost:
    
        if (r13 > r9.getMaxY()) goto L69;
     */
    /* JADX WARN: Code restructure failed: missing block: B:33:0x00a7, code lost:
    
        r10 = getStartColumn(r3, r8, r13, r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:34:0x00ab, code lost:
    
        if (r10 < 0) goto L48;
     */
    /* JADX WARN: Code restructure failed: missing block: B:36:0x00b1, code lost:
    
        if (r10 <= r9.getMaxX()) goto L47;
     */
    /* JADX WARN: Code restructure failed: missing block: B:37:0x00b4, code lost:
    
        r18 = r10;
     */
    /* JADX WARN: Code restructure failed: missing block: B:38:0x00bb, code lost:
    
        r19 = r12;
        r22 = r13;
        r20 = r14;
        r1 = r15;
        r10 = detectCodeword(r21, r9.getMinX(), r9.getMaxX(), r0, r18, r22, r2, r6);
        r11 = r22;
     */
    /* JADX WARN: Code restructure failed: missing block: B:39:0x00dd, code lost:
    
        if (r10 == null) goto L54;
     */
    /* JADX WARN: Code restructure failed: missing block: B:40:0x00df, code lost:
    
        r1.setCodeword(r11, r10);
        r2 = java.lang.Math.min(r2, r10.getWidth());
        r6 = java.lang.Math.max(r6, r10.getWidth());
        r12 = r18;
     */
    /* JADX WARN: Code restructure failed: missing block: B:42:0x00fd, code lost:
    
        r13 = r11 + 1;
        r15 = r1;
        r14 = r20;
     */
    /* JADX WARN: Code restructure failed: missing block: B:43:0x00fb, code lost:
    
        r12 = r19;
     */
    /* JADX WARN: Code restructure failed: missing block: B:45:0x00b7, code lost:
    
        if (r12 == r14) goto L53;
     */
    /* JADX WARN: Code restructure failed: missing block: B:46:0x00b9, code lost:
    
        r18 = r12;
     */
    /* JADX WARN: Code restructure failed: missing block: B:47:0x00f5, code lost:
    
        r19 = r12;
        r11 = r13;
        r20 = r14;
        r1 = r15;
     */
    /* JADX WARN: Code restructure failed: missing block: B:49:0x0104, code lost:
    
        r7 = r7 + 1;
        r1 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:51:0x008e, code lost:
    
        if (r8 != 0) goto L37;
     */
    /* JADX WARN: Code restructure failed: missing block: B:52:0x0090, code lost:
    
        r11 = r1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:53:0x0093, code lost:
    
        r10 = new com.google.zxing.pdf417.decoder.DetectionResultRowIndicatorColumn(r9, r11);
     */
    /* JADX WARN: Code restructure failed: missing block: B:54:0x0092, code lost:
    
        r11 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:56:0x0078, code lost:
    
        r8 = r5 - r7;
     */
    /* JADX WARN: Code restructure failed: missing block: B:59:0x010d, code lost:
    
        return createDecoderResult(r3);
     */
    /* JADX WARN: Code restructure failed: missing block: B:61:0x006c, code lost:
    
        r0 = false;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static com.google.zxing.common.DecoderResult decode(com.google.zxing.common.BitMatrix r21, com.google.zxing.ResultPoint r22, com.google.zxing.ResultPoint r23, com.google.zxing.ResultPoint r24, com.google.zxing.ResultPoint r25, int r26, int r27) throws com.google.zxing.NotFoundException, com.google.zxing.FormatException, com.google.zxing.ChecksumException {
        /*
            Method dump skipped, instructions count: 275
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.zxing.pdf417.decoder.PDF417ScanningDecoder.decode(com.google.zxing.common.BitMatrix, com.google.zxing.ResultPoint, com.google.zxing.ResultPoint, com.google.zxing.ResultPoint, com.google.zxing.ResultPoint, int, int):com.google.zxing.common.DecoderResult");
    }

    private static DetectionResult merge(DetectionResultRowIndicatorColumn detectionResultRowIndicatorColumn, DetectionResultRowIndicatorColumn detectionResultRowIndicatorColumn2) throws NotFoundException {
        BarcodeMetadata barcodeMetadata;
        if ((detectionResultRowIndicatorColumn == null && detectionResultRowIndicatorColumn2 == null) || (barcodeMetadata = getBarcodeMetadata(detectionResultRowIndicatorColumn, detectionResultRowIndicatorColumn2)) == null) {
            return null;
        }
        return new DetectionResult(barcodeMetadata, BoundingBox.merge(adjustBoundingBox(detectionResultRowIndicatorColumn), adjustBoundingBox(detectionResultRowIndicatorColumn2)));
    }

    private static BoundingBox adjustBoundingBox(DetectionResultRowIndicatorColumn detectionResultRowIndicatorColumn) throws NotFoundException {
        int[] rowHeights;
        if (detectionResultRowIndicatorColumn == null || (rowHeights = detectionResultRowIndicatorColumn.getRowHeights()) == null) {
            return null;
        }
        int max = getMax(rowHeights);
        int i = 0;
        int i2 = 0;
        for (int i3 : rowHeights) {
            i2 += max - i3;
            if (i3 > 0) {
                break;
            }
        }
        Codeword[] codewords = detectionResultRowIndicatorColumn.getCodewords();
        for (int i4 = 0; i2 > 0 && codewords[i4] == null; i4++) {
            i2--;
        }
        for (int length = rowHeights.length - 1; length >= 0; length--) {
            int i5 = rowHeights[length];
            i += max - i5;
            if (i5 > 0) {
                break;
            }
        }
        for (int length2 = codewords.length - 1; i > 0 && codewords[length2] == null; length2--) {
            i--;
        }
        return detectionResultRowIndicatorColumn.getBoundingBox().addMissingRows(i2, i, detectionResultRowIndicatorColumn.isLeft());
    }

    private static int getMax(int[] iArr) {
        int i = -1;
        for (int i2 : iArr) {
            i = Math.max(i, i2);
        }
        return i;
    }

    private static BarcodeMetadata getBarcodeMetadata(DetectionResultRowIndicatorColumn detectionResultRowIndicatorColumn, DetectionResultRowIndicatorColumn detectionResultRowIndicatorColumn2) {
        BarcodeMetadata barcodeMetadata;
        BarcodeMetadata barcodeMetadata2;
        if (detectionResultRowIndicatorColumn == null || (barcodeMetadata = detectionResultRowIndicatorColumn.getBarcodeMetadata()) == null) {
            if (detectionResultRowIndicatorColumn2 == null) {
                return null;
            }
            return detectionResultRowIndicatorColumn2.getBarcodeMetadata();
        }
        if (detectionResultRowIndicatorColumn2 == null || (barcodeMetadata2 = detectionResultRowIndicatorColumn2.getBarcodeMetadata()) == null || barcodeMetadata.getColumnCount() == barcodeMetadata2.getColumnCount() || barcodeMetadata.getErrorCorrectionLevel() == barcodeMetadata2.getErrorCorrectionLevel() || barcodeMetadata.getRowCount() == barcodeMetadata2.getRowCount()) {
            return barcodeMetadata;
        }
        return null;
    }

    private static DetectionResultRowIndicatorColumn getRowIndicatorColumn(BitMatrix bitMatrix, BoundingBox boundingBox, ResultPoint resultPoint, boolean z, int i, int i2) {
        int endX;
        DetectionResultRowIndicatorColumn detectionResultRowIndicatorColumn = new DetectionResultRowIndicatorColumn(boundingBox, z);
        int i3 = 0;
        while (i3 < 2) {
            int i4 = i3 == 0 ? 1 : -1;
            int x = (int) resultPoint.getX();
            for (int y = (int) resultPoint.getY(); y <= boundingBox.getMaxY() && y >= boundingBox.getMinY(); y += i4) {
                Codeword detectCodeword = detectCodeword(bitMatrix, 0, bitMatrix.getWidth(), z, x, y, i, i2);
                if (detectCodeword != null) {
                    detectionResultRowIndicatorColumn.setCodeword(y, detectCodeword);
                    if (z) {
                        endX = detectCodeword.getStartX();
                    } else {
                        endX = detectCodeword.getEndX();
                    }
                    x = endX;
                }
            }
            i3++;
        }
        return detectionResultRowIndicatorColumn;
    }

    private static void adjustCodewordCount(DetectionResult detectionResult, BarcodeValue[][] barcodeValueArr) throws NotFoundException {
        BarcodeValue barcodeValue = barcodeValueArr[0][1];
        int[] value = barcodeValue.getValue();
        int barcodeColumnCount = (detectionResult.getBarcodeColumnCount() * detectionResult.getBarcodeRowCount()) - getNumberOfECCodeWords(detectionResult.getBarcodeECLevel());
        if (value.length == 0) {
            if (barcodeColumnCount <= 0 || barcodeColumnCount > 928) {
                throw NotFoundException.getNotFoundInstance();
            }
            barcodeValue.setValue(barcodeColumnCount);
            return;
        }
        if (value[0] == barcodeColumnCount || barcodeColumnCount <= 0 || barcodeColumnCount > 928) {
            return;
        }
        barcodeValue.setValue(barcodeColumnCount);
    }

    private static DecoderResult createDecoderResult(DetectionResult detectionResult) throws FormatException, ChecksumException, NotFoundException {
        BarcodeValue[][] createBarcodeMatrix = createBarcodeMatrix(detectionResult);
        adjustCodewordCount(detectionResult, createBarcodeMatrix);
        ArrayList arrayList = new ArrayList();
        int[] iArr = new int[detectionResult.getBarcodeRowCount() * detectionResult.getBarcodeColumnCount()];
        ArrayList arrayList2 = new ArrayList();
        ArrayList arrayList3 = new ArrayList();
        for (int i = 0; i < detectionResult.getBarcodeRowCount(); i++) {
            int i2 = 0;
            while (i2 < detectionResult.getBarcodeColumnCount()) {
                int i3 = i2 + 1;
                int[] value = createBarcodeMatrix[i][i3].getValue();
                int barcodeColumnCount = (detectionResult.getBarcodeColumnCount() * i) + i2;
                if (value.length == 0) {
                    arrayList.add(Integer.valueOf(barcodeColumnCount));
                } else if (value.length == 1) {
                    iArr[barcodeColumnCount] = value[0];
                } else {
                    arrayList3.add(Integer.valueOf(barcodeColumnCount));
                    arrayList2.add(value);
                }
                i2 = i3;
            }
        }
        int size = arrayList2.size();
        int[][] iArr2 = new int[size];
        for (int i4 = 0; i4 < size; i4++) {
            iArr2[i4] = (int[]) arrayList2.get(i4);
        }
        return createDecoderResultFromAmbiguousValues(detectionResult.getBarcodeECLevel(), iArr, PDF417Common.toIntArray(arrayList), PDF417Common.toIntArray(arrayList3), iArr2);
    }

    private static DecoderResult createDecoderResultFromAmbiguousValues(int i, int[] iArr, int[] iArr2, int[] iArr3, int[][] iArr4) throws FormatException, ChecksumException {
        int length = iArr3.length;
        int[] iArr5 = new int[length];
        int i2 = 100;
        while (true) {
            int i3 = i2 - 1;
            if (i2 > 0) {
                for (int i4 = 0; i4 < length; i4++) {
                    iArr[iArr3[i4]] = iArr4[i4][iArr5[i4]];
                }
                try {
                    return decodeCodewords(iArr, i, iArr2);
                } catch (ChecksumException unused) {
                    if (length == 0) {
                        throw ChecksumException.getChecksumInstance();
                    }
                    int i5 = 0;
                    while (true) {
                        if (i5 >= length) {
                            break;
                        }
                        int i6 = iArr5[i5];
                        if (i6 < iArr4[i5].length - 1) {
                            iArr5[i5] = i6 + 1;
                            break;
                        }
                        iArr5[i5] = 0;
                        if (i5 == length - 1) {
                            throw ChecksumException.getChecksumInstance();
                        }
                        i5++;
                    }
                    i2 = i3;
                }
            } else {
                throw ChecksumException.getChecksumInstance();
            }
        }
    }

    private static BarcodeValue[][] createBarcodeMatrix(DetectionResult detectionResult) {
        int rowNumber;
        BarcodeValue[][] barcodeValueArr = (BarcodeValue[][]) Array.newInstance((Class<?>) BarcodeValue.class, detectionResult.getBarcodeRowCount(), detectionResult.getBarcodeColumnCount() + 2);
        for (BarcodeValue[] barcodeValueArr2 : barcodeValueArr) {
            int i = 0;
            while (true) {
                if (i < barcodeValueArr2.length) {
                    barcodeValueArr2[i] = new BarcodeValue();
                    i++;
                }
            }
        }
        int i2 = 0;
        for (DetectionResultColumn detectionResultColumn : detectionResult.getDetectionResultColumns()) {
            if (detectionResultColumn != null) {
                for (Codeword codeword : detectionResultColumn.getCodewords()) {
                    if (codeword != null && (rowNumber = codeword.getRowNumber()) >= 0 && rowNumber < barcodeValueArr.length) {
                        barcodeValueArr[rowNumber][i2].setValue(codeword.getValue());
                    }
                }
            }
            i2++;
        }
        return barcodeValueArr;
    }

    private static boolean isValidBarcodeColumn(DetectionResult detectionResult, int i) {
        return i >= 0 && i <= detectionResult.getBarcodeColumnCount() + 1;
    }

    private static int getStartColumn(DetectionResult detectionResult, int i, int i2, boolean z) {
        int i3 = z ? 1 : -1;
        int i4 = i - i3;
        Codeword codeword = isValidBarcodeColumn(detectionResult, i4) ? detectionResult.getDetectionResultColumn(i4).getCodeword(i2) : null;
        if (codeword != null) {
            return z ? codeword.getEndX() : codeword.getStartX();
        }
        Codeword codewordNearby = detectionResult.getDetectionResultColumn(i).getCodewordNearby(i2);
        if (codewordNearby != null) {
            return z ? codewordNearby.getStartX() : codewordNearby.getEndX();
        }
        if (isValidBarcodeColumn(detectionResult, i4)) {
            codewordNearby = detectionResult.getDetectionResultColumn(i4).getCodewordNearby(i2);
        }
        if (codewordNearby != null) {
            return z ? codewordNearby.getEndX() : codewordNearby.getStartX();
        }
        int i5 = 0;
        while (true) {
            i -= i3;
            if (isValidBarcodeColumn(detectionResult, i)) {
                for (Codeword codeword2 : detectionResult.getDetectionResultColumn(i).getCodewords()) {
                    if (codeword2 != null) {
                        return (z ? codeword2.getEndX() : codeword2.getStartX()) + (i3 * i5 * (codeword2.getEndX() - codeword2.getStartX()));
                    }
                }
                i5++;
            } else {
                BoundingBox boundingBox = detectionResult.getBoundingBox();
                return z ? boundingBox.getMinX() : boundingBox.getMaxX();
            }
        }
    }

    private static Codeword detectCodeword(BitMatrix bitMatrix, int i, int i2, boolean z, int i3, int i4, int i5, int i6) {
        int i7;
        int decodedValue;
        int codeword;
        int adjustCodewordStartColumn = adjustCodewordStartColumn(bitMatrix, i, i2, z, i3, i4);
        int[] moduleBitCount = getModuleBitCount(bitMatrix, i, i2, z, adjustCodewordStartColumn, i4);
        if (moduleBitCount == null) {
            return null;
        }
        int sum = MathUtils.sum(moduleBitCount);
        if (z) {
            i7 = adjustCodewordStartColumn + sum;
        } else {
            for (int i8 = 0; i8 < moduleBitCount.length / 2; i8++) {
                int i9 = moduleBitCount[i8];
                moduleBitCount[i8] = moduleBitCount[(moduleBitCount.length - 1) - i8];
                moduleBitCount[(moduleBitCount.length - 1) - i8] = i9;
            }
            adjustCodewordStartColumn -= sum;
            i7 = adjustCodewordStartColumn;
        }
        if (checkCodewordSkew(sum, i5, i6) && (codeword = PDF417Common.getCodeword((decodedValue = PDF417CodewordDecoder.getDecodedValue(moduleBitCount)))) != -1) {
            return new Codeword(adjustCodewordStartColumn, i7, getCodewordBucketNumber(decodedValue), codeword);
        }
        return null;
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x0027 A[EDGE_INSN: B:17:0x0027->B:18:0x0027 BREAK  A[LOOP:0: B:5:0x000c->B:13:0x000c], SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0015  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static int[] getModuleBitCount(com.google.zxing.common.BitMatrix r7, int r8, int r9, boolean r10, int r11, int r12) {
        /*
            r0 = 8
            int[] r1 = new int[r0]
            r2 = 1
            if (r10 == 0) goto L9
            r3 = r2
            goto La
        L9:
            r3 = -1
        La:
            r4 = 0
            r5 = r10
        Lc:
            if (r10 == 0) goto L11
            if (r11 >= r9) goto L27
            goto L13
        L11:
            if (r11 < r8) goto L27
        L13:
            if (r4 >= r0) goto L27
            boolean r6 = r7.get(r11, r12)
            if (r6 != r5) goto L22
            r6 = r1[r4]
            int r6 = r6 + r2
            r1[r4] = r6
            int r11 = r11 + r3
            goto Lc
        L22:
            int r4 = r4 + 1
            r5 = r5 ^ 1
            goto Lc
        L27:
            if (r4 == r0) goto L34
            if (r10 == 0) goto L2c
            r8 = r9
        L2c:
            if (r11 != r8) goto L32
            r7 = 7
            if (r4 != r7) goto L32
            goto L34
        L32:
            r7 = 0
            return r7
        L34:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.zxing.pdf417.decoder.PDF417ScanningDecoder.getModuleBitCount(com.google.zxing.common.BitMatrix, int, int, boolean, int, int):int[]");
    }

    /* JADX WARN: Code restructure failed: missing block: B:16:0x0022, code lost:
    
        continue;
     */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x0022, code lost:
    
        continue;
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x0022, code lost:
    
        continue;
     */
    /* JADX WARN: Removed duplicated region for block: B:10:0x0017  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static int adjustCodewordStartColumn(com.google.zxing.common.BitMatrix r5, int r6, int r7, boolean r8, int r9, int r10) {
        /*
            if (r8 == 0) goto L4
            r0 = -1
            goto L5
        L4:
            r0 = 1
        L5:
            r1 = 0
            r2 = r9
        L7:
            r3 = 2
            if (r1 >= r3) goto L28
        La:
            if (r8 == 0) goto Lf
            if (r2 < r6) goto L22
            goto L11
        Lf:
            if (r2 >= r7) goto L22
        L11:
            boolean r4 = r5.get(r2, r10)
            if (r8 != r4) goto L22
            int r4 = r9 - r2
            int r4 = java.lang.Math.abs(r4)
            if (r4 <= r3) goto L20
            return r9
        L20:
            int r2 = r2 + r0
            goto La
        L22:
            int r0 = -r0
            r8 = r8 ^ 1
            int r1 = r1 + 1
            goto L7
        L28:
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.zxing.pdf417.decoder.PDF417ScanningDecoder.adjustCodewordStartColumn(com.google.zxing.common.BitMatrix, int, int, boolean, int, int):int");
    }

    private static DecoderResult decodeCodewords(int[] iArr, int i, int[] iArr2) throws FormatException, ChecksumException {
        if (iArr.length == 0) {
            throw FormatException.getFormatInstance();
        }
        int i2 = 1 << (i + 1);
        int correctErrors = correctErrors(iArr, iArr2, i2);
        verifyCodewordCount(iArr, i2);
        DecoderResult decode = DecodedBitStreamParser.decode(iArr, String.valueOf(i));
        decode.setErrorsCorrected(Integer.valueOf(correctErrors));
        decode.setErasures(Integer.valueOf(iArr2.length));
        return decode;
    }

    private static int correctErrors(int[] iArr, int[] iArr2, int i) throws ChecksumException {
        if ((iArr2 != null && iArr2.length > (i / 2) + 3) || i < 0 || i > 512) {
            throw ChecksumException.getChecksumInstance();
        }
        return errorCorrection.decode(iArr, i, iArr2);
    }

    private static void verifyCodewordCount(int[] iArr, int i) throws FormatException {
        if (iArr.length < 4) {
            throw FormatException.getFormatInstance();
        }
        int i2 = iArr[0];
        if (i2 > iArr.length) {
            throw FormatException.getFormatInstance();
        }
        if (i2 == 0) {
            if (i < iArr.length) {
                iArr[0] = iArr.length - i;
                return;
            }
            throw FormatException.getFormatInstance();
        }
    }

    private static int[] getBitCountForCodeword(int i) {
        int[] iArr = new int[8];
        int i2 = 0;
        int i3 = 7;
        while (true) {
            int i4 = i & 1;
            if (i4 != i2) {
                i3--;
                if (i3 < 0) {
                    return iArr;
                }
                i2 = i4;
            }
            iArr[i3] = iArr[i3] + 1;
            i >>= 1;
        }
    }

    private static int getCodewordBucketNumber(int i) {
        return getCodewordBucketNumber(getBitCountForCodeword(i));
    }

    private static int getCodewordBucketNumber(int[] iArr) {
        return ((((iArr[0] - iArr[2]) + iArr[4]) - iArr[6]) + 9) % 9;
    }

    public static String toString(BarcodeValue[][] barcodeValueArr) {
        Formatter formatter = new Formatter();
        for (int i = 0; i < barcodeValueArr.length; i++) {
            try {
                formatter.format("Row %2d: ", Integer.valueOf(i));
                int i2 = 0;
                while (true) {
                    BarcodeValue[] barcodeValueArr2 = barcodeValueArr[i];
                    if (i2 < barcodeValueArr2.length) {
                        BarcodeValue barcodeValue = barcodeValueArr2[i2];
                        if (barcodeValue.getValue().length == 0) {
                            formatter.format("        ", null);
                        } else {
                            formatter.format("%4d(%2d)", Integer.valueOf(barcodeValue.getValue()[0]), barcodeValue.getConfidence(barcodeValue.getValue()[0]));
                        }
                        i2++;
                    }
                }
                formatter.format("%n", new Object[0]);
            } catch (Throwable th) {
                try {
                    throw th;
                } catch (Throwable th2) {
                    try {
                        formatter.close();
                    } catch (Throwable th3) {
                        th.addSuppressed(th3);
                    }
                    throw th2;
                }
            }
        }
        String formatter2 = formatter.toString();
        formatter.close();
        return formatter2;
    }
}
