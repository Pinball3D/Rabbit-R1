package com.google.zxing.oned;

import com.davemorrissey.labs.subscaleview.SubsamplingScaleImageView;
import com.google.zxing.BinaryBitmap;
import com.google.zxing.ChecksumException;
import com.google.zxing.DecodeHintType;
import com.google.zxing.FormatException;
import com.google.zxing.NotFoundException;
import com.google.zxing.Reader;
import com.google.zxing.ReaderException;
import com.google.zxing.Result;
import com.google.zxing.ResultMetadataType;
import com.google.zxing.ResultPoint;
import com.google.zxing.common.BitArray;
import java.util.Arrays;
import java.util.EnumMap;
import java.util.Map;

/* loaded from: classes3.dex */
public abstract class OneDReader implements Reader {
    public abstract Result decodeRow(int i, BitArray bitArray, Map<DecodeHintType, ?> map) throws NotFoundException, ChecksumException, FormatException;

    @Override // com.google.zxing.Reader
    public void reset() {
    }

    @Override // com.google.zxing.Reader
    public Result decode(BinaryBitmap binaryBitmap) throws NotFoundException, FormatException {
        return decode(binaryBitmap, null);
    }

    @Override // com.google.zxing.Reader
    public Result decode(BinaryBitmap binaryBitmap, Map<DecodeHintType, ?> map) throws NotFoundException, FormatException {
        try {
            return doDecode(binaryBitmap, map);
        } catch (NotFoundException e) {
            if (map != null && map.containsKey(DecodeHintType.TRY_HARDER) && binaryBitmap.isRotateSupported()) {
                BinaryBitmap rotateCounterClockwise = binaryBitmap.rotateCounterClockwise();
                Result doDecode = this.doDecode(rotateCounterClockwise, map);
                Map<ResultMetadataType, Object> resultMetadata = doDecode.getResultMetadata();
                int i = SubsamplingScaleImageView.ORIENTATION_270;
                if (resultMetadata != null && resultMetadata.containsKey(ResultMetadataType.ORIENTATION)) {
                    i = (((Integer) resultMetadata.get(ResultMetadataType.ORIENTATION)).intValue() + SubsamplingScaleImageView.ORIENTATION_270) % 360;
                }
                doDecode.putMetadata(ResultMetadataType.ORIENTATION, Integer.valueOf(i));
                ResultPoint[] resultPoints = doDecode.getResultPoints();
                if (resultPoints != null) {
                    int height = rotateCounterClockwise.getHeight();
                    for (int i2 = 0; i2 < resultPoints.length; i2++) {
                        resultPoints[i2] = new ResultPoint((height - resultPoints[i2].getY()) - 1.0f, resultPoints[i2].getX());
                    }
                }
                return doDecode;
            }
            throw e;
        }
    }

    private Result doDecode(BinaryBitmap binaryBitmap, Map<DecodeHintType, ?> map) throws NotFoundException {
        Map<DecodeHintType, ?> map2;
        int i;
        int i2;
        Map<DecodeHintType, ?> map3 = map;
        int width = binaryBitmap.getWidth();
        int height = binaryBitmap.getHeight();
        BitArray bitArray = new BitArray(width);
        int i3 = 0;
        int i4 = 1;
        boolean z = map3 != null && map3.containsKey(DecodeHintType.TRY_HARDER);
        int max = Math.max(1, height >> (z ? 8 : 5));
        int i5 = z ? height : 15;
        int i6 = height / 2;
        int i7 = 0;
        while (i7 < i5) {
            int i8 = i7 + 1;
            int i9 = i8 / 2;
            if ((i7 & 1) != 0) {
                i9 = -i9;
            }
            int i10 = (i9 * max) + i6;
            if (i10 < 0 || i10 >= height) {
                break;
            }
            try {
                bitArray = binaryBitmap.getBlackRow(i10, bitArray);
                int i11 = i3;
                while (i11 < 2) {
                    if (i11 == i4) {
                        bitArray.reverse();
                        if (map3 != null && map3.containsKey(DecodeHintType.NEED_RESULT_POINT_CALLBACK)) {
                            EnumMap enumMap = new EnumMap(DecodeHintType.class);
                            enumMap.putAll(map3);
                            enumMap.remove(DecodeHintType.NEED_RESULT_POINT_CALLBACK);
                            map3 = enumMap;
                        }
                    }
                    try {
                        Result decodeRow = decodeRow(i10, bitArray, map3);
                        if (i11 == i4) {
                            try {
                                decodeRow.putMetadata(ResultMetadataType.ORIENTATION, Integer.valueOf(SubsamplingScaleImageView.ORIENTATION_180));
                                ResultPoint[] resultPoints = decodeRow.getResultPoints();
                                if (resultPoints != null) {
                                    map2 = map3;
                                    float f = width;
                                    try {
                                        i = width;
                                        try {
                                            resultPoints[0] = new ResultPoint((f - resultPoints[i3].getX()) - 1.0f, resultPoints[i3].getY());
                                            i2 = 1;
                                        } catch (ReaderException unused) {
                                            i2 = 1;
                                            i11++;
                                            i4 = i2;
                                            map3 = map2;
                                            width = i;
                                            i3 = 0;
                                        }
                                    } catch (ReaderException unused2) {
                                        i = width;
                                        i2 = 1;
                                        i11++;
                                        i4 = i2;
                                        map3 = map2;
                                        width = i;
                                        i3 = 0;
                                    }
                                    try {
                                        resultPoints[1] = new ResultPoint((f - resultPoints[1].getX()) - 1.0f, resultPoints[1].getY());
                                    } catch (ReaderException unused3) {
                                        continue;
                                        i11++;
                                        i4 = i2;
                                        map3 = map2;
                                        width = i;
                                        i3 = 0;
                                    }
                                }
                            } catch (ReaderException unused4) {
                                map2 = map3;
                            }
                        }
                        return decodeRow;
                    } catch (ReaderException unused5) {
                        map2 = map3;
                        i = width;
                        i2 = i4;
                    }
                }
            } catch (NotFoundException unused6) {
            }
            i7 = i8;
            i4 = i4;
            width = width;
            i3 = 0;
        }
        throw NotFoundException.getNotFoundInstance();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static void recordPattern(BitArray bitArray, int i, int[] iArr) throws NotFoundException {
        int length = iArr.length;
        int i2 = 0;
        Arrays.fill(iArr, 0, length, 0);
        int size = bitArray.getSize();
        if (i >= size) {
            throw NotFoundException.getNotFoundInstance();
        }
        boolean z = !bitArray.get(i);
        while (i < size) {
            if (bitArray.get(i) == z) {
                i2++;
                if (i2 == length) {
                    break;
                }
                iArr[i2] = 1;
                z = !z;
            } else {
                iArr[i2] = iArr[i2] + 1;
            }
            i++;
        }
        if (i2 != length) {
            if (i2 != length - 1 || i != size) {
                throw NotFoundException.getNotFoundInstance();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static void recordPatternInReverse(BitArray bitArray, int i, int[] iArr) throws NotFoundException {
        int length = iArr.length;
        boolean z = bitArray.get(i);
        while (i > 0 && length >= 0) {
            i--;
            if (bitArray.get(i) != z) {
                length--;
                z = !z;
            }
        }
        if (length >= 0) {
            throw NotFoundException.getNotFoundInstance();
        }
        recordPattern(bitArray, i + 1, iArr);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static float patternMatchVariance(int[] iArr, int[] iArr2, float f) {
        int length = iArr.length;
        int i = 0;
        int i2 = 0;
        for (int i3 = 0; i3 < length; i3++) {
            i += iArr[i3];
            i2 += iArr2[i3];
        }
        if (i < i2) {
            return Float.POSITIVE_INFINITY;
        }
        float f2 = i;
        float f3 = f2 / i2;
        float f4 = f * f3;
        float f5 = 0.0f;
        for (int i4 = 0; i4 < length; i4++) {
            float f6 = iArr2[i4] * f3;
            float f7 = iArr[i4];
            float f8 = f7 > f6 ? f7 - f6 : f6 - f7;
            if (f8 > f4) {
                return Float.POSITIVE_INFINITY;
            }
            f5 += f8;
        }
        return f5 / f2;
    }
}
