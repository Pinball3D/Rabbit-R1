package tech.rabbit.r1launcher.wss;

import android.icu.util.TimeZone;
import android.location.Location;
import android.text.TextUtils;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.TimeUnit;
import okhttp3.OkHttpClient;
import okhttp3.Request;
import okhttp3.Response;
import okhttp3.WebSocket;
import okhttp3.WebSocketListener;
import okio.ByteString;
import tech.rabbit.common.utils.RLog;
import tech.rabbit.r1launcher.geoLocation.GeoLocationManager;
import tech.rabbit.r1launcher.utils.OkHttpUtil;
import tech.rabbit.r1launcher.wss.reconnct.WssStateMonitor;
import tech.rabbit.r1launcher.wss.request.login_request.bean.Global;
import tech.rabbit.r1launcher.wss.request.login_request.bean.Initialize;
import tech.rabbit.r1launcher.wss.request.login_request.bean.LocationBean;
import tech.rabbit.r1launcher.wss.request.login_request.bean.LoginBean;

/* loaded from: classes3.dex */
public class WssClient {
    private static final String TAG = "WssClient";
    private String deviceId;
    private WebSocketListener hostWebSocketListener;
    private OkHttpClient okHttpClient;
    private WebSocket webSocket;
    private List<RWebSocketListener> webSocketListenerList = new ArrayList();
    WssClientState wssClientState = WssClientState.NO_CONNECTED;

    /* loaded from: classes3.dex */
    public enum WssClientState {
        NO_CONNECTED,
        CONNECTING,
        CONNECTED,
        CLOSING,
        CLOSED,
        Failure
    }

    public WebSocket getWebSocket() {
        return this.webSocket;
    }

    public WssClientState getWssClientState() {
        return this.wssClientState;
    }

    public WssClient() {
        init();
    }

    private void init() {
        this.okHttpClient = OkHttpUtil.builder().pingInterval(30L, TimeUnit.SECONDS).connectTimeout(10L, TimeUnit.SECONDS).build();
        this.hostWebSocketListener = new WebSocketListener() { // from class: tech.rabbit.r1launcher.wss.WssClient.1
            @Override // okhttp3.WebSocketListener
            public void onOpen(WebSocket webSocket, Response response) {
                super.onOpen(webSocket, response);
                WssClient.this.wssClientState = WssClientState.CONNECTED;
                Iterator it = WssClient.this.webSocketListenerList.iterator();
                while (it.hasNext()) {
                    ((WebSocketListener) it.next()).onOpen(webSocket, response);
                }
                WssClient.this.sendLoginMsg(webSocket);
            }

            @Override // okhttp3.WebSocketListener
            public void onMessage(WebSocket webSocket, String str) {
                super.onMessage(webSocket, str);
                RLog.d(WssClient.TAG, "onMessage text:" + str);
                Iterator it = WssClient.this.webSocketListenerList.iterator();
                while (it.hasNext()) {
                    ((WebSocketListener) it.next()).onMessage(webSocket, str);
                }
            }

            @Override // okhttp3.WebSocketListener
            public void onMessage(WebSocket webSocket, ByteString byteString) {
                super.onMessage(webSocket, byteString);
                RLog.d(WssClient.TAG, "onMessage ByteString.size:" + byteString.size());
                Iterator it = WssClient.this.webSocketListenerList.iterator();
                while (it.hasNext()) {
                    ((WebSocketListener) it.next()).onMessage(webSocket, byteString);
                }
            }

            @Override // okhttp3.WebSocketListener
            public void onClosing(WebSocket webSocket, int i, String str) {
                super.onClosing(webSocket, i, str);
                RLog.d(WssClient.TAG, "onClosing code=" + i + " , reason=" + str);
                WssClient.this.wssClientState = WssClientState.CLOSING;
                Iterator it = WssClient.this.webSocketListenerList.iterator();
                while (it.hasNext()) {
                    ((WebSocketListener) it.next()).onClosing(webSocket, i, str);
                }
            }

            @Override // okhttp3.WebSocketListener
            public void onClosed(WebSocket webSocket, int i, String str) {
                super.onClosed(webSocket, i, str);
                RLog.d(WssClient.TAG, "onClosed code=" + i + " , reason=" + str);
                WssClient.this.wssClientState = WssClientState.CLOSED;
                Iterator it = WssClient.this.webSocketListenerList.iterator();
                while (it.hasNext()) {
                    ((WebSocketListener) it.next()).onClosed(webSocket, i, str);
                }
            }

            @Override // okhttp3.WebSocketListener
            public void onFailure(WebSocket webSocket, Throwable th, Response response) {
                super.onFailure(webSocket, th, response);
                RLog.e(WssClient.TAG, "onFailure response=" + response, th);
                WssClient.this.wssClientState = WssClientState.Failure;
                Iterator it = WssClient.this.webSocketListenerList.iterator();
                while (it.hasNext()) {
                    ((WebSocketListener) it.next()).onFailure(webSocket, th, response);
                }
                WssStateMonitor.getInstance().startConnect();
            }
        };
    }

    public void connect(String str, String str2, String str3, String str4) {
        RLog.d(TAG, "createWebSocket");
        this.deviceId = str2;
        if (this.wssClientState == WssClientState.CONNECTED) {
            RLog.d(TAG, "createWebSocket , wssClientState is connected");
            return;
        }
        if (this.wssClientState == WssClientState.CONNECTING) {
            RLog.d(TAG, "createWebSocket , wssClientState is creating");
            return;
        }
        if (Constant.hasLoginToken()) {
            disconnect();
            RLog.d(TAG, "reconnecting ...");
            this.wssClientState = WssClientState.CONNECTING;
            Iterator<RWebSocketListener> it = this.webSocketListenerList.iterator();
            while (it.hasNext()) {
                it.next().onConnecting();
            }
            this.webSocket = this.okHttpClient.newWebSocket(new Request.Builder().addHeader("App-Version", str3).addHeader("OS-Version", str4).url(str).build(), this.hostWebSocketListener);
        }
    }

    public void disconnect() {
        RLog.d(TAG, "disconnect");
        try {
            WebSocket webSocket = this.webSocket;
            if (webSocket != null) {
                webSocket.close(1000, "client close");
                this.webSocket = null;
            }
        } catch (Exception e) {
            RLog.e(TAG, "disconnect", e);
        }
    }

    public void uninit() {
        RLog.d(TAG, "uninit");
        if (this.webSocket != null) {
            disconnect();
        }
        this.okHttpClient.dispatcher().executorService().shutdown();
        this.okHttpClient = null;
        this.hostWebSocketListener = null;
        this.webSocketListenerList.clear();
    }

    public void addListener(RWebSocketListener rWebSocketListener) {
        if (this.webSocketListenerList.contains(rWebSocketListener)) {
            return;
        }
        this.webSocketListenerList.add(rWebSocketListener);
    }

    public void removeListener(WebSocketListener webSocketListener) {
        if (this.webSocketListenerList.contains(webSocketListener)) {
            this.webSocketListenerList.remove(webSocketListener);
        }
    }

    private String getTimeZone() {
        return TimeZone.getDefault().getID();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void sendLoginMsg(WebSocket webSocket) {
        String str = "rabbit-account-key+" + Constant.getLoginToken();
        if (str == null || TextUtils.isEmpty(str)) {
            RLog.e(TAG, "empty login token");
            return;
        }
        Initialize initialize = new Initialize();
        initialize.setToken(str);
        initialize.setLanguage("en");
        initialize.setMimeType("wav");
        initialize.setGreet(true);
        initialize.setTimeZone(getTimeZone());
        initialize.setListening(true);
        initialize.setEvaluate(false);
        initialize.setDeviceId(this.deviceId);
        Location lastLocation = GeoLocationManager.INSTANCE.getLastLocation();
        if (lastLocation != null) {
            LocationBean locationBean = new LocationBean();
            locationBean.setLatitude(Double.valueOf(lastLocation.getLatitude()));
            locationBean.setLongitude(Double.valueOf(lastLocation.getLongitude()));
            initialize.setLocationBean(locationBean);
        } else {
            GeoLocationManager.INSTANCE.requestLocationInstantly();
        }
        Global global = new Global();
        global.setInitialize(initialize);
        LoginBean loginBean = new LoginBean();
        loginBean.setGlobal(global);
        RLog.d(TAG, "sendLoginMsg:" + loginBean);
        webSocket.send(loginBean.toString());
    }

    public String getWssState() {
        return this.wssClientState == WssClientState.NO_CONNECTED ? "DisConnect" : this.wssClientState == WssClientState.CONNECTING ? "Connecting" : this.wssClientState == WssClientState.CONNECTED ? "Connected" : (this.wssClientState == WssClientState.CLOSING || this.wssClientState == WssClientState.CLOSED) ? "Close" : this.wssClientState == WssClientState.Failure ? "Failure" : "UnKnown";
    }
}
