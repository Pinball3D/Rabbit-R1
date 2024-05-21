package io.sentry.android.core.internal.util;

import android.content.Context;
import android.os.Process;
import io.sentry.util.Objects;

/* loaded from: classes3.dex */
public final class Permissions {
    private Permissions() {
    }

    public static boolean hasPermission(Context context, String str) {
        Objects.requireNonNull(context, "The application context is required.");
        return context.checkPermission(str, Process.myPid(), Process.myUid()) == 0;
    }
}
