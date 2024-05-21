package com.google.android.exoplayer2.text.webvtt;

import com.google.android.exoplayer2.text.Cue;

/* loaded from: classes2.dex */
public final class WebvttCueInfo {
    public final Cue cue;
    public final long endTimeUs;
    public final long startTimeUs;

    public WebvttCueInfo(Cue cue, long j, long j2) {
        this.cue = cue;
        this.startTimeUs = j;
        this.endTimeUs = j2;
    }
}
