package org.webrtc;

import android.graphics.Matrix;
import android.os.Handler;
import java.util.concurrent.Callable;
import org.webrtc.VideoFrame;

/* loaded from: classes3.dex */
public class TextureBufferImpl implements VideoFrame.TextureBuffer {
    private final int height;
    private final int id;
    private final RefCountDelegate refCountDelegate;
    private final RefCountMonitor refCountMonitor;
    private final Handler toI420Handler;
    private final Matrix transformMatrix;
    private final VideoFrame.TextureBuffer.Type type;
    private final int unscaledHeight;
    private final int unscaledWidth;
    private final int width;
    private final YuvConverter yuvConverter;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public interface RefCountMonitor {
        void onDestroy(TextureBufferImpl textureBufferImpl);

        void onRelease(TextureBufferImpl textureBufferImpl);

        void onRetain(TextureBufferImpl textureBufferImpl);
    }

    @Override // org.webrtc.VideoFrame.Buffer
    public int getHeight() {
        return this.height;
    }

    @Override // org.webrtc.VideoFrame.TextureBuffer
    public int getTextureId() {
        return this.id;
    }

    public Handler getToI420Handler() {
        return this.toI420Handler;
    }

    @Override // org.webrtc.VideoFrame.TextureBuffer
    public Matrix getTransformMatrix() {
        return this.transformMatrix;
    }

    @Override // org.webrtc.VideoFrame.TextureBuffer
    public VideoFrame.TextureBuffer.Type getType() {
        return this.type;
    }

    public int getUnscaledHeight() {
        return this.unscaledHeight;
    }

    public int getUnscaledWidth() {
        return this.unscaledWidth;
    }

    @Override // org.webrtc.VideoFrame.Buffer
    public int getWidth() {
        return this.width;
    }

    public YuvConverter getYuvConverter() {
        return this.yuvConverter;
    }

    public TextureBufferImpl(int i, int i2, VideoFrame.TextureBuffer.Type type, int i3, Matrix matrix, Handler handler, YuvConverter yuvConverter, final Runnable runnable) {
        this(i, i2, i, i2, type, i3, matrix, handler, yuvConverter, new RefCountMonitor() { // from class: org.webrtc.TextureBufferImpl.1
            @Override // org.webrtc.TextureBufferImpl.RefCountMonitor
            public void onRelease(TextureBufferImpl textureBufferImpl) {
            }

            @Override // org.webrtc.TextureBufferImpl.RefCountMonitor
            public void onRetain(TextureBufferImpl textureBufferImpl) {
            }

            @Override // org.webrtc.TextureBufferImpl.RefCountMonitor
            public void onDestroy(TextureBufferImpl textureBufferImpl) {
                Runnable runnable2 = runnable;
                if (runnable2 != null) {
                    runnable2.run();
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public TextureBufferImpl(int i, int i2, VideoFrame.TextureBuffer.Type type, int i3, Matrix matrix, Handler handler, YuvConverter yuvConverter, RefCountMonitor refCountMonitor) {
        this(i, i2, i, i2, type, i3, matrix, handler, yuvConverter, refCountMonitor);
    }

    private TextureBufferImpl(int i, int i2, int i3, int i4, VideoFrame.TextureBuffer.Type type, int i5, Matrix matrix, Handler handler, YuvConverter yuvConverter, final RefCountMonitor refCountMonitor) {
        this.unscaledWidth = i;
        this.unscaledHeight = i2;
        this.width = i3;
        this.height = i4;
        this.type = type;
        this.id = i5;
        this.transformMatrix = matrix;
        this.toI420Handler = handler;
        this.yuvConverter = yuvConverter;
        this.refCountDelegate = new RefCountDelegate(new Runnable() { // from class: org.webrtc.TextureBufferImpl$$ExternalSyntheticLambda1
            @Override // java.lang.Runnable
            public final void run() {
                TextureBufferImpl.this.m7448lambda$new$0$orgwebrtcTextureBufferImpl(refCountMonitor);
            }
        });
        this.refCountMonitor = refCountMonitor;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: lambda$new$0$org-webrtc-TextureBufferImpl, reason: not valid java name */
    public /* synthetic */ void m7448lambda$new$0$orgwebrtcTextureBufferImpl(RefCountMonitor refCountMonitor) {
        refCountMonitor.onDestroy(this);
    }

    @Override // org.webrtc.VideoFrame.Buffer
    public VideoFrame.I420Buffer toI420() {
        return (VideoFrame.I420Buffer) ThreadUtils.invokeAtFrontUninterruptibly(this.toI420Handler, new Callable() { // from class: org.webrtc.TextureBufferImpl$$ExternalSyntheticLambda0
            @Override // java.util.concurrent.Callable
            public final Object call() {
                return TextureBufferImpl.this.m7449lambda$toI420$1$orgwebrtcTextureBufferImpl();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: lambda$toI420$1$org-webrtc-TextureBufferImpl, reason: not valid java name */
    public /* synthetic */ VideoFrame.I420Buffer m7449lambda$toI420$1$orgwebrtcTextureBufferImpl() throws Exception {
        return this.yuvConverter.convert(this);
    }

    @Override // org.webrtc.VideoFrame.Buffer, org.webrtc.RefCounted
    public void retain() {
        this.refCountMonitor.onRetain(this);
        this.refCountDelegate.retain();
    }

    @Override // org.webrtc.VideoFrame.Buffer, org.webrtc.RefCounted
    public void release() {
        this.refCountMonitor.onRelease(this);
        this.refCountDelegate.release();
    }

    @Override // org.webrtc.VideoFrame.Buffer
    public VideoFrame.Buffer cropAndScale(int i, int i2, int i3, int i4, int i5, int i6) {
        Matrix matrix = new Matrix();
        matrix.preTranslate(i / this.width, (r0 - (i2 + i4)) / this.height);
        matrix.preScale(i3 / this.width, i4 / this.height);
        return applyTransformMatrix(matrix, Math.round((this.unscaledWidth * i3) / this.width), Math.round((this.unscaledHeight * i4) / this.height), i5, i6);
    }

    public TextureBufferImpl applyTransformMatrix(Matrix matrix, int i, int i2) {
        return applyTransformMatrix(matrix, i, i2, i, i2);
    }

    private TextureBufferImpl applyTransformMatrix(Matrix matrix, int i, int i2, int i3, int i4) {
        Matrix matrix2 = new Matrix(this.transformMatrix);
        matrix2.preConcat(matrix);
        retain();
        return new TextureBufferImpl(i, i2, i3, i4, this.type, this.id, matrix2, this.toI420Handler, this.yuvConverter, new RefCountMonitor() { // from class: org.webrtc.TextureBufferImpl.2
            @Override // org.webrtc.TextureBufferImpl.RefCountMonitor
            public void onRetain(TextureBufferImpl textureBufferImpl) {
                TextureBufferImpl.this.refCountMonitor.onRetain(TextureBufferImpl.this);
            }

            @Override // org.webrtc.TextureBufferImpl.RefCountMonitor
            public void onRelease(TextureBufferImpl textureBufferImpl) {
                TextureBufferImpl.this.refCountMonitor.onRelease(TextureBufferImpl.this);
            }

            @Override // org.webrtc.TextureBufferImpl.RefCountMonitor
            public void onDestroy(TextureBufferImpl textureBufferImpl) {
                TextureBufferImpl.this.release();
            }
        });
    }
}
