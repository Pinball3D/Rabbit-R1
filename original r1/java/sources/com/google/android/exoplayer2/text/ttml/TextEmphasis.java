package com.google.android.exoplayer2.text.ttml;

import android.text.TextUtils;
import com.google.common.base.Ascii;
import com.google.common.collect.ImmutableSet;
import java.lang.annotation.Documented;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
import java.util.regex.Pattern;

/* loaded from: classes2.dex */
final class TextEmphasis {
    public static final int MARK_SHAPE_AUTO = -1;
    public static final int POSITION_OUTSIDE = -2;
    public final int markFill;
    public final int markShape;
    public final int position;
    private static final Pattern WHITESPACE_PATTERN = Pattern.compile("\\s+");
    private static final ImmutableSet<String> SINGLE_STYLE_VALUES = ImmutableSet.of("auto", "none");
    private static final ImmutableSet<String> MARK_SHAPE_VALUES = ImmutableSet.of("dot", "sesame", "circle");
    private static final ImmutableSet<String> MARK_FILL_VALUES = ImmutableSet.of("filled", "open");
    private static final ImmutableSet<String> POSITION_VALUES = ImmutableSet.of("after", "before", "outside");

    @Target({ElementType.TYPE_USE})
    @Documented
    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes2.dex */
    public @interface Position {
    }

    private TextEmphasis(int i, int i2, int i3) {
        this.markShape = i;
        this.markFill = i2;
        this.position = i3;
    }

    public static TextEmphasis parse(String str) {
        if (str == null) {
            return null;
        }
        String lowerCase = Ascii.toLowerCase(str.trim());
        if (lowerCase.isEmpty()) {
            return null;
        }
        return parseWords(ImmutableSet.copyOf(TextUtils.split(lowerCase, WHITESPACE_PATTERN)));
    }

    /* JADX WARN: Code restructure failed: missing block: B:46:0x00ed, code lost:
    
        if (r9.equals("dot") != false) goto L70;
     */
    /* JADX WARN: Removed duplicated region for block: B:41:0x00dc  */
    /* JADX WARN: Removed duplicated region for block: B:48:0x0105  */
    /* JADX WARN: Removed duplicated region for block: B:57:0x00fa  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static com.google.android.exoplayer2.text.ttml.TextEmphasis parseWords(com.google.common.collect.ImmutableSet<java.lang.String> r9) {
        /*
            Method dump skipped, instructions count: 272
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.text.ttml.TextEmphasis.parseWords(com.google.common.collect.ImmutableSet):com.google.android.exoplayer2.text.ttml.TextEmphasis");
    }
}
