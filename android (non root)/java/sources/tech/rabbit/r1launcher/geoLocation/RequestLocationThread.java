package tech.rabbit.r1launcher.geoLocation;

import android.app.Activity;
import android.location.Location;
import android.location.LocationListener;
import android.location.LocationManager;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import androidx.core.app.ActivityCompat;
import androidx.core.app.NotificationCompat;
import androidx.core.content.ContextCompat;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;
import tech.rabbit.common.utils.RabbitCommon;

/* compiled from: GeoLocationManager.kt */
@Metadata(d1 = {"\u0000F\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0000\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\u0010\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u0011H\u0002J\u0012\u0010\u0012\u001a\u0004\u0018\u00010\u00132\u0006\u0010\f\u001a\u00020\rH\u0002J\u0010\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u0017H\u0016J\u0006\u0010\u0018\u001a\u00020\u0015J\b\u0010\u0019\u001a\u00020\u0015H\u0002R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082D¢\u0006\u0002\n\u0000R\u0014\u0010\u0007\u001a\u00020\u0006X\u0086D¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\tR\u000e\u0010\n\u001a\u00020\u000bX\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\f\u001a\u0004\u0018\u00010\rX\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\u001a"}, d2 = {"Ltech/rabbit/r1launcher/geoLocation/RequestLocationThread;", "Landroid/os/Handler;", "looper", "Landroid/os/Looper;", "(Landroid/os/Looper;)V", "LOCATION_CODE", "", "REQUEST_LOCATION", "getREQUEST_LOCATION", "()I", "locationListener", "Landroid/location/LocationListener;", "locationManager", "Landroid/location/LocationManager;", "checkLocationPermission", "", "context", "Landroid/app/Activity;", "getProvider", "", "handleMessage", "", NotificationCompat.CATEGORY_MESSAGE, "Landroid/os/Message;", "release", "requestLocation", "base_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
/* loaded from: classes3.dex */
public final class RequestLocationThread extends Handler {
    private final int LOCATION_CODE;
    private final int REQUEST_LOCATION;
    private final LocationListener locationListener;
    private LocationManager locationManager;

    public final int getREQUEST_LOCATION() {
        return this.REQUEST_LOCATION;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public RequestLocationThread(Looper looper) {
        super(looper);
        Intrinsics.checkNotNullParameter(looper, "looper");
        this.LOCATION_CODE = 301;
        this.REQUEST_LOCATION = 1;
        this.locationListener = new LocationListener() { // from class: tech.rabbit.r1launcher.geoLocation.RequestLocationThread$locationListener$1
            @Override // android.location.LocationListener
            public void onProviderDisabled(String provider) {
                Intrinsics.checkNotNullParameter(provider, "provider");
            }

            @Override // android.location.LocationListener
            public void onProviderEnabled(String provider) {
                Intrinsics.checkNotNullParameter(provider, "provider");
            }

            @Override // android.location.LocationListener
            public void onStatusChanged(String provider, int status, Bundle extras) {
                Intrinsics.checkNotNullParameter(provider, "provider");
                Intrinsics.checkNotNullParameter(extras, "extras");
            }

            @Override // android.location.LocationListener
            public void onLocationChanged(Location location) {
                LocationManager locationManager;
                Intrinsics.checkNotNullParameter(location, "location");
                GeoLocationManager.INSTANCE.setLastLocation(location);
                GeoLocationManager.INSTANCE.setLastTimeStamp(System.currentTimeMillis());
                GeoLocationManager.dispatchStatus$default(GeoLocationManager.INSTANCE, GPSStatusCode.SUCCESS, null, 2, null);
                locationManager = RequestLocationThread.this.locationManager;
                if (locationManager != null) {
                    locationManager.removeUpdates(this);
                }
            }
        };
    }

    @Override // android.os.Handler
    public void handleMessage(Message msg) {
        Intrinsics.checkNotNullParameter(msg, "msg");
        if (msg.what == this.REQUEST_LOCATION) {
            requestLocation();
        }
    }

    public final void release() {
        LocationManager locationManager = this.locationManager;
        if (locationManager != null) {
            locationManager.removeUpdates(this.locationListener);
        }
        this.locationManager = null;
    }

    private final boolean checkLocationPermission(Activity context) {
        Activity activity = context;
        if (ContextCompat.checkSelfPermission(activity, "android.permission.ACCESS_FINE_LOCATION") == 0 && ActivityCompat.checkSelfPermission(activity, "android.permission.ACCESS_COARSE_LOCATION") == 0) {
            return true;
        }
        ActivityCompat.requestPermissions(context, new String[]{"android.permission.ACCESS_FINE_LOCATION", "android.permission.ACCESS_COARSE_LOCATION"}, this.LOCATION_CODE);
        GeoLocationManager.INSTANCE.dispatchStatus(GPSStatusCode.FAIL, "fail to get permissions");
        return false;
    }

    private final void requestLocation() {
        Activity sWeakActivity = RabbitCommon.INSTANCE.getSWeakActivity();
        Unit unit = null;
        if (sWeakActivity != null) {
            if (this.locationManager == null) {
                Object systemService = sWeakActivity.getSystemService("location");
                Intrinsics.checkNotNull(systemService, "null cannot be cast to non-null type android.location.LocationManager");
                this.locationManager = (LocationManager) systemService;
            }
            LocationManager locationManager = this.locationManager;
            if (locationManager != null) {
                String provider = getProvider(locationManager);
                if (provider == null) {
                    GeoLocationManager.INSTANCE.dispatchStatus(GPSStatusCode.FAIL, "fail to get provider");
                    return;
                } else {
                    if (checkLocationPermission(sWeakActivity)) {
                        locationManager.requestLocationUpdates(provider, 0L, 0.0f, this.locationListener, getLooper());
                    }
                    unit = Unit.INSTANCE;
                }
            }
            if (unit == null) {
                GeoLocationManager.INSTANCE.dispatchStatus(GPSStatusCode.FAIL, "fail to get locationManager");
            }
            unit = Unit.INSTANCE;
        }
        if (unit == null) {
            GeoLocationManager.INSTANCE.dispatchStatus(GPSStatusCode.FAIL, "fail to get activity reference");
        }
    }

    private final String getProvider(LocationManager locationManager) {
        List<String> providers = locationManager.getProviders(true);
        Intrinsics.checkNotNullExpressionValue(providers, "getProviders(...)");
        if (providers.contains("gps")) {
            return "gps";
        }
        if (providers.contains("network")) {
            return "network";
        }
        return null;
    }
}
