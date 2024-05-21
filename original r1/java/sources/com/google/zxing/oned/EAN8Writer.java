package com.google.zxing.oned;

import com.google.zxing.BarcodeFormat;
import com.google.zxing.FormatException;
import java.util.Collection;
import java.util.Collections;

/* loaded from: classes3.dex */
public final class EAN8Writer extends UPCEANWriter {
    private static final int CODE_WIDTH = 67;

    @Override // com.google.zxing.oned.OneDimensionalCodeWriter
    protected Collection<BarcodeFormat> getSupportedWriteFormats() {
        return Collections.singleton(BarcodeFormat.EAN_8);
    }

    @Override // com.google.zxing.oned.OneDimensionalCodeWriter
    public boolean[] encode(String str) {
        int length = str.length();
        if (length == 7) {
            try {
                str = str + UPCEANReader.getStandardUPCEANChecksum(str);
            } catch (FormatException e) {
                throw new IllegalArgumentException(e);
            }
        } else if (length == 8) {
            try {
                if (!UPCEANReader.checkStandardUPCEANChecksum(str)) {
                    throw new IllegalArgumentException("Contents do not pass checksum");
                }
            } catch (FormatException unused) {
                throw new IllegalArgumentException("Illegal contents");
            }
        } else {
            throw new IllegalArgumentException("Requested contents should be 7 or 8 digits long, but got ".concat(String.valueOf(length)));
        }
        checkNumeric(str);
        boolean[] zArr = new boolean[67];
        int appendPattern = appendPattern(zArr, 0, UPCEANReader.START_END_PATTERN, true);
        for (int i = 0; i <= 3; i++) {
            appendPattern += appendPattern(zArr, appendPattern, UPCEANReader.L_PATTERNS[Character.digit(str.charAt(i), 10)], false);
        }
        int appendPattern2 = appendPattern + appendPattern(zArr, appendPattern, UPCEANReader.MIDDLE_PATTERN, false);
        for (int i2 = 4; i2 <= 7; i2++) {
            appendPattern2 += appendPattern(zArr, appendPattern2, UPCEANReader.L_PATTERNS[Character.digit(str.charAt(i2), 10)], true);
        }
        appendPattern(zArr, appendPattern2, UPCEANReader.START_END_PATTERN, true);
        return zArr;
    }
}
