package com.google.zxing.oned;

import com.google.zxing.BarcodeFormat;
import com.google.zxing.NotFoundException;
import com.google.zxing.Result;
import com.google.zxing.ResultMetadataType;
import com.google.zxing.ResultPoint;
import com.google.zxing.common.BitArray;
import java.util.EnumMap;
import java.util.Map;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3.dex */
public final class UPCEANExtension2Support {
    private final int[] decodeMiddleCounters = new int[4];
    private final StringBuilder decodeRowStringBuffer = new StringBuilder();

    /* JADX INFO: Access modifiers changed from: package-private */
    public Result decodeRow(int i, BitArray bitArray, int[] iArr) throws NotFoundException {
        StringBuilder sb = this.decodeRowStringBuffer;
        sb.setLength(0);
        int decodeMiddle = decodeMiddle(bitArray, iArr, sb);
        String sb2 = sb.toString();
        Map<ResultMetadataType, Object> parseExtensionString = parseExtensionString(sb2);
        float f = i;
        Result result = new Result(sb2, null, new ResultPoint[]{new ResultPoint((iArr[0] + iArr[1]) / 2.0f, f), new ResultPoint(decodeMiddle, f)}, BarcodeFormat.UPC_EAN_EXTENSION);
        if (parseExtensionString != null) {
            result.putAllMetadata(parseExtensionString);
        }
        return result;
    }

    private int decodeMiddle(BitArray bitArray, int[] iArr, StringBuilder sb) throws NotFoundException {
        int[] iArr2 = this.decodeMiddleCounters;
        iArr2[0] = 0;
        iArr2[1] = 0;
        iArr2[2] = 0;
        iArr2[3] = 0;
        int size = bitArray.getSize();
        int i = iArr[1];
        int i2 = 0;
        for (int i3 = 0; i3 < 2 && i < size; i3++) {
            int decodeDigit = UPCEANReader.decodeDigit(bitArray, iArr2, i, UPCEANReader.L_AND_G_PATTERNS);
            sb.append((char) ((decodeDigit % 10) + 48));
            for (int i4 : iArr2) {
                i += i4;
            }
            if (decodeDigit >= 10) {
                i2 |= 1 << (1 - i3);
            }
            if (i3 != 1) {
                i = bitArray.getNextUnset(bitArray.getNextSet(i));
            }
        }
        if (sb.length() != 2) {
            throw NotFoundException.getNotFoundInstance();
        }
        if (Integer.parseInt(sb.toString()) % 4 == i2) {
            return i;
        }
        throw NotFoundException.getNotFoundInstance();
    }

    private static Map<ResultMetadataType, Object> parseExtensionString(String str) {
        if (str.length() != 2) {
            return null;
        }
        EnumMap enumMap = new EnumMap(ResultMetadataType.class);
        enumMap.put((EnumMap) ResultMetadataType.ISSUE_NUMBER, (ResultMetadataType) Integer.valueOf(str));
        return enumMap;
    }
}
