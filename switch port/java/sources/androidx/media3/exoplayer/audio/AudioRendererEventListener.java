package androidx.media3.exoplayer.audio;

import android.os.Handler;
import androidx.media3.common.Format;
import androidx.media3.common.util.Assertions;
import androidx.media3.common.util.Util;
import androidx.media3.exoplayer.DecoderCounters;
import androidx.media3.exoplayer.DecoderReuseEvaluation;
import androidx.media3.exoplayer.audio.AudioRendererEventListener;

/* loaded from: classes2.dex */
public interface AudioRendererEventListener {
    default void onAudioCodecError(Exception exc) {
    }

    default void onAudioDecoderInitialized(String str, long j, long j2) {
    }

    default void onAudioDecoderReleased(String str) {
    }

    default void onAudioDisabled(DecoderCounters decoderCounters) {
    }

    default void onAudioEnabled(DecoderCounters decoderCounters) {
    }

    @Deprecated
    default void onAudioInputFormatChanged(Format format) {
    }

    default void onAudioInputFormatChanged(Format format, DecoderReuseEvaluation decoderReuseEvaluation) {
    }

    default void onAudioPositionAdvancing(long j) {
    }

    default void onAudioSinkError(Exception exc) {
    }

    default void onAudioUnderrun(int i, long j, long j2) {
    }

    default void onSkipSilenceEnabledChanged(boolean z) {
    }

    /* loaded from: classes2.dex */
    public static final class EventDispatcher {
        private final Handler handler;
        private final AudioRendererEventListener listener;

        public EventDispatcher(Handler handler, AudioRendererEventListener audioRendererEventListener) {
            this.handler = audioRendererEventListener != null ? (Handler) Assertions.checkNotNull(handler) : null;
            this.listener = audioRendererEventListener;
        }

        public void enabled(final DecoderCounters decoderCounters) {
            Handler handler = this.handler;
            if (handler != null) {
                handler.post(new Runnable() { // from class: androidx.media3.exoplayer.audio.AudioRendererEventListener$EventDispatcher$$ExternalSyntheticLambda2
                    @Override // java.lang.Runnable
                    public final void run() {
                        AudioRendererEventListener.EventDispatcher.this.m5227x55ee20a7(decoderCounters);
                    }
                });
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: lambda$enabled$0$androidx-media3-exoplayer-audio-AudioRendererEventListener$EventDispatcher, reason: not valid java name */
        public /* synthetic */ void m5227x55ee20a7(DecoderCounters decoderCounters) {
            ((AudioRendererEventListener) Util.castNonNull(this.listener)).onAudioEnabled(decoderCounters);
        }

        public void decoderInitialized(final String str, final long j, final long j2) {
            Handler handler = this.handler;
            if (handler != null) {
                handler.post(new Runnable() { // from class: androidx.media3.exoplayer.audio.AudioRendererEventListener$EventDispatcher$$ExternalSyntheticLambda5
                    @Override // java.lang.Runnable
                    public final void run() {
                        AudioRendererEventListener.EventDispatcher.this.m5224x4e7a341d(str, j, j2);
                    }
                });
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: lambda$decoderInitialized$1$androidx-media3-exoplayer-audio-AudioRendererEventListener$EventDispatcher, reason: not valid java name */
        public /* synthetic */ void m5224x4e7a341d(String str, long j, long j2) {
            ((AudioRendererEventListener) Util.castNonNull(this.listener)).onAudioDecoderInitialized(str, j, j2);
        }

        public void inputFormatChanged(final Format format, final DecoderReuseEvaluation decoderReuseEvaluation) {
            Handler handler = this.handler;
            if (handler != null) {
                handler.post(new Runnable() { // from class: androidx.media3.exoplayer.audio.AudioRendererEventListener$EventDispatcher$$ExternalSyntheticLambda8
                    @Override // java.lang.Runnable
                    public final void run() {
                        AudioRendererEventListener.EventDispatcher.this.m5228x1ee33b39(format, decoderReuseEvaluation);
                    }
                });
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: lambda$inputFormatChanged$2$androidx-media3-exoplayer-audio-AudioRendererEventListener$EventDispatcher, reason: not valid java name */
        public /* synthetic */ void m5228x1ee33b39(Format format, DecoderReuseEvaluation decoderReuseEvaluation) {
            ((AudioRendererEventListener) Util.castNonNull(this.listener)).onAudioInputFormatChanged(format);
            ((AudioRendererEventListener) Util.castNonNull(this.listener)).onAudioInputFormatChanged(format, decoderReuseEvaluation);
        }

        public void positionAdvancing(final long j) {
            Handler handler = this.handler;
            if (handler != null) {
                handler.post(new Runnable() { // from class: androidx.media3.exoplayer.audio.AudioRendererEventListener$EventDispatcher$$ExternalSyntheticLambda3
                    @Override // java.lang.Runnable
                    public final void run() {
                        AudioRendererEventListener.EventDispatcher.this.m5229xa4e1944f(j);
                    }
                });
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: lambda$positionAdvancing$3$androidx-media3-exoplayer-audio-AudioRendererEventListener$EventDispatcher, reason: not valid java name */
        public /* synthetic */ void m5229xa4e1944f(long j) {
            ((AudioRendererEventListener) Util.castNonNull(this.listener)).onAudioPositionAdvancing(j);
        }

        public void underrun(final int i, final long j, final long j2) {
            Handler handler = this.handler;
            if (handler != null) {
                handler.post(new Runnable() { // from class: androidx.media3.exoplayer.audio.AudioRendererEventListener$EventDispatcher$$ExternalSyntheticLambda9
                    @Override // java.lang.Runnable
                    public final void run() {
                        AudioRendererEventListener.EventDispatcher.this.m5231x8e019017(i, j, j2);
                    }
                });
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: lambda$underrun$4$androidx-media3-exoplayer-audio-AudioRendererEventListener$EventDispatcher, reason: not valid java name */
        public /* synthetic */ void m5231x8e019017(int i, long j, long j2) {
            ((AudioRendererEventListener) Util.castNonNull(this.listener)).onAudioUnderrun(i, j, j2);
        }

        public void decoderReleased(final String str) {
            Handler handler = this.handler;
            if (handler != null) {
                handler.post(new Runnable() { // from class: androidx.media3.exoplayer.audio.AudioRendererEventListener$EventDispatcher$$ExternalSyntheticLambda7
                    @Override // java.lang.Runnable
                    public final void run() {
                        AudioRendererEventListener.EventDispatcher.this.m5225x102cf822(str);
                    }
                });
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: lambda$decoderReleased$5$androidx-media3-exoplayer-audio-AudioRendererEventListener$EventDispatcher, reason: not valid java name */
        public /* synthetic */ void m5225x102cf822(String str) {
            ((AudioRendererEventListener) Util.castNonNull(this.listener)).onAudioDecoderReleased(str);
        }

        public void disabled(final DecoderCounters decoderCounters) {
            decoderCounters.ensureUpdated();
            Handler handler = this.handler;
            if (handler != null) {
                handler.post(new Runnable() { // from class: androidx.media3.exoplayer.audio.AudioRendererEventListener$EventDispatcher$$ExternalSyntheticLambda1
                    @Override // java.lang.Runnable
                    public final void run() {
                        AudioRendererEventListener.EventDispatcher.this.m5226xe116cfac(decoderCounters);
                    }
                });
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: lambda$disabled$6$androidx-media3-exoplayer-audio-AudioRendererEventListener$EventDispatcher, reason: not valid java name */
        public /* synthetic */ void m5226xe116cfac(DecoderCounters decoderCounters) {
            decoderCounters.ensureUpdated();
            ((AudioRendererEventListener) Util.castNonNull(this.listener)).onAudioDisabled(decoderCounters);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: lambda$skipSilenceEnabledChanged$7$androidx-media3-exoplayer-audio-AudioRendererEventListener$EventDispatcher, reason: not valid java name */
        public /* synthetic */ void m5230x60b531cc(boolean z) {
            ((AudioRendererEventListener) Util.castNonNull(this.listener)).onSkipSilenceEnabledChanged(z);
        }

        public void skipSilenceEnabledChanged(final boolean z) {
            Handler handler = this.handler;
            if (handler != null) {
                handler.post(new Runnable() { // from class: androidx.media3.exoplayer.audio.AudioRendererEventListener$EventDispatcher$$ExternalSyntheticLambda4
                    @Override // java.lang.Runnable
                    public final void run() {
                        AudioRendererEventListener.EventDispatcher.this.m5230x60b531cc(z);
                    }
                });
            }
        }

        public void audioSinkError(final Exception exc) {
            Handler handler = this.handler;
            if (handler != null) {
                handler.post(new Runnable() { // from class: androidx.media3.exoplayer.audio.AudioRendererEventListener$EventDispatcher$$ExternalSyntheticLambda6
                    @Override // java.lang.Runnable
                    public final void run() {
                        AudioRendererEventListener.EventDispatcher.this.m5223xc89a3787(exc);
                    }
                });
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: lambda$audioSinkError$8$androidx-media3-exoplayer-audio-AudioRendererEventListener$EventDispatcher, reason: not valid java name */
        public /* synthetic */ void m5223xc89a3787(Exception exc) {
            ((AudioRendererEventListener) Util.castNonNull(this.listener)).onAudioSinkError(exc);
        }

        public void audioCodecError(final Exception exc) {
            Handler handler = this.handler;
            if (handler != null) {
                handler.post(new Runnable() { // from class: androidx.media3.exoplayer.audio.AudioRendererEventListener$EventDispatcher$$ExternalSyntheticLambda0
                    @Override // java.lang.Runnable
                    public final void run() {
                        AudioRendererEventListener.EventDispatcher.this.m5222xdf751697(exc);
                    }
                });
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: lambda$audioCodecError$9$androidx-media3-exoplayer-audio-AudioRendererEventListener$EventDispatcher, reason: not valid java name */
        public /* synthetic */ void m5222xdf751697(Exception exc) {
            ((AudioRendererEventListener) Util.castNonNull(this.listener)).onAudioCodecError(exc);
        }
    }
}
