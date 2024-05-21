package tech.rabbit.r1launcher.wss.request.login_request.bean;

import com.google.gson.annotations.SerializedName;
import io.sentry.protocol.Device;

/* loaded from: classes3.dex */
public class Initialize {

    @SerializedName("deviceId")
    private String deviceId;

    @SerializedName("evaluate")
    private boolean evaluate;

    @SerializedName("greet")
    private boolean greet;

    @SerializedName(Device.JsonKeys.LANGUAGE)
    private String language;

    @SerializedName("listening")
    private boolean listening;

    @SerializedName("location")
    private LocationBean locationBean;

    @SerializedName("mimeType")
    private String mimeType;

    @SerializedName("timeZone")
    private String timeZone;

    @SerializedName("token")
    private String token;

    public String getDeviceId() {
        return this.deviceId;
    }

    public String getLanguage() {
        return this.language;
    }

    public LocationBean getLocationBean() {
        return this.locationBean;
    }

    public String getMimeType() {
        return this.mimeType;
    }

    public String getTimeZone() {
        return this.timeZone;
    }

    public String getToken() {
        return this.token;
    }

    public boolean isEvaluate() {
        return this.evaluate;
    }

    public boolean isGreet() {
        return this.greet;
    }

    public boolean isListening() {
        return this.listening;
    }

    public void setDeviceId(String str) {
        this.deviceId = str;
    }

    public void setEvaluate(boolean z) {
        this.evaluate = z;
    }

    public void setGreet(boolean z) {
        this.greet = z;
    }

    public void setLanguage(String str) {
        this.language = str;
    }

    public void setListening(boolean z) {
        this.listening = z;
    }

    public void setLocationBean(LocationBean locationBean) {
        this.locationBean = locationBean;
    }

    public void setMimeType(String str) {
        this.mimeType = str;
    }

    public void setTimeZone(String str) {
        this.timeZone = str;
    }

    public void setToken(String str) {
        this.token = str;
    }
}
