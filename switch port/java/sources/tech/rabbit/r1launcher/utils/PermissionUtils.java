package tech.rabbit.r1launcher.utils;

import androidx.core.app.ActivityCompat;
import androidx.core.app.ComponentActivity;
import androidx.core.content.ContextCompat;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: PermissionUtils.kt */
@Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\bÇ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u000e\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000bJ\u0010\u0010\f\u001a\u00020\r2\u0006\u0010\n\u001a\u00020\u000bH\u0002J\u0010\u0010\u000e\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000bH\u0002R\u0014\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000¨\u0006\u000f"}, d2 = {"Ltech/rabbit/r1launcher/utils/PermissionUtils;", "", "()V", "PERMISSIONS", "", "", "REQUEST_CODE", "", "checkAndAutoRequestPermissions", "", "activity", "Landroidx/core/app/ComponentActivity;", "checkPermissionsAllGranted", "", "requestPermissions", "app_productionEnvRelease"}, k = 1, mv = {1, 9, 0}, xi = 48)
/* loaded from: classes3.dex */
public final class PermissionUtils {
    private static final int REQUEST_CODE = 200;
    public static final PermissionUtils INSTANCE = new PermissionUtils();
    private static final List<String> PERMISSIONS = CollectionsKt.listOf((Object[]) new String[]{"android.permission.READ_MEDIA_IMAGES", "android.permission.READ_MEDIA_VIDEO", "android.permission.READ_MEDIA_AUDIO", "android.permission.RECORD_AUDIO", "android.permission.BLUETOOTH", "android.permission.BLUETOOTH_CONNECT", "android.permission.BLUETOOTH_ADMIN", "android.permission.BLUETOOTH_SCAN", "android.permission.BLUETOOTH_PRIVILEGED", "android.permission.WRITE_SETTINGS", "android.permission.ACCESS_COARSE_LOCATION", "android.permission.ACCESS_FINE_LOCATION", "android.permission.NEARBY_WIFI_DEVICES", "android.permission.NETWORK_SETTINGS", "android.permission.NETWORK_STACK", "android.permission.NETWORK_SETUP_WIZARD"});
    public static final int $stable = 8;

    private PermissionUtils() {
    }

    public final void checkAndAutoRequestPermissions(ComponentActivity activity) {
        Intrinsics.checkNotNullParameter(activity, "activity");
        if (checkPermissionsAllGranted(activity)) {
            return;
        }
        requestPermissions(activity);
    }

    private final boolean checkPermissionsAllGranted(ComponentActivity activity) {
        Iterator<String> it = PERMISSIONS.iterator();
        while (it.hasNext()) {
            if (ContextCompat.checkSelfPermission(activity, it.next()) != 0) {
                return false;
            }
        }
        return true;
    }

    private final void requestPermissions(ComponentActivity activity) {
        ActivityCompat.requestPermissions(activity, (String[]) PERMISSIONS.toArray(new String[0]), 200);
    }
}
