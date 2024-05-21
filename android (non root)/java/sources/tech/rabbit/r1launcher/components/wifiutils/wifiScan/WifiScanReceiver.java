package tech.rabbit.r1launcher.components.wifiutils.wifiScan;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;

/* loaded from: classes3.dex */
public class WifiScanReceiver extends BroadcastReceiver {
    private final WifiScanCallback callback;

    public WifiScanReceiver(WifiScanCallback wifiScanCallback) {
        this.callback = wifiScanCallback;
    }

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        this.callback.onScanResultsReady();
    }
}
