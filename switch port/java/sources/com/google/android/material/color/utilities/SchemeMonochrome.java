package com.google.android.material.color.utilities;

import tech.rabbit.r1launcher.BuildConfig;

/* loaded from: classes2.dex */
public class SchemeMonochrome extends DynamicScheme {
    public SchemeMonochrome(Hct hct, boolean z, double d) {
        super(hct, Variant.MONOCHROME, z, d, TonalPalette.fromHueAndChroma(hct.getHue(), BuildConfig.SENTRY_SAMPLE_RATE), TonalPalette.fromHueAndChroma(hct.getHue(), BuildConfig.SENTRY_SAMPLE_RATE), TonalPalette.fromHueAndChroma(hct.getHue(), BuildConfig.SENTRY_SAMPLE_RATE), TonalPalette.fromHueAndChroma(hct.getHue(), BuildConfig.SENTRY_SAMPLE_RATE), TonalPalette.fromHueAndChroma(hct.getHue(), BuildConfig.SENTRY_SAMPLE_RATE));
    }
}
