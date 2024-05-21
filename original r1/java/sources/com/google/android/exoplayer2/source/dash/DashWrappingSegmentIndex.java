package com.google.android.exoplayer2.source.dash;

import com.google.android.exoplayer2.extractor.ChunkIndex;
import com.google.android.exoplayer2.source.dash.manifest.RangedUri;

/* loaded from: classes2.dex */
public final class DashWrappingSegmentIndex implements DashSegmentIndex {
    private final ChunkIndex chunkIndex;
    private final long timeOffsetUs;

    @Override // com.google.android.exoplayer2.source.dash.DashSegmentIndex
    public long getFirstAvailableSegmentNum(long j, long j2) {
        return 0L;
    }

    @Override // com.google.android.exoplayer2.source.dash.DashSegmentIndex
    public long getFirstSegmentNum() {
        return 0L;
    }

    @Override // com.google.android.exoplayer2.source.dash.DashSegmentIndex
    public long getNextSegmentAvailableTimeUs(long j, long j2) {
        return -9223372036854775807L;
    }

    @Override // com.google.android.exoplayer2.source.dash.DashSegmentIndex
    public boolean isExplicit() {
        return true;
    }

    public DashWrappingSegmentIndex(ChunkIndex chunkIndex, long j) {
        this.chunkIndex = chunkIndex;
        this.timeOffsetUs = j;
    }

    @Override // com.google.android.exoplayer2.source.dash.DashSegmentIndex
    public long getSegmentCount(long j) {
        return this.chunkIndex.length;
    }

    @Override // com.google.android.exoplayer2.source.dash.DashSegmentIndex
    public long getAvailableSegmentCount(long j, long j2) {
        return this.chunkIndex.length;
    }

    @Override // com.google.android.exoplayer2.source.dash.DashSegmentIndex
    public long getTimeUs(long j) {
        return this.chunkIndex.timesUs[(int) j] - this.timeOffsetUs;
    }

    @Override // com.google.android.exoplayer2.source.dash.DashSegmentIndex
    public long getDurationUs(long j, long j2) {
        return this.chunkIndex.durationsUs[(int) j];
    }

    @Override // com.google.android.exoplayer2.source.dash.DashSegmentIndex
    public RangedUri getSegmentUrl(long j) {
        return new RangedUri(null, this.chunkIndex.offsets[(int) j], this.chunkIndex.sizes[r8]);
    }

    @Override // com.google.android.exoplayer2.source.dash.DashSegmentIndex
    public long getSegmentNum(long j, long j2) {
        return this.chunkIndex.getChunkIndex(j + this.timeOffsetUs);
    }
}
