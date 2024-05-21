package io.flutter.embedding.engine;

import java.util.HashMap;
import java.util.Map;

/* loaded from: classes3.dex */
public class FlutterEngineGroupCache {
    private static volatile FlutterEngineGroupCache instance;
    private final Map<String, FlutterEngineGroup> cachedEngineGroups = new HashMap();

    public static FlutterEngineGroupCache getInstance() {
        if (instance == null) {
            synchronized (FlutterEngineGroupCache.class) {
                if (instance == null) {
                    instance = new FlutterEngineGroupCache();
                }
            }
        }
        return instance;
    }

    FlutterEngineGroupCache() {
    }

    public boolean contains(String str) {
        return this.cachedEngineGroups.containsKey(str);
    }

    public FlutterEngineGroup get(String str) {
        return this.cachedEngineGroups.get(str);
    }

    public void put(String str, FlutterEngineGroup flutterEngineGroup) {
        if (flutterEngineGroup != null) {
            this.cachedEngineGroups.put(str, flutterEngineGroup);
        } else {
            this.cachedEngineGroups.remove(str);
        }
    }

    public void remove(String str) {
        put(str, null);
    }

    public void clear() {
        this.cachedEngineGroups.clear();
    }
}
