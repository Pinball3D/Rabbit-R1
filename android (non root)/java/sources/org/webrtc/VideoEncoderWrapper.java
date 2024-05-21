package org.webrtc;

import org.webrtc.VideoEncoder;

/* loaded from: classes3.dex */
class VideoEncoderWrapper {
    /* JADX INFO: Access modifiers changed from: private */
    public static native void nativeOnEncodedFrame(long j, EncodedImage encodedImage);

    VideoEncoderWrapper() {
    }

    static boolean getScalingSettingsOn(VideoEncoder.ScalingSettings scalingSettings) {
        return scalingSettings.on;
    }

    static Integer getScalingSettingsLow(VideoEncoder.ScalingSettings scalingSettings) {
        return scalingSettings.low;
    }

    static Integer getScalingSettingsHigh(VideoEncoder.ScalingSettings scalingSettings) {
        return scalingSettings.high;
    }

    static VideoEncoder.Callback createEncoderCallback(final long j) {
        return new VideoEncoder.Callback() { // from class: org.webrtc.VideoEncoderWrapper$$ExternalSyntheticLambda0
            @Override // org.webrtc.VideoEncoder.Callback
            public final void onEncodedFrame(EncodedImage encodedImage, VideoEncoder.CodecSpecificInfo codecSpecificInfo) {
                VideoEncoderWrapper.nativeOnEncodedFrame(j, encodedImage);
            }
        };
    }
}
