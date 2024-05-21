package tech.rabbit.r1launcher.geoLocation;

import android.location.Location;
import android.os.HandlerThread;
import android.os.Looper;
import androidx.work.WorkRequest;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.function.Predicate;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import tech.rabbit.r1launcher.wss.WebSocketManager;

/* compiled from: GeoLocationManager.kt */
@Metadata(d1 = {"\u0000R\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0005\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u001a\u0010!\u001a\u00020\"2\u0006\u0010#\u001a\u00020$2\n\b\u0002\u0010%\u001a\u0004\u0018\u00010&J\b\u0010'\u001a\u00020\"H\u0002J\u0006\u0010(\u001a\u00020\"J\u0006\u0010)\u001a\u00020\"J\b\u0010*\u001a\u00020\"H\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000R\u0017\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u000b0\n¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\rR\u001b\u0010\u000e\u001a\u00020\u000f8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0012\u0010\u0013\u001a\u0004\b\u0010\u0010\u0011R\u000e\u0010\u0014\u001a\u00020\u0015X\u0082\u000e¢\u0006\u0002\n\u0000R\u001e\u0010\u0016\u001a\u0004\u0018\u00010\u00178FX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0018\u0010\u0019\"\u0004\b\u001a\u0010\u001bR\u001a\u0010\u001c\u001a\u00020\u0007X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001d\u0010\u001e\"\u0004\b\u001f\u0010 ¨\u0006+"}, d2 = {"Ltech/rabbit/r1launcher/geoLocation/GeoLocationManager;", "", "()V", "INIT_REQUEST_RETRY_COUNT", "", "INSTANT_REQUEST_RETRY_COUNT", "LOCATION_EXPIRE_TIME", "", "RETRY_INTERVAL", "callbackList", "", "Ltech/rabbit/r1launcher/geoLocation/GeoLocationReporter;", "getCallbackList", "()Ljava/util/List;", "geoHandler", "Ltech/rabbit/r1launcher/geoLocation/RequestLocationThread;", "getGeoHandler", "()Ltech/rabbit/r1launcher/geoLocation/RequestLocationThread;", "geoHandler$delegate", "Lkotlin/Lazy;", "isRunning", "", "lastLocation", "Landroid/location/Location;", "getLastLocation", "()Landroid/location/Location;", "setLastLocation", "(Landroid/location/Location;)V", "lastTimeStamp", "getLastTimeStamp", "()J", "setLastTimeStamp", "(J)V", "dispatchStatus", "", "statusCode", "Ltech/rabbit/r1launcher/geoLocation/GPSStatusCode;", "failReason", "", "removeFinishedCallbacks", "requestLocationDuringDeviceInit", "requestLocationInstantly", "startCheck", "base_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
/* loaded from: classes3.dex */
public final class GeoLocationManager {
    private static final int INIT_REQUEST_RETRY_COUNT = 30;
    private static final int INSTANT_REQUEST_RETRY_COUNT = 2;
    private static final long LOCATION_EXPIRE_TIME = 7200000;
    private static final long RETRY_INTERVAL = 10000;
    private static boolean isRunning;
    private static Location lastLocation;
    private static long lastTimeStamp;
    public static final GeoLocationManager INSTANCE = new GeoLocationManager();
    private static final List<GeoLocationReporter> callbackList = new ArrayList();

    /* renamed from: geoHandler$delegate, reason: from kotlin metadata */
    private static final Lazy geoHandler = LazyKt.lazy(new Function0<RequestLocationThread>() { // from class: tech.rabbit.r1launcher.geoLocation.GeoLocationManager$geoHandler$2
        @Override // kotlin.jvm.functions.Function0
        public final RequestLocationThread invoke() {
            HandlerThread handlerThread = new HandlerThread("geoHandlerThread");
            handlerThread.start();
            Looper looper = handlerThread.getLooper();
            Intrinsics.checkNotNullExpressionValue(looper, "getLooper(...)");
            return new RequestLocationThread(looper);
        }
    });

    public final List<GeoLocationReporter> getCallbackList() {
        return callbackList;
    }

    public final long getLastTimeStamp() {
        return lastTimeStamp;
    }

    public final void setLastLocation(Location location) {
        lastLocation = location;
    }

    public final void setLastTimeStamp(long j) {
        lastTimeStamp = j;
    }

    private GeoLocationManager() {
    }

    public final Location getLastLocation() {
        if (System.currentTimeMillis() - lastTimeStamp < LOCATION_EXPIRE_TIME) {
            return lastLocation;
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final RequestLocationThread getGeoHandler() {
        return (RequestLocationThread) geoHandler.getValue();
    }

    public final void requestLocationInstantly() {
        callbackList.add(new GeoLocationReporter(2));
        startCheck();
    }

    public final void requestLocationDuringDeviceInit() {
        Location lastLocation2 = getLastLocation();
        if (lastLocation2 != null) {
            WebSocketManager.INSTANCE.send("{\"kernel\": {\"gps\": {\"location\": { \"latitude\":" + lastLocation2.getLatitude() + ", \"longitude\":" + lastLocation2.getLongitude() + "}}}}");
        } else {
            callbackList.add(new GeoLocationReporter(30));
            startCheck();
        }
    }

    private final void startCheck() {
        if (isRunning) {
            return;
        }
        isRunning = true;
        getGeoHandler().removeMessages(getGeoHandler().getREQUEST_LOCATION());
        getGeoHandler().post(new Runnable() { // from class: tech.rabbit.r1launcher.geoLocation.GeoLocationManager$startCheck$1
            @Override // java.lang.Runnable
            public void run() {
                RequestLocationThread geoHandler2;
                RequestLocationThread geoHandler3;
                RequestLocationThread geoHandler4;
                RequestLocationThread geoHandler5;
                RequestLocationThread geoHandler6;
                RequestLocationThread geoHandler7;
                RequestLocationThread geoHandler8;
                GeoLocationManager.dispatchStatus$default(GeoLocationManager.INSTANCE, GPSStatusCode.FAIL, null, 2, null);
                if (!GeoLocationManager.INSTANCE.getCallbackList().isEmpty()) {
                    geoHandler2 = GeoLocationManager.INSTANCE.getGeoHandler();
                    geoHandler3 = GeoLocationManager.INSTANCE.getGeoHandler();
                    geoHandler2.sendEmptyMessage(geoHandler3.getREQUEST_LOCATION());
                    geoHandler4 = GeoLocationManager.INSTANCE.getGeoHandler();
                    geoHandler4.postDelayed(this, WorkRequest.MIN_BACKOFF_MILLIS);
                    return;
                }
                GeoLocationManager geoLocationManager = GeoLocationManager.INSTANCE;
                GeoLocationManager.isRunning = false;
                geoHandler5 = GeoLocationManager.INSTANCE.getGeoHandler();
                geoHandler6 = GeoLocationManager.INSTANCE.getGeoHandler();
                geoHandler5.removeMessages(geoHandler6.getREQUEST_LOCATION());
                geoHandler7 = GeoLocationManager.INSTANCE.getGeoHandler();
                geoHandler7.removeCallbacks(this);
                geoHandler8 = GeoLocationManager.INSTANCE.getGeoHandler();
                geoHandler8.release();
            }
        });
    }

    public static /* synthetic */ void dispatchStatus$default(GeoLocationManager geoLocationManager, GPSStatusCode gPSStatusCode, String str, int i, Object obj) {
        if ((i & 2) != 0) {
            str = null;
        }
        geoLocationManager.dispatchStatus(gPSStatusCode, str);
    }

    public final void dispatchStatus(GPSStatusCode statusCode, String failReason) {
        Intrinsics.checkNotNullParameter(statusCode, "statusCode");
        Iterator<T> it = callbackList.iterator();
        while (it.hasNext()) {
            ((GeoLocationReporter) it.next()).onResult(statusCode.getCode(), failReason);
        }
        removeFinishedCallbacks();
    }

    private final void removeFinishedCallbacks() {
        List<GeoLocationReporter> list = callbackList;
        final GeoLocationManager$removeFinishedCallbacks$1 geoLocationManager$removeFinishedCallbacks$1 = new Function1<GeoLocationReporter, Boolean>() { // from class: tech.rabbit.r1launcher.geoLocation.GeoLocationManager$removeFinishedCallbacks$1
            @Override // kotlin.jvm.functions.Function1
            public final Boolean invoke(GeoLocationReporter it) {
                Intrinsics.checkNotNullParameter(it, "it");
                return Boolean.valueOf(it.getIsFinished());
            }
        };
        list.removeIf(new Predicate() { // from class: tech.rabbit.r1launcher.geoLocation.GeoLocationManager$$ExternalSyntheticLambda0
            @Override // java.util.function.Predicate
            public final boolean test(Object obj) {
                boolean removeFinishedCallbacks$lambda$3;
                removeFinishedCallbacks$lambda$3 = GeoLocationManager.removeFinishedCallbacks$lambda$3(Function1.this, obj);
                return removeFinishedCallbacks$lambda$3;
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean removeFinishedCallbacks$lambda$3(Function1 tmp0, Object obj) {
        Intrinsics.checkNotNullParameter(tmp0, "$tmp0");
        return ((Boolean) tmp0.invoke(obj)).booleanValue();
    }
}
