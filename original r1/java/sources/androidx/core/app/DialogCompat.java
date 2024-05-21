package androidx.core.app;

import android.app.Dialog;
import android.view.View;

/* loaded from: classes.dex */
public class DialogCompat {
    private DialogCompat() {
    }

    public static View requireViewById(Dialog dialog, int i) {
        return (View) Api28Impl.requireViewById(dialog, i);
    }

    /* loaded from: classes.dex */
    static class Api28Impl {
        private Api28Impl() {
        }

        static <T> T requireViewById(Dialog dialog, int i) {
            return (T) dialog.requireViewById(i);
        }
    }
}
