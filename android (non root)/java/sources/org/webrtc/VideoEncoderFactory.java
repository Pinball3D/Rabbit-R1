package org.webrtc;

/* loaded from: classes3.dex */
public interface VideoEncoderFactory {

    /* loaded from: classes3.dex */
    public interface VideoEncoderSelector {
        VideoCodecInfo onAvailableBitrate(int i);

        void onCurrentEncoder(VideoCodecInfo videoCodecInfo);

        VideoCodecInfo onEncoderBroken();
    }

    VideoEncoder createEncoder(VideoCodecInfo videoCodecInfo);

    default VideoEncoderSelector getEncoderSelector() {
        return null;
    }

    VideoCodecInfo[] getSupportedCodecs();

    default VideoCodecInfo[] getImplementations() {
        return getSupportedCodecs();
    }
}
