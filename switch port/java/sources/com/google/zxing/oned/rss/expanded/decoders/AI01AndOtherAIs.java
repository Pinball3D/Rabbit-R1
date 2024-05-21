package com.google.zxing.oned.rss.expanded.decoders;

import com.google.zxing.FormatException;
import com.google.zxing.NotFoundException;
import com.google.zxing.common.BitArray;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3.dex */
public final class AI01AndOtherAIs extends AI01decoder {
    private static final int HEADER_SIZE = 4;

    /* JADX INFO: Access modifiers changed from: package-private */
    public AI01AndOtherAIs(BitArray bitArray) {
        super(bitArray);
    }

    @Override // com.google.zxing.oned.rss.expanded.decoders.AbstractExpandedDecoder
    public String parseInformation() throws NotFoundException, FormatException {
        StringBuilder sb = new StringBuilder();
        sb.append("(01)");
        int length = sb.length();
        sb.append(getGeneralDecoder().extractNumericValueFromBitArray(4, 4));
        encodeCompressedGtinWithoutAI(sb, 8, length);
        return getGeneralDecoder().decodeAllCodes(sb, 48);
    }
}
