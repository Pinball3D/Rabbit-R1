package tech.rabbit.r1launcher.models;

import io.sentry.protocol.Device;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: RideStatus.kt */
@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0014\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\b\u0087\b\u0018\u00002\u00020\u0001B%\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0003¢\u0006\u0002\u0010\u0007J\t\u0010\u0012\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0013\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0014\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0015\u001a\u00020\u0003HÆ\u0003J1\u0010\u0016\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u00032\b\b\u0002\u0010\u0006\u001a\u00020\u0003HÆ\u0001J\u0013\u0010\u0017\u001a\u00020\u00182\b\u0010\u0019\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u001a\u001a\u00020\u001bHÖ\u0001J\t\u0010\u001c\u001a\u00020\u0003HÖ\u0001R\u001a\u0010\u0005\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\b\u0010\t\"\u0004\b\n\u0010\u000bR\u001a\u0010\u0006\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\f\u0010\t\"\u0004\b\r\u0010\u000bR\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000e\u0010\t\"\u0004\b\u000f\u0010\u000bR\u001a\u0010\u0004\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0010\u0010\t\"\u0004\b\u0011\u0010\u000b¨\u0006\u001d"}, d2 = {"Ltech/rabbit/r1launcher/models/Vehicle;", "", "make", "", Device.JsonKeys.MODEL, "color", "licensePlate", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "getColor", "()Ljava/lang/String;", "setColor", "(Ljava/lang/String;)V", "getLicensePlate", "setLicensePlate", "getMake", "setMake", "getModel", "setModel", "component1", "component2", "component3", "component4", "copy", "equals", "", "other", "hashCode", "", "toString", "app_productionEnvRelease"}, k = 1, mv = {1, 9, 0}, xi = 48)
/* loaded from: classes3.dex */
public final /* data */ class Vehicle {
    public static final int $stable = 8;
    private String color;
    private String licensePlate;
    private String make;
    private String model;

    public static /* synthetic */ Vehicle copy$default(Vehicle vehicle, String str, String str2, String str3, String str4, int i, Object obj) {
        if ((i & 1) != 0) {
            str = vehicle.make;
        }
        if ((i & 2) != 0) {
            str2 = vehicle.model;
        }
        if ((i & 4) != 0) {
            str3 = vehicle.color;
        }
        if ((i & 8) != 0) {
            str4 = vehicle.licensePlate;
        }
        return vehicle.copy(str, str2, str3, str4);
    }

    /* renamed from: component1, reason: from getter */
    public final String getMake() {
        return this.make;
    }

    /* renamed from: component2, reason: from getter */
    public final String getModel() {
        return this.model;
    }

    /* renamed from: component3, reason: from getter */
    public final String getColor() {
        return this.color;
    }

    /* renamed from: component4, reason: from getter */
    public final String getLicensePlate() {
        return this.licensePlate;
    }

    public final Vehicle copy(String make, String model, String color, String licensePlate) {
        Intrinsics.checkNotNullParameter(make, "make");
        Intrinsics.checkNotNullParameter(model, "model");
        Intrinsics.checkNotNullParameter(color, "color");
        Intrinsics.checkNotNullParameter(licensePlate, "licensePlate");
        return new Vehicle(make, model, color, licensePlate);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof Vehicle)) {
            return false;
        }
        Vehicle vehicle = (Vehicle) other;
        return Intrinsics.areEqual(this.make, vehicle.make) && Intrinsics.areEqual(this.model, vehicle.model) && Intrinsics.areEqual(this.color, vehicle.color) && Intrinsics.areEqual(this.licensePlate, vehicle.licensePlate);
    }

    public final String getColor() {
        return this.color;
    }

    public final String getLicensePlate() {
        return this.licensePlate;
    }

    public final String getMake() {
        return this.make;
    }

    public final String getModel() {
        return this.model;
    }

    public int hashCode() {
        return (((((this.make.hashCode() * 31) + this.model.hashCode()) * 31) + this.color.hashCode()) * 31) + this.licensePlate.hashCode();
    }

    public final void setColor(String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.color = str;
    }

    public final void setLicensePlate(String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.licensePlate = str;
    }

    public final void setMake(String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.make = str;
    }

    public final void setModel(String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.model = str;
    }

    public String toString() {
        return "Vehicle(make=" + this.make + ", model=" + this.model + ", color=" + this.color + ", licensePlate=" + this.licensePlate + ')';
    }

    public Vehicle(String make, String model, String color, String licensePlate) {
        Intrinsics.checkNotNullParameter(make, "make");
        Intrinsics.checkNotNullParameter(model, "model");
        Intrinsics.checkNotNullParameter(color, "color");
        Intrinsics.checkNotNullParameter(licensePlate, "licensePlate");
        this.make = make;
        this.model = model;
        this.color = color;
        this.licensePlate = licensePlate;
    }
}
