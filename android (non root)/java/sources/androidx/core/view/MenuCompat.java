package androidx.core.view;

import android.view.Menu;
import android.view.MenuItem;
import androidx.core.internal.view.SupportMenu;

/* loaded from: classes.dex */
public final class MenuCompat {
    @Deprecated
    public static void setShowAsAction(MenuItem menuItem, int i) {
        menuItem.setShowAsAction(i);
    }

    public static void setGroupDividerEnabled(Menu menu, boolean z) {
        if (menu instanceof SupportMenu) {
            ((SupportMenu) menu).setGroupDividerEnabled(z);
        } else {
            Api28Impl.setGroupDividerEnabled(menu, z);
        }
    }

    private MenuCompat() {
    }

    /* loaded from: classes.dex */
    static class Api28Impl {
        private Api28Impl() {
        }

        static void setGroupDividerEnabled(Menu menu, boolean z) {
            menu.setGroupDividerEnabled(z);
        }
    }
}
