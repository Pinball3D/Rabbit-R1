package io.sentry;

/* loaded from: classes3.dex */
public interface IConnectionStatusProvider {

    /* loaded from: classes3.dex */
    public enum ConnectionStatus {
        UNKNOWN,
        CONNECTED,
        DISCONNECTED,
        NO_PERMISSION
    }

    /* loaded from: classes3.dex */
    public interface IConnectionStatusObserver {
        void onConnectionStatusChanged(ConnectionStatus connectionStatus);
    }

    boolean addConnectionStatusObserver(IConnectionStatusObserver iConnectionStatusObserver);

    ConnectionStatus getConnectionStatus();

    String getConnectionType();

    void removeConnectionStatusObserver(IConnectionStatusObserver iConnectionStatusObserver);
}
