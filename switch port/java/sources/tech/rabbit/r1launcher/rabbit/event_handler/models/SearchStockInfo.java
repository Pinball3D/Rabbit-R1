package tech.rabbit.r1launcher.rabbit.event_handler.models;

import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: SearchStock.kt */
@Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b#\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\b\u0087\b\u0018\u00002\u00020\u0001Bs\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0003\u0012\u0006\u0010\u0007\u001a\u00020\u0003\u0012\f\u0010\b\u001a\b\u0012\u0004\u0012\u00020\n0\t\u0012\f\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\n0\t\u0012\f\u0010\f\u001a\b\u0012\u0004\u0012\u00020\n0\t\u0012\f\u0010\r\u001a\b\u0012\u0004\u0012\u00020\n0\t\u0012\f\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\n0\t¢\u0006\u0002\u0010\u000fJ\t\u0010\"\u001a\u00020\u0003HÆ\u0003J\u000f\u0010#\u001a\b\u0012\u0004\u0012\u00020\n0\tHÆ\u0003J\t\u0010$\u001a\u00020\u0003HÆ\u0003J\t\u0010%\u001a\u00020\u0003HÆ\u0003J\t\u0010&\u001a\u00020\u0003HÆ\u0003J\t\u0010'\u001a\u00020\u0003HÆ\u0003J\u000f\u0010(\u001a\b\u0012\u0004\u0012\u00020\n0\tHÆ\u0003J\u000f\u0010)\u001a\b\u0012\u0004\u0012\u00020\n0\tHÆ\u0003J\u000f\u0010*\u001a\b\u0012\u0004\u0012\u00020\n0\tHÆ\u0003J\u000f\u0010+\u001a\b\u0012\u0004\u0012\u00020\n0\tHÆ\u0003J\u008b\u0001\u0010,\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u00032\b\b\u0002\u0010\u0006\u001a\u00020\u00032\b\b\u0002\u0010\u0007\u001a\u00020\u00032\u000e\b\u0002\u0010\b\u001a\b\u0012\u0004\u0012\u00020\n0\t2\u000e\b\u0002\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\n0\t2\u000e\b\u0002\u0010\f\u001a\b\u0012\u0004\u0012\u00020\n0\t2\u000e\b\u0002\u0010\r\u001a\b\u0012\u0004\u0012\u00020\n0\t2\u000e\b\u0002\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\n0\tHÆ\u0001J\u0013\u0010-\u001a\u00020.2\b\u0010/\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u00100\u001a\u000201HÖ\u0001J\t\u00102\u001a\u00020\u0003HÖ\u0001R\u0011\u0010\u0006\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0010\u0010\u0011R\u0011\u0010\u0004\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0012\u0010\u0011R\u0011\u0010\u0007\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0013\u0010\u0011R \u0010\b\u001a\b\u0012\u0004\u0012\u00020\n0\tX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0014\u0010\u0015\"\u0004\b\u0016\u0010\u0017R \u0010\r\u001a\b\u0012\u0004\u0012\u00020\n0\tX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0018\u0010\u0015\"\u0004\b\u0019\u0010\u0017R \u0010\f\u001a\b\u0012\u0004\u0012\u00020\n0\tX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001a\u0010\u0015\"\u0004\b\u001b\u0010\u0017R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u001c\u0010\u0011R\u0011\u0010\u0005\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u001d\u0010\u0011R \u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\n0\tX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001e\u0010\u0015\"\u0004\b\u001f\u0010\u0017R \u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\n0\tX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b \u0010\u0015\"\u0004\b!\u0010\u0017¨\u00063"}, d2 = {"Ltech/rabbit/r1launcher/rabbit/event_handler/models/SearchStockInfo;", "", "name", "", "code", "price", "change", "date", "dayGraph", "", "Ltech/rabbit/r1launcher/rabbit/event_handler/models/StockSpotInfo;", "weekGraph", "monthGraph", "halfYearGraph", "yearGraph", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V", "getChange", "()Ljava/lang/String;", "getCode", "getDate", "getDayGraph", "()Ljava/util/List;", "setDayGraph", "(Ljava/util/List;)V", "getHalfYearGraph", "setHalfYearGraph", "getMonthGraph", "setMonthGraph", "getName", "getPrice", "getWeekGraph", "setWeekGraph", "getYearGraph", "setYearGraph", "component1", "component10", "component2", "component3", "component4", "component5", "component6", "component7", "component8", "component9", "copy", "equals", "", "other", "hashCode", "", "toString", "app_productionEnvRelease"}, k = 1, mv = {1, 9, 0}, xi = 48)
/* loaded from: classes3.dex */
public final /* data */ class SearchStockInfo {
    public static final int $stable = 8;
    private final String change;
    private final String code;
    private final String date;
    private List<StockSpotInfo> dayGraph;
    private List<StockSpotInfo> halfYearGraph;
    private List<StockSpotInfo> monthGraph;
    private final String name;
    private final String price;
    private List<StockSpotInfo> weekGraph;
    private List<StockSpotInfo> yearGraph;

    /* renamed from: component1, reason: from getter */
    public final String getName() {
        return this.name;
    }

    public final List<StockSpotInfo> component10() {
        return this.yearGraph;
    }

    /* renamed from: component2, reason: from getter */
    public final String getCode() {
        return this.code;
    }

    /* renamed from: component3, reason: from getter */
    public final String getPrice() {
        return this.price;
    }

    /* renamed from: component4, reason: from getter */
    public final String getChange() {
        return this.change;
    }

    /* renamed from: component5, reason: from getter */
    public final String getDate() {
        return this.date;
    }

    public final List<StockSpotInfo> component6() {
        return this.dayGraph;
    }

    public final List<StockSpotInfo> component7() {
        return this.weekGraph;
    }

    public final List<StockSpotInfo> component8() {
        return this.monthGraph;
    }

    public final List<StockSpotInfo> component9() {
        return this.halfYearGraph;
    }

    public final SearchStockInfo copy(String name, String code, String price, String change, String date, List<StockSpotInfo> dayGraph, List<StockSpotInfo> weekGraph, List<StockSpotInfo> monthGraph, List<StockSpotInfo> halfYearGraph, List<StockSpotInfo> yearGraph) {
        Intrinsics.checkNotNullParameter(name, "name");
        Intrinsics.checkNotNullParameter(code, "code");
        Intrinsics.checkNotNullParameter(price, "price");
        Intrinsics.checkNotNullParameter(change, "change");
        Intrinsics.checkNotNullParameter(date, "date");
        Intrinsics.checkNotNullParameter(dayGraph, "dayGraph");
        Intrinsics.checkNotNullParameter(weekGraph, "weekGraph");
        Intrinsics.checkNotNullParameter(monthGraph, "monthGraph");
        Intrinsics.checkNotNullParameter(halfYearGraph, "halfYearGraph");
        Intrinsics.checkNotNullParameter(yearGraph, "yearGraph");
        return new SearchStockInfo(name, code, price, change, date, dayGraph, weekGraph, monthGraph, halfYearGraph, yearGraph);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof SearchStockInfo)) {
            return false;
        }
        SearchStockInfo searchStockInfo = (SearchStockInfo) other;
        return Intrinsics.areEqual(this.name, searchStockInfo.name) && Intrinsics.areEqual(this.code, searchStockInfo.code) && Intrinsics.areEqual(this.price, searchStockInfo.price) && Intrinsics.areEqual(this.change, searchStockInfo.change) && Intrinsics.areEqual(this.date, searchStockInfo.date) && Intrinsics.areEqual(this.dayGraph, searchStockInfo.dayGraph) && Intrinsics.areEqual(this.weekGraph, searchStockInfo.weekGraph) && Intrinsics.areEqual(this.monthGraph, searchStockInfo.monthGraph) && Intrinsics.areEqual(this.halfYearGraph, searchStockInfo.halfYearGraph) && Intrinsics.areEqual(this.yearGraph, searchStockInfo.yearGraph);
    }

    public final String getChange() {
        return this.change;
    }

    public final String getCode() {
        return this.code;
    }

    public final String getDate() {
        return this.date;
    }

    public final List<StockSpotInfo> getDayGraph() {
        return this.dayGraph;
    }

    public final List<StockSpotInfo> getHalfYearGraph() {
        return this.halfYearGraph;
    }

    public final List<StockSpotInfo> getMonthGraph() {
        return this.monthGraph;
    }

    public final String getName() {
        return this.name;
    }

    public final String getPrice() {
        return this.price;
    }

    public final List<StockSpotInfo> getWeekGraph() {
        return this.weekGraph;
    }

    public final List<StockSpotInfo> getYearGraph() {
        return this.yearGraph;
    }

    public int hashCode() {
        return (((((((((((((((((this.name.hashCode() * 31) + this.code.hashCode()) * 31) + this.price.hashCode()) * 31) + this.change.hashCode()) * 31) + this.date.hashCode()) * 31) + this.dayGraph.hashCode()) * 31) + this.weekGraph.hashCode()) * 31) + this.monthGraph.hashCode()) * 31) + this.halfYearGraph.hashCode()) * 31) + this.yearGraph.hashCode();
    }

    public final void setDayGraph(List<StockSpotInfo> list) {
        Intrinsics.checkNotNullParameter(list, "<set-?>");
        this.dayGraph = list;
    }

    public final void setHalfYearGraph(List<StockSpotInfo> list) {
        Intrinsics.checkNotNullParameter(list, "<set-?>");
        this.halfYearGraph = list;
    }

    public final void setMonthGraph(List<StockSpotInfo> list) {
        Intrinsics.checkNotNullParameter(list, "<set-?>");
        this.monthGraph = list;
    }

    public final void setWeekGraph(List<StockSpotInfo> list) {
        Intrinsics.checkNotNullParameter(list, "<set-?>");
        this.weekGraph = list;
    }

    public final void setYearGraph(List<StockSpotInfo> list) {
        Intrinsics.checkNotNullParameter(list, "<set-?>");
        this.yearGraph = list;
    }

    public String toString() {
        return "SearchStockInfo(name=" + this.name + ", code=" + this.code + ", price=" + this.price + ", change=" + this.change + ", date=" + this.date + ", dayGraph=" + this.dayGraph + ", weekGraph=" + this.weekGraph + ", monthGraph=" + this.monthGraph + ", halfYearGraph=" + this.halfYearGraph + ", yearGraph=" + this.yearGraph + ')';
    }

    public SearchStockInfo(String name, String code, String price, String change, String date, List<StockSpotInfo> dayGraph, List<StockSpotInfo> weekGraph, List<StockSpotInfo> monthGraph, List<StockSpotInfo> halfYearGraph, List<StockSpotInfo> yearGraph) {
        Intrinsics.checkNotNullParameter(name, "name");
        Intrinsics.checkNotNullParameter(code, "code");
        Intrinsics.checkNotNullParameter(price, "price");
        Intrinsics.checkNotNullParameter(change, "change");
        Intrinsics.checkNotNullParameter(date, "date");
        Intrinsics.checkNotNullParameter(dayGraph, "dayGraph");
        Intrinsics.checkNotNullParameter(weekGraph, "weekGraph");
        Intrinsics.checkNotNullParameter(monthGraph, "monthGraph");
        Intrinsics.checkNotNullParameter(halfYearGraph, "halfYearGraph");
        Intrinsics.checkNotNullParameter(yearGraph, "yearGraph");
        this.name = name;
        this.code = code;
        this.price = price;
        this.change = change;
        this.date = date;
        this.dayGraph = dayGraph;
        this.weekGraph = weekGraph;
        this.monthGraph = monthGraph;
        this.halfYearGraph = halfYearGraph;
        this.yearGraph = yearGraph;
    }
}
