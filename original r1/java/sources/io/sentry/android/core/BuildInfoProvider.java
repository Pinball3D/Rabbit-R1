package io.sentry.android.core;

import android.os.Build;
import io.sentry.ILogger;
import io.sentry.SentryLevel;
import io.sentry.protocol.Device;
import io.sentry.util.Objects;

/* loaded from: classes3.dex */
public final class BuildInfoProvider {
    final ILogger logger;

    public int getSdkInfoVersion() {
        return Build.VERSION.SDK_INT;
    }

    public BuildInfoProvider(ILogger iLogger) {
        this.logger = (ILogger) Objects.requireNonNull(iLogger, "The ILogger object is required.");
    }

    public String getBuildTags() {
        return Build.TAGS;
    }

    public String getManufacturer() {
        return Build.MANUFACTURER;
    }

    public String getModel() {
        return Build.MODEL;
    }

    public String getVersionRelease() {
        return Build.VERSION.RELEASE;
    }

    public Boolean isEmulator() {
        boolean z;
        try {
            if ((!Build.BRAND.startsWith("generic") || !Build.DEVICE.startsWith("generic")) && !Build.FINGERPRINT.startsWith("generic") && !Build.FINGERPRINT.startsWith("unknown") && !Build.HARDWARE.contains("goldfish") && !Build.HARDWARE.contains("ranchu") && !Build.MODEL.contains("google_sdk") && !Build.MODEL.contains("Emulator") && !Build.MODEL.contains("Android SDK built for x86") && !Build.MANUFACTURER.contains("Genymotion") && !Build.PRODUCT.contains("sdk_google") && !Build.PRODUCT.contains("google_sdk") && !Build.PRODUCT.contains("sdk") && !Build.PRODUCT.contains("sdk_x86") && !Build.PRODUCT.contains("vbox86p") && !Build.PRODUCT.contains("emulator") && !Build.PRODUCT.contains(Device.JsonKeys.SIMULATOR)) {
                z = false;
                return Boolean.valueOf(z);
            }
            z = true;
            return Boolean.valueOf(z);
        } catch (Throwable th) {
            this.logger.log(SentryLevel.ERROR, "Error checking whether application is running in an emulator.", th);
            return null;
        }
    }
}
