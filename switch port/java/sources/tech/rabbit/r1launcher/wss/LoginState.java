package tech.rabbit.r1launcher.wss;

import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* compiled from: RabbitEngine.kt */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\t\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002j\u0002\b\u0003j\u0002\b\u0004j\u0002\b\u0005j\u0002\b\u0006j\u0002\b\u0007j\u0002\b\bj\u0002\b\t¨\u0006\n"}, d2 = {"Ltech/rabbit/r1launcher/wss/LoginState;", "", "(Ljava/lang/String;I)V", "NoNetwork", "Connecting", "Connected", "Disconnected", "LoginSuccess", "LoginFailed", "Error", "app_productionEnvRelease"}, k = 1, mv = {1, 9, 0}, xi = 48)
/* loaded from: classes3.dex */
public final class LoginState {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ LoginState[] $VALUES;
    public static final LoginState NoNetwork = new LoginState("NoNetwork", 0);
    public static final LoginState Connecting = new LoginState("Connecting", 1);
    public static final LoginState Connected = new LoginState("Connected", 2);
    public static final LoginState Disconnected = new LoginState("Disconnected", 3);
    public static final LoginState LoginSuccess = new LoginState("LoginSuccess", 4);
    public static final LoginState LoginFailed = new LoginState("LoginFailed", 5);
    public static final LoginState Error = new LoginState("Error", 6);

    private static final /* synthetic */ LoginState[] $values() {
        return new LoginState[]{NoNetwork, Connecting, Connected, Disconnected, LoginSuccess, LoginFailed, Error};
    }

    public static EnumEntries<LoginState> getEntries() {
        return $ENTRIES;
    }

    public static LoginState valueOf(String str) {
        return (LoginState) Enum.valueOf(LoginState.class, str);
    }

    public static LoginState[] values() {
        return (LoginState[]) $VALUES.clone();
    }

    private LoginState(String str, int i) {
    }

    static {
        LoginState[] $values = $values();
        $VALUES = $values;
        $ENTRIES = EnumEntriesKt.enumEntries($values);
    }
}
