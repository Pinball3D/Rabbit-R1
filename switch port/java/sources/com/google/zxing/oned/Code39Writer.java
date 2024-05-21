package com.google.zxing.oned;

import com.google.zxing.BarcodeFormat;
import java.util.Collection;
import java.util.Collections;
import kotlin.text.Typography;

/* loaded from: classes3.dex */
public final class Code39Writer extends OneDimensionalCodeWriter {
    @Override // com.google.zxing.oned.OneDimensionalCodeWriter
    protected Collection<BarcodeFormat> getSupportedWriteFormats() {
        return Collections.singleton(BarcodeFormat.CODE_39);
    }

    @Override // com.google.zxing.oned.OneDimensionalCodeWriter
    public boolean[] encode(String str) {
        int length = str.length();
        if (length > 80) {
            throw new IllegalArgumentException("Requested contents should be less than 80 digits long, but got ".concat(String.valueOf(length)));
        }
        int i = 0;
        while (true) {
            if (i >= length) {
                break;
            }
            if ("0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ-. $/+%".indexOf(str.charAt(i)) < 0) {
                str = tryToConvertToExtendedMode(str);
                length = str.length();
                if (length > 80) {
                    throw new IllegalArgumentException("Requested contents should be less than 80 digits long, but got " + length + " (extended full ASCII mode)");
                }
            } else {
                i++;
            }
        }
        int[] iArr = new int[9];
        boolean[] zArr = new boolean[(length * 13) + 25];
        toIntArray(148, iArr);
        int appendPattern = appendPattern(zArr, 0, iArr, true);
        int[] iArr2 = {1};
        int appendPattern2 = appendPattern + appendPattern(zArr, appendPattern, iArr2, false);
        for (int i2 = 0; i2 < length; i2++) {
            toIntArray(Code39Reader.CHARACTER_ENCODINGS["0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ-. $/+%".indexOf(str.charAt(i2))], iArr);
            int appendPattern3 = appendPattern2 + appendPattern(zArr, appendPattern2, iArr, true);
            appendPattern2 = appendPattern3 + appendPattern(zArr, appendPattern3, iArr2, false);
        }
        toIntArray(148, iArr);
        appendPattern(zArr, appendPattern2, iArr, true);
        return zArr;
    }

    private static void toIntArray(int i, int[] iArr) {
        for (int i2 = 0; i2 < 9; i2++) {
            int i3 = 1;
            if (((1 << (8 - i2)) & i) != 0) {
                i3 = 2;
            }
            iArr[i2] = i3;
        }
    }

    private static String tryToConvertToExtendedMode(String str) {
        int length = str.length();
        StringBuilder sb = new StringBuilder();
        for (int i = 0; i < length; i++) {
            char charAt = str.charAt(i);
            if (charAt == 0) {
                sb.append("%U");
            } else {
                if (charAt != ' ') {
                    if (charAt == '@') {
                        sb.append("%V");
                    } else if (charAt == '`') {
                        sb.append("%W");
                    } else if (charAt != '-' && charAt != '.') {
                        if (charAt <= 26) {
                            sb.append(Typography.dollar);
                            sb.append((char) (charAt + '@'));
                        } else if (charAt < ' ') {
                            sb.append('%');
                            sb.append((char) (charAt + Typography.amp));
                        } else if (charAt <= ',' || charAt == '/' || charAt == ':') {
                            sb.append('/');
                            sb.append((char) (charAt + ' '));
                        } else if (charAt <= '9') {
                            sb.append(charAt);
                        } else if (charAt <= '?') {
                            sb.append('%');
                            sb.append((char) (charAt + 11));
                        } else if (charAt <= 'Z') {
                            sb.append(charAt);
                        } else if (charAt <= '_') {
                            sb.append('%');
                            sb.append((char) (charAt - 16));
                        } else if (charAt <= 'z') {
                            sb.append('+');
                            sb.append((char) (charAt - ' '));
                        } else if (charAt <= 127) {
                            sb.append('%');
                            sb.append((char) (charAt - '+'));
                        } else {
                            throw new IllegalArgumentException("Requested content contains a non-encodable character: '" + str.charAt(i) + "'");
                        }
                    }
                }
                sb.append(charAt);
            }
        }
        return sb.toString();
    }
}
