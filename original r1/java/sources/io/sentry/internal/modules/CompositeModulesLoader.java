package io.sentry.internal.modules;

import io.sentry.ILogger;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.TreeMap;

/* loaded from: classes3.dex */
public final class CompositeModulesLoader extends ModulesLoader {
    private final List<IModulesLoader> loaders;

    public CompositeModulesLoader(List<IModulesLoader> list, ILogger iLogger) {
        super(iLogger);
        this.loaders = list;
    }

    @Override // io.sentry.internal.modules.ModulesLoader
    protected Map<String, String> loadModules() {
        TreeMap treeMap = new TreeMap();
        Iterator<IModulesLoader> it = this.loaders.iterator();
        while (it.hasNext()) {
            Map<String, String> orLoadModules = it.next().getOrLoadModules();
            if (orLoadModules != null) {
                treeMap.putAll(orLoadModules);
            }
        }
        return treeMap;
    }
}
