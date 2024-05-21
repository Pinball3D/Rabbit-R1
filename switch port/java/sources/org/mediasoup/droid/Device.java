package org.mediasoup.droid;

import org.mediasoup.droid.PeerConnection;
import org.mediasoup.droid.RecvTransport;
import org.mediasoup.droid.SendTransport;
import org.webrtc.PeerConnection;

/* loaded from: classes3.dex */
public class Device {
    private long mNativeDevice = nativeNewDevice();

    private static native boolean nativeCanProduce(long j, String str);

    private static native RecvTransport nativeCreateRecvTransport(long j, RecvTransport.Listener listener, String str, String str2, String str3, String str4, String str5, PeerConnection.RTCConfiguration rTCConfiguration, long j2, String str6);

    private static native SendTransport nativeCreateSendTransport(long j, SendTransport.Listener listener, String str, String str2, String str3, String str4, String str5, PeerConnection.RTCConfiguration rTCConfiguration, long j2, String str6);

    private static native void nativeFreeDevice(long j);

    private static native String nativeGetRtpCapabilities(long j);

    private static native String nativeGetSctpCapabilities(long j);

    private static native boolean nativeIsLoaded(long j);

    private static native void nativeLoad(long j, String str, PeerConnection.RTCConfiguration rTCConfiguration, long j2);

    private static native long nativeNewDevice();

    public void dispose() {
        checkDeviceExists();
        nativeFreeDevice(this.mNativeDevice);
        this.mNativeDevice = 0L;
    }

    public void load(String str, PeerConnection.Options options) throws MediasoupException {
        checkDeviceExists();
        nativeLoad(this.mNativeDevice, str, options != null ? options.mRTCConfig : null, (options == null || options.mFactory == null) ? 0L : options.mFactory.getNativePeerConnectionFactory());
    }

    public boolean isLoaded() {
        checkDeviceExists();
        return nativeIsLoaded(this.mNativeDevice);
    }

    public String getRtpCapabilities() throws MediasoupException {
        checkDeviceExists();
        return nativeGetRtpCapabilities(this.mNativeDevice);
    }

    public String getSctpCapabilities() throws MediasoupException {
        checkDeviceExists();
        return nativeGetSctpCapabilities(this.mNativeDevice);
    }

    public boolean canProduce(String str) throws MediasoupException {
        checkDeviceExists();
        return nativeCanProduce(this.mNativeDevice, str);
    }

    public SendTransport createSendTransport(SendTransport.Listener listener, String str, String str2, String str3, String str4) throws MediasoupException {
        return createSendTransport(listener, str, str2, str3, str4, null, null, null);
    }

    public SendTransport createSendTransport(SendTransport.Listener listener, String str, String str2, String str3, String str4, String str5) throws MediasoupException {
        return createSendTransport(listener, str, str2, str3, str4, str5, null, null);
    }

    public SendTransport createSendTransport(SendTransport.Listener listener, String str, String str2, String str3, String str4, String str5, PeerConnection.Options options, String str6) throws MediasoupException {
        checkDeviceExists();
        return nativeCreateSendTransport(this.mNativeDevice, listener, str, str2, str3, str4, str5, options != null ? options.mRTCConfig : null, (options == null || options.mFactory == null) ? 0L : options.mFactory.getNativePeerConnectionFactory(), str6);
    }

    public RecvTransport createRecvTransport(RecvTransport.Listener listener, String str, String str2, String str3, String str4) throws MediasoupException {
        return createRecvTransport(listener, str, str2, str3, str4, null, null, null);
    }

    public RecvTransport createRecvTransport(RecvTransport.Listener listener, String str, String str2, String str3, String str4, String str5) throws MediasoupException {
        return createRecvTransport(listener, str, str2, str3, str4, str5, null, null);
    }

    public RecvTransport createRecvTransport(RecvTransport.Listener listener, String str, String str2, String str3, String str4, String str5, PeerConnection.Options options, String str6) throws MediasoupException {
        checkDeviceExists();
        return nativeCreateRecvTransport(this.mNativeDevice, listener, str, str2, str3, str4, str5, options != null ? options.mRTCConfig : null, (options == null || options.mFactory == null) ? 0L : options.mFactory.getNativePeerConnectionFactory(), str6);
    }

    private void checkDeviceExists() {
        if (this.mNativeDevice == 0) {
            throw new IllegalStateException("Device has been disposed.");
        }
    }
}
