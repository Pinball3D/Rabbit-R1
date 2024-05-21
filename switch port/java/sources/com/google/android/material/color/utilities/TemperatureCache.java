package com.google.android.material.color.utilities;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.function.Function;
import tech.rabbit.r1launcher.BuildConfig;

/* loaded from: classes2.dex */
public final class TemperatureCache {
    private final Hct input;
    private Hct precomputedComplement;
    private List<Hct> precomputedHctsByHue;
    private List<Hct> precomputedHctsByTemp;
    private Map<Hct, Double> precomputedTempsByHct;

    private static boolean isBetween(double d, double d2, double d3) {
        return d2 < d3 ? d2 <= d && d <= d3 : d2 <= d || d <= d3;
    }

    private TemperatureCache() {
        throw new UnsupportedOperationException();
    }

    public TemperatureCache(Hct hct) {
        this.input = hct;
    }

    public Hct getComplement() {
        Hct hct = this.precomputedComplement;
        if (hct != null) {
            return hct;
        }
        double hue = getColdest().getHue();
        double doubleValue = getTempsByHct().get(getColdest()).doubleValue();
        double hue2 = getWarmest().getHue();
        double doubleValue2 = getTempsByHct().get(getWarmest()).doubleValue() - doubleValue;
        boolean isBetween = isBetween(this.input.getHue(), hue, hue2);
        double d = isBetween ? hue2 : hue;
        if (!isBetween) {
            hue = hue2;
        }
        Hct hct2 = getHctsByHue().get((int) Math.round(this.input.getHue()));
        double relativeTemperature = 1.0d - getRelativeTemperature(this.input);
        double d2 = 1000.0d;
        for (double d3 = 0.0d; d3 <= 360.0d; d3 += 1.0d) {
            double sanitizeDegreesDouble = MathUtils.sanitizeDegreesDouble(d + (1.0d * d3));
            if (isBetween(sanitizeDegreesDouble, d, hue)) {
                Hct hct3 = getHctsByHue().get((int) Math.round(sanitizeDegreesDouble));
                double abs = Math.abs(relativeTemperature - ((getTempsByHct().get(hct3).doubleValue() - doubleValue) / doubleValue2));
                if (abs < d2) {
                    hct2 = hct3;
                    d2 = abs;
                }
            }
        }
        this.precomputedComplement = hct2;
        return hct2;
    }

    public List<Hct> getAnalogousColors() {
        return getAnalogousColors(5, 12);
    }

    public List<Hct> getAnalogousColors(int i, int i2) {
        int round = (int) Math.round(this.input.getHue());
        Hct hct = getHctsByHue().get(round);
        double relativeTemperature = getRelativeTemperature(hct);
        ArrayList arrayList = new ArrayList();
        arrayList.add(hct);
        double d = BuildConfig.SENTRY_SAMPLE_RATE;
        double d2 = 0.0d;
        int i3 = 0;
        while (i3 < 360) {
            double relativeTemperature2 = getRelativeTemperature(getHctsByHue().get(MathUtils.sanitizeDegreesInt(round + i3)));
            d2 += Math.abs(relativeTemperature2 - relativeTemperature);
            i3++;
            relativeTemperature = relativeTemperature2;
        }
        double d3 = d2 / i2;
        double relativeTemperature3 = getRelativeTemperature(hct);
        int i4 = 1;
        while (true) {
            if (arrayList.size() >= i2) {
                break;
            }
            Hct hct2 = getHctsByHue().get(MathUtils.sanitizeDegreesInt(round + i4));
            double relativeTemperature4 = getRelativeTemperature(hct2);
            d += Math.abs(relativeTemperature4 - relativeTemperature3);
            boolean z = d >= ((double) arrayList.size()) * d3;
            int i5 = 1;
            while (z && arrayList.size() < i2) {
                arrayList.add(hct2);
                z = d >= ((double) (arrayList.size() + i5)) * d3;
                i5++;
            }
            i4++;
            if (i4 > 360) {
                while (arrayList.size() < i2) {
                    arrayList.add(hct2);
                }
            } else {
                relativeTemperature3 = relativeTemperature4;
            }
        }
        ArrayList arrayList2 = new ArrayList();
        arrayList2.add(this.input);
        int floor = (int) Math.floor((i - 1.0d) / 2.0d);
        for (int i6 = 1; i6 < floor + 1; i6++) {
            int i7 = 0 - i6;
            while (i7 < 0) {
                i7 += arrayList.size();
            }
            if (i7 >= arrayList.size()) {
                i7 %= arrayList.size();
            }
            arrayList2.add(0, (Hct) arrayList.get(i7));
        }
        int i8 = i - floor;
        for (int i9 = 1; i9 < i8; i9++) {
            int i10 = i9;
            while (i10 < 0) {
                i10 += arrayList.size();
            }
            if (i10 >= arrayList.size()) {
                i10 %= arrayList.size();
            }
            arrayList2.add((Hct) arrayList.get(i10));
        }
        return arrayList2;
    }

    public double getRelativeTemperature(Hct hct) {
        double doubleValue = getTempsByHct().get(getWarmest()).doubleValue() - getTempsByHct().get(getColdest()).doubleValue();
        double doubleValue2 = getTempsByHct().get(hct).doubleValue() - getTempsByHct().get(getColdest()).doubleValue();
        if (doubleValue == BuildConfig.SENTRY_SAMPLE_RATE) {
            return 0.5d;
        }
        return doubleValue2 / doubleValue;
    }

    public static double rawTemperature(Hct hct) {
        double[] labFromArgb = ColorUtils.labFromArgb(hct.toInt());
        return ((Math.pow(Math.hypot(labFromArgb[1], labFromArgb[2]), 1.07d) * 0.02d) * Math.cos(Math.toRadians(MathUtils.sanitizeDegreesDouble(MathUtils.sanitizeDegreesDouble(Math.toDegrees(Math.atan2(labFromArgb[2], labFromArgb[1]))) - 50.0d)))) - 0.5d;
    }

    private Hct getColdest() {
        return getHctsByTemp().get(0);
    }

    private List<Hct> getHctsByHue() {
        List<Hct> list = this.precomputedHctsByHue;
        if (list != null) {
            return list;
        }
        ArrayList arrayList = new ArrayList();
        for (double d = BuildConfig.SENTRY_SAMPLE_RATE; d <= 360.0d; d += 1.0d) {
            arrayList.add(Hct.from(d, this.input.getChroma(), this.input.getTone()));
        }
        List<Hct> unmodifiableList = Collections.unmodifiableList(arrayList);
        this.precomputedHctsByHue = unmodifiableList;
        return unmodifiableList;
    }

    private List<Hct> getHctsByTemp() {
        List<Hct> list = this.precomputedHctsByTemp;
        if (list != null) {
            return list;
        }
        ArrayList arrayList = new ArrayList(getHctsByHue());
        arrayList.add(this.input);
        Collections.sort(arrayList, Comparator.comparing(new Function() { // from class: com.google.android.material.color.utilities.TemperatureCache$$ExternalSyntheticLambda0
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return TemperatureCache.this.m5529xb7a75f35((Hct) obj);
            }
        }, new Comparator() { // from class: com.google.android.material.color.utilities.TemperatureCache$$ExternalSyntheticLambda1
            @Override // java.util.Comparator
            public final int compare(Object obj, Object obj2) {
                int compareTo;
                compareTo = ((Double) obj).compareTo((Double) obj2);
                return compareTo;
            }
        }));
        this.precomputedHctsByTemp = arrayList;
        return arrayList;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: lambda$getHctsByTemp$0$com-google-android-material-color-utilities-TemperatureCache, reason: not valid java name */
    public /* synthetic */ Double m5529xb7a75f35(Hct hct) {
        return getTempsByHct().get(hct);
    }

    private Map<Hct, Double> getTempsByHct() {
        Map<Hct, Double> map = this.precomputedTempsByHct;
        if (map != null) {
            return map;
        }
        ArrayList<Hct> arrayList = new ArrayList(getHctsByHue());
        arrayList.add(this.input);
        HashMap hashMap = new HashMap();
        for (Hct hct : arrayList) {
            hashMap.put(hct, Double.valueOf(rawTemperature(hct)));
        }
        this.precomputedTempsByHct = hashMap;
        return hashMap;
    }

    private Hct getWarmest() {
        return getHctsByTemp().get(getHctsByTemp().size() - 1);
    }
}
