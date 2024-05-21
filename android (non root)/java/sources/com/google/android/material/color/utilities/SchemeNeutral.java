package com.google.android.material.color.utilities;

/* loaded from: classes2.dex */
public class SchemeNeutral extends DynamicScheme {
    public SchemeNeutral(Hct hct, boolean z, double d) {
        super(hct, Variant.NEUTRAL, z, d, TonalPalette.fromHueAndChroma(hct.getHue(), 12.0d), TonalPalette.fromHueAndChroma(hct.getHue(), 8.0d), TonalPalette.fromHueAndChroma(hct.getHue(), 16.0d), TonalPalette.fromHueAndChroma(hct.getHue(), 2.0d), TonalPalette.fromHueAndChroma(hct.getHue(), 2.0d));
    }
}
