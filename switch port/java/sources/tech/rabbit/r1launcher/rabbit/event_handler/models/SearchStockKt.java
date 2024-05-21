package tech.rabbit.r1launcher.rabbit.event_handler.models;

import com.alibaba.fastjson.JSONArray;
import com.alibaba.fastjson.JSONObject;
import java.text.DecimalFormat;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;

/* compiled from: SearchStock.kt */
@Metadata(d1 = {"\u0000$\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\u001a\u000e\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003\u001a\u001e\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u00052\u0006\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\nH\u0002¨\u0006\u000b"}, d2 = {"generateStockInfo", "Ltech/rabbit/r1launcher/rabbit/event_handler/models/SearchStockInfo;", "serpModal", "Lcom/alibaba/fastjson/JSONObject;", "parseGraphInfo", "", "Ltech/rabbit/r1launcher/rabbit/event_handler/models/StockSpotInfo;", "infos", "Lcom/alibaba/fastjson/JSONArray;", "isDay", "", "app_productionEnvRelease"}, k = 2, mv = {1, 9, 0}, xi = 48)
/* loaded from: classes3.dex */
public final class SearchStockKt {
    private static final List<StockSpotInfo> parseGraphInfo(JSONArray jSONArray, boolean z) {
        String str;
        ArrayList arrayList = new ArrayList();
        int size = jSONArray.size();
        for (int i = 0; i < size; i++) {
            JSONObject jSONObject = jSONArray.getJSONObject(i);
            Double d = jSONObject.getDouble("price");
            String string = jSONObject.getString("date");
            if (z) {
                Intrinsics.checkNotNull(jSONObject);
                Boolean bool = jSONObject.containsKey("after_hours") ? jSONObject.getBoolean("after_hours") : false;
                Intrinsics.checkNotNull(bool);
                if (bool.booleanValue()) {
                    break;
                }
                Intrinsics.checkNotNull(string);
                String str2 = string;
                str = Integer.parseInt((String) StringsKt.split$default((CharSequence) StringsKt.split$default((CharSequence) str2, new String[]{" "}, false, 0, 6, (Object) null).get(3), new String[]{":"}, false, 0, 6, (Object) null).get(0)) + ((String) StringsKt.split$default((CharSequence) str2, new String[]{" "}, false, 0, 6, (Object) null).get(4));
            } else {
                Intrinsics.checkNotNull(string);
                String str3 = string;
                str = ((String) StringsKt.split$default((CharSequence) str3, new String[]{" "}, false, 0, 6, (Object) null).get(0)) + ' ' + ((String) StringsKt.split$default((CharSequence) str3, new String[]{" "}, false, 0, 6, (Object) null).get(1));
            }
            Intrinsics.checkNotNull(d);
            arrayList.add(new StockSpotInfo(d.doubleValue(), str));
        }
        return arrayList;
    }

    public static final SearchStockInfo generateStockInfo(JSONObject serpModal) {
        Intrinsics.checkNotNullParameter(serpModal, "serpModal");
        JSONObject jSONObject = serpModal.getJSONObject("answer_box");
        JSONArray jSONArray = serpModal.getJSONObject("finance_1D").getJSONArray("graph");
        JSONArray jSONArray2 = serpModal.getJSONObject("finance_5D").getJSONArray("graph");
        JSONArray jSONArray3 = serpModal.getJSONObject("finance_1M").getJSONArray("graph");
        String string = jSONObject.getString("title");
        String string2 = jSONObject.getString("stock");
        Intrinsics.checkNotNullExpressionValue(string2, "getString(...)");
        String obj = StringsKt.trim((CharSequence) string2).toString();
        String string3 = jSONObject.getString("exchange");
        Double d = jSONObject.getDouble("price");
        String string4 = jSONObject.getString("currency");
        JSONObject jSONObject2 = jSONObject.getJSONObject("price_movement");
        Double d2 = jSONObject2.getDouble("percentage");
        Double d3 = jSONObject2.getDouble("price");
        String string5 = jSONObject2.getString("movement");
        String string6 = jSONObject2.getString("date");
        boolean areEqual = Intrinsics.areEqual(string5, "Down");
        DecimalFormat decimalFormat = new DecimalFormat("0.00");
        String str = string + '.';
        String str2 = string3 + ": (" + obj + ')';
        StringBuilder sb = new StringBuilder();
        Intrinsics.checkNotNull(d);
        String sb2 = sb.append(decimalFormat.format(d.doubleValue())).append(' ').append(string4).toString();
        StringBuilder append = new StringBuilder().append(areEqual ? "-" : "+");
        Intrinsics.checkNotNull(d3);
        StringBuilder append2 = append.append(decimalFormat.format(d3.doubleValue())).append(" (");
        Intrinsics.checkNotNull(d2);
        String sb3 = append2.append(decimalFormat.format(d2.doubleValue())).append("%) ").append(areEqual ? "↓" : "↑").toString();
        Intrinsics.checkNotNull(string6);
        Intrinsics.checkNotNull(jSONArray);
        List<StockSpotInfo> parseGraphInfo = parseGraphInfo(jSONArray, true);
        Intrinsics.checkNotNull(jSONArray2);
        List<StockSpotInfo> parseGraphInfo2 = parseGraphInfo(jSONArray2, false);
        Intrinsics.checkNotNull(jSONArray3);
        return new SearchStockInfo(str, str2, sb2, sb3, string6, parseGraphInfo, parseGraphInfo2, parseGraphInfo(jSONArray3, false), CollectionsKt.emptyList(), CollectionsKt.emptyList());
    }
}
