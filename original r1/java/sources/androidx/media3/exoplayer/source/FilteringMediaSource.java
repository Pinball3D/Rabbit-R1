package androidx.media3.exoplayer.source;

import androidx.media3.common.StreamKey;
import androidx.media3.common.TrackGroup;
import androidx.media3.common.util.Assertions;
import androidx.media3.exoplayer.SeekParameters;
import androidx.media3.exoplayer.source.MediaPeriod;
import androidx.media3.exoplayer.source.MediaSource;
import androidx.media3.exoplayer.trackselection.ExoTrackSelection;
import androidx.media3.exoplayer.upstream.Allocator;
import com.google.common.collect.ImmutableList;
import com.google.common.collect.ImmutableSet;
import java.io.IOException;
import java.util.Collection;
import java.util.List;
import java.util.Set;

/* loaded from: classes2.dex */
public class FilteringMediaSource extends WrappingMediaSource {
    private final ImmutableSet<Integer> trackTypes;

    public FilteringMediaSource(MediaSource mediaSource, int i) {
        this(mediaSource, ImmutableSet.of(Integer.valueOf(i)));
    }

    public FilteringMediaSource(MediaSource mediaSource, Set<Integer> set) {
        super(mediaSource);
        this.trackTypes = ImmutableSet.copyOf((Collection) set);
    }

    @Override // androidx.media3.exoplayer.source.WrappingMediaSource, androidx.media3.exoplayer.source.MediaSource
    public MediaPeriod createPeriod(MediaSource.MediaPeriodId mediaPeriodId, Allocator allocator, long j) {
        return new FilteringMediaPeriod(super.createPeriod(mediaPeriodId, allocator, j), this.trackTypes);
    }

    @Override // androidx.media3.exoplayer.source.WrappingMediaSource, androidx.media3.exoplayer.source.MediaSource
    public void releasePeriod(MediaPeriod mediaPeriod) {
        super.releasePeriod(((FilteringMediaPeriod) mediaPeriod).mediaPeriod);
    }

    /* loaded from: classes2.dex */
    private static final class FilteringMediaPeriod implements MediaPeriod, MediaPeriod.Callback {
        private MediaPeriod.Callback callback;
        private TrackGroupArray filteredTrackGroups;
        public final MediaPeriod mediaPeriod;
        private final ImmutableSet<Integer> trackTypes;

        public FilteringMediaPeriod(MediaPeriod mediaPeriod, ImmutableSet<Integer> immutableSet) {
            this.mediaPeriod = mediaPeriod;
            this.trackTypes = immutableSet;
        }

        @Override // androidx.media3.exoplayer.source.MediaPeriod
        public void prepare(MediaPeriod.Callback callback, long j) {
            this.callback = callback;
            this.mediaPeriod.prepare(this, j);
        }

        @Override // androidx.media3.exoplayer.source.MediaPeriod
        public void maybeThrowPrepareError() throws IOException {
            this.mediaPeriod.maybeThrowPrepareError();
        }

        @Override // androidx.media3.exoplayer.source.MediaPeriod
        public TrackGroupArray getTrackGroups() {
            return (TrackGroupArray) Assertions.checkNotNull(this.filteredTrackGroups);
        }

        @Override // androidx.media3.exoplayer.source.MediaPeriod
        public List<StreamKey> getStreamKeys(List<ExoTrackSelection> list) {
            return this.mediaPeriod.getStreamKeys(list);
        }

        @Override // androidx.media3.exoplayer.source.MediaPeriod
        public long selectTracks(ExoTrackSelection[] exoTrackSelectionArr, boolean[] zArr, SampleStream[] sampleStreamArr, boolean[] zArr2, long j) {
            return this.mediaPeriod.selectTracks(exoTrackSelectionArr, zArr, sampleStreamArr, zArr2, j);
        }

        @Override // androidx.media3.exoplayer.source.MediaPeriod
        public void discardBuffer(long j, boolean z) {
            this.mediaPeriod.discardBuffer(j, z);
        }

        @Override // androidx.media3.exoplayer.source.MediaPeriod
        public long readDiscontinuity() {
            return this.mediaPeriod.readDiscontinuity();
        }

        @Override // androidx.media3.exoplayer.source.MediaPeriod
        public long seekToUs(long j) {
            return this.mediaPeriod.seekToUs(j);
        }

        @Override // androidx.media3.exoplayer.source.MediaPeriod
        public long getAdjustedSeekPositionUs(long j, SeekParameters seekParameters) {
            return this.mediaPeriod.getAdjustedSeekPositionUs(j, seekParameters);
        }

        @Override // androidx.media3.exoplayer.source.MediaPeriod, androidx.media3.exoplayer.source.SequenceableLoader
        public long getBufferedPositionUs() {
            return this.mediaPeriod.getBufferedPositionUs();
        }

        @Override // androidx.media3.exoplayer.source.MediaPeriod, androidx.media3.exoplayer.source.SequenceableLoader
        public long getNextLoadPositionUs() {
            return this.mediaPeriod.getNextLoadPositionUs();
        }

        @Override // androidx.media3.exoplayer.source.MediaPeriod, androidx.media3.exoplayer.source.SequenceableLoader
        public boolean continueLoading(long j) {
            return this.mediaPeriod.continueLoading(j);
        }

        @Override // androidx.media3.exoplayer.source.MediaPeriod, androidx.media3.exoplayer.source.SequenceableLoader
        public boolean isLoading() {
            return this.mediaPeriod.isLoading();
        }

        @Override // androidx.media3.exoplayer.source.MediaPeriod, androidx.media3.exoplayer.source.SequenceableLoader
        public void reevaluateBuffer(long j) {
            this.mediaPeriod.reevaluateBuffer(j);
        }

        @Override // androidx.media3.exoplayer.source.MediaPeriod.Callback
        public void onPrepared(MediaPeriod mediaPeriod) {
            TrackGroupArray trackGroups = mediaPeriod.getTrackGroups();
            ImmutableList.Builder builder = ImmutableList.builder();
            for (int i = 0; i < trackGroups.length; i++) {
                TrackGroup trackGroup = trackGroups.get(i);
                if (this.trackTypes.contains(Integer.valueOf(trackGroup.type))) {
                    builder.add((ImmutableList.Builder) trackGroup);
                }
            }
            this.filteredTrackGroups = new TrackGroupArray((TrackGroup[]) builder.build().toArray(new TrackGroup[0]));
            ((MediaPeriod.Callback) Assertions.checkNotNull(this.callback)).onPrepared(this);
        }

        @Override // androidx.media3.exoplayer.source.SequenceableLoader.Callback
        public void onContinueLoadingRequested(MediaPeriod mediaPeriod) {
            ((MediaPeriod.Callback) Assertions.checkNotNull(this.callback)).onContinueLoadingRequested(this);
        }
    }
}
