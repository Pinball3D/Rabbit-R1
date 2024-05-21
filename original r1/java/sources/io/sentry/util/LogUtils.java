package io.sentry.util;

import androidx.compose.material3.TextFieldImplKt;
import io.sentry.ILogger;
import io.sentry.SentryLevel;

/* loaded from: classes3.dex */
public final class LogUtils {
    public static void logNotInstanceOf(Class<?> cls, Object obj, ILogger iLogger) {
        SentryLevel sentryLevel = SentryLevel.DEBUG;
        Object[] objArr = new Object[2];
        objArr[0] = obj != null ? obj.getClass().getCanonicalName() : TextFieldImplKt.PlaceholderId;
        objArr[1] = cls.getCanonicalName();
        iLogger.log(sentryLevel, "%s is not %s", objArr);
    }
}
