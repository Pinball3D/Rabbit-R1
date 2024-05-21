package androidx.core.text;

import android.text.SpannableStringBuilder;
import com.google.common.base.Ascii;
import java.util.Locale;
import kotlin.text.Typography;

/* loaded from: classes.dex */
public final class BidiFormatter {
    private static final int DEFAULT_FLAGS = 2;
    static final BidiFormatter DEFAULT_LTR_INSTANCE;
    static final BidiFormatter DEFAULT_RTL_INSTANCE;
    static final TextDirectionHeuristicCompat DEFAULT_TEXT_DIRECTION_HEURISTIC;
    private static final int DIR_LTR = -1;
    private static final int DIR_RTL = 1;
    private static final int DIR_UNKNOWN = 0;
    private static final String EMPTY_STRING = "";
    private static final int FLAG_STEREO_RESET = 2;
    private static final char LRE = 8234;
    private static final char LRM = 8206;
    private static final String LRM_STRING;
    private static final char PDF = 8236;
    private static final char RLE = 8235;
    private static final char RLM = 8207;
    private static final String RLM_STRING;
    private final TextDirectionHeuristicCompat mDefaultTextDirectionHeuristicCompat;
    private final int mFlags;
    private final boolean mIsRtlContext;

    public boolean getStereoReset() {
        return (this.mFlags & 2) != 0;
    }

    public boolean isRtlContext() {
        return this.mIsRtlContext;
    }

    static {
        TextDirectionHeuristicCompat textDirectionHeuristicCompat = TextDirectionHeuristicsCompat.FIRSTSTRONG_LTR;
        DEFAULT_TEXT_DIRECTION_HEURISTIC = textDirectionHeuristicCompat;
        LRM_STRING = Character.toString(LRM);
        RLM_STRING = Character.toString(RLM);
        DEFAULT_LTR_INSTANCE = new BidiFormatter(false, 2, textDirectionHeuristicCompat);
        DEFAULT_RTL_INSTANCE = new BidiFormatter(true, 2, textDirectionHeuristicCompat);
    }

    /* loaded from: classes.dex */
    public static final class Builder {
        private int mFlags;
        private boolean mIsRtlContext;
        private TextDirectionHeuristicCompat mTextDirectionHeuristicCompat;

        public Builder setTextDirectionHeuristic(TextDirectionHeuristicCompat textDirectionHeuristicCompat) {
            this.mTextDirectionHeuristicCompat = textDirectionHeuristicCompat;
            return this;
        }

        public Builder stereoReset(boolean z) {
            if (z) {
                this.mFlags |= 2;
            } else {
                this.mFlags &= -3;
            }
            return this;
        }

        public Builder() {
            initialize(BidiFormatter.isRtlLocale(Locale.getDefault()));
        }

        public Builder(boolean z) {
            initialize(z);
        }

        public Builder(Locale locale) {
            initialize(BidiFormatter.isRtlLocale(locale));
        }

        private void initialize(boolean z) {
            this.mIsRtlContext = z;
            this.mTextDirectionHeuristicCompat = BidiFormatter.DEFAULT_TEXT_DIRECTION_HEURISTIC;
            this.mFlags = 2;
        }

        private static BidiFormatter getDefaultInstanceFromContext(boolean z) {
            return z ? BidiFormatter.DEFAULT_RTL_INSTANCE : BidiFormatter.DEFAULT_LTR_INSTANCE;
        }

        public BidiFormatter build() {
            if (this.mFlags == 2 && this.mTextDirectionHeuristicCompat == BidiFormatter.DEFAULT_TEXT_DIRECTION_HEURISTIC) {
                return getDefaultInstanceFromContext(this.mIsRtlContext);
            }
            return new BidiFormatter(this.mIsRtlContext, this.mFlags, this.mTextDirectionHeuristicCompat);
        }
    }

    public static BidiFormatter getInstance() {
        return new Builder().build();
    }

    public static BidiFormatter getInstance(boolean z) {
        return new Builder(z).build();
    }

    public static BidiFormatter getInstance(Locale locale) {
        return new Builder(locale).build();
    }

    BidiFormatter(boolean z, int i, TextDirectionHeuristicCompat textDirectionHeuristicCompat) {
        this.mIsRtlContext = z;
        this.mFlags = i;
        this.mDefaultTextDirectionHeuristicCompat = textDirectionHeuristicCompat;
    }

    private String markAfter(CharSequence charSequence, TextDirectionHeuristicCompat textDirectionHeuristicCompat) {
        boolean isRtl = textDirectionHeuristicCompat.isRtl(charSequence, 0, charSequence.length());
        return (this.mIsRtlContext || !(isRtl || getExitDir(charSequence) == 1)) ? this.mIsRtlContext ? (!isRtl || getExitDir(charSequence) == -1) ? RLM_STRING : "" : "" : LRM_STRING;
    }

    private String markBefore(CharSequence charSequence, TextDirectionHeuristicCompat textDirectionHeuristicCompat) {
        boolean isRtl = textDirectionHeuristicCompat.isRtl(charSequence, 0, charSequence.length());
        return (this.mIsRtlContext || !(isRtl || getEntryDir(charSequence) == 1)) ? this.mIsRtlContext ? (!isRtl || getEntryDir(charSequence) == -1) ? RLM_STRING : "" : "" : LRM_STRING;
    }

    public boolean isRtl(String str) {
        return isRtl((CharSequence) str);
    }

    public boolean isRtl(CharSequence charSequence) {
        return this.mDefaultTextDirectionHeuristicCompat.isRtl(charSequence, 0, charSequence.length());
    }

    public String unicodeWrap(String str, TextDirectionHeuristicCompat textDirectionHeuristicCompat, boolean z) {
        if (str == null) {
            return null;
        }
        return unicodeWrap((CharSequence) str, textDirectionHeuristicCompat, z).toString();
    }

    public CharSequence unicodeWrap(CharSequence charSequence, TextDirectionHeuristicCompat textDirectionHeuristicCompat, boolean z) {
        if (charSequence == null) {
            return null;
        }
        boolean isRtl = textDirectionHeuristicCompat.isRtl(charSequence, 0, charSequence.length());
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
        if (getStereoReset() && z) {
            spannableStringBuilder.append((CharSequence) markBefore(charSequence, isRtl ? TextDirectionHeuristicsCompat.RTL : TextDirectionHeuristicsCompat.LTR));
        }
        if (isRtl != this.mIsRtlContext) {
            spannableStringBuilder.append(isRtl ? RLE : LRE);
            spannableStringBuilder.append(charSequence);
            spannableStringBuilder.append(PDF);
        } else {
            spannableStringBuilder.append(charSequence);
        }
        if (z) {
            spannableStringBuilder.append((CharSequence) markAfter(charSequence, isRtl ? TextDirectionHeuristicsCompat.RTL : TextDirectionHeuristicsCompat.LTR));
        }
        return spannableStringBuilder;
    }

    public String unicodeWrap(String str, TextDirectionHeuristicCompat textDirectionHeuristicCompat) {
        return unicodeWrap(str, textDirectionHeuristicCompat, true);
    }

    public CharSequence unicodeWrap(CharSequence charSequence, TextDirectionHeuristicCompat textDirectionHeuristicCompat) {
        return unicodeWrap(charSequence, textDirectionHeuristicCompat, true);
    }

    public String unicodeWrap(String str, boolean z) {
        return unicodeWrap(str, this.mDefaultTextDirectionHeuristicCompat, z);
    }

    public CharSequence unicodeWrap(CharSequence charSequence, boolean z) {
        return unicodeWrap(charSequence, this.mDefaultTextDirectionHeuristicCompat, z);
    }

    public String unicodeWrap(String str) {
        return unicodeWrap(str, this.mDefaultTextDirectionHeuristicCompat, true);
    }

    public CharSequence unicodeWrap(CharSequence charSequence) {
        return unicodeWrap(charSequence, this.mDefaultTextDirectionHeuristicCompat, true);
    }

    static boolean isRtlLocale(Locale locale) {
        return TextUtilsCompat.getLayoutDirectionFromLocale(locale) == 1;
    }

    private static int getExitDir(CharSequence charSequence) {
        return new DirectionalityEstimator(charSequence, false).getExitDir();
    }

    private static int getEntryDir(CharSequence charSequence) {
        return new DirectionalityEstimator(charSequence, false).getEntryDir();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static class DirectionalityEstimator {
        private int charIndex;
        private final boolean isHtml;
        private char lastChar;
        private final int length;
        private final CharSequence text;
        private static final int DIR_TYPE_CACHE_SIZE = 1792;
        private static final byte[] DIR_TYPE_CACHE = new byte[DIR_TYPE_CACHE_SIZE];

        static {
            for (int i = 0; i < DIR_TYPE_CACHE_SIZE; i++) {
                DIR_TYPE_CACHE[i] = Character.getDirectionality(i);
            }
        }

        DirectionalityEstimator(CharSequence charSequence, boolean z) {
            this.text = charSequence;
            this.isHtml = z;
            this.length = charSequence.length();
        }

        /* JADX WARN: Failed to find 'out' block for switch in B:46:0x0045. Please report as an issue. */
        int getEntryDir() {
            this.charIndex = 0;
            int i = 0;
            int i2 = 0;
            int i3 = 0;
            while (this.charIndex < this.length && i == 0) {
                byte dirTypeForward = dirTypeForward();
                if (dirTypeForward != 0) {
                    if (dirTypeForward == 1 || dirTypeForward == 2) {
                        if (i3 == 0) {
                            return 1;
                        }
                    } else if (dirTypeForward != 9) {
                        switch (dirTypeForward) {
                            case 14:
                            case 15:
                                i3++;
                                i2 = -1;
                                continue;
                            case 16:
                            case 17:
                                i3++;
                                i2 = 1;
                                continue;
                            case 18:
                                i3--;
                                i2 = 0;
                                continue;
                        }
                    }
                } else if (i3 == 0) {
                    return -1;
                }
                i = i3;
            }
            if (i == 0) {
                return 0;
            }
            if (i2 != 0) {
                return i2;
            }
            while (this.charIndex > 0) {
                switch (dirTypeBackward()) {
                    case 14:
                    case 15:
                        if (i == i3) {
                            return -1;
                        }
                        i3--;
                    case 16:
                    case 17:
                        if (i == i3) {
                            return 1;
                        }
                        i3--;
                    case 18:
                        i3++;
                }
            }
            return 0;
        }

        /* JADX WARN: Failed to find 'out' block for switch in B:33:0x001c. Please report as an issue. */
        int getExitDir() {
            this.charIndex = this.length;
            int i = 0;
            while (true) {
                int i2 = i;
                while (this.charIndex > 0) {
                    byte dirTypeBackward = dirTypeBackward();
                    if (dirTypeBackward != 0) {
                        if (dirTypeBackward == 1 || dirTypeBackward == 2) {
                            if (i == 0) {
                                return 1;
                            }
                            if (i2 == 0) {
                                break;
                            }
                        } else if (dirTypeBackward != 9) {
                            switch (dirTypeBackward) {
                                case 14:
                                case 15:
                                    if (i2 == i) {
                                        return -1;
                                    }
                                    i--;
                                    break;
                                case 16:
                                case 17:
                                    if (i2 == i) {
                                        return 1;
                                    }
                                    i--;
                                    break;
                                case 18:
                                    i++;
                                    break;
                                default:
                                    if (i2 != 0) {
                                        break;
                                    } else {
                                        break;
                                    }
                            }
                        } else {
                            continue;
                        }
                    } else {
                        if (i == 0) {
                            return -1;
                        }
                        if (i2 == 0) {
                            break;
                        }
                    }
                }
                return 0;
            }
        }

        private static byte getCachedDirectionality(char c) {
            return c < DIR_TYPE_CACHE_SIZE ? DIR_TYPE_CACHE[c] : Character.getDirectionality(c);
        }

        byte dirTypeForward() {
            char charAt = this.text.charAt(this.charIndex);
            this.lastChar = charAt;
            if (Character.isHighSurrogate(charAt)) {
                int codePointAt = Character.codePointAt(this.text, this.charIndex);
                this.charIndex += Character.charCount(codePointAt);
                return Character.getDirectionality(codePointAt);
            }
            this.charIndex++;
            byte cachedDirectionality = getCachedDirectionality(this.lastChar);
            if (!this.isHtml) {
                return cachedDirectionality;
            }
            char c = this.lastChar;
            if (c == '<') {
                return skipTagForward();
            }
            return c == '&' ? skipEntityForward() : cachedDirectionality;
        }

        byte dirTypeBackward() {
            char charAt = this.text.charAt(this.charIndex - 1);
            this.lastChar = charAt;
            if (Character.isLowSurrogate(charAt)) {
                int codePointBefore = Character.codePointBefore(this.text, this.charIndex);
                this.charIndex -= Character.charCount(codePointBefore);
                return Character.getDirectionality(codePointBefore);
            }
            this.charIndex--;
            byte cachedDirectionality = getCachedDirectionality(this.lastChar);
            if (!this.isHtml) {
                return cachedDirectionality;
            }
            char c = this.lastChar;
            if (c == '>') {
                return skipTagBackward();
            }
            return c == ';' ? skipEntityBackward() : cachedDirectionality;
        }

        private byte skipTagForward() {
            char charAt;
            int i = this.charIndex;
            while (true) {
                int i2 = this.charIndex;
                if (i2 >= this.length) {
                    this.charIndex = i;
                    this.lastChar = Typography.less;
                    return Ascii.CR;
                }
                CharSequence charSequence = this.text;
                this.charIndex = i2 + 1;
                char charAt2 = charSequence.charAt(i2);
                this.lastChar = charAt2;
                if (charAt2 == '>') {
                    return Ascii.FF;
                }
                if (charAt2 == '\"' || charAt2 == '\'') {
                    do {
                        int i3 = this.charIndex;
                        if (i3 < this.length) {
                            CharSequence charSequence2 = this.text;
                            this.charIndex = i3 + 1;
                            charAt = charSequence2.charAt(i3);
                            this.lastChar = charAt;
                        }
                    } while (charAt != charAt2);
                }
            }
        }

        private byte skipTagBackward() {
            char charAt;
            int i = this.charIndex;
            while (true) {
                int i2 = this.charIndex;
                if (i2 <= 0) {
                    break;
                }
                CharSequence charSequence = this.text;
                int i3 = i2 - 1;
                this.charIndex = i3;
                char charAt2 = charSequence.charAt(i3);
                this.lastChar = charAt2;
                if (charAt2 == '<') {
                    return Ascii.FF;
                }
                if (charAt2 == '>') {
                    break;
                }
                if (charAt2 == '\"' || charAt2 == '\'') {
                    do {
                        int i4 = this.charIndex;
                        if (i4 > 0) {
                            CharSequence charSequence2 = this.text;
                            int i5 = i4 - 1;
                            this.charIndex = i5;
                            charAt = charSequence2.charAt(i5);
                            this.lastChar = charAt;
                        }
                    } while (charAt != charAt2);
                }
            }
            this.charIndex = i;
            this.lastChar = Typography.greater;
            return Ascii.CR;
        }

        private byte skipEntityForward() {
            char charAt;
            do {
                int i = this.charIndex;
                if (i >= this.length) {
                    return Ascii.FF;
                }
                CharSequence charSequence = this.text;
                this.charIndex = i + 1;
                charAt = charSequence.charAt(i);
                this.lastChar = charAt;
            } while (charAt != ';');
            return Ascii.FF;
        }

        private byte skipEntityBackward() {
            char charAt;
            int i = this.charIndex;
            do {
                int i2 = this.charIndex;
                if (i2 <= 0) {
                    break;
                }
                CharSequence charSequence = this.text;
                int i3 = i2 - 1;
                this.charIndex = i3;
                charAt = charSequence.charAt(i3);
                this.lastChar = charAt;
                if (charAt == '&') {
                    return Ascii.FF;
                }
            } while (charAt != ';');
            this.charIndex = i;
            this.lastChar = ';';
            return Ascii.CR;
        }
    }
}
