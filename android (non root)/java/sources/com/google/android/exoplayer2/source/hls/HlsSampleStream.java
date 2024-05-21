package com.google.android.exoplayer2.source.hls;

import com.google.android.exoplayer2.FormatHolder;
import com.google.android.exoplayer2.decoder.DecoderInputBuffer;
import com.google.android.exoplayer2.source.SampleStream;
import com.google.android.exoplayer2.util.Assertions;
import java.io.IOException;

/* loaded from: classes2.dex */
final class HlsSampleStream implements SampleStream {
    private int sampleQueueIndex = -1;
    private final HlsSampleStreamWrapper sampleStreamWrapper;
    private final int trackGroupIndex;

    private boolean hasValidSampleQueueIndex() {
        int i = this.sampleQueueIndex;
        return (i == -1 || i == -3 || i == -2) ? false : true;
    }

    public HlsSampleStream(HlsSampleStreamWrapper hlsSampleStreamWrapper, int i) {
        this.sampleStreamWrapper = hlsSampleStreamWrapper;
        this.trackGroupIndex = i;
    }

    public void bindSampleQueue() {
        Assertions.checkArgument(this.sampleQueueIndex == -1);
        this.sampleQueueIndex = this.sampleStreamWrapper.bindSampleQueueToSampleStream(this.trackGroupIndex);
    }

    public void unbindSampleQueue() {
        if (this.sampleQueueIndex != -1) {
            this.sampleStreamWrapper.unbindSampleQueue(this.trackGroupIndex);
            this.sampleQueueIndex = -1;
        }
    }

    @Override // com.google.android.exoplayer2.source.SampleStream
    public boolean isReady() {
        return this.sampleQueueIndex == -3 || (hasValidSampleQueueIndex() && this.sampleStreamWrapper.isReady(this.sampleQueueIndex));
    }

    @Override // com.google.android.exoplayer2.source.SampleStream
    public void maybeThrowError() throws IOException {
        int i = this.sampleQueueIndex;
        if (i == -2) {
            throw new SampleQueueMappingException(this.sampleStreamWrapper.getTrackGroups().get(this.trackGroupIndex).getFormat(0).sampleMimeType);
        }
        if (i == -1) {
            this.sampleStreamWrapper.maybeThrowError();
        } else if (i != -3) {
            this.sampleStreamWrapper.maybeThrowError(i);
        }
    }

    @Override // com.google.android.exoplayer2.source.SampleStream
    public int readData(FormatHolder formatHolder, DecoderInputBuffer decoderInputBuffer, int i) {
        if (this.sampleQueueIndex == -3) {
            decoderInputBuffer.addFlag(4);
            return -4;
        }
        if (hasValidSampleQueueIndex()) {
            return this.sampleStreamWrapper.readData(this.sampleQueueIndex, formatHolder, decoderInputBuffer, i);
        }
        return -3;
    }

    @Override // com.google.android.exoplayer2.source.SampleStream
    public int skipData(long j) {
        if (hasValidSampleQueueIndex()) {
            return this.sampleStreamWrapper.skipData(this.sampleQueueIndex, j);
        }
        return 0;
    }
}
