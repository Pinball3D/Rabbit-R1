package io.sentry;

import io.sentry.util.Objects;
import java.util.HashMap;
import java.util.Map;

/* loaded from: classes3.dex */
public final class CustomSamplingContext {
    private final Map<String, Object> data = new HashMap();

    public Map<String, Object> getData() {
        return this.data;
    }

    public void set(String str, Object obj) {
        Objects.requireNonNull(str, "key is required");
        this.data.put(str, obj);
    }

    public Object get(String str) {
        Objects.requireNonNull(str, "key is required");
        return this.data.get(str);
    }
}
