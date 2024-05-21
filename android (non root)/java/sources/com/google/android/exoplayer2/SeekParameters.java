package com.google.android.exoplayer2;

import com.google.android.exoplayer2.util.Assertions;
import com.google.android.exoplayer2.util.Util;

/* loaded from: classes2.dex */
public final class SeekParameters {
    public static final SeekParameters CLOSEST_SYNC;
    public static final SeekParameters DEFAULT;
    public static final SeekParameters EXACT;
    public static final SeekParameters NEXT_SYNC;
    public static final SeekParameters PREVIOUS_SYNC;
    public final long toleranceAfterUs;
    public final long toleranceBeforeUs;

    public int hashCode() {
        return (((int) this.toleranceBeforeUs) * 31) + ((int) this.toleranceAfterUs);
    }

    static {
        SeekParameters seekParameters = new SeekParameters(0L, 0L);
        EXACT = seekParameters;
        CLOSEST_SYNC = new SeekParameters(Long.MAX_VALUE, Long.MAX_VALUE);
        PREVIOUS_SYNC = new SeekParameters(Long.MAX_VALUE, 0L);
        NEXT_SYNC = new SeekParameters(0L, Long.MAX_VALUE);
        DEFAULT = seekParameters;
    }

    public SeekParameters(long j, long j2) {
        Assertions.checkArgument(j >= 0);
        Assertions.checkArgument(j2 >= 0);
        this.toleranceBeforeUs = j;
        this.toleranceAfterUs = j2;
    }

    public long resolveSeekPositionUs(long j, long j2, long j3) {
        long j4 = this.toleranceBeforeUs;
        if (j4 == 0 && this.toleranceAfterUs == 0) {
            return j;
        }
        long subtractWithOverflowDefault = Util.subtractWithOverflowDefault(j, j4, Long.MIN_VALUE);
        long addWithOverflowDefault = Util.addWithOverflowDefault(j, this.toleranceAfterUs, Long.MAX_VALUE);
        boolean z = subtractWithOverflowDefault <= j2 && j2 <= addWithOverflowDefault;
        boolean z2 = subtractWithOverflowDefault <= j3 && j3 <= addWithOverflowDefault;
        return (z && z2) ? Math.abs(j2 - j) <= Math.abs(j3 - j) ? j2 : j3 : z ? j2 : z2 ? j3 : subtractWithOverflowDefault;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        SeekParameters seekParameters = (SeekParameters) obj;
        return this.toleranceBeforeUs == seekParameters.toleranceBeforeUs && this.toleranceAfterUs == seekParameters.toleranceAfterUs;
    }
}
