package androidx.media3.datasource.cache;

import java.io.File;

/* loaded from: classes2.dex */
public class CacheSpan implements Comparable<CacheSpan> {
    public final File file;
    public final boolean isCached;
    public final String key;
    public final long lastTouchTimestamp;
    public final long length;
    public final long position;

    public boolean isHoleSpan() {
        return !this.isCached;
    }

    public boolean isOpenEnded() {
        return this.length == -1;
    }

    public CacheSpan(String str, long j, long j2) {
        this(str, j, j2, -9223372036854775807L, null);
    }

    public CacheSpan(String str, long j, long j2, long j3, File file) {
        this.key = str;
        this.position = j;
        this.length = j2;
        this.isCached = file != null;
        this.file = file;
        this.lastTouchTimestamp = j3;
    }

    @Override // java.lang.Comparable
    public int compareTo(CacheSpan cacheSpan) {
        if (!this.key.equals(cacheSpan.key)) {
            return this.key.compareTo(cacheSpan.key);
        }
        long j = this.position - cacheSpan.position;
        if (j == 0) {
            return 0;
        }
        return j < 0 ? -1 : 1;
    }

    public String toString() {
        return "[" + this.position + ", " + this.length + "]";
    }
}
