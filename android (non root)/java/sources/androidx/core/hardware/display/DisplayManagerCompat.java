package androidx.core.hardware.display;

import android.content.Context;
import android.hardware.display.DisplayManager;
import android.view.Display;
import java.lang.ref.WeakReference;
import java.util.WeakHashMap;

/* loaded from: classes.dex */
public final class DisplayManagerCompat {
    public static final String DISPLAY_CATEGORY_PRESENTATION = "android.hardware.display.category.PRESENTATION";
    private static final WeakHashMap<Context, WeakReference<DisplayManagerCompat>> sInstances = new WeakHashMap<>();
    private final Context mContext;

    private DisplayManagerCompat(Context context) {
        this.mContext = context;
    }

    public static DisplayManagerCompat getInstance(Context context) {
        DisplayManagerCompat displayManagerCompat;
        WeakHashMap<Context, WeakReference<DisplayManagerCompat>> weakHashMap = sInstances;
        synchronized (weakHashMap) {
            WeakReference<DisplayManagerCompat> weakReference = weakHashMap.get(context);
            if (weakReference == null || weakReference.get() == null) {
                weakReference = new WeakReference<>(new DisplayManagerCompat(context));
                weakHashMap.put(context, weakReference);
            }
            displayManagerCompat = weakReference.get();
        }
        return displayManagerCompat;
    }

    public Display getDisplay(int i) {
        return Api17Impl.getDisplay((DisplayManager) this.mContext.getSystemService("display"), i);
    }

    public Display[] getDisplays() {
        return Api17Impl.getDisplays((DisplayManager) this.mContext.getSystemService("display"));
    }

    public Display[] getDisplays(String str) {
        return Api17Impl.getDisplays((DisplayManager) this.mContext.getSystemService("display"));
    }

    /* loaded from: classes.dex */
    static class Api17Impl {
        private Api17Impl() {
        }

        static Display getDisplay(DisplayManager displayManager, int i) {
            return displayManager.getDisplay(i);
        }

        static Display[] getDisplays(DisplayManager displayManager) {
            return displayManager.getDisplays();
        }
    }
}
