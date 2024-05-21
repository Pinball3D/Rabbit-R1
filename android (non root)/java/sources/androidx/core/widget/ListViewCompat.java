package androidx.core.widget;

import android.widget.ListView;

/* loaded from: classes.dex */
public final class ListViewCompat {
    public static void scrollListBy(ListView listView, int i) {
        Api19Impl.scrollListBy(listView, i);
    }

    public static boolean canScrollList(ListView listView, int i) {
        return Api19Impl.canScrollList(listView, i);
    }

    private ListViewCompat() {
    }

    /* loaded from: classes.dex */
    static class Api19Impl {
        private Api19Impl() {
        }

        static void scrollListBy(ListView listView, int i) {
            listView.scrollListBy(i);
        }

        static boolean canScrollList(ListView listView, int i) {
            return listView.canScrollList(i);
        }
    }
}
