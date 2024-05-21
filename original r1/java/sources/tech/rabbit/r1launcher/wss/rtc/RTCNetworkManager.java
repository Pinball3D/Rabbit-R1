package tech.rabbit.r1launcher.wss.rtc;

import android.text.TextUtils;
import android.util.Log;
import com.google.common.net.HttpHeaders;
import com.google.gson.Gson;
import java.io.IOException;
import java.util.ArrayList;
import okhttp3.MediaType;
import okhttp3.OkHttpClient;
import okhttp3.Request;
import okhttp3.RequestBody;
import okhttp3.Response;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import org.mediasoup.droid.Device;
import org.mediasoup.droid.MediasoupException;
import org.mediasoup.droid.PeerConnection;
import org.webrtc.PeerConnection;
import tech.rabbit.common.utils.RLog;
import tech.rabbit.r1launcher.utils.OkHttpUtil;
import tech.rabbit.r1launcher.wss.WebSocketManager;

/* loaded from: classes3.dex */
public class RTCNetworkManager {
    public static final String TAG = "WssClient";
    private static boolean lastPlayState;
    private static Gson mGson;
    private static PlayerStatus mPlayerStatus;

    public static PlayerStatus getPlayerStatus() {
        return mPlayerStatus;
    }

    public static void setPlayStatus(PlayerStatus playerStatus) {
        mPlayerStatus = playerStatus;
    }

    public static void handlePlayerReady(String str, String str2) {
        OkHttpClient client = OkHttpUtil.client();
        Request build = new Request.Builder().url(str + "/mediasoupGetRouterRtpCapabilities").post(RequestBody.create(MediaType.parse("application/json"), "{}")).header(HttpHeaders.CONTENT_TYPE, "application/json").build();
        String str3 = TAG;
        RLog.i(str3, "handlePlayerReady , request:" + build.toString());
        try {
            Response execute = client.newCall(build).execute();
            if (execute.isSuccessful()) {
                RLog.w(str3, "handlePlayerReady: " + execute.body() + "," + execute);
                handleCreateRTCDevice(str2, client, str, execute);
            } else {
                RLog.i(str3, "handlePlayerReady failed with code: " + execute.code());
            }
        } catch (Exception e) {
            RLog.e(TAG, "handlePlayerReady Exception", e);
        }
    }

    private static void handleCreateRTCDevice(String str, OkHttpClient okHttpClient, String str2, Response response) throws IOException {
        String rtpCapabilitiesJson = ((RtpCapabilitiesResponse) new Gson().fromJson(response.body().string(), RtpCapabilitiesResponse.class)).getRtpCapabilitiesJson();
        Device createDevice = RTCInstance.getInstance().createDevice();
        try {
            RLog.d(TAG, "device.load , rtpCapabilitiesJson=" + rtpCapabilitiesJson);
            createDevice.load(rtpCapabilitiesJson, null);
        } catch (Exception e) {
            RLog.e(TAG, "device.load Exception", e);
        }
        try {
            Response execute = okHttpClient.newCall(new Request.Builder().url(str2 + "/mediasoupCreateWebRtcTransport").post(RequestBody.create(MediaType.parse("application/json"), "{}")).header(HttpHeaders.CONTENT_TYPE, "application/json").build()).execute();
            if (execute.isSuccessful()) {
                Log.w(TAG, "handleCreateRTCDevice: " + execute.body() + "," + execute);
                handleCreateRevcTransport(str, okHttpClient, str2, createDevice, execute);
            } else {
                RLog.i(TAG, "Request for createWebRtcTransport failed with code: " + execute.code());
            }
        } catch (Exception e2) {
            RLog.e(TAG, "webRtcTransportResponse Exception", e2);
        }
    }

    private static void handleCreateRevcTransport(String str, OkHttpClient okHttpClient, String str2, Device device, Response response) throws IOException, MediasoupException, JSONException {
        CreateWebRtcTransportResponse createWebRtcTransportResponse = (CreateWebRtcTransportResponse) new Gson().fromJson(response.body().string(), CreateWebRtcTransportResponse.class);
        String transportId = createWebRtcTransportResponse.getTransportId();
        String iceParametersJson = createWebRtcTransportResponse.getIceParametersJson();
        String iceCandidatesJson = createWebRtcTransportResponse.getIceCandidatesJson();
        String dtlsParametersJson = createWebRtcTransportResponse.getDtlsParametersJson();
        TextUtils.isEmpty(createWebRtcTransportResponse.getSctpParametersJson());
        ArrayList arrayList = new ArrayList();
        try {
            JSONArray jSONArray = new JSONArray(str);
            for (int i = 0; i < jSONArray.length(); i++) {
                JSONObject jSONObject = jSONArray.getJSONObject(i);
                String string = jSONObject.getString("username");
                String string2 = jSONObject.getString("credential");
                JSONArray jSONArray2 = jSONObject.getJSONArray("urls");
                ArrayList arrayList2 = new ArrayList();
                for (int i2 = 0; i2 < jSONArray2.length(); i2++) {
                    arrayList2.add(jSONArray2.getString(i2));
                }
                arrayList.add(new PeerConnection.IceServer((String) arrayList2.get(0), string, string2));
            }
        } catch (Exception e) {
            RLog.e(TAG, "iceServer Exception", e);
        }
        JSONObject jSONObject2 = new JSONObject(dtlsParametersJson);
        if (!jSONObject2.has("role")) {
            jSONObject2.put("role", "auto");
        }
        PeerConnection.Options options = new PeerConnection.Options();
        options.mRTCConfig = new PeerConnection.RTCConfiguration(arrayList);
        options.mRTCConfig.iceTransportsType = PeerConnection.IceTransportsType.RELAY;
        RTCInstance.getInstance().createRecvTransport(str2, iceParametersJson, iceCandidatesJson, transportId, null, options, "{}", jSONObject2.toString());
        RTCInstance.handleStreamConnect(okHttpClient, str2, createWebRtcTransportResponse, device);
    }

    public static void handleConnectWebRtcTransport(String str, String str2, String str3) {
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("transportId", str2);
            jSONObject.put("dtlsParametersJson", str);
            Response execute = OkHttpUtil.client().newCall(new Request.Builder().url(str3 + "/mediasoupConnectWebRtcTransport").post(RequestBody.create(MediaType.parse("application/json"), jSONObject.toString())).header(HttpHeaders.CONTENT_TYPE, "application/json").build()).execute();
            if (execute.isSuccessful()) {
                RLog.i(TAG, "onMessage: responseObject " + ((ConnectWebRtcTransportResponse) new Gson().fromJson(execute.body().string(), ConnectWebRtcTransportResponse.class)).toString());
            } else {
                RLog.i(TAG, "onMessage: onError");
            }
        } catch (Exception e) {
            RLog.e(TAG, "handleConnectWebRtcTransport Exception", e);
        }
    }

    public static boolean checkChangeToPlay() {
        if (!getPlayerStatus().isPlaying() || lastPlayState == getPlayerStatus().isPlaying()) {
            return false;
        }
        lastPlayState = getPlayerStatus().isPlaying();
        return true;
    }

    public static boolean isPlaying() {
        PlayerStatus playerStatus = mPlayerStatus;
        return playerStatus != null && playerStatus.isPlaying();
    }

    public static void resumePlay() {
        if (isPlaying()) {
            return;
        }
        WebSocketManager.INSTANCE.send("{\"spotify\": {\"playerControl\": {\"switchResume\": {}}}}");
    }

    public static void pausePlay() {
        if (isPlaying()) {
            WebSocketManager.INSTANCE.send("{\"spotify\": {\"playerControl\": {\"switchResume\": {}}}}");
        }
    }
}
