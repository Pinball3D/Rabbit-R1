package org.webrtc;

import android.media.MediaCodecInfo;
import org.webrtc.EglBase;

/* loaded from: classes3.dex */
public class HardwareVideoDecoderFactory extends MediaCodecVideoDecoderFactory {
    private static final Predicate<MediaCodecInfo> defaultAllowedPredicate = new Predicate<MediaCodecInfo>() { // from class: org.webrtc.HardwareVideoDecoderFactory.1
        @Override // org.webrtc.Predicate
        public boolean test(MediaCodecInfo mediaCodecInfo) {
            return MediaCodecUtils.isHardwareAccelerated(mediaCodecInfo);
        }
    };

    @Override // org.webrtc.MediaCodecVideoDecoderFactory, org.webrtc.VideoDecoderFactory
    public /* bridge */ /* synthetic */ VideoDecoder createDecoder(VideoCodecInfo videoCodecInfo) {
        return super.createDecoder(videoCodecInfo);
    }

    @Override // org.webrtc.MediaCodecVideoDecoderFactory, org.webrtc.VideoDecoderFactory
    public /* bridge */ /* synthetic */ VideoCodecInfo[] getSupportedCodecs() {
        return super.getSupportedCodecs();
    }

    @Deprecated
    public HardwareVideoDecoderFactory() {
        this(null);
    }

    public HardwareVideoDecoderFactory(EglBase.Context context) {
        this(context, null);
    }

    public HardwareVideoDecoderFactory(EglBase.Context context, Predicate<MediaCodecInfo> predicate) {
        super(context, predicate == null ? defaultAllowedPredicate : predicate.and(defaultAllowedPredicate));
    }
}
