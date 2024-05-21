package com.google.android.material.color.utilities;

/* loaded from: classes2.dex */
public final class CorePalette {
    public TonalPalette a1;
    public TonalPalette a2;
    public TonalPalette a3;
    public TonalPalette error;
    public TonalPalette n1;
    public TonalPalette n2;

    public static CorePalette of(int i) {
        return new CorePalette(i, false);
    }

    public static CorePalette contentOf(int i) {
        return new CorePalette(i, true);
    }

    private CorePalette(int i, boolean z) {
        Hct fromInt = Hct.fromInt(i);
        double hue = fromInt.getHue();
        double chroma = fromInt.getChroma();
        if (z) {
            this.a1 = TonalPalette.fromHueAndChroma(hue, chroma);
            this.a2 = TonalPalette.fromHueAndChroma(hue, chroma / 3.0d);
            this.a3 = TonalPalette.fromHueAndChroma(60.0d + hue, chroma / 2.0d);
            this.n1 = TonalPalette.fromHueAndChroma(hue, Math.min(chroma / 12.0d, 4.0d));
            this.n2 = TonalPalette.fromHueAndChroma(hue, Math.min(chroma / 6.0d, 8.0d));
        } else {
            this.a1 = TonalPalette.fromHueAndChroma(hue, Math.max(48.0d, chroma));
            this.a2 = TonalPalette.fromHueAndChroma(hue, 16.0d);
            this.a3 = TonalPalette.fromHueAndChroma(60.0d + hue, 24.0d);
            this.n1 = TonalPalette.fromHueAndChroma(hue, 4.0d);
            this.n2 = TonalPalette.fromHueAndChroma(hue, 8.0d);
        }
        this.error = TonalPalette.fromHueAndChroma(25.0d, 84.0d);
    }
}
