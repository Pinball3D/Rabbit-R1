package com.google.zxing.oned.rss.expanded.decoders;

import com.google.zxing.common.BitArray;

/* loaded from: classes3.dex */
abstract class AI01decoder extends AbstractExpandedDecoder {
    static final int GTIN_SIZE = 40;

    /* JADX INFO: Access modifiers changed from: package-private */
    public AI01decoder(BitArray bitArray) {
        super(bitArray);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void encodeCompressedGtin(StringBuilder sb, int i) {
        sb.append("(01)");
        int length = sb.length();
        sb.append('9');
        encodeCompressedGtinWithoutAI(sb, i, length);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void encodeCompressedGtinWithoutAI(StringBuilder sb, int i, int i2) {
        for (int i3 = 0; i3 < 4; i3++) {
            int extractNumericValueFromBitArray = getGeneralDecoder().extractNumericValueFromBitArray((i3 * 10) + i, 10);
            if (extractNumericValueFromBitArray / 100 == 0) {
                sb.append('0');
            }
            if (extractNumericValueFromBitArray / 10 == 0) {
                sb.append('0');
            }
            sb.append(extractNumericValueFromBitArray);
        }
        appendCheckDigit(sb, i2);
    }

    private static void appendCheckDigit(StringBuilder sb, int i) {
        int i2 = 0;
        for (int i3 = 0; i3 < 13; i3++) {
            int charAt = sb.charAt(i3 + i) - '0';
            if ((i3 & 1) == 0) {
                charAt *= 3;
            }
            i2 += charAt;
        }
        int i4 = 10 - (i2 % 10);
        sb.append(i4 != 10 ? i4 : 0);
    }
}
