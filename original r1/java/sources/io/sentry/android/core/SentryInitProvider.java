package io.sentry.android.core;

import android.content.Context;
import android.content.pm.ProviderInfo;
import android.net.Uri;
import io.sentry.Sentry;
import io.sentry.SentryIntegrationPackageStorage;
import io.sentry.SentryLevel;

/* loaded from: classes3.dex */
public final class SentryInitProvider extends EmptySecureContentProvider {
    @Override // android.content.ContentProvider
    public String getType(Uri uri) {
        return null;
    }

    @Override // android.content.ContentProvider
    public boolean onCreate() {
        AndroidLogger androidLogger = new AndroidLogger();
        Context context = getContext();
        if (context == null) {
            androidLogger.log(SentryLevel.FATAL, "App. Context from ContentProvider is null", new Object[0]);
            return false;
        }
        if (!ManifestMetadataReader.isAutoInit(context, androidLogger)) {
            return true;
        }
        SentryAndroid.init(context, androidLogger);
        SentryIntegrationPackageStorage.getInstance().addIntegration("AutoInit");
        return true;
    }

    @Override // android.content.ContentProvider
    public void shutdown() {
        Sentry.close();
    }

    @Override // android.content.ContentProvider
    public void attachInfo(Context context, ProviderInfo providerInfo) {
        if (SentryInitProvider.class.getName().equals(providerInfo.authority)) {
            throw new IllegalStateException("An applicationId is required to fulfill the manifest placeholder.");
        }
        super.attachInfo(context, providerInfo);
    }
}
