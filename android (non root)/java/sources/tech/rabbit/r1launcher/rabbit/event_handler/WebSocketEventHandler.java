package tech.rabbit.r1launcher.rabbit.event_handler;

import androidx.core.app.NotificationCompat;
import com.alibaba.fastjson.JSONObject;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: WebSocketEventHandler.kt */
@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\bf\u0018\u00002\u00020\u0001J \u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\u00032\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u0003H&J \u0010\f\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\u00032\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u0003H\u0016R\u0012\u0010\u0002\u001a\u00020\u0003X¦\u0004¢\u0006\u0006\u001a\u0004\b\u0004\u0010\u0005¨\u0006\r"}, d2 = {"Ltech/rabbit/r1launcher/rabbit/event_handler/WebSocketEventHandler;", "", "interestedIn", "", "getInterestedIn", "()Ljava/lang/String;", "handleEvent", "", NotificationCompat.CATEGORY_EVENT, "payload", "Lcom/alibaba/fastjson/JSONObject;", "rawPayload", "onEvent", "app_productionEnvRelease"}, k = 1, mv = {1, 9, 0}, xi = 48)
/* loaded from: classes3.dex */
public interface WebSocketEventHandler {
    String getInterestedIn();

    boolean handleEvent(String event, JSONObject payload, String rawPayload);

    boolean onEvent(String event, JSONObject payload, String rawPayload);

    /* compiled from: WebSocketEventHandler.kt */
    @Metadata(k = 3, mv = {1, 9, 0}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class DefaultImpls {
        public static boolean onEvent(WebSocketEventHandler webSocketEventHandler, String event, JSONObject payload, String rawPayload) {
            Intrinsics.checkNotNullParameter(event, "event");
            Intrinsics.checkNotNullParameter(payload, "payload");
            Intrinsics.checkNotNullParameter(rawPayload, "rawPayload");
            return Intrinsics.areEqual(webSocketEventHandler.getInterestedIn(), event) && webSocketEventHandler.handleEvent(event, payload, rawPayload);
        }
    }
}
