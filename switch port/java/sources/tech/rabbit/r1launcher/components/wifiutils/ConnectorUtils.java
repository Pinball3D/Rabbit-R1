package tech.rabbit.r1launcher.components.wifiutils;

import android.content.BroadcastReceiver;
import android.content.ContentResolver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.net.ConnectivityManager;
import android.net.LinkProperties;
import android.net.MacAddress;
import android.net.Network;
import android.net.NetworkInfo;
import android.net.NetworkRequest;
import android.net.wifi.ScanResult;
import android.net.wifi.WifiConfiguration;
import android.net.wifi.WifiManager;
import android.net.wifi.WifiNetworkSpecifier;
import android.net.wifi.WpsInfo;
import android.os.PatternMatcher;
import android.provider.Settings;
import androidx.arch.core.util.Function;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;
import tech.rabbit.r1launcher.components.wifiutils.ConnectorUtils;
import tech.rabbit.r1launcher.components.wifiutils.utils.Elvis;
import tech.rabbit.r1launcher.components.wifiutils.utils.SSIDUtils;
import tech.rabbit.r1launcher.components.wifiutils.utils.VersionUtil;
import tech.rabbit.r1launcher.components.wifiutils.wifiConnect.ConnectionErrorCode;
import tech.rabbit.r1launcher.components.wifiutils.wifiConnect.DisconnectCallbackHolder;
import tech.rabbit.r1launcher.components.wifiutils.wifiConnect.WifiConnectionCallback;
import tech.rabbit.r1launcher.components.wifiutils.wifiWps.ConnectionWpsListener;

/* loaded from: classes3.dex */
public final class ConnectorUtils {
    private static final int MAX_PRIORITY = 99999;

    public static int getPowerPercentage(int i) {
        if (i <= -93) {
            return 0;
        }
        if (-25 > i || i > 0) {
            return i + 125;
        }
        return 100;
    }

    public static boolean isAlreadyConnected(WifiManager wifiManager, String str) {
        if (str == null || wifiManager == null || wifiManager.getConnectionInfo() == null || wifiManager.getConnectionInfo().getBSSID() == null || wifiManager.getConnectionInfo().getIpAddress() == 0 || !Objects.equals(str, wifiManager.getConnectionInfo().getBSSID())) {
            return false;
        }
        WifiUtils.wifiLog("Already connected to: " + wifiManager.getConnectionInfo().getSSID() + "  BSSID: " + wifiManager.getConnectionInfo().getBSSID());
        return true;
    }

    public static boolean isAlreadyConnected2(WifiManager wifiManager, String str) {
        if (str == null || wifiManager == null || wifiManager.getConnectionInfo() == null || wifiManager.getConnectionInfo().getSSID() == null || wifiManager.getConnectionInfo().getIpAddress() == 0 || !wifiManager.getConnectionInfo().getSSID().equals(str)) {
            return false;
        }
        WifiUtils.wifiLog("Already connected to: " + wifiManager.getConnectionInfo().getSSID() + "  BSSID: " + wifiManager.getConnectionInfo().getBSSID());
        return true;
    }

    private static boolean isConnectedToNetworkLollipop(ConnectivityManager connectivityManager) {
        if (connectivityManager == null) {
            return false;
        }
        boolean z = false;
        for (Network network : connectivityManager.getAllNetworks()) {
            NetworkInfo networkInfo = connectivityManager.getNetworkInfo(network);
            if (networkInfo != null && 1 == networkInfo.getType()) {
                z |= networkInfo.isConnected();
            }
        }
        return z;
    }

    public static boolean isAlreadyConnected(ConnectivityManager connectivityManager) {
        if (VersionUtil.INSTANCE.isLollipopOrLater()) {
            return isConnectedToNetworkLollipop(connectivityManager);
        }
        return Elvis.of(connectivityManager).next(new Function() { // from class: tech.rabbit.r1launcher.components.wifiutils.ConnectorUtils$$ExternalSyntheticLambda1
            @Override // androidx.arch.core.util.Function
            public final Object apply(Object obj) {
                NetworkInfo networkInfo;
                networkInfo = ((ConnectivityManager) obj).getNetworkInfo(1);
                return networkInfo;
            }
        }).next(new Function() { // from class: tech.rabbit.r1launcher.components.wifiutils.ConnectorUtils$$ExternalSyntheticLambda2
            @Override // androidx.arch.core.util.Function
            public final Object apply(Object obj) {
                NetworkInfo.State state;
                state = ((NetworkInfo) obj).getState();
                return state;
            }
        }).next(new Function() { // from class: tech.rabbit.r1launcher.components.wifiutils.ConnectorUtils$$ExternalSyntheticLambda3
            @Override // androidx.arch.core.util.Function
            public final Object apply(Object obj) {
                Boolean valueOf;
                valueOf = Boolean.valueOf(r1 == NetworkInfo.State.CONNECTED);
                return valueOf;
            }
        }).getBoolean();
    }

    public static boolean isAlreadyConnected(WifiManager wifiManager, ConnectivityManager connectivityManager, String str) {
        boolean isAlreadyConnected = isAlreadyConnected(connectivityManager);
        if (!isAlreadyConnected || str == null || wifiManager == null) {
            return isAlreadyConnected;
        }
        if (VersionUtil.INSTANCE.isJellyBeanOrLater()) {
            str = SSIDUtils.convertToQuotedString(str);
        }
        String ssid = wifiManager.getConnectionInfo().getSSID();
        return ssid != null && ssid.equals(str);
    }

    private static boolean checkForExcessOpenNetworkAndSave(ContentResolver contentResolver, WifiManager wifiManager) {
        int i;
        List<WifiConfiguration> configuredNetworks = wifiManager.getConfiguredNetworks();
        sortByPriority(configuredNetworks);
        if (VersionUtil.INSTANCE.isJellyBeanOrLater()) {
            i = Settings.Secure.getInt(contentResolver, "wifi_num_open_networks_kept", 10);
        } else {
            i = Settings.Secure.getInt(contentResolver, "wifi_num_open_networks_kept", 10);
        }
        boolean z = false;
        int i2 = 0;
        for (int size = configuredNetworks.size() - 1; size >= 0; size--) {
            WifiConfiguration wifiConfiguration = configuredNetworks.get(size);
            if (Objects.equals("OPEN", ConfigSecurities.getSecurity(wifiConfiguration)) && (i2 = i2 + 1) >= i) {
                wifiManager.removeNetwork(wifiConfiguration.networkId);
                z = true;
            }
        }
        return !z || wifiManager.saveConfiguration();
    }

    private static int getMaxPriority(WifiManager wifiManager) {
        int i = 0;
        if (wifiManager == null) {
            return 0;
        }
        for (WifiConfiguration wifiConfiguration : wifiManager.getConfiguredNetworks()) {
            if (wifiConfiguration.priority > i) {
                i = wifiConfiguration.priority;
            }
        }
        return i;
    }

    private static int shiftPriorityAndSave(WifiManager wifiManager) {
        if (wifiManager == null) {
            return 0;
        }
        List<WifiConfiguration> configuredNetworks = wifiManager.getConfiguredNetworks();
        sortByPriority(configuredNetworks);
        int size = configuredNetworks.size();
        for (int i = 0; i < size; i++) {
            WifiConfiguration wifiConfiguration = configuredNetworks.get(i);
            wifiConfiguration.priority = i;
            wifiManager.updateNetwork(wifiConfiguration);
        }
        wifiManager.saveConfiguration();
        return size;
    }

    private static String trimQuotes(String str) {
        return (str == null || str.isEmpty()) ? str : str.replaceAll("^\"*", "").replaceAll("\"*$", "");
    }

    public static boolean isHexWepKey(String str) {
        int length = str == null ? 0 : str.length();
        return (length == 10 || length == 26 || length == 58) && str.matches("[0-9A-Fa-f]*");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ int lambda$sortByPriority$2(WifiConfiguration wifiConfiguration, WifiConfiguration wifiConfiguration2) {
        return wifiConfiguration.priority - wifiConfiguration2.priority;
    }

    private static void sortByPriority(List<WifiConfiguration> list) {
        Collections.sort(list, new Comparator() { // from class: tech.rabbit.r1launcher.components.wifiutils.ConnectorUtils$$ExternalSyntheticLambda0
            @Override // java.util.Comparator
            public final int compare(Object obj, Object obj2) {
                return ConnectorUtils.lambda$sortByPriority$2((WifiConfiguration) obj, (WifiConfiguration) obj2);
            }
        });
    }

    public static int frequencyToChannel(int i) {
        if (2412 <= i && i <= 2484) {
            return ((i - 2412) / 5) + 1;
        }
        if (5170 > i || i > 5825) {
            return -1;
        }
        return ((i - 5170) / 5) + 34;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void registerReceiver(Context context, BroadcastReceiver broadcastReceiver, IntentFilter intentFilter) {
        if (broadcastReceiver != null) {
            try {
                context.registerReceiver(broadcastReceiver, intentFilter);
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void unregisterReceiver(Context context, BroadcastReceiver broadcastReceiver) {
        if (broadcastReceiver != null) {
            try {
                context.unregisterReceiver(broadcastReceiver);
            } catch (IllegalArgumentException unused) {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean connectToWifi(Context context, WifiManager wifiManager, ConnectivityManager connectivityManager, WeakHandler weakHandler, ScanResult scanResult, String str, WifiConnectionCallback wifiConnectionCallback, boolean z, String str2) {
        if (wifiManager == null || connectivityManager == null) {
            return false;
        }
        if (VersionUtil.INSTANCE.isAndroidQOrLater()) {
            return connectAndroidQ(wifiManager, connectivityManager, weakHandler, wifiConnectionCallback, scanResult, str, z, str2);
        }
        return connectPreAndroidQ(context, wifiManager, scanResult, str);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean connectToWifiHidden(Context context, WifiManager wifiManager, ConnectivityManager connectivityManager, WeakHandler weakHandler, String str, String str2, String str3, WifiConnectionCallback wifiConnectionCallback) {
        if (wifiManager == null || connectivityManager == null || str2 == null) {
            return false;
        }
        if (VersionUtil.INSTANCE.isAndroidQOrLater()) {
            return connectAndroidQHidden(wifiManager, connectivityManager, weakHandler, wifiConnectionCallback, str, str2, str3);
        }
        return connectPreAndroidQHidden(context, wifiManager, str, str2, str3);
    }

    private static boolean connectPreAndroidQ(Context context, WifiManager wifiManager, ScanResult scanResult, String str) {
        if (wifiManager == null) {
            return false;
        }
        WifiConfiguration wifiConfiguration = ConfigSecurities.getWifiConfiguration(wifiManager, scanResult);
        if (wifiConfiguration != null && str.isEmpty()) {
            WifiUtils.wifiLog("PASSWORD WAS EMPTY. TRYING TO CONNECT TO EXISTING NETWORK CONFIGURATION");
            return connectToConfiguredNetwork(wifiManager, wifiConfiguration, true);
        }
        if (!cleanPreviousConfiguration(wifiManager, wifiConfiguration)) {
            WifiUtils.wifiLog("COULDN'T REMOVE PREVIOUS CONFIG, CONNECTING TO EXISTING ONE");
            return connectToConfiguredNetwork(wifiManager, wifiConfiguration, true);
        }
        String security = ConfigSecurities.getSecurity(scanResult);
        if (Objects.equals("OPEN", security)) {
            checkForExcessOpenNetworkAndSave(context.getContentResolver(), wifiManager);
        }
        WifiConfiguration wifiConfiguration2 = new WifiConfiguration();
        wifiConfiguration2.SSID = SSIDUtils.convertToQuotedString(scanResult.SSID);
        wifiConfiguration2.BSSID = scanResult.BSSID;
        ConfigSecurities.setupSecurity(wifiConfiguration2, security, str);
        int addNetwork = wifiManager.addNetwork(wifiConfiguration2);
        WifiUtils.wifiLog("Network ID: " + addNetwork);
        if (addNetwork == -1) {
            return false;
        }
        WifiConfiguration wifiConfiguration3 = ConfigSecurities.getWifiConfiguration(wifiManager, wifiConfiguration2);
        if (wifiConfiguration3 == null) {
            WifiUtils.wifiLog("Error getting wifi config after save. (config == null)");
            return false;
        }
        return connectToConfiguredNetwork(wifiManager, wifiConfiguration3, true);
    }

    private static boolean connectPreAndroidQHidden(Context context, WifiManager wifiManager, String str, String str2, String str3) {
        if (wifiManager == null) {
            return false;
        }
        String security = ConfigSecurities.getSecurity(str2);
        if (Objects.equals("OPEN", security)) {
            checkForExcessOpenNetworkAndSave(context.getContentResolver(), wifiManager);
        }
        WifiConfiguration wifiConfiguration = new WifiConfiguration();
        wifiConfiguration.SSID = SSIDUtils.convertToQuotedString(str);
        ConfigSecurities.setupSecurityHidden(wifiConfiguration, security, str3);
        int addNetwork = wifiManager.addNetwork(wifiConfiguration);
        WifiUtils.wifiLog("Hidden-Network ID: " + addNetwork);
        if (addNetwork == -1) {
            return false;
        }
        if (!wifiManager.saveConfiguration()) {
            WifiUtils.wifiLog("Couldn't save wifi config");
            return false;
        }
        WifiConfiguration wifiConfiguration2 = ConfigSecurities.getWifiConfiguration(wifiManager, wifiConfiguration);
        if (wifiConfiguration2 == null) {
            WifiUtils.wifiLog("Error getting wifi config after save. (config == null)");
            return false;
        }
        return connectToConfiguredNetwork(wifiManager, wifiConfiguration2, true);
    }

    private static boolean connectToConfiguredNetwork(WifiManager wifiManager, WifiConfiguration wifiConfiguration, boolean z) {
        WifiConfiguration wifiConfiguration2;
        if (wifiConfiguration == null || wifiManager == null) {
            return false;
        }
        if (VersionUtil.INSTANCE.isMarshmallowOrLater()) {
            if (!disableAllButOne(wifiManager, wifiConfiguration)) {
                return false;
            }
            if (z) {
                if (!wifiManager.reassociate()) {
                    return false;
                }
            } else if (!wifiManager.reconnect()) {
                return false;
            }
            return true;
        }
        int maxPriority = getMaxPriority(wifiManager) + 1;
        if (maxPriority > MAX_PRIORITY) {
            maxPriority = shiftPriorityAndSave(wifiManager);
            wifiConfiguration = ConfigSecurities.getWifiConfiguration(wifiManager, wifiConfiguration);
            if (wifiConfiguration == null) {
                return false;
            }
        }
        wifiConfiguration.priority = maxPriority;
        int updateNetwork = wifiManager.updateNetwork(wifiConfiguration);
        if (updateNetwork == -1 || !wifiManager.enableNetwork(updateNetwork, false) || !wifiManager.saveConfiguration() || (wifiConfiguration2 = ConfigSecurities.getWifiConfiguration(wifiManager, wifiConfiguration)) == null || !disableAllButOne(wifiManager, wifiConfiguration2)) {
            return false;
        }
        if (z) {
            if (!wifiManager.reassociate()) {
                return false;
            }
        } else if (!wifiManager.reconnect()) {
            return false;
        }
        return true;
    }

    private static boolean connectAndroidQ(WifiManager wifiManager, ConnectivityManager connectivityManager, WeakHandler weakHandler, WifiConnectionCallback wifiConnectionCallback, ScanResult scanResult, String str, boolean z, String str2) {
        if (connectivityManager == null) {
            return false;
        }
        WifiNetworkSpecifier.Builder builder = new WifiNetworkSpecifier.Builder();
        if (z) {
            if (str2 == null) {
                str2 = scanResult.SSID;
            }
            builder.setSsidPattern(new PatternMatcher(str2, 1));
        } else {
            builder.setSsid(scanResult.SSID).setBssid(MacAddress.fromString(scanResult.BSSID));
        }
        ConfigSecurities.setupWifiNetworkSpecifierSecurities(builder, ConfigSecurities.getSecurity(scanResult), str);
        NetworkRequest build = new NetworkRequest.Builder().addTransportType(1).setNetworkSpecifier(builder.build()).addCapability(13).build();
        DisconnectCallbackHolder.getInstance().disconnect();
        DisconnectCallbackHolder.getInstance().addNetworkCallback(new AnonymousClass1(connectivityManager, weakHandler, wifiManager, scanResult, wifiConnectionCallback), connectivityManager);
        WifiUtils.wifiLog("connecting with Android 10");
        DisconnectCallbackHolder.getInstance().requestNetwork(build);
        return true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: tech.rabbit.r1launcher.components.wifiutils.ConnectorUtils$1, reason: invalid class name */
    /* loaded from: classes3.dex */
    public class AnonymousClass1 extends ConnectivityManager.NetworkCallback {
        final /* synthetic */ ConnectivityManager val$connectivityManager;
        final /* synthetic */ WeakHandler val$handler;
        final /* synthetic */ ScanResult val$scanResult;
        final /* synthetic */ WifiConnectionCallback val$wifiConnectionCallback;
        final /* synthetic */ WifiManager val$wifiManager;

        AnonymousClass1(ConnectivityManager connectivityManager, WeakHandler weakHandler, WifiManager wifiManager, ScanResult scanResult, WifiConnectionCallback wifiConnectionCallback) {
            this.val$connectivityManager = connectivityManager;
            this.val$handler = weakHandler;
            this.val$wifiManager = wifiManager;
            this.val$scanResult = scanResult;
            this.val$wifiConnectionCallback = wifiConnectionCallback;
        }

        @Override // android.net.ConnectivityManager.NetworkCallback
        public void onAvailable(Network network) {
            super.onAvailable(network);
            WifiUtils.wifiLog("AndroidQ+ connected to wifi ");
            DisconnectCallbackHolder.getInstance().bindProcessToNetwork(network);
            this.val$connectivityManager.setNetworkPreference(1);
            WeakHandler weakHandler = this.val$handler;
            final WifiManager wifiManager = this.val$wifiManager;
            final ScanResult scanResult = this.val$scanResult;
            final WifiConnectionCallback wifiConnectionCallback = this.val$wifiConnectionCallback;
            weakHandler.postDelayed(new Runnable() { // from class: tech.rabbit.r1launcher.components.wifiutils.ConnectorUtils$1$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    ConnectorUtils.AnonymousClass1.lambda$onAvailable$1(wifiManager, scanResult, wifiConnectionCallback);
                }
            }, 500L);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public static /* synthetic */ void lambda$onAvailable$1(WifiManager wifiManager, ScanResult scanResult, WifiConnectionCallback wifiConnectionCallback) {
            if (ConnectorUtils.isAlreadyConnected(wifiManager, (String) Elvis.of(scanResult).next(new Function() { // from class: tech.rabbit.r1launcher.components.wifiutils.ConnectorUtils$1$$ExternalSyntheticLambda1
                @Override // androidx.arch.core.util.Function
                public final Object apply(Object obj) {
                    String str;
                    str = ((ScanResult) obj).BSSID;
                    return str;
                }
            }).get())) {
                wifiConnectionCallback.successfulConnect();
            } else {
                wifiConnectionCallback.errorConnect(ConnectionErrorCode.ANDROID_10_IMMEDIATELY_DROPPED_CONNECTION);
            }
        }

        @Override // android.net.ConnectivityManager.NetworkCallback
        public void onUnavailable() {
            super.onUnavailable();
            WifiUtils.wifiLog("AndroidQ+ could not connect to wifi");
            this.val$wifiConnectionCallback.errorConnect(ConnectionErrorCode.USER_CANCELLED);
        }

        @Override // android.net.ConnectivityManager.NetworkCallback
        public void onLost(Network network) {
            super.onLost(network);
            WifiUtils.wifiLog("onLost");
            DisconnectCallbackHolder.getInstance().unbindProcessFromNetwork();
            DisconnectCallbackHolder.getInstance().disconnect();
        }
    }

    private static boolean connectAndroidQHidden(WifiManager wifiManager, ConnectivityManager connectivityManager, WeakHandler weakHandler, WifiConnectionCallback wifiConnectionCallback, String str, String str2, String str3) {
        if (connectivityManager == null) {
            return false;
        }
        WifiNetworkSpecifier.Builder ssid = new WifiNetworkSpecifier.Builder().setIsHiddenSsid(true).setSsid(str);
        ConfigSecurities.setupWifiNetworkSpecifierSecurities(ssid, ConfigSecurities.getSecurity(str2), str3);
        NetworkRequest build = new NetworkRequest.Builder().addTransportType(1).addCapability(12).addCapability(13).setNetworkSpecifier(ssid.build()).build();
        DisconnectCallbackHolder.getInstance().disconnect();
        DisconnectCallbackHolder.getInstance().addNetworkCallback(new AnonymousClass2(connectivityManager, weakHandler, wifiManager, str, wifiConnectionCallback), connectivityManager);
        WifiUtils.wifiLog("connecting with Android 10");
        DisconnectCallbackHolder.getInstance().requestNetwork(build);
        return true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: tech.rabbit.r1launcher.components.wifiutils.ConnectorUtils$2, reason: invalid class name */
    /* loaded from: classes3.dex */
    public class AnonymousClass2 extends ConnectivityManager.NetworkCallback {
        final /* synthetic */ ConnectivityManager val$connectivityManager;
        final /* synthetic */ WeakHandler val$handler;
        final /* synthetic */ String val$ssid;
        final /* synthetic */ WifiConnectionCallback val$wifiConnectionCallback;
        final /* synthetic */ WifiManager val$wifiManager;

        AnonymousClass2(ConnectivityManager connectivityManager, WeakHandler weakHandler, WifiManager wifiManager, String str, WifiConnectionCallback wifiConnectionCallback) {
            this.val$connectivityManager = connectivityManager;
            this.val$handler = weakHandler;
            this.val$wifiManager = wifiManager;
            this.val$ssid = str;
            this.val$wifiConnectionCallback = wifiConnectionCallback;
        }

        @Override // android.net.ConnectivityManager.NetworkCallback
        public void onAvailable(Network network) {
            super.onAvailable(network);
            WifiUtils.wifiLog("AndroidQ+ connected to wifi ");
            DisconnectCallbackHolder.getInstance().bindProcessToNetwork(network);
            this.val$connectivityManager.setNetworkPreference(1);
            WeakHandler weakHandler = this.val$handler;
            final WifiManager wifiManager = this.val$wifiManager;
            final String str = this.val$ssid;
            final WifiConnectionCallback wifiConnectionCallback = this.val$wifiConnectionCallback;
            weakHandler.postDelayed(new Runnable() { // from class: tech.rabbit.r1launcher.components.wifiutils.ConnectorUtils$2$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    ConnectorUtils.AnonymousClass2.lambda$onAvailable$0(wifiManager, str, wifiConnectionCallback);
                }
            }, 500L);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public static /* synthetic */ void lambda$onAvailable$0(WifiManager wifiManager, String str, WifiConnectionCallback wifiConnectionCallback) {
            if (ConnectorUtils.isAlreadyConnected(wifiManager, str)) {
                wifiConnectionCallback.successfulConnect();
            } else {
                wifiConnectionCallback.errorConnect(ConnectionErrorCode.ANDROID_10_IMMEDIATELY_DROPPED_CONNECTION);
            }
        }

        @Override // android.net.ConnectivityManager.NetworkCallback
        public void onUnavailable() {
            super.onUnavailable();
            WifiUtils.wifiLog("AndroidQ+ could not connect to wifi");
            this.val$wifiConnectionCallback.errorConnect(ConnectionErrorCode.USER_CANCELLED);
        }

        @Override // android.net.ConnectivityManager.NetworkCallback
        public void onLost(Network network) {
            super.onLost(network);
            WifiUtils.wifiLog("onLost");
            DisconnectCallbackHolder.getInstance().unbindProcessFromNetwork();
            DisconnectCallbackHolder.getInstance().disconnect();
        }

        @Override // android.net.ConnectivityManager.NetworkCallback
        public void onLinkPropertiesChanged(Network network, LinkProperties linkProperties) {
            super.onLinkPropertiesChanged(network, linkProperties);
            WifiUtils.wifiLog("onLost");
        }
    }

    private static boolean disableAllButOne(WifiManager wifiManager, WifiConfiguration wifiConfiguration) {
        boolean z = false;
        if (wifiManager == null) {
            return false;
        }
        List<WifiConfiguration> configuredNetworks = wifiManager.getConfiguredNetworks();
        if (configuredNetworks != null && wifiConfiguration != null && !configuredNetworks.isEmpty()) {
            for (WifiConfiguration wifiConfiguration2 : configuredNetworks) {
                if (wifiConfiguration2 != null) {
                    if (wifiConfiguration2.networkId == wifiConfiguration.networkId) {
                        z = wifiManager.enableNetwork(wifiConfiguration2.networkId, true);
                    } else {
                        wifiManager.disableNetwork(wifiConfiguration2.networkId);
                    }
                }
            }
            WifiUtils.wifiLog("disableAllButOne " + z);
        }
        return z;
    }

    private static boolean disableAllButOne(WifiManager wifiManager, ScanResult scanResult) {
        boolean z = false;
        if (wifiManager == null) {
            return false;
        }
        List<WifiConfiguration> configuredNetworks = wifiManager.getConfiguredNetworks();
        if (configuredNetworks != null && scanResult != null && !configuredNetworks.isEmpty()) {
            for (WifiConfiguration wifiConfiguration : configuredNetworks) {
                if (wifiConfiguration != null) {
                    if (Objects.equals(scanResult.BSSID, wifiConfiguration.BSSID) && Objects.equals(scanResult.SSID, trimQuotes(wifiConfiguration.SSID))) {
                        z = wifiManager.enableNetwork(wifiConfiguration.networkId, true);
                    } else {
                        wifiManager.disableNetwork(wifiConfiguration.networkId);
                    }
                }
            }
        }
        return z;
    }

    public static boolean reEnableNetworkIfPossible(WifiManager wifiManager, ScanResult scanResult) {
        boolean z = false;
        if (wifiManager == null) {
            return false;
        }
        List<WifiConfiguration> configuredNetworks = wifiManager.getConfiguredNetworks();
        if (configuredNetworks != null && scanResult != null && !configuredNetworks.isEmpty()) {
            Iterator<WifiConfiguration> it = configuredNetworks.iterator();
            while (true) {
                if (!it.hasNext()) {
                    break;
                }
                WifiConfiguration next = it.next();
                if (Objects.equals(scanResult.BSSID, next.BSSID) && Objects.equals(scanResult.SSID, trimQuotes(next.SSID))) {
                    z = wifiManager.enableNetwork(next.networkId, true);
                    break;
                }
            }
            WifiUtils.wifiLog("reEnableNetworkIfPossible " + z);
        }
        return z;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void connectWps(final WifiManager wifiManager, final WeakHandler weakHandler, final ScanResult scanResult, String str, long j, final ConnectionWpsListener connectionWpsListener) {
        if (wifiManager == null) {
            connectionWpsListener.isSuccessful(false);
            return;
        }
        WpsInfo wpsInfo = new WpsInfo();
        final Runnable runnable = new Runnable() { // from class: tech.rabbit.r1launcher.components.wifiutils.ConnectorUtils.3
            @Override // java.lang.Runnable
            public void run() {
                wifiManager.cancelWps(null);
                WifiUtils.wifiLog("Connection with WPS has timed out");
                ConnectorUtils.cleanPreviousConfiguration(wifiManager, scanResult);
                connectionWpsListener.isSuccessful(false);
                weakHandler.removeCallbacks(this);
            }
        };
        WifiManager.WpsCallback wpsCallback = new WifiManager.WpsCallback() { // from class: tech.rabbit.r1launcher.components.wifiutils.ConnectorUtils.4
            @Override // android.net.wifi.WifiManager.WpsCallback
            public void onStarted(String str2) {
            }

            @Override // android.net.wifi.WifiManager.WpsCallback
            public void onSucceeded() {
                WeakHandler.this.removeCallbacks(runnable);
                WifiUtils.wifiLog("CONNECTED With WPS successfully");
                connectionWpsListener.isSuccessful(true);
            }

            @Override // android.net.wifi.WifiManager.WpsCallback
            public void onFailed(int i) {
                String str2;
                WeakHandler.this.removeCallbacks(runnable);
                if (i == 3) {
                    str2 = "WPS_OVERLAP_ERROR";
                } else if (i == 4) {
                    str2 = "WPS_WEP_PROHIBITED";
                } else if (i == 5) {
                    str2 = "WPS_TKIP_ONLY_PROHIBITED";
                } else if (i != 6) {
                    str2 = i != 7 ? String.valueOf(i) : "WPS_TIMED_OUT";
                } else {
                    str2 = "WPS_AUTH_FAILURE";
                }
                WifiUtils.wifiLog("FAILED to connect with WPS. Reason: " + str2);
                ConnectorUtils.cleanPreviousConfiguration(wifiManager, scanResult);
                ConnectorUtils.reenableAllHotspots(wifiManager);
                connectionWpsListener.isSuccessful(false);
            }
        };
        WifiUtils.wifiLog("Connecting with WPS...");
        wpsInfo.setup = 2;
        wpsInfo.BSSID = scanResult.BSSID;
        wpsInfo.pin = str;
        wifiManager.cancelWps(null);
        if (!cleanPreviousConfiguration(wifiManager, scanResult)) {
            disableAllButOne(wifiManager, scanResult);
        }
        weakHandler.postDelayed(runnable, j);
        wifiManager.startWps(wpsInfo, wpsCallback);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean disconnectFromWifi(WifiManager wifiManager) {
        return wifiManager.disconnect();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean removeWifi(WifiManager wifiManager, String str, String str2) {
        return cleanPreviousConfiguration(wifiManager, ConfigSecurities.getWifiConfiguration(wifiManager, str, str2));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean cleanPreviousConfiguration(WifiManager wifiManager, ScanResult scanResult) {
        if (wifiManager == null) {
            return false;
        }
        WifiConfiguration wifiConfiguration = ConfigSecurities.getWifiConfiguration(wifiManager, scanResult);
        WifiUtils.wifiLog("Attempting to remove previous network config...");
        if (wifiConfiguration == null) {
            return true;
        }
        if (!wifiManager.removeNetwork(wifiConfiguration.networkId)) {
            return false;
        }
        wifiManager.saveConfiguration();
        return true;
    }

    static boolean cleanPreviousConfiguration(WifiManager wifiManager, WifiConfiguration wifiConfiguration) {
        if (wifiManager == null) {
            return false;
        }
        WifiUtils.wifiLog("Attempting to remove previous network config...");
        if (wifiConfiguration == null) {
            return true;
        }
        if (!wifiManager.removeNetwork(wifiConfiguration.networkId)) {
            return false;
        }
        wifiManager.saveConfiguration();
        return true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void reenableAllHotspots(WifiManager wifiManager) {
        List<WifiConfiguration> configuredNetworks;
        if (wifiManager == null || (configuredNetworks = wifiManager.getConfiguredNetworks()) == null || configuredNetworks.isEmpty()) {
            return;
        }
        Iterator<WifiConfiguration> it = configuredNetworks.iterator();
        while (it.hasNext()) {
            wifiManager.enableNetwork(it.next().networkId, false);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static ScanResult matchScanResultSsid(String str, Iterable<ScanResult> iterable, boolean z) {
        for (ScanResult scanResult : iterable) {
            String str2 = scanResult.SSID;
            if (z) {
                if (str2.startsWith(str)) {
                    return scanResult;
                }
            } else if (Objects.equals(str2, str)) {
                return scanResult;
            }
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static ScanResult matchScanResult(String str, String str2, Iterable<ScanResult> iterable) {
        for (ScanResult scanResult : iterable) {
            if (Objects.equals(scanResult.SSID, str) && Objects.equals(scanResult.BSSID, str2)) {
                return scanResult;
            }
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static ScanResult matchScanResultBssid(String str, Iterable<ScanResult> iterable) {
        for (ScanResult scanResult : iterable) {
            if (Objects.equals(scanResult.BSSID, str)) {
                return scanResult;
            }
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static Intent checkVersionAndGetIntent() {
        if (VersionUtil.INSTANCE.isAndroidQOrLater()) {
            return VersionUtil.INSTANCE.getPanelIntent();
        }
        return null;
    }
}
