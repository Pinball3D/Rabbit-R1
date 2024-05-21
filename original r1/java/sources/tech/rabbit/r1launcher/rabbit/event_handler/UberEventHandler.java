package tech.rabbit.r1launcher.rabbit.event_handler;

import androidx.core.app.NotificationCompat;
import com.alibaba.fastjson.JSONArray;
import com.alibaba.fastjson.JSONObject;
import java.util.ArrayList;
import java.util.Date;
import java.util.Set;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import tech.rabbit.r1launcher.constant.Service;
import tech.rabbit.r1launcher.models.RideProduct;
import tech.rabbit.r1launcher.rabbit.event_handler.WebSocketEventHandler;
import tech.rabbit.r1launcher.wss.RabbitEngine;

/* compiled from: UberEventHandler.kt */
@Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0003\b\u0007\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u000e\u0010\u0007\u001a\u00020\u00042\u0006\u0010\b\u001a\u00020\tJ\u000e\u0010\n\u001a\u00020\u00042\u0006\u0010\b\u001a\u00020\tJ\u0019\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\r0\f2\u0006\u0010\b\u001a\u00020\t¢\u0006\u0002\u0010\u000eJ \u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00042\u0006\u0010\b\u001a\u00020\t2\u0006\u0010\u0012\u001a\u00020\u0004H\u0016R\u0014\u0010\u0003\u001a\u00020\u0004X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006¨\u0006\u0013"}, d2 = {"Ltech/rabbit/r1launcher/rabbit/event_handler/UberEventHandler;", "Ltech/rabbit/r1launcher/rabbit/event_handler/WebSocketEventHandler;", "()V", "interestedIn", "", "getInterestedIn", "()Ljava/lang/String;", "convertToDropOffAddress", "payload", "Lcom/alibaba/fastjson/JSONObject;", "convertToPickupAddress", "convertToRiderShareProducts", "", "Ltech/rabbit/r1launcher/models/RideProduct;", "(Lcom/alibaba/fastjson/JSONObject;)[Ltech/rabbit/r1launcher/models/RideProduct;", "handleEvent", "", NotificationCompat.CATEGORY_EVENT, "rawPayload", "app_productionEnvRelease"}, k = 1, mv = {1, 9, 0}, xi = 48)
/* loaded from: classes3.dex */
public final class UberEventHandler implements WebSocketEventHandler {
    public static final int $stable = 0;
    private final String interestedIn = Service.UBER.getTag();

    @Override // tech.rabbit.r1launcher.rabbit.event_handler.WebSocketEventHandler
    public String getInterestedIn() {
        return this.interestedIn;
    }

    @Override // tech.rabbit.r1launcher.rabbit.event_handler.WebSocketEventHandler
    public boolean onEvent(String str, JSONObject jSONObject, String str2) {
        return WebSocketEventHandler.DefaultImpls.onEvent(this, str, jSONObject, str2);
    }

    public final RideProduct[] convertToRiderShareProducts(JSONObject payload) {
        Intrinsics.checkNotNullParameter(payload, "payload");
        JSONArray jSONArray = payload.getJSONArray("products");
        ArrayList arrayList = new ArrayList();
        int size = jSONArray.size();
        for (int i = 0; i < size; i++) {
            JSONObject jSONObject = jSONArray.getJSONObject(i);
            Integer integer = jSONObject.getInteger("estMinutesToPickup");
            String string = jSONObject.getString("name");
            Intrinsics.checkNotNullExpressionValue(string, "getString(...)");
            Integer integer2 = jSONObject.getInteger("capacity");
            Intrinsics.checkNotNullExpressionValue(integer2, "getInteger(...)");
            int intValue = integer2.intValue();
            Integer integer3 = jSONObject.getInteger("estMinutesToPickup");
            Intrinsics.checkNotNullExpressionValue(integer3, "getInteger(...)");
            int intValue2 = integer3.intValue();
            Date date = new Date(System.currentTimeMillis() + (integer.intValue() * 60000));
            Integer integer4 = jSONObject.getInteger("estPriceUsdCents");
            Intrinsics.checkNotNullExpressionValue(integer4, "getInteger(...)");
            int intValue3 = integer4.intValue();
            String string2 = jSONObject.getString("id");
            Intrinsics.checkNotNullExpressionValue(string2, "getString(...)");
            arrayList.add(new RideProduct(string, intValue, intValue2, date, intValue3, string2, jSONObject.getString("routePolyline")));
        }
        return (RideProduct[]) arrayList.toArray(new RideProduct[0]);
    }

    public final String convertToPickupAddress(JSONObject payload) {
        Intrinsics.checkNotNullParameter(payload, "payload");
        String jSONObject = payload.toString();
        Intrinsics.checkNotNullExpressionValue(jSONObject, "toString(...)");
        return jSONObject;
    }

    public final String convertToDropOffAddress(JSONObject payload) {
        Intrinsics.checkNotNullParameter(payload, "payload");
        String jSONObject = payload.toString();
        Intrinsics.checkNotNullExpressionValue(jSONObject, "toString(...)");
        return jSONObject;
    }

    @Override // tech.rabbit.r1launcher.rabbit.event_handler.WebSocketEventHandler
    public boolean handleEvent(String event, JSONObject payload, String rawPayload) {
        Intrinsics.checkNotNullParameter(event, "event");
        Intrinsics.checkNotNullParameter(payload, "payload");
        Intrinsics.checkNotNullParameter(rawPayload, "rawPayload");
        Set<String> keySet = payload.keySet();
        Intrinsics.checkNotNullExpressionValue(keySet, "<get-keys>(...)");
        for (String str : keySet) {
            JSONObject jSONObject = payload.getJSONObject(str);
            if (str != null) {
                switch (str.hashCode()) {
                    case -1460477603:
                        if (str.equals("productSelection")) {
                            RabbitEngine rabbitEngine = RabbitEngine.INSTANCE;
                            Intrinsics.checkNotNull(jSONObject);
                            rabbitEngine.sendRiderShareProductSelection(convertToRiderShareProducts(jSONObject));
                            break;
                        } else {
                            break;
                        }
                    case -117671796:
                        if (str.equals("updatePickupAddressResult")) {
                            RabbitEngine rabbitEngine2 = RabbitEngine.INSTANCE;
                            Intrinsics.checkNotNull(jSONObject);
                            rabbitEngine2.sendUpdatePickUpAddress(convertToPickupAddress(jSONObject));
                            break;
                        } else {
                            break;
                        }
                    case 557919672:
                        if (str.equals("getHistoryResults")) {
                            RabbitEngine rabbitEngine3 = RabbitEngine.INSTANCE;
                            String jSONString = JSONObject.toJSONString(jSONObject);
                            Intrinsics.checkNotNullExpressionValue(jSONString, "toJSONString(...)");
                            rabbitEngine3.sendRideHistory(jSONString);
                            break;
                        } else {
                            break;
                        }
                    case 1698641754:
                        if (str.equals("updateDropoffAddressResult")) {
                            RabbitEngine rabbitEngine4 = RabbitEngine.INSTANCE;
                            Intrinsics.checkNotNull(jSONObject);
                            rabbitEngine4.sendUpdateDropOffAddress(convertToDropOffAddress(jSONObject));
                            break;
                        } else {
                            break;
                        }
                }
            }
        }
        return true;
    }
}
