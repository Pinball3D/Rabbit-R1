package tech.rabbit.r1launcher.rabbit.flutter_proxy;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: FlutterTaskProxy.kt */
@Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0002\b\u0002\bf\u0018\u00002\u00020\u0001J\u0010\u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00020\u0003H\u0016J\u0010\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u0003H&R\u0012\u0010\u0002\u001a\u00020\u0003X¦\u0004¢\u0006\u0006\u001a\u0004\b\u0004\u0010\u0005¨\u0006\u000b"}, d2 = {"Ltech/rabbit/r1launcher/rabbit/flutter_proxy/FlutterTaskProxy;", "", "task", "", "getTask", "()Ljava/lang/String;", "getInfo", "name", "onFlutterEvent", "", "payload", "app_productionEnvRelease"}, k = 1, mv = {1, 9, 0}, xi = 48)
/* loaded from: classes3.dex */
public interface FlutterTaskProxy {

    /* compiled from: FlutterTaskProxy.kt */
    @Metadata(k = 3, mv = {1, 9, 0}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class DefaultImpls {
        public static String getInfo(FlutterTaskProxy flutterTaskProxy, String name) {
            Intrinsics.checkNotNullParameter(name, "name");
            return "";
        }
    }

    String getInfo(String name);

    String getTask();

    void onFlutterEvent(String payload);
}
