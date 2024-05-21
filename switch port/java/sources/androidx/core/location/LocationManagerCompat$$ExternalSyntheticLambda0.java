package androidx.core.location;

import android.location.LocationManager;
import androidx.core.location.LocationManagerCompat;
import java.util.concurrent.Callable;

/* compiled from: D8$$SyntheticClass */
/* loaded from: classes.dex */
public final /* synthetic */ class LocationManagerCompat$$ExternalSyntheticLambda0 implements Callable {
    public final /* synthetic */ LocationManager f$0;
    public final /* synthetic */ LocationManagerCompat.GpsStatusTransport f$1;

    public /* synthetic */ LocationManagerCompat$$ExternalSyntheticLambda0(LocationManager locationManager, LocationManagerCompat.GpsStatusTransport gpsStatusTransport) {
        this.f$0 = locationManager;
        this.f$1 = gpsStatusTransport;
    }

    @Override // java.util.concurrent.Callable
    public final Object call() {
        Boolean valueOf;
        valueOf = Boolean.valueOf(this.f$0.addGpsStatusListener(this.f$1));
        return valueOf;
    }
}
