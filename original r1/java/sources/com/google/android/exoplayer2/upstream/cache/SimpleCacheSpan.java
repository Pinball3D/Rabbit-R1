package com.google.android.exoplayer2.upstream.cache;

import com.google.android.exoplayer2.util.Assertions;
import com.google.android.exoplayer2.util.Util;
import java.io.File;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public final class SimpleCacheSpan extends CacheSpan {
    private static final Pattern CACHE_FILE_PATTERN_V1 = Pattern.compile("^(.+)\\.(\\d+)\\.(\\d+)\\.v1\\.exo$", 32);
    private static final Pattern CACHE_FILE_PATTERN_V2 = Pattern.compile("^(.+)\\.(\\d+)\\.(\\d+)\\.v2\\.exo$", 32);
    private static final Pattern CACHE_FILE_PATTERN_V3 = Pattern.compile("^(\\d+)\\.(\\d+)\\.(\\d+)\\.v3\\.exo$", 32);
    static final String COMMON_SUFFIX = ".exo";
    private static final String SUFFIX = ".v3.exo";

    public static File getCacheFile(File file, int i, long j, long j2) {
        return new File(file, i + "." + j + "." + j2 + SUFFIX);
    }

    public static SimpleCacheSpan createLookup(String str, long j) {
        return new SimpleCacheSpan(str, j, -1L, -9223372036854775807L, null);
    }

    public static SimpleCacheSpan createHole(String str, long j, long j2) {
        return new SimpleCacheSpan(str, j, j2, -9223372036854775807L, null);
    }

    public static SimpleCacheSpan createCacheEntry(File file, long j, CachedContentIndex cachedContentIndex) {
        return createCacheEntry(file, j, -9223372036854775807L, cachedContentIndex);
    }

    public static SimpleCacheSpan createCacheEntry(File file, long j, long j2, CachedContentIndex cachedContentIndex) {
        File file2;
        String keyForId;
        String name = file.getName();
        if (name.endsWith(SUFFIX)) {
            file2 = file;
        } else {
            File upgradeFile = upgradeFile(file, cachedContentIndex);
            if (upgradeFile == null) {
                return null;
            }
            file2 = upgradeFile;
            name = upgradeFile.getName();
        }
        Matcher matcher = CACHE_FILE_PATTERN_V3.matcher(name);
        if (!matcher.matches() || (keyForId = cachedContentIndex.getKeyForId(Integer.parseInt((String) Assertions.checkNotNull(matcher.group(1))))) == null) {
            return null;
        }
        long length = j == -1 ? file2.length() : j;
        if (length == 0) {
            return null;
        }
        return new SimpleCacheSpan(keyForId, Long.parseLong((String) Assertions.checkNotNull(matcher.group(2))), length, j2 == -9223372036854775807L ? Long.parseLong((String) Assertions.checkNotNull(matcher.group(3))) : j2, file2);
    }

    private static File upgradeFile(File file, CachedContentIndex cachedContentIndex) {
        String str;
        String name = file.getName();
        Matcher matcher = CACHE_FILE_PATTERN_V2.matcher(name);
        if (matcher.matches()) {
            str = Util.unescapeFileName((String) Assertions.checkNotNull(matcher.group(1)));
        } else {
            matcher = CACHE_FILE_PATTERN_V1.matcher(name);
            str = matcher.matches() ? (String) Assertions.checkNotNull(matcher.group(1)) : null;
        }
        if (str == null) {
            return null;
        }
        File cacheFile = getCacheFile((File) Assertions.checkStateNotNull(file.getParentFile()), cachedContentIndex.assignIdForKey(str), Long.parseLong((String) Assertions.checkNotNull(matcher.group(2))), Long.parseLong((String) Assertions.checkNotNull(matcher.group(3))));
        if (file.renameTo(cacheFile)) {
            return cacheFile;
        }
        return null;
    }

    private SimpleCacheSpan(String str, long j, long j2, long j3, File file) {
        super(str, j, j2, j3, file);
    }

    public SimpleCacheSpan copyWithFileAndLastTouchTimestamp(File file, long j) {
        Assertions.checkState(this.isCached);
        return new SimpleCacheSpan(this.key, this.position, this.length, j, file);
    }
}
