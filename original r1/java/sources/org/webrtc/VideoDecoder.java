package org.webrtc;

/* loaded from: classes3.dex */
public interface VideoDecoder {

    /* loaded from: classes3.dex */
    public interface Callback {
        void onDecodedFrame(VideoFrame videoFrame, Integer num, Integer num2);
    }

    default long createNativeVideoDecoder() {
        return 0L;
    }

    VideoCodecStatus decode(EncodedImage encodedImage, DecodeInfo decodeInfo);

    String getImplementationName();

    VideoCodecStatus initDecode(Settings settings, Callback callback);

    VideoCodecStatus release();

    /* loaded from: classes3.dex */
    public static class Settings {
        public final int height;
        public final int numberOfCores;
        public final int width;

        public Settings(int i, int i2, int i3) {
            this.numberOfCores = i;
            this.width = i2;
            this.height = i3;
        }
    }

    /* loaded from: classes3.dex */
    public static class DecodeInfo {
        public final boolean isMissingFrames;
        public final long renderTimeMs;

        public DecodeInfo(boolean z, long j) {
            this.isMissingFrames = z;
            this.renderTimeMs = j;
        }
    }
}
