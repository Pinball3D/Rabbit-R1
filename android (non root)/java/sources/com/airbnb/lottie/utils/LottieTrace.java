package com.airbnb.lottie.utils;

import androidx.core.os.TraceCompat;

/* loaded from: classes2.dex */
public class LottieTrace {
    private static final int MAX_DEPTH = 5;
    private final String[] sections = new String[5];
    private final long[] startTimeNs = new long[5];
    private int traceDepth = 0;
    private int depthPastMaxDepth = 0;

    public void beginSection(String str) {
        int i = this.traceDepth;
        if (i == 5) {
            this.depthPastMaxDepth++;
            return;
        }
        this.sections[i] = str;
        this.startTimeNs[i] = System.nanoTime();
        TraceCompat.beginSection(str);
        this.traceDepth++;
    }

    public float endSection(String str) {
        int i = this.depthPastMaxDepth;
        if (i > 0) {
            this.depthPastMaxDepth = i - 1;
            return 0.0f;
        }
        int i2 = this.traceDepth - 1;
        this.traceDepth = i2;
        if (i2 == -1) {
            throw new IllegalStateException("Can't end trace section. There are none.");
        }
        if (!str.equals(this.sections[i2])) {
            throw new IllegalStateException("Unbalanced trace call " + str + ". Expected " + this.sections[this.traceDepth] + ".");
        }
        TraceCompat.endSection();
        return ((float) (System.nanoTime() - this.startTimeNs[this.traceDepth])) / 1000000.0f;
    }
}
