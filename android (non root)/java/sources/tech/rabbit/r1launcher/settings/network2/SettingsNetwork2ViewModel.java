package tech.rabbit.r1launcher.settings.network2;

import android.app.Application;
import android.net.wifi.ScanResult;
import android.os.Handler;
import android.os.Looper;
import androidx.autofill.HintConstants;
import androidx.lifecycle.AbstractSavedStateViewModelFactory;
import androidx.lifecycle.AndroidViewModel;
import androidx.lifecycle.SavedStateHandle;
import androidx.lifecycle.ViewModel;
import androidx.savedstate.SavedStateRegistryOwner;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.TuplesKt;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.flow.MutableSharedFlow;
import kotlinx.coroutines.flow.SharedFlow;
import kotlinx.coroutines.flow.SharedFlowKt;
import tech.rabbit.common.utils.RLog;
import tech.rabbit.r1launcher.components.wifiutils.WifiConnectorBuilder;
import tech.rabbit.r1launcher.components.wifiutils.WifiUtils;
import tech.rabbit.r1launcher.components.wifiutils.wifiConnect.ConnectionErrorCode;
import tech.rabbit.r1launcher.components.wifiutils.wifiConnect.ConnectionSuccessListener;
import tech.rabbit.r1launcher.components.wifiutils.wifiRemove.RemoveErrorCode;
import tech.rabbit.r1launcher.components.wifiutils.wifiRemove.RemoveSuccessListener;
import tech.rabbit.r1launcher.components.wifiutils.wifiScan.ScanResultsListener;
import tech.rabbit.r1launcher.initstep.model.Wifi;
import tech.rabbit.r1launcher.settings.network2.manager.NetworksAdapter;
import tech.rabbit.r1launcher.settings.utils.SystemControllerUtil;

/* compiled from: SettingsNetwork2ViewModel.kt */
@Metadata(d1 = {"\u0000V\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0006\n\u0002\u0010\u000e\n\u0002\b\u0012\b\u0007\u0018\u0000 62\u00020\u0001:\u00016B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\u0006\u0010\u001d\u001a\u00020\u001eJ*\u0010\u001f\u001a\b\u0012\u0004\u0012\u00020\n0\t2\f\u0010 \u001a\b\u0012\u0004\u0012\u00020\r0\t2\f\u0010!\u001a\b\u0012\u0004\u0012\u00020\r0\tH\u0002J\u0016\u0010\"\u001a\u00020\u001e2\u0006\u0010#\u001a\u00020\r2\u0006\u0010$\u001a\u00020%J\u0010\u0010&\u001a\u00020\u001e2\u0006\u0010#\u001a\u00020\rH\u0007J\u000e\u0010'\u001a\u00020\u001e2\u0006\u0010#\u001a\u00020\rJ\u0018\u0010(\u001a\u00020\u001e2\u0006\u0010#\u001a\u00020\r2\b\b\u0002\u0010)\u001a\u00020\u0007J\b\u0010*\u001a\u0004\u0018\u00010\rJ\b\u0010+\u001a\u0004\u0018\u00010\rJ\u0006\u0010,\u001a\u00020\u0007J\u0006\u0010-\u001a\u00020\u001eJ\u000e\u0010.\u001a\u00020\u001e2\u0006\u0010#\u001a\u00020\rJ\u0006\u0010/\u001a\u00020\u001eJ\u0006\u00100\u001a\u00020\u001eJ\u0006\u00101\u001a\u00020\u001eJ\u000e\u00102\u001a\u00020\u001e2\u0006\u00103\u001a\u00020\u0007J\u0018\u00104\u001a\u00020\u001e2\u0006\u0010#\u001a\u00020\r2\b\u0010$\u001a\u0004\u0018\u00010%J\u000e\u00105\u001a\u00020\u001e2\u0006\u00103\u001a\u00020\u0007R\u0014\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00070\u0006X\u0082\u0004¢\u0006\u0002\n\u0000R\u001a\u0010\b\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\n0\t0\u0006X\u0082\u0004¢\u0006\u0002\n\u0000R \u0010\u000b\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\r\u0012\u0004\u0012\u00020\u000e0\f0\u0006X\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\u00070\u0006X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u0017\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\u00070\u0011¢\u0006\b\n\u0000\u001a\u0004\b\u0012\u0010\u0013R\u0010\u0010\u0014\u001a\u0004\u0018\u00010\rX\u0082\u000e¢\u0006\u0002\n\u0000R\u001d\u0010\u0015\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\n0\t0\u0011¢\u0006\b\n\u0000\u001a\u0004\b\u0016\u0010\u0013R#\u0010\u0017\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\r\u0012\u0004\u0012\u00020\u000e0\f0\u0011¢\u0006\b\n\u0000\u001a\u0004\b\u0018\u0010\u0013R\u000e\u0010\u0019\u001a\u00020\u001aX\u0082\u0004¢\u0006\u0002\n\u0000R\u0017\u0010\u001b\u001a\b\u0012\u0004\u0012\u00020\u00070\u0011¢\u0006\b\n\u0000\u001a\u0004\b\u001c\u0010\u0013¨\u00067"}, d2 = {"Ltech/rabbit/r1launcher/settings/network2/SettingsNetwork2ViewModel;", "Landroidx/lifecycle/AndroidViewModel;", "application", "Landroid/app/Application;", "(Landroid/app/Application;)V", "_cellularUIState", "Lkotlinx/coroutines/flow/MutableSharedFlow;", "", "_scanWifiItems", "", "Ltech/rabbit/r1launcher/settings/network2/WifiWrap;", "_wifiConnectState", "Lkotlin/Pair;", "Ltech/rabbit/r1launcher/initstep/model/Wifi;", "Ltech/rabbit/r1launcher/settings/network2/WifiConnectState;", "_wifiUIState", "cellularUIState", "Lkotlinx/coroutines/flow/SharedFlow;", "getCellularUIState", "()Lkotlinx/coroutines/flow/SharedFlow;", "lastSelectedWifi", "scanWifiItems", "getScanWifiItems", "wifiConnectState", "getWifiConnectState", "wifiScanTimer", "Landroid/os/Handler;", "wifiUIState", "getWifiUIState", "clearScanWifiResult", "", "clearWifiItems", "savedWifiItemsFromSystem", "scanResults", "connectWifiAtPassword", "wifi", HintConstants.AUTOFILL_HINT_PASSWORD, "", "connectWifiAtSavedWifi", "disconnectWifi", "forgetWifi", "needNotifyUI", "getAndClearLastSelectedWifi", "getLastSelectedWifi", "hasLastSelectedWifiCache", "resetScanWifi", "saveLastSelectedWifi", "scanWifiIfEnable", "switchCellularState", "switchWifiState", "updateCellularUIState", "isEnable", "updateWifiConnectStateFromNetworkItem", "updateWifiUIState", "Companion", "app_productionEnvRelease"}, k = 1, mv = {1, 9, 0}, xi = 48)
/* loaded from: classes3.dex */
public final class SettingsNetwork2ViewModel extends AndroidViewModel {
    private final MutableSharedFlow<Boolean> _cellularUIState;
    private final MutableSharedFlow<List<WifiWrap>> _scanWifiItems;
    private final MutableSharedFlow<Pair<Wifi, WifiConnectState>> _wifiConnectState;
    private final MutableSharedFlow<Boolean> _wifiUIState;
    private final Application application;
    private final SharedFlow<Boolean> cellularUIState;
    private Wifi lastSelectedWifi;
    private final SharedFlow<List<WifiWrap>> scanWifiItems;
    private final SharedFlow<Pair<Wifi, WifiConnectState>> wifiConnectState;
    private final Handler wifiScanTimer;
    private final SharedFlow<Boolean> wifiUIState;

    /* renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    public static final int $stable = 8;

    public final Wifi getAndClearLastSelectedWifi() {
        Wifi wifi = this.lastSelectedWifi;
        this.lastSelectedWifi = null;
        return wifi;
    }

    public final SharedFlow<Boolean> getCellularUIState() {
        return this.cellularUIState;
    }

    public final Wifi getLastSelectedWifi() {
        return this.lastSelectedWifi;
    }

    public final SharedFlow<List<WifiWrap>> getScanWifiItems() {
        return this.scanWifiItems;
    }

    public final SharedFlow<Pair<Wifi, WifiConnectState>> getWifiConnectState() {
        return this.wifiConnectState;
    }

    public final SharedFlow<Boolean> getWifiUIState() {
        return this.wifiUIState;
    }

    public final boolean hasLastSelectedWifiCache() {
        return this.lastSelectedWifi != null;
    }

    public final void saveLastSelectedWifi(Wifi wifi) {
        Intrinsics.checkNotNullParameter(wifi, "wifi");
        this.lastSelectedWifi = wifi;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SettingsNetwork2ViewModel(Application application) {
        super(application);
        Intrinsics.checkNotNullParameter(application, "application");
        this.application = application;
        MutableSharedFlow<Boolean> MutableSharedFlow$default = SharedFlowKt.MutableSharedFlow$default(1, 0, null, 6, null);
        MutableSharedFlow$default.tryEmit(Boolean.valueOf(SystemControllerUtil.INSTANCE.isSimCardExist(application) && SystemControllerUtil.INSTANCE.isCellularEnabled(application)));
        this._cellularUIState = MutableSharedFlow$default;
        this.cellularUIState = MutableSharedFlow$default;
        MutableSharedFlow<Boolean> MutableSharedFlow$default2 = SharedFlowKt.MutableSharedFlow$default(1, 0, null, 6, null);
        MutableSharedFlow$default2.tryEmit(Boolean.valueOf(SystemControllerUtil.INSTANCE.isWifiEnable(application)));
        this._wifiUIState = MutableSharedFlow$default2;
        this.wifiUIState = MutableSharedFlow$default2;
        MutableSharedFlow<List<WifiWrap>> MutableSharedFlow$default3 = SharedFlowKt.MutableSharedFlow$default(1, 0, null, 6, null);
        this._scanWifiItems = MutableSharedFlow$default3;
        this.scanWifiItems = MutableSharedFlow$default3;
        this.wifiScanTimer = new Handler(Looper.getMainLooper());
        MutableSharedFlow<Pair<Wifi, WifiConnectState>> MutableSharedFlow$default4 = SharedFlowKt.MutableSharedFlow$default(1, 0, null, 6, null);
        this._wifiConnectState = MutableSharedFlow$default4;
        this.wifiConnectState = MutableSharedFlow$default4;
    }

    /* compiled from: SettingsNetwork2ViewModel.kt */
    @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0016\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\b¨\u0006\t"}, d2 = {"Ltech/rabbit/r1launcher/settings/network2/SettingsNetwork2ViewModel$Companion;", "", "()V", "provideFactory", "Landroidx/lifecycle/AbstractSavedStateViewModelFactory;", "application", "Landroid/app/Application;", "owner", "Landroidx/savedstate/SavedStateRegistryOwner;", "app_productionEnvRelease"}, k = 1, mv = {1, 9, 0}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final AbstractSavedStateViewModelFactory provideFactory(final Application application, final SavedStateRegistryOwner owner) {
            Intrinsics.checkNotNullParameter(application, "application");
            Intrinsics.checkNotNullParameter(owner, "owner");
            return new AbstractSavedStateViewModelFactory(owner) { // from class: tech.rabbit.r1launcher.settings.network2.SettingsNetwork2ViewModel$Companion$provideFactory$1
                @Override // androidx.lifecycle.AbstractSavedStateViewModelFactory
                protected <T extends ViewModel> T create(String key, Class<T> modelClass, SavedStateHandle handle) {
                    Intrinsics.checkNotNullParameter(key, "key");
                    Intrinsics.checkNotNullParameter(modelClass, "modelClass");
                    Intrinsics.checkNotNullParameter(handle, "handle");
                    return new SettingsNetwork2ViewModel(application);
                }
            };
        }
    }

    public final void updateCellularUIState(boolean isEnable) {
        this._cellularUIState.tryEmit(Boolean.valueOf(isEnable));
    }

    public final void switchCellularState() {
        if (SystemControllerUtil.INSTANCE.isSimCardExist(this.application)) {
            boolean z = !SystemControllerUtil.INSTANCE.isCellularEnabled(this.application);
            if (SystemControllerUtil.INSTANCE.setCellularEnable(this.application, z)) {
                updateCellularUIState(z);
            }
        }
    }

    public final void updateWifiUIState(boolean isEnable) {
        this._wifiUIState.tryEmit(Boolean.valueOf(isEnable));
    }

    public final void switchWifiState() {
        SystemControllerUtil.setWifiEnable$default(SystemControllerUtil.INSTANCE, this.application, !SystemControllerUtil.INSTANCE.isWifiEnable(this.application), null, 4, null);
    }

    public final void scanWifiIfEnable() {
        if (SystemControllerUtil.INSTANCE.isWifiEnable(this.application)) {
            WifiUtils.withContext(this.application).scanWifi(new ScanResultsListener() { // from class: tech.rabbit.r1launcher.settings.network2.SettingsNetwork2ViewModel$$ExternalSyntheticLambda0
                @Override // tech.rabbit.r1launcher.components.wifiutils.wifiScan.ScanResultsListener
                public final void onScanResults(List list) {
                    SettingsNetwork2ViewModel.scanWifiIfEnable$lambda$5(SettingsNetwork2ViewModel.this, list);
                }
            }).start();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void scanWifiIfEnable$lambda$5(final SettingsNetwork2ViewModel this$0, List scanResults) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(scanResults, "scanResults");
        StringBuilder sb = new StringBuilder("scanWifiIfEnable, ");
        List<ScanResult> list = scanResults;
        ArrayList arrayList = new ArrayList(CollectionsKt.collectionSizeOrDefault(list, 10));
        for (ScanResult scanResult : list) {
            Wifi.Companion companion = Wifi.INSTANCE;
            Intrinsics.checkNotNull(scanResult);
            arrayList.add(companion.adapt(scanResult));
        }
        RLog.d("SettingsNetwork2ViewModel", sb.append(CollectionsKt.joinToString$default(arrayList, null, null, null, 0, null, null, 63, null)).toString());
        if (SystemControllerUtil.INSTANCE.isWifiEnable(this$0.application)) {
            List<Wifi> savedWifiListFromSystem = SystemControllerUtil.INSTANCE.getSavedWifiListFromSystem(this$0.application);
            ArrayList arrayList2 = new ArrayList(CollectionsKt.collectionSizeOrDefault(list, 10));
            for (ScanResult scanResult2 : list) {
                Wifi.Companion companion2 = Wifi.INSTANCE;
                Intrinsics.checkNotNull(scanResult2);
                arrayList2.add(companion2.adapt(scanResult2));
            }
            this$0._scanWifiItems.tryEmit(this$0.clearWifiItems(savedWifiListFromSystem, arrayList2));
            this$0.wifiScanTimer.postDelayed(new Runnable() { // from class: tech.rabbit.r1launcher.settings.network2.SettingsNetwork2ViewModel$scanWifiIfEnable$lambda$5$$inlined$postDelayed$default$1
                @Override // java.lang.Runnable
                public final void run() {
                    RLog.d("SettingsNetwork2ViewModel", "wifiScanTimer.postDelayed");
                    SettingsNetwork2ViewModel.this.scanWifiIfEnable();
                }
            }, 30000L);
            return;
        }
        this$0.clearScanWifiResult();
    }

    private final List<WifiWrap> clearWifiItems(List<Wifi> savedWifiItemsFromSystem, List<Wifi> scanResults) {
        Wifi currentConnectedWifi = SystemControllerUtil.INSTANCE.getCurrentConnectedWifi(this.application);
        ArrayList arrayList = new ArrayList();
        for (Object obj : savedWifiItemsFromSystem) {
            if (Wifi.INSTANCE.isAvailableSSID(((Wifi) obj).getSsid())) {
                arrayList.add(obj);
            }
        }
        HashSet hashSet = new HashSet();
        ArrayList arrayList2 = new ArrayList();
        for (Object obj2 : arrayList) {
            if (hashSet.add(Integer.valueOf(Integer.hashCode(((Wifi) obj2).getNetworkId())))) {
                arrayList2.add(obj2);
            }
        }
        ArrayList arrayList3 = arrayList2;
        ArrayList arrayList4 = new ArrayList(CollectionsKt.collectionSizeOrDefault(arrayList3, 10));
        Iterator it = arrayList3.iterator();
        while (true) {
            boolean z = true;
            if (!it.hasNext()) {
                break;
            }
            Wifi wifi = (Wifi) it.next();
            if (currentConnectedWifi == null || wifi.getNetworkId() != currentConnectedWifi.getNetworkId() || !Intrinsics.areEqual(wifi.getSsid(), currentConnectedWifi.getSsid())) {
                z = false;
            }
            arrayList4.add(new WifiWrap(NetworksAdapter.VIEW_TYPE_WIFI_ITEM, wifi, false, z));
        }
        HashSet hashSet2 = new HashSet();
        ArrayList arrayList5 = new ArrayList();
        Iterator it2 = arrayList4.iterator();
        while (true) {
            if (!it2.hasNext()) {
                break;
            }
            Object next = it2.next();
            WifiWrap wifiWrap = (WifiWrap) next;
            Wifi wifi2 = wifiWrap.getWifi();
            String ssid = wifi2 != null ? wifi2.getSsid() : null;
            int hashCode = ssid != null ? ssid.hashCode() : 0;
            Wifi wifi3 = wifiWrap.getWifi();
            Integer valueOf = wifi3 != null ? Integer.valueOf(wifi3.getDpmWifiSecurity()) : null;
            if (hashSet2.add(Integer.valueOf(hashCode + (valueOf != null ? valueOf.hashCode() : 0)))) {
                arrayList5.add(next);
            }
        }
        ArrayList arrayList6 = arrayList5;
        ArrayList arrayList7 = new ArrayList();
        for (Object obj3 : scanResults) {
            if (Wifi.INSTANCE.isAvailableSSID(((Wifi) obj3).getSsid())) {
                arrayList7.add(obj3);
            }
        }
        ArrayList arrayList8 = arrayList7;
        ArrayList arrayList9 = new ArrayList(CollectionsKt.collectionSizeOrDefault(arrayList8, 10));
        Iterator it3 = arrayList8.iterator();
        while (it3.hasNext()) {
            arrayList9.add(new WifiWrap(NetworksAdapter.VIEW_TYPE_WIFI_ITEM, (Wifi) it3.next(), true, false, 8, null));
        }
        HashSet hashSet3 = new HashSet();
        ArrayList arrayList10 = new ArrayList();
        for (Object obj4 : arrayList9) {
            WifiWrap wifiWrap2 = (WifiWrap) obj4;
            Wifi wifi4 = wifiWrap2.getWifi();
            String ssid2 = wifi4 != null ? wifi4.getSsid() : null;
            int hashCode2 = ssid2 != null ? ssid2.hashCode() : 0;
            Wifi wifi5 = wifiWrap2.getWifi();
            Integer valueOf2 = wifi5 != null ? Integer.valueOf(wifi5.getDpmWifiSecurity()) : null;
            if (hashSet3.add(Integer.valueOf(hashCode2 + (valueOf2 != null ? valueOf2.hashCode() : 0)))) {
                arrayList10.add(obj4);
            }
        }
        ArrayList arrayList11 = arrayList10;
        ArrayList arrayList12 = new ArrayList();
        ArrayList arrayList13 = arrayList6;
        if (!arrayList13.isEmpty()) {
            arrayList12.add(new WifiWrap(999, null, false, false, 14, null));
            arrayList12.addAll(arrayList13);
        }
        arrayList12.add(new WifiWrap(NetworksAdapter.VIEW_TYPE_NETWORKS_LABEL, null, false, false, 14, null));
        arrayList12.addAll(CollectionsKt.subtract(arrayList11, CollectionsKt.toSet(arrayList6)));
        return arrayList12;
    }

    public final void resetScanWifi() {
        this.wifiScanTimer.removeCallbacksAndMessages(null);
    }

    public final void clearScanWifiResult() {
        RLog.d("SettingsNetwork2ViewModel", "clearScanWifiResult");
        this._scanWifiItems.tryEmit(CollectionsKt.emptyList());
    }

    public final void updateWifiConnectStateFromNetworkItem(Wifi wifi, String password) {
        Object obj;
        Intrinsics.checkNotNullParameter(wifi, "wifi");
        Iterator<T> it = SystemControllerUtil.INSTANCE.getSavedWifiListFromSystem(this.application).iterator();
        while (true) {
            if (!it.hasNext()) {
                obj = null;
                break;
            }
            obj = it.next();
            Wifi wifi2 = (Wifi) obj;
            if (Intrinsics.areEqual(wifi2.getSsid(), wifi.getSsid()) && wifi2.getDpmWifiSecurity() == wifi.getDpmWifiSecurity()) {
                break;
            }
        }
        Wifi wifi3 = (Wifi) obj;
        if (wifi3 == null) {
            String str = password;
            if (str == null || str.length() == 0) {
                this._wifiConnectState.tryEmit(TuplesKt.to(wifi, WifiConnectState.NoConnect));
                return;
            } else {
                this._wifiConnectState.tryEmit(TuplesKt.to(wifi, WifiConnectState.Connecting));
                return;
            }
        }
        Wifi currentConnectedWifi = SystemControllerUtil.INSTANCE.getCurrentConnectedWifi(this.application);
        if (currentConnectedWifi != null && wifi3.getNetworkId() == currentConnectedWifi.getNetworkId() && Intrinsics.areEqual(wifi3.getSsid(), currentConnectedWifi.getSsid())) {
            this._wifiConnectState.tryEmit(TuplesKt.to(wifi, WifiConnectState.Connected));
        } else {
            this._wifiConnectState.tryEmit(TuplesKt.to(wifi, WifiConnectState.NoConnect));
        }
    }

    public final void connectWifiAtPassword(final Wifi wifi, String password) {
        Intrinsics.checkNotNullParameter(wifi, "wifi");
        Intrinsics.checkNotNullParameter(password, "password");
        this._wifiConnectState.tryEmit(TuplesKt.to(wifi, WifiConnectState.Connecting));
        WifiConnectorBuilder.WifiUtilsBuilder withContext = WifiUtils.withContext(this.application);
        String ssid = wifi.getSsid();
        String bssid = wifi.getBssid();
        if (bssid == null) {
            bssid = "";
        }
        withContext.connectWith(ssid, bssid, password).onConnectionResult(new ConnectionSuccessListener() { // from class: tech.rabbit.r1launcher.settings.network2.SettingsNetwork2ViewModel$connectWifiAtPassword$1
            @Override // tech.rabbit.r1launcher.components.wifiutils.wifiConnect.ConnectionSuccessListener
            public void success() {
                MutableSharedFlow mutableSharedFlow;
                SettingsNetwork2ViewModel.this.resetScanWifi();
                SettingsNetwork2ViewModel.this.scanWifiIfEnable();
                mutableSharedFlow = SettingsNetwork2ViewModel.this._wifiConnectState;
                mutableSharedFlow.tryEmit(TuplesKt.to(wifi, WifiConnectState.Connected));
            }

            @Override // tech.rabbit.r1launcher.components.wifiutils.wifiConnect.ConnectionSuccessListener
            public void failed(ConnectionErrorCode errorCode) {
                MutableSharedFlow mutableSharedFlow;
                Intrinsics.checkNotNullParameter(errorCode, "errorCode");
                SettingsNetwork2ViewModel.this.forgetWifi(wifi, false);
                SettingsNetwork2ViewModel.this.resetScanWifi();
                SettingsNetwork2ViewModel.this.scanWifiIfEnable();
                mutableSharedFlow = SettingsNetwork2ViewModel.this._wifiConnectState;
                mutableSharedFlow.tryEmit(TuplesKt.to(wifi, WifiConnectState.ConnectFailure));
            }
        }).start();
    }

    public final void connectWifiAtSavedWifi(final Wifi wifi) {
        Intrinsics.checkNotNullParameter(wifi, "wifi");
        this._wifiConnectState.tryEmit(TuplesKt.to(wifi, WifiConnectState.Connecting));
        WifiUtils.withContext(this.application).connectWith(wifi.getSsid()).onConnectionResult(new ConnectionSuccessListener() { // from class: tech.rabbit.r1launcher.settings.network2.SettingsNetwork2ViewModel$connectWifiAtSavedWifi$1
            @Override // tech.rabbit.r1launcher.components.wifiutils.wifiConnect.ConnectionSuccessListener
            public void success() {
                MutableSharedFlow mutableSharedFlow;
                SettingsNetwork2ViewModel.this.resetScanWifi();
                SettingsNetwork2ViewModel.this.scanWifiIfEnable();
                mutableSharedFlow = SettingsNetwork2ViewModel.this._wifiConnectState;
                mutableSharedFlow.tryEmit(TuplesKt.to(wifi, WifiConnectState.Connected));
            }

            @Override // tech.rabbit.r1launcher.components.wifiutils.wifiConnect.ConnectionSuccessListener
            public void failed(ConnectionErrorCode errorCode) {
                MutableSharedFlow mutableSharedFlow;
                Intrinsics.checkNotNullParameter(errorCode, "errorCode");
                mutableSharedFlow = SettingsNetwork2ViewModel.this._wifiConnectState;
                mutableSharedFlow.tryEmit(TuplesKt.to(wifi, WifiConnectState.ConnectFailure));
            }
        }).start();
    }

    public final void disconnectWifi(Wifi wifi) {
        Intrinsics.checkNotNullParameter(wifi, "wifi");
        this._wifiConnectState.tryEmit(TuplesKt.to(wifi, WifiConnectState.Disconnecting));
        if (SystemControllerUtil.INSTANCE.disconnectWifi(this.application, wifi)) {
            this._wifiConnectState.tryEmit(TuplesKt.to(wifi, WifiConnectState.NoConnect));
        } else {
            this._wifiConnectState.tryEmit(TuplesKt.to(wifi, WifiConnectState.Connected));
        }
        resetScanWifi();
        scanWifiIfEnable();
    }

    public static /* synthetic */ void forgetWifi$default(SettingsNetwork2ViewModel settingsNetwork2ViewModel, Wifi wifi, boolean z, int i, Object obj) {
        if ((i & 2) != 0) {
            z = true;
        }
        settingsNetwork2ViewModel.forgetWifi(wifi, z);
    }

    public final void forgetWifi(final Wifi wifi, final boolean needNotifyUI) {
        Intrinsics.checkNotNullParameter(wifi, "wifi");
        WifiConnectorBuilder.WifiUtilsBuilder withContext = WifiUtils.withContext(this.application);
        String ssid = wifi.getSsid();
        String bssid = wifi.getBssid();
        if (bssid == null) {
            bssid = "";
        }
        withContext.remove(ssid, bssid, new RemoveSuccessListener() { // from class: tech.rabbit.r1launcher.settings.network2.SettingsNetwork2ViewModel$forgetWifi$1
            @Override // tech.rabbit.r1launcher.components.wifiutils.wifiRemove.RemoveSuccessListener
            public void failed(RemoveErrorCode errorCode) {
                Intrinsics.checkNotNullParameter(errorCode, "errorCode");
            }

            @Override // tech.rabbit.r1launcher.components.wifiutils.wifiRemove.RemoveSuccessListener
            public void success() {
                MutableSharedFlow mutableSharedFlow;
                if (needNotifyUI) {
                    mutableSharedFlow = this._wifiConnectState;
                    mutableSharedFlow.tryEmit(TuplesKt.to(wifi, WifiConnectState.Forget));
                }
            }
        });
    }
}
