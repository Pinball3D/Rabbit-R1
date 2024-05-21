package tech.rabbit.r1launcher.models;

import java.util.Date;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: RideProduct.kt */
@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0017\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B?\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\u0007\u001a\u00020\b\u0012\u0006\u0010\t\u001a\u00020\u0005\u0012\u0006\u0010\n\u001a\u00020\u0003\u0012\b\u0010\u000b\u001a\u0004\u0018\u00010\u0003¢\u0006\u0002\u0010\fJ\t\u0010\u0017\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0018\u001a\u00020\u0005HÆ\u0003J\t\u0010\u0019\u001a\u00020\u0005HÆ\u0003J\t\u0010\u001a\u001a\u00020\bHÆ\u0003J\t\u0010\u001b\u001a\u00020\u0005HÆ\u0003J\t\u0010\u001c\u001a\u00020\u0003HÆ\u0003J\u000b\u0010\u001d\u001a\u0004\u0018\u00010\u0003HÆ\u0003JQ\u0010\u001e\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u00052\b\b\u0002\u0010\u0007\u001a\u00020\b2\b\b\u0002\u0010\t\u001a\u00020\u00052\b\b\u0002\u0010\n\u001a\u00020\u00032\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u0003HÆ\u0001J\u0013\u0010\u001f\u001a\u00020 2\b\u0010!\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\"\u001a\u00020\u0005HÖ\u0001J\t\u0010#\u001a\u00020\u0003HÖ\u0001R\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\u000eR\u0011\u0010\u0006\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\u000eR\u0011\u0010\t\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0010\u0010\u000eR\u0011\u0010\u0007\u001a\u00020\b¢\u0006\b\n\u0000\u001a\u0004\b\u0011\u0010\u0012R\u0011\u0010\n\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0013\u0010\u0014R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0015\u0010\u0014R\u0013\u0010\u000b\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0016\u0010\u0014¨\u0006$"}, d2 = {"Ltech/rabbit/r1launcher/models/RideProduct;", "", "name", "", "capacity", "", "estMinutesToPickup", "estTimeToArriveServerTimeZone", "Ljava/util/Date;", "estPriceUsdCents", "id", "routePolyline", "(Ljava/lang/String;IILjava/util/Date;ILjava/lang/String;Ljava/lang/String;)V", "getCapacity", "()I", "getEstMinutesToPickup", "getEstPriceUsdCents", "getEstTimeToArriveServerTimeZone", "()Ljava/util/Date;", "getId", "()Ljava/lang/String;", "getName", "getRoutePolyline", "component1", "component2", "component3", "component4", "component5", "component6", "component7", "copy", "equals", "", "other", "hashCode", "toString", "app_productionEnvRelease"}, k = 1, mv = {1, 9, 0}, xi = 48)
/* loaded from: classes3.dex */
public final /* data */ class RideProduct {
    public static final int $stable = 8;
    private final int capacity;
    private final int estMinutesToPickup;
    private final int estPriceUsdCents;
    private final Date estTimeToArriveServerTimeZone;
    private final String id;
    private final String name;
    private final String routePolyline;

    public static /* synthetic */ RideProduct copy$default(RideProduct rideProduct, String str, int i, int i2, Date date, int i3, String str2, String str3, int i4, Object obj) {
        if ((i4 & 1) != 0) {
            str = rideProduct.name;
        }
        if ((i4 & 2) != 0) {
            i = rideProduct.capacity;
        }
        int i5 = i;
        if ((i4 & 4) != 0) {
            i2 = rideProduct.estMinutesToPickup;
        }
        int i6 = i2;
        if ((i4 & 8) != 0) {
            date = rideProduct.estTimeToArriveServerTimeZone;
        }
        Date date2 = date;
        if ((i4 & 16) != 0) {
            i3 = rideProduct.estPriceUsdCents;
        }
        int i7 = i3;
        if ((i4 & 32) != 0) {
            str2 = rideProduct.id;
        }
        String str4 = str2;
        if ((i4 & 64) != 0) {
            str3 = rideProduct.routePolyline;
        }
        return rideProduct.copy(str, i5, i6, date2, i7, str4, str3);
    }

    /* renamed from: component1, reason: from getter */
    public final String getName() {
        return this.name;
    }

    /* renamed from: component2, reason: from getter */
    public final int getCapacity() {
        return this.capacity;
    }

    /* renamed from: component3, reason: from getter */
    public final int getEstMinutesToPickup() {
        return this.estMinutesToPickup;
    }

    /* renamed from: component4, reason: from getter */
    public final Date getEstTimeToArriveServerTimeZone() {
        return this.estTimeToArriveServerTimeZone;
    }

    /* renamed from: component5, reason: from getter */
    public final int getEstPriceUsdCents() {
        return this.estPriceUsdCents;
    }

    /* renamed from: component6, reason: from getter */
    public final String getId() {
        return this.id;
    }

    /* renamed from: component7, reason: from getter */
    public final String getRoutePolyline() {
        return this.routePolyline;
    }

    public final RideProduct copy(String name, int capacity, int estMinutesToPickup, Date estTimeToArriveServerTimeZone, int estPriceUsdCents, String id, String routePolyline) {
        Intrinsics.checkNotNullParameter(name, "name");
        Intrinsics.checkNotNullParameter(estTimeToArriveServerTimeZone, "estTimeToArriveServerTimeZone");
        Intrinsics.checkNotNullParameter(id, "id");
        return new RideProduct(name, capacity, estMinutesToPickup, estTimeToArriveServerTimeZone, estPriceUsdCents, id, routePolyline);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof RideProduct)) {
            return false;
        }
        RideProduct rideProduct = (RideProduct) other;
        return Intrinsics.areEqual(this.name, rideProduct.name) && this.capacity == rideProduct.capacity && this.estMinutesToPickup == rideProduct.estMinutesToPickup && Intrinsics.areEqual(this.estTimeToArriveServerTimeZone, rideProduct.estTimeToArriveServerTimeZone) && this.estPriceUsdCents == rideProduct.estPriceUsdCents && Intrinsics.areEqual(this.id, rideProduct.id) && Intrinsics.areEqual(this.routePolyline, rideProduct.routePolyline);
    }

    public final int getCapacity() {
        return this.capacity;
    }

    public final int getEstMinutesToPickup() {
        return this.estMinutesToPickup;
    }

    public final int getEstPriceUsdCents() {
        return this.estPriceUsdCents;
    }

    public final Date getEstTimeToArriveServerTimeZone() {
        return this.estTimeToArriveServerTimeZone;
    }

    public final String getId() {
        return this.id;
    }

    public final String getName() {
        return this.name;
    }

    public final String getRoutePolyline() {
        return this.routePolyline;
    }

    public int hashCode() {
        int hashCode = ((((((((((this.name.hashCode() * 31) + Integer.hashCode(this.capacity)) * 31) + Integer.hashCode(this.estMinutesToPickup)) * 31) + this.estTimeToArriveServerTimeZone.hashCode()) * 31) + Integer.hashCode(this.estPriceUsdCents)) * 31) + this.id.hashCode()) * 31;
        String str = this.routePolyline;
        return hashCode + (str == null ? 0 : str.hashCode());
    }

    public String toString() {
        return "RideProduct(name=" + this.name + ", capacity=" + this.capacity + ", estMinutesToPickup=" + this.estMinutesToPickup + ", estTimeToArriveServerTimeZone=" + this.estTimeToArriveServerTimeZone + ", estPriceUsdCents=" + this.estPriceUsdCents + ", id=" + this.id + ", routePolyline=" + this.routePolyline + ')';
    }

    public RideProduct(String name, int i, int i2, Date estTimeToArriveServerTimeZone, int i3, String id, String str) {
        Intrinsics.checkNotNullParameter(name, "name");
        Intrinsics.checkNotNullParameter(estTimeToArriveServerTimeZone, "estTimeToArriveServerTimeZone");
        Intrinsics.checkNotNullParameter(id, "id");
        this.name = name;
        this.capacity = i;
        this.estMinutesToPickup = i2;
        this.estTimeToArriveServerTimeZone = estTimeToArriveServerTimeZone;
        this.estPriceUsdCents = i3;
        this.id = id;
        this.routePolyline = str;
    }
}
