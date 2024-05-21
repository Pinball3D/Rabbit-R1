package androidx.media3.exoplayer.source;

import android.net.Uri;
import androidx.media3.common.Format;
import androidx.media3.common.MediaItem;
import androidx.media3.common.TrackGroup;
import androidx.media3.common.util.Assertions;
import androidx.media3.common.util.Util;
import androidx.media3.datasource.TransferListener;
import androidx.media3.decoder.DecoderInputBuffer;
import androidx.media3.exoplayer.FormatHolder;
import androidx.media3.exoplayer.SeekParameters;
import androidx.media3.exoplayer.source.MediaPeriod;
import androidx.media3.exoplayer.source.MediaSource;
import androidx.media3.exoplayer.trackselection.ExoTrackSelection;
import androidx.media3.exoplayer.upstream.Allocator;
import java.util.ArrayList;

/* loaded from: classes2.dex */
public final class SilenceMediaSource extends BaseMediaSource {
    private static final int CHANNEL_COUNT = 2;
    private static final Format FORMAT;
    public static final String MEDIA_ID = "SilenceMediaSource";
    private static final MediaItem MEDIA_ITEM;
    private static final int PCM_ENCODING = 2;
    private static final int SAMPLE_RATE_HZ = 44100;
    private static final byte[] SILENCE_SAMPLE;
    private final long durationUs;
    private final MediaItem mediaItem;

    @Override // androidx.media3.exoplayer.source.MediaSource
    public MediaItem getMediaItem() {
        return this.mediaItem;
    }

    @Override // androidx.media3.exoplayer.source.MediaSource
    public void maybeThrowSourceInfoRefreshError() {
    }

    @Override // androidx.media3.exoplayer.source.MediaSource
    public void releasePeriod(MediaPeriod mediaPeriod) {
    }

    @Override // androidx.media3.exoplayer.source.BaseMediaSource
    protected void releaseSourceInternal() {
    }

    /* loaded from: classes2.dex */
    public static final class Factory {
        private long durationUs;
        private Object tag;

        public Factory setDurationUs(long j) {
            this.durationUs = j;
            return this;
        }

        public Factory setTag(Object obj) {
            this.tag = obj;
            return this;
        }

        public SilenceMediaSource createMediaSource() {
            Assertions.checkState(this.durationUs > 0);
            return new SilenceMediaSource(this.durationUs, SilenceMediaSource.MEDIA_ITEM.buildUpon().setTag(this.tag).build());
        }
    }

    static {
        Format build = new Format.Builder().setSampleMimeType("audio/raw").setChannelCount(2).setSampleRate(SAMPLE_RATE_HZ).setPcmEncoding(2).build();
        FORMAT = build;
        MEDIA_ITEM = new MediaItem.Builder().setMediaId("SilenceMediaSource").setUri(Uri.EMPTY).setMimeType(build.sampleMimeType).build();
        SILENCE_SAMPLE = new byte[Util.getPcmFrameSize(2, 2) * 1024];
    }

    public SilenceMediaSource(long j) {
        this(j, MEDIA_ITEM);
    }

    private SilenceMediaSource(long j, MediaItem mediaItem) {
        Assertions.checkArgument(j >= 0);
        this.durationUs = j;
        this.mediaItem = mediaItem;
    }

    @Override // androidx.media3.exoplayer.source.BaseMediaSource
    protected void prepareSourceInternal(TransferListener transferListener) {
        refreshSourceInfo(new SinglePeriodTimeline(this.durationUs, true, false, false, (Object) null, this.mediaItem));
    }

    @Override // androidx.media3.exoplayer.source.MediaSource
    public MediaPeriod createPeriod(MediaSource.MediaPeriodId mediaPeriodId, Allocator allocator, long j) {
        return new SilenceMediaPeriod(this.durationUs);
    }

    /* loaded from: classes2.dex */
    private static final class SilenceMediaPeriod implements MediaPeriod {
        private static final TrackGroupArray TRACKS = new TrackGroupArray(new TrackGroup(SilenceMediaSource.FORMAT));
        private final long durationUs;
        private final ArrayList<SampleStream> sampleStreams = new ArrayList<>();

        @Override // androidx.media3.exoplayer.source.MediaPeriod, androidx.media3.exoplayer.source.SequenceableLoader
        public boolean continueLoading(long j) {
            return false;
        }

        @Override // androidx.media3.exoplayer.source.MediaPeriod
        public void discardBuffer(long j, boolean z) {
        }

        @Override // androidx.media3.exoplayer.source.MediaPeriod, androidx.media3.exoplayer.source.SequenceableLoader
        public long getBufferedPositionUs() {
            return Long.MIN_VALUE;
        }

        @Override // androidx.media3.exoplayer.source.MediaPeriod, androidx.media3.exoplayer.source.SequenceableLoader
        public long getNextLoadPositionUs() {
            return Long.MIN_VALUE;
        }

        @Override // androidx.media3.exoplayer.source.MediaPeriod
        public TrackGroupArray getTrackGroups() {
            return TRACKS;
        }

        @Override // androidx.media3.exoplayer.source.MediaPeriod, androidx.media3.exoplayer.source.SequenceableLoader
        public boolean isLoading() {
            return false;
        }

        @Override // androidx.media3.exoplayer.source.MediaPeriod
        public void maybeThrowPrepareError() {
        }

        @Override // androidx.media3.exoplayer.source.MediaPeriod
        public long readDiscontinuity() {
            return -9223372036854775807L;
        }

        @Override // androidx.media3.exoplayer.source.MediaPeriod, androidx.media3.exoplayer.source.SequenceableLoader
        public void reevaluateBuffer(long j) {
        }

        public SilenceMediaPeriod(long j) {
            this.durationUs = j;
        }

        @Override // androidx.media3.exoplayer.source.MediaPeriod
        public void prepare(MediaPeriod.Callback callback, long j) {
            callback.onPrepared(this);
        }

        @Override // androidx.media3.exoplayer.source.MediaPeriod
        public long selectTracks(ExoTrackSelection[] exoTrackSelectionArr, boolean[] zArr, SampleStream[] sampleStreamArr, boolean[] zArr2, long j) {
            long constrainSeekPosition = constrainSeekPosition(j);
            for (int i = 0; i < exoTrackSelectionArr.length; i++) {
                SampleStream sampleStream = sampleStreamArr[i];
                if (sampleStream != null && (exoTrackSelectionArr[i] == null || !zArr[i])) {
                    this.sampleStreams.remove(sampleStream);
                    sampleStreamArr[i] = null;
                }
                if (sampleStreamArr[i] == null && exoTrackSelectionArr[i] != null) {
                    SilenceSampleStream silenceSampleStream = new SilenceSampleStream(this.durationUs);
                    silenceSampleStream.seekTo(constrainSeekPosition);
                    this.sampleStreams.add(silenceSampleStream);
                    sampleStreamArr[i] = silenceSampleStream;
                    zArr2[i] = true;
                }
            }
            return constrainSeekPosition;
        }

        @Override // androidx.media3.exoplayer.source.MediaPeriod
        public long seekToUs(long j) {
            long constrainSeekPosition = constrainSeekPosition(j);
            for (int i = 0; i < this.sampleStreams.size(); i++) {
                ((SilenceSampleStream) this.sampleStreams.get(i)).seekTo(constrainSeekPosition);
            }
            return constrainSeekPosition;
        }

        @Override // androidx.media3.exoplayer.source.MediaPeriod
        public long getAdjustedSeekPositionUs(long j, SeekParameters seekParameters) {
            return constrainSeekPosition(j);
        }

        private long constrainSeekPosition(long j) {
            return Util.constrainValue(j, 0L, this.durationUs);
        }
    }

    /* loaded from: classes2.dex */
    private static final class SilenceSampleStream implements SampleStream {
        private final long durationBytes;
        private long positionBytes;
        private boolean sentFormat;

        @Override // androidx.media3.exoplayer.source.SampleStream
        public boolean isReady() {
            return true;
        }

        @Override // androidx.media3.exoplayer.source.SampleStream
        public void maybeThrowError() {
        }

        public SilenceSampleStream(long j) {
            this.durationBytes = SilenceMediaSource.getAudioByteCount(j);
            seekTo(0L);
        }

        public void seekTo(long j) {
            this.positionBytes = Util.constrainValue(SilenceMediaSource.getAudioByteCount(j), 0L, this.durationBytes);
        }

        @Override // androidx.media3.exoplayer.source.SampleStream
        public int readData(FormatHolder formatHolder, DecoderInputBuffer decoderInputBuffer, int i) {
            if (!this.sentFormat || (i & 2) != 0) {
                formatHolder.format = SilenceMediaSource.FORMAT;
                this.sentFormat = true;
                return -5;
            }
            long j = this.durationBytes;
            long j2 = this.positionBytes;
            long j3 = j - j2;
            if (j3 != 0) {
                decoderInputBuffer.timeUs = SilenceMediaSource.getAudioPositionUs(j2);
                decoderInputBuffer.addFlag(1);
                int min = (int) Math.min(SilenceMediaSource.SILENCE_SAMPLE.length, j3);
                if ((i & 4) == 0) {
                    decoderInputBuffer.ensureSpaceForWrite(min);
                    decoderInputBuffer.data.put(SilenceMediaSource.SILENCE_SAMPLE, 0, min);
                }
                if ((i & 1) == 0) {
                    this.positionBytes += min;
                }
                return -4;
            }
            decoderInputBuffer.addFlag(4);
            return -4;
        }

        @Override // androidx.media3.exoplayer.source.SampleStream
        public int skipData(long j) {
            long j2 = this.positionBytes;
            seekTo(j);
            return (int) ((this.positionBytes - j2) / SilenceMediaSource.SILENCE_SAMPLE.length);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static long getAudioByteCount(long j) {
        return Util.getPcmFrameSize(2, 2) * ((j * 44100) / 1000000);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static long getAudioPositionUs(long j) {
        return ((j / Util.getPcmFrameSize(2, 2)) * 1000000) / 44100;
    }
}
