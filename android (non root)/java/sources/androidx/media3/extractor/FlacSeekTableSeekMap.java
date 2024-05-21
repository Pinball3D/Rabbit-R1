package androidx.media3.extractor;

import androidx.media3.common.util.Assertions;
import androidx.media3.common.util.Util;
import androidx.media3.extractor.SeekMap;

/* loaded from: classes2.dex */
public final class FlacSeekTableSeekMap implements SeekMap {
    private final long firstFrameOffset;
    private final FlacStreamMetadata flacStreamMetadata;

    @Override // androidx.media3.extractor.SeekMap
    public boolean isSeekable() {
        return true;
    }

    public FlacSeekTableSeekMap(FlacStreamMetadata flacStreamMetadata, long j) {
        this.flacStreamMetadata = flacStreamMetadata;
        this.firstFrameOffset = j;
    }

    @Override // androidx.media3.extractor.SeekMap
    public long getDurationUs() {
        return this.flacStreamMetadata.getDurationUs();
    }

    @Override // androidx.media3.extractor.SeekMap
    public SeekMap.SeekPoints getSeekPoints(long j) {
        Assertions.checkStateNotNull(this.flacStreamMetadata.seekTable);
        long[] jArr = this.flacStreamMetadata.seekTable.pointSampleNumbers;
        long[] jArr2 = this.flacStreamMetadata.seekTable.pointOffsets;
        int binarySearchFloor = Util.binarySearchFloor(jArr, this.flacStreamMetadata.getSampleNumber(j), true, false);
        SeekPoint seekPoint = getSeekPoint(binarySearchFloor == -1 ? 0L : jArr[binarySearchFloor], binarySearchFloor != -1 ? jArr2[binarySearchFloor] : 0L);
        if (seekPoint.timeUs == j || binarySearchFloor == jArr.length - 1) {
            return new SeekMap.SeekPoints(seekPoint);
        }
        int i = binarySearchFloor + 1;
        return new SeekMap.SeekPoints(seekPoint, getSeekPoint(jArr[i], jArr2[i]));
    }

    private SeekPoint getSeekPoint(long j, long j2) {
        return new SeekPoint((j * 1000000) / this.flacStreamMetadata.sampleRate, this.firstFrameOffset + j2);
    }
}
