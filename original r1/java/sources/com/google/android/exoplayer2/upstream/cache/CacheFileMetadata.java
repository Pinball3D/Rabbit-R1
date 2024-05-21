package com.google.android.exoplayer2.upstream.cache;

/* loaded from: classes2.dex */
final class CacheFileMetadata {
    public final long lastTouchTimestamp;
    public final long length;

    public CacheFileMetadata(long j, long j2) {
        this.length = j;
        this.lastTouchTimestamp = j2;
    }
}
