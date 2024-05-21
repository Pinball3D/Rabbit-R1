package tech.rabbit.r1launcher.wss.request.conversation.bean.text_query;

import com.google.gson.Gson;
import com.google.gson.annotations.SerializedName;

/* loaded from: classes3.dex */
public class RequestTextQuery {

    @SerializedName("kernel")
    private Kernel kernel;

    public void setKernel(Kernel kernel) {
        this.kernel = kernel;
    }

    public String toString() {
        return new Gson().toJson(this);
    }
}
