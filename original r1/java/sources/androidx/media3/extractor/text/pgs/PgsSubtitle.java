package androidx.media3.extractor.text.pgs;

import androidx.media3.common.text.Cue;
import androidx.media3.extractor.text.Subtitle;
import java.util.List;

/* loaded from: classes2.dex */
final class PgsSubtitle implements Subtitle {
    private final List<Cue> cues;

    @Override // androidx.media3.extractor.text.Subtitle
    public List<Cue> getCues(long j) {
        return this.cues;
    }

    @Override // androidx.media3.extractor.text.Subtitle
    public long getEventTime(int i) {
        return 0L;
    }

    @Override // androidx.media3.extractor.text.Subtitle
    public int getEventTimeCount() {
        return 1;
    }

    @Override // androidx.media3.extractor.text.Subtitle
    public int getNextEventTimeIndex(long j) {
        return -1;
    }

    public PgsSubtitle(List<Cue> list) {
        this.cues = list;
    }
}
