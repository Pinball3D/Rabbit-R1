package tech.rabbit.r1launcher.wss.request.login_request.bean;

import com.google.gson.Gson;
import com.google.gson.annotations.SerializedName;

/* loaded from: classes3.dex */
public class LoginBean {

    @SerializedName("global")
    private Global global;

    public Global getGlobal() {
        return this.global;
    }

    public void setGlobal(Global global) {
        this.global = global;
    }

    public String toString() {
        return new Gson().toJson(this);
    }
}
