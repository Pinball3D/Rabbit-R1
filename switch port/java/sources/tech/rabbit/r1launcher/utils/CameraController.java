package tech.rabbit.r1launcher.utils;

import java.util.Locale;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.BuildersKt__BuildersKt;

/* compiled from: CameraController.kt */
@Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0006\bÇ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0016\u0010\b\u001a\u00020\u00072\u0006\u0010\t\u001a\u00020\u00072\u0006\u0010\n\u001a\u00020\u0007J\u000e\u0010\u000b\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\u000eJ\u0010\u0010\u000f\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\u0010H\u0002J\u0006\u0010\u0011\u001a\u00020\fJ\u0006\u0010\u0012\u001a\u00020\fJ\u0006\u0010\u0013\u001a\u00020\fJ\u000e\u0010\u0014\u001a\u00020\f2\u0006\u0010\u0015\u001a\u00020\u0010R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\u0016"}, d2 = {"Ltech/rabbit/r1launcher/utils/CameraController;", "", "()V", "ROTATION_THRESHOLD", "", "lastRotateTM", "needRotateDelay", "", "isNeedRotate", "isPrivacy", "isForce", "rotateCamera", "", "angle", "", "rotateTo", "", "rotateToBack", "rotateToFront", "rotateToPrivacy", "rotateWithName", "name", "app_productionEnvRelease"}, k = 1, mv = {1, 9, 0}, xi = 48)
/* loaded from: classes3.dex */
public final class CameraController {
    private static final long ROTATION_THRESHOLD = 1500;
    private static long lastRotateTM;
    private static volatile boolean needRotateDelay;
    public static final CameraController INSTANCE = new CameraController();
    public static final int $stable = 8;

    private CameraController() {
    }

    public final void rotateCamera(int angle) {
        rotateTo(String.valueOf(angle));
    }

    public final void rotateWithName(String name) {
        Intrinsics.checkNotNullParameter(name, "name");
        String lowerCase = name.toLowerCase(Locale.ROOT);
        Intrinsics.checkNotNullExpressionValue(lowerCase, "toLowerCase(...)");
        if (Intrinsics.areEqual(lowerCase, "front")) {
            rotateToFront();
        } else if (Intrinsics.areEqual(lowerCase, "back")) {
            rotateToBack();
        } else {
            rotateToPrivacy();
        }
    }

    public final void rotateToFront() {
        rotateTo("0");
    }

    public final void rotateToBack() {
        rotateTo("180");
    }

    public final void rotateToPrivacy() {
        rotateTo("90");
    }

    public final boolean isNeedRotate(boolean isPrivacy, boolean isForce) {
        long currentTimeMillis = System.currentTimeMillis();
        boolean z = currentTimeMillis - lastRotateTM > 1500;
        if (isPrivacy && !z) {
            needRotateDelay = true;
        }
        if (isForce) {
            lastRotateTM = currentTimeMillis;
            return true;
        }
        if (!z) {
            return false;
        }
        lastRotateTM = currentTimeMillis;
        return true;
    }

    private final void rotateTo(String angle) {
        BuildersKt__BuildersKt.runBlocking$default(null, new CameraController$rotateTo$1(angle, null), 1, null);
    }
}
