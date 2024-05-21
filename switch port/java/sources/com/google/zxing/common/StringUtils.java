package com.google.zxing.common;

import java.nio.charset.Charset;

/* loaded from: classes3.dex */
public final class StringUtils {
    private static final boolean ASSUME_SHIFT_JIS;
    private static final String EUC_JP = "EUC_JP";
    public static final String GB2312 = "GB2312";
    private static final String ISO88591 = "ISO8859_1";
    private static final String PLATFORM_DEFAULT_ENCODING;
    public static final String SHIFT_JIS = "SJIS";
    private static final String UTF8 = "UTF8";

    static {
        String name = Charset.defaultCharset().name();
        PLATFORM_DEFAULT_ENCODING = name;
        ASSUME_SHIFT_JIS = SHIFT_JIS.equalsIgnoreCase(name) || EUC_JP.equalsIgnoreCase(name);
    }

    private StringUtils() {
    }

    /* JADX WARN: Removed duplicated region for block: B:120:0x00f2 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:72:0x008f  */
    /* JADX WARN: Removed duplicated region for block: B:85:0x00a9  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.lang.String guessEncoding(byte[] r21, java.util.Map<com.google.zxing.DecodeHintType, ?> r22) {
        /*
            Method dump skipped, instructions count: 319
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.zxing.common.StringUtils.guessEncoding(byte[], java.util.Map):java.lang.String");
    }
}
