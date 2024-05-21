package tech.rabbit.r1launcher.components.wifiutils.wifiConnect;

/* loaded from: classes3.dex */
public interface WifiConnectionCallback {
    void errorConnect(ConnectionErrorCode connectionErrorCode);

    void successfulConnect();
}
