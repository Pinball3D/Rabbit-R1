package defpackage;

import android.util.Log;
import io.sentry.SentryEvent;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;

/* compiled from: Device.kt */
@Metadata(d1 = {"\u0000 \n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010 \n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0003\n\u0002\b\u0003\u001a\u0010\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\u0002\u001a\u0018\u0010\u0004\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00060\u00052\u0006\u0010\u0007\u001a\u00020\bH\u0002\u001a\u001a\u0010\t\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00060\u00052\b\u0010\n\u001a\u0004\u0018\u00010\u0006H\u0002¨\u0006\u000b"}, d2 = {"createConnectionError", "LFlutterError;", "channelName", "", "wrapError", "", "", SentryEvent.JsonKeys.EXCEPTION, "", "wrapResult", "result", "app_productionEnvRelease"}, k = 2, mv = {1, 9, 0}, xi = 48)
/* renamed from: DeviceKt, reason: from Kotlin metadata */
/* loaded from: classes.dex */
public final class createConnectionError {
    public static final /* synthetic */ FlutterError access$createConnectionError(String str) {
        return createConnectionError(str);
    }

    private static final List<Object> wrapResult(Object obj) {
        return CollectionsKt.listOf(obj);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final List<Object> wrapError(Throwable th) {
        if (th instanceof FlutterError) {
            FlutterError flutterError = (FlutterError) th;
            return CollectionsKt.listOf(flutterError.getCode(), th.getMessage(), flutterError.getDetails());
        }
        return CollectionsKt.listOf((Object[]) new String[]{th.getClass().getSimpleName(), th.toString(), "Cause: " + th.getCause() + ", Stacktrace: " + Log.getStackTraceString(th)});
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final FlutterError createConnectionError(String str) {
        return new FlutterError("channel-error", "Unable to establish connection on channel: '" + str + "'.", "");
    }
}
