package com.google.android.exoplayer2.audio;

import android.os.Handler;
import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.audio.AudioRendererEventListener;
import com.google.android.exoplayer2.decoder.DecoderCounters;
import com.google.android.exoplayer2.decoder.DecoderReuseEvaluation;
import com.google.android.exoplayer2.util.Assertions;
import com.google.android.exoplayer2.util.Util;

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
                handler.post(new Runnable() { // from class: com.google.android.exoplayer2.audio.AudioRendererEventListener$EventDispatcher$$ExternalSyntheticLambda5
                    @Override // java.lang.Runnable
                    public final void run() {
                        AudioRendererEventListener.EventDispatcher.this.m5407x5024e2cf(decoderCounters);
                    }
                });
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: lambda$enabled$0$com-google-android-exoplayer2-audio-AudioRendererEventListener$EventDispatcher, reason: not valid java name */
        public /* synthetic */ void m5407x5024e2cf(DecoderCounters decoderCounters) {
            ((AudioRendererEventListener) Util.castNonNull(this.listener)).onAudioEnabled(decoderCounters);
        }

        public void decoderInitialized(final String str, final long j, final long j2) {
            Handler handler = this.handler;
            if (handler != null) {
                handler.post(new Runnable() { // from class: com.google.android.exoplayer2.audio.AudioRendererEventListener$EventDispatcher$$ExternalSyntheticLambda9
                    @Override // java.lang.Runnable
                    public final void run() {
                        AudioRendererEventListener.EventDispatcher.this.m5404x34ee4b45(str, j, j2);
                    }
                });
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: lambda$decoderInitialized$1$com-google-android-exoplayer2-audio-AudioRendererEventListener$EventDispatcher, reason: not valid java name */
        public /* synthetic */ void m5404x34ee4b45(String str, long j, long j2) {
            ((AudioRendererEventListener) Util.castNonNull(this.listener)).onAudioDecoderInitialized(str, j, j2);
        }

        public void inputFormatChanged(final Format format, final DecoderReuseEvaluation decoderReuseEvaluation) {
            Handler handler = this.handler;
            if (handler != null) {
                handler.post(new Runnable() { // from class: com.google.android.exoplayer2.audio.AudioRendererEventListener$EventDispatcher$$ExternalSyntheticLambda1
                    @Override // java.lang.Runnable
                    public final void run() {
                        AudioRendererEventListener.EventDispatcher.this.m5408xd066461(format, decoderReuseEvaluation);
                    }
                });
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: lambda$inputFormatChanged$2$com-google-android-exoplayer2-audio-AudioRendererEventListener$EventDispatcher, reason: not valid java name */
        public /* synthetic */ void m5408xd066461(Format format, DecoderReuseEvaluation decoderReuseEvaluation) {
            ((AudioRendererEventListener) Util.castNonNull(this.listener)).onAudioInputFormatChanged(format);
            ((AudioRendererEventListener) Util.castNonNull(this.listener)).onAudioInputFormatChanged(format, decoderReuseEvaluation);
        }

        public void positionAdvancing(final long j) {
            Handler handler = this.handler;
            if (handler != null) {
                handler.post(new Runnable() { // from class: com.google.android.exoplayer2.audio.AudioRendererEventListener$EventDispatcher$$ExternalSyntheticLambda3
                    @Override // java.lang.Runnable
                    public final void run() {
                        AudioRendererEventListener.EventDispatcher.this.m5409x4b664277(j);
                    }
                });
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: lambda$positionAdvancing$3$com-google-android-exoplayer2-audio-AudioRendererEventListener$EventDispatcher, reason: not valid java name */
        public /* synthetic */ void m5409x4b664277(long j) {
            ((AudioRendererEventListener) Util.castNonNull(this.listener)).onAudioPositionAdvancing(j);
        }

        public void underrun(final int i, final long j, final long j2) {
            Handler handler = this.handler;
            if (handler != null) {
                handler.post(new Runnable() { // from class: com.google.android.exoplayer2.audio.AudioRendererEventListener$EventDispatcher$$ExternalSyntheticLambda6
                    @Override // java.lang.Runnable
                    public final void run() {
                        AudioRendererEventListener.EventDispatcher.this.m5411x69131a3f(i, j, j2);
                    }
                });
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: lambda$underrun$4$com-google-android-exoplayer2-audio-AudioRendererEventListener$EventDispatcher, reason: not valid java name */
        public /* synthetic */ void m5411x69131a3f(int i, long j, long j2) {
            ((AudioRendererEventListener) Util.castNonNull(this.listener)).onAudioUnderrun(i, j, j2);
        }

        public void decoderReleased(final String str) {
            Handler handler = this.handler;
            if (handler != null) {
                handler.post(new Runnable() { // from class: com.google.android.exoplayer2.audio.AudioRendererEventListener$EventDispatcher$$ExternalSyntheticLambda0
                    @Override // java.lang.Runnable
                    public final void run() {
                        AudioRendererEventListener.EventDispatcher.this.m5405x97e584ca(str);
                    }
                });
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: lambda$decoderReleased$5$com-google-android-exoplayer2-audio-AudioRendererEventListener$EventDispatcher, reason: not valid java name */
        public /* synthetic */ void m5405x97e584ca(String str) {
            ((AudioRendererEventListener) Util.castNonNull(this.listener)).onAudioDecoderReleased(str);
        }

        public void disabled(final DecoderCounters decoderCounters) {
            decoderCounters.ensureUpdated();
            Handler handler = this.handler;
            if (handler != null) {
                handler.post(new Runnable() { // from class: com.google.android.exoplayer2.audio.AudioRendererEventListener$EventDispatcher$$ExternalSyntheticLambda4
                    @Override // java.lang.Runnable
                    public final void run() {
                        AudioRendererEventListener.EventDispatcher.this.m5406xa9a48754(decoderCounters);
                    }
                });
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: lambda$disabled$6$com-google-android-exoplayer2-audio-AudioRendererEventListener$EventDispatcher, reason: not valid java name */
        public /* synthetic */ void m5406xa9a48754(DecoderCounters decoderCounters) {
            decoderCounters.ensureUpdated();
            ((AudioRendererEventListener) Util.castNonNull(this.listener)).onAudioDisabled(decoderCounters);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: lambda$skipSilenceEnabledChanged$7$com-google-android-exoplayer2-audio-AudioRendererEventListener$EventDispatcher, reason: not valid java name */
        public /* synthetic */ void m5410x9104d974(boolean z) {
            ((AudioRendererEventListener) Util.castNonNull(this.listener)).onSkipSilenceEnabledChanged(z);
        }

        public void skipSilenceEnabledChanged(final boolean z) {
            Handler handler = this.handler;
            if (handler != null) {
                handler.post(new Runnable() { // from class: com.google.android.exoplayer2.audio.AudioRendererEventListener$EventDispatcher$$ExternalSyntheticLambda2
                    @Override // java.lang.Runnable
                    public final void run() {
                        AudioRendererEventListener.EventDispatcher.this.m5410x9104d974(z);
                    }
                });
            }
        }

        public void audioSinkError(final Exception exc) {
            Handler handler = this.handler;
            if (handler != null) {
                handler.post(new Runnable() { // from class: com.google.android.exoplayer2.audio.AudioRendererEventListener$EventDispatcher$$ExternalSyntheticLambda7
                    @Override // java.lang.Runnable
                    public final void run() {
                        AudioRendererEventListener.EventDispatcher.this.m5403xcf2a89af(exc);
                    }
                });
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: lambda$audioSinkError$8$com-google-android-exoplayer2-audio-AudioRendererEventListener$EventDispatcher, reason: not valid java name */
        public /* synthetic */ void m5403xcf2a89af(Exception exc) {
            ((AudioRendererEventListener) Util.castNonNull(this.listener)).onAudioSinkError(exc);
        }

        public void audioCodecError(final Exception exc) {
            Handler handler = this.handler;
            if (handler != null) {
                handler.post(new Runnable() { // from class: com.google.android.exoplayer2.audio.AudioRendererEventListener$EventDispatcher$$ExternalSyntheticLambda8
                    @Override // java.lang.Runnable
                    public final void run() {
                        AudioRendererEventListener.EventDispatcher.this.m5402x305f60bf(exc);
                    }
                });
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: lambda$audioCodecError$9$com-google-android-exoplayer2-audio-AudioRendererEventListener$EventDispatcher, reason: not valid java name */
        public /* synthetic */ void m5402x305f60bf(Exception exc) {
            ((AudioRendererEventListener) Util.castNonNull(this.listener)).onAudioCodecError(exc);
        }
    }
}
