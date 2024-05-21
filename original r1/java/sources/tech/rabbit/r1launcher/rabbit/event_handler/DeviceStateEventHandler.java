package tech.rabbit.r1launcher.rabbit.event_handler;

import android.net.wifi.WifiConfiguration;
import android.net.wifi.WifiManager;
import androidx.core.app.NotificationCompat;
import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONObject;
import defpackage.UpdateHelper;
import io.sentry.protocol.Device;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import tech.rabbit.common.utils.RabbitCommon;
import tech.rabbit.common.utils.SPUtils;
import tech.rabbit.r1launcher.constant.Service;
import tech.rabbit.r1launcher.rabbit.event_handler.WebSocketEventHandler;
import tech.rabbit.r1launcher.wss.Constant;
import tech.rabbit.r1launcher.wss.RabbitEngine;

/* compiled from: DeviceStateEventHandler.kt */
@Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0007\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\b\u0010\u0007\u001a\u00020\bH\u0003J \u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u00042\u0006\u0010\f\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u0004H\u0016R\u0014\u0010\u0003\u001a\u00020\u0004X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006¨\u0006\u000f"}, d2 = {"Ltech/rabbit/r1launcher/rabbit/event_handler/DeviceStateEventHandler;", "Ltech/rabbit/r1launcher/rabbit/event_handler/WebSocketEventHandler;", "()V", "interestedIn", "", "getInterestedIn", "()Ljava/lang/String;", "disconnectAndRemoveAllWifi", "", "handleEvent", "", NotificationCompat.CATEGORY_EVENT, "payload", "Lcom/alibaba/fastjson/JSONObject;", "rawPayload", "app_productionEnvRelease"}, k = 1, mv = {1, 9, 0}, xi = 48)
/* loaded from: classes3.dex */
public final class DeviceStateEventHandler implements WebSocketEventHandler {
    public static final int $stable = 0;
    private final String interestedIn = Service.DEVICE_STATE.getTag();

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
        if (keySet.contains("verification")) {
            if (payload.getBoolean("verification").booleanValue()) {
                return true;
            }
            UpdateHelper.INSTANCE.executeIfNoUpdate(new Runnable() { // from class: tech.rabbit.r1launcher.rabbit.event_handler.DeviceStateEventHandler$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    DeviceStateEventHandler.handleEvent$lambda$0(DeviceStateEventHandler.this);
                }
            });
            return true;
        }
        if (!keySet.contains(Device.TYPE)) {
            return true;
        }
        String jSONString = JSON.toJSONString(payload);
        Constant.saveLostMode(jSONString);
        RabbitEngine rabbitEngine = RabbitEngine.INSTANCE;
        Intrinsics.checkNotNull(jSONString);
        rabbitEngine.sendDeviceLostEvent(jSONString);
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void handleEvent$lambda$0(DeviceStateEventHandler this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        SPUtils.INSTANCE.clearCommit();
        this$0.disconnectAndRemoveAllWifi();
        System.exit(0);
        throw new RuntimeException("System.exit returned normally, while it was supposed to halt JVM.");
    }

    private final void disconnectAndRemoveAllWifi() {
        Object systemService = RabbitCommon.INSTANCE.getSContext().getSystemService("wifi");
        WifiManager wifiManager = systemService instanceof WifiManager ? (WifiManager) systemService : null;
        if (wifiManager != null) {
            wifiManager.disconnect();
            List<WifiConfiguration> configuredNetworks = wifiManager.getConfiguredNetworks();
            if (configuredNetworks != null) {
                Intrinsics.checkNotNull(configuredNetworks);
                Iterator<T> it = configuredNetworks.iterator();
                while (it.hasNext()) {
                    wifiManager.removeNetwork(((WifiConfiguration) it.next()).networkId);
                }
            }
            wifiManager.saveConfiguration();
        }
    }
}
