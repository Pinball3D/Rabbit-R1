package tech.rabbit.r1launcher.rabbit.event_handler.models;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: SearchStock.kt */
@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0006\n\u0000\n\u0002\u0010\u000e\n\u0002\b\t\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\b\u0087\b\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J\t\u0010\u000b\u001a\u00020\u0003HÆ\u0003J\t\u0010\f\u001a\u00020\u0005HÆ\u0003J\u001d\u0010\r\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u0005HÆ\u0001J\u0013\u0010\u000e\u001a\u00020\u000f2\b\u0010\u0010\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0011\u001a\u00020\u0012HÖ\u0001J\t\u0010\u0013\u001a\u00020\u0005HÖ\u0001R\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\bR\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\n¨\u0006\u0014"}, d2 = {"Ltech/rabbit/r1launcher/rabbit/event_handler/models/StockSpotInfo;", "", "price", "", "date", "", "(DLjava/lang/String;)V", "getDate", "()Ljava/lang/String;", "getPrice", "()D", "component1", "component2", "copy", "equals", "", "other", "hashCode", "", "toString", "app_productionEnvRelease"}, k = 1, mv = {1, 9, 0}, xi = 48)
/* loaded from: classes3.dex */
public final /* data */ class StockSpotInfo {
    public static final int $stable = 0;
    private final String date;
    private final double price;

    public static /* synthetic */ StockSpotInfo copy$default(StockSpotInfo stockSpotInfo, double d, String str, int i, Object obj) {
        if ((i & 1) != 0) {
            d = stockSpotInfo.price;
        }
        if ((i & 2) != 0) {
            str = stockSpotInfo.date;
        }
        return stockSpotInfo.copy(d, str);
    }

    /* renamed from: component1, reason: from getter */
    public final double getPrice() {
        return this.price;
    }

    /* renamed from: component2, reason: from getter */
    public final String getDate() {
        return this.date;
    }

    public final StockSpotInfo copy(double price, String date) {
        Intrinsics.checkNotNullParameter(date, "date");
        return new StockSpotInfo(price, date);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof StockSpotInfo)) {
            return false;
        }
        StockSpotInfo stockSpotInfo = (StockSpotInfo) other;
        return Double.compare(this.price, stockSpotInfo.price) == 0 && Intrinsics.areEqual(this.date, stockSpotInfo.date);
    }

    public final String getDate() {
        return this.date;
    }

    public final double getPrice() {
        return this.price;
    }

    public int hashCode() {
        return (Double.hashCode(this.price) * 31) + this.date.hashCode();
    }

    public String toString() {
        return "StockSpotInfo(price=" + this.price + ", date=" + this.date + ')';
    }

    public StockSpotInfo(double d, String date) {
        Intrinsics.checkNotNullParameter(date, "date");
        this.price = d;
        this.date = date;
    }
}
