package com.google.android.material.color.utilities;

/* loaded from: classes2.dex */
public class SchemeFruitSalad extends DynamicScheme {
    public SchemeFruitSalad(Hct hct, boolean z, double d) {
        super(hct, Variant.FRUIT_SALAD, z, d, TonalPalette.fromHueAndChroma(MathUtils.sanitizeDegreesDouble(hct.getHue() - 50.0d), 48.0d), TonalPalette.fromHueAndChroma(MathUtils.sanitizeDegreesDouble(hct.getHue() - 50.0d), 36.0d), TonalPalette.fromHueAndChroma(hct.getHue(), 36.0d), TonalPalette.fromHueAndChroma(hct.getHue(), 10.0d), TonalPalette.fromHueAndChroma(hct.getHue(), 16.0d));
    }
}
