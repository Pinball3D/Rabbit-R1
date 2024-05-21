package tech.rabbit.r1launcher.settings.network2;

import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import tech.rabbit.r1launcher.initstep.model.Wifi;

/* compiled from: SettingsNetwork2ViewModel.kt */
@Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0010\n\u0002\u0010\u000e\n\u0000\b\u0087\b\u0018\u00002\u00020\u0001B-\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0007\u0012\b\b\u0002\u0010\b\u001a\u00020\u0007¢\u0006\u0002\u0010\tJ\t\u0010\u000f\u001a\u00020\u0003HÆ\u0003J\u000b\u0010\u0010\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\t\u0010\u0011\u001a\u00020\u0007HÆ\u0003J\t\u0010\u0012\u001a\u00020\u0007HÆ\u0003J3\u0010\u0013\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u00072\b\b\u0002\u0010\b\u001a\u00020\u0007HÆ\u0001J\u0013\u0010\u0014\u001a\u00020\u00072\b\u0010\u0015\u001a\u0004\u0018\u00010\u0001H\u0096\u0002J\b\u0010\u0016\u001a\u00020\u0003H\u0016J\t\u0010\u0017\u001a\u00020\u0018HÖ\u0001R\u0011\u0010\b\u001a\u00020\u0007¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\nR\u0011\u0010\u0006\u001a\u00020\u0007¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\nR\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\fR\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0005¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\u000e¨\u0006\u0019"}, d2 = {"Ltech/rabbit/r1launcher/settings/network2/WifiWrap;", "", "viewType", "", "wifi", "Ltech/rabbit/r1launcher/initstep/model/Wifi;", "isNoUsedWifi", "", "isCurrentConnected", "(ILtech/rabbit/r1launcher/initstep/model/Wifi;ZZ)V", "()Z", "getViewType", "()I", "getWifi", "()Ltech/rabbit/r1launcher/initstep/model/Wifi;", "component1", "component2", "component3", "component4", "copy", "equals", "other", "hashCode", "toString", "", "app_productionEnvRelease"}, k = 1, mv = {1, 9, 0}, xi = 48)
/* loaded from: classes3.dex */
public final /* data */ class WifiWrap {
    public static final int $stable = Wifi.$stable;
    private final boolean isCurrentConnected;
    private final boolean isNoUsedWifi;
    private final int viewType;
    private final Wifi wifi;

    public static /* synthetic */ WifiWrap copy$default(WifiWrap wifiWrap, int i, Wifi wifi, boolean z, boolean z2, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            i = wifiWrap.viewType;
        }
        if ((i2 & 2) != 0) {
            wifi = wifiWrap.wifi;
        }
        if ((i2 & 4) != 0) {
            z = wifiWrap.isNoUsedWifi;
        }
        if ((i2 & 8) != 0) {
            z2 = wifiWrap.isCurrentConnected;
        }
        return wifiWrap.copy(i, wifi, z, z2);
    }

    /* renamed from: component1, reason: from getter */
    public final int getViewType() {
        return this.viewType;
    }

    /* renamed from: component2, reason: from getter */
    public final Wifi getWifi() {
        return this.wifi;
    }

    /* renamed from: component3, reason: from getter */
    public final boolean getIsNoUsedWifi() {
        return this.isNoUsedWifi;
    }

    /* renamed from: component4, reason: from getter */
    public final boolean getIsCurrentConnected() {
        return this.isCurrentConnected;
    }

    public final WifiWrap copy(int viewType, Wifi wifi, boolean isNoUsedWifi, boolean isCurrentConnected) {
        return new WifiWrap(viewType, wifi, isNoUsedWifi, isCurrentConnected);
    }

    public final int getViewType() {
        return this.viewType;
    }

    public final Wifi getWifi() {
        return this.wifi;
    }

    public final boolean isCurrentConnected() {
        return this.isCurrentConnected;
    }

    public final boolean isNoUsedWifi() {
        return this.isNoUsedWifi;
    }

    public String toString() {
        return "WifiWrap(viewType=" + this.viewType + ", wifi=" + this.wifi + ", isNoUsedWifi=" + this.isNoUsedWifi + ", isCurrentConnected=" + this.isCurrentConnected + ')';
    }

    public WifiWrap(int i, Wifi wifi, boolean z, boolean z2) {
        this.viewType = i;
        this.wifi = wifi;
        this.isNoUsedWifi = z;
        this.isCurrentConnected = z2;
    }

    public /* synthetic */ WifiWrap(int i, Wifi wifi, boolean z, boolean z2, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(i, (i2 & 2) != 0 ? null : wifi, (i2 & 4) != 0 ? false : z, (i2 & 8) != 0 ? false : z2);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!Intrinsics.areEqual(getClass(), other != null ? other.getClass() : null)) {
            return false;
        }
        Intrinsics.checkNotNull(other, "null cannot be cast to non-null type tech.rabbit.r1launcher.settings.network2.WifiWrap");
        WifiWrap wifiWrap = (WifiWrap) other;
        if (this.viewType != wifiWrap.viewType) {
            return false;
        }
        return Intrinsics.areEqual(this.wifi, wifiWrap.wifi);
    }

    public int hashCode() {
        int i = this.viewType * 31;
        Wifi wifi = this.wifi;
        return i + (wifi != null ? wifi.hashCode() : 0);
    }
}
