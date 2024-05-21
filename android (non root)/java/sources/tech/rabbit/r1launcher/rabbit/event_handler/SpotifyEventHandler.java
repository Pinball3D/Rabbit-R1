package tech.rabbit.r1launcher.rabbit.event_handler;

import android.util.Log;
import androidx.core.app.NotificationCompat;
import com.alibaba.fastjson.JSONObject;
import java.util.Set;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;
import tech.rabbit.r1launcher.constant.Service;
import tech.rabbit.r1launcher.rabbit.MusicOutTimeOp;
import tech.rabbit.r1launcher.rabbit.event_handler.WebSocketEventHandler;
import tech.rabbit.r1launcher.wss.RabbitEngine;
import tech.rabbit.r1launcher.wss.rtc.PlayerStatus;
import tech.rabbit.r1launcher.wss.rtc.RTCNetworkManager;

/* compiled from: SpotifyEventHandler.kt */
@Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0007\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J \u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\u00042\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\u0004H\u0016R\u0014\u0010\u0003\u001a\u00020\u0004X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006¨\u0006\r"}, d2 = {"Ltech/rabbit/r1launcher/rabbit/event_handler/SpotifyEventHandler;", "Ltech/rabbit/r1launcher/rabbit/event_handler/WebSocketEventHandler;", "()V", "interestedIn", "", "getInterestedIn", "()Ljava/lang/String;", "handleEvent", "", NotificationCompat.CATEGORY_EVENT, "payload", "Lcom/alibaba/fastjson/JSONObject;", "rawPayload", "app_productionEnvRelease"}, k = 1, mv = {1, 9, 0}, xi = 48)
/* loaded from: classes3.dex */
public final class SpotifyEventHandler implements WebSocketEventHandler {
    public static final int $stable = 0;
    private final String interestedIn = Service.SPOTIFY.getTag();

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
        boolean booleanValue;
        Intrinsics.checkNotNullParameter(event, "event");
        Intrinsics.checkNotNullParameter(payload, "payload");
        Intrinsics.checkNotNullParameter(rawPayload, "rawPayload");
        Set<String> keySet = payload.keySet();
        Intrinsics.checkNotNullExpressionValue(keySet, "<get-keys>(...)");
        for (String str : keySet) {
            JSONObject jSONObject = payload.getJSONObject(str);
            if (Intrinsics.areEqual(str, "playerReady")) {
                RTCNetworkManager.handlePlayerReady(jSONObject.getString("serviceUrl"), jSONObject.getString("iceServersJson"));
            } else if (Intrinsics.areEqual(str, "playerStatus")) {
                try {
                    PlayerStatus playerStatus = new PlayerStatus();
                    Boolean bool = jSONObject.getBoolean("playing");
                    boolean z = false;
                    if (bool == null) {
                        booleanValue = false;
                    } else {
                        Intrinsics.checkNotNull(bool);
                        booleanValue = bool.booleanValue();
                    }
                    playerStatus.setPlaying(booleanValue);
                    String string = jSONObject.getString("playedSeconds");
                    String str2 = "";
                    if (string == null) {
                        string = "";
                    }
                    playerStatus.setMatchingStartPlayingTime(string);
                    playerStatus.setDurationSeconds(jSONObject.getIntValue("durationSeconds"));
                    Boolean bool2 = jSONObject.getBoolean("shuffle");
                    if (bool2 != null) {
                        Intrinsics.checkNotNull(bool2);
                        z = bool2.booleanValue();
                    }
                    playerStatus.setShuffle(z);
                    String string2 = jSONObject.getString("repeatMode");
                    if (string2 == null) {
                        string2 = "";
                    }
                    playerStatus.setRepeatMode(string2);
                    String string3 = jSONObject.getString("trackName");
                    if (string3 == null) {
                        string3 = "";
                    }
                    playerStatus.setTrackName(string3);
                    String string4 = jSONObject.getString("trackSpotifyUri");
                    if (string4 == null) {
                        string4 = "";
                    }
                    playerStatus.setTrackSpotifyUri(string4);
                    String string5 = jSONObject.getString("albumImageUrl");
                    if (string5 == null) {
                        string5 = "";
                    }
                    playerStatus.setAlbumImageUrl(string5);
                    String string6 = jSONObject.getString("artistName");
                    if (string6 != null) {
                        str2 = string6;
                    }
                    playerStatus.setArtistName(str2);
                    RTCNetworkManager.setPlayStatus(playerStatus);
                    RabbitEngine.INSTANCE.sendMusicPlayerMessage("playerStatus", rawPayload);
                    if (RTCNetworkManager.checkChangeToPlay()) {
                        MusicOutTimeOp.INSTANCE.startTiming();
                    }
                    Unit unit = Unit.INSTANCE;
                } catch (Throwable th) {
                    Log.e("KotUtil", "catched Exception : " + th.getMessage());
                }
            }
        }
        return true;
    }
}
