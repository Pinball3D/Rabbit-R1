package tech.rabbit.r1launcher.models;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: RideStatus.kt */
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\r\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0000\b\u0087\b\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J\t\u0010\u000f\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0010\u001a\u00020\u0005HÆ\u0003J\u001d\u0010\u0011\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u0005HÆ\u0001J\u0013\u0010\u0012\u001a\u00020\u00132\b\u0010\u0014\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0015\u001a\u00020\u0003HÖ\u0001J\t\u0010\u0016\u001a\u00020\u0017HÖ\u0001R\u001a\u0010\u0004\u001a\u00020\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0007\u0010\b\"\u0004\b\t\u0010\nR\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000b\u0010\f\"\u0004\b\r\u0010\u000e¨\u0006\u0018"}, d2 = {"Ltech/rabbit/r1launcher/models/StatusInfo;", "", "eta", "", "driver", "Ltech/rabbit/r1launcher/models/Driver;", "(ILtech/rabbit/r1launcher/models/Driver;)V", "getDriver", "()Ltech/rabbit/r1launcher/models/Driver;", "setDriver", "(Ltech/rabbit/r1launcher/models/Driver;)V", "getEta", "()I", "setEta", "(I)V", "component1", "component2", "copy", "equals", "", "other", "hashCode", "toString", "", "app_productionEnvRelease"}, k = 1, mv = {1, 9, 0}, xi = 48)
/* loaded from: classes3.dex */
public final /* data */ class StatusInfo {
    public static final int $stable = 8;
    private Driver driver;
    private int eta;

    public static /* synthetic */ StatusInfo copy$default(StatusInfo statusInfo, int i, Driver driver, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            i = statusInfo.eta;
        }
        if ((i2 & 2) != 0) {
            driver = statusInfo.driver;
        }
        return statusInfo.copy(i, driver);
    }

    /* renamed from: component1, reason: from getter */
    public final int getEta() {
        return this.eta;
    }

    /* renamed from: component2, reason: from getter */
    public final Driver getDriver() {
        return this.driver;
    }

    public final StatusInfo copy(int eta, Driver driver) {
        Intrinsics.checkNotNullParameter(driver, "driver");
        return new StatusInfo(eta, driver);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof StatusInfo)) {
            return false;
        }
        StatusInfo statusInfo = (StatusInfo) other;
        return this.eta == statusInfo.eta && Intrinsics.areEqual(this.driver, statusInfo.driver);
    }

    public final Driver getDriver() {
        return this.driver;
    }

    public final int getEta() {
        return this.eta;
    }

    public int hashCode() {
        return (Integer.hashCode(this.eta) * 31) + this.driver.hashCode();
    }

    public final void setDriver(Driver driver) {
        Intrinsics.checkNotNullParameter(driver, "<set-?>");
        this.driver = driver;
    }

    public final void setEta(int i) {
        this.eta = i;
    }

    public String toString() {
        return "StatusInfo(eta=" + this.eta + ", driver=" + this.driver + ')';
    }

    public StatusInfo(int i, Driver driver) {
        Intrinsics.checkNotNullParameter(driver, "driver");
        this.eta = i;
        this.driver = driver;
    }
}
