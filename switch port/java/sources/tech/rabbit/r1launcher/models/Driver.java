package tech.rabbit.r1launcher.models;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: RideStatus.kt */
@Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0010\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\b\u0087\b\u0018\u00002\u00020\u0001B\u001d\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006¢\u0006\u0002\u0010\u0007J\t\u0010\u0012\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0013\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0014\u001a\u00020\u0006HÆ\u0003J'\u0010\u0015\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u0006HÆ\u0001J\u0013\u0010\u0016\u001a\u00020\u00172\b\u0010\u0018\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0019\u001a\u00020\u001aHÖ\u0001J\t\u0010\u001b\u001a\u00020\u0003HÖ\u0001R\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\b\u0010\t\"\u0004\b\n\u0010\u000bR\u001a\u0010\u0004\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\f\u0010\t\"\u0004\b\r\u0010\u000bR\u001a\u0010\u0005\u001a\u00020\u0006X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000e\u0010\u000f\"\u0004\b\u0010\u0010\u0011¨\u0006\u001c"}, d2 = {"Ltech/rabbit/r1launcher/models/Driver;", "", "name", "", "rating", "vehicle", "Ltech/rabbit/r1launcher/models/Vehicle;", "(Ljava/lang/String;Ljava/lang/String;Ltech/rabbit/r1launcher/models/Vehicle;)V", "getName", "()Ljava/lang/String;", "setName", "(Ljava/lang/String;)V", "getRating", "setRating", "getVehicle", "()Ltech/rabbit/r1launcher/models/Vehicle;", "setVehicle", "(Ltech/rabbit/r1launcher/models/Vehicle;)V", "component1", "component2", "component3", "copy", "equals", "", "other", "hashCode", "", "toString", "app_productionEnvRelease"}, k = 1, mv = {1, 9, 0}, xi = 48)
/* loaded from: classes3.dex */
public final /* data */ class Driver {
    public static final int $stable = 8;
    private String name;
    private String rating;
    private Vehicle vehicle;

    public static /* synthetic */ Driver copy$default(Driver driver, String str, String str2, Vehicle vehicle, int i, Object obj) {
        if ((i & 1) != 0) {
            str = driver.name;
        }
        if ((i & 2) != 0) {
            str2 = driver.rating;
        }
        if ((i & 4) != 0) {
            vehicle = driver.vehicle;
        }
        return driver.copy(str, str2, vehicle);
    }

    /* renamed from: component1, reason: from getter */
    public final String getName() {
        return this.name;
    }

    /* renamed from: component2, reason: from getter */
    public final String getRating() {
        return this.rating;
    }

    /* renamed from: component3, reason: from getter */
    public final Vehicle getVehicle() {
        return this.vehicle;
    }

    public final Driver copy(String name, String rating, Vehicle vehicle) {
        Intrinsics.checkNotNullParameter(name, "name");
        Intrinsics.checkNotNullParameter(rating, "rating");
        Intrinsics.checkNotNullParameter(vehicle, "vehicle");
        return new Driver(name, rating, vehicle);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof Driver)) {
            return false;
        }
        Driver driver = (Driver) other;
        return Intrinsics.areEqual(this.name, driver.name) && Intrinsics.areEqual(this.rating, driver.rating) && Intrinsics.areEqual(this.vehicle, driver.vehicle);
    }

    public final String getName() {
        return this.name;
    }

    public final String getRating() {
        return this.rating;
    }

    public final Vehicle getVehicle() {
        return this.vehicle;
    }

    public int hashCode() {
        return (((this.name.hashCode() * 31) + this.rating.hashCode()) * 31) + this.vehicle.hashCode();
    }

    public final void setName(String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.name = str;
    }

    public final void setRating(String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.rating = str;
    }

    public final void setVehicle(Vehicle vehicle) {
        Intrinsics.checkNotNullParameter(vehicle, "<set-?>");
        this.vehicle = vehicle;
    }

    public String toString() {
        return "Driver(name=" + this.name + ", rating=" + this.rating + ", vehicle=" + this.vehicle + ')';
    }

    public Driver(String name, String rating, Vehicle vehicle) {
        Intrinsics.checkNotNullParameter(name, "name");
        Intrinsics.checkNotNullParameter(rating, "rating");
        Intrinsics.checkNotNullParameter(vehicle, "vehicle");
        this.name = name;
        this.rating = rating;
        this.vehicle = vehicle;
    }
}
