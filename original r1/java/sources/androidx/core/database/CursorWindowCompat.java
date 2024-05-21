package androidx.core.database;

import android.database.CursorWindow;

/* loaded from: classes.dex */
public final class CursorWindowCompat {
    private CursorWindowCompat() {
    }

    public static CursorWindow create(String str, long j) {
        return Api28Impl.createCursorWindow(str, j);
    }

    /* loaded from: classes.dex */
    static class Api28Impl {
        private Api28Impl() {
        }

        static CursorWindow createCursorWindow(String str, long j) {
            return new CursorWindow(str, j);
        }
    }

    /* loaded from: classes.dex */
    static class Api15Impl {
        private Api15Impl() {
        }

        static CursorWindow createCursorWindow(String str) {
            return new CursorWindow(str);
        }
    }
}
