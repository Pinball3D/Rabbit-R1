package tech.rabbit.r1launcher.components.wifiutils;

import tech.rabbit.r1launcher.components.wifiutils.wifiConnect.ConnectionScanResultsListener;
import tech.rabbit.r1launcher.components.wifiutils.wifiConnect.ConnectionSuccessListener;
import tech.rabbit.r1launcher.components.wifiutils.wifiDisconnect.DisconnectionSuccessListener;
import tech.rabbit.r1launcher.components.wifiutils.wifiRemove.RemoveSuccessListener;
import tech.rabbit.r1launcher.components.wifiutils.wifiScan.ScanResultsListener;
import tech.rabbit.r1launcher.components.wifiutils.wifiState.WifiStateListener;
import tech.rabbit.r1launcher.components.wifiutils.wifiWps.ConnectionWpsListener;

/* loaded from: classes3.dex */
public interface WifiConnectorBuilder {

    /* loaded from: classes3.dex */
    public interface WifiSuccessListener {
        WifiConnectorBuilder onConnectionResult(ConnectionSuccessListener connectionSuccessListener);

        WifiSuccessListener setTimeout(long j);
    }

    /* loaded from: classes3.dex */
    public interface WifiUtilsBuilder {
        void cancelAutoConnect();

        WifiSuccessListener connectWith(String str);

        WifiSuccessListener connectWith(String str, String str2);

        WifiSuccessListener connectWith(String str, String str2, String str3);

        WifiSuccessListener connectWith(String str, String str2, TypeEnum typeEnum);

        WifiSuccessListener connectWithScanResult(String str, ConnectionScanResultsListener connectionScanResultsListener);

        WifiWpsSuccessListener connectWithWps(String str, String str2);

        void disableWifi();

        void disconnect(DisconnectionSuccessListener disconnectionSuccessListener);

        @Deprecated
        void disconnectFrom(String str, DisconnectionSuccessListener disconnectionSuccessListener);

        void enableWifi();

        void enableWifi(WifiStateListener wifiStateListener);

        boolean isWifiConnected();

        boolean isWifiConnected(String str);

        WifiUtilsBuilder patternMatch();

        void remove(String str, String str2, RemoveSuccessListener removeSuccessListener);

        WifiConnectorBuilder scanWifi(ScanResultsListener scanResultsListener);
    }

    /* loaded from: classes3.dex */
    public interface WifiWpsSuccessListener {
        WifiConnectorBuilder onConnectionWpsResult(ConnectionWpsListener connectionWpsListener);

        WifiWpsSuccessListener setWpsTimeout(long j);
    }

    void start();
}
