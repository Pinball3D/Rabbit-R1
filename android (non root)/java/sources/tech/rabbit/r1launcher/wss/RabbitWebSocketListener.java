package tech.rabbit.r1launcher.wss;

import io.sentry.clientreport.DiscardedEvent;
import io.sentry.protocol.Response;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import okhttp3.WebSocket;
import okio.ByteString;
import tech.rabbit.r1launcher.rabbit.RabbitServiceEventProcessor;
import tech.rabbit.r1launcher.wss.rtc.RTCNetworkManager;

/* compiled from: RabbitWebSocketListener.kt */
@Metadata(d1 = {"\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\u0003\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\bÇ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J \u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\nH\u0016J\b\u0010\u000b\u001a\u00020\u0004H\u0016J\"\u0010\f\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\r\u001a\u00020\u000e2\b\u0010\u000f\u001a\u0004\u0018\u00010\u0010H\u0016J\u0018\u0010\u0011\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0012\u001a\u00020\nH\u0016J\u0018\u0010\u0011\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0013\u001a\u00020\u0014H\u0016J\u0018\u0010\u0015\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u000f\u001a\u00020\u0010H\u0016J\b\u0010\u0016\u001a\u00020\u0004H\u0002¨\u0006\u0017"}, d2 = {"Ltech/rabbit/r1launcher/wss/RabbitWebSocketListener;", "Ltech/rabbit/r1launcher/wss/RWebSocketListener;", "()V", "onClosed", "", "webSocket", "Lokhttp3/WebSocket;", "code", "", DiscardedEvent.JsonKeys.REASON, "", "onConnecting", "onFailure", "t", "", Response.TYPE, "Lokhttp3/Response;", "onMessage", "text", "bytes", "Lokio/ByteString;", "onOpen", "release", "app_productionEnvRelease"}, k = 1, mv = {1, 9, 0}, xi = 48)
/* loaded from: classes3.dex */
public final class RabbitWebSocketListener extends RWebSocketListener {
    public static final int $stable = 0;
    public static final RabbitWebSocketListener INSTANCE = new RabbitWebSocketListener();

    @Override // okhttp3.WebSocketListener
    public void onMessage(WebSocket webSocket, ByteString bytes) {
        Intrinsics.checkNotNullParameter(webSocket, "webSocket");
        Intrinsics.checkNotNullParameter(bytes, "bytes");
    }

    private RabbitWebSocketListener() {
    }

    @Override // okhttp3.WebSocketListener
    public void onMessage(WebSocket webSocket, String text) {
        Intrinsics.checkNotNullParameter(webSocket, "webSocket");
        Intrinsics.checkNotNullParameter(text, "text");
        RabbitServiceEventProcessor.INSTANCE.onEvent(text);
    }

    @Override // tech.rabbit.r1launcher.wss.RWebSocketListener
    public void onConnecting() {
        RabbitEngine.INSTANCE.sendLoginState(LoginState.Connecting);
    }

    @Override // okhttp3.WebSocketListener
    public void onOpen(WebSocket webSocket, okhttp3.Response response) {
        Intrinsics.checkNotNullParameter(webSocket, "webSocket");
        Intrinsics.checkNotNullParameter(response, "response");
        RabbitEngine.INSTANCE.sendLoginState(LoginState.Connected);
    }

    @Override // okhttp3.WebSocketListener
    public void onClosed(WebSocket webSocket, int code, String reason) {
        Intrinsics.checkNotNullParameter(webSocket, "webSocket");
        Intrinsics.checkNotNullParameter(reason, "reason");
        RabbitEngine.INSTANCE.sendLoginState(LoginState.Disconnected);
        release();
    }

    @Override // okhttp3.WebSocketListener
    public void onFailure(WebSocket webSocket, Throwable t, okhttp3.Response response) {
        Intrinsics.checkNotNullParameter(webSocket, "webSocket");
        Intrinsics.checkNotNullParameter(t, "t");
        RabbitEngine.INSTANCE.sendLoginState(LoginState.Disconnected);
        release();
    }

    private final void release() {
        RabbitEngine.INSTANCE.clearAllTask();
        RabbitEngine.INSTANCE.clearCover();
        RTCNetworkManager.pausePlay();
    }
}
