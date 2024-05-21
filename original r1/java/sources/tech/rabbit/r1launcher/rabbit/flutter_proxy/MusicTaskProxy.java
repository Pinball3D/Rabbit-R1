package tech.rabbit.r1launcher.rabbit.flutter_proxy;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONObject;
import java.util.Set;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import tech.rabbit.r1launcher.constant.Service;
import tech.rabbit.r1launcher.rabbit.MusicOutTimeOp;
import tech.rabbit.r1launcher.rabbit.flutter_proxy.FlutterTaskProxy;
import tech.rabbit.r1launcher.wss.RabbitEngine;
import tech.rabbit.r1launcher.wss.WebSocketManager;
import tech.rabbit.r1launcher.wss.rtc.RTCNetworkManager;

/* compiled from: MusicTaskProxy.kt */
@Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0007\n\u0002\u0010\u0002\n\u0002\b\u0002\bÇ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0010\u0010\u000b\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\u0004H\u0016R\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR\u0014\u0010\t\u001a\u00020\u0004X\u0096D¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u0006¨\u0006\u000e"}, d2 = {"Ltech/rabbit/r1launcher/rabbit/flutter_proxy/MusicTaskProxy;", "Ltech/rabbit/r1launcher/rabbit/flutter_proxy/FlutterTaskProxy;", "()V", "lastSuicideId", "", "getLastSuicideId", "()Ljava/lang/String;", "setLastSuicideId", "(Ljava/lang/String;)V", "task", "getTask", "onFlutterEvent", "", "payload", "app_productionEnvRelease"}, k = 1, mv = {1, 9, 0}, xi = 48)
/* loaded from: classes3.dex */
public final class MusicTaskProxy implements FlutterTaskProxy {
    public static final MusicTaskProxy INSTANCE = new MusicTaskProxy();
    private static final String task = "music_play";
    private static String lastSuicideId = "";
    public static final int $stable = 8;

    public final String getLastSuicideId() {
        return lastSuicideId;
    }

    @Override // tech.rabbit.r1launcher.rabbit.flutter_proxy.FlutterTaskProxy
    public String getTask() {
        return task;
    }

    public final void setLastSuicideId(String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        lastSuicideId = str;
    }

    private MusicTaskProxy() {
    }

    @Override // tech.rabbit.r1launcher.rabbit.flutter_proxy.FlutterTaskProxy
    public String getInfo(String str) {
        return FlutterTaskProxy.DefaultImpls.getInfo(this, str);
    }

    @Override // tech.rabbit.r1launcher.rabbit.flutter_proxy.FlutterTaskProxy
    public void onFlutterEvent(String payload) {
        Intrinsics.checkNotNullParameter(payload, "payload");
        JSONObject parseObject = JSON.parseObject(payload);
        Set<String> keySet = parseObject.keySet();
        Intrinsics.checkNotNullExpressionValue(keySet, "<get-keys>(...)");
        String str = (String) CollectionsKt.first(keySet);
        if (str != null) {
            switch (str.hashCode()) {
                case -1861625298:
                    if (str.equals("suicide")) {
                        String string = JSON.parseObject(payload).getString("id");
                        Intrinsics.checkNotNullExpressionValue(string, "getString(...)");
                        lastSuicideId = string;
                        return;
                    }
                    return;
                case -934426579:
                    if (str.equals("resume")) {
                        RTCNetworkManager.resumePlay();
                        MusicOutTimeOp.INSTANCE.startTiming();
                        return;
                    }
                    return;
                case -838846263:
                    if (str.equals("update")) {
                        WebSocketManager.INSTANCE.send("{\"" + Service.SPOTIFY.getTag() + "\": {\"information\": {\"getPlayingStatus\": {}}}}");
                        return;
                    }
                    return;
                case 3377907:
                    if (str.equals("next")) {
                        WebSocketManager.INSTANCE.send("{\"" + Service.SPOTIFY.getTag() + "\": {\"playerControl\": {\"next\": {}}}}");
                        return;
                    }
                    return;
                case 3449395:
                    if (str.equals("prev")) {
                        WebSocketManager.INSTANCE.send("{\"" + Service.SPOTIFY.getTag() + "\": {\"playerControl\": {\"previous\": {}}}}");
                        RabbitEngine.INSTANCE.setPlayedSeconds(0L);
                        return;
                    }
                    return;
                case 106440182:
                    if (str.equals("pause")) {
                        RTCNetworkManager.pausePlay();
                        MusicOutTimeOp.INSTANCE.cancleTiming();
                        return;
                    }
                    return;
                case 1926801536:
                    if (str.equals("play_track")) {
                        WebSocketManager.INSTANCE.send("{\"" + Service.SPOTIFY.getTag() + "\": {\"playerControl\": {\"playTrackById\": {\"id\": \"" + parseObject.getJSONObject("play_track").getString("id") + "\"}}}}");
                        return;
                    }
                    return;
                default:
                    return;
            }
        }
    }
}
