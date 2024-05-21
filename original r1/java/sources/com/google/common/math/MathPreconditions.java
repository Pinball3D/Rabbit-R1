package com.google.common.math;

import java.math.BigInteger;
import java.math.RoundingMode;
import tech.rabbit.r1launcher.BuildConfig;

@ElementTypesAreNonnullByDefault
/* loaded from: classes3.dex */
final class MathPreconditions {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static int checkPositive(String str, int i) {
        if (i > 0) {
            return i;
        }
        throw new IllegalArgumentException(new StringBuilder(String.valueOf(str).length() + 26).append(str).append(" (").append(i).append(") must be > 0").toString());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static long checkPositive(String str, long j) {
        if (j > 0) {
            return j;
        }
        throw new IllegalArgumentException(new StringBuilder(String.valueOf(str).length() + 35).append(str).append(" (").append(j).append(") must be > 0").toString());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static BigInteger checkPositive(String str, BigInteger bigInteger) {
        if (bigInteger.signum() > 0) {
            return bigInteger;
        }
        String valueOf = String.valueOf(bigInteger);
        throw new IllegalArgumentException(new StringBuilder(String.valueOf(str).length() + 15 + String.valueOf(valueOf).length()).append(str).append(" (").append(valueOf).append(") must be > 0").toString());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int checkNonNegative(String str, int i) {
        if (i >= 0) {
            return i;
        }
        throw new IllegalArgumentException(new StringBuilder(String.valueOf(str).length() + 27).append(str).append(" (").append(i).append(") must be >= 0").toString());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static long checkNonNegative(String str, long j) {
        if (j >= 0) {
            return j;
        }
        throw new IllegalArgumentException(new StringBuilder(String.valueOf(str).length() + 36).append(str).append(" (").append(j).append(") must be >= 0").toString());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static BigInteger checkNonNegative(String str, BigInteger bigInteger) {
        if (bigInteger.signum() >= 0) {
            return bigInteger;
        }
        String valueOf = String.valueOf(bigInteger);
        throw new IllegalArgumentException(new StringBuilder(String.valueOf(str).length() + 16 + String.valueOf(valueOf).length()).append(str).append(" (").append(valueOf).append(") must be >= 0").toString());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static double checkNonNegative(String str, double d) {
        if (d >= BuildConfig.SENTRY_SAMPLE_RATE) {
            return d;
        }
        throw new IllegalArgumentException(new StringBuilder(String.valueOf(str).length() + 40).append(str).append(" (").append(d).append(") must be >= 0").toString());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void checkRoundingUnnecessary(boolean z) {
        if (!z) {
            throw new ArithmeticException("mode was UNNECESSARY, but rounding was necessary");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void checkInRangeForRoundingInputs(boolean z, double d, RoundingMode roundingMode) {
        if (z) {
            return;
        }
        String valueOf = String.valueOf(roundingMode);
        throw new ArithmeticException(new StringBuilder(String.valueOf(valueOf).length() + 83).append("rounded value is out of range for input ").append(d).append(" and rounding mode ").append(valueOf).toString());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void checkNoOverflow(boolean z, String str, int i, int i2) {
        if (!z) {
            throw new ArithmeticException(new StringBuilder(String.valueOf(str).length() + 36).append("overflow: ").append(str).append("(").append(i).append(", ").append(i2).append(")").toString());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void checkNoOverflow(boolean z, String str, long j, long j2) {
        if (!z) {
            throw new ArithmeticException(new StringBuilder(String.valueOf(str).length() + 54).append("overflow: ").append(str).append("(").append(j).append(", ").append(j2).append(")").toString());
        }
    }

    private MathPreconditions() {
    }
}
