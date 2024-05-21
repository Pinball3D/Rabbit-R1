package tech.rabbit.r1launcher.wss;

import io.sentry.okhttp.SentryOkHttpEventListener;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import okhttp3.WebSocket;
import okio.ByteString;

/* compiled from: WebSocketManager.kt */
@Metadata(d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u000e\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u000e\u0010\u0018\u001a\u00020\u00192\u0006\u0010\u001a\u001a\u00020\u001bJ\u0006\u0010\u001c\u001a\u00020\u0019J\u0006\u0010\u001d\u001a\u00020\u0019J\u000e\u0010\u001e\u001a\u00020\u001f2\u0006\u0010 \u001a\u00020\u0004J\u000e\u0010\u001e\u001a\u00020\u001f2\u0006\u0010!\u001a\u00020\"R\u001a\u0010\u0003\u001a\u00020\u0004X\u0086.¢\u0006\u000e\n\u0000\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR\u001b\u0010\t\u001a\u00020\n8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\r\u0010\u000e\u001a\u0004\b\u000b\u0010\fR\u001a\u0010\u000f\u001a\u00020\u0004X\u0086.¢\u0006\u000e\n\u0000\u001a\u0004\b\u0010\u0010\u0006\"\u0004\b\u0011\u0010\bR\u001a\u0010\u0012\u001a\u00020\u0004X\u0086.¢\u0006\u000e\n\u0000\u001a\u0004\b\u0013\u0010\u0006\"\u0004\b\u0014\u0010\bR\u001a\u0010\u0015\u001a\u00020\u0004X\u0086.¢\u0006\u000e\n\u0000\u001a\u0004\b\u0016\u0010\u0006\"\u0004\b\u0017\u0010\b¨\u0006#"}, d2 = {"Ltech/rabbit/r1launcher/wss/WebSocketManager;", "", "()V", "appVersion", "", "getAppVersion", "()Ljava/lang/String;", "setAppVersion", "(Ljava/lang/String;)V", "client", "Ltech/rabbit/r1launcher/wss/WssClient;", "getClient", "()Ltech/rabbit/r1launcher/wss/WssClient;", "client$delegate", "Lkotlin/Lazy;", "deviceId", "getDeviceId", "setDeviceId", "osVersion", "getOsVersion", "setOsVersion", "rabbitServiceUrl", "getRabbitServiceUrl", "setRabbitServiceUrl", "addMessageListener", "", "listener", "Ltech/rabbit/r1launcher/wss/RWebSocketListener;", SentryOkHttpEventListener.CONNECT_EVENT, "disconnect", "send", "", "stringData", "data", "Lokio/ByteString;", "base_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
/* loaded from: classes3.dex */
public final class WebSocketManager {
    public static String appVersion;
    public static String deviceId;
    public static String osVersion;
    public static String rabbitServiceUrl;
    public static final WebSocketManager INSTANCE = new WebSocketManager();

    /* renamed from: client$delegate, reason: from kotlin metadata */
    private static final Lazy client = LazyKt.lazy(new Function0<WssClient>() { // from class: tech.rabbit.r1launcher.wss.WebSocketManager$client$2
        @Override // kotlin.jvm.functions.Function0
        public final WssClient invoke() {
            return new WssClient();
        }
    });

    public final void setAppVersion(String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        appVersion = str;
    }

    public final void setDeviceId(String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        deviceId = str;
    }

    public final void setOsVersion(String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        osVersion = str;
    }

    public final void setRabbitServiceUrl(String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        rabbitServiceUrl = str;
    }

    private WebSocketManager() {
    }

    private final WssClient getClient() {
        return (WssClient) client.getValue();
    }

    public final String getRabbitServiceUrl() {
        String str = rabbitServiceUrl;
        if (str != null) {
            return str;
        }
        Intrinsics.throwUninitializedPropertyAccessException("rabbitServiceUrl");
        return null;
    }

    public final String getDeviceId() {
        String str = deviceId;
        if (str != null) {
            return str;
        }
        Intrinsics.throwUninitializedPropertyAccessException("deviceId");
        return null;
    }

    public final String getAppVersion() {
        String str = appVersion;
        if (str != null) {
            return str;
        }
        Intrinsics.throwUninitializedPropertyAccessException("appVersion");
        return null;
    }

    public final String getOsVersion() {
        String str = osVersion;
        if (str != null) {
            return str;
        }
        Intrinsics.throwUninitializedPropertyAccessException("osVersion");
        return null;
    }

    public final void connect() {
        getClient().connect(getRabbitServiceUrl(), getDeviceId(), getAppVersion(), getOsVersion());
    }

    public final void addMessageListener(RWebSocketListener listener) {
        Intrinsics.checkNotNullParameter(listener, "listener");
        getClient().addListener(listener);
    }

    public final boolean send(String stringData) {
        Intrinsics.checkNotNullParameter(stringData, "stringData");
        WebSocket webSocket = getClient().getWebSocket();
        return webSocket != null && webSocket.send(stringData);
    }

    public final boolean send(ByteString data) {
        Intrinsics.checkNotNullParameter(data, "data");
        WebSocket webSocket = getClient().getWebSocket();
        return webSocket != null && webSocket.send(data);
    }

    public final void disconnect() {
        getClient().disconnect();
    }
}
