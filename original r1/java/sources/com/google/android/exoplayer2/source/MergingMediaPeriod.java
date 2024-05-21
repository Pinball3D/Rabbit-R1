package com.google.android.exoplayer2.source;

import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.FormatHolder;
import com.google.android.exoplayer2.SeekParameters;
import com.google.android.exoplayer2.decoder.DecoderInputBuffer;
import com.google.android.exoplayer2.offline.StreamKey;
import com.google.android.exoplayer2.source.MediaPeriod;
import com.google.android.exoplayer2.source.chunk.Chunk;
import com.google.android.exoplayer2.source.chunk.MediaChunk;
import com.google.android.exoplayer2.source.chunk.MediaChunkIterator;
import com.google.android.exoplayer2.trackselection.ExoTrackSelection;
import com.google.android.exoplayer2.util.Assertions;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.IdentityHashMap;
import java.util.List;

/* loaded from: classes2.dex */
final class MergingMediaPeriod implements MediaPeriod, MediaPeriod.Callback {
    private MediaPeriod.Callback callback;
    private SequenceableLoader compositeSequenceableLoader;
    private final CompositeSequenceableLoaderFactory compositeSequenceableLoaderFactory;
    private final MediaPeriod[] periods;
    private TrackGroupArray trackGroups;
    private final ArrayList<MediaPeriod> childrenPendingPreparation = new ArrayList<>();
    private final HashMap<TrackGroup, TrackGroup> childTrackGroupByMergedTrackGroup = new HashMap<>();
    private final IdentityHashMap<SampleStream, Integer> streamPeriodIndices = new IdentityHashMap<>();
    private MediaPeriod[] enabledPeriods = new MediaPeriod[0];

    public MergingMediaPeriod(CompositeSequenceableLoaderFactory compositeSequenceableLoaderFactory, long[] jArr, MediaPeriod... mediaPeriodArr) {
        this.compositeSequenceableLoaderFactory = compositeSequenceableLoaderFactory;
        this.periods = mediaPeriodArr;
        this.compositeSequenceableLoader = compositeSequenceableLoaderFactory.createCompositeSequenceableLoader(new SequenceableLoader[0]);
        for (int i = 0; i < mediaPeriodArr.length; i++) {
            if (jArr[i] != 0) {
                this.periods[i] = new TimeOffsetMediaPeriod(mediaPeriodArr[i], jArr[i]);
            }
        }
    }

    public MediaPeriod getChildPeriod(int i) {
        MediaPeriod mediaPeriod = this.periods[i];
        return mediaPeriod instanceof TimeOffsetMediaPeriod ? ((TimeOffsetMediaPeriod) mediaPeriod).mediaPeriod : mediaPeriod;
    }

    @Override // com.google.android.exoplayer2.source.MediaPeriod
    public void prepare(MediaPeriod.Callback callback, long j) {
        this.callback = callback;
        Collections.addAll(this.childrenPendingPreparation, this.periods);
        for (MediaPeriod mediaPeriod : this.periods) {
            mediaPeriod.prepare(this, j);
        }
    }

    @Override // com.google.android.exoplayer2.source.MediaPeriod
    public void maybeThrowPrepareError() throws IOException {
        for (MediaPeriod mediaPeriod : this.periods) {
            mediaPeriod.maybeThrowPrepareError();
        }
    }

    @Override // com.google.android.exoplayer2.source.MediaPeriod
    public TrackGroupArray getTrackGroups() {
        return (TrackGroupArray) Assertions.checkNotNull(this.trackGroups);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r15v1 */
    /* JADX WARN: Type inference failed for: r15v3 */
    /* JADX WARN: Type inference failed for: r15v4 */
    @Override // com.google.android.exoplayer2.source.MediaPeriod
    public long selectTracks(ExoTrackSelection[] exoTrackSelectionArr, boolean[] zArr, SampleStream[] sampleStreamArr, boolean[] zArr2, long j) {
        SampleStream sampleStream;
        int[] iArr = new int[exoTrackSelectionArr.length];
        int[] iArr2 = new int[exoTrackSelectionArr.length];
        int i = 0;
        int i2 = 0;
        while (true) {
            sampleStream = null;
            if (i2 >= exoTrackSelectionArr.length) {
                break;
            }
            SampleStream sampleStream2 = sampleStreamArr[i2];
            Integer num = sampleStream2 != null ? this.streamPeriodIndices.get(sampleStream2) : null;
            iArr[i2] = num == null ? -1 : num.intValue();
            ExoTrackSelection exoTrackSelection = exoTrackSelectionArr[i2];
            if (exoTrackSelection != null) {
                TrackGroup trackGroup = exoTrackSelection.getTrackGroup();
                iArr2[i2] = Integer.parseInt(trackGroup.id.substring(0, trackGroup.id.indexOf(":")));
            } else {
                iArr2[i2] = -1;
            }
            i2++;
        }
        this.streamPeriodIndices.clear();
        int length = exoTrackSelectionArr.length;
        SampleStream[] sampleStreamArr2 = new SampleStream[length];
        SampleStream[] sampleStreamArr3 = new SampleStream[exoTrackSelectionArr.length];
        ExoTrackSelection[] exoTrackSelectionArr2 = new ExoTrackSelection[exoTrackSelectionArr.length];
        ArrayList arrayList = new ArrayList(this.periods.length);
        long j2 = j;
        int i3 = 0;
        ExoTrackSelection[] exoTrackSelectionArr3 = exoTrackSelectionArr2;
        while (i3 < this.periods.length) {
            for (int i4 = i; i4 < exoTrackSelectionArr.length; i4++) {
                sampleStreamArr3[i4] = iArr[i4] == i3 ? sampleStreamArr[i4] : sampleStream;
                if (iArr2[i4] == i3) {
                    ExoTrackSelection exoTrackSelection2 = (ExoTrackSelection) Assertions.checkNotNull(exoTrackSelectionArr[i4]);
                    exoTrackSelectionArr3[i4] = new ForwardingTrackSelection(exoTrackSelection2, (TrackGroup) Assertions.checkNotNull(this.childTrackGroupByMergedTrackGroup.get(exoTrackSelection2.getTrackGroup())));
                } else {
                    exoTrackSelectionArr3[i4] = sampleStream;
                }
            }
            int i5 = i3;
            ArrayList arrayList2 = arrayList;
            ExoTrackSelection[] exoTrackSelectionArr4 = exoTrackSelectionArr3;
            long selectTracks = this.periods[i3].selectTracks(exoTrackSelectionArr3, zArr, sampleStreamArr3, zArr2, j2);
            if (i5 == 0) {
                j2 = selectTracks;
            } else if (selectTracks != j2) {
                throw new IllegalStateException("Children enabled at different positions.");
            }
            boolean z = false;
            for (int i6 = 0; i6 < exoTrackSelectionArr.length; i6++) {
                if (iArr2[i6] == i5) {
                    SampleStream sampleStream3 = (SampleStream) Assertions.checkNotNull(sampleStreamArr3[i6]);
                    sampleStreamArr2[i6] = sampleStreamArr3[i6];
                    this.streamPeriodIndices.put(sampleStream3, Integer.valueOf(i5));
                    z = true;
                } else if (iArr[i6] == i5) {
                    Assertions.checkState(sampleStreamArr3[i6] == null);
                }
            }
            if (z) {
                arrayList2.add(this.periods[i5]);
            }
            i3 = i5 + 1;
            arrayList = arrayList2;
            exoTrackSelectionArr3 = exoTrackSelectionArr4;
            i = 0;
            sampleStream = null;
        }
        int i7 = i;
        System.arraycopy(sampleStreamArr2, i7, sampleStreamArr, i7, length);
        MediaPeriod[] mediaPeriodArr = (MediaPeriod[]) arrayList.toArray(new MediaPeriod[i7]);
        this.enabledPeriods = mediaPeriodArr;
        this.compositeSequenceableLoader = this.compositeSequenceableLoaderFactory.createCompositeSequenceableLoader(mediaPeriodArr);
        return j2;
    }

    @Override // com.google.android.exoplayer2.source.MediaPeriod
    public void discardBuffer(long j, boolean z) {
        for (MediaPeriod mediaPeriod : this.enabledPeriods) {
            mediaPeriod.discardBuffer(j, z);
        }
    }

    @Override // com.google.android.exoplayer2.source.MediaPeriod, com.google.android.exoplayer2.source.SequenceableLoader
    public void reevaluateBuffer(long j) {
        this.compositeSequenceableLoader.reevaluateBuffer(j);
    }

    @Override // com.google.android.exoplayer2.source.MediaPeriod, com.google.android.exoplayer2.source.SequenceableLoader
    public boolean continueLoading(long j) {
        if (!this.childrenPendingPreparation.isEmpty()) {
            int size = this.childrenPendingPreparation.size();
            for (int i = 0; i < size; i++) {
                this.childrenPendingPreparation.get(i).continueLoading(j);
            }
            return false;
        }
        return this.compositeSequenceableLoader.continueLoading(j);
    }

    @Override // com.google.android.exoplayer2.source.MediaPeriod, com.google.android.exoplayer2.source.SequenceableLoader
    public boolean isLoading() {
        return this.compositeSequenceableLoader.isLoading();
    }

    @Override // com.google.android.exoplayer2.source.MediaPeriod, com.google.android.exoplayer2.source.SequenceableLoader
    public long getNextLoadPositionUs() {
        return this.compositeSequenceableLoader.getNextLoadPositionUs();
    }

    @Override // com.google.android.exoplayer2.source.MediaPeriod
    public long readDiscontinuity() {
        long j = -9223372036854775807L;
        for (MediaPeriod mediaPeriod : this.enabledPeriods) {
            long readDiscontinuity = mediaPeriod.readDiscontinuity();
            if (readDiscontinuity != -9223372036854775807L) {
                if (j == -9223372036854775807L) {
                    for (MediaPeriod mediaPeriod2 : this.enabledPeriods) {
                        if (mediaPeriod2 == mediaPeriod) {
                            break;
                        }
                        if (mediaPeriod2.seekToUs(readDiscontinuity) != readDiscontinuity) {
                            throw new IllegalStateException("Unexpected child seekToUs result.");
                        }
                    }
                    j = readDiscontinuity;
                } else if (readDiscontinuity != j) {
                    throw new IllegalStateException("Conflicting discontinuities.");
                }
            } else if (j != -9223372036854775807L && mediaPeriod.seekToUs(j) != j) {
                throw new IllegalStateException("Unexpected child seekToUs result.");
            }
        }
        return j;
    }

    @Override // com.google.android.exoplayer2.source.MediaPeriod, com.google.android.exoplayer2.source.SequenceableLoader
    public long getBufferedPositionUs() {
        return this.compositeSequenceableLoader.getBufferedPositionUs();
    }

    @Override // com.google.android.exoplayer2.source.MediaPeriod
    public long seekToUs(long j) {
        long seekToUs = this.enabledPeriods[0].seekToUs(j);
        int i = 1;
        while (true) {
            MediaPeriod[] mediaPeriodArr = this.enabledPeriods;
            if (i >= mediaPeriodArr.length) {
                return seekToUs;
            }
            if (mediaPeriodArr[i].seekToUs(seekToUs) != seekToUs) {
                throw new IllegalStateException("Unexpected child seekToUs result.");
            }
            i++;
        }
    }

    @Override // com.google.android.exoplayer2.source.MediaPeriod
    public long getAdjustedSeekPositionUs(long j, SeekParameters seekParameters) {
        MediaPeriod[] mediaPeriodArr = this.enabledPeriods;
        return (mediaPeriodArr.length > 0 ? mediaPeriodArr[0] : this.periods[0]).getAdjustedSeekPositionUs(j, seekParameters);
    }

    @Override // com.google.android.exoplayer2.source.MediaPeriod.Callback
    public void onPrepared(MediaPeriod mediaPeriod) {
        this.childrenPendingPreparation.remove(mediaPeriod);
        if (!this.childrenPendingPreparation.isEmpty()) {
            return;
        }
        int i = 0;
        for (MediaPeriod mediaPeriod2 : this.periods) {
            i += mediaPeriod2.getTrackGroups().length;
        }
        TrackGroup[] trackGroupArr = new TrackGroup[i];
        int i2 = 0;
        int i3 = 0;
        while (true) {
            MediaPeriod[] mediaPeriodArr = this.periods;
            if (i2 < mediaPeriodArr.length) {
                TrackGroupArray trackGroups = mediaPeriodArr[i2].getTrackGroups();
                int i4 = trackGroups.length;
                int i5 = 0;
                while (i5 < i4) {
                    TrackGroup trackGroup = trackGroups.get(i5);
                    TrackGroup copyWithId = trackGroup.copyWithId(i2 + ":" + trackGroup.id);
                    this.childTrackGroupByMergedTrackGroup.put(copyWithId, trackGroup);
                    trackGroupArr[i3] = copyWithId;
                    i5++;
                    i3++;
                }
                i2++;
            } else {
                this.trackGroups = new TrackGroupArray(trackGroupArr);
                ((MediaPeriod.Callback) Assertions.checkNotNull(this.callback)).onPrepared(this);
                return;
            }
        }
    }

    @Override // com.google.android.exoplayer2.source.SequenceableLoader.Callback
    public void onContinueLoadingRequested(MediaPeriod mediaPeriod) {
        ((MediaPeriod.Callback) Assertions.checkNotNull(this.callback)).onContinueLoadingRequested(this);
    }

    /* loaded from: classes2.dex */
    private static final class TimeOffsetMediaPeriod implements MediaPeriod, MediaPeriod.Callback {
        private MediaPeriod.Callback callback;
        private final MediaPeriod mediaPeriod;
        private final long timeOffsetUs;

        public TimeOffsetMediaPeriod(MediaPeriod mediaPeriod, long j) {
            this.mediaPeriod = mediaPeriod;
            this.timeOffsetUs = j;
        }

        @Override // com.google.android.exoplayer2.source.MediaPeriod
        public void prepare(MediaPeriod.Callback callback, long j) {
            this.callback = callback;
            this.mediaPeriod.prepare(this, j - this.timeOffsetUs);
        }

        @Override // com.google.android.exoplayer2.source.MediaPeriod
        public void maybeThrowPrepareError() throws IOException {
            this.mediaPeriod.maybeThrowPrepareError();
        }

        @Override // com.google.android.exoplayer2.source.MediaPeriod
        public TrackGroupArray getTrackGroups() {
            return this.mediaPeriod.getTrackGroups();
        }

        @Override // com.google.android.exoplayer2.source.MediaPeriod
        public List<StreamKey> getStreamKeys(List<ExoTrackSelection> list) {
            return this.mediaPeriod.getStreamKeys(list);
        }

        @Override // com.google.android.exoplayer2.source.MediaPeriod
        public long selectTracks(ExoTrackSelection[] exoTrackSelectionArr, boolean[] zArr, SampleStream[] sampleStreamArr, boolean[] zArr2, long j) {
            SampleStream[] sampleStreamArr2 = new SampleStream[sampleStreamArr.length];
            int i = 0;
            while (true) {
                SampleStream sampleStream = null;
                if (i >= sampleStreamArr.length) {
                    break;
                }
                TimeOffsetSampleStream timeOffsetSampleStream = (TimeOffsetSampleStream) sampleStreamArr[i];
                if (timeOffsetSampleStream != null) {
                    sampleStream = timeOffsetSampleStream.getChildStream();
                }
                sampleStreamArr2[i] = sampleStream;
                i++;
            }
            long selectTracks = this.mediaPeriod.selectTracks(exoTrackSelectionArr, zArr, sampleStreamArr2, zArr2, j - this.timeOffsetUs);
            for (int i2 = 0; i2 < sampleStreamArr.length; i2++) {
                SampleStream sampleStream2 = sampleStreamArr2[i2];
                if (sampleStream2 == null) {
                    sampleStreamArr[i2] = null;
                } else {
                    SampleStream sampleStream3 = sampleStreamArr[i2];
                    if (sampleStream3 == null || ((TimeOffsetSampleStream) sampleStream3).getChildStream() != sampleStream2) {
                        sampleStreamArr[i2] = new TimeOffsetSampleStream(sampleStream2, this.timeOffsetUs);
                    }
                }
            }
            return selectTracks + this.timeOffsetUs;
        }

        @Override // com.google.android.exoplayer2.source.MediaPeriod
        public void discardBuffer(long j, boolean z) {
            this.mediaPeriod.discardBuffer(j - this.timeOffsetUs, z);
        }

        @Override // com.google.android.exoplayer2.source.MediaPeriod
        public long readDiscontinuity() {
            long readDiscontinuity = this.mediaPeriod.readDiscontinuity();
            if (readDiscontinuity == -9223372036854775807L) {
                return -9223372036854775807L;
            }
            return this.timeOffsetUs + readDiscontinuity;
        }

        @Override // com.google.android.exoplayer2.source.MediaPeriod
        public long seekToUs(long j) {
            return this.mediaPeriod.seekToUs(j - this.timeOffsetUs) + this.timeOffsetUs;
        }

        @Override // com.google.android.exoplayer2.source.MediaPeriod
        public long getAdjustedSeekPositionUs(long j, SeekParameters seekParameters) {
            return this.mediaPeriod.getAdjustedSeekPositionUs(j - this.timeOffsetUs, seekParameters) + this.timeOffsetUs;
        }

        @Override // com.google.android.exoplayer2.source.MediaPeriod, com.google.android.exoplayer2.source.SequenceableLoader
        public long getBufferedPositionUs() {
            long bufferedPositionUs = this.mediaPeriod.getBufferedPositionUs();
            if (bufferedPositionUs == Long.MIN_VALUE) {
                return Long.MIN_VALUE;
            }
            return this.timeOffsetUs + bufferedPositionUs;
        }

        @Override // com.google.android.exoplayer2.source.MediaPeriod, com.google.android.exoplayer2.source.SequenceableLoader
        public long getNextLoadPositionUs() {
            long nextLoadPositionUs = this.mediaPeriod.getNextLoadPositionUs();
            if (nextLoadPositionUs == Long.MIN_VALUE) {
                return Long.MIN_VALUE;
            }
            return this.timeOffsetUs + nextLoadPositionUs;
        }

        @Override // com.google.android.exoplayer2.source.MediaPeriod, com.google.android.exoplayer2.source.SequenceableLoader
        public boolean continueLoading(long j) {
            return this.mediaPeriod.continueLoading(j - this.timeOffsetUs);
        }

        @Override // com.google.android.exoplayer2.source.MediaPeriod, com.google.android.exoplayer2.source.SequenceableLoader
        public boolean isLoading() {
            return this.mediaPeriod.isLoading();
        }

        @Override // com.google.android.exoplayer2.source.MediaPeriod, com.google.android.exoplayer2.source.SequenceableLoader
        public void reevaluateBuffer(long j) {
            this.mediaPeriod.reevaluateBuffer(j - this.timeOffsetUs);
        }

        @Override // com.google.android.exoplayer2.source.MediaPeriod.Callback
        public void onPrepared(MediaPeriod mediaPeriod) {
            ((MediaPeriod.Callback) Assertions.checkNotNull(this.callback)).onPrepared(this);
        }

        @Override // com.google.android.exoplayer2.source.SequenceableLoader.Callback
        public void onContinueLoadingRequested(MediaPeriod mediaPeriod) {
            ((MediaPeriod.Callback) Assertions.checkNotNull(this.callback)).onContinueLoadingRequested(this);
        }
    }

    /* loaded from: classes2.dex */
    private static final class TimeOffsetSampleStream implements SampleStream {
        private final SampleStream sampleStream;
        private final long timeOffsetUs;

        public SampleStream getChildStream() {
            return this.sampleStream;
        }

        public TimeOffsetSampleStream(SampleStream sampleStream, long j) {
            this.sampleStream = sampleStream;
            this.timeOffsetUs = j;
        }

        @Override // com.google.android.exoplayer2.source.SampleStream
        public boolean isReady() {
            return this.sampleStream.isReady();
        }

        @Override // com.google.android.exoplayer2.source.SampleStream
        public void maybeThrowError() throws IOException {
            this.sampleStream.maybeThrowError();
        }

        @Override // com.google.android.exoplayer2.source.SampleStream
        public int readData(FormatHolder formatHolder, DecoderInputBuffer decoderInputBuffer, int i) {
            int readData = this.sampleStream.readData(formatHolder, decoderInputBuffer, i);
            if (readData == -4) {
                decoderInputBuffer.timeUs = Math.max(0L, decoderInputBuffer.timeUs + this.timeOffsetUs);
            }
            return readData;
        }

        @Override // com.google.android.exoplayer2.source.SampleStream
        public int skipData(long j) {
            return this.sampleStream.skipData(j - this.timeOffsetUs);
        }
    }

    /* loaded from: classes2.dex */
    private static final class ForwardingTrackSelection implements ExoTrackSelection {
        private final TrackGroup trackGroup;
        private final ExoTrackSelection trackSelection;

        @Override // com.google.android.exoplayer2.trackselection.TrackSelection
        public TrackGroup getTrackGroup() {
            return this.trackGroup;
        }

        public ForwardingTrackSelection(ExoTrackSelection exoTrackSelection, TrackGroup trackGroup) {
            this.trackSelection = exoTrackSelection;
            this.trackGroup = trackGroup;
        }

        @Override // com.google.android.exoplayer2.trackselection.TrackSelection
        public int getType() {
            return this.trackSelection.getType();
        }

        @Override // com.google.android.exoplayer2.trackselection.TrackSelection
        public int length() {
            return this.trackSelection.length();
        }

        @Override // com.google.android.exoplayer2.trackselection.TrackSelection
        public Format getFormat(int i) {
            return this.trackSelection.getFormat(i);
        }

        @Override // com.google.android.exoplayer2.trackselection.TrackSelection
        public int getIndexInTrackGroup(int i) {
            return this.trackSelection.getIndexInTrackGroup(i);
        }

        @Override // com.google.android.exoplayer2.trackselection.TrackSelection
        public int indexOf(Format format) {
            return this.trackSelection.indexOf(format);
        }

        @Override // com.google.android.exoplayer2.trackselection.TrackSelection
        public int indexOf(int i) {
            return this.trackSelection.indexOf(i);
        }

        @Override // com.google.android.exoplayer2.trackselection.ExoTrackSelection
        public void enable() {
            this.trackSelection.enable();
        }

        @Override // com.google.android.exoplayer2.trackselection.ExoTrackSelection
        public void disable() {
            this.trackSelection.disable();
        }

        @Override // com.google.android.exoplayer2.trackselection.ExoTrackSelection
        public Format getSelectedFormat() {
            return this.trackSelection.getSelectedFormat();
        }

        @Override // com.google.android.exoplayer2.trackselection.ExoTrackSelection
        public int getSelectedIndexInTrackGroup() {
            return this.trackSelection.getSelectedIndexInTrackGroup();
        }

        @Override // com.google.android.exoplayer2.trackselection.ExoTrackSelection
        public int getSelectedIndex() {
            return this.trackSelection.getSelectedIndex();
        }

        @Override // com.google.android.exoplayer2.trackselection.ExoTrackSelection
        public int getSelectionReason() {
            return this.trackSelection.getSelectionReason();
        }

        @Override // com.google.android.exoplayer2.trackselection.ExoTrackSelection
        public Object getSelectionData() {
            return this.trackSelection.getSelectionData();
        }

        @Override // com.google.android.exoplayer2.trackselection.ExoTrackSelection
        public void onPlaybackSpeed(float f) {
            this.trackSelection.onPlaybackSpeed(f);
        }

        @Override // com.google.android.exoplayer2.trackselection.ExoTrackSelection
        public void onDiscontinuity() {
            this.trackSelection.onDiscontinuity();
        }

        @Override // com.google.android.exoplayer2.trackselection.ExoTrackSelection
        public void onRebuffer() {
            this.trackSelection.onRebuffer();
        }

        @Override // com.google.android.exoplayer2.trackselection.ExoTrackSelection
        public void onPlayWhenReadyChanged(boolean z) {
            this.trackSelection.onPlayWhenReadyChanged(z);
        }

        @Override // com.google.android.exoplayer2.trackselection.ExoTrackSelection
        public void updateSelectedTrack(long j, long j2, long j3, List<? extends MediaChunk> list, MediaChunkIterator[] mediaChunkIteratorArr) {
            this.trackSelection.updateSelectedTrack(j, j2, j3, list, mediaChunkIteratorArr);
        }

        @Override // com.google.android.exoplayer2.trackselection.ExoTrackSelection
        public int evaluateQueueSize(long j, List<? extends MediaChunk> list) {
            return this.trackSelection.evaluateQueueSize(j, list);
        }

        @Override // com.google.android.exoplayer2.trackselection.ExoTrackSelection
        public boolean shouldCancelChunkLoad(long j, Chunk chunk, List<? extends MediaChunk> list) {
            return this.trackSelection.shouldCancelChunkLoad(j, chunk, list);
        }

        @Override // com.google.android.exoplayer2.trackselection.ExoTrackSelection
        public boolean blacklist(int i, long j) {
            return this.trackSelection.blacklist(i, j);
        }

        @Override // com.google.android.exoplayer2.trackselection.ExoTrackSelection
        public boolean isBlacklisted(int i, long j) {
            return this.trackSelection.isBlacklisted(i, j);
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof ForwardingTrackSelection)) {
                return false;
            }
            ForwardingTrackSelection forwardingTrackSelection = (ForwardingTrackSelection) obj;
            return this.trackSelection.equals(forwardingTrackSelection.trackSelection) && this.trackGroup.equals(forwardingTrackSelection.trackGroup);
        }

        public int hashCode() {
            return ((527 + this.trackGroup.hashCode()) * 31) + this.trackSelection.hashCode();
        }
    }
}
