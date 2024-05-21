package tech.rabbit.r1launcher.rabbit.event_handler.models;

import com.alibaba.fastjson.JSONArray;
import com.alibaba.fastjson.JSONObject;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.RangesKt;
import kotlin.text.StringsKt;
import tech.rabbit.r1launcher.rabbit.event_handler.models.SearchWeatherInfo;

/* compiled from: SearchWeather.kt */
@Metadata(d1 = {"\u0000\u001a\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u001a\u000e\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0001\u001a\u0014\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00042\u0006\u0010\u0006\u001a\u00020\u0007¨\u0006\b"}, d2 = {"abbreviateWeekdayName", "", "weekdayFullName", "generateWeatherInfo", "", "Ltech/rabbit/r1launcher/rabbit/event_handler/models/SearchWeatherInfo;", "serpModal", "Lcom/alibaba/fastjson/JSONObject;", "app_productionEnvRelease"}, k = 2, mv = {1, 9, 0}, xi = 48)
/* loaded from: classes3.dex */
public final class SearchWeatherKt {
    public static final List<SearchWeatherInfo> generateWeatherInfo(JSONObject serpModal) {
        String str;
        Intrinsics.checkNotNullParameter(serpModal, "serpModal");
        JSONObject jSONObject = serpModal.getJSONObject("answer_box");
        String str2 = jSONObject.getString("unit").equals("Fahrenheit") ? "℉" : "℃";
        JSONArray jSONArray = jSONObject.getJSONArray("hourly_forecast");
        ArrayList arrayList = new ArrayList();
        int coerceAtMost = RangesKt.coerceAtMost(jSONArray.size(), 24);
        for (int i = 0; i < coerceAtMost; i++) {
            JSONObject jSONObject2 = jSONArray.getJSONObject(i);
            if (i == 0) {
                str = "Now";
            } else {
                try {
                    String string = jSONObject2.getString("time");
                    Intrinsics.checkNotNullExpressionValue(string, "getString(...)");
                    List split$default = StringsKt.split$default((CharSequence) StringsKt.split$default((CharSequence) string, new String[]{" "}, false, 0, 6, (Object) null).get(1), new String[]{" "}, false, 0, 6, (Object) null);
                    str = ((String) StringsKt.split$default((CharSequence) split$default.get(0), new String[]{":"}, false, 0, 6, (Object) null).get(0)) + ' ' + ((String) split$default.get(1));
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }
            String string2 = jSONObject2.getString("time");
            Intrinsics.checkNotNullExpressionValue(string2, "getString(...)");
            String str3 = jSONObject2.getString("temperature") + str2;
            String string3 = jSONObject2.getString("thumbnail");
            Intrinsics.checkNotNullExpressionValue(string3, "getString(...)");
            String string4 = jSONObject2.getString("precipitation");
            Intrinsics.checkNotNullExpressionValue(string4, "getString(...)");
            arrayList.add(new SearchWeatherInfo.HourlyTemperature(string2, str, str3, str2, string3, string4));
        }
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        for (Object obj : arrayList) {
            String str4 = (String) StringsKt.split$default((CharSequence) ((SearchWeatherInfo.HourlyTemperature) obj).getTime(), new String[]{" "}, false, 0, 6, (Object) null).get(0);
            Object obj2 = linkedHashMap.get(str4);
            if (obj2 == null) {
                obj2 = (List) new ArrayList();
                linkedHashMap.put(str4, obj2);
            }
            ((List) obj2).add(obj);
        }
        ArrayList arrayList2 = new ArrayList();
        for (Map.Entry entry : linkedHashMap.entrySet()) {
            String string5 = jSONObject.getString("location");
            Intrinsics.checkNotNullExpressionValue(string5, "getString(...)");
            String abbreviateWeekdayName = abbreviateWeekdayName((String) entry.getKey());
            String string6 = jSONObject.getString("weather");
            Intrinsics.checkNotNullExpressionValue(string6, "getString(...)");
            arrayList2.add(new SearchWeatherInfo(string5, abbreviateWeekdayName, string6, (List) entry.getValue()));
        }
        return arrayList2;
    }

    public static final String abbreviateWeekdayName(String weekdayFullName) {
        Intrinsics.checkNotNullParameter(weekdayFullName, "weekdayFullName");
        switch (weekdayFullName.hashCode()) {
            case -2049557543:
                if (weekdayFullName.equals("Saturday")) {
                    weekdayFullName = "Sat.";
                    break;
                }
                break;
            case -1984635600:
                if (weekdayFullName.equals("Monday")) {
                    weekdayFullName = "Mon.";
                    break;
                }
                break;
            case -1807319568:
                if (weekdayFullName.equals("Sunday")) {
                    weekdayFullName = "Sun.";
                    break;
                }
                break;
            case -897468618:
                if (weekdayFullName.equals("Wednesday")) {
                    weekdayFullName = "Wed.";
                    break;
                }
                break;
            case 687309357:
                if (weekdayFullName.equals("Tuesday")) {
                    weekdayFullName = "Tues.";
                    break;
                }
                break;
            case 1636699642:
                if (weekdayFullName.equals("Thursday")) {
                    weekdayFullName = "Thur.";
                    break;
                }
                break;
            case 2112549247:
                if (weekdayFullName.equals("Friday")) {
                    weekdayFullName = "Fri.";
                    break;
                }
                break;
        }
        return StringsKt.trim((CharSequence) weekdayFullName).toString();
    }
}
