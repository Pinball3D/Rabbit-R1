package com.google.zxing.oned;

import androidx.constraintlayout.widget.ConstraintLayout;
import com.google.zxing.BarcodeFormat;
import com.google.zxing.FormatException;
import com.google.zxing.NotFoundException;
import com.google.zxing.common.BitArray;
import tech.rabbit.r1systemupdater.model.UpdateEngineErrorCodes;

/* loaded from: classes3.dex */
public final class UPCEReader extends UPCEANReader {
    private static final int[] MIDDLE_END_PATTERN = {1, 1, 1, 1, 1, 1};
    static final int[][] NUMSYS_AND_CHECK_DIGIT_PATTERNS = {new int[]{56, 52, 50, 49, 44, 38, 35, 42, 41, 37}, new int[]{7, 11, 13, 14, 19, 25, 28, 21, 22, 26}};
    private final int[] decodeMiddleCounters = new int[4];

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.zxing.oned.UPCEANReader
    public int decodeMiddle(BitArray bitArray, int[] iArr, StringBuilder sb) throws NotFoundException {
        int[] iArr2 = this.decodeMiddleCounters;
        iArr2[0] = 0;
        iArr2[1] = 0;
        iArr2[2] = 0;
        iArr2[3] = 0;
        int size = bitArray.getSize();
        int i = iArr[1];
        int i2 = 0;
        for (int i3 = 0; i3 < 6 && i < size; i3++) {
            int decodeDigit = decodeDigit(bitArray, iArr2, i, L_AND_G_PATTERNS);
            sb.append((char) ((decodeDigit % 10) + 48));
            for (int i4 : iArr2) {
                i += i4;
            }
            if (decodeDigit >= 10) {
                i2 |= 1 << (5 - i3);
            }
        }
        determineNumSysAndCheckDigit(sb, i2);
        return i;
    }

    @Override // com.google.zxing.oned.UPCEANReader
    protected int[] decodeEnd(BitArray bitArray, int i) throws NotFoundException {
        return findGuardPattern(bitArray, i, true, MIDDLE_END_PATTERN);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.zxing.oned.UPCEANReader
    public boolean checkChecksum(String str) throws FormatException {
        return super.checkChecksum(convertUPCEtoUPCA(str));
    }

    private static void determineNumSysAndCheckDigit(StringBuilder sb, int i) throws NotFoundException {
        for (int i2 = 0; i2 <= 1; i2++) {
            for (int i3 = 0; i3 < 10; i3++) {
                if (i == NUMSYS_AND_CHECK_DIGIT_PATTERNS[i2][i3]) {
                    sb.insert(0, (char) (i2 + 48));
                    sb.append((char) (i3 + 48));
                    return;
                }
            }
        }
        throw NotFoundException.getNotFoundInstance();
    }

    @Override // com.google.zxing.oned.UPCEANReader
    BarcodeFormat getBarcodeFormat() {
        return BarcodeFormat.UPC_E;
    }

    public static String convertUPCEtoUPCA(String str) {
        char[] cArr = new char[6];
        str.getChars(1, 7, cArr, 0);
        StringBuilder sb = new StringBuilder(12);
        sb.append(str.charAt(0));
        char c = cArr[5];
        switch (c) {
            case '0':
            case ConstraintLayout.LayoutParams.Table.LAYOUT_EDITOR_ABSOLUTEX /* 49 */:
            case '2':
                sb.append(cArr, 0, 2);
                sb.append(c);
                sb.append("0000");
                sb.append(cArr, 2, 3);
                break;
            case ConstraintLayout.LayoutParams.Table.LAYOUT_CONSTRAINT_TAG /* 51 */:
                sb.append(cArr, 0, 3);
                sb.append("00000");
                sb.append(cArr, 3, 2);
                break;
            case UpdateEngineErrorCodes.UPDATED_BUT_NOT_ACTIVE /* 52 */:
                sb.append(cArr, 0, 4);
                sb.append("00000");
                sb.append(cArr[4]);
                break;
            default:
                sb.append(cArr, 0, 5);
                sb.append("0000");
                sb.append(c);
                break;
        }
        if (str.length() >= 8) {
            sb.append(str.charAt(7));
        }
        return sb.toString();
    }
}
