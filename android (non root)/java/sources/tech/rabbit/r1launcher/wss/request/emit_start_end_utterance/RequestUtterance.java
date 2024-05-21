package tech.rabbit.r1launcher.wss.request.emit_start_end_utterance;

import com.google.gson.annotations.SerializedName;

/* loaded from: classes3.dex */
public class RequestUtterance {

    @SerializedName("kernel")
    private Kernel kernel;

    public Kernel getKernel() {
        return this.kernel;
    }

    public void setKernel(Kernel kernel) {
        this.kernel = kernel;
    }
}
