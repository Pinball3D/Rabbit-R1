package androidx.media3.exoplayer.source.chunk;

import android.net.Uri;
import androidx.media3.common.Format;
import androidx.media3.common.util.Assertions;
import androidx.media3.datasource.DataSource;
import androidx.media3.datasource.DataSpec;
import androidx.media3.datasource.StatsDataSource;
import androidx.media3.exoplayer.source.LoadEventInfo;
import androidx.media3.exoplayer.upstream.Loader;
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
