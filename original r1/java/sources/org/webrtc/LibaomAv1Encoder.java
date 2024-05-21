package org.webrtc;

/* loaded from: classes3.dex */
public class LibaomAv1Encoder extends WrappedNativeVideoEncoder {
    static native long nativeCreateEncoder();

    /* JADX INFO: Access modifiers changed from: package-private */
    public static native boolean nativeIsSupported();

    @Override // org.webrtc.WrappedNativeVideoEncoder, org.webrtc.VideoEncoder
    public boolean isHardwareEncoder() {
        return false;
    }

    @Override // org.webrtc.WrappedNativeVideoEncoder, org.webrtc.VideoEncoder
    public long createNativeVideoEncoder() {
        return nativeCreateEncoder();
    }
}
