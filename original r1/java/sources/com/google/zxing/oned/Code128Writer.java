package com.google.zxing.oned;

import com.google.zxing.BarcodeFormat;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;

/* loaded from: classes3.dex */
public final class Code128Writer extends OneDimensionalCodeWriter {
    private static final int CODE_CODE_A = 101;
    private static final int CODE_CODE_B = 100;
    private static final int CODE_CODE_C = 99;
    private static final int CODE_FNC_1 = 102;
    private static final int CODE_FNC_2 = 97;
    private static final int CODE_FNC_3 = 96;
    private static final int CODE_FNC_4_A = 101;
    private static final int CODE_FNC_4_B = 100;
    private static final int CODE_START_A = 103;
    private static final int CODE_START_B = 104;
    private static final int CODE_START_C = 105;
    private static final int CODE_STOP = 106;
    private static final char ESCAPE_FNC_1 = 241;
    private static final char ESCAPE_FNC_2 = 242;
    private static final char ESCAPE_FNC_3 = 243;
    private static final char ESCAPE_FNC_4 = 244;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes3.dex */
    public enum CType {
        UNCODABLE,
        ONE_DIGIT,
        TWO_DIGITS,
        FNC_1
    }

    @Override // com.google.zxing.oned.OneDimensionalCodeWriter
    protected Collection<BarcodeFormat> getSupportedWriteFormats() {
        return Collections.singleton(BarcodeFormat.CODE_128);
    }

    @Override // com.google.zxing.oned.OneDimensionalCodeWriter
    public boolean[] encode(String str) {
        int length = str.length();
        if (length <= 0 || length > 80) {
            throw new IllegalArgumentException("Contents length should be between 1 and 80 characters, but got ".concat(String.valueOf(length)));
        }
        int i = 0;
        for (int i2 = 0; i2 < length; i2++) {
            char charAt = str.charAt(i2);
            switch (charAt) {
                case 241:
                case 242:
                case 243:
                case 244:
                    break;
                default:
                    if (charAt > 127) {
                        throw new IllegalArgumentException("Bad character in input: ".concat(String.valueOf(charAt)));
                    }
                    break;
            }
        }
        ArrayList<int[]> arrayList = new ArrayList();
        int i3 = 0;
        int i4 = 0;
        int i5 = 0;
        int i6 = 1;
        while (true) {
            int i7 = CODE_START_A;
            if (i3 < length) {
                int chooseCode = chooseCode(str, i3, i5);
                int i8 = 100;
                if (chooseCode == i5) {
                    switch (str.charAt(i3)) {
                        case 241:
                            i8 = 102;
                            break;
                        case 242:
                            i8 = CODE_FNC_2;
                            break;
                        case 243:
                            i8 = CODE_FNC_3;
                            break;
                        case 244:
                            if (i5 == 101) {
                                i8 = 101;
                                break;
                            }
                            break;
                        default:
                            if (i5 != 100) {
                                if (i5 == 101) {
                                    char charAt2 = str.charAt(i3);
                                    i8 = charAt2 - ' ';
                                    if (i8 < 0) {
                                        i8 = charAt2 + '@';
                                        break;
                                    }
                                } else {
                                    i8 = Integer.parseInt(str.substring(i3, i3 + 2));
                                    i3++;
                                    break;
                                }
                            } else {
                                i8 = str.charAt(i3) - ' ';
                                break;
                            }
                            break;
                    }
                    i3++;
                } else {
                    if (i5 != 0) {
                        i7 = chooseCode;
                    } else if (chooseCode == 100) {
                        i7 = 104;
                    } else if (chooseCode != 101) {
                        i7 = CODE_START_C;
                    }
                    i8 = i7;
                    i5 = chooseCode;
                }
                arrayList.add(Code128Reader.CODE_PATTERNS[i8]);
                i4 += i8 * i6;
                if (i3 != 0) {
                    i6++;
                }
            } else {
                arrayList.add(Code128Reader.CODE_PATTERNS[i4 % CODE_START_A]);
                arrayList.add(Code128Reader.CODE_PATTERNS[CODE_STOP]);
                int i9 = 0;
                for (int[] iArr : arrayList) {
                    for (int i10 : iArr) {
                        i9 += i10;
                    }
                }
                boolean[] zArr = new boolean[i9];
                Iterator it = arrayList.iterator();
                while (it.hasNext()) {
                    i += appendPattern(zArr, i, (int[]) it.next(), true);
                }
                return zArr;
            }
        }
    }

    private static CType findCType(CharSequence charSequence, int i) {
        int length = charSequence.length();
        if (i >= length) {
            return CType.UNCODABLE;
        }
        char charAt = charSequence.charAt(i);
        if (charAt == 241) {
            return CType.FNC_1;
        }
        if (charAt < '0' || charAt > '9') {
            return CType.UNCODABLE;
        }
        int i2 = i + 1;
        if (i2 >= length) {
            return CType.ONE_DIGIT;
        }
        char charAt2 = charSequence.charAt(i2);
        if (charAt2 < '0' || charAt2 > '9') {
            return CType.ONE_DIGIT;
        }
        return CType.TWO_DIGITS;
    }

    private static int chooseCode(CharSequence charSequence, int i, int i2) {
        CType findCType;
        CType findCType2;
        char charAt;
        CType findCType3 = findCType(charSequence, i);
        if (findCType3 == CType.ONE_DIGIT) {
            return i2 == 101 ? 101 : 100;
        }
        if (findCType3 == CType.UNCODABLE) {
            return (i >= charSequence.length() || ((charAt = charSequence.charAt(i)) >= ' ' && (i2 != 101 || (charAt >= CODE_FNC_3 && (charAt < 241 || charAt > 244))))) ? 100 : 101;
        }
        if (i2 == 101 && findCType3 == CType.FNC_1) {
            return 101;
        }
        if (i2 == CODE_CODE_C) {
            return CODE_CODE_C;
        }
        if (i2 == 100) {
            if (findCType3 == CType.FNC_1 || (findCType = findCType(charSequence, i + 2)) == CType.UNCODABLE || findCType == CType.ONE_DIGIT) {
                return 100;
            }
            if (findCType == CType.FNC_1) {
                if (findCType(charSequence, i + 3) == CType.TWO_DIGITS) {
                    return CODE_CODE_C;
                }
                return 100;
            }
            int i3 = i + 4;
            while (true) {
                findCType2 = findCType(charSequence, i3);
                if (findCType2 != CType.TWO_DIGITS) {
                    break;
                }
                i3 += 2;
            }
            if (findCType2 == CType.ONE_DIGIT) {
                return 100;
            }
            return CODE_CODE_C;
        }
        if (findCType3 == CType.FNC_1) {
            findCType3 = findCType(charSequence, i + 1);
        }
        if (findCType3 == CType.TWO_DIGITS) {
            return CODE_CODE_C;
        }
        return 100;
    }
}
