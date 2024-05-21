package io.sentry.internal.modules;

import java.util.Map;

/* loaded from: classes3.dex */
public final class NoOpModulesLoader implements IModulesLoader {
    private static final NoOpModulesLoader instance = new NoOpModulesLoader();

    public static NoOpModulesLoader getInstance() {
        return instance;
    }

    @Override // io.sentry.internal.modules.IModulesLoader
    public Map<String, String> getOrLoadModules() {
        return null;
    }

    private NoOpModulesLoader() {
    }
}
