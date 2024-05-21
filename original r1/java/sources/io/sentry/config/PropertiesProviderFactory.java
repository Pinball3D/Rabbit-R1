package io.sentry.config;

import io.sentry.SystemOutLogger;
import java.util.ArrayList;
import java.util.Properties;

/* loaded from: classes3.dex */
public final class PropertiesProviderFactory {
    public static PropertiesProvider create() {
        Properties load;
        Properties load2;
        SystemOutLogger systemOutLogger = new SystemOutLogger();
        ArrayList arrayList = new ArrayList();
        arrayList.add(new SystemPropertyPropertiesProvider());
        arrayList.add(new EnvironmentVariablePropertiesProvider());
        String property = System.getProperty("sentry.properties.file");
        if (property != null && (load2 = new FilesystemPropertiesLoader(property, systemOutLogger).load()) != null) {
            arrayList.add(new SimplePropertiesProvider(load2));
        }
        String str = System.getenv("SENTRY_PROPERTIES_FILE");
        if (str != null && (load = new FilesystemPropertiesLoader(str, systemOutLogger).load()) != null) {
            arrayList.add(new SimplePropertiesProvider(load));
        }
        Properties load3 = new ClasspathPropertiesLoader(systemOutLogger).load();
        if (load3 != null) {
            arrayList.add(new SimplePropertiesProvider(load3));
        }
        Properties load4 = new FilesystemPropertiesLoader("sentry.properties", systemOutLogger).load();
        if (load4 != null) {
            arrayList.add(new SimplePropertiesProvider(load4));
        }
        return new CompositePropertiesProvider(arrayList);
    }
}
