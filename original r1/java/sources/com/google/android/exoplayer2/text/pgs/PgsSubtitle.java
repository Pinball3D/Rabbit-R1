package com.google.android.exoplayer2.text.pgs;

import com.google.android.exoplayer2.text.Cue;
import com.google.android.exoplayer2.text.Subtitle;
import java.util.List;

/* loaded from: classes2.dex */
final class PgsSubtitle implements Subtitle {
    private final List<Cue> cues;

    @Override // com.google.android.exoplayer2.text.Subtitle
    public List<Cue> getCues(long j) {
        return this.cues;
    }

    @Override // com.google.android.exoplayer2.text.Subtitle
    public long getEventTime(int i) {
        return 0L;
    }

    @Override // com.google.android.exoplayer2.text.Subtitle
    public int getEventTimeCount() {
        return 1;
    }

    @Override // com.google.android.exoplayer2.text.Subtitle
    public int getNextEventTimeIndex(long j) {
        return -1;
    }

    public PgsSubtitle(List<Cue> list) {
        this.cues = list;
    }
}
