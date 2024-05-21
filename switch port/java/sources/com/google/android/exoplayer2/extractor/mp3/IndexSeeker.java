package com.google.android.exoplayer2.extractor.mp3;

import com.google.android.exoplayer2.extractor.SeekMap;
import com.google.android.exoplayer2.extractor.SeekPoint;
import com.google.android.exoplayer2.util.LongArray;
import com.google.android.exoplayer2.util.Util;

/* loaded from: classes2.dex */
final class IndexSeeker implements Seeker {
    static final long MIN_TIME_BETWEEN_POINTS_US = 100000;
    private final long dataEndPosition;
    private long durationUs;
    private final LongArray positions;
    private final LongArray timesUs;

    @Override // com.google.android.exoplayer2.extractor.mp3.Seeker
    public long getDataEndPosition() {
        return this.dataEndPosition;
    }

    @Override // com.google.android.exoplayer2.extractor.SeekMap
    public long getDurationUs() {
        return this.durationUs;
    }

    @Override // com.google.android.exoplayer2.extractor.SeekMap
    public boolean isSeekable() {
        return true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setDurationUs(long j) {
        this.durationUs = j;
    }

    public IndexSeeker(long j, long j2, long j3) {
        this.durationUs = j;
        this.dataEndPosition = j3;
        LongArray longArray = new LongArray();
        this.timesUs = longArray;
        LongArray longArray2 = new LongArray();
        this.positions = longArray2;
        longArray.add(0L);
        longArray2.add(j2);
    }

    @Override // com.google.android.exoplayer2.extractor.mp3.Seeker
    public long getTimeUs(long j) {
        return this.timesUs.get(Util.binarySearchFloor(this.positions, j, true, true));
    }

    @Override // com.google.android.exoplayer2.extractor.SeekMap
    public SeekMap.SeekPoints getSeekPoints(long j) {
        int binarySearchFloor = Util.binarySearchFloor(this.timesUs, j, true, true);
        SeekPoint seekPoint = new SeekPoint(this.timesUs.get(binarySearchFloor), this.positions.get(binarySearchFloor));
        if (seekPoint.timeUs == j || binarySearchFloor == this.timesUs.size() - 1) {
            return new SeekMap.SeekPoints(seekPoint);
        }
        int i = binarySearchFloor + 1;
        return new SeekMap.SeekPoints(seekPoint, new SeekPoint(this.timesUs.get(i), this.positions.get(i)));
    }

    public void maybeAddSeekPoint(long j, long j2) {
        if (isTimeUsInIndex(j)) {
            return;
        }
        this.timesUs.add(j);
        this.positions.add(j2);
    }

    public boolean isTimeUsInIndex(long j) {
        LongArray longArray = this.timesUs;
        return j - longArray.get(longArray.size() - 1) < MIN_TIME_BETWEEN_POINTS_US;
    }
}
