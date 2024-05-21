package com.google.android.material.color;

import android.content.Context;
import android.content.res.Configuration;
import android.content.res.TypedArray;
import android.view.ContextThemeWrapper;
import androidx.core.content.ContextCompat;
import com.google.android.material.R;
import java.util.HashMap;
import java.util.Map;

/* loaded from: classes2.dex */
public class HarmonizedColors {
    private static final String TAG = "HarmonizedColors";

    public static boolean isHarmonizedColorAvailable() {
        return true;
    }

    private HarmonizedColors() {
    }

    public static void applyToContextIfAvailable(Context context, HarmonizedColorsOptions harmonizedColorsOptions) {
        if (isHarmonizedColorAvailable()) {
            Map<Integer, Integer> createHarmonizedColorReplacementMap = createHarmonizedColorReplacementMap(context, harmonizedColorsOptions);
            int themeOverlayResourceId = harmonizedColorsOptions.getThemeOverlayResourceId(0);
            if (!ResourcesLoaderUtils.addResourcesLoaderToContext(context, createHarmonizedColorReplacementMap) || themeOverlayResourceId == 0) {
                return;
            }
            ThemeUtils.applyThemeOverlay(context, themeOverlayResourceId);
        }
    }

    public static Context wrapContextIfAvailable(Context context, HarmonizedColorsOptions harmonizedColorsOptions) {
        if (!isHarmonizedColorAvailable()) {
            return context;
        }
        Map<Integer, Integer> createHarmonizedColorReplacementMap = createHarmonizedColorReplacementMap(context, harmonizedColorsOptions);
        ContextThemeWrapper contextThemeWrapper = new ContextThemeWrapper(context, harmonizedColorsOptions.getThemeOverlayResourceId(R.style.ThemeOverlay_Material3_HarmonizedColors_Empty));
        contextThemeWrapper.applyOverrideConfiguration(new Configuration());
        return ResourcesLoaderUtils.addResourcesLoaderToContext(contextThemeWrapper, createHarmonizedColorReplacementMap) ? contextThemeWrapper : context;
    }

    private static Map<Integer, Integer> createHarmonizedColorReplacementMap(Context context, HarmonizedColorsOptions harmonizedColorsOptions) {
        HashMap hashMap = new HashMap();
        int color = MaterialColors.getColor(context, harmonizedColorsOptions.getColorAttributeToHarmonizeWith(), TAG);
        for (int i : harmonizedColorsOptions.getColorResourceIds()) {
            hashMap.put(Integer.valueOf(i), Integer.valueOf(MaterialColors.harmonize(ContextCompat.getColor(context, i), color)));
        }
        HarmonizedColorAttributes colorAttributes = harmonizedColorsOptions.getColorAttributes();
        if (colorAttributes != null) {
            int[] attributes = colorAttributes.getAttributes();
            if (attributes.length > 0) {
                int themeOverlay = colorAttributes.getThemeOverlay();
                TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributes);
                TypedArray obtainStyledAttributes2 = themeOverlay != 0 ? new ContextThemeWrapper(context, themeOverlay).obtainStyledAttributes(attributes) : null;
                addHarmonizedColorAttributesToReplacementMap(hashMap, obtainStyledAttributes, obtainStyledAttributes2, color);
                obtainStyledAttributes.recycle();
                if (obtainStyledAttributes2 != null) {
                    obtainStyledAttributes2.recycle();
                }
            }
        }
        return hashMap;
    }

    private static void addHarmonizedColorAttributesToReplacementMap(Map<Integer, Integer> map, TypedArray typedArray, TypedArray typedArray2, int i) {
        if (typedArray2 == null) {
            typedArray2 = typedArray;
        }
        for (int i2 = 0; i2 < typedArray.getIndexCount(); i2++) {
            int resourceId = typedArray2.getResourceId(i2, 0);
            if (resourceId != 0 && typedArray.hasValue(i2) && ResourcesLoaderUtils.isColorResource(typedArray.getType(i2))) {
                map.put(Integer.valueOf(resourceId), Integer.valueOf(MaterialColors.harmonize(typedArray.getColor(i2, 0), i)));
            }
        }
    }
}
