package com.google.android.material.color;

import com.google.android.material.R;

/* loaded from: classes2.dex */
public final class HarmonizedColorAttributes {
    private static final int[] HARMONIZED_MATERIAL_ATTRIBUTES = {R.attr.colorError, R.attr.colorOnError, R.attr.colorErrorContainer, R.attr.colorOnErrorContainer};
    private final int[] attributes;
    private final int themeOverlay;

    public int[] getAttributes() {
        return this.attributes;
    }

    public int getThemeOverlay() {
        return this.themeOverlay;
    }

    public static HarmonizedColorAttributes create(int[] iArr) {
        return new HarmonizedColorAttributes(iArr, 0);
    }

    public static HarmonizedColorAttributes create(int[] iArr, int i) {
        return new HarmonizedColorAttributes(iArr, i);
    }

    public static HarmonizedColorAttributes createMaterialDefaults() {
        return create(HARMONIZED_MATERIAL_ATTRIBUTES, R.style.ThemeOverlay_Material3_HarmonizedColors);
    }

    private HarmonizedColorAttributes(int[] iArr, int i) {
        if (i != 0 && iArr.length == 0) {
            throw new IllegalArgumentException("Theme overlay should be used with the accompanying int[] attributes.");
        }
        this.attributes = iArr;
        this.themeOverlay = i;
    }
}
