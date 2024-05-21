package io.sentry.cache;

import com.google.android.exoplayer2.C;
import io.sentry.ISerializer;
import io.sentry.JsonDeserializer;
import io.sentry.SentryLevel;
import io.sentry.SentryOptions;
import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.InputStreamReader;
import java.io.OutputStreamWriter;
import java.io.Writer;
import java.nio.charset.Charset;

/* loaded from: classes3.dex */
final class CacheUtils {
    private static final Charset UTF_8 = Charset.forName(C.UTF8_NAME);

    CacheUtils() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static <T> void store(SentryOptions sentryOptions, T t, String str, String str2) {
        File ensureCacheDir = ensureCacheDir(sentryOptions, str);
        if (ensureCacheDir == null) {
            sentryOptions.getLogger().log(SentryLevel.INFO, "Cache dir is not set, cannot store in scope cache", new Object[0]);
            return;
        }
        File file = new File(ensureCacheDir, str2);
        if (file.exists()) {
            sentryOptions.getLogger().log(SentryLevel.DEBUG, "Overwriting %s in scope cache", str2);
            if (!file.delete()) {
                sentryOptions.getLogger().log(SentryLevel.ERROR, "Failed to delete: %s", file.getAbsolutePath());
            }
        }
        try {
            FileOutputStream fileOutputStream = new FileOutputStream(file);
            try {
                BufferedWriter bufferedWriter = new BufferedWriter(new OutputStreamWriter(fileOutputStream, UTF_8));
                try {
                    sentryOptions.getSerializer().serialize((ISerializer) t, (Writer) bufferedWriter);
                    bufferedWriter.close();
                    fileOutputStream.close();
                } finally {
                }
            } finally {
            }
        } catch (Throwable th) {
            sentryOptions.getLogger().log(SentryLevel.ERROR, th, "Error persisting entity: %s", str2);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void delete(SentryOptions sentryOptions, String str, String str2) {
        File ensureCacheDir = ensureCacheDir(sentryOptions, str);
        if (ensureCacheDir == null) {
            sentryOptions.getLogger().log(SentryLevel.INFO, "Cache dir is not set, cannot delete from scope cache", new Object[0]);
            return;
        }
        File file = new File(ensureCacheDir, str2);
        if (file.exists()) {
            sentryOptions.getLogger().log(SentryLevel.DEBUG, "Deleting %s from scope cache", str2);
            if (file.delete()) {
                return;
            }
            sentryOptions.getLogger().log(SentryLevel.ERROR, "Failed to delete: %s", file.getAbsolutePath());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static <T, R> T read(SentryOptions sentryOptions, String str, String str2, Class<T> cls, JsonDeserializer<R> jsonDeserializer) {
        File ensureCacheDir = ensureCacheDir(sentryOptions, str);
        if (ensureCacheDir == null) {
            sentryOptions.getLogger().log(SentryLevel.INFO, "Cache dir is not set, cannot read from scope cache", new Object[0]);
            return null;
        }
        File file = new File(ensureCacheDir, str2);
        if (file.exists()) {
            try {
                BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(new FileInputStream(file), UTF_8));
                try {
                    if (jsonDeserializer == null) {
                        T t = (T) sentryOptions.getSerializer().deserialize(bufferedReader, cls);
                        bufferedReader.close();
                        return t;
                    }
                    T t2 = (T) sentryOptions.getSerializer().deserializeCollection(bufferedReader, cls, jsonDeserializer);
                    bufferedReader.close();
                    return t2;
                } finally {
                }
            } catch (Throwable th) {
                sentryOptions.getLogger().log(SentryLevel.ERROR, th, "Error reading entity from scope cache: %s", str2);
            }
        } else {
            sentryOptions.getLogger().log(SentryLevel.DEBUG, "No entry stored for %s", str2);
        }
        return null;
    }

    private static File ensureCacheDir(SentryOptions sentryOptions, String str) {
        String cacheDirPath = sentryOptions.getCacheDirPath();
        if (cacheDirPath == null) {
            return null;
        }
        File file = new File(cacheDirPath, str);
        file.mkdirs();
        return file;
    }
}
