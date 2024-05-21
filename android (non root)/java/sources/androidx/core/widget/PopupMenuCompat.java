package androidx.core.widget;

import android.view.View;
import android.widget.PopupMenu;

/* loaded from: classes.dex */
public final class PopupMenuCompat {
    private PopupMenuCompat() {
    }

    public static View.OnTouchListener getDragToOpenListener(Object obj) {
        return Api19Impl.getDragToOpenListener((PopupMenu) obj);
    }

    /* loaded from: classes.dex */
    static class Api19Impl {
        private Api19Impl() {
        }

        static View.OnTouchListener getDragToOpenListener(PopupMenu popupMenu) {
            return popupMenu.getDragToOpenListener();
        }
    }
}
