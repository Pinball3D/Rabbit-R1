package tech.rabbit.r1launcher.wss.rtc;

import android.content.Context;
import android.media.AudioDeviceInfo;
import android.media.AudioManager;
import android.util.Log;
import com.google.common.net.HttpHeaders;
import com.google.gson.Gson;
import java.util.Arrays;
import java.util.List;
import okhttp3.MediaType;
import okhttp3.OkHttpClient;
import okhttp3.Request;
import okhttp3.RequestBody;
import okhttp3.Response;
import org.json.JSONObject;
import org.mediasoup.droid.Consumer;
import org.mediasoup.droid.Device;
import org.mediasoup.droid.PeerConnection;
import org.mediasoup.droid.RecvTransport;
import org.mediasoup.droid.Transport;
import org.webrtc.AudioTrack;
import org.webrtc.MediaStream;
import org.webrtc.MediaStreamTrack;
import tech.rabbit.common.utils.RLog;
import tech.rabbit.r1launcher.utils.OkHttpUtil;

/* loaded from: classes3.dex */
public class RTCInstance {
    public static final double MAX_VOLUME = 0.3d;
    public static final double MIN_VOLUME = 0.01d;
    private static final String TAG = "RTCInstance";
    private static CreateWebRtcTransportResponse mTransportResponse;
    private String mAppData;
    private String mBaseUrl;
    private PeerConnection.Options mConfig;
    private Consumer mConsumer;
    public Context mContext;
    double mCurrentVolume;
    private String mDtlsParameters;
    private String mIceCandidates;
    private String mIceParameters;
    private Device mMediasoupDevice;
    private RTCStateListener mRTCStateListener;
    public String mRTCStateMsg;
    private RecvTransport mRecvTransport;
    private Object mSctp;
    private MediaStream mStream;
    private MediaStreamTrack mTrack;
    private String mTransportId;

    /* loaded from: classes3.dex */
    public interface RTCStateListener {
        void onChange(String str);
    }

    public void setRTCStateListener(RTCStateListener rTCStateListener) {
        this.mRTCStateListener = rTCStateListener;
    }

    private RTCInstance() {
        this.mCurrentVolume = 0.3d;
        this.mRTCStateMsg = "Disconnect";
    }

    public AudioTrack getAudioTrack() {
        MediaStreamTrack mediaStreamTrack = this.mTrack;
        if (mediaStreamTrack instanceof AudioTrack) {
            return (AudioTrack) mediaStreamTrack;
        }
        return null;
    }

    public Double getCurrentVolume() {
        RLog.d(TAG, "getCurrentVolume: " + this.mCurrentVolume);
        return Double.valueOf(this.mCurrentVolume);
    }

    public void setCurrentVolume(double d) {
        this.mCurrentVolume = d;
        RLog.d(TAG, "setCurrentVolume: " + this.mCurrentVolume);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes3.dex */
    public static class Holder {
        private static final RTCInstance INSTANCE = new RTCInstance();

        private Holder() {
        }
    }

    public static RTCInstance getInstance() {
        return Holder.INSTANCE;
    }

    public Device createDevice() {
        Device device = this.mMediasoupDevice;
        if (device != null) {
            return device;
        }
        Device device2 = new Device();
        this.mMediasoupDevice = device2;
        return device2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateState(String str) {
        if ("completed".equals(str)) {
            str = "Connected";
        }
        this.mRTCStateMsg = str;
        RTCStateListener rTCStateListener = this.mRTCStateListener;
        if (rTCStateListener != null) {
            rTCStateListener.onChange(str);
        }
    }

    public RecvTransport createRecvTransport(String str, String str2, String str3, String str4, Object obj, PeerConnection.Options options, String str5, String str6) {
        try {
            this.mBaseUrl = str;
            this.mIceParameters = str2;
            this.mIceCandidates = str3;
            this.mTransportId = str4;
            this.mSctp = obj;
            this.mConfig = options;
            this.mAppData = str5;
            this.mDtlsParameters = str6;
            RecvTransport createRecvTransport = this.mMediasoupDevice.createRecvTransport(new RecvTransport.Listener() { // from class: tech.rabbit.r1launcher.wss.rtc.RTCInstance.1
                @Override // org.mediasoup.droid.Transport.Listener
                public void onConnect(Transport transport, String str7) {
                    RLog.i(RTCInstance.TAG, "onConnect , dtlsParameters=" + str7);
                    RTCInstance.this.updateState("Connecting");
                    RTCNetworkManager.handleConnectWebRtcTransport(str7, RTCInstance.this.mTransportId, RTCInstance.this.mBaseUrl);
                }

                @Override // org.mediasoup.droid.Transport.Listener
                public void onConnectionStateChange(Transport transport, String str7) {
                    RLog.i(RTCInstance.TAG, "onConnectionStateChange: " + str7);
                    RTCInstance.this.updateState(str7);
                    RTCInstance.this.handleConnectionStateChange(str7);
                }
            }, this.mTransportId, this.mIceParameters, this.mIceCandidates, this.mDtlsParameters, null, this.mConfig, this.mAppData);
            this.mRecvTransport = createRecvTransport;
            return createRecvTransport;
        } catch (Exception e) {
            RLog.e(TAG, "createRecvTransport Exception", e);
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void handleStreamConnect(OkHttpClient okHttpClient, String str, CreateWebRtcTransportResponse createWebRtcTransportResponse, Device device) {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("transportId", createWebRtcTransportResponse.getTransportId());
            jSONObject.put("rtpCapabilitiesJson", device.getRtpCapabilities());
            mTransportResponse = createWebRtcTransportResponse;
        } catch (Exception e) {
            RLog.e(TAG, "handleStreamConnect Exception", e);
        }
        try {
            Response execute = okHttpClient.newCall(new Request.Builder().url(str + "/mediasoupConsume").post(RequestBody.create(MediaType.parse("application/json"), jSONObject.toString())).header(HttpHeaders.CONTENT_TYPE, "application/json").build()).execute();
            if (execute.isSuccessful()) {
                String string = execute.body().string();
                MediasoupConsumeResponse mediasoupConsumeResponse = (MediasoupConsumeResponse) new Gson().fromJson(string, MediasoupConsumeResponse.class);
                Log.w(TAG, "handleStreamConnect: " + mediasoupConsumeResponse + "," + mediasoupConsumeResponse.toString());
                Log.w(TAG, "handleStreamConnect: " + string);
                getInstance().createConsumer(mediasoupConsumeResponse.getConsumerId(), mediasoupConsumeResponse.getProducerId(), "audio", mediasoupConsumeResponse.getRtpParameters());
            } else {
                RLog.i(RTCNetworkManager.TAG, "onMessage: onError");
            }
        } catch (Exception e2) {
            RLog.e(TAG, "handleStreamConnect Exception", e2);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handleConnectionStateChange(String str) {
        if ("disconnected".equals(str)) {
            RLog.i(TAG, "WebRTC disconnected. Attempting to reconnect...");
            reconnect();
        }
    }

    private void reconnect() {
        createRecvTransport(this.mBaseUrl, this.mIceParameters, this.mIceCandidates, this.mTransportId, this.mSctp, this.mConfig, this.mAppData, this.mDtlsParameters);
        handleStreamConnect(OkHttpUtil.client(), this.mBaseUrl, mTransportResponse, getInstance().createDevice());
    }

    public void createConsumer(String str, String str2, String str3, String str4) {
        if (this.mRecvTransport == null) {
            RLog.e(TAG, "createConsumer mRecvTransport is null");
            return;
        }
        try {
            Context context = this.mContext;
            if (context != null) {
                setSpeakerMode(context);
            }
            Consumer consume = this.mRecvTransport.consume(new Consumer.Listener() { // from class: tech.rabbit.r1launcher.wss.rtc.RTCInstance$$ExternalSyntheticLambda0
                @Override // org.mediasoup.droid.Consumer.Listener
                public final void onTransportClose(Consumer consumer) {
                    RLog.i(RTCInstance.TAG, "onTransportClose: ");
                }
            }, str, str2, str3, str4);
            this.mConsumer = consume;
            if (consume != null) {
                this.mTrack = consume.getTrack();
            }
        } catch (Exception e) {
            RLog.e(TAG, "createConsumer Exception", e);
        }
    }

    public void closeStream() {
        Consumer consumer;
        RLog.d(TAG, "closeStream");
        if (this.mStream == null || (consumer = this.mConsumer) == null || !(consumer.getTrack() instanceof AudioTrack)) {
            return;
        }
        this.mStream.removeTrack((AudioTrack) this.mConsumer.getTrack());
    }

    public void closeRTC() {
        RLog.d(TAG, "closeRTC");
        RecvTransport recvTransport = this.mRecvTransport;
        if (recvTransport != null) {
            recvTransport.close();
        }
    }

    public void release() {
        RLog.d(TAG, "release");
        closeStream();
        closeRTC();
        this.mMediasoupDevice = null;
    }

    public static void setSpeakerMode(Context context) {
        if (isBluetoothDeviceOn(context)) {
            setBluetoothScoOn(context);
        } else {
            setSpeakerphoneOn(context);
        }
    }

    public static boolean isBluetoothDeviceOn(Context context) {
        List<AudioDeviceInfo> asList = Arrays.asList(((AudioManager) context.getSystemService("audio")).getDevices(2));
        if (asList == null || asList.isEmpty()) {
            return false;
        }
        for (AudioDeviceInfo audioDeviceInfo : asList) {
            RLog.d(TAG, "bluetooth device type: " + audioDeviceInfo.getType() + " " + ((Object) audioDeviceInfo.getProductName()));
            if (audioDeviceInfo.getType() == 8 || audioDeviceInfo.getType() == 7) {
                RLog.d(TAG, "bluetooth connected, audioManager mode: " + audioDeviceInfo.getType());
                return true;
            }
        }
        return false;
    }

    public static void setSpeakerphoneOn(Context context) {
        RLog.i(TAG, "setSpeakerphoneOn: ");
        AudioManager audioManager = (AudioManager) context.getSystemService("audio");
        audioManager.setMode(0);
        audioManager.setSpeakerphoneOn(true);
    }

    public static void setBluetoothScoOn(Context context) {
        RLog.i(TAG, "setBluetoothScoOn: ");
        AudioManager audioManager = (AudioManager) context.getSystemService("audio");
        audioManager.setMode(0);
        audioManager.setBluetoothScoOn(true);
        audioManager.setSpeakerphoneOn(false);
    }
}
