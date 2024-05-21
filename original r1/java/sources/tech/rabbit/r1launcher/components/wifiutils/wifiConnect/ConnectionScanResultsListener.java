package tech.rabbit.r1launcher.components.wifiutils.wifiConnect;

import android.net.wifi.ScanResult;
import java.util.List;

/* loaded from: classes3.dex */
public interface ConnectionScanResultsListener {
    ScanResult onConnectWithScanResult(List<ScanResult> list);
}
