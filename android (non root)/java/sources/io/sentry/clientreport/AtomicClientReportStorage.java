package io.sentry.clientreport;

import io.sentry.DataCategory;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.atomic.AtomicLong;

/* loaded from: classes3.dex */
final class AtomicClientReportStorage implements IClientReportStorage {
    private final Map<ClientReportKey, AtomicLong> lostEventCounts;

    public AtomicClientReportStorage() {
        ConcurrentHashMap concurrentHashMap = new ConcurrentHashMap();
        for (DiscardReason discardReason : DiscardReason.values()) {
            for (DataCategory dataCategory : DataCategory.values()) {
                concurrentHashMap.put(new ClientReportKey(discardReason.getReason(), dataCategory.getCategory()), new AtomicLong(0L));
            }
        }
        this.lostEventCounts = Collections.unmodifiableMap(concurrentHashMap);
    }

    @Override // io.sentry.clientreport.IClientReportStorage
    public void addCount(ClientReportKey clientReportKey, Long l) {
        AtomicLong atomicLong = this.lostEventCounts.get(clientReportKey);
        if (atomicLong != null) {
            atomicLong.addAndGet(l.longValue());
        }
    }

    @Override // io.sentry.clientreport.IClientReportStorage
    public List<DiscardedEvent> resetCountsAndGet() {
        ArrayList arrayList = new ArrayList();
        for (Map.Entry<ClientReportKey, AtomicLong> entry : this.lostEventCounts.entrySet()) {
            Long valueOf = Long.valueOf(entry.getValue().getAndSet(0L));
            if (valueOf.longValue() > 0) {
                arrayList.add(new DiscardedEvent(entry.getKey().getReason(), entry.getKey().getCategory(), valueOf));
            }
        }
        return arrayList;
    }
}
