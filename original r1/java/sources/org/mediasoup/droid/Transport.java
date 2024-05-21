package org.mediasoup.droid;

/* loaded from: classes3.dex */
public abstract class Transport {

    /* loaded from: classes3.dex */
    public interface Listener {
        void onConnect(Transport transport, String str);

        void onConnectionStateChange(Transport transport, String str);
    }

    private native void nativeClose();

    private native String nativeGetAppData();

    private native String nativeGetConnectionState();

    private native String nativeGetId();

    private native String nativeGetStats();

    private native boolean nativeIsClosed();

    private native void nativeRestartIce(String str);

    private native void nativeUpdateIceServers(String str);

    public abstract long getNativeTransport();

    public String getId() {
        return nativeGetId();
    }

    public String getConnectionState() {
        return nativeGetConnectionState();
    }

    public String getAppData() {
        return nativeGetAppData();
    }

    public String getStats() throws MediasoupException {
        return nativeGetStats();
    }

    public boolean isClosed() {
        return nativeIsClosed();
    }

    public void restartIce(String str) throws MediasoupException {
        nativeRestartIce(str);
    }

    public void updateIceServers(String str) throws MediasoupException {
        nativeUpdateIceServers(str);
    }

    public void close() {
        nativeClose();
    }
}
