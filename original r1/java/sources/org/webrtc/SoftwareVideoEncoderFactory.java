package org.webrtc;

import java.util.ArrayList;
import java.util.HashMap;

/* loaded from: classes3.dex */
public class SoftwareVideoEncoderFactory implements VideoEncoderFactory {
    @Override // org.webrtc.VideoEncoderFactory
    public VideoEncoder createEncoder(VideoCodecInfo videoCodecInfo) {
        String name = videoCodecInfo.getName();
        if (name.equalsIgnoreCase(VideoCodecMimeType.VP8.toSdpCodecName())) {
            return new LibvpxVp8Encoder();
        }
        if (name.equalsIgnoreCase(VideoCodecMimeType.VP9.toSdpCodecName()) && LibvpxVp9Encoder.nativeIsSupported()) {
            return new LibvpxVp9Encoder();
        }
        if (name.equalsIgnoreCase(VideoCodecMimeType.AV1.toSdpCodecName()) && LibaomAv1Encoder.nativeIsSupported()) {
            return new LibaomAv1Encoder();
        }
        return null;
    }

    @Override // org.webrtc.VideoEncoderFactory
    public VideoCodecInfo[] getSupportedCodecs() {
        return supportedCodecs();
    }

    static VideoCodecInfo[] supportedCodecs() {
        ArrayList arrayList = new ArrayList();
        arrayList.add(new VideoCodecInfo(VideoCodecMimeType.VP8.toSdpCodecName(), new HashMap()));
        if (LibvpxVp9Encoder.nativeIsSupported()) {
            arrayList.add(new VideoCodecInfo(VideoCodecMimeType.VP9.toSdpCodecName(), new HashMap()));
        }
        if (LibaomAv1Encoder.nativeIsSupported()) {
            arrayList.add(new VideoCodecInfo(VideoCodecMimeType.AV1.toSdpCodecName(), new HashMap()));
        }
        return (VideoCodecInfo[]) arrayList.toArray(new VideoCodecInfo[arrayList.size()]);
    }
}
