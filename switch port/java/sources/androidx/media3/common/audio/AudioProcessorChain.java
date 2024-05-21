package androidx.media3.common.audio;

import androidx.media3.common.PlaybackParameters;

/* loaded from: classes2.dex */
public interface AudioProcessorChain {
    PlaybackParameters applyPlaybackParameters(PlaybackParameters playbackParameters);

    boolean applySkipSilenceEnabled(boolean z);

    AudioProcessor[] getAudioProcessors();

    long getMediaDuration(long j);

    long getSkippedOutputFrameCount();
}
