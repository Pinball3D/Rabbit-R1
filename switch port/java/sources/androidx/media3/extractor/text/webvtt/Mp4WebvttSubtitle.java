package androidx.media3.extractor.text.webvtt;

import androidx.media3.common.text.Cue;
import androidx.media3.common.util.Assertions;
import androidx.media3.extractor.text.Subtitle;
import java.util.Collections;
import java.util.List;

/* loaded from: classes2.dex */
final class Mp4WebvttSubtitle implements Subtitle {
    private final List<Cue> cues;

    @Override // androidx.media3.extractor.text.Subtitle
    public int getEventTimeCount() {
        return 1;
    }

    @Override // androidx.media3.extractor.text.Subtitle
    public int getNextEventTimeIndex(long j) {
        return j < 0 ? 0 : -1;
    }

    public Mp4WebvttSubtitle(List<Cue> list) {
        this.cues = Collections.unmodifiableList(list);
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
