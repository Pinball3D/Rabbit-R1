package com.google.android.exoplayer2.audio;

import com.google.android.exoplayer2.PlaybackParameters;

/* loaded from: classes2.dex */
public interface AudioProcessorChain {
    PlaybackParameters applyPlaybackParameters(PlaybackParameters playbackParameters);

    boolean applySkipSilenceEnabled(boolean z);

    AudioProcessor[] getAudioProcessors();

    long getMediaDuration(long j);

    long getSkippedOutputFrameCount();
}
