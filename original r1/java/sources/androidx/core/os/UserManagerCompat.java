package androidx.core.os;

import android.content.Context;
import android.os.UserManager;

/* loaded from: classes.dex */
public class UserManagerCompat {
    private UserManagerCompat() {
    }

    public static boolean isUserUnlocked(Context context) {
        return Api24Impl.isUserUnlocked(context);
    }

    /* loaded from: classes.dex */
    static class Api24Impl {
        private Api24Impl() {
        }

        static boolean isUserUnlocked(Context context) {
            return ((UserManager) context.getSystemService(UserManager.class)).isUserUnlocked();
        }
    }
}
