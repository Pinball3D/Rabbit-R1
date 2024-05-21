package tech.rabbit.r1launcher.models;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: RideStatus.kt */
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0087\b\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\t\u0010\b\u001a\u00020\u0003HÆ\u0003J\u0013\u0010\t\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u0003HÆ\u0001J\u0013\u0010\n\u001a\u00020\u000b2\b\u0010\f\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\r\u001a\u00020\u000eHÖ\u0001J\t\u0010\u000f\u001a\u00020\u0010HÖ\u0001R\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\u0004¨\u0006\u0011"}, d2 = {"Ltech/rabbit/r1launcher/models/RideStatus;", "", "statusInfo", "Ltech/rabbit/r1launcher/models/StatusInfo;", "(Ltech/rabbit/r1launcher/models/StatusInfo;)V", "getStatusInfo", "()Ltech/rabbit/r1launcher/models/StatusInfo;", "setStatusInfo", "component1", "copy", "equals", "", "other", "hashCode", "", "toString", "", "app_productionEnvRelease"}, k = 1, mv = {1, 9, 0}, xi = 48)
/* loaded from: classes3.dex */
public final /* data */ class RideStatus {
    public static final int $stable = 8;
    private StatusInfo statusInfo;

    public static /* synthetic */ RideStatus copy$default(RideStatus rideStatus, StatusInfo statusInfo, int i, Object obj) {
        if ((i & 1) != 0) {
            statusInfo = rideStatus.statusInfo;
        }
        return rideStatus.copy(statusInfo);
    }

    /* renamed from: component1, reason: from getter */
    public final StatusInfo getStatusInfo() {
        return this.statusInfo;
    }

    public final RideStatus copy(StatusInfo statusInfo) {
        Intrinsics.checkNotNullParameter(statusInfo, "statusInfo");
        return new RideStatus(statusInfo);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        return (other instanceof RideStatus) && Intrinsics.areEqual(this.statusInfo, ((RideStatus) other).statusInfo);
    }

    public final StatusInfo getStatusInfo() {
        return this.statusInfo;
    }

    public int hashCode() {
        return this.statusInfo.hashCode();
    }

    public final void setStatusInfo(StatusInfo statusInfo) {
        Intrinsics.checkNotNullParameter(statusInfo, "<set-?>");
        this.statusInfo = statusInfo;
    }

    public String toString() {
        return "RideStatus(statusInfo=" + this.statusInfo + ')';
    }

    public RideStatus(StatusInfo statusInfo) {
        Intrinsics.checkNotNullParameter(statusInfo, "statusInfo");
        this.statusInfo = statusInfo;
    }
}
