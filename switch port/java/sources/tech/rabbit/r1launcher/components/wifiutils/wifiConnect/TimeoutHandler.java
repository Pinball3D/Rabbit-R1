package tech.rabbit.r1launcher.components.wifiutils.wifiConnect;

import android.net.wifi.ScanResult;
import android.net.wifi.WifiManager;
import androidx.arch.core.util.Function;
import tech.rabbit.r1launcher.components.wifiutils.ConnectorUtils;
import tech.rabbit.r1launcher.components.wifiutils.WeakHandler;
import tech.rabbit.r1launcher.components.wifiutils.WifiUtils;
import tech.rabbit.r1launcher.components.wifiutils.utils.Elvis;
import tech.rabbit.r1launcher.components.wifiutils.utils.VersionUtil;

/* loaded from: classes3.dex */
public class TimeoutHandler {
    private final WeakHandler mHandler;
    private ScanResult mScanResult;
    private final WifiConnectionCallback mWifiConnectionCallback;
    private final WifiManager mWifiManager;
    private final Runnable timeoutCallback = new AnonymousClass1();

    /* renamed from: tech.rabbit.r1launcher.components.wifiutils.wifiConnect.TimeoutHandler$1, reason: invalid class name */
    /* loaded from: classes3.dex */
    class AnonymousClass1 implements Runnable {
        AnonymousClass1() {
        }

        @Override // java.lang.Runnable
        public void run() {
            WifiUtils.wifiLog("Connection Timed out...");
            if (!VersionUtil.INSTANCE.isAndroidQOrLater()) {
                ConnectorUtils.reEnableNetworkIfPossible(TimeoutHandler.this.mWifiManager, TimeoutHandler.this.mScanResult);
            }
            if (ConnectorUtils.isAlreadyConnected(TimeoutHandler.this.mWifiManager, (String) Elvis.of(TimeoutHandler.this.mScanResult).next(new Function() { // from class: tech.rabbit.r1launcher.components.wifiutils.wifiConnect.TimeoutHandler$1$$ExternalSyntheticLambda0
                @Override // androidx.arch.core.util.Function
                public final Object apply(Object obj) {
                    String str;
                    str = ((ScanResult) obj).BSSID;
                    return str;
                }
            }).get())) {
                TimeoutHandler.this.mWifiConnectionCallback.successfulConnect();
            } else {
                TimeoutHandler.this.mWifiConnectionCallback.errorConnect(ConnectionErrorCode.TIMEOUT_OCCURRED);
            }
            TimeoutHandler.this.mHandler.removeCallbacks(this);
        }
    }

    public TimeoutHandler(WifiManager wifiManager, WeakHandler weakHandler, WifiConnectionCallback wifiConnectionCallback) {
        this.mWifiManager = wifiManager;
        this.mHandler = weakHandler;
        this.mWifiConnectionCallback = wifiConnectionCallback;
    }

    public void startTimeout(ScanResult scanResult, long j) {
        this.mHandler.removeCallbacks(this.timeoutCallback);
        this.mScanResult = scanResult;
        this.mHandler.postDelayed(this.timeoutCallback, j);
    }

    public void stopTimeout() {
        this.mHandler.removeCallbacks(this.timeoutCallback);
    }
}
