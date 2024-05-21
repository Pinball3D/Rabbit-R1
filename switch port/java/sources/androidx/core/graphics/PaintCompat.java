package androidx.core.graphics;

import android.graphics.BlendMode;
import android.graphics.Paint;
import android.graphics.Rect;
import androidx.core.graphics.BlendModeUtils;
import androidx.core.util.Pair;

/* loaded from: classes.dex */
public final class PaintCompat {
    private static final String EM_STRING = "m";
    private static final String TOFU_STRING = "\udfffd";
    private static final ThreadLocal<Pair<Rect, Rect>> sRectThreadLocal = new ThreadLocal<>();

    public static boolean hasGlyph(Paint paint, String str) {
        return Api23Impl.hasGlyph(paint, str);
    }

    public static boolean setBlendMode(Paint paint, BlendModeCompat blendModeCompat) {
        Api29Impl.setBlendMode(paint, blendModeCompat != null ? BlendModeUtils.Api29Impl.obtainBlendModeFromCompat(blendModeCompat) : null);
        return true;
    }

    private static Pair<Rect, Rect> obtainEmptyRects() {
        ThreadLocal<Pair<Rect, Rect>> threadLocal = sRectThreadLocal;
        Pair<Rect, Rect> pair = threadLocal.get();
        if (pair == null) {
            Pair<Rect, Rect> pair2 = new Pair<>(new Rect(), new Rect());
            threadLocal.set(pair2);
            return pair2;
        }
        pair.first.setEmpty();
        pair.second.setEmpty();
        return pair;
    }

    private PaintCompat() {
    }

    /* loaded from: classes.dex */
    static class Api29Impl {
        private Api29Impl() {
        }

        static void setBlendMode(Paint paint, Object obj) {
            paint.setBlendMode((BlendMode) obj);
        }
    }

    /* loaded from: classes.dex */
    static class Api23Impl {
        private Api23Impl() {
        }

        static boolean hasGlyph(Paint paint, String str) {
            return paint.hasGlyph(str);
        }
    }
}
