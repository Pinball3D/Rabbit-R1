package io.sentry.android.core;

import android.app.ActivityManager;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.os.Build;
import android.provider.Settings;
import android.util.DisplayMetrics;
import io.sentry.ILogger;
import io.sentry.SentryLevel;
import io.sentry.SentryOptions;
import io.sentry.protocol.App;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

/* loaded from: classes3.dex */
public final class ContextUtils {

    /* loaded from: classes3.dex */
    static class SideLoadedInfo {
        private final String installerStore;
        private final boolean isSideLoaded;

        public String getInstallerStore() {
            return this.installerStore;
        }

        public boolean isSideLoaded() {
            return this.isSideLoaded;
        }

        public SideLoadedInfo(boolean z, String str) {
            this.isSideLoaded = z;
            this.installerStore = str;
        }

        public Map<String, String> asTags() {
            HashMap hashMap = new HashMap();
            hashMap.put("isSideLoaded", String.valueOf(this.isSideLoaded));
            String str = this.installerStore;
            if (str != null) {
                hashMap.put("installerStore", str);
            }
            return hashMap;
        }
    }

    private ContextUtils() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static PackageInfo getPackageInfo(Context context, ILogger iLogger, BuildInfoProvider buildInfoProvider) {
        return getPackageInfo(context, 0, iLogger, buildInfoProvider);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static PackageInfo getPackageInfo(Context context, int i, ILogger iLogger, BuildInfoProvider buildInfoProvider) {
        try {
            if (buildInfoProvider.getSdkInfoVersion() >= 33) {
                return context.getPackageManager().getPackageInfo(context.getPackageName(), PackageManager.PackageInfoFlags.of(i));
            }
            return context.getPackageManager().getPackageInfo(context.getPackageName(), i);
        } catch (Throwable th) {
            iLogger.log(SentryLevel.ERROR, "Error getting package info.", th);
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static ApplicationInfo getApplicationInfo(Context context, long j, BuildInfoProvider buildInfoProvider) throws PackageManager.NameNotFoundException {
        if (buildInfoProvider.getSdkInfoVersion() >= 33) {
            return context.getPackageManager().getApplicationInfo(context.getPackageName(), PackageManager.ApplicationInfoFlags.of(j));
        }
        return context.getPackageManager().getApplicationInfo(context.getPackageName(), 128);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String getVersionCode(PackageInfo packageInfo, BuildInfoProvider buildInfoProvider) {
        if (buildInfoProvider.getSdkInfoVersion() >= 28) {
            return Long.toString(packageInfo.getLongVersionCode());
        }
        return getVersionCodeDep(packageInfo);
    }

    static String getVersionName(PackageInfo packageInfo) {
        return packageInfo.versionName;
    }

    private static String getVersionCodeDep(PackageInfo packageInfo) {
        return Integer.toString(packageInfo.versionCode);
    }

    public static boolean isForegroundImportance() {
        try {
            ActivityManager.RunningAppProcessInfo runningAppProcessInfo = new ActivityManager.RunningAppProcessInfo();
            ActivityManager.getMyMemoryState(runningAppProcessInfo);
            return runningAppProcessInfo.importance == 100;
        } catch (Throwable unused) {
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String getKernelVersion(ILogger iLogger) {
        String property = System.getProperty("os.version");
        File file = new File("/proc/version");
        if (!file.canRead()) {
            return property;
        }
        try {
            BufferedReader bufferedReader = new BufferedReader(new FileReader(file));
            try {
                String readLine = bufferedReader.readLine();
                bufferedReader.close();
                return readLine;
            } finally {
            }
        } catch (IOException e) {
            iLogger.log(SentryLevel.ERROR, "Exception while attempting to read kernel information", e);
            return property;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static SideLoadedInfo retrieveSideLoadedInfo(Context context, ILogger iLogger, BuildInfoProvider buildInfoProvider) {
        String str;
        try {
            PackageInfo packageInfo = getPackageInfo(context, iLogger, buildInfoProvider);
            PackageManager packageManager = context.getPackageManager();
            if (packageInfo != null && packageManager != null) {
                str = packageInfo.packageName;
                try {
                    String installerPackageName = packageManager.getInstallerPackageName(str);
                    return new SideLoadedInfo(installerPackageName == null, installerPackageName);
                } catch (IllegalArgumentException unused) {
                    iLogger.log(SentryLevel.DEBUG, "%s package isn't installed.", str);
                    return null;
                }
            }
        } catch (IllegalArgumentException unused2) {
            str = null;
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String getApplicationName(Context context, ILogger iLogger) {
        try {
            ApplicationInfo applicationInfo = context.getApplicationInfo();
            int i = applicationInfo.labelRes;
            if (i == 0) {
                if (applicationInfo.nonLocalizedLabel != null) {
                    return applicationInfo.nonLocalizedLabel.toString();
                }
                return context.getPackageManager().getApplicationLabel(applicationInfo).toString();
            }
            return context.getString(i);
        } catch (Throwable th) {
            iLogger.log(SentryLevel.ERROR, "Error getting application name.", th);
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static DisplayMetrics getDisplayMetrics(Context context, ILogger iLogger) {
        try {
            return context.getResources().getDisplayMetrics();
        } catch (Throwable th) {
            iLogger.log(SentryLevel.ERROR, "Error getting DisplayMetrics.", th);
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String getFamily(ILogger iLogger) {
        try {
            return Build.MODEL.split(" ", -1)[0];
        } catch (Throwable th) {
            iLogger.log(SentryLevel.ERROR, "Error getting device family.", th);
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String getDeviceName(Context context) {
        return Settings.Global.getString(context.getContentResolver(), "device_name");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String[] getArchitectures(BuildInfoProvider buildInfoProvider) {
        if (buildInfoProvider.getSdkInfoVersion() >= 21) {
            return Build.SUPPORTED_ABIS;
        }
        return new String[]{Build.CPU_ABI, Build.CPU_ABI2};
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static ActivityManager.MemoryInfo getMemInfo(Context context, ILogger iLogger) {
        try {
            ActivityManager activityManager = (ActivityManager) context.getSystemService("activity");
            ActivityManager.MemoryInfo memoryInfo = new ActivityManager.MemoryInfo();
            if (activityManager != null) {
                activityManager.getMemoryInfo(memoryInfo);
                return memoryInfo;
            }
            iLogger.log(SentryLevel.INFO, "Error getting MemoryInfo.", new Object[0]);
            return null;
        } catch (Throwable th) {
            iLogger.log(SentryLevel.ERROR, "Error getting MemoryInfo.", th);
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static Intent registerReceiver(Context context, SentryOptions sentryOptions, BroadcastReceiver broadcastReceiver, IntentFilter intentFilter) {
        return registerReceiver(context, new BuildInfoProvider(sentryOptions.getLogger()), broadcastReceiver, intentFilter);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static Intent registerReceiver(Context context, BuildInfoProvider buildInfoProvider, BroadcastReceiver broadcastReceiver, IntentFilter intentFilter) {
        if (buildInfoProvider.getSdkInfoVersion() >= 33) {
            return context.registerReceiver(broadcastReceiver, intentFilter, 2);
        }
        return context.registerReceiver(broadcastReceiver, intentFilter);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void setAppPackageInfo(PackageInfo packageInfo, BuildInfoProvider buildInfoProvider, App app) {
        app.setAppIdentifier(packageInfo.packageName);
        app.setAppVersion(packageInfo.versionName);
        app.setAppBuild(getVersionCode(packageInfo, buildInfoProvider));
        HashMap hashMap = new HashMap();
        String[] strArr = packageInfo.requestedPermissions;
        int[] iArr = packageInfo.requestedPermissionsFlags;
        if (strArr != null && strArr.length > 0 && iArr != null && iArr.length > 0) {
            for (int i = 0; i < strArr.length; i++) {
                String str = strArr[i];
                hashMap.put(str.substring(str.lastIndexOf(46) + 1), (iArr[i] & 2) == 2 ? "granted" : "not_granted");
            }
        }
        app.setPermissions(hashMap);
    }
}
