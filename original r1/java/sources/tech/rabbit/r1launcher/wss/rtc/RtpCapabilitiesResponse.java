package tech.rabbit.r1launcher.wss.rtc;

import com.google.gson.annotations.SerializedName;

/* loaded from: classes3.dex */
public class RtpCapabilitiesResponse {

    @SerializedName("rtpCapabilitiesJson")
    private String rtpCapabilitiesJson;

    public String getRtpCapabilitiesJson() {
        return this.rtpCapabilitiesJson;
    }

    public void setRtpCapabilitiesJson(String str) {
        this.rtpCapabilitiesJson = str;
    }
}
