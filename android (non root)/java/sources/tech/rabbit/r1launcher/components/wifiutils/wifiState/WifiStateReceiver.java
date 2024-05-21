package tech.rabbit.r1launcher.components.wifiutils.wifiState;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;

/* loaded from: classes3.dex */
public final class WifiStateReceiver extends BroadcastReceiver {
    private final WifiStateCallback wifiStateCallback;

    public WifiStateReceiver(WifiStateCallback wifiStateCallback) {
        this.wifiStateCallback = wifiStateCallback;
    }

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        if (intent.getIntExtra("wifi_state", 0) != 3) {
            return;
        }
        this.wifiStateCallback.onWifiEnabled();
    }
}
