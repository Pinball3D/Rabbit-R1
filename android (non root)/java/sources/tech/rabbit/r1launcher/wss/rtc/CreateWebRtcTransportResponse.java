package tech.rabbit.r1launcher.wss.rtc;

import com.google.gson.annotations.SerializedName;

/* loaded from: classes3.dex */
public class CreateWebRtcTransportResponse {

    @SerializedName("dtlsParametersJson")
    private String dtlsParametersJson;

    @SerializedName("iceCandidatesJson")
    private String iceCandidatesJson;

    @SerializedName("iceParametersJson")
    private String iceParametersJson;

    @SerializedName("sctpParametersJson")
    private String sctpParametersJson;

    @SerializedName("transportId")
    private String transportId;

    public String getDtlsParametersJson() {
        return this.dtlsParametersJson;
    }

    public String getIceCandidatesJson() {
        return this.iceCandidatesJson;
    }

    public String getIceParametersJson() {
        return this.iceParametersJson;
    }

    public String getSctpParametersJson() {
        return this.sctpParametersJson;
    }

    public String getTransportId() {
        return this.transportId;
    }
}
