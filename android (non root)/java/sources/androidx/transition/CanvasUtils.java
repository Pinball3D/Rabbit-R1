package androidx.transition;

import android.graphics.Canvas;
import java.lang.reflect.Method;

/* loaded from: classes2.dex */
class CanvasUtils {
    private static Method sInorderBarrierMethod;
    private static boolean sOrderMethodsFetched;
    private static Method sReorderBarrierMethod;

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void enableZ(Canvas canvas, boolean z) {
        if (z) {
            canvas.enableZ();
        } else {
            canvas.disableZ();
        }
    }

    private CanvasUtils() {
    }
}
