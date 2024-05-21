package com.google.common.escape;

import com.google.common.base.Preconditions;
import java.util.HashMap;
import java.util.Map;
import javax.annotation.CheckForNull;
import kotlin.jvm.internal.CharCompanionObject;

@ElementTypesAreNonnullByDefault
/* loaded from: classes3.dex */
public final class Escapers {
    private static final Escaper NULL_ESCAPER = new CharEscaper() { // from class: com.google.common.escape.Escapers.1
        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.common.escape.CharEscaper
        @CheckForNull
        public char[] escape(char c) {
            return null;
        }

        @Override // com.google.common.escape.CharEscaper, com.google.common.escape.Escaper
        public String escape(String str) {
            return (String) Preconditions.checkNotNull(str);
        }
    };

    public static Escaper nullEscaper() {
        return NULL_ESCAPER;
    }

    private Escapers() {
    }

    public static Builder builder() {
        return new Builder();
    }

    /* loaded from: classes3.dex */
    public static final class Builder {
        private final Map<Character, String> replacementMap;
        private char safeMax;
        private char safeMin;

        @CheckForNull
        private String unsafeReplacement;

        public Builder setSafeRange(char c, char c2) {
            this.safeMin = c;
            this.safeMax = c2;
            return this;
        }

        public Builder setUnsafeReplacement(String str) {
            this.unsafeReplacement = str;
            return this;
        }

        private Builder() {
            this.replacementMap = new HashMap();
            this.safeMin = (char) 0;
            this.safeMax = CharCompanionObject.MAX_VALUE;
            this.unsafeReplacement = null;
        }

        public Builder addEscape(char c, String str) {
            Preconditions.checkNotNull(str);
            this.replacementMap.put(Character.valueOf(c), str);
            return this;
        }

        public Escaper build() {
            return new ArrayBasedCharEscaper(this.replacementMap, this.safeMin, this.safeMax) { // from class: com.google.common.escape.Escapers.Builder.1

                @CheckForNull
                private final char[] replacementChars;

                @Override // com.google.common.escape.ArrayBasedCharEscaper
                @CheckForNull
                protected char[] escapeUnsafe(char c) {
                    return this.replacementChars;
                }

                {
                    this.replacementChars = Builder.this.unsafeReplacement != null ? Builder.this.unsafeReplacement.toCharArray() : null;
                }
            };
        }
    }

    static UnicodeEscaper asUnicodeEscaper(Escaper escaper) {
        Preconditions.checkNotNull(escaper);
        if (escaper instanceof UnicodeEscaper) {
            return (UnicodeEscaper) escaper;
        }
        if (escaper instanceof CharEscaper) {
            return wrap((CharEscaper) escaper);
        }
        String valueOf = String.valueOf(escaper.getClass().getName());
        throw new IllegalArgumentException(valueOf.length() != 0 ? "Cannot create a UnicodeEscaper from: ".concat(valueOf) : new String("Cannot create a UnicodeEscaper from: "));
    }

    @CheckForNull
    public static String computeReplacement(CharEscaper charEscaper, char c) {
        return stringOrNull(charEscaper.escape(c));
    }

    @CheckForNull
    public static String computeReplacement(UnicodeEscaper unicodeEscaper, int i) {
        return stringOrNull(unicodeEscaper.escape(i));
    }

    @CheckForNull
    private static String stringOrNull(@CheckForNull char[] cArr) {
        if (cArr == null) {
            return null;
        }
        return new String(cArr);
    }

    private static UnicodeEscaper wrap(final CharEscaper charEscaper) {
        return new UnicodeEscaper() { // from class: com.google.common.escape.Escapers.2
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.google.common.escape.UnicodeEscaper
            @CheckForNull
            public char[] escape(int i) {
                if (i < 65536) {
                    return CharEscaper.this.escape((char) i);
                }
                char[] cArr = new char[2];
                Character.toChars(i, cArr, 0);
                char[] escape = CharEscaper.this.escape(cArr[0]);
                char[] escape2 = CharEscaper.this.escape(cArr[1]);
                if (escape == null && escape2 == null) {
                    return null;
                }
                int length = escape != null ? escape.length : 1;
                char[] cArr2 = new char[(escape2 != null ? escape2.length : 1) + length];
                if (escape != null) {
                    for (int i2 = 0; i2 < escape.length; i2++) {
                        cArr2[i2] = escape[i2];
                    }
                } else {
                    cArr2[0] = cArr[0];
                }
                if (escape2 != null) {
                    for (int i3 = 0; i3 < escape2.length; i3++) {
                        cArr2[length + i3] = escape2[i3];
                    }
                } else {
                    cArr2[length] = cArr[1];
                }
                return cArr2;
            }
        };
    }
}
