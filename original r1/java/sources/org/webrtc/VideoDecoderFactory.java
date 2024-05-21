package org.webrtc;

/* loaded from: classes3.dex */
public interface VideoDecoderFactory {
    VideoDecoder createDecoder(VideoCodecInfo videoCodecInfo);

    default VideoCodecInfo[] getSupportedCodecs() {
        return new VideoCodecInfo[0];
    }
}
