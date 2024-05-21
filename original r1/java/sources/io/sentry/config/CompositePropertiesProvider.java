package io.sentry.config;

import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

/* loaded from: classes3.dex */
final class CompositePropertiesProvider implements PropertiesProvider {
    private final List<PropertiesProvider> providers;

    public CompositePropertiesProvider(List<PropertiesProvider> list) {
        this.providers = list;
    }

    @Override // io.sentry.config.PropertiesProvider
    public String getProperty(String str) {
        Iterator<PropertiesProvider> it = this.providers.iterator();
        while (it.hasNext()) {
            String property = it.next().getProperty(str);
            if (property != null) {
                return property;
            }
        }
        return null;
    }

    @Override // io.sentry.config.PropertiesProvider
    public Map<String, String> getMap(String str) {
        ConcurrentHashMap concurrentHashMap = new ConcurrentHashMap();
        Iterator<PropertiesProvider> it = this.providers.iterator();
        while (it.hasNext()) {
            concurrentHashMap.putAll(it.next().getMap(str));
        }
        return concurrentHashMap;
    }
}
