package com.google.android.material.color;

import com.google.android.material.R;
import com.google.android.material.color.utilities.DynamicColor;
import com.google.android.material.color.utilities.DynamicScheme;
import com.google.android.material.color.utilities.MaterialDynamicColors;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;

/* loaded from: classes2.dex */
public final class MaterialColorUtilitiesHelper {
    private static final Map<Integer, DynamicColor> colorResourceIdToColorValue;
    private static final MaterialDynamicColors dynamicColors;

    private MaterialColorUtilitiesHelper() {
    }

    static {
        MaterialDynamicColors materialDynamicColors = new MaterialDynamicColors();
        dynamicColors = materialDynamicColors;
        HashMap hashMap = new HashMap();
        hashMap.put(Integer.valueOf(R.color.material_personalized_color_primary), materialDynamicColors.primary());
        hashMap.put(Integer.valueOf(R.color.material_personalized_color_on_primary), materialDynamicColors.onPrimary());
        hashMap.put(Integer.valueOf(R.color.material_personalized_color_primary_inverse), materialDynamicColors.inversePrimary());
        hashMap.put(Integer.valueOf(R.color.material_personalized_color_primary_container), materialDynamicColors.primaryContainer());
        hashMap.put(Integer.valueOf(R.color.material_personalized_color_on_primary_container), materialDynamicColors.onPrimaryContainer());
        hashMap.put(Integer.valueOf(R.color.material_personalized_color_secondary), materialDynamicColors.secondary());
        hashMap.put(Integer.valueOf(R.color.material_personalized_color_on_secondary), materialDynamicColors.onSecondary());
        hashMap.put(Integer.valueOf(R.color.material_personalized_color_secondary_container), materialDynamicColors.secondaryContainer());
        hashMap.put(Integer.valueOf(R.color.material_personalized_color_on_secondary_container), materialDynamicColors.onSecondaryContainer());
        hashMap.put(Integer.valueOf(R.color.material_personalized_color_tertiary), materialDynamicColors.tertiary());
        hashMap.put(Integer.valueOf(R.color.material_personalized_color_on_tertiary), materialDynamicColors.onTertiary());
        hashMap.put(Integer.valueOf(R.color.material_personalized_color_tertiary_container), materialDynamicColors.tertiaryContainer());
        hashMap.put(Integer.valueOf(R.color.material_personalized_color_on_tertiary_container), materialDynamicColors.onTertiaryContainer());
        hashMap.put(Integer.valueOf(R.color.material_personalized_color_background), materialDynamicColors.background());
        hashMap.put(Integer.valueOf(R.color.material_personalized_color_on_background), materialDynamicColors.onBackground());
        hashMap.put(Integer.valueOf(R.color.material_personalized_color_surface), materialDynamicColors.surface());
        hashMap.put(Integer.valueOf(R.color.material_personalized_color_on_surface), materialDynamicColors.onSurface());
        hashMap.put(Integer.valueOf(R.color.material_personalized_color_surface_variant), materialDynamicColors.surfaceVariant());
        hashMap.put(Integer.valueOf(R.color.material_personalized_color_on_surface_variant), materialDynamicColors.onSurfaceVariant());
        hashMap.put(Integer.valueOf(R.color.material_personalized_color_surface_inverse), materialDynamicColors.inverseSurface());
        hashMap.put(Integer.valueOf(R.color.material_personalized_color_on_surface_inverse), materialDynamicColors.inverseOnSurface());
        hashMap.put(Integer.valueOf(R.color.material_personalized_color_surface_bright), materialDynamicColors.surfaceBright());
        hashMap.put(Integer.valueOf(R.color.material_personalized_color_surface_dim), materialDynamicColors.surfaceDim());
        hashMap.put(Integer.valueOf(R.color.material_personalized_color_surface_container), materialDynamicColors.surfaceContainer());
        hashMap.put(Integer.valueOf(R.color.material_personalized_color_surface_container_low), materialDynamicColors.surfaceContainerLow());
        hashMap.put(Integer.valueOf(R.color.material_personalized_color_surface_container_high), materialDynamicColors.surfaceContainerHigh());
        hashMap.put(Integer.valueOf(R.color.material_personalized_color_surface_container_lowest), materialDynamicColors.surfaceContainerLowest());
        hashMap.put(Integer.valueOf(R.color.material_personalized_color_surface_container_highest), materialDynamicColors.surfaceContainerHighest());
        hashMap.put(Integer.valueOf(R.color.material_personalized_color_outline), materialDynamicColors.outline());
        hashMap.put(Integer.valueOf(R.color.material_personalized_color_outline_variant), materialDynamicColors.outlineVariant());
        hashMap.put(Integer.valueOf(R.color.material_personalized_color_error), materialDynamicColors.error());
        hashMap.put(Integer.valueOf(R.color.material_personalized_color_on_error), materialDynamicColors.onError());
        hashMap.put(Integer.valueOf(R.color.material_personalized_color_error_container), materialDynamicColors.errorContainer());
        hashMap.put(Integer.valueOf(R.color.material_personalized_color_on_error_container), materialDynamicColors.onErrorContainer());
        hashMap.put(Integer.valueOf(R.color.material_personalized_color_control_activated), materialDynamicColors.controlActivated());
        hashMap.put(Integer.valueOf(R.color.material_personalized_color_control_normal), materialDynamicColors.controlNormal());
        hashMap.put(Integer.valueOf(R.color.material_personalized_color_control_highlight), materialDynamicColors.controlHighlight());
        hashMap.put(Integer.valueOf(R.color.material_personalized_color_text_primary_inverse), materialDynamicColors.textPrimaryInverse());
        hashMap.put(Integer.valueOf(R.color.material_personalized_color_text_secondary_and_tertiary_inverse), materialDynamicColors.textSecondaryAndTertiaryInverse());
        hashMap.put(Integer.valueOf(R.color.material_personalized_color_text_secondary_and_tertiary_inverse_disabled), materialDynamicColors.textSecondaryAndTertiaryInverseDisabled());
        hashMap.put(Integer.valueOf(R.color.material_personalized_color_text_primary_inverse_disable_only), materialDynamicColors.textPrimaryInverseDisableOnly());
        hashMap.put(Integer.valueOf(R.color.material_personalized_color_text_hint_foreground_inverse), materialDynamicColors.textHintInverse());
        colorResourceIdToColorValue = Collections.unmodifiableMap(hashMap);
    }

    public static Map<Integer, Integer> createColorResourcesIdsToColorValues(DynamicScheme dynamicScheme) {
        HashMap hashMap = new HashMap();
        for (Map.Entry<Integer, DynamicColor> entry : colorResourceIdToColorValue.entrySet()) {
            hashMap.put(entry.getKey(), Integer.valueOf(entry.getValue().getArgb(dynamicScheme)));
        }
        return Collections.unmodifiableMap(hashMap);
    }
}
