package io.sentry.util;

/* loaded from: classes3.dex */
public final class ClassLoaderUtils {
    public static ClassLoader classLoaderOrDefault(ClassLoader classLoader) {
        return classLoader == null ? ClassLoader.getSystemClassLoader() : classLoader;
    }
}
