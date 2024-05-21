package tech.rabbit.r1launcher.wss.request.conversation.bean.toggle_listening_status;

import com.google.gson.Gson;
import com.google.gson.annotations.SerializedName;

/* loaded from: classes3.dex */
public class RequestChangeListenStatus {

    @SerializedName("kernel")
    private Kernel kernel;

    public void setKernel(Kernel kernel) {
        this.kernel = kernel;
    }

    public String toString() {
        return new Gson().toJson(this);
    }
}
