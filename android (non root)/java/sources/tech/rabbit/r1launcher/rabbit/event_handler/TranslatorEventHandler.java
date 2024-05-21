package tech.rabbit.r1launcher.rabbit.event_handler;

import android.util.Base64;
import android.util.Log;
import androidx.core.app.NotificationCompat;
import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONObject;
import java.util.Map;
import java.util.Set;
import kotlin.Metadata;
import kotlin.TuplesKt;
import kotlin.collections.MapsKt;
import kotlin.jvm.internal.Intrinsics;
import tech.rabbit.r1launcher.constant.Service;
import tech.rabbit.r1launcher.rabbit.ScreenOffOp;
import tech.rabbit.r1launcher.rabbit.TTSPlayer;
import tech.rabbit.r1launcher.rabbit.VoiceRecorder;
import tech.rabbit.r1launcher.rabbit.event_handler.WebSocketEventHandler;
import tech.rabbit.r1launcher.wss.RabbitEngine;

/* compiled from: TranslatorEventHandler.kt */
@Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0007\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J \u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\u00042\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\u0004H\u0016R\u0014\u0010\u0003\u001a\u00020\u0004X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006¨\u0006\r"}, d2 = {"Ltech/rabbit/r1launcher/rabbit/event_handler/TranslatorEventHandler;", "Ltech/rabbit/r1launcher/rabbit/event_handler/WebSocketEventHandler;", "()V", "interestedIn", "", "getInterestedIn", "()Ljava/lang/String;", "handleEvent", "", NotificationCompat.CATEGORY_EVENT, "payload", "Lcom/alibaba/fastjson/JSONObject;", "rawPayload", "app_productionEnvRelease"}, k = 1, mv = {1, 9, 0}, xi = 48)
/* loaded from: classes3.dex */
public final class TranslatorEventHandler implements WebSocketEventHandler {
    public static final int $stable = 0;
    private final String interestedIn = Service.TRANSLATOR.getTag();

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
        Intrinsics.checkNotNullParameter(event, "event");
        Intrinsics.checkNotNullParameter(payload, "payload");
        Intrinsics.checkNotNullParameter(rawPayload, "rawPayload");
        Set<String> keySet = payload.keySet();
        Intrinsics.checkNotNullExpressionValue(keySet, "<get-keys>(...)");
        if (keySet.contains("changeMode")) {
            RabbitEngine rabbitEngine = RabbitEngine.INSTANCE;
            String jSONString = JSON.toJSONString(payload);
            Intrinsics.checkNotNullExpressionValue(jSONString, "toJSONString(...)");
            rabbitEngine.sendTranslatorEvent(jSONString);
        } else if (keySet.contains("translationResponse") && !VoiceRecorder.INSTANCE.isRecording() && ScreenOffOp.INSTANCE.isScreenOn()) {
            JSONObject jSONObject = payload.getJSONObject("translationResponse");
            String string = jSONObject.getString("audioBase64");
            Float f = jSONObject.getFloat("audioDurationSeconds");
            String str = string;
            if (str != null && str.length() != 0 && f != null) {
                byte[] decode = Base64.decode(string, 0);
                Map mapOf = MapsKt.mapOf(TuplesKt.to("char_start_times_ms", new Long[]{Long.valueOf(f.floatValue() * 1000)}), TuplesKt.to("char_durations_ms", new Long[]{0L}));
                TTSPlayer tTSPlayer = TTSPlayer.INSTANCE;
                Intrinsics.checkNotNull(decode);
                String jSONString2 = JSON.toJSONString(mapOf);
                Intrinsics.checkNotNullExpressionValue(jSONString2, "toJSONString(...)");
                tTSPlayer.play(decode, jSONString2);
            }
            RabbitEngine rabbitEngine2 = RabbitEngine.INSTANCE;
            String jSONString3 = JSON.toJSONString(payload);
            Intrinsics.checkNotNullExpressionValue(jSONString3, "toJSONString(...)");
            rabbitEngine2.sendUpdateTranslator(jSONString3);
            String string2 = jSONObject.getString("text");
            if (string2 != null) {
                Log.d("TranslationResponse", string2);
            }
        }
        return true;
    }
}
