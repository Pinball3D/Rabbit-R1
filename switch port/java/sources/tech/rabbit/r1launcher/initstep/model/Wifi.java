package tech.rabbit.r1launcher.initstep.model;

import android.net.wifi.ScanResult;
import android.net.wifi.WifiConfiguration;
import android.net.wifi.WifiInfo;
import android.net.wifi.WifiManager;
import android.text.TextUtils;
import java.io.Serializable;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import tech.rabbit.r1launcher.settings.network2.UtilsKt;

/* compiled from: Wifi.kt */
@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0010\b\n\u0002\b\u0013\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0004\b\u0087\b\u0018\u0000 !2\u00020\u0001:\u0001!B\u000f\b\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004B3\u0012\u0006\u0010\u0005\u001a\u00020\u0003\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0003\u0012\u0006\u0010\u0007\u001a\u00020\b\u0012\b\b\u0002\u0010\t\u001a\u00020\b\u0012\b\b\u0002\u0010\n\u001a\u00020\b¢\u0006\u0002\u0010\u000bJ\t\u0010\u0015\u001a\u00020\u0003HÆ\u0003J\u000b\u0010\u0016\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\t\u0010\u0017\u001a\u00020\bHÆ\u0003J\t\u0010\u0018\u001a\u00020\bHÆ\u0003J\t\u0010\u0019\u001a\u00020\bHÆ\u0003J=\u0010\u001a\u001a\u00020\u00002\b\b\u0002\u0010\u0005\u001a\u00020\u00032\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00032\b\b\u0002\u0010\u0007\u001a\u00020\b2\b\b\u0002\u0010\t\u001a\u00020\b2\b\b\u0002\u0010\n\u001a\u00020\bHÆ\u0001J\u0013\u0010\u001b\u001a\u00020\u001c2\b\u0010\u001d\u001a\u0004\u0018\u00010\u001eH\u0096\u0002J\b\u0010\u001f\u001a\u00020\bH\u0016J\b\u0010 \u001a\u00020\u0003H\u0016R\u0013\u0010\u0006\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\rR\u001a\u0010\u0007\u001a\u00020\bX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000e\u0010\u000f\"\u0004\b\u0010\u0010\u0011R\u0011\u0010\t\u001a\u00020\b¢\u0006\b\n\u0000\u001a\u0004\b\u0012\u0010\u000fR\u0011\u0010\n\u001a\u00020\b¢\u0006\b\n\u0000\u001a\u0004\b\u0013\u0010\u000fR\u0011\u0010\u0005\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0014\u0010\r¨\u0006\""}, d2 = {"Ltech/rabbit/r1launcher/initstep/model/Wifi;", "Ljava/io/Serializable;", "wifiSSID", "", "(Ljava/lang/String;)V", "ssid", "bssid", "dpmWifiSecurity", "", "networkId", "signalLevel", "(Ljava/lang/String;Ljava/lang/String;III)V", "getBssid", "()Ljava/lang/String;", "getDpmWifiSecurity", "()I", "setDpmWifiSecurity", "(I)V", "getNetworkId", "getSignalLevel", "getSsid", "component1", "component2", "component3", "component4", "component5", "copy", "equals", "", "other", "", "hashCode", "toString", "Companion", "app_productionEnvRelease"}, k = 1, mv = {1, 9, 0}, xi = 48)
/* loaded from: classes3.dex */
public final /* data */ class Wifi implements Serializable {
    private final String bssid;
    private int dpmWifiSecurity;
    private final int networkId;
    private final int signalLevel;
    private final String ssid;

    /* renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    public static final int $stable = 8;

    public static /* synthetic */ Wifi copy$default(Wifi wifi, String str, String str2, int i, int i2, int i3, int i4, Object obj) {
        if ((i4 & 1) != 0) {
            str = wifi.ssid;
        }
        if ((i4 & 2) != 0) {
            str2 = wifi.bssid;
        }
        String str3 = str2;
        if ((i4 & 4) != 0) {
            i = wifi.dpmWifiSecurity;
        }
        int i5 = i;
        if ((i4 & 8) != 0) {
            i2 = wifi.networkId;
        }
        int i6 = i2;
        if ((i4 & 16) != 0) {
            i3 = wifi.signalLevel;
        }
        return wifi.copy(str, str3, i5, i6, i3);
    }

    /* renamed from: component1, reason: from getter */
    public final String getSsid() {
        return this.ssid;
    }

    /* renamed from: component2, reason: from getter */
    public final String getBssid() {
        return this.bssid;
    }

    /* renamed from: component3, reason: from getter */
    public final int getDpmWifiSecurity() {
        return this.dpmWifiSecurity;
    }

    /* renamed from: component4, reason: from getter */
    public final int getNetworkId() {
        return this.networkId;
    }

    /* renamed from: component5, reason: from getter */
    public final int getSignalLevel() {
        return this.signalLevel;
    }

    public final Wifi copy(String ssid, String bssid, int dpmWifiSecurity, int networkId, int signalLevel) {
        Intrinsics.checkNotNullParameter(ssid, "ssid");
        return new Wifi(ssid, bssid, dpmWifiSecurity, networkId, signalLevel);
    }

    public final String getBssid() {
        return this.bssid;
    }

    public final int getDpmWifiSecurity() {
        return this.dpmWifiSecurity;
    }

    public final int getNetworkId() {
        return this.networkId;
    }

    public final int getSignalLevel() {
        return this.signalLevel;
    }

    public final String getSsid() {
        return this.ssid;
    }

    public final void setDpmWifiSecurity(int i) {
        this.dpmWifiSecurity = i;
    }

    public Wifi(String ssid, String str, int i, int i2, int i3) {
        Intrinsics.checkNotNullParameter(ssid, "ssid");
        this.ssid = ssid;
        this.bssid = str;
        this.dpmWifiSecurity = i;
        this.networkId = i2;
        this.signalLevel = i3;
    }

    public /* synthetic */ Wifi(String str, String str2, int i, int i2, int i3, int i4, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, str2, i, (i4 & 8) != 0 ? -1 : i2, (i4 & 16) != 0 ? 0 : i3);
    }

    /* compiled from: Wifi.kt */
    @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0007J\u000e\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\bJ\u000e\u0010\u0003\u001a\u00020\u00042\u0006\u0010\t\u001a\u00020\nJ\u000e\u0010\u000b\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\u000e¨\u0006\u000f"}, d2 = {"Ltech/rabbit/r1launcher/initstep/model/Wifi$Companion;", "", "()V", "adapt", "Ltech/rabbit/r1launcher/initstep/model/Wifi;", "scanResult", "Landroid/net/wifi/ScanResult;", "wifiConfiguration", "Landroid/net/wifi/WifiConfiguration;", "info", "Landroid/net/wifi/WifiInfo;", "isAvailableSSID", "", "ssid", "", "app_productionEnvRelease"}, k = 1, mv = {1, 9, 0}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final Wifi adapt(ScanResult scanResult) {
            Intrinsics.checkNotNullParameter(scanResult, "scanResult");
            String SSID = scanResult.SSID;
            Intrinsics.checkNotNullExpressionValue(SSID, "SSID");
            return new Wifi(StringsKt.removeSurrounding(SSID, (CharSequence) "\""), scanResult.BSSID, UtilsKt.convertSecurityTypesToDpmWifiSecurity(UtilsKt.getSecurityTypeFromScanResult(scanResult)), 0, WifiManager.calculateSignalLevel(scanResult.level, 3), 8, null);
        }

        public final Wifi adapt(WifiConfiguration wifiConfiguration) {
            Intrinsics.checkNotNullParameter(wifiConfiguration, "wifiConfiguration");
            String SSID = wifiConfiguration.SSID;
            Intrinsics.checkNotNullExpressionValue(SSID, "SSID");
            return new Wifi(StringsKt.removeSurrounding(SSID, (CharSequence) "\""), wifiConfiguration.BSSID, UtilsKt.convertSecurityTypesToDpmWifiSecurity(UtilsKt.getSecurityTypeFromWifiConfiguration(wifiConfiguration)), wifiConfiguration.networkId, 0, 16, null);
        }

        public final Wifi adapt(WifiInfo info) {
            Intrinsics.checkNotNullParameter(info, "info");
            String ssid = info.getSSID();
            Intrinsics.checkNotNullExpressionValue(ssid, "getSSID(...)");
            return new Wifi(StringsKt.removeSurrounding(ssid, (CharSequence) "\""), info.getBSSID(), UtilsKt.convertSecurityTypesToDpmWifiSecurity(info.getCurrentSecurityType()), info.getNetworkId(), 0, 16, null);
        }

        public final boolean isAvailableSSID(String ssid) {
            Intrinsics.checkNotNullParameter(ssid, "ssid");
            char[] charArray = ssid.toCharArray();
            Intrinsics.checkNotNullExpressionValue(charArray, "toCharArray(...)");
            for (char c : charArray) {
                if (c != 0) {
                    return (TextUtils.getTrimmedLength(ssid) == 0 || Intrinsics.areEqual("<unknown ssid>", ssid)) ? false : true;
                }
            }
            return false;
        }
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public Wifi(String wifiSSID) {
        this(wifiSSID, "", UtilsKt.getDpmSecurityTypeUnknownConstant(), -1, 0);
        Intrinsics.checkNotNullParameter(wifiSSID, "wifiSSID");
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!Intrinsics.areEqual(getClass(), other != null ? other.getClass() : null)) {
            return false;
        }
        Intrinsics.checkNotNull(other, "null cannot be cast to non-null type tech.rabbit.r1launcher.initstep.model.Wifi");
        Wifi wifi = (Wifi) other;
        return Intrinsics.areEqual(this.ssid, wifi.ssid) && this.dpmWifiSecurity == wifi.dpmWifiSecurity;
    }

    public int hashCode() {
        return (this.ssid.hashCode() * 31) + this.dpmWifiSecurity;
    }

    public String toString() {
        return "Wifi(ssid=" + this.ssid + ", bssid=" + this.bssid + ", dpmWifiSecurity=$" + UtilsKt.getDpmWifiSecurityText(this.dpmWifiSecurity) + ", networkId=" + this.networkId + ", signalLevel=" + this.signalLevel + ')';
    }
}
