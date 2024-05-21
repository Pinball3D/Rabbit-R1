package io.flutter.util;

import android.content.Context;
import java.io.File;

/* loaded from: classes3.dex */
public final class PathUtils {
    public static String getFilesDir(Context context) {
        File filesDir = context.getFilesDir();
        if (filesDir == null) {
            filesDir = new File(getDataDirPath(context), "files");
        }
        return filesDir.getPath();
    }

    public static String getDataDirectory(Context context) {
        File dir = context.getDir("flutter", 0);
        if (dir == null) {
            dir = new File(getDataDirPath(context), "app_flutter");
        }
        return dir.getPath();
    }

    public static String getCacheDirectory(Context context) {
        File codeCacheDir = context.getCodeCacheDir();
        if (codeCacheDir == null) {
            codeCacheDir = context.getCacheDir();
        }
        if (codeCacheDir == null) {
            codeCacheDir = new File(getDataDirPath(context), "cache");
        }
        return codeCacheDir.getPath();
    }

    private static String getDataDirPath(Context context) {
        return context.getDataDir().getPath();
    }
}
