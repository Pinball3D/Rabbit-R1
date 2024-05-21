package com.google.common.net;

import com.google.common.base.Preconditions;
import com.google.common.escape.UnicodeEscaper;
import javax.annotation.CheckForNull;

@ElementTypesAreNonnullByDefault
/* loaded from: classes3.dex */
public final class PercentEscaper extends UnicodeEscaper {
    private static final char[] PLUS_SIGN = {'+'};
    private static final char[] UPPER_HEX_DIGITS = "0123456789ABCDEF".toCharArray();
    private final boolean plusForSpace;
    private final boolean[] safeOctets;

    public PercentEscaper(String str, boolean z) {
        Preconditions.checkNotNull(str);
        if (str.matches(".*[0-9A-Za-z].*")) {
            throw new IllegalArgumentException("Alphanumeric characters are always 'safe' and should not be explicitly specified");
        }
        String concat = String.valueOf(str).concat("abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789");
        if (z && concat.contains(" ")) {
            throw new IllegalArgumentException("plusForSpace cannot be specified when space is a 'safe' character");
        }
        this.plusForSpace = z;
        this.safeOctets = createSafeOctets(concat);
    }

    private static boolean[] createSafeOctets(String str) {
        char[] charArray = str.toCharArray();
        int i = -1;
        for (char c : charArray) {
            i = Math.max((int) c, i);
        }
        boolean[] zArr = new boolean[i + 1];
        for (char c2 : charArray) {
            zArr[c2] = true;
        }
        return zArr;
    }

    @Override // com.google.common.escape.UnicodeEscaper
    protected int nextEscapeIndex(CharSequence charSequence, int i, int i2) {
        Preconditions.checkNotNull(charSequence);
        while (i < i2) {
            char charAt = charSequence.charAt(i);
            boolean[] zArr = this.safeOctets;
            if (charAt >= zArr.length || !zArr[charAt]) {
                break;
            }
            i++;
        }
        return i;
    }

    @Override // com.google.common.escape.UnicodeEscaper, com.google.common.escape.Escaper
    public String escape(String str) {
        Preconditions.checkNotNull(str);
        int length = str.length();
        for (int i = 0; i < length; i++) {
            char charAt = str.charAt(i);
            boolean[] zArr = this.safeOctets;
            if (charAt >= zArr.length || !zArr[charAt]) {
                return escapeSlow(str, i);
            }
        }
        return str;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.common.escape.UnicodeEscaper
    @CheckForNull
    public char[] escape(int i) {
        boolean[] zArr = this.safeOctets;
        if (i < zArr.length && zArr[i]) {
            return null;
        }
        if (i == 32 && this.plusForSpace) {
            return PLUS_SIGN;
        }
        if (i <= 127) {
            char[] cArr = UPPER_HEX_DIGITS;
            return new char[]{'%', cArr[i >>> 4], cArr[i & 15]};
        }
        if (i <= 2047) {
            char[] cArr2 = UPPER_HEX_DIGITS;
            return new char[]{'%', cArr2[(i >>> 10) | 12], cArr2[(i >>> 6) & 15], '%', cArr2[((i >>> 4) & 3) | 8], cArr2[i & 15]};
        }
        if (i <= 65535) {
            char[] cArr3 = UPPER_HEX_DIGITS;
            return new char[]{'%', 'E', cArr3[i >>> 12], '%', cArr3[((i >>> 10) & 3) | 8], cArr3[(i >>> 6) & 15], '%', cArr3[((i >>> 4) & 3) | 8], cArr3[i & 15]};
        }
        if (i > 1114111) {
            throw new IllegalArgumentException(new StringBuilder(43).append("Invalid unicode character value ").append(i).toString());
        }
        char[] cArr4 = UPPER_HEX_DIGITS;
        return new char[]{'%', 'F', cArr4[(i >>> 18) & 7], '%', cArr4[((i >>> 16) & 3) | 8], cArr4[(i >>> 12) & 15], '%', cArr4[((i >>> 10) & 3) | 8], cArr4[(i >>> 6) & 15], '%', cArr4[((i >>> 4) & 3) | 8], cArr4[i & 15]};
    }
}
