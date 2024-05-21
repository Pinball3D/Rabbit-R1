package tech.rabbit.r1launcher.components.wifiutils.wifiDisconnect;

/* loaded from: classes3.dex */
public interface DisconnectionSuccessListener {
    void failed(DisconnectionErrorCode disconnectionErrorCode);

    void success();
}
