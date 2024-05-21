package io.sentry.config;

import io.sentry.ILogger;
import io.sentry.SentryLevel;
import io.sentry.util.ClassLoaderUtils;
import java.io.BufferedInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.Properties;

/* loaded from: classes3.dex */
final class ClasspathPropertiesLoader implements PropertiesLoader {
    private final ClassLoader classLoader;
    private final String fileName;
    private final ILogger logger;

    public ClasspathPropertiesLoader(String str, ClassLoader classLoader, ILogger iLogger) {
        this.fileName = str;
        this.classLoader = ClassLoaderUtils.classLoaderOrDefault(classLoader);
        this.logger = iLogger;
    }

    public ClasspathPropertiesLoader(ILogger iLogger) {
        this("sentry.properties", ClasspathPropertiesLoader.class.getClassLoader(), iLogger);
    }

    @Override // io.sentry.config.PropertiesLoader
    public Properties load() {
        try {
            InputStream resourceAsStream = this.classLoader.getResourceAsStream(this.fileName);
            if (resourceAsStream == null) {
                if (resourceAsStream != null) {
                    resourceAsStream.close();
                }
                return null;
            }
            try {
                BufferedInputStream bufferedInputStream = new BufferedInputStream(resourceAsStream);
                try {
                    Properties properties = new Properties();
                    properties.load(bufferedInputStream);
                    bufferedInputStream.close();
                    if (resourceAsStream != null) {
                        resourceAsStream.close();
                    }
                    return properties;
                } finally {
                }
            } finally {
            }
        } catch (IOException e) {
            this.logger.log(SentryLevel.ERROR, e, "Failed to load Sentry configuration from classpath resource: %s", this.fileName);
            return null;
        }
    }
}
