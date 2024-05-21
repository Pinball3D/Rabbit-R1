package androidx.core.location;

import android.location.Location;
import kotlin.Metadata;

/* compiled from: Location.kt */
@Metadata(d1 = {"\u0000\u000e\n\u0000\n\u0002\u0010\u0006\n\u0002\u0018\u0002\n\u0002\b\u0002\u001a\r\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u0086\n\u001a\r\u0010\u0003\u001a\u00020\u0001*\u00020\u0002H\u0086\n¨\u0006\u0004"}, d2 = {"component1", "", "Landroid/location/Location;", "component2", "core-ktx_release"}, k = 2, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class LocationKt {
    public static final double component1(Location location) {
        return location.getLatitude();
    }

    public static final double component2(Location location) {
        return location.getLongitude();
    }
}
