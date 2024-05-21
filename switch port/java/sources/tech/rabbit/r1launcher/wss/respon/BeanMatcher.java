package tech.rabbit.r1launcher.wss.respon;

import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes3.dex */
public class BeanMatcher {

    /* loaded from: classes3.dex */
    public enum Type {
        PLAYER_READY,
        INDICATING_SIGN_IN_SUCCESS,
        PLAYER_ALREADY_IN_CONNECT_STATE,
        SPOTIFY_PLAYER_STATUS,
        UNKNOWN
    }

    public static Type match(String str) {
        try {
            JSONObject jSONObject = new JSONObject(str);
            if (jSONObject.has("global")) {
                JSONObject jSONObject2 = jSONObject.getJSONObject("global");
                if (jSONObject2.has("initialize")) {
                    JSONObject jSONObject3 = jSONObject2.getJSONObject("initialize");
                    if (jSONObject3.has("currentTime") && jSONObject3.has("clientIp")) {
                        return Type.INDICATING_SIGN_IN_SUCCESS;
                    }
                }
            }
            if (jSONObject.has("spotify")) {
                JSONObject jSONObject4 = jSONObject.getJSONObject("spotify");
                if (jSONObject4.has("playerReady")) {
                    return Type.PLAYER_READY;
                }
                if (jSONObject4.has("global")) {
                    JSONObject jSONObject5 = jSONObject4.getJSONObject("global");
                    if (jSONObject5.has("currentTime") && jSONObject5.has("clientIp")) {
                        return Type.INDICATING_SIGN_IN_SUCCESS;
                    }
                    if (jSONObject5.has("debugLog")) {
                        JSONObject jSONObject6 = jSONObject5.getJSONObject("debugLog");
                        if (jSONObject6.has("message") && jSONObject6.getString("message").contains("Player is already in connect state")) {
                            return Type.PLAYER_ALREADY_IN_CONNECT_STATE;
                        }
                    }
                } else if (jSONObject4.has("playerStatus")) {
                    return Type.SPOTIFY_PLAYER_STATUS;
                }
            }
        } catch (JSONException e) {
            e.printStackTrace();
        }
        return Type.UNKNOWN;
    }
}
