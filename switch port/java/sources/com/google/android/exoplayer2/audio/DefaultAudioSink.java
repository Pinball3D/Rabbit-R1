package com.google.android.exoplayer2.audio;

import android.media.AudioAttributes;
import android.media.AudioDeviceInfo;
import android.media.AudioFormat;
import android.media.AudioManager;
import android.media.AudioTrack;
import android.media.PlaybackParams;
import android.media.metrics.LogSessionId;
import android.os.Handler;
import android.os.Looper;
import android.os.SystemClock;
import android.util.Pair;
import com.google.android.exoplayer2.ExoPlayer;
import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.PlaybackParameters;
import com.google.android.exoplayer2.analytics.PlayerId;
import com.google.android.exoplayer2.audio.AudioProcessor;
import com.google.android.exoplayer2.audio.AudioSink;
import com.google.android.exoplayer2.audio.AudioTrackPositionTracker;
import com.google.android.exoplayer2.audio.DefaultAudioTrackBufferSizeProvider;
import com.google.android.exoplayer2.util.Assertions;
import com.google.android.exoplayer2.util.Clock;
import com.google.android.exoplayer2.util.ConditionVariable;
import com.google.android.exoplayer2.util.Log;
import com.google.android.exoplayer2.util.MimeTypes;
import com.google.android.exoplayer2.util.Util;
import com.google.common.base.MoreObjects;
import java.lang.annotation.Documented;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Objects;
import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;
import org.checkerframework.checker.nullness.qual.RequiresNonNull;

/* loaded from: classes2.dex */
public final class DefaultAudioSink implements AudioSink {
    private static final int AUDIO_TRACK_RETRY_DURATION_MS = 100;
    private static final int AUDIO_TRACK_SMALLER_BUFFER_RETRY_SIZE = 1000000;
    public static final float DEFAULT_PLAYBACK_SPEED = 1.0f;
    private static final boolean DEFAULT_SKIP_SILENCE = false;
    private static final int ERROR_NATIVE_DEAD_OBJECT = -32;
    public static final float MAX_PITCH = 8.0f;
    public static final float MAX_PLAYBACK_SPEED = 8.0f;
    public static final float MIN_PITCH = 0.1f;
    public static final float MIN_PLAYBACK_SPEED = 0.1f;
    public static final int OFFLOAD_MODE_DISABLED = 0;
    public static final int OFFLOAD_MODE_ENABLED_GAPLESS_DISABLED = 3;
    public static final int OFFLOAD_MODE_ENABLED_GAPLESS_NOT_REQUIRED = 2;
    public static final int OFFLOAD_MODE_ENABLED_GAPLESS_REQUIRED = 1;
    public static final int OUTPUT_MODE_OFFLOAD = 1;
    public static final int OUTPUT_MODE_PASSTHROUGH = 2;
    public static final int OUTPUT_MODE_PCM = 0;
    private static final String TAG = "DefaultAudioSink";
    public static boolean failOnSpuriousAudioTimestamp = false;
    private static int pendingReleaseCount;
    private static ExecutorService releaseExecutor;
    private static final Object releaseExecutorLock = new Object();
    private AudioProcessor[] activeAudioProcessors;
    private MediaPositionParameters afterDrainParameters;
    private AudioAttributes audioAttributes;
    private final AudioCapabilities audioCapabilities;
    private final ExoPlayer.AudioOffloadListener audioOffloadListener;
    private final com.google.android.exoplayer2.audio.AudioProcessorChain audioProcessorChain;
    private int audioSessionId;
    private AudioTrack audioTrack;
    private final AudioTrackBufferSizeProvider audioTrackBufferSizeProvider;
    private PlaybackParameters audioTrackPlaybackParameters;
    private final AudioTrackPositionTracker audioTrackPositionTracker;
    private AuxEffectInfo auxEffectInfo;
    private ByteBuffer avSyncHeader;
    private int bytesUntilNextAvSync;
    private final ChannelMappingAudioProcessor channelMappingAudioProcessor;
    private Configuration configuration;
    private int drainingAudioProcessorIndex;
    private final boolean enableAudioTrackPlaybackParams;
    private final boolean enableFloatOutput;
    private boolean externalAudioSessionIdProvided;
    private int framesPerEncodedSample;
    private boolean handledEndOfStream;
    private final PendingExceptionHolder<AudioSink.InitializationException> initializationExceptionPendingExceptionHolder;
    private ByteBuffer inputBuffer;
    private int inputBufferAccessUnitCount;
    private boolean isWaitingForOffloadEndOfStreamHandled;
    private long lastFeedElapsedRealtimeMs;
    private AudioSink.Listener listener;
    private MediaPositionParameters mediaPositionParameters;
    private final ArrayDeque<MediaPositionParameters> mediaPositionParametersCheckpoints;
    private boolean offloadDisabledUntilNextConfiguration;
    private final int offloadMode;
    private StreamEventCallbackV29 offloadStreamEventCallbackV29;
    private ByteBuffer outputBuffer;
    private ByteBuffer[] outputBuffers;
    private Configuration pendingConfiguration;
    private PlayerId playerId;
    private boolean playing;
    private byte[] preV21OutputBuffer;
    private int preV21OutputBufferOffset;
    private AudioDeviceInfoApi23 preferredDevice;
    private final ConditionVariable releasingConditionVariable;
    private long startMediaTimeUs;
    private boolean startMediaTimeUsNeedsInit;
    private boolean startMediaTimeUsNeedsSync;
    private boolean stoppedAudioTrack;
    private long submittedEncodedFrames;
    private long submittedPcmBytes;
    private final AudioProcessor[] toFloatPcmAvailableAudioProcessors;
    private final AudioProcessor[] toIntPcmAvailableAudioProcessors;
    private final TrimmingAudioProcessor trimmingAudioProcessor;
    private boolean tunneling;
    private float volume;
    private final PendingExceptionHolder<AudioSink.WriteException> writeExceptionPendingExceptionHolder;
    private long writtenEncodedFrames;
    private long writtenPcmBytes;

    @Deprecated
    /* loaded from: classes2.dex */
    public interface AudioProcessorChain extends com.google.android.exoplayer2.audio.AudioProcessorChain {
    }

    /* loaded from: classes2.dex */
    public interface AudioTrackBufferSizeProvider {
        public static final AudioTrackBufferSizeProvider DEFAULT = new DefaultAudioTrackBufferSizeProvider.Builder().build();

        int getBufferSizeInBytes(int i, int i2, int i3, int i4, int i5, int i6, double d);
    }

    @Target({ElementType.TYPE_USE})
    @Documented
    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes2.dex */
    public @interface OffloadMode {
    }

    @Target({ElementType.TYPE_USE})
    @Documented
    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes2.dex */
    public @interface OutputMode {
    }

    private boolean isAudioTrackInitialized() {
        return this.audioTrack != null;
    }

    @Override // com.google.android.exoplayer2.audio.AudioSink
    public AudioAttributes getAudioAttributes() {
        return this.audioAttributes;
    }

    @Override // com.google.android.exoplayer2.audio.AudioSink
    public void handleDiscontinuity() {
        this.startMediaTimeUsNeedsSync = true;
    }

    @Override // com.google.android.exoplayer2.audio.AudioSink
    public void setListener(AudioSink.Listener listener) {
        this.listener = listener;
    }

    @Override // com.google.android.exoplayer2.audio.AudioSink
    public void setPlayerId(PlayerId playerId) {
        this.playerId = playerId;
    }

    /* loaded from: classes2.dex */
    public static final class InvalidAudioTrackTimestampException extends RuntimeException {
        private InvalidAudioTrackTimestampException(String str) {
            super(str);
        }
    }

    /* loaded from: classes2.dex */
    public static class DefaultAudioProcessorChain implements AudioProcessorChain {
        private final AudioProcessor[] audioProcessors;
        private final SilenceSkippingAudioProcessor silenceSkippingAudioProcessor;
        private final SonicAudioProcessor sonicAudioProcessor;

        @Override // com.google.android.exoplayer2.audio.AudioProcessorChain
        public AudioProcessor[] getAudioProcessors() {
            return this.audioProcessors;
        }

        public DefaultAudioProcessorChain(AudioProcessor... audioProcessorArr) {
            this(audioProcessorArr, new SilenceSkippingAudioProcessor(), new SonicAudioProcessor());
        }

        public DefaultAudioProcessorChain(AudioProcessor[] audioProcessorArr, SilenceSkippingAudioProcessor silenceSkippingAudioProcessor, SonicAudioProcessor sonicAudioProcessor) {
            AudioProcessor[] audioProcessorArr2 = new AudioProcessor[audioProcessorArr.length + 2];
            this.audioProcessors = audioProcessorArr2;
            System.arraycopy(audioProcessorArr, 0, audioProcessorArr2, 0, audioProcessorArr.length);
            this.silenceSkippingAudioProcessor = silenceSkippingAudioProcessor;
            this.sonicAudioProcessor = sonicAudioProcessor;
            audioProcessorArr2[audioProcessorArr.length] = silenceSkippingAudioProcessor;
            audioProcessorArr2[audioProcessorArr.length + 1] = sonicAudioProcessor;
        }

        @Override // com.google.android.exoplayer2.audio.AudioProcessorChain
        public PlaybackParameters applyPlaybackParameters(PlaybackParameters playbackParameters) {
            this.sonicAudioProcessor.setSpeed(playbackParameters.speed);
            this.sonicAudioProcessor.setPitch(playbackParameters.pitch);
            return playbackParameters;
        }

        @Override // com.google.android.exoplayer2.audio.AudioProcessorChain
        public boolean applySkipSilenceEnabled(boolean z) {
            this.silenceSkippingAudioProcessor.setEnabled(z);
            return z;
        }

        @Override // com.google.android.exoplayer2.audio.AudioProcessorChain
        public long getMediaDuration(long j) {
            return this.sonicAudioProcessor.getMediaDuration(j);
        }

        @Override // com.google.android.exoplayer2.audio.AudioProcessorChain
        public long getSkippedOutputFrameCount() {
            return this.silenceSkippingAudioProcessor.getSkippedFrames();
        }
    }

    /* loaded from: classes2.dex */
    public static final class Builder {
        ExoPlayer.AudioOffloadListener audioOffloadListener;
        private com.google.android.exoplayer2.audio.AudioProcessorChain audioProcessorChain;
        private boolean enableAudioTrackPlaybackParams;
        private boolean enableFloatOutput;
        private AudioCapabilities audioCapabilities = AudioCapabilities.DEFAULT_AUDIO_CAPABILITIES;
        private int offloadMode = 0;
        AudioTrackBufferSizeProvider audioTrackBufferSizeProvider = AudioTrackBufferSizeProvider.DEFAULT;

        public Builder setAudioTrackBufferSizeProvider(AudioTrackBufferSizeProvider audioTrackBufferSizeProvider) {
            this.audioTrackBufferSizeProvider = audioTrackBufferSizeProvider;
            return this;
        }

        public Builder setEnableAudioTrackPlaybackParams(boolean z) {
            this.enableAudioTrackPlaybackParams = z;
            return this;
        }

        public Builder setEnableFloatOutput(boolean z) {
            this.enableFloatOutput = z;
            return this;
        }

        public Builder setExperimentalAudioOffloadListener(ExoPlayer.AudioOffloadListener audioOffloadListener) {
            this.audioOffloadListener = audioOffloadListener;
            return this;
        }

        public Builder setOffloadMode(int i) {
            this.offloadMode = i;
            return this;
        }

        public Builder setAudioCapabilities(AudioCapabilities audioCapabilities) {
            Assertions.checkNotNull(audioCapabilities);
            this.audioCapabilities = audioCapabilities;
            return this;
        }

        public Builder setAudioProcessors(AudioProcessor[] audioProcessorArr) {
            Assertions.checkNotNull(audioProcessorArr);
            return setAudioProcessorChain(new DefaultAudioProcessorChain(audioProcessorArr));
        }

        public Builder setAudioProcessorChain(com.google.android.exoplayer2.audio.AudioProcessorChain audioProcessorChain) {
            Assertions.checkNotNull(audioProcessorChain);
            this.audioProcessorChain = audioProcessorChain;
            return this;
        }

        public DefaultAudioSink build() {
            if (this.audioProcessorChain == null) {
                this.audioProcessorChain = new DefaultAudioProcessorChain(new AudioProcessor[0]);
            }
            return new DefaultAudioSink(this);
        }
    }

    @Deprecated
    public DefaultAudioSink(AudioCapabilities audioCapabilities, AudioProcessor[] audioProcessorArr) {
        this(new Builder().setAudioCapabilities((AudioCapabilities) MoreObjects.firstNonNull(audioCapabilities, AudioCapabilities.DEFAULT_AUDIO_CAPABILITIES)).setAudioProcessors(audioProcessorArr));
    }

    @Deprecated
    public DefaultAudioSink(AudioCapabilities audioCapabilities, AudioProcessor[] audioProcessorArr, boolean z) {
        this(new Builder().setAudioCapabilities((AudioCapabilities) MoreObjects.firstNonNull(audioCapabilities, AudioCapabilities.DEFAULT_AUDIO_CAPABILITIES)).setAudioProcessors(audioProcessorArr).setEnableFloatOutput(z));
    }

    @Deprecated
    public DefaultAudioSink(AudioCapabilities audioCapabilities, AudioProcessorChain audioProcessorChain, boolean z, boolean z2, int i) {
        this(new Builder().setAudioCapabilities((AudioCapabilities) MoreObjects.firstNonNull(audioCapabilities, AudioCapabilities.DEFAULT_AUDIO_CAPABILITIES)).setAudioProcessorChain(audioProcessorChain).setEnableFloatOutput(z).setEnableAudioTrackPlaybackParams(z2).setOffloadMode(i));
    }

    @RequiresNonNull({"#1.audioProcessorChain"})
    private DefaultAudioSink(Builder builder) {
        this.audioCapabilities = builder.audioCapabilities;
        com.google.android.exoplayer2.audio.AudioProcessorChain audioProcessorChain = builder.audioProcessorChain;
        this.audioProcessorChain = audioProcessorChain;
        this.enableFloatOutput = Util.SDK_INT >= 21 && builder.enableFloatOutput;
        this.enableAudioTrackPlaybackParams = Util.SDK_INT >= 23 && builder.enableAudioTrackPlaybackParams;
        this.offloadMode = Util.SDK_INT >= 29 ? builder.offloadMode : 0;
        this.audioTrackBufferSizeProvider = builder.audioTrackBufferSizeProvider;
        ConditionVariable conditionVariable = new ConditionVariable(Clock.DEFAULT);
        this.releasingConditionVariable = conditionVariable;
        conditionVariable.open();
        this.audioTrackPositionTracker = new AudioTrackPositionTracker(new PositionTrackerListener());
        ChannelMappingAudioProcessor channelMappingAudioProcessor = new ChannelMappingAudioProcessor();
        this.channelMappingAudioProcessor = channelMappingAudioProcessor;
        TrimmingAudioProcessor trimmingAudioProcessor = new TrimmingAudioProcessor();
        this.trimmingAudioProcessor = trimmingAudioProcessor;
        ArrayList arrayList = new ArrayList();
        Collections.addAll(arrayList, new ResamplingAudioProcessor(), channelMappingAudioProcessor, trimmingAudioProcessor);
        Collections.addAll(arrayList, audioProcessorChain.getAudioProcessors());
        this.toIntPcmAvailableAudioProcessors = (AudioProcessor[]) arrayList.toArray(new AudioProcessor[0]);
        this.toFloatPcmAvailableAudioProcessors = new AudioProcessor[]{new FloatResamplingAudioProcessor()};
        this.volume = 1.0f;
        this.audioAttributes = AudioAttributes.DEFAULT;
        this.audioSessionId = 0;
        this.auxEffectInfo = new AuxEffectInfo(0, 0.0f);
        this.mediaPositionParameters = new MediaPositionParameters(PlaybackParameters.DEFAULT, false, 0L, 0L);
        this.audioTrackPlaybackParameters = PlaybackParameters.DEFAULT;
        this.drainingAudioProcessorIndex = -1;
        this.activeAudioProcessors = new AudioProcessor[0];
        this.outputBuffers = new ByteBuffer[0];
        this.mediaPositionParametersCheckpoints = new ArrayDeque<>();
        this.initializationExceptionPendingExceptionHolder = new PendingExceptionHolder<>(100L);
        this.writeExceptionPendingExceptionHolder = new PendingExceptionHolder<>(100L);
        this.audioOffloadListener = builder.audioOffloadListener;
    }

    @Override // com.google.android.exoplayer2.audio.AudioSink
    public boolean supportsFormat(Format format) {
        return getFormatSupport(format) != 0;
    }

    @Override // com.google.android.exoplayer2.audio.AudioSink
    public int getFormatSupport(Format format) {
        if (!"audio/raw".equals(format.sampleMimeType)) {
            return ((this.offloadDisabledUntilNextConfiguration || !useOffloadedPlayback(format, this.audioAttributes)) && !this.audioCapabilities.isPassthroughPlaybackSupported(format)) ? 0 : 2;
        }
        if (Util.isEncodingLinearPcm(format.pcmEncoding)) {
            return (format.pcmEncoding == 2 || (this.enableFloatOutput && format.pcmEncoding == 4)) ? 2 : 1;
        }
        Log.w(TAG, "Invalid PCM encoding: " + format.pcmEncoding);
        return 0;
    }

    @Override // com.google.android.exoplayer2.audio.AudioSink
    public long getCurrentPositionUs(boolean z) {
        if (!isAudioTrackInitialized() || this.startMediaTimeUsNeedsInit) {
            return Long.MIN_VALUE;
        }
        return applySkipping(applyMediaPositionParameters(Math.min(this.audioTrackPositionTracker.getCurrentPositionUs(z), this.configuration.framesToDurationUs(getWrittenFrames()))));
    }

    @Override // com.google.android.exoplayer2.audio.AudioSink
    public void configure(Format format, int i, int[] iArr) throws AudioSink.ConfigurationException {
        AudioProcessor[] audioProcessorArr;
        int i2;
        int i3;
        int intValue;
        int i4;
        int i5;
        int i6;
        int i7;
        int i8;
        int i9;
        int i10;
        int bufferSizeInBytes;
        int[] iArr2;
        if ("audio/raw".equals(format.sampleMimeType)) {
            Assertions.checkArgument(Util.isEncodingLinearPcm(format.pcmEncoding));
            int pcmFrameSize = Util.getPcmFrameSize(format.pcmEncoding, format.channelCount);
            AudioProcessor[] audioProcessorArr2 = shouldUseFloatOutput(format.pcmEncoding) ? this.toFloatPcmAvailableAudioProcessors : this.toIntPcmAvailableAudioProcessors;
            this.trimmingAudioProcessor.setTrimFrameCount(format.encoderDelay, format.encoderPadding);
            if (Util.SDK_INT < 21 && format.channelCount == 8 && iArr == null) {
                iArr2 = new int[6];
                for (int i11 = 0; i11 < 6; i11++) {
                    iArr2[i11] = i11;
                }
            } else {
                iArr2 = iArr;
            }
            this.channelMappingAudioProcessor.setChannelMap(iArr2);
            AudioProcessor.AudioFormat audioFormat = new AudioProcessor.AudioFormat(format.sampleRate, format.channelCount, format.pcmEncoding);
            for (AudioProcessor audioProcessor : audioProcessorArr2) {
                try {
                    AudioProcessor.AudioFormat configure = audioProcessor.configure(audioFormat);
                    if (audioProcessor.isActive()) {
                        audioFormat = configure;
                    }
                } catch (AudioProcessor.UnhandledAudioFormatException e) {
                    throw new AudioSink.ConfigurationException(e, format);
                }
            }
            int i12 = audioFormat.encoding;
            int i13 = audioFormat.sampleRate;
            int audioTrackChannelConfig = Util.getAudioTrackChannelConfig(audioFormat.channelCount);
            audioProcessorArr = audioProcessorArr2;
            i2 = Util.getPcmFrameSize(i12, audioFormat.channelCount);
            i4 = i12;
            i3 = i13;
            intValue = audioTrackChannelConfig;
            i6 = pcmFrameSize;
            i5 = 0;
        } else {
            AudioProcessor[] audioProcessorArr3 = new AudioProcessor[0];
            int i14 = format.sampleRate;
            if (useOffloadedPlayback(format, this.audioAttributes)) {
                audioProcessorArr = audioProcessorArr3;
                i2 = -1;
                i5 = 1;
                i3 = i14;
                i4 = MimeTypes.getEncoding((String) Assertions.checkNotNull(format.sampleMimeType), format.codecs);
                intValue = Util.getAudioTrackChannelConfig(format.channelCount);
            } else {
                Pair<Integer, Integer> encodingAndChannelConfigForPassthrough = this.audioCapabilities.getEncodingAndChannelConfigForPassthrough(format);
                if (encodingAndChannelConfigForPassthrough == null) {
                    throw new AudioSink.ConfigurationException("Unable to configure passthrough for: " + format, format);
                }
                int intValue2 = ((Integer) encodingAndChannelConfigForPassthrough.first).intValue();
                audioProcessorArr = audioProcessorArr3;
                i2 = -1;
                i3 = i14;
                intValue = ((Integer) encodingAndChannelConfigForPassthrough.second).intValue();
                i4 = intValue2;
                i5 = 2;
            }
            i6 = i2;
        }
        if (i4 == 0) {
            throw new AudioSink.ConfigurationException("Invalid output encoding (mode=" + i5 + ") for: " + format, format);
        }
        if (intValue == 0) {
            throw new AudioSink.ConfigurationException("Invalid output channel config (mode=" + i5 + ") for: " + format, format);
        }
        if (i != 0) {
            bufferSizeInBytes = i;
            i7 = i4;
            i8 = intValue;
            i9 = i2;
            i10 = i3;
        } else {
            i7 = i4;
            i8 = intValue;
            i9 = i2;
            i10 = i3;
            bufferSizeInBytes = this.audioTrackBufferSizeProvider.getBufferSizeInBytes(getAudioTrackMinBufferSize(i3, intValue, i4), i4, i5, i2 != -1 ? i2 : 1, i3, format.bitrate, this.enableAudioTrackPlaybackParams ? 8.0d : 1.0d);
        }
        this.offloadDisabledUntilNextConfiguration = false;
        Configuration configuration = new Configuration(format, i6, i5, i9, i10, i8, i7, bufferSizeInBytes, audioProcessorArr);
        if (isAudioTrackInitialized()) {
            this.pendingConfiguration = configuration;
        } else {
            this.configuration = configuration;
        }
    }

    private void setupAudioProcessors() {
        AudioProcessor[] audioProcessorArr = this.configuration.availableAudioProcessors;
        ArrayList arrayList = new ArrayList();
        for (AudioProcessor audioProcessor : audioProcessorArr) {
            if (audioProcessor.isActive()) {
                arrayList.add(audioProcessor);
            } else {
                audioProcessor.flush();
            }
        }
        int size = arrayList.size();
        this.activeAudioProcessors = (AudioProcessor[]) arrayList.toArray(new AudioProcessor[size]);
        this.outputBuffers = new ByteBuffer[size];
        flushAudioProcessors();
    }

    private void flushAudioProcessors() {
        int i = 0;
        while (true) {
            AudioProcessor[] audioProcessorArr = this.activeAudioProcessors;
            if (i >= audioProcessorArr.length) {
                return;
            }
            AudioProcessor audioProcessor = audioProcessorArr[i];
            audioProcessor.flush();
            this.outputBuffers[i] = audioProcessor.getOutput();
            i++;
        }
    }

    private boolean initializeAudioTrack() throws AudioSink.InitializationException {
        PlayerId playerId;
        if (!this.releasingConditionVariable.isOpen()) {
            return false;
        }
        AudioTrack buildAudioTrackWithRetry = buildAudioTrackWithRetry();
        this.audioTrack = buildAudioTrackWithRetry;
        if (isOffloadedPlayback(buildAudioTrackWithRetry)) {
            registerStreamEventCallbackV29(this.audioTrack);
            if (this.offloadMode != 3) {
                this.audioTrack.setOffloadDelayPadding(this.configuration.inputFormat.encoderDelay, this.configuration.inputFormat.encoderPadding);
            }
        }
        if (Util.SDK_INT >= 31 && (playerId = this.playerId) != null) {
            Api31.setLogSessionIdOnAudioTrack(this.audioTrack, playerId);
        }
        this.audioSessionId = this.audioTrack.getAudioSessionId();
        this.audioTrackPositionTracker.setAudioTrack(this.audioTrack, this.configuration.outputMode == 2, this.configuration.outputEncoding, this.configuration.outputPcmFrameSize, this.configuration.bufferSize);
        setVolumeInternal();
        if (this.auxEffectInfo.effectId != 0) {
            this.audioTrack.attachAuxEffect(this.auxEffectInfo.effectId);
            this.audioTrack.setAuxEffectSendLevel(this.auxEffectInfo.sendLevel);
        }
        if (this.preferredDevice != null && Util.SDK_INT >= 23) {
            Api23.setPreferredDeviceOnAudioTrack(this.audioTrack, this.preferredDevice);
        }
        this.startMediaTimeUsNeedsInit = true;
        return true;
    }

    @Override // com.google.android.exoplayer2.audio.AudioSink
    public void play() {
        this.playing = true;
        if (isAudioTrackInitialized()) {
            this.audioTrackPositionTracker.start();
            this.audioTrack.play();
        }
    }

    @Override // com.google.android.exoplayer2.audio.AudioSink
    public boolean handleBuffer(ByteBuffer byteBuffer, long j, int i) throws AudioSink.InitializationException, AudioSink.WriteException {
        ByteBuffer byteBuffer2 = this.inputBuffer;
        Assertions.checkArgument(byteBuffer2 == null || byteBuffer == byteBuffer2);
        if (this.pendingConfiguration != null) {
            if (!drainToEndOfStream()) {
                return false;
            }
            if (!this.pendingConfiguration.canReuseAudioTrack(this.configuration)) {
                playPendingData();
                if (hasPendingData()) {
                    return false;
                }
                flush();
            } else {
                this.configuration = this.pendingConfiguration;
                this.pendingConfiguration = null;
                if (isOffloadedPlayback(this.audioTrack) && this.offloadMode != 3) {
                    if (this.audioTrack.getPlayState() == 3) {
                        this.audioTrack.setOffloadEndOfStream();
                    }
                    this.audioTrack.setOffloadDelayPadding(this.configuration.inputFormat.encoderDelay, this.configuration.inputFormat.encoderPadding);
                    this.isWaitingForOffloadEndOfStreamHandled = true;
                }
            }
            applyAudioProcessorPlaybackParametersAndSkipSilence(j);
        }
        if (!isAudioTrackInitialized()) {
            try {
                if (!initializeAudioTrack()) {
                    return false;
                }
            } catch (AudioSink.InitializationException e) {
                if (e.isRecoverable) {
                    throw e;
                }
                this.initializationExceptionPendingExceptionHolder.throwExceptionIfDeadlineIsReached(e);
                return false;
            }
        }
        this.initializationExceptionPendingExceptionHolder.clear();
        if (this.startMediaTimeUsNeedsInit) {
            this.startMediaTimeUs = Math.max(0L, j);
            this.startMediaTimeUsNeedsSync = false;
            this.startMediaTimeUsNeedsInit = false;
            if (this.enableAudioTrackPlaybackParams && Util.SDK_INT >= 23) {
                setAudioTrackPlaybackParametersV23(this.audioTrackPlaybackParameters);
            }
            applyAudioProcessorPlaybackParametersAndSkipSilence(j);
            if (this.playing) {
                play();
            }
        }
        if (!this.audioTrackPositionTracker.mayHandleBuffer(getWrittenFrames())) {
            return false;
        }
        if (this.inputBuffer == null) {
            Assertions.checkArgument(byteBuffer.order() == ByteOrder.LITTLE_ENDIAN);
            if (!byteBuffer.hasRemaining()) {
                return true;
            }
            if (this.configuration.outputMode != 0 && this.framesPerEncodedSample == 0) {
                int framesPerEncodedSample = getFramesPerEncodedSample(this.configuration.outputEncoding, byteBuffer);
                this.framesPerEncodedSample = framesPerEncodedSample;
                if (framesPerEncodedSample == 0) {
                    return true;
                }
            }
            if (this.afterDrainParameters != null) {
                if (!drainToEndOfStream()) {
                    return false;
                }
                applyAudioProcessorPlaybackParametersAndSkipSilence(j);
                this.afterDrainParameters = null;
            }
            long inputFramesToDurationUs = this.startMediaTimeUs + this.configuration.inputFramesToDurationUs(getSubmittedFrames() - this.trimmingAudioProcessor.getTrimmedFrameCount());
            if (!this.startMediaTimeUsNeedsSync && Math.abs(inputFramesToDurationUs - j) > 200000) {
                AudioSink.Listener listener = this.listener;
                if (listener != null) {
                    listener.onAudioSinkError(new AudioSink.UnexpectedDiscontinuityException(j, inputFramesToDurationUs));
                }
                this.startMediaTimeUsNeedsSync = true;
            }
            if (this.startMediaTimeUsNeedsSync) {
                if (!drainToEndOfStream()) {
                    return false;
                }
                long j2 = j - inputFramesToDurationUs;
                this.startMediaTimeUs += j2;
                this.startMediaTimeUsNeedsSync = false;
                applyAudioProcessorPlaybackParametersAndSkipSilence(j);
                AudioSink.Listener listener2 = this.listener;
                if (listener2 != null && j2 != 0) {
                    listener2.onPositionDiscontinuity();
                }
            }
            if (this.configuration.outputMode == 0) {
                this.submittedPcmBytes += byteBuffer.remaining();
            } else {
                this.submittedEncodedFrames += this.framesPerEncodedSample * i;
            }
            this.inputBuffer = byteBuffer;
            this.inputBufferAccessUnitCount = i;
        }
        processBuffers(j);
        if (!this.inputBuffer.hasRemaining()) {
            this.inputBuffer = null;
            this.inputBufferAccessUnitCount = 0;
            return true;
        }
        if (!this.audioTrackPositionTracker.isStalled(getWrittenFrames())) {
            return false;
        }
        Log.w(TAG, "Resetting stalled audio track");
        flush();
        return true;
    }

    private AudioTrack buildAudioTrackWithRetry() throws AudioSink.InitializationException {
        try {
            return buildAudioTrack((Configuration) Assertions.checkNotNull(this.configuration));
        } catch (AudioSink.InitializationException e) {
            if (this.configuration.bufferSize > 1000000) {
                Configuration copyWithBufferSize = this.configuration.copyWithBufferSize(1000000);
                try {
                    AudioTrack buildAudioTrack = this.buildAudioTrack(copyWithBufferSize);
                    this.configuration = copyWithBufferSize;
                    return buildAudioTrack;
                } catch (AudioSink.InitializationException e2) {
                    e.addSuppressed(e2);
                    this.maybeDisableOffload();
                    throw e;
                }
            }
            this.maybeDisableOffload();
            throw e;
        }
    }

    private AudioTrack buildAudioTrack(Configuration configuration) throws AudioSink.InitializationException {
        try {
            AudioTrack buildAudioTrack = configuration.buildAudioTrack(this.tunneling, this.audioAttributes, this.audioSessionId);
            ExoPlayer.AudioOffloadListener audioOffloadListener = this.audioOffloadListener;
            if (audioOffloadListener != null) {
                audioOffloadListener.onExperimentalOffloadedPlayback(isOffloadedPlayback(buildAudioTrack));
            }
            return buildAudioTrack;
        } catch (AudioSink.InitializationException e) {
            AudioSink.Listener listener = this.listener;
            if (listener != null) {
                listener.onAudioSinkError(e);
            }
            throw e;
        }
    }

    private void registerStreamEventCallbackV29(AudioTrack audioTrack) {
        if (this.offloadStreamEventCallbackV29 == null) {
            this.offloadStreamEventCallbackV29 = new StreamEventCallbackV29();
        }
        this.offloadStreamEventCallbackV29.register(audioTrack);
    }

    private void processBuffers(long j) throws AudioSink.WriteException {
        ByteBuffer byteBuffer;
        int length = this.activeAudioProcessors.length;
        int i = length;
        while (i >= 0) {
            if (i > 0) {
                byteBuffer = this.outputBuffers[i - 1];
            } else {
                byteBuffer = this.inputBuffer;
                if (byteBuffer == null) {
                    byteBuffer = AudioProcessor.EMPTY_BUFFER;
                }
            }
            if (i == length) {
                writeBuffer(byteBuffer, j);
            } else {
                AudioProcessor audioProcessor = this.activeAudioProcessors[i];
                if (i > this.drainingAudioProcessorIndex) {
                    audioProcessor.queueInput(byteBuffer);
                }
                ByteBuffer output = audioProcessor.getOutput();
                this.outputBuffers[i] = output;
                if (output.hasRemaining()) {
                    i++;
                }
            }
            if (byteBuffer.hasRemaining()) {
                return;
            } else {
                i--;
            }
        }
    }

    private void writeBuffer(ByteBuffer byteBuffer, long j) throws AudioSink.WriteException {
        int writeNonBlockingV21;
        AudioSink.Listener listener;
        if (byteBuffer.hasRemaining()) {
            ByteBuffer byteBuffer2 = this.outputBuffer;
            if (byteBuffer2 != null) {
                Assertions.checkArgument(byteBuffer2 == byteBuffer);
            } else {
                this.outputBuffer = byteBuffer;
                if (Util.SDK_INT < 21) {
                    int remaining = byteBuffer.remaining();
                    byte[] bArr = this.preV21OutputBuffer;
                    if (bArr == null || bArr.length < remaining) {
                        this.preV21OutputBuffer = new byte[remaining];
                    }
                    int position = byteBuffer.position();
                    byteBuffer.get(this.preV21OutputBuffer, 0, remaining);
                    byteBuffer.position(position);
                    this.preV21OutputBufferOffset = 0;
                }
            }
            int remaining2 = byteBuffer.remaining();
            if (Util.SDK_INT < 21) {
                int availableBufferSize = this.audioTrackPositionTracker.getAvailableBufferSize(this.writtenPcmBytes);
                if (availableBufferSize > 0) {
                    writeNonBlockingV21 = this.audioTrack.write(this.preV21OutputBuffer, this.preV21OutputBufferOffset, Math.min(remaining2, availableBufferSize));
                    if (writeNonBlockingV21 > 0) {
                        this.preV21OutputBufferOffset += writeNonBlockingV21;
                        byteBuffer.position(byteBuffer.position() + writeNonBlockingV21);
                    }
                } else {
                    writeNonBlockingV21 = 0;
                }
            } else if (this.tunneling) {
                Assertions.checkState(j != -9223372036854775807L);
                writeNonBlockingV21 = writeNonBlockingWithAvSyncV21(this.audioTrack, byteBuffer, remaining2, j);
            } else {
                writeNonBlockingV21 = writeNonBlockingV21(this.audioTrack, byteBuffer, remaining2);
            }
            this.lastFeedElapsedRealtimeMs = SystemClock.elapsedRealtime();
            if (writeNonBlockingV21 < 0) {
                AudioSink.WriteException writeException = new AudioSink.WriteException(writeNonBlockingV21, this.configuration.inputFormat, isAudioTrackDeadObject(writeNonBlockingV21) && this.writtenEncodedFrames > 0);
                AudioSink.Listener listener2 = this.listener;
                if (listener2 != null) {
                    listener2.onAudioSinkError(writeException);
                }
                if (writeException.isRecoverable) {
                    throw writeException;
                }
                this.writeExceptionPendingExceptionHolder.throwExceptionIfDeadlineIsReached(writeException);
                return;
            }
            this.writeExceptionPendingExceptionHolder.clear();
            if (isOffloadedPlayback(this.audioTrack)) {
                if (this.writtenEncodedFrames > 0) {
                    this.isWaitingForOffloadEndOfStreamHandled = false;
                }
                if (this.playing && (listener = this.listener) != null && writeNonBlockingV21 < remaining2 && !this.isWaitingForOffloadEndOfStreamHandled) {
                    listener.onOffloadBufferFull();
                }
            }
            if (this.configuration.outputMode == 0) {
                this.writtenPcmBytes += writeNonBlockingV21;
            }
            if (writeNonBlockingV21 == remaining2) {
                if (this.configuration.outputMode != 0) {
                    Assertions.checkState(byteBuffer == this.inputBuffer);
                    this.writtenEncodedFrames += this.framesPerEncodedSample * this.inputBufferAccessUnitCount;
                }
                this.outputBuffer = null;
            }
        }
    }

    @Override // com.google.android.exoplayer2.audio.AudioSink
    public void playToEndOfStream() throws AudioSink.WriteException {
        if (!this.handledEndOfStream && isAudioTrackInitialized() && drainToEndOfStream()) {
            playPendingData();
            this.handledEndOfStream = true;
        }
    }

    private void maybeDisableOffload() {
        if (this.configuration.outputModeIsOffload()) {
            this.offloadDisabledUntilNextConfiguration = true;
        }
    }

    private static boolean isAudioTrackDeadObject(int i) {
        return (Util.SDK_INT >= 24 && i == -6) || i == ERROR_NATIVE_DEAD_OBJECT;
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x002f  */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0018  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:14:0x0029 -> B:4:0x0009). Please report as a decompilation issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private boolean drainToEndOfStream() throws com.google.android.exoplayer2.audio.AudioSink.WriteException {
        /*
            r9 = this;
            int r0 = r9.drainingAudioProcessorIndex
            r1 = 1
            r2 = 0
            r3 = -1
            if (r0 != r3) goto Lb
            r9.drainingAudioProcessorIndex = r2
        L9:
            r0 = r1
            goto Lc
        Lb:
            r0 = r2
        Lc:
            int r4 = r9.drainingAudioProcessorIndex
            com.google.android.exoplayer2.audio.AudioProcessor[] r5 = r9.activeAudioProcessors
            int r6 = r5.length
            r7 = -9223372036854775807(0x8000000000000001, double:-4.9E-324)
            if (r4 >= r6) goto L2f
            r4 = r5[r4]
            if (r0 == 0) goto L1f
            r4.queueEndOfStream()
        L1f:
            r9.processBuffers(r7)
            boolean r0 = r4.isEnded()
            if (r0 != 0) goto L29
            return r2
        L29:
            int r0 = r9.drainingAudioProcessorIndex
            int r0 = r0 + r1
            r9.drainingAudioProcessorIndex = r0
            goto L9
        L2f:
            java.nio.ByteBuffer r0 = r9.outputBuffer
            if (r0 == 0) goto L3b
            r9.writeBuffer(r0, r7)
            java.nio.ByteBuffer r0 = r9.outputBuffer
            if (r0 == 0) goto L3b
            return r2
        L3b:
            r9.drainingAudioProcessorIndex = r3
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.audio.DefaultAudioSink.drainToEndOfStream():boolean");
    }

    @Override // com.google.android.exoplayer2.audio.AudioSink
    public boolean isEnded() {
        return !isAudioTrackInitialized() || (this.handledEndOfStream && !hasPendingData());
    }

    @Override // com.google.android.exoplayer2.audio.AudioSink
    public boolean hasPendingData() {
        return isAudioTrackInitialized() && this.audioTrackPositionTracker.hasPendingData(getWrittenFrames());
    }

    @Override // com.google.android.exoplayer2.audio.AudioSink
    public void setPlaybackParameters(PlaybackParameters playbackParameters) {
        PlaybackParameters playbackParameters2 = new PlaybackParameters(Util.constrainValue(playbackParameters.speed, 0.1f, 8.0f), Util.constrainValue(playbackParameters.pitch, 0.1f, 8.0f));
        if (this.enableAudioTrackPlaybackParams && Util.SDK_INT >= 23) {
            setAudioTrackPlaybackParametersV23(playbackParameters2);
        } else {
            setAudioProcessorPlaybackParametersAndSkipSilence(playbackParameters2, getSkipSilenceEnabled());
        }
    }

    @Override // com.google.android.exoplayer2.audio.AudioSink
    public PlaybackParameters getPlaybackParameters() {
        return this.enableAudioTrackPlaybackParams ? this.audioTrackPlaybackParameters : getAudioProcessorPlaybackParameters();
    }

    @Override // com.google.android.exoplayer2.audio.AudioSink
    public void setSkipSilenceEnabled(boolean z) {
        setAudioProcessorPlaybackParametersAndSkipSilence(getAudioProcessorPlaybackParameters(), z);
    }

    @Override // com.google.android.exoplayer2.audio.AudioSink
    public boolean getSkipSilenceEnabled() {
        return getMediaPositionParameters().skipSilence;
    }

    @Override // com.google.android.exoplayer2.audio.AudioSink
    public void setAudioAttributes(AudioAttributes audioAttributes) {
        if (this.audioAttributes.equals(audioAttributes)) {
            return;
        }
        this.audioAttributes = audioAttributes;
        if (this.tunneling) {
            return;
        }
        flush();
    }

    @Override // com.google.android.exoplayer2.audio.AudioSink
    public void setAudioSessionId(int i) {
        if (this.audioSessionId != i) {
            this.audioSessionId = i;
            this.externalAudioSessionIdProvided = i != 0;
            flush();
        }
    }

    @Override // com.google.android.exoplayer2.audio.AudioSink
    public void setAuxEffectInfo(AuxEffectInfo auxEffectInfo) {
        if (this.auxEffectInfo.equals(auxEffectInfo)) {
            return;
        }
        int i = auxEffectInfo.effectId;
        float f = auxEffectInfo.sendLevel;
        if (this.audioTrack != null) {
            if (this.auxEffectInfo.effectId != i) {
                this.audioTrack.attachAuxEffect(i);
            }
            if (i != 0) {
                this.audioTrack.setAuxEffectSendLevel(f);
            }
        }
        this.auxEffectInfo = auxEffectInfo;
    }

    @Override // com.google.android.exoplayer2.audio.AudioSink
    public void setPreferredDevice(AudioDeviceInfo audioDeviceInfo) {
        AudioDeviceInfoApi23 audioDeviceInfoApi23 = audioDeviceInfo == null ? null : new AudioDeviceInfoApi23(audioDeviceInfo);
        this.preferredDevice = audioDeviceInfoApi23;
        AudioTrack audioTrack = this.audioTrack;
        if (audioTrack != null) {
            Api23.setPreferredDeviceOnAudioTrack(audioTrack, audioDeviceInfoApi23);
        }
    }

    @Override // com.google.android.exoplayer2.audio.AudioSink
    public void enableTunnelingV21() {
        Assertions.checkState(Util.SDK_INT >= 21);
        Assertions.checkState(this.externalAudioSessionIdProvided);
        if (this.tunneling) {
            return;
        }
        this.tunneling = true;
        flush();
    }

    @Override // com.google.android.exoplayer2.audio.AudioSink
    public void disableTunneling() {
        if (this.tunneling) {
            this.tunneling = false;
            flush();
        }
    }

    @Override // com.google.android.exoplayer2.audio.AudioSink
    public void setVolume(float f) {
        if (this.volume != f) {
            this.volume = f;
            setVolumeInternal();
        }
    }

    private void setVolumeInternal() {
        if (isAudioTrackInitialized()) {
            if (Util.SDK_INT >= 21) {
                setVolumeInternalV21(this.audioTrack, this.volume);
            } else {
                setVolumeInternalV3(this.audioTrack, this.volume);
            }
        }
    }

    @Override // com.google.android.exoplayer2.audio.AudioSink
    public void pause() {
        this.playing = false;
        if (isAudioTrackInitialized() && this.audioTrackPositionTracker.pause()) {
            this.audioTrack.pause();
        }
    }

    @Override // com.google.android.exoplayer2.audio.AudioSink
    public void flush() {
        if (isAudioTrackInitialized()) {
            resetSinkStateForFlush();
            if (this.audioTrackPositionTracker.isPlaying()) {
                this.audioTrack.pause();
            }
            if (isOffloadedPlayback(this.audioTrack)) {
                ((StreamEventCallbackV29) Assertions.checkNotNull(this.offloadStreamEventCallbackV29)).unregister(this.audioTrack);
            }
            if (Util.SDK_INT < 21 && !this.externalAudioSessionIdProvided) {
                this.audioSessionId = 0;
            }
            Configuration configuration = this.pendingConfiguration;
            if (configuration != null) {
                this.configuration = configuration;
                this.pendingConfiguration = null;
            }
            this.audioTrackPositionTracker.reset();
            releaseAudioTrackAsync(this.audioTrack, this.releasingConditionVariable);
            this.audioTrack = null;
        }
        this.writeExceptionPendingExceptionHolder.clear();
        this.initializationExceptionPendingExceptionHolder.clear();
    }

    @Override // com.google.android.exoplayer2.audio.AudioSink
    public void experimentalFlushWithoutAudioTrackRelease() {
        if (Util.SDK_INT < 25) {
            flush();
            return;
        }
        this.writeExceptionPendingExceptionHolder.clear();
        this.initializationExceptionPendingExceptionHolder.clear();
        if (isAudioTrackInitialized()) {
            resetSinkStateForFlush();
            if (this.audioTrackPositionTracker.isPlaying()) {
                this.audioTrack.pause();
            }
            this.audioTrack.flush();
            this.audioTrackPositionTracker.reset();
            this.audioTrackPositionTracker.setAudioTrack(this.audioTrack, this.configuration.outputMode == 2, this.configuration.outputEncoding, this.configuration.outputPcmFrameSize, this.configuration.bufferSize);
            this.startMediaTimeUsNeedsInit = true;
        }
    }

    @Override // com.google.android.exoplayer2.audio.AudioSink
    public void reset() {
        flush();
        for (AudioProcessor audioProcessor : this.toIntPcmAvailableAudioProcessors) {
            audioProcessor.reset();
        }
        for (AudioProcessor audioProcessor2 : this.toFloatPcmAvailableAudioProcessors) {
            audioProcessor2.reset();
        }
        this.playing = false;
        this.offloadDisabledUntilNextConfiguration = false;
    }

    private void resetSinkStateForFlush() {
        this.submittedPcmBytes = 0L;
        this.submittedEncodedFrames = 0L;
        this.writtenPcmBytes = 0L;
        this.writtenEncodedFrames = 0L;
        this.isWaitingForOffloadEndOfStreamHandled = false;
        this.framesPerEncodedSample = 0;
        this.mediaPositionParameters = new MediaPositionParameters(getAudioProcessorPlaybackParameters(), getSkipSilenceEnabled(), 0L, 0L);
        this.startMediaTimeUs = 0L;
        this.afterDrainParameters = null;
        this.mediaPositionParametersCheckpoints.clear();
        this.inputBuffer = null;
        this.inputBufferAccessUnitCount = 0;
        this.outputBuffer = null;
        this.stoppedAudioTrack = false;
        this.handledEndOfStream = false;
        this.drainingAudioProcessorIndex = -1;
        this.avSyncHeader = null;
        this.bytesUntilNextAvSync = 0;
        this.trimmingAudioProcessor.resetTrimmedFrameCount();
        flushAudioProcessors();
    }

    private void setAudioTrackPlaybackParametersV23(PlaybackParameters playbackParameters) {
        if (isAudioTrackInitialized()) {
            try {
                this.audioTrack.setPlaybackParams(new PlaybackParams().allowDefaults().setSpeed(playbackParameters.speed).setPitch(playbackParameters.pitch).setAudioFallbackMode(2));
            } catch (IllegalArgumentException e) {
                Log.w(TAG, "Failed to set playback params", e);
            }
            playbackParameters = new PlaybackParameters(this.audioTrack.getPlaybackParams().getSpeed(), this.audioTrack.getPlaybackParams().getPitch());
            this.audioTrackPositionTracker.setAudioTrackPlaybackSpeed(playbackParameters.speed);
        }
        this.audioTrackPlaybackParameters = playbackParameters;
    }

    private void setAudioProcessorPlaybackParametersAndSkipSilence(PlaybackParameters playbackParameters, boolean z) {
        MediaPositionParameters mediaPositionParameters = getMediaPositionParameters();
        if (playbackParameters.equals(mediaPositionParameters.playbackParameters) && z == mediaPositionParameters.skipSilence) {
            return;
        }
        MediaPositionParameters mediaPositionParameters2 = new MediaPositionParameters(playbackParameters, z, -9223372036854775807L, -9223372036854775807L);
        if (isAudioTrackInitialized()) {
            this.afterDrainParameters = mediaPositionParameters2;
        } else {
            this.mediaPositionParameters = mediaPositionParameters2;
        }
    }

    private PlaybackParameters getAudioProcessorPlaybackParameters() {
        return getMediaPositionParameters().playbackParameters;
    }

    private MediaPositionParameters getMediaPositionParameters() {
        MediaPositionParameters mediaPositionParameters = this.afterDrainParameters;
        return mediaPositionParameters != null ? mediaPositionParameters : !this.mediaPositionParametersCheckpoints.isEmpty() ? this.mediaPositionParametersCheckpoints.getLast() : this.mediaPositionParameters;
    }

    private void applyAudioProcessorPlaybackParametersAndSkipSilence(long j) {
        PlaybackParameters playbackParameters;
        if (shouldApplyAudioProcessorPlaybackParameters()) {
            playbackParameters = this.audioProcessorChain.applyPlaybackParameters(getAudioProcessorPlaybackParameters());
        } else {
            playbackParameters = PlaybackParameters.DEFAULT;
        }
        PlaybackParameters playbackParameters2 = playbackParameters;
        boolean applySkipSilenceEnabled = shouldApplyAudioProcessorPlaybackParameters() ? this.audioProcessorChain.applySkipSilenceEnabled(getSkipSilenceEnabled()) : false;
        this.mediaPositionParametersCheckpoints.add(new MediaPositionParameters(playbackParameters2, applySkipSilenceEnabled, Math.max(0L, j), this.configuration.framesToDurationUs(getWrittenFrames())));
        setupAudioProcessors();
        AudioSink.Listener listener = this.listener;
        if (listener != null) {
            listener.onSkipSilenceEnabledChanged(applySkipSilenceEnabled);
        }
    }

    private boolean shouldApplyAudioProcessorPlaybackParameters() {
        return (this.tunneling || !"audio/raw".equals(this.configuration.inputFormat.sampleMimeType) || shouldUseFloatOutput(this.configuration.inputFormat.pcmEncoding)) ? false : true;
    }

    private boolean shouldUseFloatOutput(int i) {
        return this.enableFloatOutput && Util.isEncodingHighResolutionPcm(i);
    }

    private long applyMediaPositionParameters(long j) {
        while (!this.mediaPositionParametersCheckpoints.isEmpty() && j >= this.mediaPositionParametersCheckpoints.getFirst().audioTrackPositionUs) {
            this.mediaPositionParameters = this.mediaPositionParametersCheckpoints.remove();
        }
        long j2 = j - this.mediaPositionParameters.audioTrackPositionUs;
        if (this.mediaPositionParameters.playbackParameters.equals(PlaybackParameters.DEFAULT)) {
            return this.mediaPositionParameters.mediaTimeUs + j2;
        }
        if (this.mediaPositionParametersCheckpoints.isEmpty()) {
            return this.mediaPositionParameters.mediaTimeUs + this.audioProcessorChain.getMediaDuration(j2);
        }
        MediaPositionParameters first = this.mediaPositionParametersCheckpoints.getFirst();
        return first.mediaTimeUs - Util.getMediaDurationForPlayoutDuration(first.audioTrackPositionUs - j, this.mediaPositionParameters.playbackParameters.speed);
    }

    private long applySkipping(long j) {
        return j + this.configuration.framesToDurationUs(this.audioProcessorChain.getSkippedOutputFrameCount());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public long getSubmittedFrames() {
        return this.configuration.outputMode == 0 ? this.submittedPcmBytes / this.configuration.inputPcmFrameSize : this.submittedEncodedFrames;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public long getWrittenFrames() {
        return this.configuration.outputMode == 0 ? this.writtenPcmBytes / this.configuration.outputPcmFrameSize : this.writtenEncodedFrames;
    }

    private boolean useOffloadedPlayback(Format format, AudioAttributes audioAttributes) {
        int encoding;
        int audioTrackChannelConfig;
        int offloadedPlaybackSupport;
        if (Util.SDK_INT < 29 || this.offloadMode == 0 || (encoding = MimeTypes.getEncoding((String) Assertions.checkNotNull(format.sampleMimeType), format.codecs)) == 0 || (audioTrackChannelConfig = Util.getAudioTrackChannelConfig(format.channelCount)) == 0 || (offloadedPlaybackSupport = getOffloadedPlaybackSupport(getAudioFormat(format.sampleRate, audioTrackChannelConfig, encoding), audioAttributes.getAudioAttributesV21().audioAttributes)) == 0) {
            return false;
        }
        if (offloadedPlaybackSupport == 1) {
            return ((format.encoderDelay != 0 || format.encoderPadding != 0) && (this.offloadMode == 1)) ? false : true;
        }
        if (offloadedPlaybackSupport == 2) {
            return true;
        }
        throw new IllegalStateException();
    }

    private int getOffloadedPlaybackSupport(AudioFormat audioFormat, android.media.AudioAttributes audioAttributes) {
        if (Util.SDK_INT >= 31) {
            return AudioManager.getPlaybackOffloadSupport(audioFormat, audioAttributes);
        }
        if (AudioManager.isOffloadedPlaybackSupported(audioFormat, audioAttributes)) {
            return (Util.SDK_INT == 30 && Util.MODEL.startsWith("Pixel")) ? 2 : 1;
        }
        return 0;
    }

    private static boolean isOffloadedPlayback(AudioTrack audioTrack) {
        return Util.SDK_INT >= 29 && audioTrack.isOffloadedPlayback();
    }

    private static int getFramesPerEncodedSample(int i, ByteBuffer byteBuffer) {
        switch (i) {
            case 5:
            case 6:
            case 18:
                return Ac3Util.parseAc3SyncframeAudioSampleCount(byteBuffer);
            case 7:
            case 8:
                return DtsUtil.parseDtsAudioSampleCount(byteBuffer);
            case 9:
                int parseMpegAudioFrameSampleCount = MpegAudioUtil.parseMpegAudioFrameSampleCount(Util.getBigEndianInt(byteBuffer, byteBuffer.position()));
                if (parseMpegAudioFrameSampleCount != -1) {
                    return parseMpegAudioFrameSampleCount;
                }
                throw new IllegalArgumentException();
            case 10:
                return 1024;
            case 11:
            case 12:
                return 2048;
            case 13:
            case 19:
            default:
                throw new IllegalStateException("Unexpected audio encoding: " + i);
            case 14:
                int findTrueHdSyncframeOffset = Ac3Util.findTrueHdSyncframeOffset(byteBuffer);
                if (findTrueHdSyncframeOffset == -1) {
                    return 0;
                }
                return Ac3Util.parseTrueHdSyncframeAudioSampleCount(byteBuffer, findTrueHdSyncframeOffset) * 16;
            case 15:
                return 512;
            case 16:
                return 1024;
            case 17:
                return Ac4Util.parseAc4SyncframeAudioSampleCount(byteBuffer);
            case 20:
                return OpusUtil.parsePacketAudioSampleCount(byteBuffer);
        }
    }

    private static int writeNonBlockingV21(AudioTrack audioTrack, ByteBuffer byteBuffer, int i) {
        return audioTrack.write(byteBuffer, i, 1);
    }

    private int writeNonBlockingWithAvSyncV21(AudioTrack audioTrack, ByteBuffer byteBuffer, int i, long j) {
        if (Util.SDK_INT >= 26) {
            return audioTrack.write(byteBuffer, i, 1, j * 1000);
        }
        if (this.avSyncHeader == null) {
            ByteBuffer allocate = ByteBuffer.allocate(16);
            this.avSyncHeader = allocate;
            allocate.order(ByteOrder.BIG_ENDIAN);
            this.avSyncHeader.putInt(1431633921);
        }
        if (this.bytesUntilNextAvSync == 0) {
            this.avSyncHeader.putInt(4, i);
            this.avSyncHeader.putLong(8, j * 1000);
            this.avSyncHeader.position(0);
            this.bytesUntilNextAvSync = i;
        }
        int remaining = this.avSyncHeader.remaining();
        if (remaining > 0) {
            int write = audioTrack.write(this.avSyncHeader, remaining, 1);
            if (write < 0) {
                this.bytesUntilNextAvSync = 0;
                return write;
            }
            if (write < remaining) {
                return 0;
            }
        }
        int writeNonBlockingV21 = writeNonBlockingV21(audioTrack, byteBuffer, i);
        if (writeNonBlockingV21 < 0) {
            this.bytesUntilNextAvSync = 0;
            return writeNonBlockingV21;
        }
        this.bytesUntilNextAvSync -= writeNonBlockingV21;
        return writeNonBlockingV21;
    }

    private static void setVolumeInternalV21(AudioTrack audioTrack, float f) {
        audioTrack.setVolume(f);
    }

    private static void setVolumeInternalV3(AudioTrack audioTrack, float f) {
        audioTrack.setStereoVolume(f, f);
    }

    private void playPendingData() {
        if (this.stoppedAudioTrack) {
            return;
        }
        this.stoppedAudioTrack = true;
        this.audioTrackPositionTracker.handleEndOfStream(getWrittenFrames());
        this.audioTrack.stop();
        this.bytesUntilNextAvSync = 0;
    }

    private static void releaseAudioTrackAsync(final AudioTrack audioTrack, final ConditionVariable conditionVariable) {
        conditionVariable.close();
        synchronized (releaseExecutorLock) {
            if (releaseExecutor == null) {
                releaseExecutor = Util.newSingleThreadExecutor("ExoPlayer:AudioTrackReleaseThread");
            }
            pendingReleaseCount++;
            releaseExecutor.execute(new Runnable() { // from class: com.google.android.exoplayer2.audio.DefaultAudioSink$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    DefaultAudioSink.lambda$releaseAudioTrackAsync$0(audioTrack, conditionVariable);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void lambda$releaseAudioTrackAsync$0(AudioTrack audioTrack, ConditionVariable conditionVariable) {
        try {
            audioTrack.flush();
            audioTrack.release();
            conditionVariable.open();
            synchronized (releaseExecutorLock) {
                int i = pendingReleaseCount - 1;
                pendingReleaseCount = i;
                if (i == 0) {
                    releaseExecutor.shutdown();
                    releaseExecutor = null;
                }
            }
        } catch (Throwable th) {
            conditionVariable.open();
            synchronized (releaseExecutorLock) {
                int i2 = pendingReleaseCount - 1;
                pendingReleaseCount = i2;
                if (i2 == 0) {
                    releaseExecutor.shutdown();
                    releaseExecutor = null;
                }
                throw th;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public final class StreamEventCallbackV29 {
        private final AudioTrack.StreamEventCallback callback;
        private final Handler handler = new Handler(Looper.myLooper());

        public StreamEventCallbackV29() {
            this.callback = new AudioTrack.StreamEventCallback() { // from class: com.google.android.exoplayer2.audio.DefaultAudioSink.StreamEventCallbackV29.1
                @Override // android.media.AudioTrack.StreamEventCallback
                public void onDataRequest(AudioTrack audioTrack, int i) {
                    if (audioTrack.equals(DefaultAudioSink.this.audioTrack) && DefaultAudioSink.this.listener != null && DefaultAudioSink.this.playing) {
                        DefaultAudioSink.this.listener.onOffloadBufferEmptying();
                    }
                }

                @Override // android.media.AudioTrack.StreamEventCallback
                public void onTearDown(AudioTrack audioTrack) {
                    if (audioTrack.equals(DefaultAudioSink.this.audioTrack) && DefaultAudioSink.this.listener != null && DefaultAudioSink.this.playing) {
                        DefaultAudioSink.this.listener.onOffloadBufferEmptying();
                    }
                }
            };
        }

        public void register(AudioTrack audioTrack) {
            final Handler handler = this.handler;
            Objects.requireNonNull(handler);
            audioTrack.registerStreamEventCallback(new Executor() { // from class: com.google.android.exoplayer2.audio.DefaultAudioSink$StreamEventCallbackV29$$ExternalSyntheticLambda0
                @Override // java.util.concurrent.Executor
                public final void execute(Runnable runnable) {
                    handler.post(runnable);
                }
            }, this.callback);
        }

        public void unregister(AudioTrack audioTrack) {
            audioTrack.unregisterStreamEventCallback(this.callback);
            this.handler.removeCallbacksAndMessages(null);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public static final class MediaPositionParameters {
        public final long audioTrackPositionUs;
        public final long mediaTimeUs;
        public final PlaybackParameters playbackParameters;
        public final boolean skipSilence;

        private MediaPositionParameters(PlaybackParameters playbackParameters, boolean z, long j, long j2) {
            this.playbackParameters = playbackParameters;
            this.skipSilence = z;
            this.mediaTimeUs = j;
            this.audioTrackPositionUs = j2;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static AudioFormat getAudioFormat(int i, int i2, int i3) {
        return new AudioFormat.Builder().setSampleRate(i).setChannelMask(i2).setEncoding(i3).build();
    }

    private static int getAudioTrackMinBufferSize(int i, int i2, int i3) {
        int minBufferSize = AudioTrack.getMinBufferSize(i, i2, i3);
        Assertions.checkState(minBufferSize != -2);
        return minBufferSize;
    }

    /* loaded from: classes2.dex */
    private final class PositionTrackerListener implements AudioTrackPositionTracker.Listener {
        private PositionTrackerListener() {
        }

        @Override // com.google.android.exoplayer2.audio.AudioTrackPositionTracker.Listener
        public void onPositionFramesMismatch(long j, long j2, long j3, long j4) {
            String str = "Spurious audio timestamp (frame position mismatch): " + j + ", " + j2 + ", " + j3 + ", " + j4 + ", " + DefaultAudioSink.this.getSubmittedFrames() + ", " + DefaultAudioSink.this.getWrittenFrames();
            if (DefaultAudioSink.failOnSpuriousAudioTimestamp) {
                throw new InvalidAudioTrackTimestampException(str);
            }
            Log.w(DefaultAudioSink.TAG, str);
        }

        @Override // com.google.android.exoplayer2.audio.AudioTrackPositionTracker.Listener
        public void onSystemTimeUsMismatch(long j, long j2, long j3, long j4) {
            String str = "Spurious audio timestamp (system clock mismatch): " + j + ", " + j2 + ", " + j3 + ", " + j4 + ", " + DefaultAudioSink.this.getSubmittedFrames() + ", " + DefaultAudioSink.this.getWrittenFrames();
            if (DefaultAudioSink.failOnSpuriousAudioTimestamp) {
                throw new InvalidAudioTrackTimestampException(str);
            }
            Log.w(DefaultAudioSink.TAG, str);
        }

        @Override // com.google.android.exoplayer2.audio.AudioTrackPositionTracker.Listener
        public void onInvalidLatency(long j) {
            Log.w(DefaultAudioSink.TAG, "Ignoring impossibly large audio latency: " + j);
        }

        @Override // com.google.android.exoplayer2.audio.AudioTrackPositionTracker.Listener
        public void onPositionAdvancing(long j) {
            if (DefaultAudioSink.this.listener != null) {
                DefaultAudioSink.this.listener.onPositionAdvancing(j);
            }
        }

        @Override // com.google.android.exoplayer2.audio.AudioTrackPositionTracker.Listener
        public void onUnderrun(int i, long j) {
            if (DefaultAudioSink.this.listener != null) {
                DefaultAudioSink.this.listener.onUnderrun(i, j, SystemClock.elapsedRealtime() - DefaultAudioSink.this.lastFeedElapsedRealtimeMs);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public static final class Configuration {
        public final AudioProcessor[] availableAudioProcessors;
        public final int bufferSize;
        public final Format inputFormat;
        public final int inputPcmFrameSize;
        public final int outputChannelConfig;
        public final int outputEncoding;
        public final int outputMode;
        public final int outputPcmFrameSize;
        public final int outputSampleRate;

        public boolean outputModeIsOffload() {
            return this.outputMode == 1;
        }

        public Configuration(Format format, int i, int i2, int i3, int i4, int i5, int i6, int i7, AudioProcessor[] audioProcessorArr) {
            this.inputFormat = format;
            this.inputPcmFrameSize = i;
            this.outputMode = i2;
            this.outputPcmFrameSize = i3;
            this.outputSampleRate = i4;
            this.outputChannelConfig = i5;
            this.outputEncoding = i6;
            this.bufferSize = i7;
            this.availableAudioProcessors = audioProcessorArr;
        }

        public Configuration copyWithBufferSize(int i) {
            return new Configuration(this.inputFormat, this.inputPcmFrameSize, this.outputMode, this.outputPcmFrameSize, this.outputSampleRate, this.outputChannelConfig, this.outputEncoding, i, this.availableAudioProcessors);
        }

        public boolean canReuseAudioTrack(Configuration configuration) {
            return configuration.outputMode == this.outputMode && configuration.outputEncoding == this.outputEncoding && configuration.outputSampleRate == this.outputSampleRate && configuration.outputChannelConfig == this.outputChannelConfig && configuration.outputPcmFrameSize == this.outputPcmFrameSize;
        }

        public long inputFramesToDurationUs(long j) {
            return (j * 1000000) / this.inputFormat.sampleRate;
        }

        public long framesToDurationUs(long j) {
            return (j * 1000000) / this.outputSampleRate;
        }

        public AudioTrack buildAudioTrack(boolean z, AudioAttributes audioAttributes, int i) throws AudioSink.InitializationException {
            try {
                AudioTrack createAudioTrack = createAudioTrack(z, audioAttributes, i);
                int state = createAudioTrack.getState();
                if (state == 1) {
                    return createAudioTrack;
                }
                try {
                    createAudioTrack.release();
                } catch (Exception unused) {
                }
                throw new AudioSink.InitializationException(state, this.outputSampleRate, this.outputChannelConfig, this.bufferSize, this.inputFormat, outputModeIsOffload(), null);
            } catch (IllegalArgumentException | UnsupportedOperationException e) {
                throw new AudioSink.InitializationException(0, this.outputSampleRate, this.outputChannelConfig, this.bufferSize, this.inputFormat, outputModeIsOffload(), e);
            }
        }

        private AudioTrack createAudioTrack(boolean z, AudioAttributes audioAttributes, int i) {
            if (Util.SDK_INT >= 29) {
                return createAudioTrackV29(z, audioAttributes, i);
            }
            if (Util.SDK_INT >= 21) {
                return createAudioTrackV21(z, audioAttributes, i);
            }
            return createAudioTrackV9(audioAttributes, i);
        }

        private AudioTrack createAudioTrackV29(boolean z, AudioAttributes audioAttributes, int i) {
            return new AudioTrack.Builder().setAudioAttributes(getAudioTrackAttributesV21(audioAttributes, z)).setAudioFormat(DefaultAudioSink.getAudioFormat(this.outputSampleRate, this.outputChannelConfig, this.outputEncoding)).setTransferMode(1).setBufferSizeInBytes(this.bufferSize).setSessionId(i).setOffloadedPlayback(this.outputMode == 1).build();
        }

        private AudioTrack createAudioTrackV21(boolean z, AudioAttributes audioAttributes, int i) {
            return new AudioTrack(getAudioTrackAttributesV21(audioAttributes, z), DefaultAudioSink.getAudioFormat(this.outputSampleRate, this.outputChannelConfig, this.outputEncoding), this.bufferSize, 1, i);
        }

        private AudioTrack createAudioTrackV9(AudioAttributes audioAttributes, int i) {
            int streamTypeForAudioUsage = Util.getStreamTypeForAudioUsage(audioAttributes.usage);
            if (i == 0) {
                return new AudioTrack(streamTypeForAudioUsage, this.outputSampleRate, this.outputChannelConfig, this.outputEncoding, this.bufferSize, 1);
            }
            return new AudioTrack(streamTypeForAudioUsage, this.outputSampleRate, this.outputChannelConfig, this.outputEncoding, this.bufferSize, 1, i);
        }

        private static android.media.AudioAttributes getAudioTrackAttributesV21(AudioAttributes audioAttributes, boolean z) {
            if (z) {
                return getAudioTrackTunnelingAttributesV21();
            }
            return audioAttributes.getAudioAttributesV21().audioAttributes;
        }

        private static android.media.AudioAttributes getAudioTrackTunnelingAttributesV21() {
            return new AudioAttributes.Builder().setContentType(3).setFlags(16).setUsage(1).build();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public static final class PendingExceptionHolder<T extends Exception> {
        private T pendingException;
        private long throwDeadlineMs;
        private final long throwDelayMs;

        public void clear() {
            this.pendingException = null;
        }

        public PendingExceptionHolder(long j) {
            this.throwDelayMs = j;
        }

        public void throwExceptionIfDeadlineIsReached(T t) throws Exception {
            long elapsedRealtime = SystemClock.elapsedRealtime();
            if (this.pendingException == null) {
                this.pendingException = t;
                this.throwDeadlineMs = this.throwDelayMs + elapsedRealtime;
            }
            if (elapsedRealtime >= this.throwDeadlineMs) {
                T t2 = this.pendingException;
                if (t2 != t) {
                    t2.addSuppressed(t);
                }
                T t3 = this.pendingException;
                clear();
                throw t3;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public static final class AudioDeviceInfoApi23 {
        public final AudioDeviceInfo audioDeviceInfo;

        public AudioDeviceInfoApi23(AudioDeviceInfo audioDeviceInfo) {
            this.audioDeviceInfo = audioDeviceInfo;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public static final class Api23 {
        private Api23() {
        }

        public static void setPreferredDeviceOnAudioTrack(AudioTrack audioTrack, AudioDeviceInfoApi23 audioDeviceInfoApi23) {
            audioTrack.setPreferredDevice(audioDeviceInfoApi23 == null ? null : audioDeviceInfoApi23.audioDeviceInfo);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public static final class Api31 {
        private Api31() {
        }

        public static void setLogSessionIdOnAudioTrack(AudioTrack audioTrack, PlayerId playerId) {
            LogSessionId logSessionId = playerId.getLogSessionId();
            if (logSessionId.equals(LogSessionId.LOG_SESSION_ID_NONE)) {
                return;
            }
            audioTrack.setLogSessionId(logSessionId);
        }
    }
}
