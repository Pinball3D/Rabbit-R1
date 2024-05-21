package io.sentry.android.core.internal.util;

import android.content.ContentProvider;
import io.sentry.NoOpLogger;
import io.sentry.android.core.BuildInfoProvider;

/* loaded from: classes3.dex */
public final class ContentProviderSecurityChecker {
    private final BuildInfoProvider buildInfoProvider;

    public ContentProviderSecurityChecker() {
        this(new BuildInfoProvider(NoOpLogger.getInstance()));
    }

    public ContentProviderSecurityChecker(BuildInfoProvider buildInfoProvider) {
        this.buildInfoProvider = buildInfoProvider;
    }

    public void checkPrivilegeEscalation(ContentProvider contentProvider) {
        int sdkInfoVersion = this.buildInfoProvider.getSdkInfoVersion();
        if (sdkInfoVersion < 26 || sdkInfoVersion > 28) {
            return;
        }
        String callingPackage = contentProvider.getCallingPackage();
        String packageName = contentProvider.getContext().getPackageName();
        if (callingPackage == null || !callingPackage.equals(packageName)) {
            throw new SecurityException("Provider does not allow for granting of Uri permissions");
        }
    }
}
