package androidx.core.location;

import android.location.GnssMeasurementsEvent;
import android.location.GnssStatus;
import android.location.GpsStatus;
import android.location.Location;
import android.location.LocationListener;
import android.location.LocationManager;
import android.location.LocationRequest;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import androidx.collection.SimpleArrayMap;
import androidx.core.location.GnssStatusCompat;
import androidx.core.location.LocationManagerCompat;
import androidx.core.os.CancellationSignal;
import androidx.core.os.ExecutorCompat;
import androidx.core.util.Consumer;
import androidx.core.util.ObjectsCompat;
import androidx.core.util.Preconditions;
import java.lang.ref.WeakReference;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;
import java.util.WeakHashMap;
import java.util.concurrent.Executor;
import java.util.concurrent.RejectedExecutionException;

/* loaded from: classes.dex */
public final class LocationManagerCompat {
    private static final long GET_CURRENT_LOCATION_TIMEOUT_MS = 30000;
    private static final long MAX_CURRENT_LOCATION_AGE_MS = 10000;
    private static final long PRE_N_LOOPER_TIMEOUT_S = 5;
    private static Field sContextField;
    private static Method sGnssRequestBuilderBuildMethod;
    private static Class<?> sGnssRequestBuilderClass;
    static final WeakHashMap<LocationListenerKey, WeakReference<LocationListenerTransport>> sLocationListeners = new WeakHashMap<>();
    private static Method sRegisterGnssMeasurementsCallbackMethod;

    public static boolean isLocationEnabled(LocationManager locationManager) {
        return Api28Impl.isLocationEnabled(locationManager);
    }

    public static boolean hasProvider(LocationManager locationManager, String str) {
        return Api31Impl.hasProvider(locationManager, str);
    }

    public static void getCurrentLocation(LocationManager locationManager, String str, CancellationSignal cancellationSignal, Executor executor, Consumer<Location> consumer) {
        Api30Impl.getCurrentLocation(locationManager, str, cancellationSignal, executor, consumer);
    }

    public static void requestLocationUpdates(LocationManager locationManager, String str, LocationRequestCompat locationRequestCompat, Executor executor, LocationListenerCompat locationListenerCompat) {
        Api31Impl.requestLocationUpdates(locationManager, str, locationRequestCompat.toLocationRequest(), executor, locationListenerCompat);
    }

    static void registerLocationListenerTransport(LocationManager locationManager, LocationListenerTransport locationListenerTransport) {
        WeakReference<LocationListenerTransport> put = sLocationListeners.put(locationListenerTransport.getKey(), new WeakReference<>(locationListenerTransport));
        LocationListenerTransport locationListenerTransport2 = put != null ? put.get() : null;
        if (locationListenerTransport2 != null) {
            locationListenerTransport2.unregister();
            locationManager.removeUpdates(locationListenerTransport2);
        }
    }

    public static void requestLocationUpdates(LocationManager locationManager, String str, LocationRequestCompat locationRequestCompat, LocationListenerCompat locationListenerCompat, Looper looper) {
        Api31Impl.requestLocationUpdates(locationManager, str, locationRequestCompat.toLocationRequest(), ExecutorCompat.create(new Handler(looper)), locationListenerCompat);
    }

    public static void removeUpdates(LocationManager locationManager, LocationListenerCompat locationListenerCompat) {
        WeakHashMap<LocationListenerKey, WeakReference<LocationListenerTransport>> weakHashMap = sLocationListeners;
        synchronized (weakHashMap) {
            Iterator<WeakReference<LocationListenerTransport>> it = weakHashMap.values().iterator();
            ArrayList arrayList = null;
            while (it.hasNext()) {
                LocationListenerTransport locationListenerTransport = it.next().get();
                if (locationListenerTransport != null) {
                    LocationListenerKey key = locationListenerTransport.getKey();
                    if (key.mListener == locationListenerCompat) {
                        if (arrayList == null) {
                            arrayList = new ArrayList();
                        }
                        arrayList.add(key);
                        locationListenerTransport.unregister();
                        locationManager.removeUpdates(locationListenerTransport);
                    }
                }
            }
            if (arrayList != null) {
                Iterator it2 = arrayList.iterator();
                while (it2.hasNext()) {
                    sLocationListeners.remove((LocationListenerKey) it2.next());
                }
            }
        }
        locationManager.removeUpdates(locationListenerCompat);
    }

    public static String getGnssHardwareModelName(LocationManager locationManager) {
        return Api28Impl.getGnssHardwareModelName(locationManager);
    }

    public static int getGnssYearOfHardware(LocationManager locationManager) {
        return Api28Impl.getGnssYearOfHardware(locationManager);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static class GnssListenersHolder {
        static final SimpleArrayMap<Object, Object> sGnssStatusListeners = new SimpleArrayMap<>();
        static final SimpleArrayMap<GnssMeasurementsEvent.Callback, GnssMeasurementsEvent.Callback> sGnssMeasurementListeners = new SimpleArrayMap<>();

        private GnssListenersHolder() {
        }
    }

    public static boolean registerGnssMeasurementsCallback(LocationManager locationManager, GnssMeasurementsEvent.Callback callback, Handler handler) {
        return Api24Impl.registerGnssMeasurementsCallback(locationManager, callback, handler);
    }

    public static boolean registerGnssMeasurementsCallback(LocationManager locationManager, Executor executor, GnssMeasurementsEvent.Callback callback) {
        return Api31Impl.registerGnssMeasurementsCallback(locationManager, executor, callback);
    }

    public static void unregisterGnssMeasurementsCallback(LocationManager locationManager, GnssMeasurementsEvent.Callback callback) {
        Api24Impl.unregisterGnssMeasurementsCallback(locationManager, callback);
    }

    private static boolean registerGnssMeasurementsCallbackOnR(LocationManager locationManager, Executor executor, GnssMeasurementsEvent.Callback callback) {
        throw new IllegalStateException();
    }

    public static boolean registerGnssStatusCallback(LocationManager locationManager, GnssStatusCompat.Callback callback, Handler handler) {
        return registerGnssStatusCallback(locationManager, ExecutorCompat.create(handler), callback);
    }

    public static boolean registerGnssStatusCallback(LocationManager locationManager, Executor executor, GnssStatusCompat.Callback callback) {
        return registerGnssStatusCallback(locationManager, null, executor, callback);
    }

    private static boolean registerGnssStatusCallback(LocationManager locationManager, Handler handler, Executor executor, GnssStatusCompat.Callback callback) {
        return Api30Impl.registerGnssStatusCallback(locationManager, handler, executor, callback);
    }

    public static void unregisterGnssStatusCallback(LocationManager locationManager, GnssStatusCompat.Callback callback) {
        synchronized (GnssListenersHolder.sGnssStatusListeners) {
            Object remove = GnssListenersHolder.sGnssStatusListeners.remove(callback);
            if (remove != null) {
                Api24Impl.unregisterGnssStatusCallback(locationManager, remove);
            }
        }
    }

    private LocationManagerCompat() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static class LocationListenerKey {
        final LocationListenerCompat mListener;
        final String mProvider;

        LocationListenerKey(String str, LocationListenerCompat locationListenerCompat) {
            this.mProvider = (String) ObjectsCompat.requireNonNull(str, "invalid null provider");
            this.mListener = (LocationListenerCompat) ObjectsCompat.requireNonNull(locationListenerCompat, "invalid null listener");
        }

        public boolean equals(Object obj) {
            if (!(obj instanceof LocationListenerKey)) {
                return false;
            }
            LocationListenerKey locationListenerKey = (LocationListenerKey) obj;
            return this.mProvider.equals(locationListenerKey.mProvider) && this.mListener.equals(locationListenerKey.mListener);
        }

        public int hashCode() {
            return ObjectsCompat.hash(this.mProvider, this.mListener);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static class LocationListenerTransport implements LocationListener {
        final Executor mExecutor;
        volatile LocationListenerKey mKey;

        public void unregister() {
            this.mKey = null;
        }

        LocationListenerTransport(LocationListenerKey locationListenerKey, Executor executor) {
            this.mKey = locationListenerKey;
            this.mExecutor = executor;
        }

        public LocationListenerKey getKey() {
            return (LocationListenerKey) ObjectsCompat.requireNonNull(this.mKey);
        }

        @Override // android.location.LocationListener
        public void onLocationChanged(final Location location) {
            if (this.mKey == null) {
                return;
            }
            this.mExecutor.execute(new Runnable() { // from class: androidx.core.location.LocationManagerCompat$LocationListenerTransport$$ExternalSyntheticLambda4
                @Override // java.lang.Runnable
                public final void run() {
                    LocationManagerCompat.LocationListenerTransport.this.m5144xa8d50b3d(location);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: lambda$onLocationChanged$0$androidx-core-location-LocationManagerCompat$LocationListenerTransport, reason: not valid java name */
        public /* synthetic */ void m5144xa8d50b3d(Location location) {
            LocationListenerKey locationListenerKey = this.mKey;
            if (locationListenerKey == null) {
                return;
            }
            locationListenerKey.mListener.onLocationChanged(location);
        }

        @Override // android.location.LocationListener
        public void onLocationChanged(final List<Location> list) {
            if (this.mKey == null) {
                return;
            }
            this.mExecutor.execute(new Runnable() { // from class: androidx.core.location.LocationManagerCompat$LocationListenerTransport$$ExternalSyntheticLambda2
                @Override // java.lang.Runnable
                public final void run() {
                    LocationManagerCompat.LocationListenerTransport.this.m5145x2b1fc01c(list);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: lambda$onLocationChanged$1$androidx-core-location-LocationManagerCompat$LocationListenerTransport, reason: not valid java name */
        public /* synthetic */ void m5145x2b1fc01c(List list) {
            LocationListenerKey locationListenerKey = this.mKey;
            if (locationListenerKey == null) {
                return;
            }
            locationListenerKey.mListener.onLocationChanged((List<Location>) list);
        }

        @Override // android.location.LocationListener
        public void onFlushComplete(final int i) {
            if (this.mKey == null) {
                return;
            }
            this.mExecutor.execute(new Runnable() { // from class: androidx.core.location.LocationManagerCompat$LocationListenerTransport$$ExternalSyntheticLambda1
                @Override // java.lang.Runnable
                public final void run() {
                    LocationManagerCompat.LocationListenerTransport.this.m5143xf04cfe9d(i);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: lambda$onFlushComplete$2$androidx-core-location-LocationManagerCompat$LocationListenerTransport, reason: not valid java name */
        public /* synthetic */ void m5143xf04cfe9d(int i) {
            LocationListenerKey locationListenerKey = this.mKey;
            if (locationListenerKey == null) {
                return;
            }
            locationListenerKey.mListener.onFlushComplete(i);
        }

        @Override // android.location.LocationListener
        public void onStatusChanged(final String str, final int i, final Bundle bundle) {
            if (this.mKey == null) {
                return;
            }
            this.mExecutor.execute(new Runnable() { // from class: androidx.core.location.LocationManagerCompat$LocationListenerTransport$$ExternalSyntheticLambda5
                @Override // java.lang.Runnable
                public final void run() {
                    LocationManagerCompat.LocationListenerTransport.this.m5148xdbe6a717(str, i, bundle);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: lambda$onStatusChanged$3$androidx-core-location-LocationManagerCompat$LocationListenerTransport, reason: not valid java name */
        public /* synthetic */ void m5148xdbe6a717(String str, int i, Bundle bundle) {
            LocationListenerKey locationListenerKey = this.mKey;
            if (locationListenerKey == null) {
                return;
            }
            locationListenerKey.mListener.onStatusChanged(str, i, bundle);
        }

        @Override // android.location.LocationListener
        public void onProviderEnabled(final String str) {
            if (this.mKey == null) {
                return;
            }
            this.mExecutor.execute(new Runnable() { // from class: androidx.core.location.LocationManagerCompat$LocationListenerTransport$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    LocationManagerCompat.LocationListenerTransport.this.m5147x5a2a7b08(str);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: lambda$onProviderEnabled$4$androidx-core-location-LocationManagerCompat$LocationListenerTransport, reason: not valid java name */
        public /* synthetic */ void m5147x5a2a7b08(String str) {
            LocationListenerKey locationListenerKey = this.mKey;
            if (locationListenerKey == null) {
                return;
            }
            locationListenerKey.mListener.onProviderEnabled(str);
        }

        @Override // android.location.LocationListener
        public void onProviderDisabled(final String str) {
            if (this.mKey == null) {
                return;
            }
            this.mExecutor.execute(new Runnable() { // from class: androidx.core.location.LocationManagerCompat$LocationListenerTransport$$ExternalSyntheticLambda3
                @Override // java.lang.Runnable
                public final void run() {
                    LocationManagerCompat.LocationListenerTransport.this.m5146x442abc92(str);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: lambda$onProviderDisabled$5$androidx-core-location-LocationManagerCompat$LocationListenerTransport, reason: not valid java name */
        public /* synthetic */ void m5146x442abc92(String str) {
            LocationListenerKey locationListenerKey = this.mKey;
            if (locationListenerKey == null) {
                return;
            }
            locationListenerKey.mListener.onProviderDisabled(str);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static class GnssMeasurementsTransport extends GnssMeasurementsEvent.Callback {
        final GnssMeasurementsEvent.Callback mCallback;
        volatile Executor mExecutor;

        public void unregister() {
            this.mExecutor = null;
        }

        GnssMeasurementsTransport(GnssMeasurementsEvent.Callback callback, Executor executor) {
            this.mCallback = callback;
            this.mExecutor = executor;
        }

        @Override // android.location.GnssMeasurementsEvent.Callback
        public void onGnssMeasurementsReceived(final GnssMeasurementsEvent gnssMeasurementsEvent) {
            final Executor executor = this.mExecutor;
            if (executor == null) {
                return;
            }
            executor.execute(new Runnable() { // from class: androidx.core.location.LocationManagerCompat$GnssMeasurementsTransport$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    LocationManagerCompat.GnssMeasurementsTransport.this.m5137xb1484c70(executor, gnssMeasurementsEvent);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: lambda$onGnssMeasurementsReceived$0$androidx-core-location-LocationManagerCompat$GnssMeasurementsTransport, reason: not valid java name */
        public /* synthetic */ void m5137xb1484c70(Executor executor, GnssMeasurementsEvent gnssMeasurementsEvent) {
            if (this.mExecutor != executor) {
                return;
            }
            this.mCallback.onGnssMeasurementsReceived(gnssMeasurementsEvent);
        }

        @Override // android.location.GnssMeasurementsEvent.Callback
        public void onStatusChanged(final int i) {
            final Executor executor = this.mExecutor;
            if (executor == null) {
                return;
            }
            executor.execute(new Runnable() { // from class: androidx.core.location.LocationManagerCompat$GnssMeasurementsTransport$$ExternalSyntheticLambda1
                @Override // java.lang.Runnable
                public final void run() {
                    LocationManagerCompat.GnssMeasurementsTransport.this.m5138xdc872524(executor, i);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: lambda$onStatusChanged$1$androidx-core-location-LocationManagerCompat$GnssMeasurementsTransport, reason: not valid java name */
        public /* synthetic */ void m5138xdc872524(Executor executor, int i) {
            if (this.mExecutor != executor) {
                return;
            }
            this.mCallback.onStatusChanged(i);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static class GnssStatusTransport extends GnssStatus.Callback {
        final GnssStatusCompat.Callback mCallback;

        GnssStatusTransport(GnssStatusCompat.Callback callback) {
            Preconditions.checkArgument(callback != null, "invalid null callback");
            this.mCallback = callback;
        }

        @Override // android.location.GnssStatus.Callback
        public void onStarted() {
            this.mCallback.onStarted();
        }

        @Override // android.location.GnssStatus.Callback
        public void onStopped() {
            this.mCallback.onStopped();
        }

        @Override // android.location.GnssStatus.Callback
        public void onFirstFix(int i) {
            this.mCallback.onFirstFix(i);
        }

        @Override // android.location.GnssStatus.Callback
        public void onSatelliteStatusChanged(GnssStatus gnssStatus) {
            this.mCallback.onSatelliteStatusChanged(GnssStatusCompat.wrap(gnssStatus));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static class PreRGnssStatusTransport extends GnssStatus.Callback {
        final GnssStatusCompat.Callback mCallback;
        volatile Executor mExecutor;

        public void unregister() {
            this.mExecutor = null;
        }

        PreRGnssStatusTransport(GnssStatusCompat.Callback callback) {
            Preconditions.checkArgument(callback != null, "invalid null callback");
            this.mCallback = callback;
        }

        public void register(Executor executor) {
            Preconditions.checkArgument(executor != null, "invalid null executor");
            Preconditions.checkState(this.mExecutor == null);
            this.mExecutor = executor;
        }

        @Override // android.location.GnssStatus.Callback
        public void onStarted() {
            final Executor executor = this.mExecutor;
            if (executor == null) {
                return;
            }
            executor.execute(new Runnable() { // from class: androidx.core.location.LocationManagerCompat$PreRGnssStatusTransport$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    LocationManagerCompat.PreRGnssStatusTransport.this.m5151x7ba12b9c(executor);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: lambda$onStarted$0$androidx-core-location-LocationManagerCompat$PreRGnssStatusTransport, reason: not valid java name */
        public /* synthetic */ void m5151x7ba12b9c(Executor executor) {
            if (this.mExecutor != executor) {
                return;
            }
            this.mCallback.onStarted();
        }

        @Override // android.location.GnssStatus.Callback
        public void onStopped() {
            final Executor executor = this.mExecutor;
            if (executor == null) {
                return;
            }
            executor.execute(new Runnable() { // from class: androidx.core.location.LocationManagerCompat$PreRGnssStatusTransport$$ExternalSyntheticLambda3
                @Override // java.lang.Runnable
                public final void run() {
                    LocationManagerCompat.PreRGnssStatusTransport.this.m5152x80a5cd6f(executor);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: lambda$onStopped$1$androidx-core-location-LocationManagerCompat$PreRGnssStatusTransport, reason: not valid java name */
        public /* synthetic */ void m5152x80a5cd6f(Executor executor) {
            if (this.mExecutor != executor) {
                return;
            }
            this.mCallback.onStopped();
        }

        @Override // android.location.GnssStatus.Callback
        public void onFirstFix(final int i) {
            final Executor executor = this.mExecutor;
            if (executor == null) {
                return;
            }
            executor.execute(new Runnable() { // from class: androidx.core.location.LocationManagerCompat$PreRGnssStatusTransport$$ExternalSyntheticLambda2
                @Override // java.lang.Runnable
                public final void run() {
                    LocationManagerCompat.PreRGnssStatusTransport.this.m5149x4191f1e(executor, i);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: lambda$onFirstFix$2$androidx-core-location-LocationManagerCompat$PreRGnssStatusTransport, reason: not valid java name */
        public /* synthetic */ void m5149x4191f1e(Executor executor, int i) {
            if (this.mExecutor != executor) {
                return;
            }
            this.mCallback.onFirstFix(i);
        }

        @Override // android.location.GnssStatus.Callback
        public void onSatelliteStatusChanged(final GnssStatus gnssStatus) {
            final Executor executor = this.mExecutor;
            if (executor == null) {
                return;
            }
            executor.execute(new Runnable() { // from class: androidx.core.location.LocationManagerCompat$PreRGnssStatusTransport$$ExternalSyntheticLambda1
                @Override // java.lang.Runnable
                public final void run() {
                    LocationManagerCompat.PreRGnssStatusTransport.this.m5150xdecf6cdb(executor, gnssStatus);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: lambda$onSatelliteStatusChanged$3$androidx-core-location-LocationManagerCompat$PreRGnssStatusTransport, reason: not valid java name */
        public /* synthetic */ void m5150xdecf6cdb(Executor executor, GnssStatus gnssStatus) {
            if (this.mExecutor != executor) {
                return;
            }
            this.mCallback.onSatelliteStatusChanged(GnssStatusCompat.wrap(gnssStatus));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static class GpsStatusTransport implements GpsStatus.Listener {
        final GnssStatusCompat.Callback mCallback;
        volatile Executor mExecutor;
        private final LocationManager mLocationManager;

        public void unregister() {
            this.mExecutor = null;
        }

        GpsStatusTransport(LocationManager locationManager, GnssStatusCompat.Callback callback) {
            Preconditions.checkArgument(callback != null, "invalid null callback");
            this.mLocationManager = locationManager;
            this.mCallback = callback;
        }

        public void register(Executor executor) {
            Preconditions.checkState(this.mExecutor == null);
            this.mExecutor = executor;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: lambda$onGpsStatusChanged$0$androidx-core-location-LocationManagerCompat$GpsStatusTransport, reason: not valid java name */
        public /* synthetic */ void m5139x75e92221(Executor executor) {
            if (this.mExecutor != executor) {
                return;
            }
            this.mCallback.onStarted();
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: lambda$onGpsStatusChanged$1$androidx-core-location-LocationManagerCompat$GpsStatusTransport, reason: not valid java name */
        public /* synthetic */ void m5140xc3a89a22(Executor executor) {
            if (this.mExecutor != executor) {
                return;
            }
            this.mCallback.onStopped();
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: lambda$onGpsStatusChanged$2$androidx-core-location-LocationManagerCompat$GpsStatusTransport, reason: not valid java name */
        public /* synthetic */ void m5141x11681223(Executor executor, int i) {
            if (this.mExecutor != executor) {
                return;
            }
            this.mCallback.onFirstFix(i);
        }

        @Override // android.location.GpsStatus.Listener
        public void onGpsStatusChanged(int i) {
            GpsStatus gpsStatus;
            final Executor executor = this.mExecutor;
            if (executor == null) {
                return;
            }
            if (i == 1) {
                executor.execute(new Runnable() { // from class: androidx.core.location.LocationManagerCompat$GpsStatusTransport$$ExternalSyntheticLambda0
                    @Override // java.lang.Runnable
                    public final void run() {
                        LocationManagerCompat.GpsStatusTransport.this.m5139x75e92221(executor);
                    }
                });
                return;
            }
            if (i == 2) {
                executor.execute(new Runnable() { // from class: androidx.core.location.LocationManagerCompat$GpsStatusTransport$$ExternalSyntheticLambda1
                    @Override // java.lang.Runnable
                    public final void run() {
                        LocationManagerCompat.GpsStatusTransport.this.m5140xc3a89a22(executor);
                    }
                });
                return;
            }
            if (i != 3) {
                if (i == 4 && (gpsStatus = this.mLocationManager.getGpsStatus(null)) != null) {
                    final GnssStatusCompat wrap = GnssStatusCompat.wrap(gpsStatus);
                    executor.execute(new Runnable() { // from class: androidx.core.location.LocationManagerCompat$GpsStatusTransport$$ExternalSyntheticLambda3
                        @Override // java.lang.Runnable
                        public final void run() {
                            LocationManagerCompat.GpsStatusTransport.this.m5142x5f278a24(executor, wrap);
                        }
                    });
                    return;
                }
                return;
            }
            GpsStatus gpsStatus2 = this.mLocationManager.getGpsStatus(null);
            if (gpsStatus2 != null) {
                final int timeToFirstFix = gpsStatus2.getTimeToFirstFix();
                executor.execute(new Runnable() { // from class: androidx.core.location.LocationManagerCompat$GpsStatusTransport$$ExternalSyntheticLambda2
                    @Override // java.lang.Runnable
                    public final void run() {
                        LocationManagerCompat.GpsStatusTransport.this.m5141x11681223(executor, timeToFirstFix);
                    }
                });
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: lambda$onGpsStatusChanged$3$androidx-core-location-LocationManagerCompat$GpsStatusTransport, reason: not valid java name */
        public /* synthetic */ void m5142x5f278a24(Executor executor, GnssStatusCompat gnssStatusCompat) {
            if (this.mExecutor != executor) {
                return;
            }
            this.mCallback.onSatelliteStatusChanged(gnssStatusCompat);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static final class CancellableLocationListener implements LocationListener {
        private Consumer<Location> mConsumer;
        private final Executor mExecutor;
        private final LocationManager mLocationManager;
        private final Handler mTimeoutHandler = new Handler(Looper.getMainLooper());
        Runnable mTimeoutRunnable;
        private boolean mTriggered;

        @Override // android.location.LocationListener
        public void onProviderEnabled(String str) {
        }

        @Override // android.location.LocationListener
        public void onStatusChanged(String str, int i, Bundle bundle) {
        }

        CancellableLocationListener(LocationManager locationManager, Executor executor, Consumer<Location> consumer) {
            this.mLocationManager = locationManager;
            this.mExecutor = executor;
            this.mConsumer = consumer;
        }

        public void cancel() {
            synchronized (this) {
                if (this.mTriggered) {
                    return;
                }
                this.mTriggered = true;
                cleanup();
            }
        }

        public void startTimeout(long j) {
            synchronized (this) {
                if (this.mTriggered) {
                    return;
                }
                Runnable runnable = new Runnable() { // from class: androidx.core.location.LocationManagerCompat$CancellableLocationListener$$ExternalSyntheticLambda0
                    @Override // java.lang.Runnable
                    public final void run() {
                        LocationManagerCompat.CancellableLocationListener.this.m5136x40ccd759();
                    }
                };
                this.mTimeoutRunnable = runnable;
                this.mTimeoutHandler.postDelayed(runnable, j);
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: lambda$startTimeout$0$androidx-core-location-LocationManagerCompat$CancellableLocationListener, reason: not valid java name */
        public /* synthetic */ void m5136x40ccd759() {
            this.mTimeoutRunnable = null;
            onLocationChanged((Location) null);
        }

        @Override // android.location.LocationListener
        public void onProviderDisabled(String str) {
            onLocationChanged((Location) null);
        }

        @Override // android.location.LocationListener
        public void onLocationChanged(final Location location) {
            synchronized (this) {
                if (this.mTriggered) {
                    return;
                }
                this.mTriggered = true;
                final Consumer<Location> consumer = this.mConsumer;
                this.mExecutor.execute(new Runnable() { // from class: androidx.core.location.LocationManagerCompat$CancellableLocationListener$$ExternalSyntheticLambda1
                    @Override // java.lang.Runnable
                    public final void run() {
                        Consumer.this.accept(location);
                    }
                });
                cleanup();
            }
        }

        private void cleanup() {
            this.mConsumer = null;
            this.mLocationManager.removeUpdates(this);
            Runnable runnable = this.mTimeoutRunnable;
            if (runnable != null) {
                this.mTimeoutHandler.removeCallbacks(runnable);
                this.mTimeoutRunnable = null;
            }
        }
    }

    /* loaded from: classes.dex */
    private static final class InlineHandlerExecutor implements Executor {
        private final Handler mHandler;

        InlineHandlerExecutor(Handler handler) {
            this.mHandler = (Handler) Preconditions.checkNotNull(handler);
        }

        @Override // java.util.concurrent.Executor
        public void execute(Runnable runnable) {
            if (Looper.myLooper() == this.mHandler.getLooper()) {
                runnable.run();
            } else if (!this.mHandler.post((Runnable) Preconditions.checkNotNull(runnable))) {
                throw new RejectedExecutionException(this.mHandler + " is shutting down");
            }
        }
    }

    /* loaded from: classes.dex */
    private static class Api31Impl {
        private Api31Impl() {
        }

        static boolean hasProvider(LocationManager locationManager, String str) {
            return locationManager.hasProvider(str);
        }

        static void requestLocationUpdates(LocationManager locationManager, String str, LocationRequest locationRequest, Executor executor, LocationListener locationListener) {
            locationManager.requestLocationUpdates(str, locationRequest, executor, locationListener);
        }

        static boolean registerGnssMeasurementsCallback(LocationManager locationManager, Executor executor, GnssMeasurementsEvent.Callback callback) {
            return locationManager.registerGnssMeasurementsCallback(executor, callback);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static class Api30Impl {
        private static Class<?> sLocationRequestClass;
        private static Method sRequestLocationUpdatesExecutorMethod;

        private Api30Impl() {
        }

        static void getCurrentLocation(LocationManager locationManager, String str, CancellationSignal cancellationSignal, Executor executor, final Consumer<Location> consumer) {
            android.os.CancellationSignal cancellationSignal2 = cancellationSignal != null ? (android.os.CancellationSignal) cancellationSignal.getCancellationSignalObject() : null;
            Objects.requireNonNull(consumer);
            locationManager.getCurrentLocation(str, cancellationSignal2, executor, new java.util.function.Consumer() { // from class: androidx.core.location.LocationManagerCompat$Api30Impl$$ExternalSyntheticLambda0
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    Consumer.this.accept((Location) obj);
                }
            });
        }

        public static boolean tryRequestLocationUpdates(LocationManager locationManager, String str, LocationRequestCompat locationRequestCompat, Executor executor, LocationListenerCompat locationListenerCompat) {
            try {
                if (sLocationRequestClass == null) {
                    sLocationRequestClass = Class.forName("android.location.LocationRequest");
                }
                if (sRequestLocationUpdatesExecutorMethod == null) {
                    Method declaredMethod = LocationManager.class.getDeclaredMethod("requestLocationUpdates", sLocationRequestClass, Executor.class, LocationListener.class);
                    sRequestLocationUpdatesExecutorMethod = declaredMethod;
                    declaredMethod.setAccessible(true);
                }
                LocationRequest locationRequest = locationRequestCompat.toLocationRequest(str);
                if (locationRequest != null) {
                    sRequestLocationUpdatesExecutorMethod.invoke(locationManager, locationRequest, executor, locationListenerCompat);
                    return true;
                }
            } catch (ClassNotFoundException | IllegalAccessException | NoSuchMethodException | UnsupportedOperationException | InvocationTargetException unused) {
            }
            return false;
        }

        public static boolean registerGnssStatusCallback(LocationManager locationManager, Handler handler, Executor executor, GnssStatusCompat.Callback callback) {
            synchronized (GnssListenersHolder.sGnssStatusListeners) {
                GnssStatusTransport gnssStatusTransport = (GnssStatusTransport) GnssListenersHolder.sGnssStatusListeners.get(callback);
                if (gnssStatusTransport == null) {
                    gnssStatusTransport = new GnssStatusTransport(callback);
                }
                if (!locationManager.registerGnssStatusCallback(executor, gnssStatusTransport)) {
                    return false;
                }
                GnssListenersHolder.sGnssStatusListeners.put(callback, gnssStatusTransport);
                return true;
            }
        }
    }

    /* loaded from: classes.dex */
    private static class Api28Impl {
        private Api28Impl() {
        }

        static boolean isLocationEnabled(LocationManager locationManager) {
            return locationManager.isLocationEnabled();
        }

        static String getGnssHardwareModelName(LocationManager locationManager) {
            return locationManager.getGnssHardwareModelName();
        }

        static int getGnssYearOfHardware(LocationManager locationManager) {
            return locationManager.getGnssYearOfHardware();
        }
    }

    /* loaded from: classes.dex */
    static class Api19Impl {
        private static Class<?> sLocationRequestClass;
        private static Method sRequestLocationUpdatesLooperMethod;

        private Api19Impl() {
        }

        static boolean tryRequestLocationUpdates(LocationManager locationManager, String str, LocationRequestCompat locationRequestCompat, LocationListenerTransport locationListenerTransport) {
            try {
                if (sLocationRequestClass == null) {
                    sLocationRequestClass = Class.forName("android.location.LocationRequest");
                }
                if (sRequestLocationUpdatesLooperMethod == null) {
                    Method declaredMethod = LocationManager.class.getDeclaredMethod("requestLocationUpdates", sLocationRequestClass, LocationListener.class, Looper.class);
                    sRequestLocationUpdatesLooperMethod = declaredMethod;
                    declaredMethod.setAccessible(true);
                }
                LocationRequest locationRequest = locationRequestCompat.toLocationRequest(str);
                if (locationRequest != null) {
                    synchronized (LocationManagerCompat.sLocationListeners) {
                        sRequestLocationUpdatesLooperMethod.invoke(locationManager, locationRequest, locationListenerTransport, Looper.getMainLooper());
                        LocationManagerCompat.registerLocationListenerTransport(locationManager, locationListenerTransport);
                    }
                    return true;
                }
            } catch (ClassNotFoundException | IllegalAccessException | NoSuchMethodException | UnsupportedOperationException | InvocationTargetException unused) {
            }
            return false;
        }

        static boolean tryRequestLocationUpdates(LocationManager locationManager, String str, LocationRequestCompat locationRequestCompat, LocationListenerCompat locationListenerCompat, Looper looper) {
            try {
                if (sLocationRequestClass == null) {
                    sLocationRequestClass = Class.forName("android.location.LocationRequest");
                }
                if (sRequestLocationUpdatesLooperMethod == null) {
                    Method declaredMethod = LocationManager.class.getDeclaredMethod("requestLocationUpdates", sLocationRequestClass, LocationListener.class, Looper.class);
                    sRequestLocationUpdatesLooperMethod = declaredMethod;
                    declaredMethod.setAccessible(true);
                }
                LocationRequest locationRequest = locationRequestCompat.toLocationRequest(str);
                if (locationRequest != null) {
                    sRequestLocationUpdatesLooperMethod.invoke(locationManager, locationRequest, locationListenerCompat, looper);
                    return true;
                }
            } catch (ClassNotFoundException | IllegalAccessException | NoSuchMethodException | UnsupportedOperationException | InvocationTargetException unused) {
            }
            return false;
        }
    }

    /* loaded from: classes.dex */
    static class Api24Impl {
        private Api24Impl() {
        }

        static boolean registerGnssMeasurementsCallback(LocationManager locationManager, GnssMeasurementsEvent.Callback callback) {
            return locationManager.registerGnssMeasurementsCallback(callback);
        }

        static boolean registerGnssMeasurementsCallback(LocationManager locationManager, GnssMeasurementsEvent.Callback callback, Handler handler) {
            return locationManager.registerGnssMeasurementsCallback(callback, handler);
        }

        static void unregisterGnssMeasurementsCallback(LocationManager locationManager, GnssMeasurementsEvent.Callback callback) {
            locationManager.unregisterGnssMeasurementsCallback(callback);
        }

        static boolean registerGnssStatusCallback(LocationManager locationManager, Handler handler, Executor executor, GnssStatusCompat.Callback callback) {
            Preconditions.checkArgument(handler != null);
            synchronized (GnssListenersHolder.sGnssStatusListeners) {
                PreRGnssStatusTransport preRGnssStatusTransport = (PreRGnssStatusTransport) GnssListenersHolder.sGnssStatusListeners.get(callback);
                if (preRGnssStatusTransport == null) {
                    preRGnssStatusTransport = new PreRGnssStatusTransport(callback);
                } else {
                    preRGnssStatusTransport.unregister();
                }
                preRGnssStatusTransport.register(executor);
                if (!locationManager.registerGnssStatusCallback(preRGnssStatusTransport, handler)) {
                    return false;
                }
                GnssListenersHolder.sGnssStatusListeners.put(callback, preRGnssStatusTransport);
                return true;
            }
        }

        static void unregisterGnssStatusCallback(LocationManager locationManager, Object obj) {
            if (obj instanceof PreRGnssStatusTransport) {
                ((PreRGnssStatusTransport) obj).unregister();
            }
            locationManager.unregisterGnssStatusCallback((GnssStatus.Callback) obj);
        }
    }
}
