package com.google.android.material.color;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.Color;
import android.util.TypedValue;
import android.view.View;
import androidx.core.content.ContextCompat;
import androidx.core.graphics.ColorUtils;
import com.google.android.material.R;
import com.google.android.material.color.utilities.Blend;
import com.google.android.material.color.utilities.Hct;
import com.google.android.material.resources.MaterialAttributes;

/* loaded from: classes2.dex */
public class MaterialColors {
    public static final float ALPHA_DISABLED = 0.38f;
    public static final float ALPHA_DISABLED_LOW = 0.12f;
    public static final float ALPHA_FULL = 1.0f;
    public static final float ALPHA_LOW = 0.32f;
    public static final float ALPHA_MEDIUM = 0.54f;
    private static final int CHROMA_NEUTRAL = 6;
    private static final int TONE_ACCENT_CONTAINER_DARK = 30;
    private static final int TONE_ACCENT_CONTAINER_LIGHT = 90;
    private static final int TONE_ACCENT_DARK = 80;
    private static final int TONE_ACCENT_LIGHT = 40;
    private static final int TONE_ON_ACCENT_CONTAINER_DARK = 90;
    private static final int TONE_ON_ACCENT_CONTAINER_LIGHT = 10;
    private static final int TONE_ON_ACCENT_DARK = 20;
    private static final int TONE_ON_ACCENT_LIGHT = 100;
    private static final int TONE_SURFACE_CONTAINER_DARK = 12;
    private static final int TONE_SURFACE_CONTAINER_HIGH_DARK = 17;
    private static final int TONE_SURFACE_CONTAINER_HIGH_LIGHT = 92;
    private static final int TONE_SURFACE_CONTAINER_LIGHT = 94;

    private MaterialColors() {
    }

    public static int getColor(View view, int i) {
        return resolveColor(view.getContext(), MaterialAttributes.resolveTypedValueOrThrow(view, i));
    }

    public static int getColor(Context context, int i, String str) {
        return resolveColor(context, MaterialAttributes.resolveTypedValueOrThrow(context, i, str));
    }

    public static int getColor(View view, int i, int i2) {
        return getColor(view.getContext(), i, i2);
    }

    public static int getColor(Context context, int i, int i2) {
        Integer colorOrNull = getColorOrNull(context, i);
        return colorOrNull != null ? colorOrNull.intValue() : i2;
    }

    public static Integer getColorOrNull(Context context, int i) {
        TypedValue resolve = MaterialAttributes.resolve(context, i);
        if (resolve != null) {
            return Integer.valueOf(resolveColor(context, resolve));
        }
        return null;
    }

    public static ColorStateList getColorStateList(Context context, int i, ColorStateList colorStateList) {
        TypedValue resolve = MaterialAttributes.resolve(context, i);
        ColorStateList resolveColorStateList = resolve != null ? resolveColorStateList(context, resolve) : null;
        return resolveColorStateList == null ? colorStateList : resolveColorStateList;
    }

    public static ColorStateList getColorStateListOrNull(Context context, int i) {
        TypedValue resolve = MaterialAttributes.resolve(context, i);
        if (resolve == null) {
            return null;
        }
        if (resolve.resourceId != 0) {
            return ContextCompat.getColorStateList(context, resolve.resourceId);
        }
        if (resolve.data != 0) {
            return ColorStateList.valueOf(resolve.data);
        }
        return null;
    }

    private static int resolveColor(Context context, TypedValue typedValue) {
        if (typedValue.resourceId != 0) {
            return ContextCompat.getColor(context, typedValue.resourceId);
        }
        return typedValue.data;
    }

    private static ColorStateList resolveColorStateList(Context context, TypedValue typedValue) {
        if (typedValue.resourceId != 0) {
            return ContextCompat.getColorStateList(context, typedValue.resourceId);
        }
        return ColorStateList.valueOf(typedValue.data);
    }

    public static int layer(View view, int i, int i2) {
        return layer(view, i, i2, 1.0f);
    }

    public static int layer(View view, int i, int i2, float f) {
        return layer(getColor(view, i), getColor(view, i2), f);
    }

    public static int layer(int i, int i2, float f) {
        return layer(i, ColorUtils.setAlphaComponent(i2, Math.round(Color.alpha(i2) * f)));
    }

    public static int layer(int i, int i2) {
        return ColorUtils.compositeColors(i2, i);
    }

    public static int compositeARGBWithAlpha(int i, int i2) {
        return ColorUtils.setAlphaComponent(i, (Color.alpha(i) * i2) / 255);
    }

    public static boolean isColorLight(int i) {
        return i != 0 && ColorUtils.calculateLuminance(i) > 0.5d;
    }

    public static int harmonizeWithPrimary(Context context, int i) {
        return harmonize(i, getColor(context, R.attr.colorPrimary, MaterialColors.class.getCanonicalName()));
    }

    public static int harmonize(int i, int i2) {
        return Blend.harmonize(i, i2);
    }

    public static ColorRoles getColorRoles(Context context, int i) {
        return getColorRoles(i, isLightTheme(context));
    }

    public static ColorRoles getColorRoles(int i, boolean z) {
        if (z) {
            return new ColorRoles(getColorRole(i, 40), getColorRole(i, 100), getColorRole(i, 90), getColorRole(i, 10));
        }
        return new ColorRoles(getColorRole(i, TONE_ACCENT_DARK), getColorRole(i, 20), getColorRole(i, 30), getColorRole(i, 90));
    }

    public static int getSurfaceContainerFromSeed(Context context, int i) {
        return getColorRole(i, isLightTheme(context) ? TONE_SURFACE_CONTAINER_LIGHT : 12, 6);
    }

    public static int getSurfaceContainerHighFromSeed(Context context, int i) {
        return getColorRole(i, isLightTheme(context) ? TONE_SURFACE_CONTAINER_HIGH_LIGHT : 17, 6);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean isLightTheme(Context context) {
        return MaterialAttributes.resolveBoolean(context, R.attr.isLightTheme, true);
    }

    private static int getColorRole(int i, int i2) {
        Hct fromInt = Hct.fromInt(i);
        fromInt.setTone(i2);
        return fromInt.toInt();
    }

    private static int getColorRole(int i, int i2, int i3) {
        Hct fromInt = Hct.fromInt(getColorRole(i, i2));
        fromInt.setChroma(i3);
        return fromInt.toInt();
    }
}
