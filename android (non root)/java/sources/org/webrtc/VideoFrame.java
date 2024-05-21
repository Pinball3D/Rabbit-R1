package org.webrtc;

import android.graphics.Matrix;
import com.davemorrissey.labs.subscaleview.SubsamplingScaleImageView;
import java.nio.ByteBuffer;

/* loaded from: classes3.dex */
public class VideoFrame implements RefCounted {
    private final Buffer buffer;
    private final int rotation;
    private final long timestampNs;

    /* loaded from: classes3.dex */
    public interface Buffer extends RefCounted {
        Buffer cropAndScale(int i, int i2, int i3, int i4, int i5, int i6);

        default int getBufferType() {
            return 0;
        }

        int getHeight();

        int getWidth();

        @Override // org.webrtc.RefCounted
        void release();

        @Override // org.webrtc.RefCounted
        void retain();

        I420Buffer toI420();
    }

    /* loaded from: classes3.dex */
    public interface I420Buffer extends Buffer {
        @Override // org.webrtc.VideoFrame.Buffer
        default int getBufferType() {
            return 1;
        }

        ByteBuffer getDataU();

        ByteBuffer getDataV();

        ByteBuffer getDataY();

        int getStrideU();

        int getStrideV();

        int getStrideY();
    }

    public Buffer getBuffer() {
        return this.buffer;
    }

    public int getRotation() {
        return this.rotation;
    }

    public long getTimestampNs() {
        return this.timestampNs;
    }

    /* loaded from: classes3.dex */
    public interface TextureBuffer extends Buffer {
        int getTextureId();

        Matrix getTransformMatrix();

        Type getType();

        /* loaded from: classes3.dex */
        public enum Type {
            OES(36197),
            RGB(3553);

            private final int glTarget;

            public int getGlTarget() {
                return this.glTarget;
            }

            Type(int i) {
                this.glTarget = i;
            }
        }
    }

    public VideoFrame(Buffer buffer, int i, long j) {
        if (buffer == null) {
            throw new IllegalArgumentException("buffer not allowed to be null");
        }
        if (i % 90 != 0) {
            throw new IllegalArgumentException("rotation must be a multiple of 90");
        }
        this.buffer = buffer;
        this.rotation = i;
        this.timestampNs = j;
    }

    public int getRotatedWidth() {
        if (this.rotation % SubsamplingScaleImageView.ORIENTATION_180 == 0) {
            return this.buffer.getWidth();
        }
        return this.buffer.getHeight();
    }

    public int getRotatedHeight() {
        if (this.rotation % SubsamplingScaleImageView.ORIENTATION_180 == 0) {
            return this.buffer.getHeight();
        }
        return this.buffer.getWidth();
    }

    @Override // org.webrtc.RefCounted
    public void retain() {
        this.buffer.retain();
    }

    @Override // org.webrtc.RefCounted
    public void release() {
        this.buffer.release();
    }
}
