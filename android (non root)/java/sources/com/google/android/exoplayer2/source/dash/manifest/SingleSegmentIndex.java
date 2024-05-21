package com.google.android.exoplayer2.source.dash.manifest;

import com.google.android.exoplayer2.source.dash.DashSegmentIndex;

/* loaded from: classes2.dex */
final class SingleSegmentIndex implements DashSegmentIndex {
    private final RangedUri uri;

    @Override // com.google.android.exoplayer2.source.dash.DashSegmentIndex
    public long getAvailableSegmentCount(long j, long j2) {
        return 1L;
    }

    @Override // com.google.android.exoplayer2.source.dash.DashSegmentIndex
    public long getDurationUs(long j, long j2) {
        return j2;
    }

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
    public long getSegmentCount(long j) {
        return 1L;
    }

    @Override // com.google.android.exoplayer2.source.dash.DashSegmentIndex
    public long getSegmentNum(long j, long j2) {
        return 0L;
    }

    @Override // com.google.android.exoplayer2.source.dash.DashSegmentIndex
    public RangedUri getSegmentUrl(long j) {
        return this.uri;
    }

    @Override // com.google.android.exoplayer2.source.dash.DashSegmentIndex
    public long getTimeUs(long j) {
        return 0L;
    }

    @Override // com.google.android.exoplayer2.source.dash.DashSegmentIndex
    public boolean isExplicit() {
        return true;
    }

    public SingleSegmentIndex(RangedUri rangedUri) {
        this.uri = rangedUri;
    }
}
