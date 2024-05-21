package androidx.media3.extractor.wav;

import androidx.media3.common.util.Util;
import androidx.media3.extractor.SeekMap;
import androidx.media3.extractor.SeekPoint;

/* loaded from: classes2.dex */
final class WavSeekMap implements SeekMap {
    private final long blockCount;
    private final long durationUs;
    private final long firstBlockPosition;
    private final int framesPerBlock;
    private final WavFormat wavFormat;

    @Override // androidx.media3.extractor.SeekMap
    public long getDurationUs() {
        return this.durationUs;
    }

    @Override // androidx.media3.extractor.SeekMap
    public boolean isSeekable() {
        return true;
    }

    public WavSeekMap(WavFormat wavFormat, int i, long j, long j2) {
        this.wavFormat = wavFormat;
        this.framesPerBlock = i;
        this.firstBlockPosition = j;
        long j3 = (j2 - j) / wavFormat.blockSize;
        this.blockCount = j3;
        this.durationUs = blockIndexToTimeUs(j3);
    }

    @Override // androidx.media3.extractor.SeekMap
    public SeekMap.SeekPoints getSeekPoints(long j) {
        long constrainValue = Util.constrainValue((this.wavFormat.frameRateHz * j) / (this.framesPerBlock * 1000000), 0L, this.blockCount - 1);
        long j2 = this.firstBlockPosition + (this.wavFormat.blockSize * constrainValue);
        long blockIndexToTimeUs = blockIndexToTimeUs(constrainValue);
        SeekPoint seekPoint = new SeekPoint(blockIndexToTimeUs, j2);
        if (blockIndexToTimeUs >= j || constrainValue == this.blockCount - 1) {
            return new SeekMap.SeekPoints(seekPoint);
        }
        long j3 = constrainValue + 1;
        return new SeekMap.SeekPoints(seekPoint, new SeekPoint(blockIndexToTimeUs(j3), this.firstBlockPosition + (this.wavFormat.blockSize * j3)));
    }

    private long blockIndexToTimeUs(long j) {
        return Util.scaleLargeTimestamp(j * this.framesPerBlock, 1000000L, this.wavFormat.frameRateHz);
    }
}
