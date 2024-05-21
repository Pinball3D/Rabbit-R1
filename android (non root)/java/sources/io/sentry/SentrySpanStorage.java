package io.sentry;

import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

/* loaded from: classes3.dex */
public final class SentrySpanStorage {
    private static volatile SentrySpanStorage INSTANCE;
    private final Map<String, ISpan> spans = new ConcurrentHashMap();

    public static SentrySpanStorage getInstance() {
        if (INSTANCE == null) {
            synchronized (SentrySpanStorage.class) {
                if (INSTANCE == null) {
                    INSTANCE = new SentrySpanStorage();
                }
            }
        }
        return INSTANCE;
    }

    private SentrySpanStorage() {
    }

    public void store(String str, ISpan iSpan) {
        this.spans.put(str, iSpan);
    }

    public ISpan get(String str) {
        return this.spans.get(str);
    }

    public ISpan removeAndGet(String str) {
        return this.spans.remove(str);
    }
}
