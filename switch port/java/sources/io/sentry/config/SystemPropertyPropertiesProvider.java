package io.sentry.config;

/* loaded from: classes3.dex */
final class SystemPropertyPropertiesProvider extends AbstractPropertiesProvider {
    private static final String PREFIX = "sentry.";

    public SystemPropertyPropertiesProvider() {
        super(PREFIX, System.getProperties());
    }
}
