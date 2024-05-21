package io.sentry.util;

import tech.rabbit.r1launcher.BuildConfig;

/* loaded from: classes3.dex */
public final class SampleRateUtils {
    public static boolean isValidSampleRate(Double d) {
        return isValidRate(d, true);
    }

    public static boolean isValidTracesSampleRate(Double d) {
        return isValidTracesSampleRate(d, true);
    }

    public static boolean isValidTracesSampleRate(Double d, boolean z) {
        return isValidRate(d, z);
    }

    public static boolean isValidProfilesSampleRate(Double d) {
        return isValidRate(d, true);
    }

    private static boolean isValidRate(Double d, boolean z) {
        return d == null ? z : !d.isNaN() && d.doubleValue() >= BuildConfig.SENTRY_SAMPLE_RATE && d.doubleValue() <= 1.0d;
    }
}
