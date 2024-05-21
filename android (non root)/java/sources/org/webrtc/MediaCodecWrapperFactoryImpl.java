package org.webrtc;

import android.media.MediaCodec;
import android.media.MediaCrypto;
import android.media.MediaFormat;
import android.os.Bundle;
import android.view.Surface;
import java.io.IOException;
import java.nio.ByteBuffer;

/* loaded from: classes3.dex */
class MediaCodecWrapperFactoryImpl implements MediaCodecWrapperFactory {

    /* loaded from: classes3.dex */
    private static class MediaCodecWrapperImpl implements MediaCodecWrapper {
        private final MediaCodec mediaCodec;

        public MediaCodecWrapperImpl(MediaCodec mediaCodec) {
            this.mediaCodec = mediaCodec;
        }

        @Override // org.webrtc.MediaCodecWrapper
        public void configure(MediaFormat mediaFormat, Surface surface, MediaCrypto mediaCrypto, int i) {
            this.mediaCodec.configure(mediaFormat, surface, mediaCrypto, i);
        }

        @Override // org.webrtc.MediaCodecWrapper
        public void start() {
            this.mediaCodec.start();
        }

        @Override // org.webrtc.MediaCodecWrapper
        public void flush() {
            this.mediaCodec.flush();
        }

        @Override // org.webrtc.MediaCodecWrapper
        public void stop() {
            this.mediaCodec.stop();
        }

        @Override // org.webrtc.MediaCodecWrapper
        public void release() {
            this.mediaCodec.release();
        }

        @Override // org.webrtc.MediaCodecWrapper
        public int dequeueInputBuffer(long j) {
            return this.mediaCodec.dequeueInputBuffer(j);
        }

        @Override // org.webrtc.MediaCodecWrapper
        public void queueInputBuffer(int i, int i2, int i3, long j, int i4) {
            this.mediaCodec.queueInputBuffer(i, i2, i3, j, i4);
        }

        @Override // org.webrtc.MediaCodecWrapper
        public int dequeueOutputBuffer(MediaCodec.BufferInfo bufferInfo, long j) {
            return this.mediaCodec.dequeueOutputBuffer(bufferInfo, j);
        }

        @Override // org.webrtc.MediaCodecWrapper
        public void releaseOutputBuffer(int i, boolean z) {
            this.mediaCodec.releaseOutputBuffer(i, z);
        }

        @Override // org.webrtc.MediaCodecWrapper
        public MediaFormat getOutputFormat() {
            return this.mediaCodec.getOutputFormat();
        }

        @Override // org.webrtc.MediaCodecWrapper
        public ByteBuffer[] getInputBuffers() {
            return this.mediaCodec.getInputBuffers();
        }

        @Override // org.webrtc.MediaCodecWrapper
        public ByteBuffer[] getOutputBuffers() {
            return this.mediaCodec.getOutputBuffers();
        }

        @Override // org.webrtc.MediaCodecWrapper
        public Surface createInputSurface() {
            return this.mediaCodec.createInputSurface();
        }

        @Override // org.webrtc.MediaCodecWrapper
        public void setParameters(Bundle bundle) {
            this.mediaCodec.setParameters(bundle);
        }
    }

    @Override // org.webrtc.MediaCodecWrapperFactory
    public MediaCodecWrapper createByCodecName(String str) throws IOException {
        return new MediaCodecWrapperImpl(MediaCodec.createByCodecName(str));
    }
}
