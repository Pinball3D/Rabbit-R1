package com.google.android.exoplayer2.extractor.mp3;

import com.google.android.exoplayer2.audio.MpegAudioUtil;
import com.google.android.exoplayer2.extractor.ConstantBitrateSeekMap;

/* loaded from: classes2.dex */
final class ConstantBitrateSeeker extends ConstantBitrateSeekMap implements Seeker {
    @Override // com.google.android.exoplayer2.extractor.mp3.Seeker
    public long getDataEndPosition() {
        return -1L;
    }

    public ConstantBitrateSeeker(long j, long j2, MpegAudioUtil.Header header, boolean z) {
        super(j, j2, header.bitrate, header.frameSize, z);
    }

    @Override // com.google.android.exoplayer2.extractor.mp3.Seeker
    public long getTimeUs(long j) {
        return getTimeUsAtPosition(j);
    }
}
