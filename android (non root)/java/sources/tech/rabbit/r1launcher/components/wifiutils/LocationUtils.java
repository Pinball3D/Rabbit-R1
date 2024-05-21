package tech.rabbit.r1launcher.components.wifiutils;

import android.content.Context;
import android.location.LocationManager;
import android.util.Log;
import androidx.arch.core.util.Function;
import tech.rabbit.r1launcher.components.wifiutils.utils.Elvis;

/* loaded from: classes3.dex */
public class LocationUtils {
    public static final int GOOD_TO_GO = 1000;
    public static final int LOCATION_DISABLED = 1112;
    public static final int NO_LOCATION_AVAILABLE = 1111;
    private static final String TAG = "LocationUtils";

    public static int checkLocationAvailability(Context context) {
        if (context.getPackageManager().hasSystemFeature("android.hardware.location")) {
            if (!isLocationEnabled(context)) {
                Log.d(TAG, "Location DISABLED");
                return LOCATION_DISABLED;
            }
            Log.d(TAG, "GPS GOOD TO GO");
            return 1000;
        }
        Log.d(TAG, "NO GPS SENSOR");
        return NO_LOCATION_AVAILABLE;
    }

    private static boolean isLocationEnabled(Context context) {
        LocationManager locationManager = (LocationManager) context.getSystemService("location");
        return Elvis.of(locationManager).next(new Function() { // from class: tech.rabbit.r1launcher.components.wifiutils.LocationUtils$$ExternalSyntheticLambda0
            @Override // androidx.arch.core.util.Function
            public final Object apply(Object obj) {
                Boolean valueOf;
                valueOf = Boolean.valueOf(((LocationManager) obj).isProviderEnabled("gps"));
                return valueOf;
            }
        }).getBoolean() || Elvis.of(locationManager).next(new Function() { // from class: tech.rabbit.r1launcher.components.wifiutils.LocationUtils$$ExternalSyntheticLambda1
            @Override // androidx.arch.core.util.Function
            public final Object apply(Object obj) {
                Boolean valueOf;
                valueOf = Boolean.valueOf(((LocationManager) obj).isProviderEnabled("network"));
                return valueOf;
            }
        }).getBoolean();
    }
}
