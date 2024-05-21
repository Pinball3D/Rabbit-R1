package tech.rabbit.r1launcher.settings.network2.manager;

import androidx.recyclerview.widget.DiffUtil;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import tech.rabbit.r1launcher.initstep.model.Wifi;
import tech.rabbit.r1launcher.settings.network2.WifiWrap;

/* compiled from: NetworksAdapter.kt */
@Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0010\u0000\n\u0000\b\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0003J\u0018\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00022\u0006\u0010\u0007\u001a\u00020\u0002H\u0016J\u0018\u0010\b\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00022\u0006\u0010\u0007\u001a\u00020\u0002H\u0016J\u001a\u0010\t\u001a\u0004\u0018\u00010\n2\u0006\u0010\u0006\u001a\u00020\u00022\u0006\u0010\u0007\u001a\u00020\u0002H\u0016¨\u0006\u000b"}, d2 = {"Ltech/rabbit/r1launcher/settings/network2/manager/DiffCallback;", "Landroidx/recyclerview/widget/DiffUtil$ItemCallback;", "Ltech/rabbit/r1launcher/settings/network2/WifiWrap;", "()V", "areContentsTheSame", "", "oldItem", "newItem", "areItemsTheSame", "getChangePayload", "", "app_productionEnvRelease"}, k = 1, mv = {1, 9, 0}, xi = 48)
/* loaded from: classes3.dex */
final class DiffCallback extends DiffUtil.ItemCallback<WifiWrap> {
    @Override // androidx.recyclerview.widget.DiffUtil.ItemCallback
    public Object getChangePayload(WifiWrap oldItem, WifiWrap newItem) {
        Intrinsics.checkNotNullParameter(oldItem, "oldItem");
        Intrinsics.checkNotNullParameter(newItem, "newItem");
        return null;
    }

    @Override // androidx.recyclerview.widget.DiffUtil.ItemCallback
    public boolean areItemsTheSame(WifiWrap oldItem, WifiWrap newItem) {
        Intrinsics.checkNotNullParameter(oldItem, "oldItem");
        Intrinsics.checkNotNullParameter(newItem, "newItem");
        return oldItem.getViewType() == newItem.getViewType();
    }

    @Override // androidx.recyclerview.widget.DiffUtil.ItemCallback
    public boolean areContentsTheSame(WifiWrap oldItem, WifiWrap newItem) {
        Intrinsics.checkNotNullParameter(oldItem, "oldItem");
        Intrinsics.checkNotNullParameter(newItem, "newItem");
        if (oldItem.isCurrentConnected() == newItem.isCurrentConnected() && oldItem.isNoUsedWifi() == newItem.isNoUsedWifi()) {
            Wifi wifi = oldItem.getWifi();
            String ssid = wifi != null ? wifi.getSsid() : null;
            Wifi wifi2 = newItem.getWifi();
            if (Intrinsics.areEqual(ssid, wifi2 != null ? wifi2.getSsid() : null)) {
                Wifi wifi3 = oldItem.getWifi();
                Integer valueOf = wifi3 != null ? Integer.valueOf(wifi3.getDpmWifiSecurity()) : null;
                Wifi wifi4 = newItem.getWifi();
                if (Intrinsics.areEqual(valueOf, wifi4 != null ? Integer.valueOf(wifi4.getDpmWifiSecurity()) : null)) {
                    return true;
                }
            }
        }
        return false;
    }
}
