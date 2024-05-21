package com.google.android.exoplayer2.source.chunk;

import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.upstream.DataSource;
import com.google.android.exoplayer2.upstream.DataSpec;
import com.google.android.exoplayer2.util.Assertions;

/* loaded from: classes2.dex */
public abstract class MediaChunk extends Chunk {
    public final long chunkIndex;

    public long getNextChunkIndex() {
        long j = this.chunkIndex;
        if (j != -1) {
            return 1 + j;
        }
        return -1L;
    }

    public abstract boolean isLoadCompleted();

    public MediaChunk(DataSource dataSource, DataSpec dataSpec, Format format, int i, Object obj, long j, long j2, long j3) {
        super(dataSource, dataSpec, 1, format, i, obj, j, j2);
        Assertions.checkNotNull(format);
        this.chunkIndex = j3;
    }
}
