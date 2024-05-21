package com.google.android.material.color.utilities;

/* loaded from: classes2.dex */
public class SchemeContent extends DynamicScheme {
    public SchemeContent(Hct hct, boolean z, double d) {
        super(hct, Variant.CONTENT, z, d, TonalPalette.fromHueAndChroma(hct.getHue(), hct.getChroma()), TonalPalette.fromHueAndChroma(hct.getHue(), Math.max(hct.getChroma() - 32.0d, hct.getChroma() * 0.5d)), TonalPalette.fromHct(DislikeAnalyzer.fixIfDisliked(new TemperatureCache(hct).getAnalogousColors(3, 6).get(2))), TonalPalette.fromHueAndChroma(hct.getHue(), hct.getChroma() / 8.0d), TonalPalette.fromHueAndChroma(hct.getHue(), (hct.getChroma() / 8.0d) + 4.0d));
    }
}
