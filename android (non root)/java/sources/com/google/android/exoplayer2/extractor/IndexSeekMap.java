package com.google.android.exoplayer2.extractor;

import com.google.android.exoplayer2.extractor.SeekMap;
import com.google.android.exoplayer2.util.Assertions;
import com.google.android.exoplayer2.util.Util;

/* loaded from: classes2.dex */
public final class IndexSeekMap implements SeekMap {
    private final long durationUs;
    private final boolean isSeekable;
    private final long[] positions;
    private final long[] timesUs;

    @Override // com.google.android.exoplayer2.extractor.SeekMap
    public long getDurationUs() {
        return this.durationUs;
    }

    @Override // com.google.android.exoplayer2.extractor.SeekMap
    public boolean isSeekable() {
        return this.isSeekable;
    }

    public IndexSeekMap(long[] jArr, long[] jArr2, long j) {
        Assertions.checkArgument(jArr.length == jArr2.length);
        int length = jArr2.length;
        boolean z = length > 0;
        this.isSeekable = z;
        if (!z || jArr2[0] <= 0) {
            this.positions = jArr;
            this.timesUs = jArr2;
        } else {
            int i = length + 1;
            long[] jArr3 = new long[i];
            this.positions = jArr3;
            long[] jArr4 = new long[i];
            this.timesUs = jArr4;
            System.arraycopy(jArr, 0, jArr3, 1, length);
            System.arraycopy(jArr2, 0, jArr4, 1, length);
        }
        this.durationUs = j;
    }

    @Override // com.google.android.exoplayer2.extractor.SeekMap
    public SeekMap.SeekPoints getSeekPoints(long j) {
        if (!this.isSeekable) {
            return new SeekMap.SeekPoints(SeekPoint.START);
        }
        int binarySearchFloor = Util.binarySearchFloor(this.timesUs, j, true, true);
        SeekPoint seekPoint = new SeekPoint(this.timesUs[binarySearchFloor], this.positions[binarySearchFloor]);
        if (seekPoint.timeUs == j || binarySearchFloor == this.timesUs.length - 1) {
            return new SeekMap.SeekPoints(seekPoint);
        }
        int i = binarySearchFloor + 1;
        return new SeekMap.SeekPoints(seekPoint, new SeekPoint(this.timesUs[i], this.positions[i]));
    }
}
