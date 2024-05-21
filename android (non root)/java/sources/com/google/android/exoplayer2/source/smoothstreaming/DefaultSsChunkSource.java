package com.google.android.exoplayer2.source.smoothstreaming;

import android.net.Uri;
import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.SeekParameters;
import com.google.android.exoplayer2.extractor.mp4.FragmentedMp4Extractor;
import com.google.android.exoplayer2.extractor.mp4.Track;
import com.google.android.exoplayer2.source.BehindLiveWindowException;
import com.google.android.exoplayer2.source.chunk.BaseMediaChunkIterator;
import com.google.android.exoplayer2.source.chunk.BundledChunkExtractor;
import com.google.android.exoplayer2.source.chunk.Chunk;
import com.google.android.exoplayer2.source.chunk.ChunkExtractor;
import com.google.android.exoplayer2.source.chunk.ChunkHolder;
import com.google.android.exoplayer2.source.chunk.ContainerMediaChunk;
import com.google.android.exoplayer2.source.chunk.MediaChunk;
import com.google.android.exoplayer2.source.chunk.MediaChunkIterator;
import com.google.android.exoplayer2.source.smoothstreaming.SsChunkSource;
import com.google.android.exoplayer2.source.smoothstreaming.manifest.SsManifest;
import com.google.android.exoplayer2.trackselection.ExoTrackSelection;
import com.google.android.exoplayer2.trackselection.TrackSelectionUtil;
import com.google.android.exoplayer2.upstream.DataSource;
import com.google.android.exoplayer2.upstream.DataSpec;
import com.google.android.exoplayer2.upstream.LoadErrorHandlingPolicy;
import com.google.android.exoplayer2.upstream.LoaderErrorThrower;
import com.google.android.exoplayer2.upstream.TransferListener;
import com.google.android.exoplayer2.util.Assertions;
import java.io.IOException;
import java.util.List;

/* loaded from: classes2.dex */
public class DefaultSsChunkSource implements SsChunkSource {
    private final ChunkExtractor[] chunkExtractors;
    private int currentManifestChunkOffset;
    private final DataSource dataSource;
    private IOException fatalError;
    private SsManifest manifest;
    private final LoaderErrorThrower manifestLoaderErrorThrower;
    private final int streamElementIndex;
    private ExoTrackSelection trackSelection;

    @Override // com.google.android.exoplayer2.source.chunk.ChunkSource
    public void onChunkLoadCompleted(Chunk chunk) {
    }

    @Override // com.google.android.exoplayer2.source.smoothstreaming.SsChunkSource
    public void updateTrackSelection(ExoTrackSelection exoTrackSelection) {
        this.trackSelection = exoTrackSelection;
    }

    /* loaded from: classes2.dex */
    public static final class Factory implements SsChunkSource.Factory {
        private final DataSource.Factory dataSourceFactory;

        public Factory(DataSource.Factory factory) {
            this.dataSourceFactory = factory;
        }

        @Override // com.google.android.exoplayer2.source.smoothstreaming.SsChunkSource.Factory
        public SsChunkSource createChunkSource(LoaderErrorThrower loaderErrorThrower, SsManifest ssManifest, int i, ExoTrackSelection exoTrackSelection, TransferListener transferListener) {
            DataSource createDataSource = this.dataSourceFactory.createDataSource();
            if (transferListener != null) {
                createDataSource.addTransferListener(transferListener);
            }
            return new DefaultSsChunkSource(loaderErrorThrower, ssManifest, i, exoTrackSelection, createDataSource);
        }
    }

    public DefaultSsChunkSource(LoaderErrorThrower loaderErrorThrower, SsManifest ssManifest, int i, ExoTrackSelection exoTrackSelection, DataSource dataSource) {
        this.manifestLoaderErrorThrower = loaderErrorThrower;
        this.manifest = ssManifest;
        this.streamElementIndex = i;
        this.trackSelection = exoTrackSelection;
        this.dataSource = dataSource;
        SsManifest.StreamElement streamElement = ssManifest.streamElements[i];
        this.chunkExtractors = new ChunkExtractor[exoTrackSelection.length()];
        int i2 = 0;
        while (i2 < this.chunkExtractors.length) {
            int indexInTrackGroup = exoTrackSelection.getIndexInTrackGroup(i2);
            Format format = streamElement.formats[indexInTrackGroup];
            int i3 = i2;
            this.chunkExtractors[i3] = new BundledChunkExtractor(new FragmentedMp4Extractor(3, null, new Track(indexInTrackGroup, streamElement.type, streamElement.timescale, -9223372036854775807L, ssManifest.durationUs, format, 0, format.drmInitData != null ? ((SsManifest.ProtectionElement) Assertions.checkNotNull(ssManifest.protectionElement)).trackEncryptionBoxes : null, streamElement.type == 2 ? 4 : 0, null, null)), streamElement.type, format);
            i2 = i3 + 1;
        }
    }

    @Override // com.google.android.exoplayer2.source.chunk.ChunkSource
    public long getAdjustedSeekPositionUs(long j, SeekParameters seekParameters) {
        SsManifest.StreamElement streamElement = this.manifest.streamElements[this.streamElementIndex];
        int chunkIndex = streamElement.getChunkIndex(j);
        long startTimeUs = streamElement.getStartTimeUs(chunkIndex);
        return seekParameters.resolveSeekPositionUs(j, startTimeUs, (startTimeUs >= j || chunkIndex >= streamElement.chunkCount + (-1)) ? startTimeUs : streamElement.getStartTimeUs(chunkIndex + 1));
    }

    @Override // com.google.android.exoplayer2.source.smoothstreaming.SsChunkSource
    public void updateManifest(SsManifest ssManifest) {
        SsManifest.StreamElement streamElement = this.manifest.streamElements[this.streamElementIndex];
        int i = streamElement.chunkCount;
        SsManifest.StreamElement streamElement2 = ssManifest.streamElements[this.streamElementIndex];
        if (i == 0 || streamElement2.chunkCount == 0) {
            this.currentManifestChunkOffset += i;
        } else {
            int i2 = i - 1;
            long startTimeUs = streamElement.getStartTimeUs(i2) + streamElement.getChunkDurationUs(i2);
            long startTimeUs2 = streamElement2.getStartTimeUs(0);
            if (startTimeUs <= startTimeUs2) {
                this.currentManifestChunkOffset += i;
            } else {
                this.currentManifestChunkOffset += streamElement.getChunkIndex(startTimeUs2);
            }
        }
        this.manifest = ssManifest;
    }

    @Override // com.google.android.exoplayer2.source.chunk.ChunkSource
    public void maybeThrowError() throws IOException {
        IOException iOException = this.fatalError;
        if (iOException != null) {
            throw iOException;
        }
        this.manifestLoaderErrorThrower.maybeThrowError();
    }

    @Override // com.google.android.exoplayer2.source.chunk.ChunkSource
    public int getPreferredQueueSize(long j, List<? extends MediaChunk> list) {
        if (this.fatalError != null || this.trackSelection.length() < 2) {
            return list.size();
        }
        return this.trackSelection.evaluateQueueSize(j, list);
    }

    @Override // com.google.android.exoplayer2.source.chunk.ChunkSource
    public boolean shouldCancelLoad(long j, Chunk chunk, List<? extends MediaChunk> list) {
        if (this.fatalError != null) {
            return false;
        }
        return this.trackSelection.shouldCancelChunkLoad(j, chunk, list);
    }

    @Override // com.google.android.exoplayer2.source.chunk.ChunkSource
    public final void getNextChunk(long j, long j2, List<? extends MediaChunk> list, ChunkHolder chunkHolder) {
        int nextChunkIndex;
        long j3 = j2;
        if (this.fatalError != null) {
            return;
        }
        SsManifest.StreamElement streamElement = this.manifest.streamElements[this.streamElementIndex];
        if (streamElement.chunkCount == 0) {
            chunkHolder.endOfStream = !this.manifest.isLive;
            return;
        }
        if (list.isEmpty()) {
            nextChunkIndex = streamElement.getChunkIndex(j3);
        } else {
            nextChunkIndex = (int) (list.get(list.size() - 1).getNextChunkIndex() - this.currentManifestChunkOffset);
            if (nextChunkIndex < 0) {
                this.fatalError = new BehindLiveWindowException();
                return;
            }
        }
        if (nextChunkIndex >= streamElement.chunkCount) {
            chunkHolder.endOfStream = !this.manifest.isLive;
            return;
        }
        long j4 = j3 - j;
        long resolveTimeToLiveEdgeUs = resolveTimeToLiveEdgeUs(j);
        int length = this.trackSelection.length();
        MediaChunkIterator[] mediaChunkIteratorArr = new MediaChunkIterator[length];
        for (int i = 0; i < length; i++) {
            mediaChunkIteratorArr[i] = new StreamElementIterator(streamElement, this.trackSelection.getIndexInTrackGroup(i), nextChunkIndex);
        }
        this.trackSelection.updateSelectedTrack(j, j4, resolveTimeToLiveEdgeUs, list, mediaChunkIteratorArr);
        long startTimeUs = streamElement.getStartTimeUs(nextChunkIndex);
        long chunkDurationUs = startTimeUs + streamElement.getChunkDurationUs(nextChunkIndex);
        if (!list.isEmpty()) {
            j3 = -9223372036854775807L;
        }
        long j5 = j3;
        int i2 = nextChunkIndex + this.currentManifestChunkOffset;
        int selectedIndex = this.trackSelection.getSelectedIndex();
        chunkHolder.chunk = newMediaChunk(this.trackSelection.getSelectedFormat(), this.dataSource, streamElement.buildRequestUri(this.trackSelection.getIndexInTrackGroup(selectedIndex), nextChunkIndex), i2, startTimeUs, chunkDurationUs, j5, this.trackSelection.getSelectionReason(), this.trackSelection.getSelectionData(), this.chunkExtractors[selectedIndex]);
    }

    @Override // com.google.android.exoplayer2.source.chunk.ChunkSource
    public boolean onChunkLoadError(Chunk chunk, boolean z, LoadErrorHandlingPolicy.LoadErrorInfo loadErrorInfo, LoadErrorHandlingPolicy loadErrorHandlingPolicy) {
        LoadErrorHandlingPolicy.FallbackSelection fallbackSelectionFor = loadErrorHandlingPolicy.getFallbackSelectionFor(TrackSelectionUtil.createFallbackOptions(this.trackSelection), loadErrorInfo);
        if (z && fallbackSelectionFor != null && fallbackSelectionFor.type == 2) {
            ExoTrackSelection exoTrackSelection = this.trackSelection;
            if (exoTrackSelection.blacklist(exoTrackSelection.indexOf(chunk.trackFormat), fallbackSelectionFor.exclusionDurationMs)) {
                return true;
            }
        }
        return false;
    }

    @Override // com.google.android.exoplayer2.source.chunk.ChunkSource
    public void release() {
        for (ChunkExtractor chunkExtractor : this.chunkExtractors) {
            chunkExtractor.release();
        }
    }

    private static MediaChunk newMediaChunk(Format format, DataSource dataSource, Uri uri, int i, long j, long j2, long j3, int i2, Object obj, ChunkExtractor chunkExtractor) {
        return new ContainerMediaChunk(dataSource, new DataSpec(uri), format, i2, obj, j, j2, j3, -9223372036854775807L, i, 1, j, chunkExtractor);
    }

    private long resolveTimeToLiveEdgeUs(long j) {
        if (!this.manifest.isLive) {
            return -9223372036854775807L;
        }
        SsManifest.StreamElement streamElement = this.manifest.streamElements[this.streamElementIndex];
        int i = streamElement.chunkCount - 1;
        return (streamElement.getStartTimeUs(i) + streamElement.getChunkDurationUs(i)) - j;
    }

    /* loaded from: classes2.dex */
    private static final class StreamElementIterator extends BaseMediaChunkIterator {
        private final SsManifest.StreamElement streamElement;
        private final int trackIndex;

        public StreamElementIterator(SsManifest.StreamElement streamElement, int i, int i2) {
            super(i2, streamElement.chunkCount - 1);
            this.streamElement = streamElement;
            this.trackIndex = i;
        }

        @Override // com.google.android.exoplayer2.source.chunk.MediaChunkIterator
        public DataSpec getDataSpec() {
            checkInBounds();
            return new DataSpec(this.streamElement.buildRequestUri(this.trackIndex, (int) getCurrentIndex()));
        }

        @Override // com.google.android.exoplayer2.source.chunk.MediaChunkIterator
        public long getChunkStartTimeUs() {
            checkInBounds();
            return this.streamElement.getStartTimeUs((int) getCurrentIndex());
        }

        @Override // com.google.android.exoplayer2.source.chunk.MediaChunkIterator
        public long getChunkEndTimeUs() {
            return getChunkStartTimeUs() + this.streamElement.getChunkDurationUs((int) getCurrentIndex());
        }
    }
}
