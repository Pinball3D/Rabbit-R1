package com.google.android.exoplayer2.source.hls;

import android.util.SparseArray;
import com.google.android.exoplayer2.util.TimestampAdjuster;

/* loaded from: classes2.dex */
public final class TimestampAdjusterProvider {
    private final SparseArray<TimestampAdjuster> timestampAdjusters = new SparseArray<>();

    public TimestampAdjuster getAdjuster(int i) {
        TimestampAdjuster timestampAdjuster = this.timestampAdjusters.get(i);
        if (timestampAdjuster != null) {
            return timestampAdjuster;
        }
        TimestampAdjuster timestampAdjuster2 = new TimestampAdjuster(9223372036854775806L);
        this.timestampAdjusters.put(i, timestampAdjuster2);
        return timestampAdjuster2;
    }

    public void reset() {
        this.timestampAdjusters.clear();
    }
}
