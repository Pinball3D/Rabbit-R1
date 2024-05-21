package androidx.core.content;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Build;
import android.os.Parcelable;
import io.sentry.protocol.SentryStackFrame;
import java.util.ArrayList;

/* loaded from: classes.dex */
public final class IntentCompat {
    public static final String ACTION_CREATE_REMINDER = "android.intent.action.CREATE_REMINDER";
    public static final String CATEGORY_LEANBACK_LAUNCHER = "android.intent.category.LEANBACK_LAUNCHER";
    public static final String EXTRA_HTML_TEXT = "android.intent.extra.HTML_TEXT";
    public static final String EXTRA_START_PLAYBACK = "android.intent.extra.START_PLAYBACK";
    public static final String EXTRA_TIME = "android.intent.extra.TIME";

    private IntentCompat() {
    }

    public static Intent makeMainSelectorActivity(String str, String str2) {
        return Api15Impl.makeMainSelectorActivity(str, str2);
    }

    public static Intent createManageUnusedAppRestrictionsIntent(Context context, String str) {
        if (!PackageManagerCompat.areUnusedAppRestrictionsAvailable(context.getPackageManager())) {
            throw new UnsupportedOperationException("Unused App Restriction features are not available on this device");
        }
        return new Intent("android.settings.APPLICATION_DETAILS_SETTINGS").setData(Uri.fromParts(SentryStackFrame.JsonKeys.PACKAGE, str, null));
    }

    public static <T> T getParcelableExtra(Intent intent, String str, Class<T> cls) {
        if (Build.VERSION.SDK_INT >= 34) {
            return (T) Api33Impl.getParcelableExtra(intent, str, cls);
        }
        T t = (T) intent.getParcelableExtra(str);
        if (cls.isInstance(t)) {
            return t;
        }
        return null;
    }

    public static Parcelable[] getParcelableArrayExtra(Intent intent, String str, Class<? extends Parcelable> cls) {
        if (Build.VERSION.SDK_INT >= 34) {
            return (Parcelable[]) Api33Impl.getParcelableArrayExtra(intent, str, cls);
        }
        return intent.getParcelableArrayExtra(str);
    }

    public static <T> ArrayList<T> getParcelableArrayListExtra(Intent intent, String str, Class<? extends T> cls) {
        if (Build.VERSION.SDK_INT >= 34) {
            return Api33Impl.getParcelableArrayListExtra(intent, str, cls);
        }
        return intent.getParcelableArrayListExtra(str);
    }

    /* loaded from: classes.dex */
    static class Api15Impl {
        private Api15Impl() {
        }

        static Intent makeMainSelectorActivity(String str, String str2) {
            return Intent.makeMainSelectorActivity(str, str2);
        }
    }

    /* loaded from: classes.dex */
    static class Api33Impl {
        private Api33Impl() {
        }

        static <T> T getParcelableExtra(Intent intent, String str, Class<T> cls) {
            return (T) intent.getParcelableExtra(str, cls);
        }

        static <T> T[] getParcelableArrayExtra(Intent intent, String str, Class<T> cls) {
            return (T[]) intent.getParcelableArrayExtra(str, cls);
        }

        static <T> ArrayList<T> getParcelableArrayListExtra(Intent intent, String str, Class<? extends T> cls) {
            return intent.getParcelableArrayListExtra(str, cls);
        }
    }
}
