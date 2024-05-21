package com.google.android.exoplayer2.util;

import com.google.android.exoplayer2.PlaybackParameters;

/* loaded from: classes2.dex */
public interface MediaClock {
    PlaybackParameters getPlaybackParameters();

    long getPositionUs();

    void setPlaybackParameters(PlaybackParameters playbackParameters);
}
