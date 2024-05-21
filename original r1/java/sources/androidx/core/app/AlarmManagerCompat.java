package androidx.core.app;

import android.app.AlarmManager;
import android.app.PendingIntent;

/* loaded from: classes.dex */
public final class AlarmManagerCompat {
    public static void setAlarmClock(AlarmManager alarmManager, long j, PendingIntent pendingIntent, PendingIntent pendingIntent2) {
        Api21Impl.setAlarmClock(alarmManager, Api21Impl.createAlarmClockInfo(j, pendingIntent), pendingIntent2);
    }

    public static void setAndAllowWhileIdle(AlarmManager alarmManager, int i, long j, PendingIntent pendingIntent) {
        Api23Impl.setAndAllowWhileIdle(alarmManager, i, j, pendingIntent);
    }

    public static void setExact(AlarmManager alarmManager, int i, long j, PendingIntent pendingIntent) {
        Api19Impl.setExact(alarmManager, i, j, pendingIntent);
    }

    public static void setExactAndAllowWhileIdle(AlarmManager alarmManager, int i, long j, PendingIntent pendingIntent) {
        Api23Impl.setExactAndAllowWhileIdle(alarmManager, i, j, pendingIntent);
    }

    private AlarmManagerCompat() {
    }

    /* loaded from: classes.dex */
    static class Api21Impl {
        private Api21Impl() {
        }

        static void setAlarmClock(AlarmManager alarmManager, Object obj, PendingIntent pendingIntent) {
            alarmManager.setAlarmClock((AlarmManager.AlarmClockInfo) obj, pendingIntent);
        }

        static AlarmManager.AlarmClockInfo createAlarmClockInfo(long j, PendingIntent pendingIntent) {
            return new AlarmManager.AlarmClockInfo(j, pendingIntent);
        }
    }

    /* loaded from: classes.dex */
    static class Api23Impl {
        private Api23Impl() {
        }

        static void setAndAllowWhileIdle(AlarmManager alarmManager, int i, long j, PendingIntent pendingIntent) {
            alarmManager.setAndAllowWhileIdle(i, j, pendingIntent);
        }

        static void setExactAndAllowWhileIdle(AlarmManager alarmManager, int i, long j, PendingIntent pendingIntent) {
            alarmManager.setExactAndAllowWhileIdle(i, j, pendingIntent);
        }
    }

    /* loaded from: classes.dex */
    static class Api19Impl {
        private Api19Impl() {
        }

        static void setExact(AlarmManager alarmManager, int i, long j, PendingIntent pendingIntent) {
            alarmManager.setExact(i, j, pendingIntent);
        }
    }
}
