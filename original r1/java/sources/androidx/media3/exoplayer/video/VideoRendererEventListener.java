package androidx.media3.exoplayer.video;

import android.os.Handler;
import android.os.SystemClock;
import androidx.media3.common.Format;
import androidx.media3.common.VideoSize;
import androidx.media3.common.util.Assertions;
import androidx.media3.common.util.Util;
import androidx.media3.exoplayer.DecoderCounters;
import androidx.media3.exoplayer.DecoderReuseEvaluation;
import androidx.media3.exoplayer.video.VideoRendererEventListener;

/* loaded from: classes2.dex */
public interface VideoRendererEventListener {
    default void onDroppedFrames(int i, long j) {
    }

    default void onRenderedFirstFrame(Object obj, long j) {
    }

    default void onVideoCodecError(Exception exc) {
    }

    default void onVideoDecoderInitialized(String str, long j, long j2) {
    }

    default void onVideoDecoderReleased(String str) {
    }

    default void onVideoDisabled(DecoderCounters decoderCounters) {
    }

    default void onVideoEnabled(DecoderCounters decoderCounters) {
    }

    default void onVideoFrameProcessingOffset(long j, int i) {
    }

    @Deprecated
    default void onVideoInputFormatChanged(Format format) {
    }

    default void onVideoInputFormatChanged(Format format, DecoderReuseEvaluation decoderReuseEvaluation) {
    }

    default void onVideoSizeChanged(VideoSize videoSize) {
    }

    /* loaded from: classes2.dex */
    public static final class EventDispatcher {
        private final Handler handler;
        private final VideoRendererEventListener listener;

        public EventDispatcher(Handler handler, VideoRendererEventListener videoRendererEventListener) {
            this.handler = videoRendererEventListener != null ? (Handler) Assertions.checkNotNull(handler) : null;
            this.listener = videoRendererEventListener;
        }

        public void enabled(final DecoderCounters decoderCounters) {
            Handler handler = this.handler;
            if (handler != null) {
                handler.post(new Runnable() { // from class: androidx.media3.exoplayer.video.VideoRendererEventListener$EventDispatcher$$ExternalSyntheticLambda4
                    @Override // java.lang.Runnable
                    public final void run() {
                        VideoRendererEventListener.EventDispatcher.this.m5283x7180d5d(decoderCounters);
                    }
                });
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: lambda$enabled$0$androidx-media3-exoplayer-video-VideoRendererEventListener$EventDispatcher, reason: not valid java name */
        public /* synthetic */ void m5283x7180d5d(DecoderCounters decoderCounters) {
            ((VideoRendererEventListener) Util.castNonNull(this.listener)).onVideoEnabled(decoderCounters);
        }

        public void decoderInitialized(final String str, final long j, final long j2) {
            Handler handler = this.handler;
            if (handler != null) {
                handler.post(new Runnable() { // from class: androidx.media3.exoplayer.video.VideoRendererEventListener$EventDispatcher$$ExternalSyntheticLambda6
                    @Override // java.lang.Runnable
                    public final void run() {
                        VideoRendererEventListener.EventDispatcher.this.m5279xffa420d3(str, j, j2);
                    }
                });
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: lambda$decoderInitialized$1$androidx-media3-exoplayer-video-VideoRendererEventListener$EventDispatcher, reason: not valid java name */
        public /* synthetic */ void m5279xffa420d3(String str, long j, long j2) {
            ((VideoRendererEventListener) Util.castNonNull(this.listener)).onVideoDecoderInitialized(str, j, j2);
        }

        public void inputFormatChanged(final Format format, final DecoderReuseEvaluation decoderReuseEvaluation) {
            Handler handler = this.handler;
            if (handler != null) {
                handler.post(new Runnable() { // from class: androidx.media3.exoplayer.video.VideoRendererEventListener$EventDispatcher$$ExternalSyntheticLambda7
                    @Override // java.lang.Runnable
                    public final void run() {
                        VideoRendererEventListener.EventDispatcher.this.m5284xd00d27ef(format, decoderReuseEvaluation);
                    }
                });
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: lambda$inputFormatChanged$2$androidx-media3-exoplayer-video-VideoRendererEventListener$EventDispatcher, reason: not valid java name */
        public /* synthetic */ void m5284xd00d27ef(Format format, DecoderReuseEvaluation decoderReuseEvaluation) {
            ((VideoRendererEventListener) Util.castNonNull(this.listener)).onVideoInputFormatChanged(format);
            ((VideoRendererEventListener) Util.castNonNull(this.listener)).onVideoInputFormatChanged(format, decoderReuseEvaluation);
        }

        public void droppedFrames(final int i, final long j) {
            Handler handler = this.handler;
            if (handler != null) {
                handler.post(new Runnable() { // from class: androidx.media3.exoplayer.video.VideoRendererEventListener$EventDispatcher$$ExternalSyntheticLambda0
                    @Override // java.lang.Runnable
                    public final void run() {
                        VideoRendererEventListener.EventDispatcher.this.m5282x9a4cf695(i, j);
                    }
                });
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: lambda$droppedFrames$3$androidx-media3-exoplayer-video-VideoRendererEventListener$EventDispatcher, reason: not valid java name */
        public /* synthetic */ void m5282x9a4cf695(int i, long j) {
            ((VideoRendererEventListener) Util.castNonNull(this.listener)).onDroppedFrames(i, j);
        }

        public void reportVideoFrameProcessingOffset(final long j, final int i) {
            Handler handler = this.handler;
            if (handler != null) {
                handler.post(new Runnable() { // from class: androidx.media3.exoplayer.video.VideoRendererEventListener$EventDispatcher$$ExternalSyntheticLambda3
                    @Override // java.lang.Runnable
                    public final void run() {
                        VideoRendererEventListener.EventDispatcher.this.m5286xc5ffb974(j, i);
                    }
                });
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: lambda$reportVideoFrameProcessingOffset$4$androidx-media3-exoplayer-video-VideoRendererEventListener$EventDispatcher, reason: not valid java name */
        public /* synthetic */ void m5286xc5ffb974(long j, int i) {
            ((VideoRendererEventListener) Util.castNonNull(this.listener)).onVideoFrameProcessingOffset(j, i);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: lambda$videoSizeChanged$5$androidx-media3-exoplayer-video-VideoRendererEventListener$EventDispatcher, reason: not valid java name */
        public /* synthetic */ void m5288xad971007(VideoSize videoSize) {
            ((VideoRendererEventListener) Util.castNonNull(this.listener)).onVideoSizeChanged(videoSize);
        }

        public void videoSizeChanged(final VideoSize videoSize) {
            Handler handler = this.handler;
            if (handler != null) {
                handler.post(new Runnable() { // from class: androidx.media3.exoplayer.video.VideoRendererEventListener$EventDispatcher$$ExternalSyntheticLambda8
                    @Override // java.lang.Runnable
                    public final void run() {
                        VideoRendererEventListener.EventDispatcher.this.m5288xad971007(videoSize);
                    }
                });
            }
        }

        public void renderedFirstFrame(final Object obj) {
            if (this.handler != null) {
                final long elapsedRealtime = SystemClock.elapsedRealtime();
                this.handler.post(new Runnable() { // from class: androidx.media3.exoplayer.video.VideoRendererEventListener$EventDispatcher$$ExternalSyntheticLambda1
                    @Override // java.lang.Runnable
                    public final void run() {
                        VideoRendererEventListener.EventDispatcher.this.m5285xb1e96bac(obj, elapsedRealtime);
                    }
                });
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: lambda$renderedFirstFrame$6$androidx-media3-exoplayer-video-VideoRendererEventListener$EventDispatcher, reason: not valid java name */
        public /* synthetic */ void m5285xb1e96bac(Object obj, long j) {
            ((VideoRendererEventListener) Util.castNonNull(this.listener)).onRenderedFirstFrame(obj, j);
        }

        public void decoderReleased(final String str) {
            Handler handler = this.handler;
            if (handler != null) {
                handler.post(new Runnable() { // from class: androidx.media3.exoplayer.video.VideoRendererEventListener$EventDispatcher$$ExternalSyntheticLambda9
                    @Override // java.lang.Runnable
                    public final void run() {
                        VideoRendererEventListener.EventDispatcher.this.m5280x45853f96(str);
                    }
                });
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: lambda$decoderReleased$7$androidx-media3-exoplayer-video-VideoRendererEventListener$EventDispatcher, reason: not valid java name */
        public /* synthetic */ void m5280x45853f96(String str) {
            ((VideoRendererEventListener) Util.castNonNull(this.listener)).onVideoDecoderReleased(str);
        }

        public void disabled(final DecoderCounters decoderCounters) {
            decoderCounters.ensureUpdated();
            Handler handler = this.handler;
            if (handler != null) {
                handler.post(new Runnable() { // from class: androidx.media3.exoplayer.video.VideoRendererEventListener$EventDispatcher$$ExternalSyntheticLambda5
                    @Override // java.lang.Runnable
                    public final void run() {
                        VideoRendererEventListener.EventDispatcher.this.m5281x166f1720(decoderCounters);
                    }
                });
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: lambda$disabled$8$androidx-media3-exoplayer-video-VideoRendererEventListener$EventDispatcher, reason: not valid java name */
        public /* synthetic */ void m5281x166f1720(DecoderCounters decoderCounters) {
            decoderCounters.ensureUpdated();
            ((VideoRendererEventListener) Util.castNonNull(this.listener)).onVideoDisabled(decoderCounters);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: lambda$videoCodecError$9$androidx-media3-exoplayer-video-VideoRendererEventListener$EventDispatcher, reason: not valid java name */
        public /* synthetic */ void m5287x90ab4908(Exception exc) {
            ((VideoRendererEventListener) Util.castNonNull(this.listener)).onVideoCodecError(exc);
        }

        public void videoCodecError(final Exception exc) {
            Handler handler = this.handler;
            if (handler != null) {
                handler.post(new Runnable() { // from class: androidx.media3.exoplayer.video.VideoRendererEventListener$EventDispatcher$$ExternalSyntheticLambda2
                    @Override // java.lang.Runnable
                    public final void run() {
                        VideoRendererEventListener.EventDispatcher.this.m5287x90ab4908(exc);
                    }
                });
            }
        }
    }
}
