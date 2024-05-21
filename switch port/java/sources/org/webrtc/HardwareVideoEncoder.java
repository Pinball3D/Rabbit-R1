package org.webrtc;

import android.media.MediaCodec;
import android.opengl.GLES20;
import android.os.Bundle;
import android.view.Surface;
import java.nio.ByteBuffer;
import java.util.Map;
import java.util.concurrent.BlockingDeque;
import java.util.concurrent.LinkedBlockingDeque;
import java.util.concurrent.TimeUnit;
import org.webrtc.EglBase14;
import org.webrtc.EncodedImage;
import org.webrtc.ThreadUtils;
import org.webrtc.VideoEncoder;
import org.webrtc.VideoFrame;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3.dex */
public class HardwareVideoEncoder implements VideoEncoder {
    private static final int DEQUEUE_OUTPUT_BUFFER_TIMEOUT_US = 100000;
    private static final String KEY_BITRATE_MODE = "bitrate-mode";
    private static final int MAX_ENCODER_Q_SIZE = 2;
    private static final int MAX_VIDEO_FRAMERATE = 30;
    private static final int MEDIA_CODEC_RELEASE_TIMEOUT_MS = 5000;
    private static final String TAG = "HardwareVideoEncoder";
    private static final int VIDEO_AVC_LEVEL_3 = 256;
    private static final int VIDEO_AVC_PROFILE_HIGH = 8;
    private static final int VIDEO_ControlRateConstant = 2;
    private int adjustedBitrate;
    private boolean automaticResizeOn;
    private final BitrateAdjuster bitrateAdjuster;
    private VideoEncoder.Callback callback;
    private MediaCodecWrapper codec;
    private final String codecName;
    private final VideoCodecMimeType codecType;
    private ByteBuffer configBuffer;
    private final ThreadUtils.ThreadChecker encodeThreadChecker;
    private final long forcedKeyFrameNs;
    private int height;
    private final int keyFrameIntervalSec;
    private long lastKeyFrameNs;
    private final MediaCodecWrapperFactory mediaCodecWrapperFactory;
    private ByteBuffer[] outputBuffers;
    private final BusyCount outputBuffersBusyCount;
    private Thread outputThread;
    private final ThreadUtils.ThreadChecker outputThreadChecker;
    private final Map<String, String> params;
    private volatile boolean running;
    private final EglBase14.Context sharedContext;
    private volatile Exception shutdownException;
    private final Integer surfaceColorFormat;
    private EglBase14 textureEglBase;
    private Surface textureInputSurface;
    private boolean useSurfaceMode;
    private int width;
    private final Integer yuvColorFormat;
    private final YuvFormat yuvFormat;
    private final GlRectDrawer textureDrawer = new GlRectDrawer();
    private final VideoFrameDrawer videoFrameDrawer = new VideoFrameDrawer();
    private final BlockingDeque<EncodedImage.Builder> outputBuilders = new LinkedBlockingDeque();

    private boolean canUseSurface() {
        return (this.sharedContext == null || this.surfaceColorFormat == null) ? false : true;
    }

    @Override // org.webrtc.VideoEncoder
    public String getImplementationName() {
        return "HWEncoder";
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes3.dex */
    public static class BusyCount {
        private int count;
        private final Object countLock;

        private BusyCount() {
            this.countLock = new Object();
        }

        public void increment() {
            synchronized (this.countLock) {
                this.count++;
            }
        }

        public void decrement() {
            synchronized (this.countLock) {
                int i = this.count - 1;
                this.count = i;
                if (i == 0) {
                    this.countLock.notifyAll();
                }
            }
        }

        public void waitForZero() {
            boolean z;
            synchronized (this.countLock) {
                z = false;
                while (this.count > 0) {
                    try {
                        this.countLock.wait();
                    } catch (InterruptedException e) {
                        Logging.e(HardwareVideoEncoder.TAG, "Interrupted while waiting on busy count", e);
                        z = true;
                    }
                }
            }
            if (z) {
                Thread.currentThread().interrupt();
            }
        }
    }

    public HardwareVideoEncoder(MediaCodecWrapperFactory mediaCodecWrapperFactory, String str, VideoCodecMimeType videoCodecMimeType, Integer num, Integer num2, Map<String, String> map, int i, int i2, BitrateAdjuster bitrateAdjuster, EglBase14.Context context) {
        ThreadUtils.ThreadChecker threadChecker = new ThreadUtils.ThreadChecker();
        this.encodeThreadChecker = threadChecker;
        this.outputThreadChecker = new ThreadUtils.ThreadChecker();
        this.outputBuffersBusyCount = new BusyCount();
        this.mediaCodecWrapperFactory = mediaCodecWrapperFactory;
        this.codecName = str;
        this.codecType = videoCodecMimeType;
        this.surfaceColorFormat = num;
        this.yuvColorFormat = num2;
        this.yuvFormat = YuvFormat.valueOf(num2.intValue());
        this.params = map;
        this.keyFrameIntervalSec = i;
        this.forcedKeyFrameNs = TimeUnit.MILLISECONDS.toNanos(i2);
        this.bitrateAdjuster = bitrateAdjuster;
        this.sharedContext = context;
        threadChecker.detachThread();
    }

    @Override // org.webrtc.VideoEncoder
    public VideoCodecStatus initEncode(VideoEncoder.Settings settings, VideoEncoder.Callback callback) {
        this.encodeThreadChecker.checkIsOnValidThread();
        this.callback = callback;
        this.automaticResizeOn = settings.automaticResizeOn;
        this.width = settings.width;
        this.height = settings.height;
        this.useSurfaceMode = canUseSurface();
        if (settings.startBitrate != 0 && settings.maxFramerate != 0) {
            this.bitrateAdjuster.setTargets(settings.startBitrate * 1000, settings.maxFramerate);
        }
        this.adjustedBitrate = this.bitrateAdjuster.getAdjustedBitrateBps();
        Logging.d(TAG, "initEncode: " + this.width + " x " + this.height + ". @ " + settings.startBitrate + "kbps. Fps: " + settings.maxFramerate + " Use surface mode: " + this.useSurfaceMode);
        return initEncodeInternal();
    }

    /* JADX WARN: Removed duplicated region for block: B:22:0x0092  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x00a5 A[Catch: IllegalStateException -> 0x0109, TryCatch #0 {IllegalStateException -> 0x0109, blocks: (B:9:0x0026, B:11:0x005f, B:15:0x006e, B:23:0x0094, B:24:0x00a5, B:25:0x007d, B:28:0x0087, B:31:0x00b3, B:33:0x00cd, B:34:0x00e9), top: B:8:0x0026 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private org.webrtc.VideoCodecStatus initEncodeInternal() {
        /*
            Method dump skipped, instructions count: 300
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.webrtc.HardwareVideoEncoder.initEncodeInternal():org.webrtc.VideoCodecStatus");
    }

    @Override // org.webrtc.VideoEncoder
    public VideoCodecStatus release() {
        VideoCodecStatus videoCodecStatus;
        this.encodeThreadChecker.checkIsOnValidThread();
        if (this.outputThread == null) {
            videoCodecStatus = VideoCodecStatus.OK;
        } else {
            this.running = false;
            if (!ThreadUtils.joinUninterruptibly(this.outputThread, 5000L)) {
                Logging.e(TAG, "Media encoder release timeout");
                videoCodecStatus = VideoCodecStatus.TIMEOUT;
            } else if (this.shutdownException != null) {
                Logging.e(TAG, "Media encoder release exception", this.shutdownException);
                videoCodecStatus = VideoCodecStatus.ERROR;
            } else {
                videoCodecStatus = VideoCodecStatus.OK;
            }
        }
        this.textureDrawer.release();
        this.videoFrameDrawer.release();
        EglBase14 eglBase14 = this.textureEglBase;
        if (eglBase14 != null) {
            eglBase14.release();
            this.textureEglBase = null;
        }
        Surface surface = this.textureInputSurface;
        if (surface != null) {
            surface.release();
            this.textureInputSurface = null;
        }
        this.outputBuilders.clear();
        this.codec = null;
        this.outputBuffers = null;
        this.outputThread = null;
        this.encodeThreadChecker.detachThread();
        return videoCodecStatus;
    }

    @Override // org.webrtc.VideoEncoder
    public VideoCodecStatus encode(VideoFrame videoFrame, VideoEncoder.EncodeInfo encodeInfo) {
        VideoCodecStatus resetCodec;
        VideoCodecStatus encodeByteBuffer;
        this.encodeThreadChecker.checkIsOnValidThread();
        if (this.codec == null) {
            return VideoCodecStatus.UNINITIALIZED;
        }
        VideoFrame.Buffer buffer = videoFrame.getBuffer();
        boolean z = buffer instanceof VideoFrame.TextureBuffer;
        int width = videoFrame.getBuffer().getWidth();
        int height = videoFrame.getBuffer().getHeight();
        boolean z2 = canUseSurface() && z;
        if ((width != this.width || height != this.height || z2 != this.useSurfaceMode) && (resetCodec = resetCodec(width, height, z2)) != VideoCodecStatus.OK) {
            return resetCodec;
        }
        if (this.outputBuilders.size() > 2) {
            Logging.e(TAG, "Dropped frame, encoder queue full");
            return VideoCodecStatus.NO_OUTPUT;
        }
        boolean z3 = false;
        for (EncodedImage.FrameType frameType : encodeInfo.frameTypes) {
            if (frameType == EncodedImage.FrameType.VideoFrameKey) {
                z3 = true;
            }
        }
        if (z3 || shouldForceKeyFrame(videoFrame.getTimestampNs())) {
            requestKeyFrame(videoFrame.getTimestampNs());
        }
        int height2 = ((buffer.getHeight() * buffer.getWidth()) * 3) / 2;
        this.outputBuilders.offer(EncodedImage.builder().setCaptureTimeNs(videoFrame.getTimestampNs()).setEncodedWidth(videoFrame.getBuffer().getWidth()).setEncodedHeight(videoFrame.getBuffer().getHeight()).setRotation(videoFrame.getRotation()));
        if (this.useSurfaceMode) {
            encodeByteBuffer = encodeTextureBuffer(videoFrame);
        } else {
            encodeByteBuffer = encodeByteBuffer(videoFrame, buffer, height2);
        }
        if (encodeByteBuffer != VideoCodecStatus.OK) {
            this.outputBuilders.pollLast();
        }
        return encodeByteBuffer;
    }

    private VideoCodecStatus encodeTextureBuffer(VideoFrame videoFrame) {
        this.encodeThreadChecker.checkIsOnValidThread();
        try {
            GLES20.glClear(16384);
            this.videoFrameDrawer.drawFrame(new VideoFrame(videoFrame.getBuffer(), 0, videoFrame.getTimestampNs()), this.textureDrawer, null);
            this.textureEglBase.swapBuffers(videoFrame.getTimestampNs());
            return VideoCodecStatus.OK;
        } catch (RuntimeException e) {
            Logging.e(TAG, "encodeTexture failed", e);
            return VideoCodecStatus.ERROR;
        }
    }

    private VideoCodecStatus encodeByteBuffer(VideoFrame videoFrame, VideoFrame.Buffer buffer, int i) {
        this.encodeThreadChecker.checkIsOnValidThread();
        long timestampNs = (videoFrame.getTimestampNs() + 500) / 1000;
        try {
            int dequeueInputBuffer = this.codec.dequeueInputBuffer(0L);
            if (dequeueInputBuffer == -1) {
                Logging.d(TAG, "Dropped frame, no input buffers available");
                return VideoCodecStatus.NO_OUTPUT;
            }
            try {
                fillInputBuffer(this.codec.getInputBuffers()[dequeueInputBuffer], buffer);
                try {
                    this.codec.queueInputBuffer(dequeueInputBuffer, 0, i, timestampNs, 0);
                    return VideoCodecStatus.OK;
                } catch (IllegalStateException e) {
                    Logging.e(TAG, "queueInputBuffer failed", e);
                    return VideoCodecStatus.ERROR;
                }
            } catch (IllegalStateException e2) {
                Logging.e(TAG, "getInputBuffers failed", e2);
                return VideoCodecStatus.ERROR;
            }
        } catch (IllegalStateException e3) {
            Logging.e(TAG, "dequeueInputBuffer failed", e3);
            return VideoCodecStatus.ERROR;
        }
    }

    @Override // org.webrtc.VideoEncoder
    public VideoCodecStatus setRateAllocation(VideoEncoder.BitrateAllocation bitrateAllocation, int i) {
        this.encodeThreadChecker.checkIsOnValidThread();
        if (i > 30) {
            i = 30;
        }
        this.bitrateAdjuster.setTargets(bitrateAllocation.getSum(), i);
        return VideoCodecStatus.OK;
    }

    @Override // org.webrtc.VideoEncoder
    public VideoEncoder.ScalingSettings getScalingSettings() {
        this.encodeThreadChecker.checkIsOnValidThread();
        if (this.automaticResizeOn) {
            if (this.codecType == VideoCodecMimeType.VP8) {
                return new VideoEncoder.ScalingSettings(29, 95);
            }
            if (this.codecType == VideoCodecMimeType.H264) {
                return new VideoEncoder.ScalingSettings(24, 37);
            }
        }
        return VideoEncoder.ScalingSettings.OFF;
    }

    private VideoCodecStatus resetCodec(int i, int i2, boolean z) {
        this.encodeThreadChecker.checkIsOnValidThread();
        VideoCodecStatus release = release();
        if (release != VideoCodecStatus.OK) {
            return release;
        }
        this.width = i;
        this.height = i2;
        this.useSurfaceMode = z;
        return initEncodeInternal();
    }

    private boolean shouldForceKeyFrame(long j) {
        this.encodeThreadChecker.checkIsOnValidThread();
        long j2 = this.forcedKeyFrameNs;
        return j2 > 0 && j > this.lastKeyFrameNs + j2;
    }

    private void requestKeyFrame(long j) {
        this.encodeThreadChecker.checkIsOnValidThread();
        try {
            Bundle bundle = new Bundle();
            bundle.putInt("request-sync", 0);
            this.codec.setParameters(bundle);
            this.lastKeyFrameNs = j;
        } catch (IllegalStateException e) {
            Logging.e(TAG, "requestKeyFrame failed", e);
        }
    }

    private Thread createOutputThread() {
        return new Thread() { // from class: org.webrtc.HardwareVideoEncoder.1
            @Override // java.lang.Thread, java.lang.Runnable
            public void run() {
                while (HardwareVideoEncoder.this.running) {
                    HardwareVideoEncoder.this.deliverEncodedImage();
                }
                HardwareVideoEncoder.this.releaseCodecOnOutputThread();
            }
        };
    }

    protected void deliverEncodedImage() {
        ByteBuffer slice;
        EncodedImage.FrameType frameType;
        this.outputThreadChecker.checkIsOnValidThread();
        try {
            MediaCodec.BufferInfo bufferInfo = new MediaCodec.BufferInfo();
            final int dequeueOutputBuffer = this.codec.dequeueOutputBuffer(bufferInfo, 100000L);
            if (dequeueOutputBuffer < 0) {
                if (dequeueOutputBuffer == -3) {
                    this.outputBuffersBusyCount.waitForZero();
                    this.outputBuffers = this.codec.getOutputBuffers();
                    return;
                }
                return;
            }
            ByteBuffer byteBuffer = this.outputBuffers[dequeueOutputBuffer];
            byteBuffer.position(bufferInfo.offset);
            byteBuffer.limit(bufferInfo.offset + bufferInfo.size);
            if ((bufferInfo.flags & 2) != 0) {
                Logging.d(TAG, "Config frame generated. Offset: " + bufferInfo.offset + ". Size: " + bufferInfo.size);
                ByteBuffer allocateDirect = ByteBuffer.allocateDirect(bufferInfo.size);
                this.configBuffer = allocateDirect;
                allocateDirect.put(byteBuffer);
                return;
            }
            this.bitrateAdjuster.reportEncodedFrame(bufferInfo.size);
            if (this.adjustedBitrate != this.bitrateAdjuster.getAdjustedBitrateBps()) {
                updateBitrate();
            }
            boolean z = true;
            if ((bufferInfo.flags & 1) == 0) {
                z = false;
            }
            if (z) {
                Logging.d(TAG, "Sync frame generated");
            }
            if (z && this.codecType == VideoCodecMimeType.H264) {
                Logging.d(TAG, "Prepending config frame of size " + this.configBuffer.capacity() + " to output buffer with offset " + bufferInfo.offset + ", size " + bufferInfo.size);
                slice = ByteBuffer.allocateDirect(bufferInfo.size + this.configBuffer.capacity());
                this.configBuffer.rewind();
                slice.put(this.configBuffer);
                slice.put(byteBuffer);
                slice.rewind();
            } else {
                slice = byteBuffer.slice();
            }
            if (z) {
                frameType = EncodedImage.FrameType.VideoFrameKey;
            } else {
                frameType = EncodedImage.FrameType.VideoFrameDelta;
            }
            this.outputBuffersBusyCount.increment();
            EncodedImage createEncodedImage = this.outputBuilders.poll().setBuffer(slice, new Runnable() { // from class: org.webrtc.HardwareVideoEncoder$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    HardwareVideoEncoder.this.m7437lambda$deliverEncodedImage$0$orgwebrtcHardwareVideoEncoder(dequeueOutputBuffer);
                }
            }).setFrameType(frameType).createEncodedImage();
            this.callback.onEncodedFrame(createEncodedImage, new VideoEncoder.CodecSpecificInfo());
            createEncodedImage.release();
        } catch (IllegalStateException e) {
            Logging.e(TAG, "deliverOutput failed", e);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: lambda$deliverEncodedImage$0$org-webrtc-HardwareVideoEncoder, reason: not valid java name */
    public /* synthetic */ void m7437lambda$deliverEncodedImage$0$orgwebrtcHardwareVideoEncoder(int i) {
        try {
            this.codec.releaseOutputBuffer(i, false);
        } catch (Exception e) {
            Logging.e(TAG, "releaseOutputBuffer failed", e);
        }
        this.outputBuffersBusyCount.decrement();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void releaseCodecOnOutputThread() {
        this.outputThreadChecker.checkIsOnValidThread();
        Logging.d(TAG, "Releasing MediaCodec on output thread");
        this.outputBuffersBusyCount.waitForZero();
        try {
            this.codec.stop();
        } catch (Exception e) {
            Logging.e(TAG, "Media encoder stop failed", e);
        }
        try {
            this.codec.release();
        } catch (Exception e2) {
            Logging.e(TAG, "Media encoder release failed", e2);
            this.shutdownException = e2;
        }
        this.configBuffer = null;
        Logging.d(TAG, "Release on output thread done");
    }

    private VideoCodecStatus updateBitrate() {
        this.outputThreadChecker.checkIsOnValidThread();
        this.adjustedBitrate = this.bitrateAdjuster.getAdjustedBitrateBps();
        try {
            Bundle bundle = new Bundle();
            bundle.putInt("video-bitrate", this.adjustedBitrate);
            this.codec.setParameters(bundle);
            return VideoCodecStatus.OK;
        } catch (IllegalStateException e) {
            Logging.e(TAG, "updateBitrate failed", e);
            return VideoCodecStatus.ERROR;
        }
    }

    protected void fillInputBuffer(ByteBuffer byteBuffer, VideoFrame.Buffer buffer) {
        this.yuvFormat.fillBuffer(byteBuffer, buffer);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes3.dex */
    public enum YuvFormat {
        I420 { // from class: org.webrtc.HardwareVideoEncoder.YuvFormat.1
            @Override // org.webrtc.HardwareVideoEncoder.YuvFormat
            void fillBuffer(ByteBuffer byteBuffer, VideoFrame.Buffer buffer) {
                VideoFrame.I420Buffer i420 = buffer.toI420();
                YuvHelper.I420Copy(i420.getDataY(), i420.getStrideY(), i420.getDataU(), i420.getStrideU(), i420.getDataV(), i420.getStrideV(), byteBuffer, i420.getWidth(), i420.getHeight());
                i420.release();
            }
        },
        NV12 { // from class: org.webrtc.HardwareVideoEncoder.YuvFormat.2
            @Override // org.webrtc.HardwareVideoEncoder.YuvFormat
            void fillBuffer(ByteBuffer byteBuffer, VideoFrame.Buffer buffer) {
                VideoFrame.I420Buffer i420 = buffer.toI420();
                YuvHelper.I420ToNV12(i420.getDataY(), i420.getStrideY(), i420.getDataU(), i420.getStrideU(), i420.getDataV(), i420.getStrideV(), byteBuffer, i420.getWidth(), i420.getHeight());
                i420.release();
            }
        };

        abstract void fillBuffer(ByteBuffer byteBuffer, VideoFrame.Buffer buffer);

        static YuvFormat valueOf(int i) {
            if (i == 19) {
                return I420;
            }
            if (i == 21 || i == 2141391872 || i == 2141391876) {
                return NV12;
            }
            throw new IllegalArgumentException("Unsupported colorFormat: " + i);
        }
    }
}
