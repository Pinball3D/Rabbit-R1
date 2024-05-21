package com.google.android.exoplayer2.source;

import android.net.Uri;
import com.google.android.exoplayer2.upstream.DataSpec;
import java.util.Collections;
import java.util.List;
import java.util.Map;
import java.util.concurrent.atomic.AtomicLong;

/* loaded from: classes2.dex */
public final class LoadEventInfo {
    private static final AtomicLong idSource = new AtomicLong();
    public final long bytesLoaded;
    public final DataSpec dataSpec;
    public final long elapsedRealtimeMs;
    public final long loadDurationMs;
    public final long loadTaskId;
    public final Map<String, List<String>> responseHeaders;
    public final Uri uri;

    public static long getNewId() {
        return idSource.getAndIncrement();
    }

    public LoadEventInfo(long j, DataSpec dataSpec, long j2) {
        this(j, dataSpec, dataSpec.uri, Collections.emptyMap(), j2, 0L, 0L);
    }

    public LoadEventInfo(long j, DataSpec dataSpec, Uri uri, Map<String, List<String>> map, long j2, long j3, long j4) {
        this.loadTaskId = j;
        this.dataSpec = dataSpec;
        this.uri = uri;
        this.responseHeaders = map;
        this.elapsedRealtimeMs = j2;
        this.loadDurationMs = j3;
        this.bytesLoaded = j4;
    }
}
