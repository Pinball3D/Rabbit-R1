package tech.rabbit.r1launcher.rabbit.event_handler;

import android.util.Base64;
import android.util.Log;
import androidx.core.app.NotificationCompat;
import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONObject;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import tech.rabbit.r1launcher.constant.Service;
import tech.rabbit.r1launcher.geoLocation.GeoLocationManager;
import tech.rabbit.r1launcher.rabbit.TTSPlayer;
import tech.rabbit.r1launcher.rabbit.event_handler.WebSocketEventHandler;
import tech.rabbit.r1launcher.rabbit.event_handler.models.SearchStockKt;
import tech.rabbit.r1launcher.rabbit.event_handler.models.SearchWeatherKt;
import tech.rabbit.r1launcher.wss.RabbitEngine;

/* compiled from: KernelEventHandler.kt */
@Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0007\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J \u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\u00042\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\u0004H\u0016R\u0014\u0010\u0003\u001a\u00020\u0004X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006¨\u0006\r"}, d2 = {"Ltech/rabbit/r1launcher/rabbit/event_handler/KernelEventHandler;", "Ltech/rabbit/r1launcher/rabbit/event_handler/WebSocketEventHandler;", "()V", "interestedIn", "", "getInterestedIn", "()Ljava/lang/String;", "handleEvent", "", NotificationCompat.CATEGORY_EVENT, "payload", "Lcom/alibaba/fastjson/JSONObject;", "rawPayload", "app_productionEnvRelease"}, k = 1, mv = {1, 9, 0}, xi = 48)
/* loaded from: classes3.dex */
public final class KernelEventHandler implements WebSocketEventHandler {
    public static final int $stable = 0;
    private final String interestedIn = Service.KERNEL.getTag();

    @Override // tech.rabbit.r1launcher.rabbit.event_handler.WebSocketEventHandler
    public String getInterestedIn() {
        return this.interestedIn;
    }

    @Override // tech.rabbit.r1launcher.rabbit.event_handler.WebSocketEventHandler
    public boolean onEvent(String str, JSONObject jSONObject, String str2) {
        return WebSocketEventHandler.DefaultImpls.onEvent(this, str, jSONObject, str2);
    }

    @Override // tech.rabbit.r1launcher.rabbit.event_handler.WebSocketEventHandler
    public boolean handleEvent(String event, JSONObject payload, String rawPayload) {
        String str;
        Intrinsics.checkNotNullParameter(event, "event");
        Intrinsics.checkNotNullParameter(payload, "payload");
        Intrinsics.checkNotNullParameter(rawPayload, "rawPayload");
        String string = payload.getString("assistantResponse");
        if (string != null) {
            Log.d("AssistantResponse", string);
            return true;
        }
        JSONObject jSONObject = payload.getJSONObject("assistantResponseDevice");
        String str2 = "";
        if (jSONObject != null) {
            String string2 = jSONObject.getString("audio");
            if (string2 != null) {
                Intrinsics.checkNotNull(string2);
                byte[] decode = Base64.decode(string2, 0);
                TTSPlayer tTSPlayer = TTSPlayer.INSTANCE;
                Intrinsics.checkNotNull(decode);
                String string3 = jSONObject.getString("text");
                if (string3 != null) {
                    Intrinsics.checkNotNull(string3);
                    str2 = string3;
                }
                tTSPlayer.play(decode, str2);
            }
            return true;
        }
        String string4 = payload.getString("serpModal");
        if (string4 != null) {
            JSONObject parseObject = JSON.parseObject(string4);
            JSONObject jSONObject2 = parseObject != null ? parseObject.getJSONObject("answer_box") : null;
            Log.d("serpModal", "answerBox.type: " + (jSONObject2 != null ? jSONObject2.getString("type") : null));
            String string5 = jSONObject2 != null ? jSONObject2.getString("type") : null;
            if (Intrinsics.areEqual(string5, "finance_results")) {
                RabbitEngine rabbitEngine = RabbitEngine.INSTANCE;
                Intrinsics.checkNotNull(parseObject);
                String jSONString = JSON.toJSONString(SearchStockKt.generateStockInfo(parseObject));
                Intrinsics.checkNotNullExpressionValue(jSONString, "toJSONString(...)");
                rabbitEngine.sendStockShow(jSONString);
            } else if (Intrinsics.areEqual(string5, "weather_result")) {
                RabbitEngine rabbitEngine2 = RabbitEngine.INSTANCE;
                Intrinsics.checkNotNull(parseObject);
                String jSONString2 = JSON.toJSONString(SearchWeatherKt.generateWeatherInfo(parseObject));
                Intrinsics.checkNotNullExpressionValue(jSONString2, "toJSONString(...)");
                rabbitEngine2.sendWeatherShow(jSONString2);
            }
            return true;
        }
        Boolean bool = payload.getBoolean("rabbitThinking");
        if (bool != null) {
            if (bool.booleanValue()) {
                RabbitEngine.INSTANCE.sendRabbitState("thinking");
            } else {
                RabbitEngine.INSTANCE.sendRabbitState("thinkEnd");
            }
            return true;
        }
        String string6 = payload.getString("openCard");
        if (string6 != null) {
            if (Intrinsics.areEqual(string6, Service.UBER.getTag())) {
                RabbitEngine.INSTANCE.sendRabbitAddressPageShow("rideShare");
            } else if (Intrinsics.areEqual(string6, Service.SPOTIFY.getTag())) {
                RabbitEngine.INSTANCE.sendMusicPlayerMessage("userRequestedMusic", "");
            }
            return true;
        }
        String string7 = payload.getString("closeCard");
        if (string7 != null) {
            if (Intrinsics.areEqual(string7, Service.UBER.getTag())) {
                RabbitEngine.INSTANCE.sendRideShareCardClose();
            } else if (Intrinsics.areEqual(string7, Service.DOORDASH.getTag())) {
                RabbitEngine.INSTANCE.sendFoodDeliveryCardClose();
            } else if (Intrinsics.areEqual(string7, Service.FOOD_DELIVERY.getTag())) {
                RabbitEngine.INSTANCE.sendFoodDeliveryCardClose();
            } else if (Intrinsics.areEqual(string7, Service.SPOTIFY.getTag())) {
                RabbitEngine.INSTANCE.sendMusicCardClose();
            } else if (Intrinsics.areEqual(string7, Service.VISION.getTag())) {
                RabbitEngine.INSTANCE.sendVisionCardClose();
            } else {
                RabbitEngine.INSTANCE.clearAllTask();
            }
            return true;
        }
        String string8 = payload.getString("rabbitStatus");
        if (string8 != null) {
            int hashCode = string8.hashCode();
            if (hashCode == -22887961) {
                str = "rideshare";
            } else {
                if (hashCode != 3148894) {
                    if (hashCode == 3227604) {
                        str = "idle";
                    }
                    return true;
                }
                str = "food";
            }
            string8.equals(str);
            return true;
        }
        JSONObject jSONObject3 = payload.getJSONObject("travelPlan");
        if (jSONObject3 != null) {
            RabbitEngine rabbitEngine3 = RabbitEngine.INSTANCE;
            String jSONString3 = jSONObject3.toJSONString();
            Intrinsics.checkNotNullExpressionValue(jSONString3, "toJSONString(...)");
            rabbitEngine3.sendManualTask(jSONString3);
        }
        String string9 = payload.getString("stateInfo");
        if (string9 != null) {
            RabbitEngine.INSTANCE.sendServerStateInfo(string9);
        }
        if (payload.getString("requestGPS") != null) {
            GeoLocationManager.INSTANCE.requestLocationInstantly();
        }
        return true;
    }
}
