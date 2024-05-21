package com.google.common.base;

import com.google.android.exoplayer2.C;
import java.nio.charset.Charset;

@ElementTypesAreNonnullByDefault
/* loaded from: classes2.dex */
public final class Charsets {
    public static final Charset US_ASCII = Charset.forName(C.ASCII_NAME);
    public static final Charset ISO_8859_1 = Charset.forName(C.ISO88591_NAME);
    public static final Charset UTF_8 = Charset.forName(C.UTF8_NAME);
    public static final Charset UTF_16BE = Charset.forName("UTF-16BE");
    public static final Charset UTF_16LE = Charset.forName(C.UTF16LE_NAME);
    public static final Charset UTF_16 = Charset.forName(C.UTF16_NAME);

    private Charsets() {
    }
}
