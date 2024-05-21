package tech.rabbit.r1launcher.settings.bluetooth.page;

import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* compiled from: BluetoothViewModel.kt */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\b\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002j\u0002\b\u0003j\u0002\b\u0004j\u0002\b\u0005j\u0002\b\u0006j\u0002\b\u0007j\u0002\b\b¨\u0006\t"}, d2 = {"Ltech/rabbit/r1launcher/settings/bluetooth/page/BluetoothState;", "", "(Ljava/lang/String;I)V", "CONNECTING", "CONNECTED", "DISCONNECTED", "DISCONNECTING", "NORMAL", "FAIL", "app_productionEnvRelease"}, k = 1, mv = {1, 9, 0}, xi = 48)
/* loaded from: classes3.dex */
public final class BluetoothState {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ BluetoothState[] $VALUES;
    public static final BluetoothState CONNECTING = new BluetoothState("CONNECTING", 0);
    public static final BluetoothState CONNECTED = new BluetoothState("CONNECTED", 1);
    public static final BluetoothState DISCONNECTED = new BluetoothState("DISCONNECTED", 2);
    public static final BluetoothState DISCONNECTING = new BluetoothState("DISCONNECTING", 3);
    public static final BluetoothState NORMAL = new BluetoothState("NORMAL", 4);
    public static final BluetoothState FAIL = new BluetoothState("FAIL", 5);

    private static final /* synthetic */ BluetoothState[] $values() {
        return new BluetoothState[]{CONNECTING, CONNECTED, DISCONNECTED, DISCONNECTING, NORMAL, FAIL};
    }

    public static EnumEntries<BluetoothState> getEntries() {
        return $ENTRIES;
    }

    public static BluetoothState valueOf(String str) {
        return (BluetoothState) Enum.valueOf(BluetoothState.class, str);
    }

    public static BluetoothState[] values() {
        return (BluetoothState[]) $VALUES.clone();
    }

    private BluetoothState(String str, int i) {
    }

    static {
        BluetoothState[] $values = $values();
        $VALUES = $values;
        $ENTRIES = EnumEntriesKt.enumEntries($values);
    }
}
