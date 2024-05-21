package com.google.android.exoplayer2.text.subrip;

import com.google.android.exoplayer2.text.Cue;
import com.google.android.exoplayer2.text.Subtitle;
import com.google.android.exoplayer2.util.Assertions;
import com.google.android.exoplayer2.util.Util;
import java.util.Collections;
import java.util.List;

/* loaded from: classes2.dex */
final class SubripSubtitle implements Subtitle {
    private final long[] cueTimesUs;
    private final Cue[] cues;

    public SubripSubtitle(Cue[] cueArr, long[] jArr) {
        this.cues = cueArr;
        this.cueTimesUs = jArr;
    }

    @Override // com.google.android.exoplayer2.text.Subtitle
    public int getNextEventTimeIndex(long j) {
        int binarySearchCeil = Util.binarySearchCeil(this.cueTimesUs, j, false, false);
        if (binarySearchCeil < this.cueTimesUs.length) {
            return binarySearchCeil;
        }
        return -1;
    }

    @Override // com.google.android.exoplayer2.text.Subtitle
    public int getEventTimeCount() {
        return this.cueTimesUs.length;
    }

    @Override // com.google.android.exoplayer2.text.Subtitle
    public long getEventTime(int i) {
        Assertions.checkArgument(i >= 0);
        Assertions.checkArgument(i < this.cueTimesUs.length);
        return this.cueTimesUs[i];
    }

    @Override // com.google.android.exoplayer2.text.Subtitle
    public List<Cue> getCues(long j) {
        int binarySearchFloor = Util.binarySearchFloor(this.cueTimesUs, j, true, false);
        if (binarySearchFloor == -1 || this.cues[binarySearchFloor] == Cue.EMPTY) {
            return Collections.emptyList();
        }
        return Collections.singletonList(this.cues[binarySearchFloor]);
    }
}
