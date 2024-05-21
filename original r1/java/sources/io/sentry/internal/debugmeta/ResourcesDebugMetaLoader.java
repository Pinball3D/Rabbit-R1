package io.sentry.internal.debugmeta;

import io.sentry.ILogger;
import io.sentry.SentryLevel;
import io.sentry.util.ClassLoaderUtils;
import io.sentry.util.DebugMetaPropertiesApplier;
import java.io.IOException;
import java.io.InputStream;
import java.net.URL;
import java.util.ArrayList;
import java.util.Enumeration;
import java.util.List;
import java.util.Properties;

/* loaded from: classes3.dex */
public final class ResourcesDebugMetaLoader implements IDebugMetaLoader {
    private final ClassLoader classLoader;
    private final ILogger logger;

    public ResourcesDebugMetaLoader(ILogger iLogger) {
        this(iLogger, ResourcesDebugMetaLoader.class.getClassLoader());
    }

    ResourcesDebugMetaLoader(ILogger iLogger, ClassLoader classLoader) {
        this.logger = iLogger;
        this.classLoader = ClassLoaderUtils.classLoaderOrDefault(classLoader);
    }

    @Override // io.sentry.internal.debugmeta.IDebugMetaLoader
    public List<Properties> loadDebugMeta() {
        InputStream openStream;
        ArrayList arrayList = new ArrayList();
        try {
            Enumeration<URL> resources = this.classLoader.getResources(DebugMetaPropertiesApplier.DEBUG_META_PROPERTIES_FILENAME);
            while (resources.hasMoreElements()) {
                URL nextElement = resources.nextElement();
                try {
                    openStream = nextElement.openStream();
                } catch (RuntimeException e) {
                    this.logger.log(SentryLevel.ERROR, e, "%s file is malformed.", nextElement);
                }
                try {
                    Properties properties = new Properties();
                    properties.load(openStream);
                    arrayList.add(properties);
                    this.logger.log(SentryLevel.INFO, "Debug Meta Data Properties loaded from %s", nextElement);
                    if (openStream != null) {
                        openStream.close();
                    }
                } catch (Throwable th) {
                    if (openStream != null) {
                        try {
                            openStream.close();
                        } catch (Throwable th2) {
                            th.addSuppressed(th2);
                        }
                    }
                    throw th;
                    break;
                }
            }
        } catch (IOException e2) {
            this.logger.log(SentryLevel.ERROR, e2, "Failed to load %s", DebugMetaPropertiesApplier.DEBUG_META_PROPERTIES_FILENAME);
        }
        if (!arrayList.isEmpty()) {
            return arrayList;
        }
        this.logger.log(SentryLevel.INFO, "No %s file was found.", DebugMetaPropertiesApplier.DEBUG_META_PROPERTIES_FILENAME);
        return null;
    }
}
