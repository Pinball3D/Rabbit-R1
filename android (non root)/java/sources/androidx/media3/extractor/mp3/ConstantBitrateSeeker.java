package androidx.media3.extractor.mp3;

import androidx.media3.extractor.ConstantBitrateSeekMap;
import androidx.media3.extractor.MpegAudioUtil;

/* loaded from: classes2.dex */
final class ConstantBitrateSeeker extends ConstantBitrateSeekMap implements Seeker {
    @Override // androidx.media3.extractor.mp3.Seeker
    public long getDataEndPosition() {
        return -1L;
    }

    public ConstantBitrateSeeker(long j, long j2, MpegAudioUtil.Header header, boolean z) {
        super(j, j2, header.bitrate, header.frameSize, z);
    }

    @Override // androidx.media3.extractor.mp3.Seeker
    public long getTimeUs(long j) {
        return getTimeUsAtPosition(j);
    }
}
