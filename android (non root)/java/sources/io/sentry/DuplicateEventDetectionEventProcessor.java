package io.sentry;

import io.sentry.util.Objects;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.WeakHashMap;

/* loaded from: classes3.dex */
public final class DuplicateEventDetectionEventProcessor implements EventProcessor {
    private final Map<Throwable, Object> capturedObjects = Collections.synchronizedMap(new WeakHashMap());
    private final SentryOptions options;

    public DuplicateEventDetectionEventProcessor(SentryOptions sentryOptions) {
        this.options = (SentryOptions) Objects.requireNonNull(sentryOptions, "options are required");
    }

    @Override // io.sentry.EventProcessor
    public SentryEvent process(SentryEvent sentryEvent, Hint hint) {
        if (this.options.isEnableDeduplication()) {
            Throwable throwable = sentryEvent.getThrowable();
            if (throwable != null) {
                if (this.capturedObjects.containsKey(throwable) || containsAnyKey(this.capturedObjects, allCauses(throwable))) {
                    this.options.getLogger().log(SentryLevel.DEBUG, "Duplicate Exception detected. Event %s will be discarded.", sentryEvent.getEventId());
                    return null;
                }
                this.capturedObjects.put(throwable, null);
            }
        } else {
            this.options.getLogger().log(SentryLevel.DEBUG, "Event deduplication is disabled.", new Object[0]);
        }
        return sentryEvent;
    }

    private static <T> boolean containsAnyKey(Map<T, Object> map, List<T> list) {
        Iterator<T> it = list.iterator();
        while (it.hasNext()) {
            if (map.containsKey(it.next())) {
                return true;
            }
        }
        return false;
    }

    private static List<Throwable> allCauses(Throwable th) {
        ArrayList arrayList = new ArrayList();
        while (th.getCause() != null) {
            arrayList.add(th.getCause());
            th = th.getCause();
        }
        return arrayList;
    }
}
