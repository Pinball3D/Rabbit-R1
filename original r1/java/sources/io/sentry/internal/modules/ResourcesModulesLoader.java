package io.sentry.internal.modules;

import io.sentry.ILogger;
import io.sentry.SentryLevel;
import io.sentry.util.ClassLoaderUtils;
import java.io.IOException;
import java.io.InputStream;
import java.util.Map;
import java.util.TreeMap;

/* loaded from: classes3.dex */
public final class ResourcesModulesLoader extends ModulesLoader {
    private final ClassLoader classLoader;

    public ResourcesModulesLoader(ILogger iLogger) {
        this(iLogger, ResourcesModulesLoader.class.getClassLoader());
    }

    ResourcesModulesLoader(ILogger iLogger, ClassLoader classLoader) {
        super(iLogger);
        this.classLoader = ClassLoaderUtils.classLoaderOrDefault(classLoader);
    }

    @Override // io.sentry.internal.modules.ModulesLoader
    protected Map<String, String> loadModules() {
        TreeMap treeMap = new TreeMap();
        try {
            InputStream resourceAsStream = this.classLoader.getResourceAsStream(ModulesLoader.EXTERNAL_MODULES_FILENAME);
            try {
                if (resourceAsStream == null) {
                    this.logger.log(SentryLevel.INFO, "%s file was not found.", ModulesLoader.EXTERNAL_MODULES_FILENAME);
                    if (resourceAsStream != null) {
                        resourceAsStream.close();
                    }
                    return treeMap;
                }
                Map<String, String> parseStream = parseStream(resourceAsStream);
                if (resourceAsStream != null) {
                    resourceAsStream.close();
                }
                return parseStream;
            } finally {
            }
        } catch (IOException e) {
            this.logger.log(SentryLevel.INFO, "Access to resources failed.", e);
            return treeMap;
        } catch (SecurityException e2) {
            this.logger.log(SentryLevel.INFO, "Access to resources denied.", e2);
            return treeMap;
        }
    }
}
