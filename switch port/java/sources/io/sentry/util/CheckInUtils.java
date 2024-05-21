package io.sentry.util;

import io.sentry.CheckIn;
import io.sentry.CheckInStatus;
import io.sentry.DateUtils;
import io.sentry.IHub;
import io.sentry.MonitorConfig;
import io.sentry.Sentry;
import io.sentry.protocol.SentryId;
import java.util.List;
import java.util.concurrent.Callable;

/* loaded from: classes3.dex */
public final class CheckInUtils {
    public static <U> U withCheckIn(String str, MonitorConfig monitorConfig, Callable<U> callable) throws Exception {
        IHub currentHub = Sentry.getCurrentHub();
        long currentTimeMillis = System.currentTimeMillis();
        currentHub.pushScope();
        TracingUtils.startNewTrace(currentHub);
        CheckIn checkIn = new CheckIn(str, CheckInStatus.IN_PROGRESS);
        if (monitorConfig != null) {
            checkIn.setMonitorConfig(monitorConfig);
        }
        SentryId captureCheckIn = currentHub.captureCheckIn(checkIn);
        try {
            U call = callable.call();
            CheckIn checkIn2 = new CheckIn(captureCheckIn, str, CheckInStatus.OK);
            checkIn2.setDuration(Double.valueOf(DateUtils.millisToSeconds(System.currentTimeMillis() - currentTimeMillis)));
            currentHub.captureCheckIn(checkIn2);
            currentHub.popScope();
            return call;
        } finally {
        }
    }

    public static <U> U withCheckIn(String str, Callable<U> callable) throws Exception {
        return (U) withCheckIn(str, null, callable);
    }

    public static boolean isIgnored(List<String> list, String str) {
        if (list != null && !list.isEmpty()) {
            for (String str2 : list) {
                if (str2.equalsIgnoreCase(str)) {
                    return true;
                }
                if (str.matches(str2)) {
                    return true;
                }
            }
        }
        return false;
    }
}
