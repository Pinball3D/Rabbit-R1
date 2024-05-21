package tech.rabbit.r1launcher.components.wifiutils.wifiConnect;

import android.net.ConnectivityManager;
import android.net.Network;
import android.net.NetworkRequest;
import tech.rabbit.r1launcher.components.wifiutils.WifiUtils;

/* loaded from: classes3.dex */
public class DisconnectCallbackHolder {
    private static volatile DisconnectCallbackHolder sInstance;
    private boolean isNetworkcallbackAdded;
    private boolean isProcessBoundToNetwork;
    private ConnectivityManager mConnectivityManager;
    private ConnectivityManager.NetworkCallback mNetworkCallback;

    public void addNetworkCallback(ConnectivityManager.NetworkCallback networkCallback, ConnectivityManager connectivityManager) {
        this.mNetworkCallback = networkCallback;
        this.mConnectivityManager = connectivityManager;
        this.isNetworkcallbackAdded = true;
    }

    public boolean isNetworkcallbackAdded() {
        return this.isNetworkcallbackAdded;
    }

    public boolean isProcessBoundToNetwork() {
        return this.isProcessBoundToNetwork;
    }

    private DisconnectCallbackHolder() {
    }

    public static DisconnectCallbackHolder getInstance() {
        if (sInstance == null) {
            synchronized (DisconnectCallbackHolder.class) {
                if (sInstance == null) {
                    sInstance = new DisconnectCallbackHolder();
                }
            }
        }
        return sInstance;
    }

    public void disconnect() {
        if (this.mNetworkCallback == null || this.mConnectivityManager == null) {
            return;
        }
        WifiUtils.wifiLog("Disconnecting on Android 10+");
        this.mConnectivityManager.unregisterNetworkCallback(this.mNetworkCallback);
        this.mNetworkCallback = null;
        this.isNetworkcallbackAdded = false;
    }

    public void requestNetwork(NetworkRequest networkRequest) {
        ConnectivityManager connectivityManager;
        ConnectivityManager.NetworkCallback networkCallback = this.mNetworkCallback;
        if (networkCallback != null && (connectivityManager = this.mConnectivityManager) != null) {
            connectivityManager.requestNetwork(networkRequest, networkCallback);
        } else {
            WifiUtils.wifiLog("NetworkCallback has not been added yet. Please call addNetworkCallback method first");
        }
    }

    public void unbindProcessFromNetwork() {
        ConnectivityManager connectivityManager = this.mConnectivityManager;
        if (connectivityManager != null) {
            connectivityManager.bindProcessToNetwork(null);
            this.isProcessBoundToNetwork = false;
        } else {
            WifiUtils.wifiLog("ConnectivityManager is null. Did you call addNetworkCallback method first?");
        }
    }

    public void bindProcessToNetwork(Network network) {
        ConnectivityManager connectivityManager = this.mConnectivityManager;
        if (connectivityManager != null) {
            connectivityManager.bindProcessToNetwork(network);
            this.isProcessBoundToNetwork = true;
        } else {
            WifiUtils.wifiLog("ConnectivityManager is null. Did you call addNetworkCallback method first?");
        }
    }
}
