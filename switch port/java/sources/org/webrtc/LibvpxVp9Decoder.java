package org.webrtc;

/* loaded from: classes3.dex */
public class LibvpxVp9Decoder extends WrappedNativeVideoDecoder {
    static native long nativeCreateDecoder();

    /* JADX INFO: Access modifiers changed from: package-private */
    public static native boolean nativeIsSupported();

    @Override // org.webrtc.WrappedNativeVideoDecoder, org.webrtc.VideoDecoder
    public long createNativeVideoDecoder() {
        return nativeCreateDecoder();
    }
}
