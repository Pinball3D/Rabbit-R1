package com.google.common.escape;

import com.google.common.base.Preconditions;
import javax.annotation.CheckForNull;

@ElementTypesAreNonnullByDefault
/* loaded from: classes3.dex */
public abstract class UnicodeEscaper extends Escaper {
    private static final int DEST_PAD = 32;

    /* JADX INFO: Access modifiers changed from: protected */
    @CheckForNull
    public abstract char[] escape(int i);

    @Override // com.google.common.escape.Escaper
    public String escape(String str) {
        Preconditions.checkNotNull(str);
        int length = str.length();
        int nextEscapeIndex = nextEscapeIndex(str, 0, length);
        return nextEscapeIndex == length ? str : escapeSlow(str, nextEscapeIndex);
    }

    protected int nextEscapeIndex(CharSequence charSequence, int i, int i2) {
        while (i < i2) {
            int codePointAt = codePointAt(charSequence, i, i2);
            if (codePointAt < 0 || escape(codePointAt) != null) {
                break;
            }
            i += Character.isSupplementaryCodePoint(codePointAt) ? 2 : 1;
        }
        return i;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final String escapeSlow(String str, int i) {
        int length = str.length();
        char[] charBufferFromThreadLocal = Platform.charBufferFromThreadLocal();
        int i2 = 0;
        int i3 = 0;
        while (i < length) {
            int codePointAt = codePointAt(str, i, length);
            if (codePointAt < 0) {
                throw new IllegalArgumentException("Trailing high surrogate at end of input");
            }
            char[] escape = escape(codePointAt);
            int i4 = (Character.isSupplementaryCodePoint(codePointAt) ? 2 : 1) + i;
            if (escape != null) {
                int i5 = i - i2;
                int i6 = i3 + i5;
                int length2 = escape.length + i6;
                if (charBufferFromThreadLocal.length < length2) {
                    charBufferFromThreadLocal = growBuffer(charBufferFromThreadLocal, i3, length2 + (length - i) + 32);
                }
                if (i5 > 0) {
                    str.getChars(i2, i, charBufferFromThreadLocal, i3);
                    i3 = i6;
                }
                if (escape.length > 0) {
                    System.arraycopy(escape, 0, charBufferFromThreadLocal, i3, escape.length);
                    i3 += escape.length;
                }
                i2 = i4;
            }
            i = nextEscapeIndex(str, i4, length);
        }
        int i7 = length - i2;
        if (i7 > 0) {
            int i8 = i7 + i3;
            if (charBufferFromThreadLocal.length < i8) {
                charBufferFromThreadLocal = growBuffer(charBufferFromThreadLocal, i3, i8);
            }
            str.getChars(i2, length, charBufferFromThreadLocal, i3);
            i3 = i8;
        }
        return new String(charBufferFromThreadLocal, 0, i3);
    }

    protected static int codePointAt(CharSequence charSequence, int i, int i2) {
        Preconditions.checkNotNull(charSequence);
        if (i < i2) {
            int i3 = i + 1;
            char charAt = charSequence.charAt(i);
            if (charAt < 55296 || charAt > 57343) {
                return charAt;
            }
            if (charAt > 56319) {
                String valueOf = String.valueOf(charSequence);
                throw new IllegalArgumentException(new StringBuilder(String.valueOf(valueOf).length() + 88).append("Unexpected low surrogate character '").append(charAt).append("' with value ").append((int) charAt).append(" at index ").append(i).append(" in '").append(valueOf).append("'").toString());
            }
            if (i3 == i2) {
                return -charAt;
            }
            char charAt2 = charSequence.charAt(i3);
            if (Character.isLowSurrogate(charAt2)) {
                return Character.toCodePoint(charAt, charAt2);
            }
            String valueOf2 = String.valueOf(charSequence);
            throw new IllegalArgumentException(new StringBuilder(String.valueOf(valueOf2).length() + 89).append("Expected low surrogate but got char '").append(charAt2).append("' with value ").append((int) charAt2).append(" at index ").append(i3).append(" in '").append(valueOf2).append("'").toString());
        }
        throw new IndexOutOfBoundsException("Index exceeds specified range");
    }

    private static char[] growBuffer(char[] cArr, int i, int i2) {
        if (i2 < 0) {
            throw new AssertionError("Cannot increase internal buffer any further");
        }
        char[] cArr2 = new char[i2];
        if (i > 0) {
            System.arraycopy(cArr, 0, cArr2, 0, i);
        }
        return cArr2;
    }
}
