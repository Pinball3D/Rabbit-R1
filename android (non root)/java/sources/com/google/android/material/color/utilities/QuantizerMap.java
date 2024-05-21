package com.google.android.material.color.utilities;

import java.util.LinkedHashMap;
import java.util.Map;

/* loaded from: classes2.dex */
public final class QuantizerMap implements Quantizer {
    Map<Integer, Integer> colorToCount;

    public Map<Integer, Integer> getColorToCount() {
        return this.colorToCount;
    }

    @Override // com.google.android.material.color.utilities.Quantizer
    public QuantizerResult quantize(int[] iArr, int i) {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        for (int i2 : iArr) {
            Integer num = (Integer) linkedHashMap.get(Integer.valueOf(i2));
            int i3 = 1;
            if (num != null) {
                i3 = 1 + num.intValue();
            }
            linkedHashMap.put(Integer.valueOf(i2), Integer.valueOf(i3));
        }
        this.colorToCount = linkedHashMap;
        return new QuantizerResult(linkedHashMap);
    }
}
