package androidx.core.location;

import androidx.core.location.LocationManagerCompat;
import androidx.core.os.CancellationSignal;

/* compiled from: D8$$SyntheticClass */
/* loaded from: classes.dex */
public final /* synthetic */ class LocationManagerCompat$$ExternalSyntheticLambda2 implements CancellationSignal.OnCancelListener {
    public final /* synthetic */ LocationManagerCompat.CancellableLocationListener f$0;

    @Override // androidx.core.os.CancellationSignal.OnCancelListener
    public final void onCancel() {
        this.f$0.cancel();
    }
}
