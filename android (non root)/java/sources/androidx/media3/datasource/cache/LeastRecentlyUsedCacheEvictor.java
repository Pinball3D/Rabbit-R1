package androidx.media3.datasource.cache;

import java.util.Comparator;
import java.util.TreeSet;

/* loaded from: classes2.dex */
public final class LeastRecentlyUsedCacheEvictor implements CacheEvictor {
    private long currentSize;
    private final TreeSet<CacheSpan> leastRecentlyUsed = new TreeSet<>(new Comparator() { // from class: androidx.media3.datasource.cache.LeastRecentlyUsedCacheEvictor$$ExternalSyntheticLambda0
        @Override // java.util.Comparator
        public final int compare(Object obj, Object obj2) {
            int compare;
            compare = LeastRecentlyUsedCacheEvictor.compare((CacheSpan) obj, (CacheSpan) obj2);
            return compare;
        }
    });
    private final long maxBytes;

    @Override // androidx.media3.datasource.cache.CacheEvictor
    public void onCacheInitialized() {
    }

    @Override // androidx.media3.datasource.cache.CacheEvictor
    public boolean requiresCacheSpanTouches() {
        return true;
    }

    public LeastRecentlyUsedCacheEvictor(long j) {
        this.maxBytes = j;
    }

    @Override // androidx.media3.datasource.cache.CacheEvictor
    public void onStartFile(Cache cache, String str, long j, long j2) {
        if (j2 != -1) {
            evictCache(cache, j2);
        }
    }

    @Override // androidx.media3.datasource.cache.Cache.Listener
    public void onSpanAdded(Cache cache, CacheSpan cacheSpan) {
        this.leastRecentlyUsed.add(cacheSpan);
        this.currentSize += cacheSpan.length;
        evictCache(cache, 0L);
    }

    @Override // androidx.media3.datasource.cache.Cache.Listener
    public void onSpanRemoved(Cache cache, CacheSpan cacheSpan) {
        this.leastRecentlyUsed.remove(cacheSpan);
        this.currentSize -= cacheSpan.length;
    }

    @Override // androidx.media3.datasource.cache.Cache.Listener
    public void onSpanTouched(Cache cache, CacheSpan cacheSpan, CacheSpan cacheSpan2) {
        onSpanRemoved(cache, cacheSpan);
        onSpanAdded(cache, cacheSpan2);
    }

    private void evictCache(Cache cache, long j) {
        while (this.currentSize + j > this.maxBytes && !this.leastRecentlyUsed.isEmpty()) {
            cache.removeSpan(this.leastRecentlyUsed.first());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static int compare(CacheSpan cacheSpan, CacheSpan cacheSpan2) {
        if (cacheSpan.lastTouchTimestamp - cacheSpan2.lastTouchTimestamp == 0) {
            return cacheSpan.compareTo(cacheSpan2);
        }
        return cacheSpan.lastTouchTimestamp < cacheSpan2.lastTouchTimestamp ? -1 : 1;
    }
}
