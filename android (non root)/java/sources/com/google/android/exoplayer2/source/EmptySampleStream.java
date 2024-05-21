package com.google.android.exoplayer2.source;

import com.google.android.exoplayer2.FormatHolder;
import com.google.android.exoplayer2.decoder.DecoderInputBuffer;

/* loaded from: classes2.dex */
public final class EmptySampleStream implements SampleStream {
    @Override // com.google.android.exoplayer2.source.SampleStream
    public boolean isReady() {
        return true;
    }

    @Override // com.google.android.exoplayer2.source.SampleStream
    public void maybeThrowError() {
    }

    @Override // com.google.android.exoplayer2.source.SampleStream
    public int skipData(long j) {
        return 0;
    }

    @Override // com.google.android.exoplayer2.source.SampleStream
    public int readData(FormatHolder formatHolder, DecoderInputBuffer decoderInputBuffer, int i) {
        decoderInputBuffer.setFlags(4);
        return -4;
    }
}
