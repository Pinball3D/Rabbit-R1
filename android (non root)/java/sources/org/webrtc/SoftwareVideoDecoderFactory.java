package org.webrtc;

import java.util.ArrayList;
import java.util.HashMap;

/* loaded from: classes3.dex */
public class SoftwareVideoDecoderFactory implements VideoDecoderFactory {
    @Override // org.webrtc.VideoDecoderFactory
    public VideoDecoder createDecoder(VideoCodecInfo videoCodecInfo) {
        String name = videoCodecInfo.getName();
        if (name.equalsIgnoreCase(VideoCodecMimeType.VP8.toSdpCodecName())) {
            return new LibvpxVp8Decoder();
        }
        if (name.equalsIgnoreCase(VideoCodecMimeType.VP9.toSdpCodecName()) && LibvpxVp9Decoder.nativeIsSupported()) {
            return new LibvpxVp9Decoder();
        }
        if (name.equalsIgnoreCase(VideoCodecMimeType.AV1.toSdpCodecName()) && LibaomAv1Decoder.nativeIsSupported()) {
            return new LibaomAv1Decoder();
        }
        return null;
    }

    @Override // org.webrtc.VideoDecoderFactory
    public VideoCodecInfo[] getSupportedCodecs() {
        return supportedCodecs();
    }

    static VideoCodecInfo[] supportedCodecs() {
        ArrayList arrayList = new ArrayList();
        arrayList.add(new VideoCodecInfo(VideoCodecMimeType.VP8.toSdpCodecName(), new HashMap()));
        if (LibvpxVp9Decoder.nativeIsSupported()) {
            arrayList.add(new VideoCodecInfo(VideoCodecMimeType.VP9.toSdpCodecName(), new HashMap()));
        }
        if (LibaomAv1Decoder.nativeIsSupported()) {
            arrayList.add(new VideoCodecInfo(VideoCodecMimeType.AV1.toSdpCodecName(), new HashMap()));
        }
        return (VideoCodecInfo[]) arrayList.toArray(new VideoCodecInfo[arrayList.size()]);
    }
}
