package tech.rabbit.r1launcher.wss.rtc;

import com.google.gson.annotations.SerializedName;

/* loaded from: classes3.dex */
public class MediasoupConsumeResponse {
    private String consumerId;
    private String producerId;

    @SerializedName("rtpParametersJson")
    private String rtpParametersJson;

    public String getConsumerId() {
        return this.consumerId;
    }

    public String getProducerId() {
        return this.producerId;
    }

    public String getRtpParameters() {
        return this.rtpParametersJson;
    }
}
