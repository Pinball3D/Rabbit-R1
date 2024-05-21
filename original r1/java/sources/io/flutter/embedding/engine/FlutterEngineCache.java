package io.flutter.embedding.engine;

import java.util.HashMap;
import java.util.Map;

/* loaded from: classes3.dex */
public class FlutterEngineCache {
    private static FlutterEngineCache instance;
    private final Map<String, FlutterEngine> cachedEngines = new HashMap();

    public static FlutterEngineCache getInstance() {
        if (instance == null) {
            instance = new FlutterEngineCache();
        }
        return instance;
    }

    FlutterEngineCache() {
    }

    public boolean contains(String str) {
        return this.cachedEngines.containsKey(str);
    }

    public FlutterEngine get(String str) {
        return this.cachedEngines.get(str);
    }

    public void put(String str, FlutterEngine flutterEngine) {
        if (flutterEngine != null) {
            this.cachedEngines.put(str, flutterEngine);
        } else {
            this.cachedEngines.remove(str);
        }
    }

    public void remove(String str) {
        put(str, null);
    }

    public void clear() {
        this.cachedEngines.clear();
    }
}
