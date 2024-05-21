package com.google.android.exoplayer2.video;

import android.os.Handler;
import android.os.SystemClock;
import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.decoder.DecoderCounters;
import com.google.android.exoplayer2.decoder.DecoderReuseEvaluation;
import com.google.android.exoplayer2.util.Assertions;
import com.google.android.exoplayer2.util.Util;
import com.google.android.exoplayer2.video.VideoRendererEventListener;

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
                handler.post(new Runnable() { // from class: com.google.android.exoplayer2.video.VideoRendererEventListener$EventDispatcher$$ExternalSyntheticLambda1
                    @Override // java.lang.Runnable
                    public final void run() {
                        VideoRendererEventListener.EventDispatcher.this.m5471x14ecf85(decoderCounters);
                    }
                });
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: lambda$enabled$0$com-google-android-exoplayer2-video-VideoRendererEventListener$EventDispatcher, reason: not valid java name */
        public /* synthetic */ void m5471x14ecf85(DecoderCounters decoderCounters) {
            ((VideoRendererEventListener) Util.castNonNull(this.listener)).onVideoEnabled(decoderCounters);
        }

        public void decoderInitialized(final String str, final long j, final long j2) {
            Handler handler = this.handler;
            if (handler != null) {
                handler.post(new Runnable() { // from class: com.google.android.exoplayer2.video.VideoRendererEventListener$EventDispatcher$$ExternalSyntheticLambda9
                    @Override // java.lang.Runnable
                    public final void run() {
                        VideoRendererEventListener.EventDispatcher.this.m5467xe61837fb(str, j, j2);
                    }
                });
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: lambda$decoderInitialized$1$com-google-android-exoplayer2-video-VideoRendererEventListener$EventDispatcher, reason: not valid java name */
        public /* synthetic */ void m5467xe61837fb(String str, long j, long j2) {
            ((VideoRendererEventListener) Util.castNonNull(this.listener)).onVideoDecoderInitialized(str, j, j2);
        }

        public void inputFormatChanged(final Format format, final DecoderReuseEvaluation decoderReuseEvaluation) {
            Handler handler = this.handler;
            if (handler != null) {
                handler.post(new Runnable() { // from class: com.google.android.exoplayer2.video.VideoRendererEventListener$EventDispatcher$$ExternalSyntheticLambda5
                    @Override // java.lang.Runnable
                    public final void run() {
                        VideoRendererEventListener.EventDispatcher.this.m5472xbe305117(format, decoderReuseEvaluation);
                    }
                });
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: lambda$inputFormatChanged$2$com-google-android-exoplayer2-video-VideoRendererEventListener$EventDispatcher, reason: not valid java name */
        public /* synthetic */ void m5472xbe305117(Format format, DecoderReuseEvaluation decoderReuseEvaluation) {
            ((VideoRendererEventListener) Util.castNonNull(this.listener)).onVideoInputFormatChanged(format);
            ((VideoRendererEventListener) Util.castNonNull(this.listener)).onVideoInputFormatChanged(format, decoderReuseEvaluation);
        }

        public void droppedFrames(final int i, final long j) {
            Handler handler = this.handler;
            if (handler != null) {
                handler.post(new Runnable() { // from class: com.google.android.exoplayer2.video.VideoRendererEventListener$EventDispatcher$$ExternalSyntheticLambda8
                    @Override // java.lang.Runnable
                    public final void run() {
                        VideoRendererEventListener.EventDispatcher.this.m5470xb0fc5cbd(i, j);
                    }
                });
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: lambda$droppedFrames$3$com-google-android-exoplayer2-video-VideoRendererEventListener$EventDispatcher, reason: not valid java name */
        public /* synthetic */ void m5470xb0fc5cbd(int i, long j) {
            ((VideoRendererEventListener) Util.castNonNull(this.listener)).onDroppedFrames(i, j);
        }

        public void reportVideoFrameProcessingOffset(final long j, final int i) {
            Handler handler = this.handler;
            if (handler != null) {
                handler.post(new Runnable() { // from class: com.google.android.exoplayer2.video.VideoRendererEventListener$EventDispatcher$$ExternalSyntheticLambda4
                    @Override // java.lang.Runnable
                    public final void run() {
                        VideoRendererEventListener.EventDispatcher.this.m5474x6dc4981c(j, i);
                    }
                });
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: lambda$reportVideoFrameProcessingOffset$4$com-google-android-exoplayer2-video-VideoRendererEventListener$EventDispatcher, reason: not valid java name */
        public /* synthetic */ void m5474x6dc4981c(long j, int i) {
            ((VideoRendererEventListener) Util.castNonNull(this.listener)).onVideoFrameProcessingOffset(j, i);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: lambda$videoSizeChanged$5$com-google-android-exoplayer2-video-VideoRendererEventListener$EventDispatcher, reason: not valid java name */
        public /* synthetic */ void m5476x75d86d2f(VideoSize videoSize) {
            ((VideoRendererEventListener) Util.castNonNull(this.listener)).onVideoSizeChanged(videoSize);
        }

        public void videoSizeChanged(final VideoSize videoSize) {
            Handler handler = this.handler;
            if (handler != null) {
                handler.post(new Runnable() { // from class: com.google.android.exoplayer2.video.VideoRendererEventListener$EventDispatcher$$ExternalSyntheticLambda3
                    @Override // java.lang.Runnable
                    public final void run() {
                        VideoRendererEventListener.EventDispatcher.this.m5476x75d86d2f(videoSize);
                    }
                });
            }
        }

        public void renderedFirstFrame(final Object obj) {
            if (this.handler != null) {
                final long elapsedRealtime = SystemClock.elapsedRealtime();
                this.handler.post(new Runnable() { // from class: com.google.android.exoplayer2.video.VideoRendererEventListener$EventDispatcher$$ExternalSyntheticLambda7
                    @Override // java.lang.Runnable
                    public final void run() {
                        VideoRendererEventListener.EventDispatcher.this.m5473xc9a6e54(obj, elapsedRealtime);
                    }
                });
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: lambda$renderedFirstFrame$6$com-google-android-exoplayer2-video-VideoRendererEventListener$EventDispatcher, reason: not valid java name */
        public /* synthetic */ void m5473xc9a6e54(Object obj, long j) {
            ((VideoRendererEventListener) Util.castNonNull(this.listener)).onRenderedFirstFrame(obj, j);
        }

        public void decoderReleased(final String str) {
            Handler handler = this.handler;
            if (handler != null) {
                handler.post(new Runnable() { // from class: com.google.android.exoplayer2.video.VideoRendererEventListener$EventDispatcher$$ExternalSyntheticLambda2
                    @Override // java.lang.Runnable
                    public final void run() {
                        VideoRendererEventListener.EventDispatcher.this.m5468x4f63d3e(str);
                    }
                });
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: lambda$decoderReleased$7$com-google-android-exoplayer2-video-VideoRendererEventListener$EventDispatcher, reason: not valid java name */
        public /* synthetic */ void m5468x4f63d3e(String str) {
            ((VideoRendererEventListener) Util.castNonNull(this.listener)).onVideoDecoderReleased(str);
        }

        public void disabled(final DecoderCounters decoderCounters) {
            decoderCounters.ensureUpdated();
            Handler handler = this.handler;
            if (handler != null) {
                handler.post(new Runnable() { // from class: com.google.android.exoplayer2.video.VideoRendererEventListener$EventDispatcher$$ExternalSyntheticLambda0
                    @Override // java.lang.Runnable
                    public final void run() {
                        VideoRendererEventListener.EventDispatcher.this.m5469x16b53fc8(decoderCounters);
                    }
                });
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: lambda$disabled$8$com-google-android-exoplayer2-video-VideoRendererEventListener$EventDispatcher, reason: not valid java name */
        public /* synthetic */ void m5469x16b53fc8(DecoderCounters decoderCounters) {
            decoderCounters.ensureUpdated();
            ((VideoRendererEventListener) Util.castNonNull(this.listener)).onVideoDisabled(decoderCounters);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: lambda$videoCodecError$9$com-google-android-exoplayer2-video-VideoRendererEventListener$EventDispatcher, reason: not valid java name */
        public /* synthetic */ void m5475xd2363db0(Exception exc) {
            ((VideoRendererEventListener) Util.castNonNull(this.listener)).onVideoCodecError(exc);
        }

        public void videoCodecError(final Exception exc) {
            Handler handler = this.handler;
            if (handler != null) {
                handler.post(new Runnable() { // from class: com.google.android.exoplayer2.video.VideoRendererEventListener$EventDispatcher$$ExternalSyntheticLambda6
                    @Override // java.lang.Runnable
                    public final void run() {
                        VideoRendererEventListener.EventDispatcher.this.m5475xd2363db0(exc);
                    }
                });
            }
        }
    }
}
