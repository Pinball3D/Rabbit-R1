package io.sentry.android.core.internal.util;

import io.sentry.protocol.Device;

/* loaded from: classes3.dex */
public final class DeviceOrientations {
    private DeviceOrientations() {
    }

    public static Device.DeviceOrientation getOrientation(int i) {
        if (i == 1) {
            return Device.DeviceOrientation.PORTRAIT;
        }
        if (i != 2) {
            return null;
        }
        return Device.DeviceOrientation.LANDSCAPE;
    }
}
