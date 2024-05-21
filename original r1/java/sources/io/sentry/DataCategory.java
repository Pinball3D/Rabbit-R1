package io.sentry;

import io.sentry.cache.EnvelopeCache;

/* loaded from: classes3.dex */
public enum DataCategory {
    All("__all__"),
    Default("default"),
    Error("error"),
    Session(EnvelopeCache.PREFIX_CURRENT_SESSION_FILE),
    Attachment("attachment"),
    Monitor("monitor"),
    Profile("profile"),
    MetricBucket("metric_bucket"),
    Transaction("transaction"),
    Security("security"),
    UserReport("user_report"),
    Unknown("unknown");

    private final String category;

    public String getCategory() {
        return this.category;
    }

    DataCategory(String str) {
        this.category = str;
    }
}
