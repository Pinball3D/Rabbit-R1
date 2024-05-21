package io.sentry;

import java.util.ArrayList;
import java.util.List;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3.dex */
public final class SentryValues<T> {
    private final List<T> values;

    /* loaded from: classes3.dex */
    public static final class JsonKeys {
        public static final String VALUES = "values";
    }

    public List<T> getValues() {
        return this.values;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public SentryValues(List<T> list) {
        this.values = new ArrayList(list == null ? new ArrayList<>(0) : list);
    }
}
