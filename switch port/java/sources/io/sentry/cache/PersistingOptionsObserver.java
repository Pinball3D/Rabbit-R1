package io.sentry.cache;

import io.sentry.IOptionsObserver;
import io.sentry.JsonDeserializer;
import io.sentry.SentryOptions;
import io.sentry.protocol.SdkVersion;
import java.util.Map;

/* loaded from: classes3.dex */
public final class PersistingOptionsObserver implements IOptionsObserver {
    public static final String DIST_FILENAME = "dist.json";
    public static final String ENVIRONMENT_FILENAME = "environment.json";
    public static final String OPTIONS_CACHE = ".options-cache";
    public static final String PROGUARD_UUID_FILENAME = "proguard-uuid.json";
    public static final String RELEASE_FILENAME = "release.json";
    public static final String SDK_VERSION_FILENAME = "sdk-version.json";
    public static final String TAGS_FILENAME = "tags.json";
    private final SentryOptions options;

    public PersistingOptionsObserver(SentryOptions sentryOptions) {
        this.options = sentryOptions;
    }

    @Override // io.sentry.IOptionsObserver
    public void setRelease(String str) {
        if (str == null) {
            delete(RELEASE_FILENAME);
        } else {
            store(str, RELEASE_FILENAME);
        }
    }

    @Override // io.sentry.IOptionsObserver
    public void setProguardUuid(String str) {
        if (str == null) {
            delete(PROGUARD_UUID_FILENAME);
        } else {
            store(str, PROGUARD_UUID_FILENAME);
        }
    }

    @Override // io.sentry.IOptionsObserver
    public void setSdkVersion(SdkVersion sdkVersion) {
        if (sdkVersion == null) {
            delete(SDK_VERSION_FILENAME);
        } else {
            store(sdkVersion, SDK_VERSION_FILENAME);
        }
    }

    @Override // io.sentry.IOptionsObserver
    public void setDist(String str) {
        if (str == null) {
            delete(DIST_FILENAME);
        } else {
            store(str, DIST_FILENAME);
        }
    }

    @Override // io.sentry.IOptionsObserver
    public void setEnvironment(String str) {
        if (str == null) {
            delete(ENVIRONMENT_FILENAME);
        } else {
            store(str, ENVIRONMENT_FILENAME);
        }
    }

    @Override // io.sentry.IOptionsObserver
    public void setTags(Map<String, String> map) {
        store(map, "tags.json");
    }

    private <T> void store(T t, String str) {
        CacheUtils.store(this.options, t, OPTIONS_CACHE, str);
    }

    private void delete(String str) {
        CacheUtils.delete(this.options, OPTIONS_CACHE, str);
    }

    public static <T> T read(SentryOptions sentryOptions, String str, Class<T> cls) {
        return (T) read(sentryOptions, str, cls, null);
    }

    public static <T, R> T read(SentryOptions sentryOptions, String str, Class<T> cls, JsonDeserializer<R> jsonDeserializer) {
        return (T) CacheUtils.read(sentryOptions, OPTIONS_CACHE, str, cls, jsonDeserializer);
    }
}
