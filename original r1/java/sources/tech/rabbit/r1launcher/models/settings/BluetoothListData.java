package tech.rabbit.r1launcher.models.settings;

import android.bluetooth.BluetoothDevice;
import com.chad.library.adapter.base.entity.MultiItemEntity;
import io.sentry.protocol.Device;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: BluetoothListData.kt */
@Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0011\n\u0002\u0010\u000e\n\u0002\b\u0005\b\u0007\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004R\u001a\u0010\u0005\u001a\u00020\u0006X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0007\u0010\b\"\u0004\b\t\u0010\nR\u001c\u0010\u000b\u001a\u0004\u0018\u00010\fX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\r\u0010\u000e\"\u0004\b\u000f\u0010\u0010R\u001a\u0010\u0011\u001a\u00020\u0006X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0011\u0010\b\"\u0004\b\u0012\u0010\nR\u001a\u0010\u0013\u001a\u00020\u0006X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0013\u0010\b\"\u0004\b\u0014\u0010\nR\u0014\u0010\u0002\u001a\u00020\u0003X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0015\u0010\u0016R\u001a\u0010\u0017\u001a\u00020\u0006X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0018\u0010\b\"\u0004\b\u0019\u0010\nR\u001a\u0010\u001a\u001a\u00020\u0006X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001b\u0010\b\"\u0004\b\u001c\u0010\nR\u001a\u0010\u001d\u001a\u00020\u001eX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001f\u0010 \"\u0004\b!\u0010\"¨\u0006#"}, d2 = {"Ltech/rabbit/r1launcher/models/settings/BluetoothListData;", "Lcom/chad/library/adapter/base/entity/MultiItemEntity;", "itemType", "", "(I)V", "bond", "", "getBond", "()Z", "setBond", "(Z)V", Device.TYPE, "Landroid/bluetooth/BluetoothDevice;", "getDevice", "()Landroid/bluetooth/BluetoothDevice;", "setDevice", "(Landroid/bluetooth/BluetoothDevice;)V", "isConnected", "setConnected", "isMyDevice", "setMyDevice", "getItemType", "()I", "loading", "getLoading", "setLoading", "switch", "getSwitch", "setSwitch", "title", "", "getTitle", "()Ljava/lang/String;", "setTitle", "(Ljava/lang/String;)V", "app_productionEnvRelease"}, k = 1, mv = {1, 9, 0}, xi = 48)
/* loaded from: classes3.dex */
public final class BluetoothListData implements MultiItemEntity {
    public static final int $stable = 8;
    private boolean bond;
    private BluetoothDevice device;
    private boolean isConnected;
    private boolean isMyDevice;
    private final int itemType;
    private boolean loading;
    private boolean switch;
    private String title = "";

    public final boolean getBond() {
        return this.bond;
    }

    public final BluetoothDevice getDevice() {
        return this.device;
    }

    @Override // com.chad.library.adapter.base.entity.MultiItemEntity
    public int getItemType() {
        return this.itemType;
    }

    public final boolean getLoading() {
        return this.loading;
    }

    public final boolean getSwitch() {
        return this.switch;
    }

    public final String getTitle() {
        return this.title;
    }

    /* renamed from: isConnected, reason: from getter */
    public final boolean getIsConnected() {
        return this.isConnected;
    }

    /* renamed from: isMyDevice, reason: from getter */
    public final boolean getIsMyDevice() {
        return this.isMyDevice;
    }

    public final void setBond(boolean z) {
        this.bond = z;
    }

    public final void setConnected(boolean z) {
        this.isConnected = z;
    }

    public final void setDevice(BluetoothDevice bluetoothDevice) {
        this.device = bluetoothDevice;
    }

    public final void setLoading(boolean z) {
        this.loading = z;
    }

    public final void setMyDevice(boolean z) {
        this.isMyDevice = z;
    }

    public final void setSwitch(boolean z) {
        this.switch = z;
    }

    public final void setTitle(String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.title = str;
    }

    public BluetoothListData(int i) {
        this.itemType = i;
    }
}
