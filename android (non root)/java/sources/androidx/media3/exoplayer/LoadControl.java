package androidx.media3.exoplayer;

import androidx.media3.common.MediaPeriodId;
import androidx.media3.common.Timeline;
import androidx.media3.exoplayer.source.TrackGroupArray;
import androidx.media3.exoplayer.trackselection.ExoTrackSelection;
import androidx.media3.exoplayer.upstream.Allocator;

/* loaded from: classes2.dex */
public interface LoadControl {

    @Deprecated
    public static final MediaPeriodId EMPTY_MEDIA_PERIOD_ID = new MediaPeriodId(new Object());

    Allocator getAllocator();

    long getBackBufferDurationUs();

    void onPrepared();

    void onReleased();

    void onStopped();

    boolean retainBackBufferFromKeyframe();

    boolean shouldContinueLoading(long j, long j2, float f);

    default void onTracksSelected(Timeline timeline, MediaPeriodId mediaPeriodId, Renderer[] rendererArr, TrackGroupArray trackGroupArray, ExoTrackSelection[] exoTrackSelectionArr) {
        onTracksSelected(rendererArr, trackGroupArray, exoTrackSelectionArr);
    }

    @Deprecated
    default void onTracksSelected(Renderer[] rendererArr, TrackGroupArray trackGroupArray, ExoTrackSelection[] exoTrackSelectionArr) {
        onTracksSelected(Timeline.EMPTY, EMPTY_MEDIA_PERIOD_ID, rendererArr, trackGroupArray, exoTrackSelectionArr);
    }

    default boolean shouldStartPlayback(Timeline timeline, MediaPeriodId mediaPeriodId, long j, float f, boolean z, long j2) {
        return shouldStartPlayback(j, f, z, j2);
    }

    @Deprecated
    default boolean shouldStartPlayback(long j, float f, boolean z, long j2) {
        return shouldStartPlayback(Timeline.EMPTY, EMPTY_MEDIA_PERIOD_ID, j, f, z, j2);
    }
}
