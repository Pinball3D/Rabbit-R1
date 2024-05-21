package tech.rabbit.r1launcher.initstep.model;

import java.io.Serializable;
import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: ScanQrCodeResult.kt */
@Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\r\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0004\b\u0087\b\u0018\u0000 \u001b2\u00020\u0001:\u0002\u001b\u001cB5\u0012\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0007¢\u0006\u0002\u0010\bJ\u000b\u0010\u000f\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010\u0010\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010\u0011\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010\u0012\u001a\u0004\u0018\u00010\u0007HÆ\u0003J9\u0010\u0013\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0007HÆ\u0001J\u0013\u0010\u0014\u001a\u00020\u00152\b\u0010\u0016\u001a\u0004\u0018\u00010\u0017HÖ\u0003J\t\u0010\u0018\u001a\u00020\u0019HÖ\u0001J\t\u0010\u001a\u001a\u00020\u0003HÖ\u0001R\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\nR\u0013\u0010\u0005\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\nR\u0013\u0010\u0006\u001a\u0004\u0018\u00010\u0007¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\rR\u0013\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\n¨\u0006\u001d"}, d2 = {"Ltech/rabbit/r1launcher/initstep/model/ScanQrCodeResult;", "Ljava/io/Serializable;", "username", "", "accountKey", "actualUserId", "errorType", "Ltech/rabbit/r1launcher/initstep/model/ScanQrCodeResult$ErrorType;", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ltech/rabbit/r1launcher/initstep/model/ScanQrCodeResult$ErrorType;)V", "getAccountKey", "()Ljava/lang/String;", "getActualUserId", "getErrorType", "()Ltech/rabbit/r1launcher/initstep/model/ScanQrCodeResult$ErrorType;", "getUsername", "component1", "component2", "component3", "component4", "copy", "equals", "", "other", "", "hashCode", "", "toString", "Companion", "ErrorType", "app_productionEnvRelease"}, k = 1, mv = {1, 9, 0}, xi = 48)
/* loaded from: classes3.dex */
public final /* data */ class ScanQrCodeResult implements Serializable {
    public static final int $stable = 0;
    public static final String EXTRA_SCAN_QR_CODE_RESULT = "EXTRA_SCAN_QR_CODE_RESULT";
    private final String accountKey;
    private final String actualUserId;
    private final ErrorType errorType;
    private final String username;

    public ScanQrCodeResult() {
        this(null, null, null, null, 15, null);
    }

    public static /* synthetic */ ScanQrCodeResult copy$default(ScanQrCodeResult scanQrCodeResult, String str, String str2, String str3, ErrorType errorType, int i, Object obj) {
        if ((i & 1) != 0) {
            str = scanQrCodeResult.username;
        }
        if ((i & 2) != 0) {
            str2 = scanQrCodeResult.accountKey;
        }
        if ((i & 4) != 0) {
            str3 = scanQrCodeResult.actualUserId;
        }
        if ((i & 8) != 0) {
            errorType = scanQrCodeResult.errorType;
        }
        return scanQrCodeResult.copy(str, str2, str3, errorType);
    }

    /* renamed from: component1, reason: from getter */
    public final String getUsername() {
        return this.username;
    }

    /* renamed from: component2, reason: from getter */
    public final String getAccountKey() {
        return this.accountKey;
    }

    /* renamed from: component3, reason: from getter */
    public final String getActualUserId() {
        return this.actualUserId;
    }

    /* renamed from: component4, reason: from getter */
    public final ErrorType getErrorType() {
        return this.errorType;
    }

    public final ScanQrCodeResult copy(String username, String accountKey, String actualUserId, ErrorType errorType) {
        return new ScanQrCodeResult(username, accountKey, actualUserId, errorType);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof ScanQrCodeResult)) {
            return false;
        }
        ScanQrCodeResult scanQrCodeResult = (ScanQrCodeResult) other;
        return Intrinsics.areEqual(this.username, scanQrCodeResult.username) && Intrinsics.areEqual(this.accountKey, scanQrCodeResult.accountKey) && Intrinsics.areEqual(this.actualUserId, scanQrCodeResult.actualUserId) && this.errorType == scanQrCodeResult.errorType;
    }

    public final String getAccountKey() {
        return this.accountKey;
    }

    public final String getActualUserId() {
        return this.actualUserId;
    }

    public final ErrorType getErrorType() {
        return this.errorType;
    }

    public final String getUsername() {
        return this.username;
    }

    public int hashCode() {
        String str = this.username;
        int hashCode = (str == null ? 0 : str.hashCode()) * 31;
        String str2 = this.accountKey;
        int hashCode2 = (hashCode + (str2 == null ? 0 : str2.hashCode())) * 31;
        String str3 = this.actualUserId;
        int hashCode3 = (hashCode2 + (str3 == null ? 0 : str3.hashCode())) * 31;
        ErrorType errorType = this.errorType;
        return hashCode3 + (errorType != null ? errorType.hashCode() : 0);
    }

    public String toString() {
        return "ScanQrCodeResult(username=" + this.username + ", accountKey=" + this.accountKey + ", actualUserId=" + this.actualUserId + ", errorType=" + this.errorType + ')';
    }

    public ScanQrCodeResult(String str, String str2, String str3, ErrorType errorType) {
        this.username = str;
        this.accountKey = str2;
        this.actualUserId = str3;
        this.errorType = errorType;
    }

    public /* synthetic */ ScanQrCodeResult(String str, String str2, String str3, ErrorType errorType, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? null : str, (i & 2) != 0 ? null : str2, (i & 4) != 0 ? null : str3, (i & 8) != 0 ? null : errorType);
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* compiled from: ScanQrCodeResult.kt */
    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\b\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002j\u0002\b\u0003j\u0002\b\u0004j\u0002\b\u0005j\u0002\b\u0006j\u0002\b\u0007j\u0002\b\b¨\u0006\t"}, d2 = {"Ltech/rabbit/r1launcher/initstep/model/ScanQrCodeResult$ErrorType;", "", "(Ljava/lang/String;I)V", "NetworkError", "RequestError", "ServerError", "ResponseError", "IllegalQrCodeError", "ResultError", "app_productionEnvRelease"}, k = 1, mv = {1, 9, 0}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class ErrorType {
        private static final /* synthetic */ EnumEntries $ENTRIES;
        private static final /* synthetic */ ErrorType[] $VALUES;
        public static final ErrorType NetworkError = new ErrorType("NetworkError", 0);
        public static final ErrorType RequestError = new ErrorType("RequestError", 1);
        public static final ErrorType ServerError = new ErrorType("ServerError", 2);
        public static final ErrorType ResponseError = new ErrorType("ResponseError", 3);
        public static final ErrorType IllegalQrCodeError = new ErrorType("IllegalQrCodeError", 4);
        public static final ErrorType ResultError = new ErrorType("ResultError", 5);

        private static final /* synthetic */ ErrorType[] $values() {
            return new ErrorType[]{NetworkError, RequestError, ServerError, ResponseError, IllegalQrCodeError, ResultError};
        }

        public static EnumEntries<ErrorType> getEntries() {
            return $ENTRIES;
        }

        public static ErrorType valueOf(String str) {
            return (ErrorType) Enum.valueOf(ErrorType.class, str);
        }

        public static ErrorType[] values() {
            return (ErrorType[]) $VALUES.clone();
        }

        private ErrorType(String str, int i) {
        }

        static {
            ErrorType[] $values = $values();
            $VALUES = $values;
            $ENTRIES = EnumEntriesKt.enumEntries($values);
        }
    }
}
