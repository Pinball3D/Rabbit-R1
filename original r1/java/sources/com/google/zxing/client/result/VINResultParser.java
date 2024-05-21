package com.google.zxing.client.result;

import androidx.compose.material3.MenuKt;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.google.zxing.BarcodeFormat;
import com.google.zxing.Result;
import java.util.regex.Pattern;
import kotlin.io.encoding.Base64;
import tech.rabbit.r1systemupdater.model.UpdateEngineErrorCodes;

/* loaded from: classes3.dex */
public final class VINResultParser extends ResultParser {
    private static final Pattern IOQ = Pattern.compile("[IOQ]");
    private static final Pattern AZ09 = Pattern.compile("[A-Z0-9]{17}");

    @Override // com.google.zxing.client.result.ResultParser
    public VINParsedResult parse(Result result) {
        if (result.getBarcodeFormat() != BarcodeFormat.CODE_39) {
            return null;
        }
        String trim = IOQ.matcher(result.getText()).replaceAll("").trim();
        if (!AZ09.matcher(trim).matches()) {
            return null;
        }
        try {
            if (!checkChecksum(trim)) {
                return null;
            }
            String substring = trim.substring(0, 3);
            return new VINParsedResult(trim, substring, trim.substring(3, 9), trim.substring(9, 17), countryCode(substring), trim.substring(3, 8), modelYear(trim.charAt(9)), trim.charAt(10), trim.substring(11));
        } catch (IllegalArgumentException unused) {
            return null;
        }
    }

    private static boolean checkChecksum(CharSequence charSequence) {
        int i = 0;
        int i2 = 0;
        while (i < charSequence.length()) {
            int i3 = i + 1;
            i2 += vinPositionWeight(i3) * vinCharValue(charSequence.charAt(i));
            i = i3;
        }
        return charSequence.charAt(8) == checkChar(i2 % 11);
    }

    private static int vinCharValue(char c) {
        if (c >= 'A' && c <= 'I') {
            return c - '@';
        }
        if (c >= 'J' && c <= 'R') {
            return c - 'I';
        }
        if (c >= 'S' && c <= 'Z') {
            return c - 'Q';
        }
        if (c < '0' || c > '9') {
            throw new IllegalArgumentException();
        }
        return c - '0';
    }

    private static int vinPositionWeight(int i) {
        if (i > 0 && i <= 7) {
            return 9 - i;
        }
        if (i == 8) {
            return 10;
        }
        if (i == 9) {
            return 0;
        }
        if (i < 10 || i > 17) {
            throw new IllegalArgumentException();
        }
        return 19 - i;
    }

    private static char checkChar(int i) {
        if (i < 10) {
            return (char) (i + 48);
        }
        if (i == 10) {
            return 'X';
        }
        throw new IllegalArgumentException();
    }

    private static int modelYear(char c) {
        if (c >= 'E' && c <= 'H') {
            return c + 1915;
        }
        if (c >= 'J' && c <= 'N') {
            return c + 1914;
        }
        if (c == 'P') {
            return 1993;
        }
        if (c >= 'R' && c <= 'T') {
            return c + 1912;
        }
        if (c >= 'V' && c <= 'Y') {
            return c + 1911;
        }
        if (c >= '1' && c <= '9') {
            return c + 1952;
        }
        if (c < 'A' || c > 'D') {
            throw new IllegalArgumentException();
        }
        return c + 1945;
    }

    private static String countryCode(CharSequence charSequence) {
        char charAt = charSequence.charAt(0);
        char charAt2 = charSequence.charAt(1);
        if (charAt == '9') {
            if (charAt2 >= 'A' && charAt2 <= 'E') {
                return "BR";
            }
            if (charAt2 < '3' || charAt2 > '9') {
                return null;
            }
            return "BR";
        }
        if (charAt == 'S') {
            if (charAt2 >= 'A' && charAt2 <= 'M') {
                return "UK";
            }
            if (charAt2 < 'N' || charAt2 > 'T') {
                return null;
            }
            return "DE";
        }
        if (charAt == 'Z') {
            if (charAt2 < 'A' || charAt2 > 'R') {
                return null;
            }
            return "IT";
        }
        switch (charAt) {
            case ConstraintLayout.LayoutParams.Table.LAYOUT_EDITOR_ABSOLUTEX /* 49 */:
            case UpdateEngineErrorCodes.UPDATED_BUT_NOT_ACTIVE /* 52 */:
            case '5':
                return "US";
            case '2':
                return "CA";
            case ConstraintLayout.LayoutParams.Table.LAYOUT_CONSTRAINT_TAG /* 51 */:
                if (charAt2 < 'A' || charAt2 > 'W') {
                    return null;
                }
                return "MX";
            default:
                switch (charAt) {
                    case 'J':
                        if (charAt2 < 'A' || charAt2 > 'T') {
                            return null;
                        }
                        return "JP";
                    case MenuKt.OutTransitionDuration /* 75 */:
                        if (charAt2 < 'L' || charAt2 > 'R') {
                            return null;
                        }
                        return "KO";
                    case Base64.mimeLineLength /* 76 */:
                        return "CN";
                    case 'M':
                        if (charAt2 < 'A' || charAt2 > 'E') {
                            return null;
                        }
                        return "IN";
                    default:
                        switch (charAt) {
                            case 'V':
                                if (charAt2 >= 'F' && charAt2 <= 'R') {
                                    return "FR";
                                }
                                if (charAt2 < 'S' || charAt2 > 'W') {
                                    return null;
                                }
                                return "ES";
                            case 'W':
                                return "DE";
                            case 'X':
                                if (charAt2 == '0') {
                                    return "RU";
                                }
                                if (charAt2 < '3' || charAt2 > '9') {
                                    return null;
                                }
                                return "RU";
                            default:
                                return null;
                        }
                }
        }
    }
}
