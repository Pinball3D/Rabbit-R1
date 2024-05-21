package androidx.core.graphics;

import android.graphics.BlendMode;
import android.graphics.BlendModeColorFilter;
import android.graphics.ColorFilter;
import androidx.core.graphics.BlendModeUtils;

/* loaded from: classes.dex */
public class BlendModeColorFilterCompat {
    public static ColorFilter createBlendModeColorFilterCompat(int i, BlendModeCompat blendModeCompat) {
        Object obtainBlendModeFromCompat = BlendModeUtils.Api29Impl.obtainBlendModeFromCompat(blendModeCompat);
        if (obtainBlendModeFromCompat != null) {
            return Api29Impl.createBlendModeColorFilter(i, obtainBlendModeFromCompat);
        }
        return null;
    }

    private BlendModeColorFilterCompat() {
    }

    /* loaded from: classes.dex */
    static class Api29Impl {
        private Api29Impl() {
        }

        static ColorFilter createBlendModeColorFilter(int i, Object obj) {
            return new BlendModeColorFilter(i, (BlendMode) obj);
        }
    }
}
