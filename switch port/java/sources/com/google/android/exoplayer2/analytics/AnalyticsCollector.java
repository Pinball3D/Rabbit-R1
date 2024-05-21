package com.google.android.exoplayer2.analytics;

import android.os.Looper;
import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.Player;
import com.google.android.exoplayer2.decoder.DecoderCounters;
import com.google.android.exoplayer2.decoder.DecoderReuseEvaluation;
import com.google.android.exoplayer2.drm.DrmSessionEventListener;
import com.google.android.exoplayer2.source.MediaSource;
import com.google.android.exoplayer2.source.MediaSourceEventListener;
import com.google.android.exoplayer2.upstream.BandwidthMeter;
import java.util.List;

/* loaded from: classes2.dex */
public interface AnalyticsCollector extends Player.Listener, MediaSourceEventListener, BandwidthMeter.EventListener, DrmSessionEventListener {
    void addListener(AnalyticsListener analyticsListener);

    void notifySeekStarted();

    void onAudioCodecError(Exception exc);

    void onAudioDecoderInitialized(String str, long j, long j2);

    void onAudioDecoderReleased(String str);

    void onAudioDisabled(DecoderCounters decoderCounters);

    void onAudioEnabled(DecoderCounters decoderCounters);

    void onAudioInputFormatChanged(Format format, DecoderReuseEvaluation decoderReuseEvaluation);

    void onAudioPositionAdvancing(long j);

    void onAudioSinkError(Exception exc);

    void onAudioUnderrun(int i, long j, long j2);

    void onDroppedFrames(int i, long j);

    void onRenderedFirstFrame(Object obj, long j);

    void onVideoCodecError(Exception exc);

    void onVideoDecoderInitialized(String str, long j, long j2);

    void onVideoDecoderReleased(String str);

    void onVideoDisabled(DecoderCounters decoderCounters);

    void onVideoEnabled(DecoderCounters decoderCounters);

    void onVideoFrameProcessingOffset(long j, int i);

    void onVideoInputFormatChanged(Format format, DecoderReuseEvaluation decoderReuseEvaluation);

    void release();

    void removeListener(AnalyticsListener analyticsListener);

    void setPlayer(Player player, Looper looper);

    void updateMediaPeriodQueueInfo(List<MediaSource.MediaPeriodId> list, MediaSource.MediaPeriodId mediaPeriodId);
}
