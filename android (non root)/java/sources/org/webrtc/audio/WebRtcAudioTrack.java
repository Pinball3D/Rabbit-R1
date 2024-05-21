package org.webrtc.audio;

import android.content.Context;
import android.media.AudioAttributes;
import android.media.AudioFormat;
import android.media.AudioManager;
import android.media.AudioTrack;
import android.os.Process;
import java.nio.ByteBuffer;
import org.webrtc.Logging;
import org.webrtc.ThreadUtils;
import org.webrtc.audio.JavaAudioDeviceModule;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3.dex */
public class WebRtcAudioTrack {
    private static final int AUDIO_TRACK_START = 0;
    private static final int AUDIO_TRACK_STOP = 1;
    private static final long AUDIO_TRACK_THREAD_JOIN_TIMEOUT_MS = 2000;
    private static final int BITS_PER_SAMPLE = 16;
    private static final int BUFFERS_PER_SECOND = 100;
    private static final int CALLBACK_BUFFER_SIZE_MS = 10;
    private static final int DEFAULT_USAGE = getDefaultUsageAttribute();
    private static final String TAG = "WebRtcAudioTrackExternal";
    private final AudioAttributes audioAttributes;
    private final AudioManager audioManager;
    private AudioTrackThread audioThread;
    private AudioTrack audioTrack;
    private ByteBuffer byteBuffer;
    private final Context context;
    private byte[] emptyBytes;
    private final JavaAudioDeviceModule.AudioTrackErrorCallback errorCallback;
    private int initialBufferSizeInFrames;
    private long nativeAudioTrack;
    private volatile boolean speakerMute;
    private final JavaAudioDeviceModule.AudioTrackStateCallback stateCallback;
    private final ThreadUtils.ThreadChecker threadChecker;
    private boolean useLowLatency;
    private final VolumeLogger volumeLogger;

    private int channelCountToConfiguration(int i) {
        return i == 1 ? 4 : 12;
    }

    private static int getDefaultUsageAttribute() {
        return 2;
    }

    private int getInitialBufferSizeInFrames() {
        return this.initialBufferSizeInFrames;
    }

    private static native void nativeCacheDirectBufferAddress(long j, ByteBuffer byteBuffer);

    /* JADX INFO: Access modifiers changed from: private */
    public static native void nativeGetPlayoutData(long j, int i);

    public void setNativeAudioTrack(long j) {
        this.nativeAudioTrack = j;
    }

    /* loaded from: classes3.dex */
    private class AudioTrackThread extends Thread {
        private LowLatencyAudioBufferManager bufferManager;
        private volatile boolean keepAlive;

        public AudioTrackThread(String str) {
            super(str);
            this.keepAlive = true;
            this.bufferManager = new LowLatencyAudioBufferManager();
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            Process.setThreadPriority(-19);
            Logging.d(WebRtcAudioTrack.TAG, "AudioTrackThread" + WebRtcAudioUtils.getThreadInfo());
            WebRtcAudioTrack.assertTrue(WebRtcAudioTrack.this.audioTrack.getPlayState() == 3);
            WebRtcAudioTrack.this.doAudioTrackStateCallback(0);
            int capacity = WebRtcAudioTrack.this.byteBuffer.capacity();
            while (this.keepAlive) {
                WebRtcAudioTrack.nativeGetPlayoutData(WebRtcAudioTrack.this.nativeAudioTrack, capacity);
                WebRtcAudioTrack.assertTrue(capacity <= WebRtcAudioTrack.this.byteBuffer.remaining());
                if (WebRtcAudioTrack.this.speakerMute) {
                    WebRtcAudioTrack.this.byteBuffer.clear();
                    WebRtcAudioTrack.this.byteBuffer.put(WebRtcAudioTrack.this.emptyBytes);
                    WebRtcAudioTrack.this.byteBuffer.position(0);
                }
                int writeBytes = writeBytes(WebRtcAudioTrack.this.audioTrack, WebRtcAudioTrack.this.byteBuffer, capacity);
                if (writeBytes != capacity) {
                    Logging.e(WebRtcAudioTrack.TAG, "AudioTrack.write played invalid number of bytes: " + writeBytes);
                    if (writeBytes < 0) {
                        this.keepAlive = false;
                        WebRtcAudioTrack.this.reportWebRtcAudioTrackError("AudioTrack.write failed: " + writeBytes);
                    }
                }
                if (WebRtcAudioTrack.this.useLowLatency) {
                    this.bufferManager.maybeAdjustBufferSize(WebRtcAudioTrack.this.audioTrack);
                }
                WebRtcAudioTrack.this.byteBuffer.rewind();
            }
        }

        private int writeBytes(AudioTrack audioTrack, ByteBuffer byteBuffer, int i) {
            return audioTrack.write(byteBuffer, i, 0);
        }

        public void stopThread() {
            Logging.d(WebRtcAudioTrack.TAG, "stopThread");
            this.keepAlive = false;
        }
    }

    WebRtcAudioTrack(Context context, AudioManager audioManager) {
        this(context, audioManager, null, null, null, false);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public WebRtcAudioTrack(Context context, AudioManager audioManager, AudioAttributes audioAttributes, JavaAudioDeviceModule.AudioTrackErrorCallback audioTrackErrorCallback, JavaAudioDeviceModule.AudioTrackStateCallback audioTrackStateCallback, boolean z) {
        ThreadUtils.ThreadChecker threadChecker = new ThreadUtils.ThreadChecker();
        this.threadChecker = threadChecker;
        threadChecker.detachThread();
        this.context = context;
        this.audioManager = audioManager;
        this.audioAttributes = audioAttributes;
        this.errorCallback = audioTrackErrorCallback;
        this.stateCallback = audioTrackStateCallback;
        this.volumeLogger = new VolumeLogger(audioManager);
        this.useLowLatency = z;
        Logging.d(TAG, "ctor" + WebRtcAudioUtils.getThreadInfo());
    }

    private int initPlayout(int i, int i2, double d) {
        this.threadChecker.checkIsOnValidThread();
        Logging.d(TAG, "initPlayout(sampleRate=" + i + ", channels=" + i2 + ", bufferSizeFactor=" + d + ")");
        this.byteBuffer = ByteBuffer.allocateDirect(i2 * 2 * (i / 100));
        Logging.d(TAG, "byteBuffer.capacity: " + this.byteBuffer.capacity());
        this.emptyBytes = new byte[this.byteBuffer.capacity()];
        nativeCacheDirectBufferAddress(this.nativeAudioTrack, this.byteBuffer);
        int channelCountToConfiguration = channelCountToConfiguration(i2);
        int minBufferSize = (int) (AudioTrack.getMinBufferSize(i, channelCountToConfiguration, 2) * d);
        Logging.d(TAG, "minBufferSizeInBytes: " + minBufferSize);
        if (minBufferSize < this.byteBuffer.capacity()) {
            reportWebRtcAudioTrackInitError("AudioTrack.getMinBufferSize returns an invalid value.");
            return -1;
        }
        if (d > 1.0d) {
            this.useLowLatency = false;
        }
        if (this.audioTrack != null) {
            reportWebRtcAudioTrackInitError("Conflict with existing AudioTrack.");
            return -1;
        }
        try {
            if (this.useLowLatency) {
                this.audioTrack = createAudioTrackOnOreoOrHigher(i, channelCountToConfiguration, minBufferSize, this.audioAttributes);
            } else {
                this.audioTrack = createAudioTrackOnLollipopOrHigher(i, channelCountToConfiguration, minBufferSize, this.audioAttributes);
            }
            AudioTrack audioTrack = this.audioTrack;
            if (audioTrack == null || audioTrack.getState() != 1) {
                reportWebRtcAudioTrackInitError("Initialization of audio track failed.");
                releaseAudioResources();
                return -1;
            }
            this.initialBufferSizeInFrames = this.audioTrack.getBufferSizeInFrames();
            logMainParameters();
            logMainParametersExtended();
            return minBufferSize;
        } catch (IllegalArgumentException e) {
            reportWebRtcAudioTrackInitError(e.getMessage());
            releaseAudioResources();
            return -1;
        }
    }

    private boolean startPlayout() {
        this.threadChecker.checkIsOnValidThread();
        this.volumeLogger.start();
        Logging.d(TAG, "startPlayout");
        assertTrue(this.audioTrack != null);
        assertTrue(this.audioThread == null);
        try {
            this.audioTrack.play();
            if (this.audioTrack.getPlayState() != 3) {
                reportWebRtcAudioTrackStartError(JavaAudioDeviceModule.AudioTrackStartErrorCode.AUDIO_TRACK_START_STATE_MISMATCH, "AudioTrack.play failed - incorrect state :" + this.audioTrack.getPlayState());
                releaseAudioResources();
                return false;
            }
            AudioTrackThread audioTrackThread = new AudioTrackThread("AudioTrackJavaThread");
            this.audioThread = audioTrackThread;
            audioTrackThread.start();
            return true;
        } catch (IllegalStateException e) {
            reportWebRtcAudioTrackStartError(JavaAudioDeviceModule.AudioTrackStartErrorCode.AUDIO_TRACK_START_EXCEPTION, "AudioTrack.play failed: " + e.getMessage());
            releaseAudioResources();
            return false;
        }
    }

    private boolean stopPlayout() {
        this.threadChecker.checkIsOnValidThread();
        this.volumeLogger.stop();
        Logging.d(TAG, "stopPlayout");
        assertTrue(this.audioThread != null);
        logUnderrunCount();
        this.audioThread.stopThread();
        Logging.d(TAG, "Stopping the AudioTrackThread...");
        this.audioThread.interrupt();
        if (!ThreadUtils.joinUninterruptibly(this.audioThread, 2000L)) {
            Logging.e(TAG, "Join of AudioTrackThread timed out.");
            WebRtcAudioUtils.logAudioState(TAG, this.context, this.audioManager);
        }
        Logging.d(TAG, "AudioTrackThread has now been stopped.");
        this.audioThread = null;
        if (this.audioTrack != null) {
            Logging.d(TAG, "Calling AudioTrack.stop...");
            try {
                this.audioTrack.stop();
                Logging.d(TAG, "AudioTrack.stop is done.");
                doAudioTrackStateCallback(1);
            } catch (IllegalStateException e) {
                Logging.e(TAG, "AudioTrack.stop failed: " + e.getMessage());
            }
        }
        releaseAudioResources();
        return true;
    }

    private int getStreamMaxVolume() {
        this.threadChecker.checkIsOnValidThread();
        Logging.d(TAG, "getStreamMaxVolume");
        return this.audioManager.getStreamMaxVolume(0);
    }

    private boolean setStreamVolume(int i) {
        this.threadChecker.checkIsOnValidThread();
        Logging.d(TAG, "setStreamVolume(" + i + ")");
        if (isVolumeFixed()) {
            Logging.e(TAG, "The device implements a fixed volume policy.");
            return false;
        }
        this.audioManager.setStreamVolume(0, i, 0);
        return true;
    }

    private boolean isVolumeFixed() {
        return this.audioManager.isVolumeFixed();
    }

    private int getStreamVolume() {
        this.threadChecker.checkIsOnValidThread();
        Logging.d(TAG, "getStreamVolume");
        return this.audioManager.getStreamVolume(0);
    }

    private int GetPlayoutUnderrunCount() {
        AudioTrack audioTrack = this.audioTrack;
        if (audioTrack != null) {
            return audioTrack.getUnderrunCount();
        }
        return -1;
    }

    private void logMainParameters() {
        Logging.d(TAG, "AudioTrack: session ID: " + this.audioTrack.getAudioSessionId() + ", channels: " + this.audioTrack.getChannelCount() + ", sample rate: " + this.audioTrack.getSampleRate() + ", max gain: " + AudioTrack.getMaxVolume());
    }

    private static void logNativeOutputSampleRate(int i) {
        int nativeOutputSampleRate = AudioTrack.getNativeOutputSampleRate(0);
        Logging.d(TAG, "nativeOutputSampleRate: " + nativeOutputSampleRate);
        if (i != nativeOutputSampleRate) {
            Logging.w(TAG, "Unable to use fast mode since requested sample rate is not native");
        }
    }

    private static AudioAttributes getAudioAttributes(AudioAttributes audioAttributes) {
        AudioAttributes.Builder contentType = new AudioAttributes.Builder().setUsage(DEFAULT_USAGE).setContentType(1);
        if (audioAttributes != null) {
            if (audioAttributes.getUsage() != 0) {
                contentType.setUsage(audioAttributes.getUsage());
            }
            if (audioAttributes.getContentType() != 0) {
                contentType.setContentType(audioAttributes.getContentType());
            }
            contentType.setFlags(audioAttributes.getFlags());
            contentType = applyAttributesOnQOrHigher(contentType, audioAttributes);
        }
        return contentType.build();
    }

    private static AudioTrack createAudioTrackOnLollipopOrHigher(int i, int i2, int i3, AudioAttributes audioAttributes) {
        Logging.d(TAG, "createAudioTrackOnLollipopOrHigher");
        logNativeOutputSampleRate(i);
        return new AudioTrack(getAudioAttributes(audioAttributes), new AudioFormat.Builder().setEncoding(2).setSampleRate(i).setChannelMask(i2).build(), i3, 1, 0);
    }

    private static AudioTrack createAudioTrackOnOreoOrHigher(int i, int i2, int i3, AudioAttributes audioAttributes) {
        Logging.d(TAG, "createAudioTrackOnOreoOrHigher");
        logNativeOutputSampleRate(i);
        return new AudioTrack.Builder().setAudioAttributes(getAudioAttributes(audioAttributes)).setAudioFormat(new AudioFormat.Builder().setEncoding(2).setSampleRate(i).setChannelMask(i2).build()).setBufferSizeInBytes(i3).setPerformanceMode(1).setTransferMode(1).setSessionId(0).build();
    }

    private static AudioAttributes.Builder applyAttributesOnQOrHigher(AudioAttributes.Builder builder, AudioAttributes audioAttributes) {
        return builder.setAllowedCapturePolicy(audioAttributes.getAllowedCapturePolicy());
    }

    private static AudioTrack createAudioTrackOnLowerThanLollipop(int i, int i2, int i3) {
        return new AudioTrack(0, i, i2, 2, i3, 1);
    }

    private void logBufferSizeInFrames() {
        Logging.d(TAG, "AudioTrack: buffer size in frames: " + this.audioTrack.getBufferSizeInFrames());
    }

    private int getBufferSizeInFrames() {
        return this.audioTrack.getBufferSizeInFrames();
    }

    private void logBufferCapacityInFrames() {
        Logging.d(TAG, "AudioTrack: buffer capacity in frames: " + this.audioTrack.getBufferCapacityInFrames());
    }

    private void logMainParametersExtended() {
        logBufferSizeInFrames();
        logBufferCapacityInFrames();
    }

    private void logUnderrunCount() {
        Logging.d(TAG, "underrun count: " + this.audioTrack.getUnderrunCount());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void assertTrue(boolean z) {
        if (!z) {
            throw new AssertionError("Expected condition to be true");
        }
    }

    public void setSpeakerMute(boolean z) {
        Logging.w(TAG, "setSpeakerMute(" + z + ")");
        this.speakerMute = z;
    }

    private void releaseAudioResources() {
        Logging.d(TAG, "releaseAudioResources");
        AudioTrack audioTrack = this.audioTrack;
        if (audioTrack != null) {
            audioTrack.release();
            this.audioTrack = null;
        }
    }

    private void reportWebRtcAudioTrackInitError(String str) {
        Logging.e(TAG, "Init playout error: " + str);
        WebRtcAudioUtils.logAudioState(TAG, this.context, this.audioManager);
        JavaAudioDeviceModule.AudioTrackErrorCallback audioTrackErrorCallback = this.errorCallback;
        if (audioTrackErrorCallback != null) {
            audioTrackErrorCallback.onWebRtcAudioTrackInitError(str);
        }
    }

    private void reportWebRtcAudioTrackStartError(JavaAudioDeviceModule.AudioTrackStartErrorCode audioTrackStartErrorCode, String str) {
        Logging.e(TAG, "Start playout error: " + audioTrackStartErrorCode + ". " + str);
        WebRtcAudioUtils.logAudioState(TAG, this.context, this.audioManager);
        JavaAudioDeviceModule.AudioTrackErrorCallback audioTrackErrorCallback = this.errorCallback;
        if (audioTrackErrorCallback != null) {
            audioTrackErrorCallback.onWebRtcAudioTrackStartError(audioTrackStartErrorCode, str);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void reportWebRtcAudioTrackError(String str) {
        Logging.e(TAG, "Run-time playback error: " + str);
        WebRtcAudioUtils.logAudioState(TAG, this.context, this.audioManager);
        JavaAudioDeviceModule.AudioTrackErrorCallback audioTrackErrorCallback = this.errorCallback;
        if (audioTrackErrorCallback != null) {
            audioTrackErrorCallback.onWebRtcAudioTrackError(str);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void doAudioTrackStateCallback(int i) {
        Logging.d(TAG, "doAudioTrackStateCallback: " + i);
        JavaAudioDeviceModule.AudioTrackStateCallback audioTrackStateCallback = this.stateCallback;
        if (audioTrackStateCallback != null) {
            if (i == 0) {
                audioTrackStateCallback.onWebRtcAudioTrackStart();
            } else if (i == 1) {
                audioTrackStateCallback.onWebRtcAudioTrackStop();
            } else {
                Logging.e(TAG, "Invalid audio state");
            }
        }
    }
}
