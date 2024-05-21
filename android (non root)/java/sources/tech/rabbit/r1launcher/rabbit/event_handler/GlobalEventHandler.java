package tech.rabbit.r1launcher.rabbit.event_handler;

import android.os.Build;
import android.util.Log;
import androidx.core.app.NotificationCompat;
import com.alibaba.fastjson.JSONObject;
import defpackage.AppConfig;
import io.sentry.protocol.OperatingSystem;
import java.util.Map;
import kotlin.Metadata;
import kotlin.TuplesKt;
import kotlin.collections.MapsKt;
import kotlin.jvm.internal.Intrinsics;
import tech.rabbit.r1launcher.BuildConfig;
import tech.rabbit.r1launcher.constant.Service;
import tech.rabbit.r1launcher.rabbit.event_handler.WebSocketEventHandler;
import tech.rabbit.r1launcher.wss.LoginState;
import tech.rabbit.r1launcher.wss.RabbitEngine;
import tech.rabbit.r1launcher.wss.WebSocketManager;

/* compiled from: GlobalEventHandler.kt */
@Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0007\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J \u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\u00042\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\u0004H\u0016R\u0014\u0010\u0003\u001a\u00020\u0004X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006¨\u0006\r"}, d2 = {"Ltech/rabbit/r1launcher/rabbit/event_handler/GlobalEventHandler;", "Ltech/rabbit/r1launcher/rabbit/event_handler/WebSocketEventHandler;", "()V", "interestedIn", "", "getInterestedIn", "()Ljava/lang/String;", "handleEvent", "", NotificationCompat.CATEGORY_EVENT, "payload", "Lcom/alibaba/fastjson/JSONObject;", "rawPayload", "app_productionEnvRelease"}, k = 1, mv = {1, 9, 0}, xi = 48)
/* loaded from: classes3.dex */
public final class GlobalEventHandler implements WebSocketEventHandler {
    public static final int $stable = 0;
    private final String interestedIn = Service.GLOBAL.getTag();

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
        JSONObject jSONObject;
        Intrinsics.checkNotNullParameter(event, "event");
        Intrinsics.checkNotNullParameter(payload, "payload");
        Intrinsics.checkNotNullParameter(rawPayload, "rawPayload");
        if (payload.containsKey("initialize")) {
            JSONObject jSONObject2 = payload.getJSONObject("initialize");
            if (jSONObject2 != null && jSONObject2.getString("clientIp") != null) {
                Log.d("GlobalEventHandler", "wss login success");
                WebSocketManager.INSTANCE.send("{\"" + Service.SPOTIFY.getTag() + "\":{\"playerConnect\":{\"debugEnabled\":false}}}");
                JSONObject jSONObject3 = new JSONObject((Map<String, Object>) MapsKt.mapOf(TuplesKt.to("deviceInfo", new JSONObject((Map<String, Object>) MapsKt.mapOf(TuplesKt.to("deviceId", AppConfig.INSTANCE.getDeviceId()), TuplesKt.to("ver", BuildConfig.VERSION_NAME), TuplesKt.to(OperatingSystem.JsonKeys.BUILD, "by jenkins, productionEnv, /4fd1bbff, uncommitted change: " + BuildConfig.HAS_UNCOMMITTED_CHANGE + ')'), TuplesKt.to("romVer", Build.DISPLAY))).toJSONString())));
                WebSocketManager webSocketManager = WebSocketManager.INSTANCE;
                String jSONString = jSONObject3.toJSONString();
                Intrinsics.checkNotNullExpressionValue(jSONString, "toJSONString(...)");
                webSocketManager.send(jSONString);
                RabbitEngine.INSTANCE.sendLoginState(LoginState.LoginSuccess);
            }
        } else if (payload.containsKey("rabbitStatus") && (jSONObject = payload.getJSONObject("rabbitStatus")) != null) {
            String string = jSONObject.getString("name");
            Boolean bool = jSONObject.getBoolean("isReady");
            Intrinsics.checkNotNull(bool);
            if (bool.booleanValue()) {
                Log.d("GlobalEventHandler", string + " is ready");
            }
        }
        return true;
    }
}
