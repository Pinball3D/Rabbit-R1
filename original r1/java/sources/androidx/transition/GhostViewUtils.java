package androidx.transition;

import android.graphics.Matrix;
import android.view.View;
import android.view.ViewGroup;

/* loaded from: classes2.dex */
class GhostViewUtils {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static GhostView addGhost(View view, ViewGroup viewGroup, Matrix matrix) {
        return GhostViewPort.addGhost(view, viewGroup, matrix);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void removeGhost(View view) {
        GhostViewPort.removeGhost(view);
    }

    private GhostViewUtils() {
    }
}
