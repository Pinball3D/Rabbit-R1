package tech.rabbit.r1launcher.rabbit;

import android.util.Log;
import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONObject;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;
import tech.rabbit.r1launcher.rabbit.event_handler.WebSocketEventHandler;

/* compiled from: RabbitServiceEventProcessor.kt */
@Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\bÇ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u000e\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\tJ\u000e\u0010\n\u001a\u00020\u00072\u0006\u0010\u000b\u001a\u00020\u0005R\u0014\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\f"}, d2 = {"Ltech/rabbit/r1launcher/rabbit/RabbitServiceEventProcessor;", "", "()V", "handlers", "", "Ltech/rabbit/r1launcher/rabbit/event_handler/WebSocketEventHandler;", "onEvent", "", "jsonStr", "", "registerHandler", "handler", "app_productionEnvRelease"}, k = 1, mv = {1, 9, 0}, xi = 48)
/* loaded from: classes3.dex */
public final class RabbitServiceEventProcessor {
    public static final RabbitServiceEventProcessor INSTANCE = new RabbitServiceEventProcessor();
    private static final List<WebSocketEventHandler> handlers = new ArrayList();
    public static final int $stable = 8;

    private RabbitServiceEventProcessor() {
    }

    public final void registerHandler(WebSocketEventHandler handler) {
        Intrinsics.checkNotNullParameter(handler, "handler");
        handlers.add(handler);
    }

    public final void onEvent(String jsonStr) {
        boolean z;
        Intrinsics.checkNotNullParameter(jsonStr, "jsonStr");
        try {
            JSONObject parseObject = JSON.parseObject(jsonStr);
            Set<String> keySet = parseObject.keySet();
            Intrinsics.checkNotNullExpressionValue(keySet, "<get-keys>(...)");
            for (String str : keySet) {
                JSONObject jSONObject = parseObject.getJSONObject(str);
                Iterator<WebSocketEventHandler> it = handlers.iterator();
                while (true) {
                    if (!it.hasNext()) {
                        z = false;
                        break;
                    }
                    WebSocketEventHandler next = it.next();
                    Intrinsics.checkNotNull(str);
                    Intrinsics.checkNotNull(jSONObject);
                    if (next.onEvent(str, jSONObject, jsonStr)) {
                        z = true;
                        break;
                    }
                }
                Log.d("RabbitEVTProc", "> " + str + ": processed: " + z);
            }
            Unit unit = Unit.INSTANCE;
        } catch (Throwable th) {
            Log.e("KotUtil", "catched Exception : " + th.getMessage());
        }
    }
}
