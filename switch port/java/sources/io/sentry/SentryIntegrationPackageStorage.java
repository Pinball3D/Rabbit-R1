package io.sentry;

import io.sentry.protocol.SentryPackage;
import io.sentry.util.Objects;
import java.util.Set;
import java.util.concurrent.CopyOnWriteArraySet;

/* loaded from: classes3.dex */
public final class SentryIntegrationPackageStorage {
    private static volatile SentryIntegrationPackageStorage INSTANCE;
    private final Set<String> integrations = new CopyOnWriteArraySet();
    private final Set<SentryPackage> packages = new CopyOnWriteArraySet();

    public Set<String> getIntegrations() {
        return this.integrations;
    }

    public Set<SentryPackage> getPackages() {
        return this.packages;
    }

    public static SentryIntegrationPackageStorage getInstance() {
        if (INSTANCE == null) {
            synchronized (SentryIntegrationPackageStorage.class) {
                if (INSTANCE == null) {
                    INSTANCE = new SentryIntegrationPackageStorage();
                }
            }
        }
        return INSTANCE;
    }

    private SentryIntegrationPackageStorage() {
    }

    public void addIntegration(String str) {
        Objects.requireNonNull(str, "integration is required.");
        this.integrations.add(str);
    }

    public void addPackage(String str, String str2) {
        Objects.requireNonNull(str, "name is required.");
        Objects.requireNonNull(str2, "version is required.");
        this.packages.add(new SentryPackage(str, str2));
    }

    public void clearStorage() {
        this.integrations.clear();
        this.packages.clear();
    }
}
