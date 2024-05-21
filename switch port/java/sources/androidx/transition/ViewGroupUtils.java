package androidx.transition;

import android.view.ViewGroup;
import java.lang.reflect.Method;

/* loaded from: classes2.dex */
class ViewGroupUtils {
    private static Method sGetChildDrawingOrderMethod = null;
    private static boolean sGetChildDrawingOrderMethodFetched = false;
    private static boolean sTryHiddenSuppressLayout = true;

    /* JADX INFO: Access modifiers changed from: package-private */
    public static ViewGroupOverlayImpl getOverlay(ViewGroup viewGroup) {
        return new ViewGroupOverlayApi18(viewGroup);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void suppressLayout(ViewGroup viewGroup, boolean z) {
        viewGroup.suppressLayout(z);
    }

    private static void hiddenSuppressLayout(ViewGroup viewGroup, boolean z) {
        if (sTryHiddenSuppressLayout) {
            try {
                viewGroup.suppressLayout(z);
            } catch (NoSuchMethodError unused) {
                sTryHiddenSuppressLayout = false;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int getChildDrawingOrder(ViewGroup viewGroup, int i) {
        return viewGroup.getChildDrawingOrder(i);
    }

    private ViewGroupUtils() {
    }
}
