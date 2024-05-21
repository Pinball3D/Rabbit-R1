package tech.rabbit.r1launcher.utils;

import java.io.IOException;
import okhttp3.Interceptor;
import okhttp3.OkHttpClient;
import okhttp3.Response;

/* loaded from: classes3.dex */
public class OkHttpUtil {
    private static String deviceId;

    public static void setDeviceId(String str) {
        deviceId = str;
    }

    public static OkHttpClient.Builder builder() {
        OkHttpClient.Builder builder = new OkHttpClient.Builder();
        builder.addInterceptor(new Interceptor() { // from class: tech.rabbit.r1launcher.utils.OkHttpUtil.1
            @Override // okhttp3.Interceptor
            public Response intercept(Interceptor.Chain chain) throws IOException {
                return chain.proceed(chain.request().newBuilder().header("deviceId", OkHttpUtil.deviceId).build());
            }
        });
        return builder;
    }

    public static OkHttpClient client() {
        return new OkHttpClient(builder());
    }
}
