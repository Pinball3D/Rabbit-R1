package androidx.media3.datasource.cache;

import androidx.media3.datasource.cache.Cache;

/* loaded from: classes2.dex */
public interface CacheEvictor extends Cache.Listener {
    void onCacheInitialized();

    void onStartFile(Cache cache, String str, long j, long j2);

    boolean requiresCacheSpanTouches();
}
