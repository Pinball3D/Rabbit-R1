package io.sentry.android.core.internal.util;

import android.content.Context;
import android.content.pm.PackageManager;
import com.google.android.exoplayer2.C;
import io.sentry.ILogger;
import io.sentry.SentryLevel;
import io.sentry.android.core.BuildInfoProvider;
import io.sentry.util.Objects;
import java.io.File;
import java.nio.charset.Charset;

/* loaded from: classes3.dex */
public final class RootChecker {
    private static final Charset UTF_8 = Charset.forName(C.UTF8_NAME);
    private final BuildInfoProvider buildInfoProvider;
    private final Context context;
    private final ILogger logger;
    private final String[] rootFiles;
    private final String[] rootPackages;
    private final Runtime runtime;

    public RootChecker(Context context, BuildInfoProvider buildInfoProvider, ILogger iLogger) {
        this(context, buildInfoProvider, iLogger, new String[]{"/system/app/Superuser.apk", "/sbin/su", "/system/bin/su", "/system/xbin/su", "/data/local/xbin/su", "/data/local/bin/su", "/system/sd/xbin/su", "/system/bin/failsafe/su", "/data/local/su", "/su/bin/su", "/su/bin", "/system/xbin/daemonsu"}, new String[]{"com.devadvance.rootcloak", "com.devadvance.rootcloakplus", "com.koushikdutta.superuser", "com.thirdparty.superuser", "eu.chainfire.supersu", "com.noshufou.android.su"}, Runtime.getRuntime());
    }

    RootChecker(Context context, BuildInfoProvider buildInfoProvider, ILogger iLogger, String[] strArr, String[] strArr2, Runtime runtime) {
        this.context = (Context) Objects.requireNonNull(context, "The application context is required.");
        this.buildInfoProvider = (BuildInfoProvider) Objects.requireNonNull(buildInfoProvider, "The BuildInfoProvider is required.");
        this.logger = (ILogger) Objects.requireNonNull(iLogger, "The Logger is required.");
        this.rootFiles = (String[]) Objects.requireNonNull(strArr, "The root Files are required.");
        this.rootPackages = (String[]) Objects.requireNonNull(strArr2, "The root packages are required.");
        this.runtime = (Runtime) Objects.requireNonNull(runtime, "The Runtime is required.");
    }

    public boolean isDeviceRooted() {
        return checkTestKeys() || checkRootFiles() || checkSUExist() || checkRootPackages(this.logger);
    }

    private boolean checkTestKeys() {
        String buildTags = this.buildInfoProvider.getBuildTags();
        return buildTags != null && buildTags.contains("test-keys");
    }

    private boolean checkRootFiles() {
        for (String str : this.rootFiles) {
            try {
            } catch (RuntimeException e) {
                this.logger.log(SentryLevel.ERROR, e, "Error when trying to check if root file %s exists.", str);
            }
            if (new File(str).exists()) {
                return true;
            }
        }
        return false;
    }

    /* JADX WARN: Code restructure failed: missing block: B:28:0x0046, code lost:
    
        if (0 == 0) goto L25;
     */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x0048, code lost:
    
        r2.destroy();
     */
    /* JADX WARN: Code restructure failed: missing block: B:30:0x005a, code lost:
    
        return false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x0057, code lost:
    
        if (0 == 0) goto L25;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private boolean checkSUExist() {
        /*
            r6 = this;
            java.lang.String r0 = "/system/xbin/which"
            java.lang.String r1 = "su"
            java.lang.String[] r0 = new java.lang.String[]{r0, r1}
            r1 = 0
            r2 = 0
            java.lang.Runtime r3 = r6.runtime     // Catch: java.lang.Throwable -> L3c java.io.IOException -> L4c
            java.lang.Process r2 = r3.exec(r0)     // Catch: java.lang.Throwable -> L3c java.io.IOException -> L4c
            java.io.BufferedReader r0 = new java.io.BufferedReader     // Catch: java.lang.Throwable -> L3c java.io.IOException -> L4c
            java.io.InputStreamReader r3 = new java.io.InputStreamReader     // Catch: java.lang.Throwable -> L3c java.io.IOException -> L4c
            java.io.InputStream r4 = r2.getInputStream()     // Catch: java.lang.Throwable -> L3c java.io.IOException -> L4c
            java.nio.charset.Charset r5 = io.sentry.android.core.internal.util.RootChecker.UTF_8     // Catch: java.lang.Throwable -> L3c java.io.IOException -> L4c
            r3.<init>(r4, r5)     // Catch: java.lang.Throwable -> L3c java.io.IOException -> L4c
            r0.<init>(r3)     // Catch: java.lang.Throwable -> L3c java.io.IOException -> L4c
            java.lang.String r3 = r0.readLine()     // Catch: java.lang.Throwable -> L32
            if (r3 == 0) goto L28
            r3 = 1
            goto L29
        L28:
            r3 = r1
        L29:
            r0.close()     // Catch: java.lang.Throwable -> L3c java.io.IOException -> L4c
            if (r2 == 0) goto L31
            r2.destroy()
        L31:
            return r3
        L32:
            r3 = move-exception
            r0.close()     // Catch: java.lang.Throwable -> L37
            goto L3b
        L37:
            r0 = move-exception
            r3.addSuppressed(r0)     // Catch: java.lang.Throwable -> L3c java.io.IOException -> L4c
        L3b:
            throw r3     // Catch: java.lang.Throwable -> L3c java.io.IOException -> L4c
        L3c:
            r0 = move-exception
            io.sentry.ILogger r6 = r6.logger     // Catch: java.lang.Throwable -> L5b
            io.sentry.SentryLevel r3 = io.sentry.SentryLevel.DEBUG     // Catch: java.lang.Throwable -> L5b
            java.lang.String r4 = "Error when trying to check if SU exists."
            r6.log(r3, r4, r0)     // Catch: java.lang.Throwable -> L5b
            if (r2 == 0) goto L5a
        L48:
            r2.destroy()
            goto L5a
        L4c:
            io.sentry.ILogger r6 = r6.logger     // Catch: java.lang.Throwable -> L5b
            io.sentry.SentryLevel r0 = io.sentry.SentryLevel.DEBUG     // Catch: java.lang.Throwable -> L5b
            java.lang.String r3 = "SU isn't found on this Device."
            java.lang.Object[] r4 = new java.lang.Object[r1]     // Catch: java.lang.Throwable -> L5b
            r6.log(r0, r3, r4)     // Catch: java.lang.Throwable -> L5b
            if (r2 == 0) goto L5a
            goto L48
        L5a:
            return r1
        L5b:
            r6 = move-exception
            if (r2 == 0) goto L61
            r2.destroy()
        L61:
            throw r6
        */
        throw new UnsupportedOperationException("Method not decompiled: io.sentry.android.core.internal.util.RootChecker.checkSUExist():boolean");
    }

    private boolean checkRootPackages(ILogger iLogger) {
        BuildInfoProvider buildInfoProvider = new BuildInfoProvider(iLogger);
        PackageManager packageManager = this.context.getPackageManager();
        if (packageManager != null) {
            for (String str : this.rootPackages) {
                try {
                    if (buildInfoProvider.getSdkInfoVersion() >= 33) {
                        packageManager.getPackageInfo(str, PackageManager.PackageInfoFlags.of(0L));
                        return true;
                    }
                    packageManager.getPackageInfo(str, 0);
                    return true;
                } catch (PackageManager.NameNotFoundException unused) {
                }
            }
        }
        return false;
    }
}
