package androidx.media3.exoplayer;

import androidx.media3.common.MediaItem;

/* loaded from: classes2.dex */
public interface LivePlaybackSpeedControl {
    float getAdjustedPlaybackSpeed(long j, long j2);

    long getTargetLiveOffsetUs();

    void notifyRebuffer();

    void setLiveConfiguration(MediaItem.LiveConfiguration liveConfiguration);

    void setTargetLiveOffsetOverrideUs(long j);
}
