package io.sentry.internal.debugmeta;

import java.util.List;
import java.util.Properties;

/* loaded from: classes3.dex */
public final class NoOpDebugMetaLoader implements IDebugMetaLoader {
    private static final NoOpDebugMetaLoader instance = new NoOpDebugMetaLoader();

    public static NoOpDebugMetaLoader getInstance() {
        return instance;
    }

    @Override // io.sentry.internal.debugmeta.IDebugMetaLoader
    public List<Properties> loadDebugMeta() {
        return null;
    }

    private NoOpDebugMetaLoader() {
    }
}
