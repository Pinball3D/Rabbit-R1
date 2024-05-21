package androidx.core.service.quicksettings;

import android.app.PendingIntent;
import android.content.Intent;
import android.os.Build;
import android.service.quicksettings.TileService;

/* loaded from: classes.dex */
public class TileServiceCompat {
    private static TileServiceWrapper sTileServiceWrapper;

    /* loaded from: classes.dex */
    interface TileServiceWrapper {
        void startActivityAndCollapse(PendingIntent pendingIntent);

        void startActivityAndCollapse(Intent intent);
    }

    public static void clearTileServiceWrapper() {
        sTileServiceWrapper = null;
    }

    public static void setTileServiceWrapper(TileServiceWrapper tileServiceWrapper) {
        sTileServiceWrapper = tileServiceWrapper;
    }

    public static void startActivityAndCollapse(TileService tileService, PendingIntentActivityWrapper pendingIntentActivityWrapper) {
        if (Build.VERSION.SDK_INT >= 34) {
            TileServiceWrapper tileServiceWrapper = sTileServiceWrapper;
            if (tileServiceWrapper != null) {
                tileServiceWrapper.startActivityAndCollapse(pendingIntentActivityWrapper.getPendingIntent());
                return;
            } else {
                Api34Impl.startActivityAndCollapse(tileService, pendingIntentActivityWrapper.getPendingIntent());
                return;
            }
        }
        TileServiceWrapper tileServiceWrapper2 = sTileServiceWrapper;
        if (tileServiceWrapper2 != null) {
            tileServiceWrapper2.startActivityAndCollapse(pendingIntentActivityWrapper.getIntent());
        } else {
            Api24Impl.startActivityAndCollapse(tileService, pendingIntentActivityWrapper.getIntent());
        }
    }

    /* loaded from: classes.dex */
    private static class Api34Impl {
        private Api34Impl() {
        }

        static void startActivityAndCollapse(TileService tileService, PendingIntent pendingIntent) {
            tileService.startActivityAndCollapse(pendingIntent);
        }
    }

    /* loaded from: classes.dex */
    private static class Api24Impl {
        private Api24Impl() {
        }

        static void startActivityAndCollapse(TileService tileService, Intent intent) {
            tileService.startActivityAndCollapse(intent);
        }
    }

    private TileServiceCompat() {
    }
}
