package com.google.android.exoplayer2.util;

import android.os.Trace;

/* loaded from: classes2.dex */
public final class TraceUtil {
    private TraceUtil() {
    }

    public static void beginSection(String str) {
        if (Util.SDK_INT >= 18) {
            beginSectionV18(str);
        }
    }

    public static void endSection() {
        if (Util.SDK_INT >= 18) {
            endSectionV18();
        }
    }

    private static void beginSectionV18(String str) {
        Trace.beginSection(str);
    }

    private static void endSectionV18() {
        Trace.endSection();
    }
}
