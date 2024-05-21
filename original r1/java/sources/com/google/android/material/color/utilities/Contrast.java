package com.google.android.material.color.utilities;

import tech.rabbit.r1launcher.BuildConfig;

/* loaded from: classes2.dex */
public final class Contrast {
    private static final double CONTRAST_RATIO_EPSILON = 0.04d;
    private static final double LUMINANCE_GAMUT_MAP_TOLERANCE = 0.4d;
    public static final double RATIO_30 = 3.0d;
    public static final double RATIO_45 = 4.5d;
    public static final double RATIO_70 = 7.0d;
    public static final double RATIO_MAX = 21.0d;
    public static final double RATIO_MIN = 1.0d;

    private Contrast() {
    }

    public static double ratioOfYs(double d, double d2) {
        double max = Math.max(d, d2);
        if (max != d2) {
            d = d2;
        }
        return (max + 5.0d) / (d + 5.0d);
    }

    public static double ratioOfTones(double d, double d2) {
        return ratioOfYs(ColorUtils.yFromLstar(d), ColorUtils.yFromLstar(d2));
    }

    public static double lighter(double d, double d2) {
        if (d >= BuildConfig.SENTRY_SAMPLE_RATE && d <= 100.0d) {
            double yFromLstar = ColorUtils.yFromLstar(d);
            double d3 = ((yFromLstar + 5.0d) * d2) - 5.0d;
            if (d3 >= BuildConfig.SENTRY_SAMPLE_RATE && d3 <= 100.0d) {
                double ratioOfYs = ratioOfYs(d3, yFromLstar);
                double abs = Math.abs(ratioOfYs - d2);
                if (ratioOfYs < d2 && abs > CONTRAST_RATIO_EPSILON) {
                    return -1.0d;
                }
                double lstarFromY = ColorUtils.lstarFromY(d3) + LUMINANCE_GAMUT_MAP_TOLERANCE;
                if (lstarFromY >= BuildConfig.SENTRY_SAMPLE_RATE && lstarFromY <= 100.0d) {
                    return lstarFromY;
                }
            }
        }
        return -1.0d;
    }

    public static double lighterUnsafe(double d, double d2) {
        double lighter = lighter(d, d2);
        if (lighter < BuildConfig.SENTRY_SAMPLE_RATE) {
            return 100.0d;
        }
        return lighter;
    }

    public static double darker(double d, double d2) {
        if (d >= BuildConfig.SENTRY_SAMPLE_RATE && d <= 100.0d) {
            double yFromLstar = ColorUtils.yFromLstar(d);
            double d3 = ((yFromLstar + 5.0d) / d2) - 5.0d;
            if (d3 >= BuildConfig.SENTRY_SAMPLE_RATE && d3 <= 100.0d) {
                double ratioOfYs = ratioOfYs(yFromLstar, d3);
                double abs = Math.abs(ratioOfYs - d2);
                if (ratioOfYs < d2 && abs > CONTRAST_RATIO_EPSILON) {
                    return -1.0d;
                }
                double lstarFromY = ColorUtils.lstarFromY(d3) - LUMINANCE_GAMUT_MAP_TOLERANCE;
                if (lstarFromY >= BuildConfig.SENTRY_SAMPLE_RATE && lstarFromY <= 100.0d) {
                    return lstarFromY;
                }
            }
        }
        return -1.0d;
    }

    public static double darkerUnsafe(double d, double d2) {
        return Math.max(BuildConfig.SENTRY_SAMPLE_RATE, darker(d, d2));
    }
}
