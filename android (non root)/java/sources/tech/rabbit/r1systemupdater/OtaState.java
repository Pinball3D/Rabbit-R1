package tech.rabbit.r1systemupdater;

import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* compiled from: OtaStateHelper.kt */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0010\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002j\u0002\b\u0003j\u0002\b\u0004j\u0002\b\u0005j\u0002\b\u0006j\u0002\b\u0007j\u0002\b\bj\u0002\b\tj\u0002\b\nj\u0002\b\u000bj\u0002\b\fj\u0002\b\rj\u0002\b\u000ej\u0002\b\u000fj\u0002\b\u0010¨\u0006\u0011"}, d2 = {"Ltech/rabbit/r1systemupdater/OtaState;", "", "(Ljava/lang/String;I)V", "CHECKING", "PREPARE_UPDATE", "START_UPDATE", "CHECKING_PKG", "DOWNLOADING", "DOWNLOAD_COMPLETE", "VERIFYING", "FINALIZING", "PREPARE_REBOOT", "NO_UPDATES", "CHECKING_PKG_FAILED", "DOWNLOAD_PKG_FAILED", "VERIFY_PKG_FAILED", "PREPARE_UPDATE_FAILED", "ota_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
/* loaded from: classes3.dex */
public final class OtaState {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ OtaState[] $VALUES;
    public static final OtaState CHECKING = new OtaState("CHECKING", 0);
    public static final OtaState PREPARE_UPDATE = new OtaState("PREPARE_UPDATE", 1);
    public static final OtaState START_UPDATE = new OtaState("START_UPDATE", 2);
    public static final OtaState CHECKING_PKG = new OtaState("CHECKING_PKG", 3);
    public static final OtaState DOWNLOADING = new OtaState("DOWNLOADING", 4);
    public static final OtaState DOWNLOAD_COMPLETE = new OtaState("DOWNLOAD_COMPLETE", 5);
    public static final OtaState VERIFYING = new OtaState("VERIFYING", 6);
    public static final OtaState FINALIZING = new OtaState("FINALIZING", 7);
    public static final OtaState PREPARE_REBOOT = new OtaState("PREPARE_REBOOT", 8);
    public static final OtaState NO_UPDATES = new OtaState("NO_UPDATES", 9);
    public static final OtaState CHECKING_PKG_FAILED = new OtaState("CHECKING_PKG_FAILED", 10);
    public static final OtaState DOWNLOAD_PKG_FAILED = new OtaState("DOWNLOAD_PKG_FAILED", 11);
    public static final OtaState VERIFY_PKG_FAILED = new OtaState("VERIFY_PKG_FAILED", 12);
    public static final OtaState PREPARE_UPDATE_FAILED = new OtaState("PREPARE_UPDATE_FAILED", 13);

    private static final /* synthetic */ OtaState[] $values() {
        return new OtaState[]{CHECKING, PREPARE_UPDATE, START_UPDATE, CHECKING_PKG, DOWNLOADING, DOWNLOAD_COMPLETE, VERIFYING, FINALIZING, PREPARE_REBOOT, NO_UPDATES, CHECKING_PKG_FAILED, DOWNLOAD_PKG_FAILED, VERIFY_PKG_FAILED, PREPARE_UPDATE_FAILED};
    }

    public static EnumEntries<OtaState> getEntries() {
        return $ENTRIES;
    }

    public static OtaState valueOf(String str) {
        return (OtaState) Enum.valueOf(OtaState.class, str);
    }

    public static OtaState[] values() {
        return (OtaState[]) $VALUES.clone();
    }

    private OtaState(String str, int i) {
    }

    static {
        OtaState[] $values = $values();
        $VALUES = $values;
        $ENTRIES = EnumEntriesKt.enumEntries($values);
    }
}
