package org.webrtc;

import android.os.Handler;
import android.os.HandlerThread;
import com.davemorrissey.labs.subscaleview.SubsamplingScaleImageView;
import com.google.android.exoplayer2.C;
import io.sentry.protocol.ViewHierarchyNode;
import java.io.FileOutputStream;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.nio.charset.Charset;
import java.util.concurrent.CountDownLatch;
import org.webrtc.EglBase;
import org.webrtc.VideoFrame;

/* loaded from: classes3.dex */
public class VideoFileRenderer implements VideoSink {
    private static final String TAG = "VideoFileRenderer";
    private EglBase eglBase;
    private final HandlerThread fileThread;
    private final Handler fileThreadHandler;
    private int frameCount;
    private final int outputFileHeight;
    private final String outputFileName;
    private final int outputFileWidth;
    private final ByteBuffer outputFrameBuffer;
    private final int outputFrameSize;
    private final HandlerThread renderThread;
    private final Handler renderThreadHandler;
    private final FileOutputStream videoOutFile;
    private YuvConverter yuvConverter;

    public VideoFileRenderer(String str, int i, int i2, final EglBase.Context context) throws IOException {
        if (i % 2 == 1 || i2 % 2 == 1) {
            throw new IllegalArgumentException("Does not support uneven width or height");
        }
        this.outputFileName = str;
        this.outputFileWidth = i;
        this.outputFileHeight = i2;
        int i3 = ((i * i2) * 3) / 2;
        this.outputFrameSize = i3;
        this.outputFrameBuffer = ByteBuffer.allocateDirect(i3);
        FileOutputStream fileOutputStream = new FileOutputStream(str);
        this.videoOutFile = fileOutputStream;
        fileOutputStream.write(("YUV4MPEG2 C420 W" + i + " H" + i2 + " Ip F30:1 A1:1\n").getBytes(Charset.forName(C.ASCII_NAME)));
        HandlerThread handlerThread = new HandlerThread("VideoFileRendererRenderThread");
        this.renderThread = handlerThread;
        handlerThread.start();
        Handler handler = new Handler(handlerThread.getLooper());
        this.renderThreadHandler = handler;
        HandlerThread handlerThread2 = new HandlerThread("VideoFileRendererFileThread");
        this.fileThread = handlerThread2;
        handlerThread2.start();
        this.fileThreadHandler = new Handler(handlerThread2.getLooper());
        ThreadUtils.invokeAtFrontUninterruptibly(handler, new Runnable() { // from class: org.webrtc.VideoFileRenderer.1
            @Override // java.lang.Runnable
            public void run() {
                VideoFileRenderer.this.eglBase = EglBase.create(context, EglBase.CONFIG_PIXEL_BUFFER);
                VideoFileRenderer.this.eglBase.createDummyPbufferSurface();
                VideoFileRenderer.this.eglBase.makeCurrent();
                VideoFileRenderer.this.yuvConverter = new YuvConverter();
            }
        });
    }

    @Override // org.webrtc.VideoSink
    public void onFrame(final VideoFrame videoFrame) {
        videoFrame.retain();
        this.renderThreadHandler.post(new Runnable() { // from class: org.webrtc.VideoFileRenderer$$ExternalSyntheticLambda2
            @Override // java.lang.Runnable
            public final void run() {
                VideoFileRenderer.this.m7450lambda$onFrame$0$orgwebrtcVideoFileRenderer(videoFrame);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: renderFrameOnRenderThread, reason: merged with bridge method [inline-methods] */
    public void m7450lambda$onFrame$0$orgwebrtcVideoFileRenderer(final VideoFrame videoFrame) {
        VideoFrame.Buffer buffer = videoFrame.getBuffer();
        int i = videoFrame.getRotation() % SubsamplingScaleImageView.ORIENTATION_180 == 0 ? this.outputFileWidth : this.outputFileHeight;
        int i2 = videoFrame.getRotation() % SubsamplingScaleImageView.ORIENTATION_180 == 0 ? this.outputFileHeight : this.outputFileWidth;
        float width = buffer.getWidth() / buffer.getHeight();
        float f = i / i2;
        int width2 = buffer.getWidth();
        int height = buffer.getHeight();
        if (f > width) {
            height = (int) (height * (width / f));
        } else {
            width2 = (int) (width2 * (f / width));
        }
        VideoFrame.Buffer cropAndScale = buffer.cropAndScale((buffer.getWidth() - width2) / 2, (buffer.getHeight() - height) / 2, width2, height, i, i2);
        videoFrame.release();
        final VideoFrame.I420Buffer i420 = cropAndScale.toI420();
        cropAndScale.release();
        this.fileThreadHandler.post(new Runnable() { // from class: org.webrtc.VideoFileRenderer$$ExternalSyntheticLambda3
            @Override // java.lang.Runnable
            public final void run() {
                VideoFileRenderer.this.m7453lambda$renderFrameOnRenderThread$1$orgwebrtcVideoFileRenderer(i420, videoFrame);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: lambda$renderFrameOnRenderThread$1$org-webrtc-VideoFileRenderer, reason: not valid java name */
    public /* synthetic */ void m7453lambda$renderFrameOnRenderThread$1$orgwebrtcVideoFileRenderer(VideoFrame.I420Buffer i420Buffer, VideoFrame videoFrame) {
        YuvHelper.I420Rotate(i420Buffer.getDataY(), i420Buffer.getStrideY(), i420Buffer.getDataU(), i420Buffer.getStrideU(), i420Buffer.getDataV(), i420Buffer.getStrideV(), this.outputFrameBuffer, i420Buffer.getWidth(), i420Buffer.getHeight(), videoFrame.getRotation());
        i420Buffer.release();
        try {
            this.videoOutFile.write("FRAME\n".getBytes(Charset.forName(C.ASCII_NAME)));
            this.videoOutFile.write(this.outputFrameBuffer.array(), this.outputFrameBuffer.arrayOffset(), this.outputFrameSize);
            this.frameCount++;
        } catch (IOException e) {
            throw new RuntimeException("Error writing video to disk", e);
        }
    }

    public void release() {
        final CountDownLatch countDownLatch = new CountDownLatch(1);
        this.renderThreadHandler.post(new Runnable() { // from class: org.webrtc.VideoFileRenderer$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                VideoFileRenderer.this.m7451lambda$release$2$orgwebrtcVideoFileRenderer(countDownLatch);
            }
        });
        ThreadUtils.awaitUninterruptibly(countDownLatch);
        this.fileThreadHandler.post(new Runnable() { // from class: org.webrtc.VideoFileRenderer$$ExternalSyntheticLambda1
            @Override // java.lang.Runnable
            public final void run() {
                VideoFileRenderer.this.m7452lambda$release$3$orgwebrtcVideoFileRenderer();
            }
        });
        try {
            this.fileThread.join();
        } catch (InterruptedException e) {
            Thread.currentThread().interrupt();
            Logging.e(TAG, "Interrupted while waiting for the write to disk to complete.", e);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: lambda$release$2$org-webrtc-VideoFileRenderer, reason: not valid java name */
    public /* synthetic */ void m7451lambda$release$2$orgwebrtcVideoFileRenderer(CountDownLatch countDownLatch) {
        this.yuvConverter.release();
        this.eglBase.release();
        this.renderThread.quit();
        countDownLatch.countDown();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: lambda$release$3$org-webrtc-VideoFileRenderer, reason: not valid java name */
    public /* synthetic */ void m7452lambda$release$3$orgwebrtcVideoFileRenderer() {
        try {
            this.videoOutFile.close();
            Logging.d(TAG, "Video written to disk as " + this.outputFileName + ". The number of frames is " + this.frameCount + " and the dimensions of the frames are " + this.outputFileWidth + ViewHierarchyNode.JsonKeys.X + this.outputFileHeight + ".");
            this.fileThread.quit();
        } catch (IOException e) {
            throw new RuntimeException("Error closing output file", e);
        }
    }
}
