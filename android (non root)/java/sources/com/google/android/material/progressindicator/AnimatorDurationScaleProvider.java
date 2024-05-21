package com.google.android.material.progressindicator;

import android.content.ContentResolver;
import android.provider.Settings;

/* loaded from: classes2.dex */
public class AnimatorDurationScaleProvider {
    private static float defaultSystemAnimatorDurationScale = 1.0f;

    public static void setDefaultSystemAnimatorDurationScale(float f) {
        defaultSystemAnimatorDurationScale = f;
    }

    public float getSystemAnimatorDurationScale(ContentResolver contentResolver) {
        return Settings.Global.getFloat(contentResolver, "animator_duration_scale", 1.0f);
    }
}
