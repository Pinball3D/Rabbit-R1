package io.sentry.android.core;

import io.sentry.ILogger;
import io.sentry.SentryLevel;
import io.sentry.SentryOptions;

/* loaded from: classes3.dex */
public final class LoadClass {
    public Class<?> loadClass(String str, ILogger iLogger) {
        try {
            return Class.forName(str);
        } catch (ClassNotFoundException e) {
            if (iLogger == null) {
                return null;
            }
            iLogger.log(SentryLevel.DEBUG, "Class not available:" + str, e);
            return null;
        } catch (UnsatisfiedLinkError e2) {
            if (iLogger == null) {
                return null;
            }
            iLogger.log(SentryLevel.ERROR, "Failed to load (UnsatisfiedLinkError) " + str, e2);
            return null;
        } catch (Throwable th) {
            if (iLogger == null) {
                return null;
            }
            iLogger.log(SentryLevel.ERROR, "Failed to initialize " + str, th);
            return null;
        }
    }

    public boolean isClassAvailable(String str, ILogger iLogger) {
        return loadClass(str, iLogger) != null;
    }

    public boolean isClassAvailable(String str, SentryOptions sentryOptions) {
        return isClassAvailable(str, sentryOptions != null ? sentryOptions.getLogger() : null);
    }
}
