package com.google.zxing.oned;

import com.google.zxing.BarcodeFormat;
import java.util.Collection;
import java.util.Collections;

/* loaded from: classes3.dex */
public final class CodaBarWriter extends OneDimensionalCodeWriter {
    private static final char[] ALT_START_END_CHARS = {'T', 'N', '*', 'E'};
    private static final char[] CHARS_WHICH_ARE_TEN_LENGTH_EACH_AFTER_DECODED = {'/', ':', '+', '.'};
    private static final char DEFAULT_GUARD;
    private static final char[] START_END_CHARS;

    static {
        char[] cArr = {'A', 'B', 'C', 'D'};
        START_END_CHARS = cArr;
        DEFAULT_GUARD = cArr[0];
    }

    @Override // com.google.zxing.oned.OneDimensionalCodeWriter
    protected Collection<BarcodeFormat> getSupportedWriteFormats() {
        return Collections.singleton(BarcodeFormat.CODABAR);
    }

    @Override // com.google.zxing.oned.OneDimensionalCodeWriter
    public boolean[] encode(String str) {
        int i;
        if (str.length() < 2) {
            StringBuilder sb = new StringBuilder();
            char c = DEFAULT_GUARD;
            str = sb.append(c).append(str).append(c).toString();
        } else {
            char upperCase = Character.toUpperCase(str.charAt(0));
            char upperCase2 = Character.toUpperCase(str.charAt(str.length() - 1));
            char[] cArr = START_END_CHARS;
            boolean arrayContains = CodaBarReader.arrayContains(cArr, upperCase);
            boolean arrayContains2 = CodaBarReader.arrayContains(cArr, upperCase2);
            char[] cArr2 = ALT_START_END_CHARS;
            boolean arrayContains3 = CodaBarReader.arrayContains(cArr2, upperCase);
            boolean arrayContains4 = CodaBarReader.arrayContains(cArr2, upperCase2);
            if (arrayContains) {
                if (!arrayContains2) {
                    throw new IllegalArgumentException("Invalid start/end guards: ".concat(String.valueOf(str)));
                }
            } else if (!arrayContains3) {
                if (arrayContains2 || arrayContains4) {
                    throw new IllegalArgumentException("Invalid start/end guards: ".concat(String.valueOf(str)));
                }
                StringBuilder sb2 = new StringBuilder();
                char c2 = DEFAULT_GUARD;
                str = sb2.append(c2).append(str).append(c2).toString();
            } else if (!arrayContains4) {
                throw new IllegalArgumentException("Invalid start/end guards: ".concat(String.valueOf(str)));
            }
        }
        int i2 = 20;
        for (int i3 = 1; i3 < str.length() - 1; i3++) {
            if (Character.isDigit(str.charAt(i3)) || str.charAt(i3) == '-' || str.charAt(i3) == '$') {
                i2 += 9;
            } else {
                if (!CodaBarReader.arrayContains(CHARS_WHICH_ARE_TEN_LENGTH_EACH_AFTER_DECODED, str.charAt(i3))) {
                    throw new IllegalArgumentException("Cannot encode : '" + str.charAt(i3) + '\'');
                }
                i2 += 10;
            }
        }
        boolean[] zArr = new boolean[i2 + (str.length() - 1)];
        int i4 = 0;
        for (int i5 = 0; i5 < str.length(); i5++) {
            char upperCase3 = Character.toUpperCase(str.charAt(i5));
            if (i5 == 0 || i5 == str.length() - 1) {
                if (upperCase3 == '*') {
                    upperCase3 = 'C';
                } else if (upperCase3 == 'E') {
                    upperCase3 = 'D';
                } else if (upperCase3 == 'N') {
                    upperCase3 = 'B';
                } else if (upperCase3 == 'T') {
                    upperCase3 = 'A';
                }
            }
            int i6 = 0;
            while (true) {
                if (i6 >= CodaBarReader.ALPHABET.length) {
                    i = 0;
                    break;
                }
                if (upperCase3 == CodaBarReader.ALPHABET[i6]) {
                    i = CodaBarReader.CHARACTER_ENCODINGS[i6];
                    break;
                }
                i6++;
            }
            int i7 = 0;
            int i8 = 0;
            boolean z = true;
            while (i7 < 7) {
                zArr[i4] = z;
                i4++;
                if (((i >> (6 - i7)) & 1) == 0 || i8 == 1) {
                    z = !z;
                    i7++;
                    i8 = 0;
                } else {
                    i8++;
                }
            }
            if (i5 < str.length() - 1) {
                zArr[i4] = false;
                i4++;
            }
        }
        return zArr;
    }
}
