package androidx.work.impl.utils;

import android.net.ConnectivityManager;
import android.net.Network;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: NetworkApi23.kt */
@Metadata(d1 = {"\u0000\f\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u001a\u000e\u0010\u0000\u001a\u0004\u0018\u00010\u0001*\u00020\u0002H\u0007¨\u0006\u0003"}, d2 = {"getActiveNetworkCompat", "Landroid/net/Network;", "Landroid/net/ConnectivityManager;", "work-runtime_release"}, k = 2, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes2.dex */
public final class NetworkApi23 {
    public static final Network getActiveNetworkCompat(ConnectivityManager connectivityManager) {
        Intrinsics.checkNotNullParameter(connectivityManager, "<this>");
        return connectivityManager.getActiveNetwork();
    }
}
