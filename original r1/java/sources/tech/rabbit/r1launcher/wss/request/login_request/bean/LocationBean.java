package tech.rabbit.r1launcher.wss.request.login_request.bean;

import com.google.gson.annotations.SerializedName;

/* loaded from: classes3.dex */
public class LocationBean {

    @SerializedName("latitude")
    private Double latitude;

    @SerializedName("longitude")
    private Double longitude;

    public Double getLatitude() {
        return this.latitude;
    }

    public Double getLongitude() {
        return this.longitude;
    }

    public void setLatitude(Double d) {
        this.latitude = d;
    }

    public void setLongitude(Double d) {
        this.longitude = d;
    }
}
