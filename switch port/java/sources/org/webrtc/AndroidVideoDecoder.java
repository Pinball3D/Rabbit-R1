package org.webrtc;

import android.media.MediaCodec;
import android.media.MediaFormat;
import android.os.SystemClock;
import android.view.Surface;
import io.sentry.protocol.ViewHierarchyNode;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.util.concurrent.BlockingDeque;
import java.util.concurrent.LinkedBlockingDeque;
import java.util.concurrent.TimeUnit;
import org.webrtc.EglBase;
import org.webrtc.EncodedImage;
import org.webrtc.ThreadUtils;
import org.webrtc.VideoDecoder;
import org.webrtc.VideoFrame;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3.dex */
public class AndroidVideoDecoder implements VideoDecoder, VideoSink {
    private static final int DEQUEUE_INPUT_TIMEOUT_US = 500000;
    private static final int DEQUEUE_OUTPUT_BUFFER_TIMEOUT_US = 100000;
    private static final int MEDIA_CODEC_RELEASE_TIMEOUT_MS = 5000;
    private static final String MEDIA_FORMAT_KEY_CROP_BOTTOM = "crop-bottom";
    private static final String MEDIA_FORMAT_KEY_CROP_LEFT = "crop-left";
    private static final String MEDIA_FORMAT_KEY_CROP_RIGHT = "crop-right";
    private static final String MEDIA_FORMAT_KEY_CROP_TOP = "crop-top";
    private static final String MEDIA_FORMAT_KEY_SLICE_HEIGHT = "slice-height";
    private static final String MEDIA_FORMAT_KEY_STRIDE = "stride";
    private static final String TAG = "AndroidVideoDecoder";
    private VideoDecoder.Callback callback;
    private MediaCodecWrapper codec;
    private final String codecName;
    private final VideoCodecMimeType codecType;
    private int colorFormat;
    private ThreadUtils.ThreadChecker decoderThreadChecker;
    private final BlockingDeque<FrameInfo> frameInfos;
    private boolean hasDecodedFirstFrame;
    private int height;
    private boolean keyFrameRequired;
    private final MediaCodecWrapperFactory mediaCodecWrapperFactory;
    private Thread outputThread;
    private ThreadUtils.ThreadChecker outputThreadChecker;
    private DecodedTextureMetadata renderedTextureMetadata;
    private volatile boolean running;
    private final EglBase.Context sharedContext;
    private volatile Exception shutdownException;
    private int sliceHeight;
    private int stride;
    private Surface surface;
    private SurfaceTextureHelper surfaceTextureHelper;
    private int width;
    private final Object dimensionLock = new Object();
    private final Object renderedTextureMetadataLock = new Object();

    @Override // org.webrtc.VideoDecoder
    public String getImplementationName() {
        return this.codecName;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes3.dex */
    public static class FrameInfo {
        final long decodeStartTimeMs;
        final int rotation;

        FrameInfo(long j, int i) {
            this.decodeStartTimeMs = j;
            this.rotation = i;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes3.dex */
    public static class DecodedTextureMetadata {
        final Integer decodeTimeMs;
        final long presentationTimestampUs;

        DecodedTextureMetadata(long j, Integer num) {
            this.presentationTimestampUs = j;
            this.decodeTimeMs = num;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public AndroidVideoDecoder(MediaCodecWrapperFactory mediaCodecWrapperFactory, String str, VideoCodecMimeType videoCodecMimeType, int i, EglBase.Context context) {
        if (!isSupportedColorFormat(i)) {
            throw new IllegalArgumentException("Unsupported color format: " + i);
        }
        Logging.d(TAG, "ctor name: " + str + " type: " + videoCodecMimeType + " color format: " + i + " context: " + context);
        this.mediaCodecWrapperFactory = mediaCodecWrapperFactory;
        this.codecName = str;
        this.codecType = videoCodecMimeType;
        this.colorFormat = i;
        this.sharedContext = context;
        this.frameInfos = new LinkedBlockingDeque();
    }

    @Override // org.webrtc.VideoDecoder
    public VideoCodecStatus initDecode(VideoDecoder.Settings settings, VideoDecoder.Callback callback) {
        this.decoderThreadChecker = new ThreadUtils.ThreadChecker();
        this.callback = callback;
        if (this.sharedContext != null) {
            this.surfaceTextureHelper = createSurfaceTextureHelper();
            this.surface = new Surface(this.surfaceTextureHelper.getSurfaceTexture());
            this.surfaceTextureHelper.startListening(this);
        }
        return initDecodeInternal(settings.width, settings.height);
    }

    private VideoCodecStatus initDecodeInternal(int i, int i2) {
        this.decoderThreadChecker.checkIsOnValidThread();
        Logging.d(TAG, "initDecodeInternal name: " + this.codecName + " type: " + this.codecType + " width: " + i + " height: " + i2);
        if (this.outputThread != null) {
            Logging.e(TAG, "initDecodeInternal called while the codec is already running");
            return VideoCodecStatus.FALLBACK_SOFTWARE;
        }
        this.width = i;
        this.height = i2;
        this.stride = i;
        this.sliceHeight = i2;
        this.hasDecodedFirstFrame = false;
        this.keyFrameRequired = true;
        try {
            this.codec = this.mediaCodecWrapperFactory.createByCodecName(this.codecName);
            try {
                MediaFormat createVideoFormat = MediaFormat.createVideoFormat(this.codecType.mimeType(), i, i2);
                if (this.sharedContext == null) {
                    createVideoFormat.setInteger("color-format", this.colorFormat);
                }
                this.codec.configure(createVideoFormat, this.surface, null, 0);
                this.codec.start();
                this.running = true;
                Thread createOutputThread = createOutputThread();
                this.outputThread = createOutputThread;
                createOutputThread.start();
                Logging.d(TAG, "initDecodeInternal done");
                return VideoCodecStatus.OK;
            } catch (IllegalArgumentException | IllegalStateException e) {
                Logging.e(TAG, "initDecode failed", e);
                release();
                return VideoCodecStatus.FALLBACK_SOFTWARE;
            }
        } catch (IOException | IllegalArgumentException | IllegalStateException unused) {
            Logging.e(TAG, "Cannot create media decoder " + this.codecName);
            return VideoCodecStatus.FALLBACK_SOFTWARE;
        }
    }

    @Override // org.webrtc.VideoDecoder
    public VideoCodecStatus decode(EncodedImage encodedImage, VideoDecoder.DecodeInfo decodeInfo) {
        int i;
        int i2;
        VideoCodecStatus reinitDecode;
        this.decoderThreadChecker.checkIsOnValidThread();
        if (this.codec == null || this.callback == null) {
            Logging.d(TAG, "decode uninitalized, codec: " + (this.codec != null) + ", callback: " + this.callback);
            return VideoCodecStatus.UNINITIALIZED;
        }
        if (encodedImage.buffer == null) {
            Logging.e(TAG, "decode() - no input data");
            return VideoCodecStatus.ERR_PARAMETER;
        }
        int remaining = encodedImage.buffer.remaining();
        if (remaining == 0) {
            Logging.e(TAG, "decode() - input buffer empty");
            return VideoCodecStatus.ERR_PARAMETER;
        }
        synchronized (this.dimensionLock) {
            i = this.width;
            i2 = this.height;
        }
        if (encodedImage.encodedWidth * encodedImage.encodedHeight > 0 && ((encodedImage.encodedWidth != i || encodedImage.encodedHeight != i2) && (reinitDecode = reinitDecode(encodedImage.encodedWidth, encodedImage.encodedHeight)) != VideoCodecStatus.OK)) {
            return reinitDecode;
        }
        if (this.keyFrameRequired && encodedImage.frameType != EncodedImage.FrameType.VideoFrameKey) {
            Logging.e(TAG, "decode() - key frame required first");
            return VideoCodecStatus.NO_OUTPUT;
        }
        try {
            int dequeueInputBuffer = this.codec.dequeueInputBuffer(500000L);
            if (dequeueInputBuffer < 0) {
                Logging.e(TAG, "decode() - no HW buffers available; decoder falling behind");
                return VideoCodecStatus.ERROR;
            }
            try {
                ByteBuffer byteBuffer = this.codec.getInputBuffers()[dequeueInputBuffer];
                if (byteBuffer.capacity() < remaining) {
                    Logging.e(TAG, "decode() - HW buffer too small");
                    return VideoCodecStatus.ERROR;
                }
                byteBuffer.put(encodedImage.buffer);
                this.frameInfos.offer(new FrameInfo(SystemClock.elapsedRealtime(), encodedImage.rotation));
                try {
                    this.codec.queueInputBuffer(dequeueInputBuffer, 0, remaining, TimeUnit.NANOSECONDS.toMicros(encodedImage.captureTimeNs), 0);
                    if (this.keyFrameRequired) {
                        this.keyFrameRequired = false;
                    }
                    return VideoCodecStatus.OK;
                } catch (IllegalStateException e) {
                    Logging.e(TAG, "queueInputBuffer failed", e);
                    this.frameInfos.pollLast();
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

    @Override // org.webrtc.VideoDecoder
    public VideoCodecStatus release() {
        Logging.d(TAG, "release");
        VideoCodecStatus releaseInternal = releaseInternal();
        if (this.surface != null) {
            releaseSurface();
            this.surface = null;
            this.surfaceTextureHelper.stopListening();
            this.surfaceTextureHelper.dispose();
            this.surfaceTextureHelper = null;
        }
        synchronized (this.renderedTextureMetadataLock) {
            this.renderedTextureMetadata = null;
        }
        this.callback = null;
        this.frameInfos.clear();
        return releaseInternal;
    }

    /* JADX WARN: Multi-variable type inference failed */
    private VideoCodecStatus releaseInternal() {
        VideoCodecStatus videoCodecStatus;
        if (!this.running) {
            Logging.d(TAG, "release: Decoder is not running.");
            return VideoCodecStatus.OK;
        }
        try {
            this.running = false;
            if (!ThreadUtils.joinUninterruptibly(this.outputThread, 5000L)) {
                Logging.e(TAG, "Media decoder release timeout", new RuntimeException());
                videoCodecStatus = VideoCodecStatus.TIMEOUT;
            } else if (this.shutdownException != null) {
                Logging.e(TAG, "Media decoder release error", new RuntimeException(this.shutdownException));
                this.shutdownException = null;
                videoCodecStatus = VideoCodecStatus.ERROR;
            } else {
                this.codec = null;
                this.outputThread = null;
                return VideoCodecStatus.OK;
            }
            return videoCodecStatus;
        } finally {
            this.codec = null;
            this.outputThread = null;
        }
    }

    private VideoCodecStatus reinitDecode(int i, int i2) {
        this.decoderThreadChecker.checkIsOnValidThread();
        VideoCodecStatus releaseInternal = releaseInternal();
        return releaseInternal != VideoCodecStatus.OK ? releaseInternal : initDecodeInternal(i, i2);
    }

    private Thread createOutputThread() {
        return new Thread("AndroidVideoDecoder.outputThread") { // from class: org.webrtc.AndroidVideoDecoder.1
            @Override // java.lang.Thread, java.lang.Runnable
            public void run() {
                AndroidVideoDecoder.this.outputThreadChecker = new ThreadUtils.ThreadChecker();
                while (AndroidVideoDecoder.this.running) {
                    AndroidVideoDecoder.this.deliverDecodedFrame();
                }
                AndroidVideoDecoder.this.releaseCodecOnOutputThread();
            }
        };
    }

    protected void deliverDecodedFrame() {
        Integer num;
        int i;
        this.outputThreadChecker.checkIsOnValidThread();
        try {
            MediaCodec.BufferInfo bufferInfo = new MediaCodec.BufferInfo();
            int dequeueOutputBuffer = this.codec.dequeueOutputBuffer(bufferInfo, 100000L);
            if (dequeueOutputBuffer == -2) {
                reformat(this.codec.getOutputFormat());
                return;
            }
            if (dequeueOutputBuffer < 0) {
                Logging.v(TAG, "dequeueOutputBuffer returned " + dequeueOutputBuffer);
                return;
            }
            FrameInfo poll = this.frameInfos.poll();
            if (poll != null) {
                num = Integer.valueOf((int) (SystemClock.elapsedRealtime() - poll.decodeStartTimeMs));
                i = poll.rotation;
            } else {
                num = null;
                i = 0;
            }
            this.hasDecodedFirstFrame = true;
            if (this.surfaceTextureHelper != null) {
                deliverTextureFrame(dequeueOutputBuffer, bufferInfo, i, num);
            } else {
                deliverByteFrame(dequeueOutputBuffer, bufferInfo, i, num);
            }
        } catch (IllegalStateException e) {
            Logging.e(TAG, "deliverDecodedFrame failed", e);
        }
    }

    private void deliverTextureFrame(int i, MediaCodec.BufferInfo bufferInfo, int i2, Integer num) {
        int i3;
        int i4;
        synchronized (this.dimensionLock) {
            i3 = this.width;
            i4 = this.height;
        }
        synchronized (this.renderedTextureMetadataLock) {
            if (this.renderedTextureMetadata != null) {
                this.codec.releaseOutputBuffer(i, false);
                return;
            }
            this.surfaceTextureHelper.setTextureSize(i3, i4);
            this.surfaceTextureHelper.setFrameRotation(i2);
            this.renderedTextureMetadata = new DecodedTextureMetadata(bufferInfo.presentationTimeUs, num);
            this.codec.releaseOutputBuffer(i, true);
        }
    }

    @Override // org.webrtc.VideoSink
    public void onFrame(VideoFrame videoFrame) {
        long j;
        Integer num;
        synchronized (this.renderedTextureMetadataLock) {
            DecodedTextureMetadata decodedTextureMetadata = this.renderedTextureMetadata;
            if (decodedTextureMetadata == null) {
                throw new IllegalStateException("Rendered texture metadata was null in onTextureFrameAvailable.");
            }
            j = decodedTextureMetadata.presentationTimestampUs * 1000;
            num = this.renderedTextureMetadata.decodeTimeMs;
            this.renderedTextureMetadata = null;
        }
        this.callback.onDecodedFrame(new VideoFrame(videoFrame.getBuffer(), videoFrame.getRotation(), j), num, null);
    }

    private void deliverByteFrame(int i, MediaCodec.BufferInfo bufferInfo, int i2, Integer num) {
        int i3;
        int i4;
        int i5;
        int i6;
        VideoFrame.Buffer copyNV12ToI420Buffer;
        synchronized (this.dimensionLock) {
            i3 = this.width;
            i4 = this.height;
            i5 = this.stride;
            i6 = this.sliceHeight;
        }
        if (bufferInfo.size < ((i3 * i4) * 3) / 2) {
            Logging.e(TAG, "Insufficient output buffer size: " + bufferInfo.size);
            return;
        }
        int i7 = (bufferInfo.size >= ((i5 * i4) * 3) / 2 || i6 != i4 || i5 <= i3) ? i5 : (bufferInfo.size * 2) / (i4 * 3);
        ByteBuffer byteBuffer = this.codec.getOutputBuffers()[i];
        byteBuffer.position(bufferInfo.offset);
        byteBuffer.limit(bufferInfo.offset + bufferInfo.size);
        ByteBuffer slice = byteBuffer.slice();
        if (this.colorFormat == 19) {
            copyNV12ToI420Buffer = copyI420Buffer(slice, i7, i6, i3, i4);
        } else {
            copyNV12ToI420Buffer = copyNV12ToI420Buffer(slice, i7, i6, i3, i4);
        }
        this.codec.releaseOutputBuffer(i, false);
        VideoFrame videoFrame = new VideoFrame(copyNV12ToI420Buffer, i2, bufferInfo.presentationTimeUs * 1000);
        this.callback.onDecodedFrame(videoFrame, num, null);
        videoFrame.release();
    }

    private VideoFrame.Buffer copyNV12ToI420Buffer(ByteBuffer byteBuffer, int i, int i2, int i3, int i4) {
        return new NV12Buffer(i3, i4, i, i2, byteBuffer, null).toI420();
    }

    private VideoFrame.Buffer copyI420Buffer(ByteBuffer byteBuffer, int i, int i2, int i3, int i4) {
        if (i % 2 != 0) {
            throw new AssertionError("Stride is not divisible by two: " + i);
        }
        int i5 = (i3 + 1) / 2;
        int i6 = i2 % 2;
        int i7 = i6 == 0 ? (i4 + 1) / 2 : i4 / 2;
        int i8 = i / 2;
        int i9 = i * i2;
        int i10 = i8 * i7;
        int i11 = i9 + ((i8 * i2) / 2);
        int i12 = i11 + i10;
        VideoFrame.I420Buffer allocateI420Buffer = allocateI420Buffer(i3, i4);
        byteBuffer.limit(i * i4);
        byteBuffer.position(0);
        copyPlane(byteBuffer.slice(), i, allocateI420Buffer.getDataY(), allocateI420Buffer.getStrideY(), i3, i4);
        byteBuffer.limit(i9 + i10);
        byteBuffer.position(i9);
        copyPlane(byteBuffer.slice(), i8, allocateI420Buffer.getDataU(), allocateI420Buffer.getStrideU(), i5, i7);
        if (i6 == 1) {
            byteBuffer.position(i9 + ((i7 - 1) * i8));
            ByteBuffer dataU = allocateI420Buffer.getDataU();
            dataU.position(allocateI420Buffer.getStrideU() * i7);
            dataU.put(byteBuffer);
        }
        byteBuffer.limit(i12);
        byteBuffer.position(i11);
        copyPlane(byteBuffer.slice(), i8, allocateI420Buffer.getDataV(), allocateI420Buffer.getStrideV(), i5, i7);
        if (i6 == 1) {
            byteBuffer.position(i11 + (i8 * (i7 - 1)));
            ByteBuffer dataV = allocateI420Buffer.getDataV();
            dataV.position(allocateI420Buffer.getStrideV() * i7);
            dataV.put(byteBuffer);
        }
        return allocateI420Buffer;
    }

    private void reformat(MediaFormat mediaFormat) {
        int integer;
        int integer2;
        this.outputThreadChecker.checkIsOnValidThread();
        Logging.d(TAG, "Decoder format changed: " + mediaFormat.toString());
        if (mediaFormat.containsKey(MEDIA_FORMAT_KEY_CROP_LEFT) && mediaFormat.containsKey(MEDIA_FORMAT_KEY_CROP_RIGHT) && mediaFormat.containsKey(MEDIA_FORMAT_KEY_CROP_BOTTOM) && mediaFormat.containsKey(MEDIA_FORMAT_KEY_CROP_TOP)) {
            integer = (mediaFormat.getInteger(MEDIA_FORMAT_KEY_CROP_RIGHT) + 1) - mediaFormat.getInteger(MEDIA_FORMAT_KEY_CROP_LEFT);
            integer2 = (mediaFormat.getInteger(MEDIA_FORMAT_KEY_CROP_BOTTOM) + 1) - mediaFormat.getInteger(MEDIA_FORMAT_KEY_CROP_TOP);
        } else {
            integer = mediaFormat.getInteger(ViewHierarchyNode.JsonKeys.WIDTH);
            integer2 = mediaFormat.getInteger(ViewHierarchyNode.JsonKeys.HEIGHT);
        }
        synchronized (this.dimensionLock) {
            if (integer != this.width || integer2 != this.height) {
                if (this.hasDecodedFirstFrame) {
                    stopOnOutputThread(new RuntimeException("Unexpected size change. Configured " + this.width + "*" + this.height + ". New " + integer + "*" + integer2));
                    return;
                }
                if (integer > 0 && integer2 > 0) {
                    this.width = integer;
                    this.height = integer2;
                }
                Logging.w(TAG, "Unexpected format dimensions. Configured " + this.width + "*" + this.height + ". New " + integer + "*" + integer2 + ". Skip it");
                return;
            }
            if (this.surfaceTextureHelper == null && mediaFormat.containsKey("color-format")) {
                this.colorFormat = mediaFormat.getInteger("color-format");
                Logging.d(TAG, "Color: 0x" + Integer.toHexString(this.colorFormat));
                if (!isSupportedColorFormat(this.colorFormat)) {
                    stopOnOutputThread(new IllegalStateException("Unsupported color format: " + this.colorFormat));
                    return;
                }
            }
            synchronized (this.dimensionLock) {
                if (mediaFormat.containsKey(MEDIA_FORMAT_KEY_STRIDE)) {
                    this.stride = mediaFormat.getInteger(MEDIA_FORMAT_KEY_STRIDE);
                }
                if (mediaFormat.containsKey(MEDIA_FORMAT_KEY_SLICE_HEIGHT)) {
                    this.sliceHeight = mediaFormat.getInteger(MEDIA_FORMAT_KEY_SLICE_HEIGHT);
                }
                Logging.d(TAG, "Frame stride and slice height: " + this.stride + " x " + this.sliceHeight);
                this.stride = Math.max(this.width, this.stride);
                this.sliceHeight = Math.max(this.height, this.sliceHeight);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void releaseCodecOnOutputThread() {
        this.outputThreadChecker.checkIsOnValidThread();
        Logging.d(TAG, "Releasing MediaCodec on output thread");
        try {
            this.codec.stop();
        } catch (Exception e) {
            Logging.e(TAG, "Media decoder stop failed", e);
        }
        try {
            this.codec.release();
        } catch (Exception e2) {
            Logging.e(TAG, "Media decoder release failed", e2);
            this.shutdownException = e2;
        }
        Logging.d(TAG, "Release on output thread done");
    }

    private void stopOnOutputThread(Exception exc) {
        this.outputThreadChecker.checkIsOnValidThread();
        this.running = false;
        this.shutdownException = exc;
    }

    private boolean isSupportedColorFormat(int i) {
        for (int i2 : MediaCodecUtils.DECODER_COLOR_FORMATS) {
            if (i2 == i) {
                return true;
            }
        }
        return false;
    }

    protected SurfaceTextureHelper createSurfaceTextureHelper() {
        return SurfaceTextureHelper.create("decoder-texture-thread", this.sharedContext);
    }

    protected void releaseSurface() {
        this.surface.release();
    }

    protected VideoFrame.I420Buffer allocateI420Buffer(int i, int i2) {
        return JavaI420Buffer.allocate(i, i2);
    }

    protected void copyPlane(ByteBuffer byteBuffer, int i, ByteBuffer byteBuffer2, int i2, int i3, int i4) {
        YuvHelper.copyPlane(byteBuffer, i, byteBuffer2, i2, i3, i4);
    }
}
