package androidx.media3.extractor.text.tx3g;

import androidx.media3.common.text.Cue;
import androidx.media3.common.util.Assertions;
import androidx.media3.extractor.text.Subtitle;
import java.util.Collections;
import java.util.List;

/* loaded from: classes2.dex */
final class Tx3gSubtitle implements Subtitle {
    public static final Tx3gSubtitle EMPTY = new Tx3gSubtitle();
    private final List<Cue> cues;

    @Override // androidx.media3.extractor.text.Subtitle
    public int getEventTimeCount() {
        return 1;
    }

    @Override // androidx.media3.extractor.text.Subtitle
    public int getNextEventTimeIndex(long j) {
        return j < 0 ? 0 : -1;
    }

    public Tx3gSubtitle(Cue cue) {
        this.cues = Collections.singletonList(cue);
    }

    private Tx3gSubtitle() {
        this.cues = Collections.emptyList();
    }

    @Override // androidx.media3.extractor.text.Subtitle
    public long getEventTime(int i) {
        Assertions.checkArgument(i == 0);
        return 0L;
    }

    @Override // androidx.media3.extractor.text.Subtitle
    public List<Cue> getCues(long j) {
        return j >= 0 ? this.cues : Collections.emptyList();
    }
}
