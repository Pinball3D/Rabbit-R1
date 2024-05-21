package org.webrtc;

/* loaded from: classes3.dex */
public class BuiltinAudioEncoderFactoryFactory implements AudioEncoderFactoryFactory {
    private static native long nativeCreateBuiltinAudioEncoderFactory();

    @Override // org.webrtc.AudioEncoderFactoryFactory
    public long createNativeAudioEncoderFactory() {
        return nativeCreateBuiltinAudioEncoderFactory();
    }
}
