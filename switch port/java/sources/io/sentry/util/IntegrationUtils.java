package io.sentry.util;

import io.sentry.SentryIntegrationPackageStorage;

/* loaded from: classes3.dex */
public final class IntegrationUtils {
    public static void addIntegrationToSdkVersion(Class<?> cls) {
        addIntegrationToSdkVersion(cls.getSimpleName().replace("Sentry", "").replace("Integration", "").replace("Interceptor", "").replace("EventProcessor", ""));
    }

    public static void addIntegrationToSdkVersion(String str) {
        SentryIntegrationPackageStorage.getInstance().addIntegration(str);
    }
}
