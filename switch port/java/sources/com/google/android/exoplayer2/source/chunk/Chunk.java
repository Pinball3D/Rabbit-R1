package com.google.android.exoplayer2.source.chunk;

import android.net.Uri;
import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.source.LoadEventInfo;
import com.google.android.exoplayer2.upstream.DataSource;
import com.google.android.exoplayer2.upstream.DataSpec;
import com.google.android.exoplayer2.upstream.Loader;
import com.google.android.exoplayer2.upstream.StatsDataSource;
import com.google.android.exoplayer2.util.Assertions;
import java.util.List;
import java.util.Map;

/* loaded from: classes2.dex */
public abstract class Chunk implements Loader.Loadable {
    protected final StatsDataSource dataSource;
    public final DataSpec dataSpec;
    public final long endTimeUs;
    public final long loadTaskId = LoadEventInfo.getNewId();
    public final long startTimeUs;
    public final Format trackFormat;
    public final Object trackSelectionData;
    public final int trackSelectionReason;
    public final int type;

    public final long getDurationUs() {
        return this.endTimeUs - this.startTimeUs;
    }

    public Chunk(DataSource dataSource, DataSpec dataSpec, int i, Format format, int i2, Object obj, long j, long j2) {
        this.dataSource = new StatsDataSource(dataSource);
        this.dataSpec = (DataSpec) Assertions.checkNotNull(dataSpec);
        this.type = i;
        this.trackFormat = format;
        this.trackSelectionReason = i2;
        this.trackSelectionData = obj;
        this.startTimeUs = j;
        this.endTimeUs = j2;
    }

    public final long bytesLoaded() {
        return this.dataSource.getBytesRead();
    }

    public final Uri getUri() {
        return this.dataSource.getLastOpenedUri();
    }

    public final Map<String, List<String>> getResponseHeaders() {
        return this.dataSource.getLastResponseHeaders();
    }
}
