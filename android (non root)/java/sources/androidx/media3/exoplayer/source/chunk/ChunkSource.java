package androidx.media3.exoplayer.source.chunk;

import androidx.media3.exoplayer.SeekParameters;
import androidx.media3.exoplayer.upstream.LoadErrorHandlingPolicy;
import java.io.IOException;
import java.util.List;

/* loaded from: classes2.dex */
public interface ChunkSource {
    long getAdjustedSeekPositionUs(long j, SeekParameters seekParameters);

    void getNextChunk(long j, long j2, List<? extends MediaChunk> list, ChunkHolder chunkHolder);

    int getPreferredQueueSize(long j, List<? extends MediaChunk> list);

    void maybeThrowError() throws IOException;

    void onChunkLoadCompleted(Chunk chunk);

    boolean onChunkLoadError(Chunk chunk, boolean z, LoadErrorHandlingPolicy.LoadErrorInfo loadErrorInfo, LoadErrorHandlingPolicy loadErrorHandlingPolicy);

    void release();

    boolean shouldCancelLoad(long j, Chunk chunk, List<? extends MediaChunk> list);
}
