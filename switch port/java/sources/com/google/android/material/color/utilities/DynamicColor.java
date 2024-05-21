package com.google.android.material.color.utilities;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.function.Function;
import tech.rabbit.r1launcher.BuildConfig;

/* loaded from: classes2.dex */
public final class DynamicColor {
    public final Function<DynamicScheme, DynamicColor> background;
    public final ContrastCurve contrastCurve;
    private final HashMap<DynamicScheme, Hct> hctCache;
    public final boolean isBackground;
    public final String name;
    public final Function<DynamicScheme, Double> opacity;
    public final Function<DynamicScheme, TonalPalette> palette;
    public final Function<DynamicScheme, DynamicColor> secondBackground;
    public final Function<DynamicScheme, Double> tone;
    public final Function<DynamicScheme, ToneDeltaPair> toneDeltaPair;

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ TonalPalette lambda$fromArgb$0(TonalPalette tonalPalette, DynamicScheme dynamicScheme) {
        return tonalPalette;
    }

    public DynamicColor(String str, Function<DynamicScheme, TonalPalette> function, Function<DynamicScheme, Double> function2, boolean z, Function<DynamicScheme, DynamicColor> function3, Function<DynamicScheme, DynamicColor> function4, ContrastCurve contrastCurve, Function<DynamicScheme, ToneDeltaPair> function5) {
        this.hctCache = new HashMap<>();
        this.name = str;
        this.palette = function;
        this.tone = function2;
        this.isBackground = z;
        this.background = function3;
        this.secondBackground = function4;
        this.contrastCurve = contrastCurve;
        this.toneDeltaPair = function5;
        this.opacity = null;
    }

    public DynamicColor(String str, Function<DynamicScheme, TonalPalette> function, Function<DynamicScheme, Double> function2, boolean z, Function<DynamicScheme, DynamicColor> function3, Function<DynamicScheme, DynamicColor> function4, ContrastCurve contrastCurve, Function<DynamicScheme, ToneDeltaPair> function5, Function<DynamicScheme, Double> function6) {
        this.hctCache = new HashMap<>();
        this.name = str;
        this.palette = function;
        this.tone = function2;
        this.isBackground = z;
        this.background = function3;
        this.secondBackground = function4;
        this.contrastCurve = contrastCurve;
        this.toneDeltaPair = function5;
        this.opacity = function6;
    }

    public static DynamicColor fromPalette(String str, Function<DynamicScheme, TonalPalette> function, Function<DynamicScheme, Double> function2) {
        return new DynamicColor(str, function, function2, false, null, null, null, null);
    }

    public static DynamicColor fromPalette(String str, Function<DynamicScheme, TonalPalette> function, Function<DynamicScheme, Double> function2, boolean z) {
        return new DynamicColor(str, function, function2, z, null, null, null, null);
    }

    public static DynamicColor fromArgb(String str, int i) {
        final Hct fromInt = Hct.fromInt(i);
        final TonalPalette fromInt2 = TonalPalette.fromInt(i);
        return fromPalette(str, new Function() { // from class: com.google.android.material.color.utilities.DynamicColor$$ExternalSyntheticLambda0
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return DynamicColor.lambda$fromArgb$0(TonalPalette.this, (DynamicScheme) obj);
            }
        }, new Function() { // from class: com.google.android.material.color.utilities.DynamicColor$$ExternalSyntheticLambda1
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                Double valueOf;
                valueOf = Double.valueOf(Hct.this.getTone());
                return valueOf;
            }
        });
    }

    public int getArgb(DynamicScheme dynamicScheme) {
        int i = getHct(dynamicScheme).toInt();
        Function<DynamicScheme, Double> function = this.opacity;
        if (function == null) {
            return i;
        }
        return (MathUtils.clampInt(0, 255, (int) Math.round(function.apply(dynamicScheme).doubleValue() * 255.0d)) << 24) | (16777215 & i);
    }

    public Hct getHct(DynamicScheme dynamicScheme) {
        Hct hct = this.hctCache.get(dynamicScheme);
        if (hct != null) {
            return hct;
        }
        Hct hct2 = this.palette.apply(dynamicScheme).getHct(getTone(dynamicScheme));
        if (this.hctCache.size() > 4) {
            this.hctCache.clear();
        }
        this.hctCache.put(dynamicScheme, hct2);
        return hct2;
    }

    public double getTone(DynamicScheme dynamicScheme) {
        double d;
        double min;
        boolean z = dynamicScheme.contrastLevel < BuildConfig.SENTRY_SAMPLE_RATE;
        Function<DynamicScheme, ToneDeltaPair> function = this.toneDeltaPair;
        if (function != null) {
            ToneDeltaPair apply = function.apply(dynamicScheme);
            DynamicColor roleA = apply.getRoleA();
            DynamicColor roleB = apply.getRoleB();
            double delta = apply.getDelta();
            TonePolarity polarity = apply.getPolarity();
            boolean stayTogether = apply.getStayTogether();
            double tone = this.background.apply(dynamicScheme).getTone(dynamicScheme);
            boolean z2 = polarity == TonePolarity.NEARER || (polarity == TonePolarity.LIGHTER && !dynamicScheme.isDark) || (polarity == TonePolarity.DARKER && dynamicScheme.isDark);
            DynamicColor dynamicColor = z2 ? roleA : roleB;
            DynamicColor dynamicColor2 = z2 ? roleB : roleA;
            boolean equals = this.name.equals(dynamicColor.name);
            double d2 = dynamicScheme.isDark ? 1.0d : -1.0d;
            double contrast = dynamicColor.contrastCurve.getContrast(dynamicScheme.contrastLevel);
            double contrast2 = dynamicColor2.contrastCurve.getContrast(dynamicScheme.contrastLevel);
            double doubleValue = dynamicColor.tone.apply(dynamicScheme).doubleValue();
            if (Contrast.ratioOfTones(tone, doubleValue) < contrast) {
                doubleValue = foregroundTone(tone, contrast);
            }
            double doubleValue2 = dynamicColor2.tone.apply(dynamicScheme).doubleValue();
            if (Contrast.ratioOfTones(tone, doubleValue2) < contrast2) {
                doubleValue2 = foregroundTone(tone, contrast2);
            }
            if (z) {
                doubleValue = foregroundTone(tone, contrast);
                doubleValue2 = foregroundTone(tone, contrast2);
            }
            if ((doubleValue2 - doubleValue) * d2 < delta) {
                double d3 = delta * d2;
                doubleValue2 = MathUtils.clampDouble(BuildConfig.SENTRY_SAMPLE_RATE, 100.0d, doubleValue + d3);
                if ((doubleValue2 - doubleValue) * d2 < delta) {
                    doubleValue = MathUtils.clampDouble(BuildConfig.SENTRY_SAMPLE_RATE, 100.0d, doubleValue2 - d3);
                }
            }
            if (50.0d > doubleValue || doubleValue >= 60.0d) {
                if (50.0d > doubleValue2 || doubleValue2 >= 60.0d) {
                    d = doubleValue2;
                } else if (!stayTogether) {
                    d = d2 > BuildConfig.SENTRY_SAMPLE_RATE ? 60.0d : 49.0d;
                } else if (d2 > BuildConfig.SENTRY_SAMPLE_RATE) {
                    d = Math.max(doubleValue2, (delta * d2) + 60.0d);
                    doubleValue = 60.0d;
                } else {
                    min = Math.min(doubleValue2, (delta * d2) + 49.0d);
                    d = min;
                    doubleValue = 49.0d;
                }
            } else if (d2 > BuildConfig.SENTRY_SAMPLE_RATE) {
                d = Math.max(doubleValue2, (delta * d2) + 60.0d);
                doubleValue = 60.0d;
            } else {
                min = Math.min(doubleValue2, (delta * d2) + 49.0d);
                d = min;
                doubleValue = 49.0d;
            }
            return equals ? doubleValue : d;
        }
        double doubleValue3 = this.tone.apply(dynamicScheme).doubleValue();
        Function<DynamicScheme, DynamicColor> function2 = this.background;
        if (function2 == null) {
            return doubleValue3;
        }
        double tone2 = function2.apply(dynamicScheme).getTone(dynamicScheme);
        double contrast3 = this.contrastCurve.getContrast(dynamicScheme.contrastLevel);
        if (Contrast.ratioOfTones(tone2, doubleValue3) < contrast3) {
            doubleValue3 = foregroundTone(tone2, contrast3);
        }
        if (z) {
            doubleValue3 = foregroundTone(tone2, contrast3);
        }
        double d4 = (!this.isBackground || 50.0d > doubleValue3 || doubleValue3 >= 60.0d) ? doubleValue3 : Contrast.ratioOfTones(49.0d, tone2) >= contrast3 ? 49.0d : 60.0d;
        if (this.secondBackground == null) {
            return d4;
        }
        double tone3 = this.background.apply(dynamicScheme).getTone(dynamicScheme);
        double tone4 = this.secondBackground.apply(dynamicScheme).getTone(dynamicScheme);
        double max = Math.max(tone3, tone4);
        double min2 = Math.min(tone3, tone4);
        if (Contrast.ratioOfTones(max, d4) >= contrast3 && Contrast.ratioOfTones(min2, d4) >= contrast3) {
            return d4;
        }
        double lighter = Contrast.lighter(max, contrast3);
        double darker = Contrast.darker(min2, contrast3);
        ArrayList arrayList = new ArrayList();
        if (lighter != -1.0d) {
            arrayList.add(Double.valueOf(lighter));
        }
        if (darker != -1.0d) {
            arrayList.add(Double.valueOf(darker));
        }
        if (tonePrefersLightForeground(tone3) || tonePrefersLightForeground(tone4)) {
            if (lighter == -1.0d) {
                return 100.0d;
            }
            return lighter;
        }
        if (arrayList.size() == 1) {
            return ((Double) arrayList.get(0)).doubleValue();
        }
        return darker == -1.0d ? BuildConfig.SENTRY_SAMPLE_RATE : darker;
    }

    public static double foregroundTone(double d, double d2) {
        double lighterUnsafe = Contrast.lighterUnsafe(d, d2);
        double darkerUnsafe = Contrast.darkerUnsafe(d, d2);
        double ratioOfTones = Contrast.ratioOfTones(lighterUnsafe, d);
        double ratioOfTones2 = Contrast.ratioOfTones(darkerUnsafe, d);
        if (tonePrefersLightForeground(d)) {
            return (ratioOfTones >= d2 || ratioOfTones >= ratioOfTones2 || ((Math.abs(ratioOfTones - ratioOfTones2) > 0.1d ? 1 : (Math.abs(ratioOfTones - ratioOfTones2) == 0.1d ? 0 : -1)) < 0 && (ratioOfTones > d2 ? 1 : (ratioOfTones == d2 ? 0 : -1)) < 0 && (ratioOfTones2 > d2 ? 1 : (ratioOfTones2 == d2 ? 0 : -1)) < 0)) ? lighterUnsafe : darkerUnsafe;
        }
        return (ratioOfTones2 >= d2 || ratioOfTones2 >= ratioOfTones) ? darkerUnsafe : lighterUnsafe;
    }

    public static double enableLightForeground(double d) {
        if (!tonePrefersLightForeground(d) || toneAllowsLightForeground(d)) {
            return d;
        }
        return 49.0d;
    }

    public static boolean tonePrefersLightForeground(double d) {
        return Math.round(d) < 60;
    }

    public static boolean toneAllowsLightForeground(double d) {
        return Math.round(d) <= 49;
    }
}
