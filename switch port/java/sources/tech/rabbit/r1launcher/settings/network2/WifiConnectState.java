package tech.rabbit.r1launcher.settings.network2;

import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* compiled from: SettingsNetwork2ViewModel.kt */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\b\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002j\u0002\b\u0003j\u0002\b\u0004j\u0002\b\u0005j\u0002\b\u0006j\u0002\b\u0007j\u0002\b\b¨\u0006\t"}, d2 = {"Ltech/rabbit/r1launcher/settings/network2/WifiConnectState;", "", "(Ljava/lang/String;I)V", "Connecting", "Connected", "Disconnecting", "NoConnect", "ConnectFailure", "Forget", "app_productionEnvRelease"}, k = 1, mv = {1, 9, 0}, xi = 48)
/* loaded from: classes3.dex */
public final class WifiConnectState {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ WifiConnectState[] $VALUES;
    public static final WifiConnectState Connecting = new WifiConnectState("Connecting", 0);
    public static final WifiConnectState Connected = new WifiConnectState("Connected", 1);
    public static final WifiConnectState Disconnecting = new WifiConnectState("Disconnecting", 2);
    public static final WifiConnectState NoConnect = new WifiConnectState("NoConnect", 3);
    public static final WifiConnectState ConnectFailure = new WifiConnectState("ConnectFailure", 4);
    public static final WifiConnectState Forget = new WifiConnectState("Forget", 5);

    private static final /* synthetic */ WifiConnectState[] $values() {
        return new WifiConnectState[]{Connecting, Connected, Disconnecting, NoConnect, ConnectFailure, Forget};
    }

    public static EnumEntries<WifiConnectState> getEntries() {
        return $ENTRIES;
    }

    public static WifiConnectState valueOf(String str) {
        return (WifiConnectState) Enum.valueOf(WifiConnectState.class, str);
    }

    public static WifiConnectState[] values() {
        return (WifiConnectState[]) $VALUES.clone();
    }

    private WifiConnectState(String str, int i) {
    }

    static {
        WifiConnectState[] $values = $values();
        $VALUES = $values;
        $ENTRIES = EnumEntriesKt.enumEntries($values);
    }
}
