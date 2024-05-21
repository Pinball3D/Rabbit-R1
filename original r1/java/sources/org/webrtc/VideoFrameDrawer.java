package org.webrtc;

import android.graphics.Matrix;
import android.graphics.Point;
import android.opengl.GLES20;
import io.sentry.protocol.ViewHierarchyNode;
import java.nio.ByteBuffer;
import org.webrtc.RendererCommon;
import org.webrtc.VideoFrame;

/* loaded from: classes3.dex */
public class VideoFrameDrawer {
    public static final String TAG = "VideoFrameDrawer";
    static final float[] srcPoints = {0.0f, 0.0f, 1.0f, 0.0f, 0.0f, 1.0f};
    private VideoFrame lastI420Frame;
    private int renderHeight;
    private int renderWidth;
    private final float[] dstPoints = new float[6];
    private final Point renderSize = new Point();
    private final YuvUploader yuvUploader = new YuvUploader(null);
    private final Matrix renderMatrix = new Matrix();

    public static void drawTexture(RendererCommon.GlDrawer glDrawer, VideoFrame.TextureBuffer textureBuffer, Matrix matrix, int i, int i2, int i3, int i4, int i5, int i6) {
        Matrix matrix2 = new Matrix(textureBuffer.getTransformMatrix());
        matrix2.preConcat(matrix);
        float[] convertMatrixFromAndroidGraphicsMatrix = RendererCommon.convertMatrixFromAndroidGraphicsMatrix(matrix2);
        int i7 = AnonymousClass1.$SwitchMap$org$webrtc$VideoFrame$TextureBuffer$Type[textureBuffer.getType().ordinal()];
        if (i7 == 1) {
            glDrawer.drawOes(textureBuffer.getTextureId(), convertMatrixFromAndroidGraphicsMatrix, i, i2, i3, i4, i5, i6);
        } else {
            if (i7 == 2) {
                glDrawer.drawRgb(textureBuffer.getTextureId(), convertMatrixFromAndroidGraphicsMatrix, i, i2, i3, i4, i5, i6);
                return;
            }
            throw new RuntimeException("Unknown texture type.");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: org.webrtc.VideoFrameDrawer$1, reason: invalid class name */
    /* loaded from: classes3.dex */
    public static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$org$webrtc$VideoFrame$TextureBuffer$Type;

        static {
            int[] iArr = new int[VideoFrame.TextureBuffer.Type.values().length];
            $SwitchMap$org$webrtc$VideoFrame$TextureBuffer$Type = iArr;
            try {
                iArr[VideoFrame.TextureBuffer.Type.OES.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$org$webrtc$VideoFrame$TextureBuffer$Type[VideoFrame.TextureBuffer.Type.RGB.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes3.dex */
    public static class YuvUploader {
        private ByteBuffer copyBuffer;
        private int[] yuvTextures;

        public int[] getYuvTextures() {
            return this.yuvTextures;
        }

        private YuvUploader() {
        }

        /* synthetic */ YuvUploader(AnonymousClass1 anonymousClass1) {
            this();
        }

        public int[] uploadYuvData(int i, int i2, int[] iArr, ByteBuffer[] byteBufferArr) {
            ByteBuffer byteBuffer;
            ByteBuffer byteBuffer2;
            int i3 = i / 2;
            int[] iArr2 = {i, i3, i3};
            int i4 = i2 / 2;
            int[] iArr3 = {i2, i4, i4};
            int i5 = 0;
            for (int i6 = 0; i6 < 3; i6++) {
                int i7 = iArr[i6];
                int i8 = iArr2[i6];
                if (i7 > i8) {
                    i5 = Math.max(i5, i8 * iArr3[i6]);
                }
            }
            if (i5 > 0 && ((byteBuffer2 = this.copyBuffer) == null || byteBuffer2.capacity() < i5)) {
                this.copyBuffer = ByteBuffer.allocateDirect(i5);
            }
            if (this.yuvTextures == null) {
                this.yuvTextures = new int[3];
                for (int i9 = 0; i9 < 3; i9++) {
                    this.yuvTextures[i9] = GlUtil.generateTexture(3553);
                }
            }
            for (int i10 = 0; i10 < 3; i10++) {
                GLES20.glActiveTexture(33984 + i10);
                GLES20.glBindTexture(3553, this.yuvTextures[i10]);
                int i11 = iArr[i10];
                int i12 = iArr2[i10];
                if (i11 == i12) {
                    byteBuffer = byteBufferArr[i10];
                } else {
                    YuvHelper.copyPlane(byteBufferArr[i10], i11, this.copyBuffer, i12, i12, iArr3[i10]);
                    byteBuffer = this.copyBuffer;
                }
                GLES20.glTexImage2D(3553, 0, 6409, iArr2[i10], iArr3[i10], 0, 6409, 5121, byteBuffer);
            }
            return this.yuvTextures;
        }

        public int[] uploadFromBuffer(VideoFrame.I420Buffer i420Buffer) {
            return uploadYuvData(i420Buffer.getWidth(), i420Buffer.getHeight(), new int[]{i420Buffer.getStrideY(), i420Buffer.getStrideU(), i420Buffer.getStrideV()}, new ByteBuffer[]{i420Buffer.getDataY(), i420Buffer.getDataU(), i420Buffer.getDataV()});
        }

        public void release() {
            this.copyBuffer = null;
            int[] iArr = this.yuvTextures;
            if (iArr != null) {
                GLES20.glDeleteTextures(3, iArr, 0);
                this.yuvTextures = null;
            }
        }
    }

    private static int distance(float f, float f2, float f3, float f4) {
        return (int) Math.round(Math.hypot(f3 - f, f4 - f2));
    }

    private void calculateTransformedRenderSize(int i, int i2, Matrix matrix) {
        if (matrix == null) {
            this.renderWidth = i;
            this.renderHeight = i2;
            return;
        }
        matrix.mapPoints(this.dstPoints, srcPoints);
        for (int i3 = 0; i3 < 3; i3++) {
            float[] fArr = this.dstPoints;
            int i4 = i3 * 2;
            fArr[i4] = fArr[i4] * i;
            int i5 = i4 + 1;
            fArr[i5] = fArr[i5] * i2;
        }
        float[] fArr2 = this.dstPoints;
        this.renderWidth = distance(fArr2[0], fArr2[1], fArr2[2], fArr2[3]);
        float[] fArr3 = this.dstPoints;
        this.renderHeight = distance(fArr3[0], fArr3[1], fArr3[4], fArr3[5]);
    }

    public void drawFrame(VideoFrame videoFrame, RendererCommon.GlDrawer glDrawer) {
        drawFrame(videoFrame, glDrawer, null);
    }

    public void drawFrame(VideoFrame videoFrame, RendererCommon.GlDrawer glDrawer, Matrix matrix) {
        drawFrame(videoFrame, glDrawer, matrix, 0, 0, videoFrame.getRotatedWidth(), videoFrame.getRotatedHeight());
    }

    public void drawFrame(VideoFrame videoFrame, RendererCommon.GlDrawer glDrawer, Matrix matrix, int i, int i2, int i3, int i4) {
        calculateTransformedRenderSize(videoFrame.getRotatedWidth(), videoFrame.getRotatedHeight(), matrix);
        if (this.renderWidth <= 0 || this.renderHeight <= 0) {
            Logging.w(TAG, "Illegal frame size: " + this.renderWidth + ViewHierarchyNode.JsonKeys.X + this.renderHeight);
            return;
        }
        boolean z = videoFrame.getBuffer() instanceof VideoFrame.TextureBuffer;
        this.renderMatrix.reset();
        this.renderMatrix.preTranslate(0.5f, 0.5f);
        if (!z) {
            this.renderMatrix.preScale(1.0f, -1.0f);
        }
        this.renderMatrix.preRotate(videoFrame.getRotation());
        this.renderMatrix.preTranslate(-0.5f, -0.5f);
        if (matrix != null) {
            this.renderMatrix.preConcat(matrix);
        }
        if (z) {
            this.lastI420Frame = null;
            drawTexture(glDrawer, (VideoFrame.TextureBuffer) videoFrame.getBuffer(), this.renderMatrix, this.renderWidth, this.renderHeight, i, i2, i3, i4);
            return;
        }
        if (videoFrame != this.lastI420Frame) {
            this.lastI420Frame = videoFrame;
            VideoFrame.I420Buffer i420 = videoFrame.getBuffer().toI420();
            this.yuvUploader.uploadFromBuffer(i420);
            i420.release();
        }
        glDrawer.drawYuv(this.yuvUploader.getYuvTextures(), RendererCommon.convertMatrixFromAndroidGraphicsMatrix(this.renderMatrix), this.renderWidth, this.renderHeight, i, i2, i3, i4);
    }

    public VideoFrame.Buffer prepareBufferForViewportSize(VideoFrame.Buffer buffer, int i, int i2) {
        buffer.retain();
        return buffer;
    }

    public void release() {
        this.yuvUploader.release();
        this.lastI420Frame = null;
    }
}
