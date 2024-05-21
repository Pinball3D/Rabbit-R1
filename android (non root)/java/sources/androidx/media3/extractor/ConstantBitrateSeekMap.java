package androidx.media3.extractor;

import androidx.media3.extractor.SeekMap;

/* loaded from: classes2.dex */
public class ConstantBitrateSeekMap implements SeekMap {
    private final boolean allowSeeksIfLengthUnknown;
    private final int bitrate;
    private final long dataSize;
    private final long durationUs;
    private final long firstFrameBytePosition;
    private final int frameSize;
    private final long inputLength;

    @Override // androidx.media3.extractor.SeekMap
    public long getDurationUs() {
        return this.durationUs;
    }

    @Override // androidx.media3.extractor.SeekMap
    public boolean isSeekable() {
        return this.dataSize != -1 || this.allowSeeksIfLengthUnknown;
    }

    public ConstantBitrateSeekMap(long j, long j2, int i, int i2) {
        this(j, j2, i, i2, false);
    }

    public ConstantBitrateSeekMap(long j, long j2, int i, int i2, boolean z) {
        this.inputLength = j;
        this.firstFrameBytePosition = j2;
        this.frameSize = i2 == -1 ? 1 : i2;
        this.bitrate = i;
        this.allowSeeksIfLengthUnknown = z;
        if (j == -1) {
            this.dataSize = -1L;
            this.durationUs = -9223372036854775807L;
        } else {
            this.dataSize = j - j2;
            this.durationUs = getTimeUsAtPosition(j, j2, i);
        }
    }

    @Override // androidx.media3.extractor.SeekMap
    public SeekMap.SeekPoints getSeekPoints(long j) {
        if (this.dataSize == -1 && !this.allowSeeksIfLengthUnknown) {
            return new SeekMap.SeekPoints(new SeekPoint(0L, this.firstFrameBytePosition));
        }
        long framePositionForTimeUs = getFramePositionForTimeUs(j);
        long timeUsAtPosition = getTimeUsAtPosition(framePositionForTimeUs);
        SeekPoint seekPoint = new SeekPoint(timeUsAtPosition, framePositionForTimeUs);
        if (this.dataSize != -1 && timeUsAtPosition < j) {
            int i = this.frameSize;
            if (i + framePositionForTimeUs < this.inputLength) {
                long j2 = framePositionForTimeUs + i;
                return new SeekMap.SeekPoints(seekPoint, new SeekPoint(getTimeUsAtPosition(j2), j2));
            }
        }
        return new SeekMap.SeekPoints(seekPoint);
    }

    public long getTimeUsAtPosition(long j) {
        return getTimeUsAtPosition(j, this.firstFrameBytePosition, this.bitrate);
    }

    private static long getTimeUsAtPosition(long j, long j2, int i) {
        return (Math.max(0L, j - j2) * 8000000) / i;
    }

    private long getFramePositionForTimeUs(long j) {
        int i = this.frameSize;
        long j2 = (((j * this.bitrate) / 8000000) / i) * i;
        long j3 = this.dataSize;
        if (j3 != -1) {
            j2 = Math.min(j2, j3 - i);
        }
        return this.firstFrameBytePosition + Math.max(j2, 0L);
    }
}
