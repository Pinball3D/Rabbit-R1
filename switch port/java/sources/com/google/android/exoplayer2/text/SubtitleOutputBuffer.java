package com.google.android.exoplayer2.text;

import com.google.android.exoplayer2.decoder.DecoderOutputBuffer;
import com.google.android.exoplayer2.util.Assertions;
import java.util.List;

/* loaded from: classes2.dex */
public abstract class SubtitleOutputBuffer extends DecoderOutputBuffer implements Subtitle {
    private long subsampleOffsetUs;
    private Subtitle subtitle;

    public void setContent(long j, Subtitle subtitle, long j2) {
        this.timeUs = j;
        this.subtitle = subtitle;
        if (j2 == Long.MAX_VALUE) {
            j2 = this.timeUs;
        }
        this.subsampleOffsetUs = j2;
    }

    @Override // com.google.android.exoplayer2.text.Subtitle
    public int getEventTimeCount() {
        return ((Subtitle) Assertions.checkNotNull(this.subtitle)).getEventTimeCount();
    }

    @Override // com.google.android.exoplayer2.text.Subtitle
    public long getEventTime(int i) {
        return ((Subtitle) Assertions.checkNotNull(this.subtitle)).getEventTime(i) + this.subsampleOffsetUs;
    }

    @Override // com.google.android.exoplayer2.text.Subtitle
    public int getNextEventTimeIndex(long j) {
        return ((Subtitle) Assertions.checkNotNull(this.subtitle)).getNextEventTimeIndex(j - this.subsampleOffsetUs);
    }

    @Override // com.google.android.exoplayer2.text.Subtitle
    public List<Cue> getCues(long j) {
        return ((Subtitle) Assertions.checkNotNull(this.subtitle)).getCues(j - this.subsampleOffsetUs);
    }

    @Override // com.google.android.exoplayer2.decoder.Buffer
    public void clear() {
        super.clear();
        this.subtitle = null;
    }
}
